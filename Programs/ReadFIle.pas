unit ReadFIle;
// Read contents of an XML file in Mawb, AirwayBill and Airwaybill_Item
// Table Structures are Stringlists storing class objects (GeneralProcedures) . I used them in the place of arrays because I can store values of different types in each node.
// Classes implemented in Unit GeneralProcures
// Create an objectlist (Table Structure) with tags of the XML file  for each type of Item (Mawb, hawb,item, customer,etc). Values will be update later when reading the file
//  XML structrues are nested and one time can contain another and then content.
//  Therefore, a STACK is used to remember the ItemType the current content corresponds to. A token is pushed every time a starttag for a new itemtype is read. When an EndTag is read, we pop the token and we can find out what for which Kind of item we will use the next content
//
// *******Reading the XML file

//* First Create and Populate each TableStructure with the Tags of the XML file and the corresponding fields of a table.
//* 1. We read each XML node in TableStructures( MawbTalbe, HawbTable,ItemTable)
//* 2. Use UPdateTable to update the Table with the values of the TableStructure
//*
//*  To avoid reading a node that exists several times withn the father node, create a smaller table structure for that node
//*
//* How I treat the parser TxAndDty
//* StartTag-
//*   1. Special tags - to decide the table that needs to be used (Insert a record in Database) AND push in stack
//*   2. NOrmal tags - to find if tag is useful
//* Content
//*   If tag was found useful from starttag -> read it in appropriate table
//* EndTag
//*    1. Special Tags - Update table from TableStructure AND POP the stack
//*    2. Normal Tag - Do Nothing
//*******************************************************************************
//* The Mawbs are in MVMTS>
//* Each Mawb is in MvMT>
//* Hawbs are in <shps>
//* Each hawb is a <shp> with fields <hawb>, <invoiceAmount><LineItems>
//* Hawb items are found in <LineItems>
//* Each HawbIte is a <LineItem>
//*******************************************************************************
//*******************************************************************************
// use a class tablestructure to store the tag values for each tag type
// We create 3 instances of talbestructre (Mawb, hawb,item) (Create TableStructure for Customer??)
// For each instance, store the useful tags and their corresponding field name,
//    The value for each field is updated later
// StartTab - we insert the Mawb, hawb, or item
// EndTag - we update
// FixItem - update the valus of the hawb item
// FixHawb - update the valus of the hawb
// Procedure Updatetable goes throuh the table structures and for each tag->fieldName updates the field Value
//*******************************************************************************

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons,  ExtCtrls,
  Wwdbigrd, Wwdbgrid, Mask, wwdbedit, Data.DB, DBAccess, IBC, MemDS, Vcl.Grids;

Const
// These are special tags that mark the begining and ending of an XML Element
        MawbTag='TDOC';
        HawbTag='Shp';
        ItemTag='LineItem';
        SenderTag='ShpCnsgnr';
        ConsigneeTag='ShpCnsgne';

type
  TCountryDetails=Record
        CountryCode:string;
        CountryNumber:Integer;
        LowFreight:double;
        HighFreight:double;
  end;

  TTariffDetails=Record
        Rate:String;
        Quantity:String;
        Base:String;
        TRL :String;
  end;



  THawbDetails=Record
        HawbId:String;
        HawbNewSerial:Integer;
        HawbOldSerial:Integer;
        MawbNewSerial:Integer;
        MawbOldSerial:Integer;
        MawbNewId:String;
        MawbOldId:String;
        Description:String;
        Weight:Double;
        Pieces:Integer;
  end;

  TReadFileFRM = class(TForm)
    Panel5: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    FlightOutSQL: TIBCQuery;
    SenderInvoiceSQL: TIBCQuery;
    SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_NUMBER: TStringField;
    SenderInvoiceSQLFK_HAWB_ID: TStringField;
    SenderInvoiceSQLINVOICE_AMOUNT: TFloatField;
    SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField;
    SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField;
    SenderInvoiceSQLTOTAL_AMOUNT: TFloatField;
    SenderInvoiceSQLCURRENCY: TStringField;
    SenderInvoiceSQLEXCHANGE_RATE: TFloatField;
    SenderInvoiceSQLFACTOR: TFloatField;
    SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField;
    SenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLIS_VALID: TStringField;
    SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField;
    SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_RATE: TFloatField;
    SenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    FindCurrencySQL: TIBCQuery;
    ExchangeRateSQL: TIBCQuery;
    ExchangeRateSQLFK_CURRENCY_CODE: TStringField;
    ExchangeRateSQLRATE: TFloatField;
    SearchHawbSQL: TIBCQuery;
    PartialHawbSQL: TIBCQuery;
    PartialHawbSQLSERIAL_NUMBER: TIntegerField;
    PartialHawbSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField;
    PartialHawbSQLFK_MAWB_ID_ORIGINAL: TStringField;
    PartialHawbSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField;
    PartialHawbSQLFK_MAWB_ID_ARRIVED: TStringField;
    PartialHawbSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField;
    PartialHawbSQLFK_HAWB_ID_ORIGINAL: TStringField;
    PartialHawbSQLPARTIAL_PIECES: TIntegerField;
    PartialHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    PartialHawbSQLPARTIAL_WEIGHT: TFloatField;
    PartialHawbSQLDESCRIPTION: TStringField;
    SearchHawbSQLSERIAL_NUMBER: TIntegerField;
    SearchHawbSQLHAB_ID: TStringField;
    SearchHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    SearchHawbSQLREFERENCE_NUMBER: TIntegerField;
    SearchHawbSQLMAWB_ID: TStringField;
    Esql: TIBCSQL;
    SearchFlightOUtSQL: TIBCQuery;
    IBCQuery1: TIBCQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    CountrySQL: TIBCQuery;
    CountrySQLNUMBER: TIntegerField;
    CountrySQLCODE: TStringField;
    CountrySQLNAME: TStringField;
    CountrySQLEU_MEMBER: TStringField;
    CountrySQLFREIGHT05: TIntegerField;
    CountrySQLFREIGHT6: TIntegerField;
    CountrySQLFK_CURRENCY_CODE: TStringField;
    CountrySQLGREEK_NAME: TStringField;
    CountrySQLXML_COUNTRY: TStringField;
    FindCurrencySQLDESCRIPTION: TStringField;
    FindCurrencySQLCURRENCY_CODE: TStringField;
    FindCurrencySQLCOUNTRY_CODE: TIntegerField;
    FindCurrencySQLXML_CURRENCY: TStringField;
    FindCustomerSQL: TIBCQuery;
    FindCustomerSQLCODE: TIntegerField;
    FindCustomerSQLNAME: TStringField;
    ReadLowHawbSQL: TIBCQuery;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField5: TIntegerField;
    FloatField1: TFloatField;
    StringField11: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField12: TStringField;
    FloatField5: TFloatField;
    StringField13: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    IntegerField6: TIntegerField;
    FloatField8: TFloatField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField9: TFloatField;
    StringField14: TStringField;
    IntegerField9: TIntegerField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    DateTimeField1: TDateTimeField;
    StringField15: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    StringField21: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    StringField22: TStringField;
    StringField23: TStringField;
    FloatField14: TFloatField;
    StringField24: TStringField;
    StringField25: TStringField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    FloatField15: TFloatField;
    IntegerField14: TIntegerField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField26: TStringField;
    FloatField20: TFloatField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    FloatField21: TFloatField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    FloatField22: TFloatField;
    StringField41: TStringField;
    StringField42: TStringField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    StringField43: TStringField;
    StringField44: TStringField;
    FloatField23: TFloatField;
    StringField45: TStringField;
    HawbGRD: TwwDBGrid;
    FindHawbLowDeletedSQL: TIBCQuery;
    FindHawbLowDeletedSQLHAB_ID: TStringField;
    FindHawbLowDeletedSQLSERIAL_NUMBER: TIntegerField;
    FindHawbLowDeletedSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbLowDeletedSQLFK_MAWB_ID: TStringField;
    FindHawbLowDeletedSQLFK_CURRENCY: TStringField;
    FindHawbLowDeletedSQLFK_COUNTRY_ORIGIN: TIntegerField;
    FindHawbLowDeletedSQLDATE_REGISTERED: TDateTimeField;
    FindHawbLowDeletedSQLCUSTOMER_NAME: TStringField;
    FindHawbLowDeletedSQLDESCRIPTION: TStringField;
    FindHawbLowDeletedSQLWEIGHT: TFloatField;
    FindHawbLowDeletedSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    FindHawbLowDeletedSQLNUMBER_OF_PARCELS: TIntegerField;
    FindHawbLowDeletedSQLDISTRICT: TStringField;
    FindHawbLowDeletedSQLTOTAL_CHARGES: TFloatField;
    FindHawbLowDeletedSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    FindHawbLowDeletedSQLFK_CUSTOMER_CODE: TIntegerField;
    DeleteOneCDS: TIBCSQL;
    DeleteTrans: TIBCTransaction;
    HawbSRC: TIBCDataSource;
    FIndWaitingReasonSQL: TIBCQuery;
    FIndWaitingReasonSQLCODE: TStringField;
    FIndWaitingReasonSQLDESCRIPTION: TStringField;
    FIndWaitingReasonSQLCODE_4: TStringField;
    FIndWaitingReasonSQLDEFAULT_FOR_MEDIUM_VALUE: TStringField;
    RecentMawbSQL: TIBCQuery;
    IntegerField17: TIntegerField;
    StringField46: TStringField;
    RecentMawbSQLDATE_ARRIVED: TDateTimeField;
    FindDeliveryOrderChargeSQL: TIBCQuery;
    FindDeliveryOrderChargeSQLAMOUNT: TFloatField;
    FindCustomerSQLCOMPANY_OR_PERSON: TStringField;
    FIndTariffSQL: TIBCQuery;
    FIndTariffSQLCODE: TStringField;
    FIndTariffSQLGENERAL_DUTY_RATE: TFloatField;
    FIndTariffSQLGENERAL_DUTY_TRL: TFloatField;
    FIndTariffSQLGENERAL_DUTY_RATE_QUANT: TFloatField;
    FIndTariffSQLBASE_QUANTITY: TFloatField;
    HawbItemSQL: TIBCQuery;
    FindDefaultVatSQL: TIBCQuery;
    FindDefaultVatSQLCODE: TStringField;
    FindDefaultVatSQLDESCRIPTION: TStringField;
    FindDefaultVatSQLRATE: TFloatField;
    FindDefaultVatSQLXML_CODE: TStringField;
    UpdateCustomer1CDS: TIBCSQL;
    FindChargeSQL: TIBCQuery;
    FindChargeSQLAMOUNT: TFloatField;
    SystemParametersSQL: TIBCQuery;
    ParameterSQL: TIBCQuery;
    SystemParametersSQLSERIAL_NUMBER: TIntegerField;
    SystemParametersSQLKEY_FIELD: TStringField;
    SystemParametersSQLSYS_TYPE: TStringField;
    SystemParametersSQLINT_1: TIntegerField;
    SystemParametersSQLINT_2: TIntegerField;
    SystemParametersSQLSTR_1: TStringField;
    SystemParametersSQLSTR_2: TStringField;
    SystemParametersSQLSTR_3: TStringField;
    SystemParametersSQLSTR_4: TStringField;
    SystemParametersSQLSTR_5: TStringField;
    SystemParametersSQLNUM_1: TFloatField;
    SystemParametersSQLNUM_2: TFloatField;
    SystemParametersSQLDATE_1: TDateTimeField;
    SystemParametersSQLDATE_2: TDateTimeField;
    SystemParametersSQLDESCRIPTION: TStringField;
    ParameterSQLSERIAL_NUMBER: TIntegerField;
    ParameterSQLKEY_FIELD: TStringField;
    ParameterSQLSYS_TYPE: TStringField;
    ParameterSQLINT_1: TIntegerField;
    ParameterSQLINT_2: TIntegerField;
    ParameterSQLSTR_1: TStringField;
    ParameterSQLSTR_2: TStringField;
    ParameterSQLSTR_3: TStringField;
    ParameterSQLSTR_4: TStringField;
    ParameterSQLSTR_5: TStringField;
    ParameterSQLNUM_1: TFloatField;
    ParameterSQLNUM_2: TFloatField;
    ParameterSQLDATE_1: TDateTimeField;
    ParameterSQLDATE_2: TDateTimeField;
    ParameterSQLDESCRIPTION: TStringField;
    SearchFlightOUtSQLSERIAL_NUMBER: TIntegerField;
    SearchFlightOUtSQLMAWB: TStringField;
    FlightOutSQLSERIAL_NUMBER: TIntegerField;
    FlightOutSQLMAWB: TStringField;
    FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightOutSQLDATE_DEPART: TDateTimeField;
    FlightOutSQLREMARKS: TStringField;
    FlightOutSQLDESTINATION_AREA: TStringField;
    FlightOutSQLDESTINATION_COUNTRY: TStringField;
    FlightOutSQLFK_FLIGHT_TABLE: TIntegerField;
    HawbSQL: TIBCQuery;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLSEQUENCE_NUMBER: TIntegerField;
    HawbSQLHAWB_ID: TStringField;
    HawbSQLSHIPMENT_ORIGIN_AREA: TStringField;
    HawbSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    HawbSQLPIECES: TIntegerField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    HawbSQLFK_MOVEMENT_SERIAL: TIntegerField;
    HawbSQLPIECES_S: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY_CODE: TStringField;
    HawbSQLCONSIGNEE_NAME: TStringField;
    HawbSQLCONSIGNEE_ADDRESS: TStringField;
    HawbSQLCONSIGNEE_POST_CODE: TStringField;
    HawbSQLCONSIGNEE_CITY: TStringField;
    HawbSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    HawbSQLFK_ITINERARY_SERIAL: TIntegerField;
    HawbSQLPACKAGES_COUNT: TIntegerField;
    HawbSQLITEMS_COUNT: TIntegerField;
    HawbSQLPAYMENT_METHOD: TStringField;
    HawbSQLIS_HIGH: TStringField;
    HawbItemSQLSEQUENCE: TIntegerField;
    HawbItemSQLWEIGHT: TFloatField;
    HawbItemSQLPIECES: TIntegerField;
    HawbItemSQLDESCRIPTION: TStringField;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_AIRWAYBILL_SERIAL: TIntegerField;
    HawbItemSQLTARIFF_CODE: TStringField;
    HawbItemSQLAMOUNT: TFloatField;
    HawbItemSQLCURRENCY_RATE: TFloatField;
    HawbItemSQLCURRENCY: TStringField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLCURRENCY: TStringField;
    HawbSQLCURRENCY_RATE: TFloatField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLCONSIGNEE_ADDRESS_1: TStringField;
    HawbSQLCONSIGNEE_ADDRESS_2: TStringField;
    HawbSQLCONSIGNEE_ADDRESS_3: TStringField;
    HawbSQLSENDER_DEVICE_TYPE: TStringField;
    HawbSQLSENDER_DEVICE_DETAILS: TStringField;
    HawbSQLCONSIGNEE_DEVICE_TYPE: TStringField;
    HawbSQLCONSIGNEE_DEVICE_DETAILS: TStringField;
    HawbSQLVALUE_TYPE: TStringField;
    HawbSQLINCOTERMS: TStringField;
    HawbItemSQLUNIT_OF_MEASURE: TStringField;
    HawbSQLIS_SCANNED: TStringField;
    HawbSQLSENDER_EMAIL: TStringField;
    HawbSQLCONSIGNEE_EMAIL: TStringField;
    HawbSQLSERVICE_CODE: TStringField;
    HawbSQLACCOUNT_NUMBER: TStringField;
    HawbSQLCONSIGNEE_PREFERRED_NAME: TStringField;
    HawbSQLSENDER_PREFERRED_NAME: TStringField;
    procedure ReadFileBTNClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
        Function GetSystemParameters(TheKey:String):Boolean;
        Function GetValueFromSystemTable(Const TheKey,TheDescription:String):String;


        Function DefaultWaitingCode:String;
        Function FindDefaultDeliveryCharge:Double;
        Function FindDefaultStorageCharge:Double;
        Function FindDefaultMediumVat:Double;
        Function FindCharge(TheKey,TheDescription:String;var Num1:Double):Boolean;


    Function GetFileName:String;
        Function GetNewFileName(Const FullFileName:String):String;

    Function ReadFirstPass: Boolean;

    Function StripColon(Var1: String):String;
    Procedure ViewTableNodes(ATable:TTableValues);

    Procedure UpdateTable(TableStructure:TTableValues);
    procedure FindCountry(XMLCode:String;Var CountryDetails:TCountryDetails);
    Function FindCustomer(Const CustomerCode:Integer;Var CustomerName:String;Var IsPrivate:String):Boolean;
    Function FindTariff(Const TariffCode:String;Var TariffDetails:TTariffDetails):Boolean;

    function  FindCurrency(Const XMLCode:String):String;
    function  FindWaitingReason(Const Code4:String):String;
    Function FindExchangeRate(CurrencyCode:String):DOuble;
    Function IsHawbExists(HawbId:String;Var  HawbDetails:THawbDetails):boolean;
    Function IsMawbExists(MawbId:String;Var MAwbSerial:Integer;Var ArrivalDate:TDateTime):boolean;
    Function IsRecentMawbExists(MawbId:String;Var MAwbSerial:Integer;Var ArrivalDate:TDateTime):boolean;
    procedure DeleteHawb(HawbSerial:integer);

    Function CreatePartialHawb(HawbId:String;Var  HawbDetails:THawbDetails):boolean;


    procedure FixMawb(MawbSerial:Integer);
    procedure FixHawb(hawbSerial:Integer);
    procedure FixSender(hawbSerial:Integer);
    procedure FixInvoice(hawbSerial:Integer);
    procedure FixItem(hawbSerial:Integer);
    procedure FixCustomer(hawbSerial:Integer);
//    procedure FixCustomerName(CustomerSerial:Integer);

    Function ProcessLowValue(MawbSerial:Integer):Boolean;
    procedure CopyHawbToLow(HawbSerial:integer);
    procedure DeleteOneHawb(HawbSerial:Integer);


  public
    { Public declarations }
    GlobalStart:Boolean;
    GlobalStorageCharge:Double;
    GlobalDeliveryCharge:Double;
    GlobalDefaultMediumVAT:Double;
    GlobalMediumWaitingREason:String;
    GlobalDeliveryOrder_DDP:Double;
    GlobalDeliveryOrder_Minimum:Double;

    MawbTable:TTableValues;
    HawbTable:TTableValues;
    ItemTable:TTableValues;
    SenderTable:TTableValues;
    ConsigneeTable:TTableValues;
    //SenderInvoiceTable:TTableValues;
    Function ProcessFile(Const FileName:String;Var MawbArray: TMawbARray;Var CountMawb,CountHawb:Integer):Boolean;

  end;

var
  ReadFileFRM: TReadFileFRM;

implementation

uses KyriacosTypes, MainForm;

{$R *.DFM}

Function TReadFileFRM.StripColon(Var1: String):String;
Var
 ColPos:Integer;
Begin
        ColPos:=Pos(':',Var1);
        Result:=Copy(Var1,ColPos+1,Length(Var1)-ColPos );

End;


Function TReadFileFRM.GetNewFileName(Const FullFileName:String):String;
Var
        Success:integer;
        NewDir:String;
        NewName:String;
        FileName:String;
//        RenameDir:String;
Begin

        FileName:=ExtractFileName(FullFileName);

        NewDir:= GetValueFromSystemTable('S03', 'Folder to Move XML Files');
        If Not DirectoryExists(NewDir) then begin
                NewDir:=ExtractFileDir(FullFileName);
        end;
        FileName:=NewDir+'\'+FileName;
        if Pos('.',FileName)>0 then begin
                Newname := Copy(FileName, 1, LastDelimiter('.', FileName))+'XXX';
        end else begin
                Newname := FileName+'.XXX';
        end;
        Result:=NewName;


End;


Function TReadFileFRM.GetFileName:String;

Var
        Success:integer;
        DefaultDir:String;
//        RenameDir:String;
Begin

        DefaultDir:= GetValueFromSystemTable('S02', 'Folder to Read XML Files');

        OpenDialog1.InitialDir:=DefaultDir;
        //OpenDialog1.Filter:='XML files (*.XML) | *.XML';
        with OpenDialog1 do begin
                if Execute then begin
                        Result:= Filename;
                end else begin
                        Result:='';
                end; //execute
        end;
        //ShowMessage(Result);


End;

Function TReadFileFRM.GetSystemParameters(TheKey:String):Boolean;
Var
        CDefaultDirectory:String;
        CDefaultFile:String;

Begin
     with SystemParametersSQL do
     begin
        close;
        if not prepared then prepare;
        ParambyName('TheKey').Value:='S_9';
        open;
        if IsEmpty then
        begin
                ShowMessage('Add S_9 in system_parameters for default directory');
                abort;
        end;
        CDefaultDirectory:=FieldByName('str_1').asString;
        CDefaultFile:=FieldByName('str_2').asString;
        OpenDialog1.InitialDir:=CDefaultDirectory;
        OpenDialog1.FileName:=CDefaultFile;
     end;

End;

Function TReadFileFRM.GetValueFromSystemTable(Const TheKey,TheDescription:String):String;
Var
   TheQuery:TIBCQuery;
Begin


   TheQuery:=ParameterSQL;
   TheQUery.ParamByName('TheKey').Value:=TheKey;

   TheQuery.close;
   If TheQuery.Prepared then TheQuery.Prepare;
   TheQUery.ParamByName('TheKey').Value:=TheKey;
   TheQuery.Open;
   If TheQuery.IsEmpty Then begin
//        raise exception.create('Enter into System parameters (field STR_4) the record: '+TheKey+' for '+TheDescription);
         ShowMessage('Enter into System parameters -> (***STR_1***) the record: '+TheKey+' for '+TheDescription);
         Result:='';
   end else begin
        TheQuery.First;
        Result:=Trim(TheQuery.fieldbyName('STR_1').AsString);
        TheQuery.Close;
   end;


End;




Function TReadFileFRM.FindCustomer(Const CustomerCode:Integer;Var CustomerName:String;Var IsPrivate:String):Boolean;
Begin
     with FindCustomerSQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('CustomerCode').Value:=CustomerCode;
          Open;
          Result:= Not IsEmpty;
          If (Result) then begin
                CustomerName:=FieldByName('NAME').AsString;
                If FieldByName('COMPANY_OR_PERSON').AsString='P' then begin
                       IsPrivate:='Y'
                end else begin
                       IsPrivate:='N'
                end;
          end;
          close;
     end;

End;


Function TReadFileFRM.FindTariff(Const TariffCode:String;Var TariffDetails:TTariffDetails):Boolean;
Begin
     with FindTariffSQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('Code').Value:=TariffCode;
          Open;
          Result:= Not IsEmpty;
          If (Result) then begin
                TariffDetails.Rate :=FieldByName('GENERAL_DUTY_RATE').AsString;
                TariffDetails.Quantity :=FieldByName('GENERAL_DUTY_RATE_quant').AsString;
                TariffDetails.Base :=FieldByName('BASE_QUANTITY').AsString;
                TariffDetails.TRL :=FieldByName('GENERAL_DUTY_TRL').AsString;
          end;
          close;
     end;

end;



function  TReadFileFRM.FindWaitingReason(Const Code4:String):String;
Begin
     if Code4='' then begin
        result:=''
     end else begin
     with FindWaitingReasonSQL do begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('XMLCode').Value:=Code4;
          Open;
          If (not IsEmpty) then begin
                Result:=FieldByName('CODE').AsString;
          end else begin
                Result:='';
          end;
          close;
     end;
     end;
End;



Function  TReadFileFRM.FindCurrency(Const XMLCode:String):String;
Var
        Code2Digit:String;
Begin
     Code2Digit:=Copy(XMLCOde,1,2);
     with FindCurrencySQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('XMLCode').Value:=Code2Digit;;
          Open;
          If (not IsEmpty) then begin
                Result:=FieldByName('CURRENCY_CODE').AsString;
          end else begin
                Result:=XMLCode;
          end;
          close;
     end;

End;

Function TReadFileFRM.FindExchangeRate(CurrencyCode:String):DOuble;
Begin
     with ExchangeRateSQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('CurrencyCode').Value:=CurrencyCode;
          Open;
          If (not IsEmpty) then begin
                Result:=FieldByName('Rate').AsFloat;
          end else begin
                Result:=0;
          end;
          close;
     end;

End;


procedure TReadFileFRM.FindCountry(XMLCode:String;Var CountryDetails:TCountryDetails);
Begin
     with CountrySQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('XMLCode').Value:=XMLCode;
          Open;
          If (not IsEmpty) then begin
            CountryDetails.CountryNumber:=FieldByName('Number').AsInteger;
             CountryDetails.LowFreight:=FieldBYName('FREIGHT05').AsFloat;
             CountryDetails.HighFreight:=FieldBYName('FREIGHT6').AsFloat;

          end else begin
            CountryDetails.CountryNumber:=0;
             CountryDetails.LowFreight:=0;
             CountryDetails.HighFreight:=0;
          end;
          close;
     end;

End;

Procedure TReadFileFRM.UpdateTable(TableStructure:TTableValues);
Var
        Success:integer;
        TagRecord:TTagRecord;
        Count:Integer;
        I:Integer;
        F:DOuble;
        ATable:TIBCQuery;
        AField:TField;
        TableName:String;
        FieldName:String;
        OldDS:char;
        TempFloat:Double;
        TempInt:Integer;
Begin


 TableStructure.GoFirstNode;
 while TableStructure.GetNextNode(TagRecord) do begin



        if TagRecord.IsSpecialTag then begin       // isIgnore - does not update Tfields with a value
                //ShowMessage('special'+TagRecord.TagName);
                continue;
        end;
        if TagRecord.IsNull then begin
                //ShowMessage('special'+TagRecord.TagName);
                continue;
        end;

        //check here for debuging
        If TagRecord.TagName='TariffQnty' then begin
                //ShowMessage('debug UpdateValue '+'tag='+TagREcord.TagName+' val='+TagRecord.FIeldValue);
        end;

        TableName:=TagRecord.TableName;
        ATable:=FindComponent(TableName) as TIBCQuery;

         FieldName:=TagRecord.FieldName;
        aField:=ATable.FindField(FieldName);

        If Assigned(AField) then begin

                If ATable.State=dsBrowse then begin
                        ATable.Edit
                end else if ATAble.State=dsInactive then begin
                        ShowMessage('inactive'+ATable.Name);
                end;

               case aField.DataType of
               ftInteger: begin
                        //ShowMessage('int '+aField.FieldName);

                        try
                               TempFloat:= StrToFloat(TagRecord.FIeldValue);
                               // aField.Value := StrToIntDef(TagRecord.FIeldValue,0);
                        except
                                on Exception:  EConvertError do
                                 TempFloat:=0;
                        end;
                        TempInt:=Trunc(TempFloat);
                        aField.Value:=TEmpInt;

                        end;
               ftFloat: begin
                        //ShowMessage('float '+aField.FieldName);
                        try
                                OldDS:=DecimalSeparator;
                                DecimalSeparator:='.';
                                F := StrToFloat(TagRecord.FIeldValue);
                                DecimalSeparator:=OldDS;
                        except
                                on Exception : EConvertError do
                                F:=0;
                        end;
                        aField.Value := F;
                        end;
               ftSmallInt: begin
                        //ShowMessage('sma int '+aField.FieldName);
                        aField.Value := StrToIntDef(TagRecord.FIeldValue,0);
                        end;
               ftString:begin
                        aField.Value := TagRecord.FIeldValue;
                        //ShowMessage('string '+aField.FieldName);
                        end;
               ftDateTime:begin
                        aField.value:=ConvertDate(TagRecord.FieldValue);
                        //ShowMessage('date '+aField.FieldName);
                        end;
               end;
               ATable.Post;

        end;
 end;

End;

procedure TReadFileFRM.FixInvoice(hawbSerial:Integer);
Var
        ICurr:Integer;
        SCurr:String;
        aString:String;
        aInt:Integer;
        aDouble:Double;

        Freight:Double;
        ExchangeRate:Double;
        InvoiceValue:Double;
        CustomsValue:Double;

        VatCharge:Double;
        DeliveryAmount:Double;

        TagRecord:TTagRecord;
        CountryDetails:TCountryDetails;

        IsMedium:Boolean;
        IsDDP:Boolean;

Begin


        //Find the exchange rate
        HawbTable.FindNode('CstmsValCrncyCd',TagRecord);

        astring:=FindCurrency(TagRecord.FieldValue);

        //ShowMessage('currency='+aString);

        HawbTable.UpdateValue('X_CURRENCY',aString);
        aString:=TagREcord.FIeldValue;

        ExchangeRate:=FindExchangeRate(aString);
        HawbTable.UpdateValue('X_ExchangeRate',FloatToStr(ExchangeRate));


        //roUND THE INVOICE VALUE
        HawbTable.FindNode('CstmsVal',TagRecord);
        InvoiceValue:=StrToFloatMy(TagRecord.FieldValue);
        aInt:= Trunc(Ceil(InvoiceValue));

//        HawbTable.UpdateValue('CstmsVal',intToStr(aInt));
        HawbTable.UpdateValue('X_INVOICE_AMOUNT',intToStr(aInt));
        HawbTable.UpdateValue('X_PRE_DISCOUNT_AMOUNT',intToStr(aInt));


        HawbTable.FindNode('X_IsMedium',TagRecord);
        IsMedium:=TagRecord.FieldValue='Y';

        If IsMedium then begin
                HawbTable.FindNode('Frght',TagRecord);
                Freight:=StrToFloatMy(TagRecord.FieldValue);



                HawbTable.FindNode('X_IsPaid',TagRecord);
                IsDDP:=TagRecord.FIeldValue='Y';
                If IsDDP then begin
                       DeliveryAmount:=  GlobalDeliveryOrder_DDP;
                end else begin
                       DeliveryAmount:=  GlobalDeliveryOrder_Minimum;
                end;
                HawbTable.UpdateValue('X_DELIVERY_ORDER_AMOUNT',FloatToStr(DeliveryAmount));

                If ExchangeRate<=0 then begin
                        CustomsValue:=0;
                end else begin
                        CustomsValue:=(InvoiceValue+Freight)/ExchangeRate;
                end;
                aInt:= Trunc(Ceil(CustomsValue));
                HawbTable.UpdateValue('X_MEDIUM_CUSTOMS_VALUE',intToStr(aInt));
                HawbTable.UpdateValue('X_MEDIUM_HAWB_CUSTOMS_VALUE',intToStr(aInt));


                VatCharge:=aInt*GlobalDefaultMediumVAT/100;
                HawbTable.UpdateValue('X_CHARGE_VAT',FloatToStr(VatCharge) );



        end;


end;


procedure TReadFileFRM.FixMawb(MawbSerial:Integer);
Var
        ICurr:Integer;
        SCurr:String;
        TagRecord:TTagRecord;
        CountryDetails:TCountryDetails;
Begin
{
        MawbTable.FindNode('ShpCtryOrgn',TagRecord);
        FindCountry(TagRecord.FIeldValue,CountryDetails);
        SCurr:=IntToStr(COuntryDetails.CountryNumber);
        //ShowMessage(SCurr);
        HawbTable.UpdateValue('ShpCtryOrgn',SCUrr);

        HawbTable.FindNode('X_Clearance',TagRecord);
        HawbTable.UpdateValue('X_Clearance','IM 4');

}

end;


procedure TReadFileFRM.FixHawb(hawbSerial:Integer);
Var
        ICurr:Integer;
        SCurr:String;
        aString:string;
        aInt:INteger;
        TagRecord:TTagRecord;
        CountryDetails:TCountryDetails;
        CustomerName:String;
        IsDDP:Boolean;
        ValueType:String;
Begin

{
        HawbTable.FindNode('ShpCtryOrgn',TagRecord);
        FindCountry(TagRecord.FIeldValue,CountryDetails);
        SCurr:=IntToStr(COuntryDetails.CountryNumber);
        HawbTable.UpdateValue('ShpCtryOrgn',SCUrr);
}

        HawbTable.FindNode('Category',TagRecord);
        aString:=Trim(TagRecord.FIeldValue);
        If (Trim(aString)='1')or (Trim(aString)='2')or(Trim(aString)='3') then begin
                ValueType:='L';
        end else If (Trim(aString)='4') then begin
                ValueType:='M';
        end else If (Trim(aString)='5')or (Trim(aString)='6')or(Trim(aString)='7') then begin
                ValueType:='H';
        end else begin
                ValueType:='';
        end;
        HawbTable.UpdateValue('X_Category',ValueType);


{
        MawbTable.FindNode('X_MawbID',TagRecord);
        aString:=TagRecord.FIeldValue;
        HawbTable.UpdateValue('X_FK_MAWB_ID',aString);
}




end;

procedure TReadFileFRM.FixSender(hawbSerial:Integer);
Const
  lb= #13;
Var
        S1,S2,S3,s4,s5,s6,s7:String;
        SA:String;
        TagRecord:TTagRecord;
Begin

        if SenderTable.FindNode('AddrLn1',TagRecord) then
                s1:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('AddrLn2',TagRecord) then
                s2:=Trim(TagRecord.FIeldValue)+lb ;

        if SenderTable.FindNode('AddrLn3',TagRecord) then
                s3:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('City',TagRecord)then
                s4:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('PostalCd',TagRecord)then
                s5:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('State',TagRecord)then
                s6:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('CtryCd',TagRecord)then
                s7:=Trim(TagRecord.FIeldValue)+lb;

        Sa:=s1+ s2+ s3+s4+s5+s6+s7;

        SenderTable.UpdateValue('X_SENDER_ADDRESS',SA);


end;


procedure TReadFileFRM.FixCustomer(hawbSerial:Integer);
Begin
End;



procedure TReadFileFRM.FixItem(hawbSerial:Integer);
Var
        ICurr:Integer;
        aString:String;
        bString:String;
        aDouble:Double;
        aInt:Integer;
        TagRecord:TTagRecord;
        CountryDetails:TCountryDetails;
        TD:TTariffDetails;
Begin
        //Round_prediscount amount
        ItemTable.FindNode('InvLineVal',TagRecord);
        aDouble:=StrToFloatMy(TagRecord.FieldValue);
        aInt:= Trunc(Ceil(aDouble));
        ItemTable.UpdateValue('InvLineVal',intToStr(aInt));

        //Find the exchange rate
        ItemTable.FindNode('InvCrncyCd',TagRecord);
        aString:=TagREcord.FIeldValue;
        aDouble:=FindExchangeRate(aString);
        ITemTable.UpdateValue('X_ExchangeRate',FloatToStr(aDouble));

        //Find Origin COuntry Number
        ItemTable.FindNode('CtryMfctrerOrgn',TagRecord);
        FindCountry(TagRecord.FIeldValue,CountryDetails);
        aString:=IntToStr(COuntryDetails.CountryNumber);
        ItemTable.UpdateValue('X_OriginCountry',aString);


        ITemTable.FindNode('TariffCdNo',TagRecord);
        aString:=Trim(TagRecord.FIeldValue);
        bString:=Copy(aString,1,4)+'  '+COpy(aString,5,2)+' '+COpy(aString,7,2)+' '+Copy(aString,9,2);
        ItemTable.UpdateValue('X_Tariff',bString);

        If FIndTariff(BString,TD) then begin
                ItemTable.UpdateValue('X_RATE',TD.Rate);
                ItemTable.UpdateValue('X_QUANTITY',TD.Quantity);
                ItemTable.UpdateValue('X_BASE_QUANTITY',TD.Base);
                ItemTable.UpdateValue('X_TRL',TD.TRL);

        end;


        ItemTable.FindNode('InvNo',TagRecord);
        aString:=TagRecord.FIeldValue;
        ItemTable.UpdateValue('InvNo',aString);


end;


procedure TReadFileFRM.Button2Click(Sender: TObject);
begin
ShowMessage(FloattoStr(FindDefaultStorageCharge));
end;

procedure TReadFileFRM.BitBtn1Click(Sender: TObject);
begin
Close;
end;


Function TReadFileFRM.IsMawbExists(MawbId:String;Var MAwbSerial:Integer;Var ArrivalDate:TDateTime):boolean;
Begin
     with SearchFlightOutSQL do begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('MawbId').Value:= MawbId;
          Open;
          Result:=NOt IsEmpty;
          If Result then begin
                MawbSerial:=FieldByName('SERIAL_NUMBER').AsInteger;
          end else begin
            MawbSerial:=-1;
          end;

          close;
     end;
End;

Function TReadFileFRM.IsRecentMawbExists(MawbId:String;Var MAwbSerial:Integer;Var ArrivalDate:TDateTime):boolean;
Begin
     with RecentMawbSQL do begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('MawbId').Value:= MawbId;
//          ParamByName('DateArrived').Value:= Now -
          Open;
          Result:=NOt IsEmpty;
          If Result then
                MawbSerial:=FieldByName('REFERENCE_NUMBER').AsInteger
          else
            MawbSerial:=-1;

          close;
     end;
End;



Function TReadFileFRM.IsHawbExists(HawbId:String;Var  HawbDetails:THawbDetails):boolean;
Begin
     with SearchHawbSQL do begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('HabId').Value:= HawbId;
          Open;
          HawbDetails.HawbId:=FieldByName('Hab_id').AsString;
          HawbDetails.HawbOldSerial:=FieldByName('Serial_number').AsInteger;
          HawbDetails.MawbOldSerial:=FieldByName('fk_mawb_refer_number').AsInteger;
          HawbDetails.MawbOldId:=FieldByName('mawb_id').AsString;
          {
          HPOriginalHawbSerial:=FieldByName('Serial_number').AsInteger;
          HPOriginalMawbSerial:= FieldByName('fk_mawb_refer_number').AsInteger;
          HPOriginalMawbid :=FieldByName('FK_mawb_id').AsString;
          }
          Result:=NOt IsEmpty;
     end;
End;

Function TReadFileFRM.CreatePartialHawb(HawbId:String;Var  HawbDetails:THawbDetails):boolean;
Begin
        with PartialHawbSQL do begin
                close;
                if not PartialHawbSQL.Active then open;

                Insert;

                 FieldByName('FK_HAWB_SERIAL_ORIGINAL').value:=HawbDetails.HawbOldSerial;
                FieldByName('FK_HAWB_ID_ORIGINAL').value:=HawbDetails.HawbId;

                FieldByName('FK_MAWB_SERIAL_ORIGINAL').value:=HawbDetails.MawbOldSerial;
                FieldByName('FK_MAWB_ID_ORIGINAL').value:= HawbDetails.MawbOldId;

                FieldByName('FK_MAWB_SERIAL_ARRIVED').value:=HawbDetails.MawbNewSerial;
                FieldByName('FK_MAWB_ID_ARRIVED').value:= HawbDetails.MawbNewId;


                FieldByName('PARTIAL_WEIGHT').value:= HawbDetails.Weight;
                FieldByName('PARTIAL_PIECES').value:=HawbDetails.Pieces;
                FieldByName('PARTIAL_DELIVERY_ORDER_ID').value:= HawbDetails.HawbId;
                FieldByName('DESCRIPTION').value:=HawbDetails.Description;

                post;
                close;

        end;
End;

procedure TReadFileFRM.DeleteHawb(HawbSerial:integer);
Var
 MawbSerial:Integer;
 SHawbSerial:String;
 SMawbSerial:String;
 ElementArray : array[1..3] of string;
 I:Integer;
begin

If HawbSerial>0 then begin
  SHawbSerial:=IntToStr(HawbSerial);

  ElementArray[1]:='Delete from hawb_item hi where fk_Hawb_serial= ' + SHawbSerial;
  ELementArray[2]:='Delete from sender_Invoice si where fk_hawb_serial=' + SHawbSerial;  //sender invoice
  ElementArray[3]:='Delete from hawb ha where ha.serial_number= ' + SHawbSerial; // hawb

  For I:=1 to 3 do begin
        ESQL.Text:=ElementArray[i];
        //SHowMessage(ESQL.Text);
        ESQL.ExecQuery;
  end;

end;


End;



Function TReadFileFRM.ReadFirstPass:Boolean;
//*******************************************
//*** Check before processing file
//*******************************************
VAR

OldFileName:String;
NewFIleName:String;
   I:Integer;
  MawbArray:TMawbArray;
  CountHawbs,CountMawbs:Integer;

Begin

   OldFileName:=GetFileName;
   NewFileName:=GetNewFileName(OldFileName);

   If Trim(OldFileName)='' then  begin
                ShowMessage('No File was Selected');
                Result:=False;
                abort;
   end;

   ProcessFile(OldFileName,mawbArray,CountMawbs,CountHawbs);

   if fileExists(NewFIleName) then begin
        DeleteFile(NewFileName);
   end;
   if not RenameFile(OldFileName ,NewFileName) then begin
                                //ShowMessage(GetLastErrors
        ShowMEssage(' Error - Cannot rename file : '+OldFileName +' to '+NewFileName+' error='+IntToStr(GetLastError));
        next;
   end;

   ShowMessage('Mawbs: '+IntToStr(CountMawbs)+' ,Hawbs: '+IntToSTr(CountHawbs));



end;

procedure TReadFileFRM.ReadFileBTNClick(Sender: TObject);
Var
        MawbArray :TMawbArray;
        BatchDetails:TBatchDetails;

Begin
        ReadFirstPass ;

End;

Function TReadFileFRM.DefaultWaitingCode:String;
Begin
End;

Function TReadFileFRM.FindDefaultMediumVat:Double;
Var
 WD:String;
Begin

        with FindDefaultVATSQL do begin
                   close;
                   Open;
                   Result:= FieldbyName('Rate').AsFloat;
        end;


End;


Function TReadFileFRM.FindCharge(TheKey,TheDescription:String;var Num1:Double):Boolean;
Begin
   with FIndChargeSQL do
     begin
        close;
        if not prepared then prepare;
        ParamByName('TheCode').Value:=TheKey;
        open;
        If not IsEmpty then begin
                Num1:=FieldByName('Amount').asFloat;
        end;
        result:=not IsEmpty;
     end;
End;


Function TReadFileFRM.FindDefaultDeliveryCharge:Double;
Var
 WD:String;
Begin


   with FIndDeliveryOrderChargeSQL do begin
        close;
        if not prepared then prepare;
        ParamByName('TheCode').Value:='D3';
        open;
        if IsEmpty then
        begin
                ShowMessage('Add a D3 record in other_charge table for Delivery Charges required by customs');
                abort;
        end;
        Result:=FieldByName('amount').asFloat;   //this is charged by customs
     end;

End;

Function TReadFileFRM.FindDefaultStorageCharge:Double;
Begin


     //EDE storage Expenses
     with FIndDeliveryOrderChargeSQL do

     begin
        close;
        if not prepared then prepare;
        ParamByName('TheCode').Value:='D4';
        open;
        if IsEmpty then
        begin
                ShowMessage('Add a D4 record in other_charge table for Storage Charges required by Customs');
                abort;
        end;
        Result:=FieldByName('amount').asFloat;
     end;


End;




Function TReadFileFRM.ProcessFile(Const FileName:String;Var MawbArray: TMawbARray;Var CountMawb,CountHawb:Integer):Boolean;

VAR
  ItemState:TItemType;
  TheTag:String;
  Parser : TXmlParser;
  //XmlFileName:String;
  x:string;
  TheContent:String;
  PartType:TPartType;
  IsContent:Boolean;
  IsStartTag:Boolean;

  TagRecord:TTagRecord;
  XTagRecord:TTagRecord;
  bTagRecord:TTagRecord;

  IsGetTagValue:Boolean;
  IsEmptyTag:Boolean;
  aString:String;


  OB:TObjectList;
  Si:TStackItem;
  I:Integer;
  MawbIndex:Integer;

  eTag:String;
  STag:String;
  ItemType:TItemType;
  HawbSerial:Integer;
  MawbSerial:Integer;
  ExistingMawbSerial:Integer;
  InvoiceSerial:Integer;
  DefaultDir:String;
  TheFile:String;
  HawbId:String;
  HawbRecord:THawbDetails;
  IsHawbExistsBool:Boolean;
  NewName:String;
  XSerial:Integer;
  ArrivalDate:TDatetime;

  TempFcustomer:Integer;

BEGIN

//         XmlFileName:=MawbDetails.OldFileName;

        //*******************************************************
        //****  Create Mawb fields from tags ******************
        //*******************************************************

        MawbTable:=TTableValues.Create;

        MawbTable.AddNodewithValue('TDOCNo','MawbSQL','Mawb_id','-1',FALSE);// MawbID was Read before

        //*******************************************************
        //****  Create Hawb and Sender Invoice fields from tags ******************
        //****
        //*******************************************************

        HawbTable:=TTableValues.Create;

        HawbTable.AddNode('HAWB','HawbSQL','Hawb_id',FALSE); //false means is not special and it will be updated
        HawbTable.AddNode('GrossWgt','HawbSQL','weight',false);
        HawbTable.AddNode('ShpOrgn','HawbSQL','SHIPMENT_ORIGIN_AREA',false);
        HawbTable.AddNode('ShpCtryOrgn','HawbSQL','SHIPMENT_ORIGIN_COUNTRY',false);


        HawbTable.AddNode('CargoDesc','HawbSQL','DESCRIPTION',false);
        HawbTable.AddNode('CstmsVal','HawbSQL','CUSTOMS_VALUE',FALSE);
        HawbTable.AddNode('CstmsValCrncyCd','HawbSQL','CURRENCY',false);
        HawbTable.AddNode('Incoterms','HawbSQL','INCOTERMS',false);
        HawbTable.AddNode('DHLServiceCd','HawbSQL','SERVICE_CODE',false);
        HawbTable.AddNode('SDPieces','HawbSQL','PIECES',false);
        HawbTable.AddNode('Category','HawbSQL','x_category',true);
        HawbTable.AddNode('X_Category','HawbSQL','VALUE_TYPE',false);

        HawbTable.AddNode('DHLAcctNo','HawbSQL','ACCOUNT_NUMBER',false);



        HawbTable.AddNodeWithValue('X_PaymentMethod','HawbSQL','PAYMENT_METHOD','Z',false);


        //*******************************************************
        //****  Create Hawb Items fields from tags ******************
        //*******************************************************

        ItemTable:=TTableValues.Create;

        ItemTable.AddNode('GoodsItemNo','HawbItemSQL','SEQUENCE',false);
        ItemTable.AddNode('DescOfGoods','HawbItemSQL','DESCRIPTION',false);
        ItemTable.AddNode('InvLineVal','HawbItemSQL','AMOUNT',false);
        ItemTable.AddNode('InvCrncyCd','HawbItemSQL','CURRENCY',false);
        ItemTable.AddNode('MeasureUnitQualifier','HawbItemSQL','UNIT_OF_MEASURE',false);


        //*******************************************************
        //****  Create Sender Customer fields from tags ******************
        //*******************************************************
        //ShpCnsgnr
        SenderTable:=TTableValues.Create;
        SenderTable.AddNodeWithValue('CoName','HawbSQL','SENDER_NAME','0',false);

        SenderTable.AddNode('AddrLn1','HawbSQL','SENDER_ADDRESS_1',false);
        SenderTable.AddNode('AddrLn2','HawbSQL','SENDER_ADDRESS_2',false);
        SenderTable.AddNode('AddrLn3','HawbSQL','SENDER_ADDRESS_3',false);
        SenderTable.AddNode('City','HawbSQL','SENDER_CITY',false);
        SenderTable.AddNode('PostalCd','HawbSQL','SENDER_POST_CODE',false);
        SenderTable.AddNode('CtryCd','HawbSQL','SENDER_COUNTRY_CODE',false);
        SenderTable.AddNode('DeviceType','HawbSQL','SENDER_DEVICE_TYPE',false);
        SenderTable.AddNode('DeviceDtls','HawbSQL','SENDER_DEVICE_DETAILS',false);

        SenderTable.AddNode('PreferredName','HawbSQL','SENDER_PREFERRED_NAME',false);
        //SenderTable.AddNode('DHLAcctNo','HawbSQL','ACCOUNT_NUMBER',false);
        //PreferredName




        //*******************************************************
        //****  To Get the customer code from Trader ID
        //*******************************************************
        ConsigneeTable:=TTableValues.Create;
        ConsigneeTable.AddNode('CoName','HawbSQL','CONSIGNEE_NAME',false);
        ConsigneeTable.AddNode('AddrLn1','HawbSQL','CONSIGNEE_ADDRESS_1',false);
        ConsigneeTable.AddNode('AddrLn2','HawbSQL','CONSIGNEE_ADDRESS_2',false);
        ConsigneeTable.AddNode('AddrLn3','HawbSQL','CONSIGNEE_ADDRESS_3',false);
        ConsigneeTable.AddNode('City','HawbSQL','CONSIGNEE_CITY',false);
        ConsigneeTable.AddNode('PostalCd','HawbSQL','CONSIGNEE_POST_CODE',false);
        ConsigneeTable.AddNode('CtryCd','HawbSQL','CONSIGNEE_COUNTRY_CODE',false);
        ConsigneeTable.AddNode('DeviceType','HawbSQL','CONSIGNEE_DEVICE_TYPE',false);
        ConsigneeTable.AddNode('DeviceDtls','HawbSQL','CONSIGNEE_DEVICE_DETAILS',false);

        ConsigneeTable.AddNode('PreferredName','HawbSQL','CONSIGNEE_PREFERRED_NAME',false);


/////////////////////////////////////////////////////////////////////////////////////////////
// Start the parser now
////////////////////////////////////////////////////////////////////////////////////////////////
  OB:=TObjectList.Create(true);

  Parser := TXmlParser.Create;          // Create Parser Instance
  Parser.Normalize := TRUE; // (i.e. pack and trimm off Whitespaces)
  Parser.LoadFromFile(FileName);


  //  XmlFilename:='E:\All\CabReadXML\Documentation\Test1.xml';


  Parser.StartScan;

  FlightOUtSQL.Close;
  FlightOUtSQL.Open;
  HawbSQL.Close;
  HawbSQL.open;
  HawbItemSQL.Close;
  HawbItemSQL.Open;

  CountMawb:=0;
  CountHawb:=0;
  MawbIndex:=0;

  IsGetTagValue:=False;
  IsContent:=False;
  IsStartTag:=False;
  ItemType:=itMawb;
  InvoiceSerial:=0;
  WHILE Parser.Scan DO begin

//***********************************************************************************
//******** Start Tag***************************************************************************
//***********************************************************************************
        if Parser.CurPartType=ptStartTag then begin
        //* From starttag we find
        //* the type of item (mawb, hawb, item) or if the tag is in the array and it is useful to read its content

                TheTag:=StripColon(Parser.Curname);
                IsGetTagValue:=False; // read the content after a tag only for tags in array
                IsStartTag:=True;
                If TheTag=MawbTag then begin
                //************************************************************************
                //** we are now reading Mawb data
                //************************************************************************
                        ItemType:=itMawb;
                        ob.Add(TStackItem.Create(MawbTag,itMawb));
                        ItemType:=itMawb;

                        Inc(MawbIndex);
                        MawbSerial:=MawbArray[MawbIndex].SerialNumber;

                end else If TheTag=HawbTag then begin
                //************************************************************************
                //** We are now reading Hawb data
                //** First Insert a Hawb and it will be updated later with contents of XML
                //************************************************************************
                        ItemType:=itHawb;
                        ob.Add(TStackItem.Create(HawbTag,itHawb));
                        //ShowMessage('add '+TstackItem(ob.Items[ob.count-1]).State);
                        ItemType:=itHawb;

                        HawbSQL.Insert;
                        HawbSQL.FieldByName('hawb_id').Value:=HawbSQL.FieldByname('SERIAL_NUMBER').AsString;

                        HawbSQL.Post;
                        HawbSerial:=HawbSQL.FieldByName('serial_number').AsInteger;
                        Inc(invoiceSerial);

                end else if (TheTag=ItemTag) then begin
                //************************************************************************
                //** we are now reading Hawb ITem data
                //************************************************************************
                        ItemType:=itItem;
                        ob.Add(TStackItem.Create('Item',itItem));

                        //ShowMessage('add '+TstackItem(ob.Items[ob.count-1]).State);
                        HawbItemSQL.Insert;
                        HawbItemSQL.FieldByName('FK_AIRWAYBILL_SERIAL').Value:=HawbSerial;

                        HawbItemSQL.Post;

                end else if (TheTag=SenderTag) then begin
                        ItemType:=itSender;
                        ob.Add(TStackItem.Create('Sender',itSender));
                        //ShowMessage('add '+TstackItem(ob.Items[ob.count-1]).State);
                end else if (TheTag=ConsigneeTag) then begin
                        ItemType:=itConsignee;
                        ob.Add(TStackItem.Create('Consignee',itConsignee));
                        //ShowMessage('add '+TstackItem(ob.Items[ob.count-1]).State);
                end else begin
                //************************************************************************
                // Check if this StartTag is useful . You need to know in which tablestucture to look using ItemType
                //************************************************************************
                        if ItemType=itMawb then begin
                                if MawbTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.TagName);
                                end;
                        end else if ItemType=itHawb then begin
                                if hawbTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                end;
                        end else if ItemType=itItem then begin
                                if ItemTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.FieldName);
                                end;
                        end else if ItemType=itSender then begin
                                if SenderTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.FieldName);
                                end;
                        end else if ItemType=itConsignee then begin
                                if ConsigneeTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.FieldName);
                                end;
                        end;

                end;
//***********************************************************************************
//******** End Tag***************************************************************************
//***********************************************************************************

        end else if Parser.CurPartType=ptEndTag then begin
                TheTag:=StripColon(Parser.Curname);
                IsGetTagValue:=False;
                If (TheTag=MawbTag) or (TheTag=HawbTag) or (TheTag=ItemTag)or (theTag=SenderTag)or (TheTag=ConsigneeTag) then begin //xxx was used for testing
                        // Pop out last stack item to find what item was read before
                        //  this way, when the next CONTENT node is read you will know which tablestructure to update
                        ob.Delete(ob.count-1);
                        If ob.Count>0 then begin

                                // this type will let you know what the next content node refers to.
                                ItemType:= TstackItem(ob[ob.count-1]).ItemType;
                        end;
                end;

                If TheTag=MawbTag then begin

                        MawbTable.FindNode('TDOCNo',xTagRecord);
                        if IsMawbExists(XTagRecord.FIeldValue,ExistingMawbSerial,ArrivalDate) then begin
                        end;

                        MawbTable.CleanTableNodes;
                end else If TheTag=HawbTag then begin
                         FixHawb(1);
                        HawbTable.FindNode('HAWB',BTagRecord);
                        HawbId:=BtagRecord.FIeldValue;

                        If IsHawbExistsBool then begin
                        // Create the partial and delete the original hawb after

                                HawbRecord.HawbNewSerial:=HawbSerial;
                                HawbRecord.MawbNewSerial:=MawbSerial;

                                HawbTable.FindNode('CargoDesc',BTagRecord);
                                HawbRecord.Description:=BTagRecord.FIeldValue;

                                MawbTable.FindNode('X_MawbID',BTagRecord); //abc
                                HawbRecord.MawbNewId:=BTagRecord.FIeldValue;

                                HawbTable.FindNode('GrossWgt',BTagRecord);
                                HawbRecord.Weight:=StrToFloatMy(BtagRecord.FieldValue);

                                HawbTable.FindNode('ManifestedPieces',BTagRecord);
                                HawbRecord.Pieces:=StrToINtDef(BTagRecord.FIeldValue,0);

                                CreatePartialHawb(HawbId,HawbRecord);
                                HawbTable.UpdateValue('HAWB',IntToStr(HawbSerial));
                        end;

                        UpdateTable(HawbTable);
                        UpdateTable(SenderTable);
                        UpdateTable(ConsigneeTable);


                        If HawbSQL.state in [dsEdit,dsInsert] then
                                HawbSQL.Post;


                        If IsHawbExistsBool then begin
                                DeleteHawb(hawbSerial);
                        end;

                        HawbTable.CleanTableNodes;
                        SenderTable.CleanTableNodes;
                        ConsigneeTable.CleanTableNodes;
                        //SenderInvoiceTable.CleanTableNodes;

                        Inc(CountHawb);
                end else if (TheTag=ItemTag) then begin
                        // do your stuff, insert the hawb item
                          UpdateTable(ItemTable);
                        ItemTable.CleanTableNodes;
                end else if (TheTag=SenderTag) then begin
                        // do your stuff in update hawb since sender details are actually contained in customer node
                end else if (TheTag=ConsigneeTag) then begin
                        // do your stuff in update hawb since sender details are actually contained in customer node
                end else begin
                end;

        end else if Parser.CurPartType=ptContent then begin
//***********************************************************************************
//******** XContent***************************************************************************
//***********************************************************************************
                If ISGetTagValue then begin  // we had previously a usefule startag
                        //raph.GetNode(CurrentState,theTag,TagRecord);
                        if ItemType=itMawb then begin
                                MawbTable.UpdateValue(TheTag,Parser.CurContent);
                        end else if ItemType=itHawb then begin
                                HawbTable.UpdateValue(TheTag,Parser.CurContent);

                                If TheTag='GoodsItemNo' then begin
                                        ShowMessage('found  tag='+TheTag+' value:= '+TagRecord.FIeldValue+'pa'+Parser.CurContent);
                                end;

                        end else if ItemType=itItem then begin
                                ItemTable.UpdateValue(TheTag,Parser.CurContent);
                        end else if ItemType=itSender then begin
                                SenderTable.UpdateValue(TheTag,Parser.CurContent);
                        end else if ItemType=itConsignee then begin
                                ConsigneeTable.UpdateValue(TheTag,Parser.CurContent);
                        end;
                        IsGetTagValue:=False; // clear the flag of a usefule startag
                end;
        //end else begin
        end;


end; //while


  Parser.Free;
  ob.Free;
  MawbTable.Destroy;
  HawbTable.Destroy;
  ItemTable.Destroy;
  SenderTable.Destroy;
  ConsigneeTable.Destroy;
  //SEnderInvoiceTable.Destroy;

{

}
End;

Procedure TReadFileFRM.ViewTableNodes(ATable:TTableValues);
vAR
        I:Integer;
        TagRecord:TTagRecord;
begin

  aTable.GoFirstNode;
  While aTable.GetNextNode(tagRecord) do begin
        ShowMessage(TagRecord.TagName+' - ' + tagRecord.FieldName+ ' : '+TagRecord.FIeldValue);
  end;


end;


procedure TReadFileFRM.DeleteOneHawb(HawbSerial:Integer);
Var
I: integer;
SelectedCount:Integer;
HawbSerialStr:String;
HawbId:String;
DeleteSQL:String;
IsCleared,IsInvoiced,IsFound:Boolean;
Begin

     with HawbSQL do begin
        close;
        if not prepared Then Prepare;
        ParamByName('HawbSerial').value:= HawbSerial;
        Open;
        IsFound:=(not Isempty);
        IsCleared:= (FieldByName('FK_CLEARING_STATE').AsInteger=1);
        IsInvoiced:=(FieldByName('FK_INVOICE_STATUS').AsInteger=1);
        HawbId:= FieldByName('Hawb_id').AsString;
        HawbSerialStr:=IntToStr(hawbserial);
     end;


        if( IsFound and  (not IsInvoiced) and (not IsCleared)) then begin
                with  DeleteOneCDS do begin
                                   //HawbStatusC_CDS.Autocommit:=False;
                                   //HawbStatusC_CDS.Transaction:=ClairDML.UsedForReadOnlyTrans;
                                   //HawbStatusC_CDS.UpdateTransaction:=DeleteOneCDS.Transaction;
                                    DeleteOneCDS.AutoCommit:=false;
                                    DeleteOneCDS.Transaction:=DeleteTrans;
                                    DeleteOneCDS.Transaction.StartTransaction;  // this transaction may apply to other tables as well

                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from Hawb_item where fk_hawb_serial= '+HawbSerialStr+';';
                                    DeleteOneCDS.Execute;


                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from Hawb_cOMMENTS where fk_hawb_serial= '+HawbSerialStr;
                                    DeleteOneCDS.Execute;

                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from Hawb_Partial where fk_hawb_serial_original= '+HawbSerialStr;
                                    DeleteOneCDS.Execute;

                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from SENDER_INVOICE where fk_hawb_serial= '+HawbSerialStr;
                                    DeleteOneCDS.Execute;


                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from HAWB where SERIAL_NUMBER= '+HawbSerialStr;
                                    DeleteOneCDS.Execute;

                                    DeleteOneCDS.Transaction.Commit;

                end;
        end;


End;




procedure TReadFileFRM.CopyHawbToLow(HawbSerial:integer);
Var
 DatasetSource:TIBCQuery;
 DatasetDest:TIBCQuery;
Begin
// Insert entry in Hawb_deleted_low when deleting low value Hawbs

        DatasetSource:=HawbSQL ;
        DatasetDest:=FindHawbLowDeletedSQL;

     with DatasetSource do begin
        close;
        if not prepared Then Prepare;
        ParamByName('HawbSerial').value:= HawbSerial;
        Open;
     end;

        try
        with Datasetsource do begin
                If not DatasetDest.active then DatasetDest.Open;

                DatasetDest.Insert;

                DatasetDest.FieldByName('HAB_ID').value:= FieldByName('HAB_ID').AsString;
                DatasetDest.FieldByName('FK_MAWB_REFER_NUMBER').value:= FieldByName('FK_MAWB_REFER_NUMBER').AsInteger;

                DatasetDest.FieldByName('FK_MAWB_ID').value:= FieldByName('FK_MAWB_ID').AsString;
                DatasetDest.FieldByName('FK_CUSTOMER_CODE').value:= FieldByName('FK_CUSTOMER_CODE').AsInteger;
                DatasetDest.FieldByName('FK_CURRENCY').value:= FieldByName('FK_CURRENCY').AsString;
                DatasetDest.FieldByName('FK_COUNTRY_ORIGIN').value:= FieldByName('FK_COUNTRY_ORIGIN').AsInteger;
                DatasetDest.FieldByName('DATE_REGISTERED').value:= FieldByName('DATE_REGISTERED').AsDateTime;
                DatasetDest.FieldByName('CUSTOMER_NAME').value:= FieldByName('CUSTOMER_NAME').AsString;


                DatasetDest.FieldByName('CUSTOMER_NAME').value:= FieldByName('CUSTOMER_NAME').AsString;
                DatasetDest.FieldByName('DESCRIPTION').value:= FieldByName('DESCRIPTION').AsString;
                DatasetDest.FieldByName('WEIGHT').value:= FieldByName('WEIGHT').AsFloat;
                DatasetDest.FieldByName('TOTAL_NUM_OF_PIECES').value:= FieldByName('TOTAL_NUM_OF_PIECES').AsInteger;
                DatasetDest.FieldByName('NUM_OF_PIECES_ARRIVED').value:= FieldByName('NUM_OF_PIECES_ARRIVED').AsInteger;
                DatasetDest.FieldByName('NUMBER_OF_PARCELS').value:= FieldByName('NUMBER_OF_PARCELS').AsInteger;
                DatasetDest.FieldByName('DISTRICT').value:= FieldByName('DISTRICT').AsString;
                DatasetDest.FieldByName('TOTAL_CHARGES').value:= FieldByName('TOTAL_CHARGES').AsFloat;




                DatasetDest.Post;
        end;
        except on E: Exception Do begin
                ShowMessage( e.Message);
                ShowMessage('Cannot insert');
                end;
        end;
End;





procedure TReadFileFRM.Button1Click(Sender: TObject);
Var
Ser:Integer;
//MawbDetails :TBatchDetails;

begin

end;

Function TReadFileFRM.ProcessLowValue(MawbSerial:Integer):Boolean;
Var
        HawbSerial:Integer;
Begin
   With ReadLowHawbSQL do begin

        Close;
        If Not Prepared then prepare;
        ParamByName('MawbSerial').Value:=MawbSerial;
        Open;
        While Not EOF do begin
                HawbSerial:=FieldByName('SERIAL_NUMBER').AsInteger;
                //ShowMessage('Process Low Value '+FieldByName('hab_id').AsString);
                CopyHawbToLow(HawbSerial);
                DeleteOneHawb(HawbSerial);

                NExt;
        end;
   end;
End;



procedure TReadFileFRM.FormActivate(Sender: TObject);
begin

HawbGRD.Visible:=False;

end;


end.

