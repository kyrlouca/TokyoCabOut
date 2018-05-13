//*****************
//**************************
//CabOUT
//**********************

{
For testing use
test mawb = 00481363684
test hawb= 2791137145

x40 = directory for house xml
x43 = directory for decon xml


x41 dtd location for house (if empty set the default)
x42 dtd location for decon (if empty set the default)

//*************************************
some notes that I wrote recently about XMLNODE
First you create a node under the document ---
      Doc.CreateNOde(), or Doc.CreateTextNote, or CreateCDataSelection
      Attributes are not really notes. Just created and attached on note at the same tiem
Then you append the node as a child to its father---  Node.AppendChild()

//**************************************************


********
********


** In prepareDom procedures where XMLcurrency, XMLcountry is needed, a new approach is used
** we keep open only main tables. (mawb, hawb, invoice)
** we populate the box value from a main table in Initprocedure and then in amend procedure we find the value from corresponding table
** and update the box


}

unit CreateOneXMLFile;
interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XDOM_2_4, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  Grids, Wwdbigrd, Wwdbgrid, DBAccess, IBC, MemDS, IBCError, Mask, wwdbedit,FileCtrl,
  Wwquery, Db;

type

  TXmlElementKind=(xnode,xattribute,xtext,xcdata);
  TItemForUpdate=(BoxValue,BoxAtt1,BoxAtt2,NoUpdate);
  TFieldSpecification=(FsFloat,FsInteger,FsString,FsDate);

  RXMLItemInfo=record
   TheDocument:TDomDocument;
   TheFather:TDomNode;
   TheElementKind:TXmlElementKind;
   TheElementName:String;
   TheElementValue:String;
  end;

  RGeneralSystemData=record
      XMLDirectory:String;
      IsOnlyHigh:Boolean;
  end;


  RGeneralManifestData=record
// It has general data but also some values read from other hawb related tables
   TransportType:string;
   CustomsOffice:String;
   OnBoard:String;
   Consolidated:String;
   Prepaid:string;
   AgentName:String;
   DHLTraderNumber:String;
   CustomerDefaultVAT:String;
   CarrierNumber:String;
   HouseDtDTLocation:string;
   DeconsolidationDtDTLocation:string;
   CreatesEuro1:string;
   IsOnlyHigh:Boolean;
   StorageCharge:String; // F1882
   DeliveryCharge:String;// F1886
  end;



  TCreateOneXMLFileFRM = class(TForm)
    Dom1: TDomImplementation;
    Par1: TDomToXmlParser;
    ParameterSQL: TIBCQuery;
    CountrySQL: TIBCQuery;
    CountrySQLCODE_3: TStringField;
    CountrySQLCODE_2: TStringField;
    CountrySQLNAME: TStringField;
    CountrySQLEU_MEMBER: TStringField;
    CountrySQLFK_CURRENCY_CODE: TStringField;
    CountrySQLGREEK_NAME: TStringField;
    CountrySQLXML_COUNTRY: TStringField;
    CountrySQLSERIAL_NUMBER: TIntegerField;
    FlightOutSQL: TIBCQuery;
    FlightAirwayBillSQL: TIBCQuery;
    FlightOutSQLSERIAL_NUMBER: TIntegerField;
    FlightOutSQLMAWB: TStringField;
    FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightOutSQLDATE_DEPART: TDateTimeField;
    FlightOutSQLREMARKS: TStringField;
    FlightOutSQLDESTINATION_AREA: TStringField;
    FlightOutSQLDESTINATION_COUNTRY: TStringField;
    FlightAirwayBillSQLSERIAL_NUMBER: TIntegerField;
    FlightAirwayBillSQLSEQUENCE_NUMBER: TIntegerField;
    FlightAirwayBillSQLHAWB_ID: TStringField;
    FlightAirwayBillSQLSHIPMENT_ORIGIN_AREA: TStringField;
    FlightAirwayBillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    FlightAirwayBillSQLPIECES: TIntegerField;
    FlightAirwayBillSQLWEIGHT: TFloatField;
    FlightAirwayBillSQLDESCRIPTION: TStringField;
    FlightAirwayBillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightAirwayBillSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightAirwayBillSQLPIECES_S: TStringField;
    FlightAirwayBillSQLFK_AIRWAYBILL_SERIAL: TIntegerField;
    FlightAirwayBillSQLFK_FLIGHT_OUT_SERIAL: TIntegerField;
    flightOutSRC: TIBCDataSource;
    FlightAirwayBillSQLSENDER_NAME: TStringField;
    FlightAirwayBillSQLSENDER_ADDRESS: TStringField;
    FlightAirwayBillSQLSENDER_POST_CODE: TStringField;
    FlightAirwayBillSQLSENDER_CITY: TStringField;
    FlightAirwayBillSQLSENDER_COUNTRY_CODE: TStringField;
    FlightAirwayBillSQLCONSIGNEE_NAME: TStringField;
    FlightAirwayBillSQLCONSIGNEE_ADDRESS: TStringField;
    FlightAirwayBillSQLCONSIGNEE_POST_CODE: TStringField;
    FlightAirwayBillSQLCONSIGNEE_CITY: TStringField;
    FlightAirwayBillSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    FlightAirwayBillSQLFK_ITINERARY_SERIAL: TIntegerField;
    FlightAirwayBillSQLPACKAGES_COUNT: TIntegerField;
    FlightAirwayBillSQLITEMS_COUNT: TIntegerField;
    OneFlightAirwayBillSQL: TIBCQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
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
    FlightAirCountrySQL: TIBCQuery;
    OneFlightAirwayBillSRC: TIBCDataSource;
    OneFlightAirwayBillSQLPAYMENT_METHOD: TStringField;
    FlightAirwayBillSQLPAYMENT_METHOD: TStringField;
    FindFLightOutSQL: TIBCQuery;
    IntegerField11: TIntegerField;
    StringField16: TStringField;
    OneFlightAirwayBillSQLSENDER_ADDRESS_1: TStringField;
    OneFlightAirwayBillSQLSENDER_ADDRESS_2: TStringField;
    OneFlightAirwayBillSQLSENDER_ADDRESS_3: TStringField;
    OneFlightAirwayBillSQLSENDER_DEVICE_TYPE: TStringField;
    OneFlightAirwayBillSQLSENDER_DEVICE_DETAILS: TStringField;
    OneFlightAirwayBillSQLSENDER_ACCOUNT_NUMBER: TIntegerField;
    OneFlightAirwayBillSQLFK_SENDER_SERIAL: TIntegerField;
    OneFlightAirwayBillSQLVALUE_TYPE: TStringField;
    OneFlightAirwayBillSQLCONSIGNEE_ADDRESS_1: TStringField;
    OneFlightAirwayBillSQLCONSIGNEE_ADDRESS_2: TStringField;
    OneFlightAirwayBillSQLCONSIGNEE_ADDRESS_3: TStringField;
    OneFlightAirwayBillSQLCONSIGNEE_DEVICE_TYPE: TStringField;
    OneFlightAirwayBillSQLCONSIGNEE_DEVICE_DETAILS: TStringField;
    OneFlightAirwayBillSQLDISTRICT_CODE: TStringField;
    OneFlightAirwayBillSQLTARIFF_CODE: TStringField;
    OneFlightAirwayBillSQLTARIFF_KEYWORD: TStringField;
    OneFlightAirwayBillSQLIS_CLEARED: TStringField;
    OneFlightAirwayBillSQLIS_HIGH: TStringField;
    FA_ItemSQL: TIBCQuery;
    FA_ItemSQLSEQUENCE: TIntegerField;
    FA_ItemSQLWEIGHT: TFloatField;
    FA_ItemSQLPIECES: TIntegerField;
    FA_ItemSQLDESCRIPTION: TStringField;
    FA_ItemSQLSERIAL_NUMBER: TIntegerField;
    FA_ItemSQLTARIFF_CODE: TStringField;
    FA_ItemSQLAMOUNT: TFloatField;
    FA_ItemSQLCURRENCY_RATE: TFloatField;
    FA_ItemSQLCURRENCY: TStringField;
    FA_ItemSQLFK_FA_SERIAL: TIntegerField;
    ReadTrans: TIBCTransaction;
    FindFLightOutSQLDATE_DEPART: TDateTimeField;
    FindFLightOutSQLFLIGHT_NAME: TStringField;
    MakeSQL: TIBCQuery;
    OneFlightAirwayBillSQLSERVICE_CODE: TStringField;
    OneFlightAirwayBillSQLACCOUNT_NUMBER: TStringField;
    OneFlightAirwayBillSQLINCOTERMS: TStringField;
    OneFlightAirwayBillSQLCONSIGNEE_PREFERRED_NAME: TStringField;
    FlightAirwayBillSQLSENDER_ADDRESS_1: TStringField;
    FlightAirwayBillSQLSENDER_ADDRESS_2: TStringField;
    FlightAirwayBillSQLSENDER_ADDRESS_3: TStringField;
    FlightAirwayBillSQLSENDER_DEVICE_TYPE: TStringField;
    FlightAirwayBillSQLSENDER_DEVICE_DETAILS: TStringField;
    FlightAirwayBillSQLSENDER_ACCOUNT_NUMBER: TIntegerField;
    FlightAirwayBillSQLFK_SENDER_SERIAL: TIntegerField;
    FlightAirwayBillSQLVALUE_TYPE: TStringField;
    FlightAirwayBillSQLCONSIGNEE_ADDRESS_1: TStringField;
    FlightAirwayBillSQLCONSIGNEE_ADDRESS_2: TStringField;
    FlightAirwayBillSQLCONSIGNEE_ADDRESS_3: TStringField;
    FlightAirwayBillSQLCONSIGNEE_DEVICE_TYPE: TStringField;
    FlightAirwayBillSQLCONSIGNEE_DEVICE_DETAILS: TStringField;
    FlightAirwayBillSQLDISTRICT_CODE: TStringField;
    FlightAirwayBillSQLTARIFF_CODE: TStringField;
    FlightAirwayBillSQLTARIFF_KEYWORD: TStringField;
    FlightAirwayBillSQLIS_CLEARED: TStringField;
    FlightAirwayBillSQLIS_HIGH: TStringField;
    FlightAirwayBillSQLSERVICE_CODE: TStringField;
    FlightAirwayBillSQLACCOUNT_NUMBER: TStringField;
    FlightAirwayBillSQLINCOTERMS: TStringField;
    FlightAirwayBillSQLCONSIGNEE_PREFERRED_NAME: TStringField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GFlightOutSerial:Integer;
    GeneralInfo:RGeneralManifestData;
    GData: RGeneralSystemData;

    Procedure SaveDomToFile(Const FullFilename:String;TheParser:TDomToXMlparser;TheDom:TDomImplementation;TheDomDocument:TDomDocument);
    Procedure FixFile(SourceFile:string);

    Function MyFloatToString(Const TheFloat:double;NumberOfDigits:Integer):String;


    procedure ProcessFlightOut(FlightOutSerial:Integer);
    procedure ProcessOneAir(AirSerial:Integer);

    procedure CreateOneAirwabillXML(Const SerialNumber:Integer);
    procedure CreateLowValueAirwaybillXML(Const SerialNumber:Integer);
    procedure CreateHighValueAirwaybillXML(Const SerialNumber:Integer);

    function CreateXmlNodeNew(DomDocument:TDomDocument;ElementFather:TDomNode;ElementName:String;ElementValue:String;ElementKind: TXmlElementKind):TDomNode;
    function SysCreateXmlNode(DomDocument:TDomDocument;ElementFather:TDomNode;ElementName:String;ElementValue:String;ElementKind: TXmlElementKind):TDomNode;
    function TBLcreateXmlNode(DomDocument:TDomDocument;ElementFather:TDomNode;ElementName:String;ElementValue:String;Table:TDataset;TableField:String;ElementKind: TXmlElementKind):TDomNode;

    Function GetValueFromSystemTable(Const TheKey,ErrorMessage:String;IsShowMessage:Boolean):String;

    Function GetSystemValues(Var GData:RGeneralSystemData):Boolean;
    Procedure GetGeneralManifestData(Var GRec:RGeneralManifestData);

  end;

var
  CreateOneXMLFileFRM: TCreateOneXMLFileFRM;

/////////////////////////////////////////////////////////////////////////////////////

implementation

uses MainData, MainForm;

{$R *.DFM}

//***********************************************************************************************


Procedure TCreateOneXMLFileFRM.GetGeneralManifestData(Var GRec:RGeneralManifestData);
Begin
  GRec.CustomsOffice     :=GetValueFromSystemTable('X50','Customs Office number',true);
  GRec.StorageCharge     :=GetValueFromSystemTable('X51','The Storage Charge',true);


End;



Function TCreateOneXMLFileFRM.GetSystemValues(Var GData:RGeneralSystemData):Boolean;
Begin
   GData.XMLDirectory := GetValueFromSystemTable('S01','Directory for saving XML files ',true);
   if (GData.XMLDirectory='') then begin
      raise exception.create('abort');
      result:=False;
   end;
   Result:=true;
End;



Function TCreateOneXMLFileFRM.GetValueFromSystemTable(Const TheKey,ErrorMessage:String;IsShowMessage:Boolean):String;
Var
   TheQuery:TIBCQuery;
   SecondValue:String;
   IsGetSecondValue:Boolean;
Begin


   TheQuery:=ParameterSQL;
   TheQUery.ParamByName('Key').Value:=TheKey;

   TheQuery.close;
   If NOT TheQuery.Prepared then TheQuery.Prepare;
   TheQUery.ParamByName('Key').Value:=TheKey;
   TheQuery.Open;

   If (TheQuery.IsEmpty and IsSHowMessage) Then
        ShowMessage('Error: Insert Parameter: '+TheKey+'->'+ErrorMessage);

   TheQuery.First;
   Result:=TheQuery.fieldbyName('STR_1').AsString;
   Result:=Trim(Result);

   TheQuery.Close;


End;




//**********************************************************************************



Function TCreateOneXMLFileFRM.MyFloatToString(Const TheFloat:double;NumberOfDigits:Integer):String;
Const
   TheDot='.';
   TheComma=',';
Var
   FormatSpec :String;
   TheString:String;
   TheStringDot:String;
Begin



   FormatSpec:='%12'+'.'+IntToStr(NumberOfDigits)+'f';
   TheString := Format(FormatSpec,[TheFloat]);

   TheStringDot:= StringReplace(TheString,TheComma,TheDot,[rfReplaceAll]);
   Result:=TheStringDot;

End;


//**********************************************************************************
//* These procedures are general and they create xml nodes
//**********************************************************************************




function TCreateOneXMLFileFRM.CreateXmlNodeNew(DomDocument:TDomDocument;ElementFather:TDomNode;ElementName:String;ElementValue:String;ElementKind: TXmlElementKind):TDomNode;
Var
   CxDoc:TDomDocument;
   CxFather:TdomNode;
   TheElement:TDomNode;
   TheTextElement:TDomNode;
//   TheAttr:TDomAttr;
Begin

//New information.
{

Element nodes contanin other element nodes but text nodes contain just text
<title> hello</title> title is a node, BE AWARE : hello is a TEXT node and not the value of the title note

FNodeText: = TDomText.Create (FDOC);
  FNodeText.NodeValue: = ' Text1 ';

General tip: Attributes are different, avoid them when you can and convert them to nodes
For example <title category="cooking"> a tree </title> is the same as
<title> <category> cooking <category></note>
You need an attribute name and an attribute value to create an attribute;
}


// Remember that any node except attributes are created under document and then
// appended as childen under an element
// Attributes are set directly under an element. Create is not used

   CxDoc:=DomDocument;
   cxFather:=ElementFather;
   If (ElementKind =xnode) then begin
      TheElement:=cxDoc.createElement(ElementName);
      cxFather.appendChild(TheElement);
      Result:= TheElement;
   end else if ElementKind=xtext then begin //creates node and text at the same time
      TheElement:=cxDoc.createElement(ElementName);
      cxFather.appendChild(TheElement);
      TheTextElement:=cxDoc.createTextNode(ElementValue);
      TheElement.appendChild(TheTextElement);
      Result:=TheElement;
   end else if ElementKind=xcdata then begin
      TheElement:=cxDoc.createCDataSection(ElementName);
      cxFather.appendChild(TheElement);
      Result:=TheElement;
   end else if ElementKind =xattribute then begin
      //attibutes are created by setattibute and they are attached on the Element
      (cxFather as TDomElement).setAttribute(ElementName,ElementValue);
        //NEED TO CHECK THIS for result

   end  else begin
      raise exception.create('kyr Type of Element not specified');
   end;

End;




//**********************************************************************************
// General functions
//**********************************************************************************


Procedure TCreateOneXMLFileFRM.SaveDomToFile(Const FullFilename:String;TheParser:TDomToXMlparser;TheDom:TDomImplementation;TheDomDocument:TDomDocument);
Var
 TheFileStream : TFileStream;

Begin
   TheFileStream := TFileStream.Create(FullFileName,fmCreate or fmShareCompat);
    try
        TheParser.DOMImpl:= TheDom;
        Theparser.writeToStream(TheDomDocument,'UTF-8',TheFileStream);

    finally
        TheFileStream.Free;
    end;

End;

Procedure TCreateOneXMLFileFRM.FixFile(SourceFile:String);
Var
 S, T: TFileStream;
 Count:Integer;
 Temp:String;
 DestFile:String;

Begin

DestFile:=ChangeFileExt(SourceFile,'.xml');
 S := TFileStream.Create( sourcefile, fmOpenRead );
 try
   T := TFileStream.Create( DestFile,fmOpenWrite or fmCreate );
   try
     Temp:= '<ns2:CC615A xmlns:ns2="http://ecs.dgtaxud.ec/CC615A">';
     T.WriteBuffer(Pchar(temp)^,length(temp)*sizeof(char));

     S.Seek(60,soFromBeginning);
     Count:=S.Size-60;
     T.CopyFrom(S, Count-9) ;

     Temp:='</ns2:CC615A>';
     T.WriteBuffer(Pchar(temp)^,length(temp)*sizeof(char));

   finally
     T.Free;
   end;
 finally
   S.Free;
 end;
 DeleteFile(SourceFile);
End;



//**********************************************************************************
//**********************************************************************************
//**********************************************************************************
//**********************************************************************************
//**********************************************************************************


procedure TCreateOneXMLFileFRM.CreateOneAirwabillXML(Const SerialNumber:Integer);
var
ValueType:String;


begin
          With MakeSQL do begin
                Close;
                ReadONly:=True;
                SQL.Clear;
                SQl.Add( 'Select value_type from flight_airwaybill where serial_number= :AirSerial');
                ParamByName('AirSerial').value:=SerialNumber;
                if not prepared then prepare;
                Open;
                ValueType:=FieldByName('value_type').AsString;
                close;
          end;
          If ValueType='H' then begin
                CreateHighValueAirwaybillXML(SerialNumber);
          end else begin
                CreateLowValueAirwaybillXML(SerialNumber);

          end;


end;


procedure TCreateOneXMLFileFRM.CreateLowValueAirwaybillXML(Const SerialNumber:Integer);
Var
   FDoc: TDomDocument;
   TheRoot:TDomNode;
   TempNode:TDomNode;
   TdNode,lpNode:TDomNode;
   X1Node:TDomNode;
   X2Node:TDomNode;
   DtdSpec:String;
   Airwaybill:String;
//   DeconDirectory:String;
   TheFileName:String;
   FlightOutSerial:Integer;
   MawbDateArrived:Tdate;
   Mawb:String;

   TheCountrySQL:TIBCQuery;
   ItemDataset:TIBCQuery;


   Temp:String;
   DString:String;
   FlightName:String;
   DateDepart:TDateTime;

   WeightITem:double;
   Dataset:TDataset;
Begin
// *********************************************************************************
// We need to create the The Dom Document and the Root element for the XMLDocument
// Then create the Dom Document
// Finally send the Dom Document to the parser where it can be saved in file
// *********************************************************************************

   Dataset:=OneFlightAirwaybillSQL;
   OneFlightAirwaybillSQL.close;
   If not OneFlightAirwaybillSQL.Prepared then OneFlightAirwaybillSQL.Prepare;
   OneFlightAirwaybillSQL.ParamByName('Serial_Number').Value:=SerialNumber;

   OneFlightAirwaybillSQL.Open;
   If OneFlightAirwaybillSQL.IsEmpty Then begin
         raise Exception.Create('Cannot find airwaybill');
   end else if OneFlightAirwaybillSQL.RecordCount>1 then begin
         raise Exception.Create('More than one d');
   end else begin
      OneFlightAirwaybillSQL.First;
        FlightOUtSErial:=OneFlightAirwaybillSQL.FieldByName('fk_flight_out_Serial').AsInteger;
        //        XMLDocumentMasterSerial:=FlightOUtCDS.FieldByName('Serial_number').AsString;
   end;


   with FindFlightOutSQL do begin
        close;
        If not Prepared then Prepare;
        ParamByName('Serial_Number').Value:=FlightOutSerial;

        Open;
        Mawb:=FieldByName('MAwb').ASString;
        FlightName:=FieldByName('FLIGHT_NAME').ASString;
        DateDepart:=FieldByName('date_depart').ASDateTime;
   end;


//        Temp:=OneFlightAirwaybillSQL.FieldByName('Serial_number').AsString;
        Temp:=OneFlightAirwaybillSQL.FieldByName('hawb_id').AsString;
        AIrwayBill:=temp;
        TheFileName:=GData.XMLDirectory+'\'+Trim(temp)+'.xml';

     Fdoc:=Dom1.CreateDoc('temp');

     DtDSpec:=GeneralInfo.DeconsolidationDtDTLocation;

     TheRoot:=CreateXMLNodeNew(FDoc,FDoc,'CC615A','',xnode);
     Temp:='xmlns';
     CreateXMLNodeNew(FDoc,TheRoot,temp,'http://www.eurodyn.com',xattribute);

     CreateXMLNodeNew(FDoc,TheRoot,'SyntaxIdentifier','UNOC',xtext);

     CreateXMLNodeNew(FDoc,TheRoot,'SyntaxVersionNumber','3',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'MessageSender','CY10016129G',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'SenderIdCodeQualifier','CY',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'MessageRecipient','NECA.CY',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'RecipientIdentifCodeQualifier','CY',xtext);


     DString:=FormatDateTime('YYMMDD',now);
     CreateXMLNodeNew(FDoc,TheRoot,'DateOfPreparation',DString,xtext);

     DString:=FormatDateTime('HHMM',now);
     CreateXMLNodeNew(FDoc,TheRoot,'TimeOfPreparation',DString,xtext);

     CreateXMLNodeNew(FDoc,TheRoot,'InterchangeControlReference','CY1acbae4fdb51',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'MessageIdentification','CY1acbae4fdb51',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'MessageType','CC615A',xtext);




     //********************************************
     //Header615
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615Header','',xnode);

     Temp:='DHL'+Airwaybill;
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber',Temp,xtext);

     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfItems','',Dataset,'ITEMS_COUNT',xtext);
     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfPackages','',Dataset,'PIECES',xtext);
     TblCreateXMLNode(FDoc,x1node,'TotalGrossMass','',Dataset,'WEIGHT',xtext);


     CreateXMLNodeNew(FDoc,x1node,'ArrivalAgreedLocationCode','LCA',xtext);

     DString:=FlightName+'-'+FormatDateTime('DD/MM/YYYY',DateDepart);
     CreateXMLNodeNew(FDoc,x1node,'ArrivalAgreedLocOfGoods',DString,xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'ArrivalAgreedLocOfGoodsLNG','EN',xtext);

     DString:=FormatDateTime('YYYY-MM-DD"T00:00:00+03:00"',now);
     CreateXMLNodeNew(FDoc,x1node,'DeclarationDate',DString,xtext);

     CreateXMLNodeNew(FDoc,x1node,'DeclarationPlace','LARNACA',xtext);
     CreateXMLNodeNew(FDoc,x1node,'DeclarationPlaceLNG','EN',xtext);
     CreateXMLNodeNew(FDoc,x1node,'SpecificCircumstanceIndicator','A',xtext);

     Temp:=OneFlightAirwaybillSQL.FieldByName('Payment_method').AsString;
     If temp='A' then
        DString:='Y'
     else if temp='C' then
        Dstring:='D'
     else
        Dstring:='D';

     CreateXMLNodeNew(FDoc,x1node,'TranspChargesMethodOfPayment',Dstring,xtext);
     TblCreateXMLNode(FDoc,x1node,'CommercialReferenceNumber','',Dataset,'HAWB_ID',xtext);






//
//********************************************
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615Consignor','',xnode);

     TBLCreateXMLNode(FDoc,x1node,'TraderName','',Dataset,'SENDER_NAME',xtext);
     dString:=Trim(Dataset.fieldbyName('SENDER_ADDRESS_1').AsString)+','+Trim(Dataset.fieldbyName('SENDER_ADDRESS_2').AsString)+','+Trim(Dataset.fieldbyName('SENDER_ADDRESS_3').AsString);
     dString:=Copy(dString,1,34);
     CreateXMLNodeNew(FDoc,x1node,'StreetAndNumber',dString,xtext);
     TblCreateXMLNode(FDoc,x1node,'PostalCode','',Dataset,'SENDER_POST_CODE',xtext);
     TblCreateXMLNode(FDoc,x1node,'City','',Dataset,'SENDER_CITY',xtext);
     TblCreateXMLNode(FDoc,x1node,'CountryCode','',Dataset,'SENDER_COUNTRY_CODE',xtext);
     CreateXMLNodeNew(FDoc,x1node,'NADLNG','EN',xtext);

//********************************************
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615Consignee','',xnode);
     TblCreateXMLNode(FDoc,x1node,'TraderName','',Dataset,'CONSIGNEE_NAME',xtext);
     dString:=Trim(Dataset.fieldbyName('CONSIGNEE_ADDRESS_1').AsString)+','+Trim(Dataset.fieldbyName('CONSIGNEE_ADDRESS_2').AsString)+','+Trim(Dataset.fieldbyName('CONSIGNEE_ADDRESS_3').AsString);
     dString:=Copy(dString,1,34);
     CreateXMLNodeNew(FDoc,x1node,'StreetAndNumber',dString,xtext);
     //TblCreateXMLNode(FDoc,x1node,'StreetAndNumber','',Dataset,'CONSIGNEE_ADDRESS',xtext);

     TblCreateXMLNode(FDoc,x1node,'PostalCode','',Dataset,'CONSIGNEE_POST_CODE',xtext);
     TblCreateXMLNode(FDoc,x1node,'City','',Dataset,'CONSIGNEE_CITY',xtext);
     TblCreateXMLNode(FDoc,x1node,'CountryCode','',Dataset,'CONSIGNEE_COUNTRY_cODE',xtext);
     CreateXMLNodeNew(FDoc,x1node,'NADLNG','EN',xtext);


     //****************************************
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615ExitCustomsOffice','',xnode);
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber','CY000440',xtext);

     //****************************************
     //** For Each Item **************************************
     ItemDataset:=FA_ItemSQL;
     With ItemDataset do begin
        close;
        ParamByName('AirSerial').Value:=SerialNumber;
        If not prepared then prepare;
        Open;
        first;
        while not eof do begin
                x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615GoodsItem','',xnode);

                TBLCreateXMLNode(FDoc,x1node,'ItemNumber','',ItemDataset,'SEQUENCE',xtext);
                TBLCreateXMLNode(FDoc,x1node,'GoodsDescription','',ItemDataset,'DESCRIPTION',xtext);
                CreateXMLNodeNew(FDoc,x1node,'GoodsDescriptionLNG','EN',xtext);
                TBLCreateXMLNode(FDoc,x1node,'GrossMass','',ItemDataset,'WEIGHT',xtext);

                x2node:=CreateXMLNodeNew(FDoc,x1node,'Msg615Packages','',xtext);
                TBLCreateXMLNode(FDoc,x2node,'MarksNumbersOfPackages','',ItemDataset,'TARIFF_CODE',xtext);
                CreateXMLNodeNew(FDoc,x2node,'MarksNumbersOfPackagesLNG','EN',xtext);
                CreateXMLNodeNew(FDoc,x2node,'KindOfPackages','PC',xtext);
                TBLCreateXMLNode(FDoc,x2node,'NumberOfPackages','',Dataset,'PIECES',xtext);


                next;
        end;
     end;
     //****************************************


     {
     x2node:=CreateXMLNodeNew(FDoc,x1node,'Msg615Packages','',xtext);
     CreateXMLNodeNew(FDoc,x2node,'MarksNumbersOfPackages',AIrwaybill,xtext);
     }


     with FlightAirCountrySQL do begin
        If not active then open;
        while (not EOF) do begin
                Temp:= Fieldbyname('COUNTRY_CODE').AsString;
                x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615Itinerary','',xnode);
                CreateXMLNodeNew(FDoc,x1node,'CountryOfRoutingCode',temp,xtext);
                next;
        end;
     end;


     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615LodgementCustomsOffice','CY000440',xnode);
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber','CY000440',xtext);


     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615LodgingSumDeclarationPer','',xnode);
     CreateXMLNodeNew(FDoc,x1node,'TraderName','DHL (CYPRUS) LIMITED',xtext);
     CreateXMLNodeNew(FDoc,x1node,'StreetAndNumber','AKROPOLEOS 13',xtext);
     CreateXMLNodeNew(FDoc,x1node,'PostalCode','2006',xtext);
     CreateXMLNodeNew(FDoc,x1node,'City','STROVOLOS',xtext);
     CreateXMLNodeNew(FDoc,x1node,'CountryCode','CY',xtext);
     CreateXMLNodeNew(FDoc,x1node,'NADLNG','EN',xtext);
     CreateXMLNodeNew(FDoc,x1node,'TIN','CY10016129G',xtext);


     SaveDomToFile(TheFileName,Par1,Dom1,Fdoc);
     //FixFile(TheFileName);
     OneFlightAirwaybillSQL.close;

End;


procedure TCreateOneXMLFileFRM.CreateHighValueAirwaybillXML(Const SerialNumber:Integer);
Var
   FDoc: TDomDocument;
   TheRoot:TDomNode;
   TempNode:TDomNode;
   TdNode,lpNode:TDomNode;
   X1Node:TDomNode;
   X2Node:TDomNode;
   DtdSpec:String;
   Airwaybill:String;
//   DeconDirectory:String;
   TheFileName:String;
   FlightOutSerial:Integer;
   MawbDateArrived:Tdate;
   Mawb:String;

   TheCountrySQL:TIBCQuery;
   ItemDataset:TIBCQuery;


   Temp:String;
   DString:String;
   FlightName:String;
   DateDepart:TDateTime;

   WeightITem:double;
   Dataset:TDataset;
Begin
// *********************************************************************************
// ** HIGH VALUE *******************************************************************************
// ** HIGH VALUE *******************************************************************************
// ** HIGH VALUE *******************************************************************************
// ** HIGH VALUE *******************************************************************************
// *********************************************************************************
// We need to create the The Dom Document and the Root element for the XMLDocument
// Then create the Dom Document
// Finally send the Dom Document to the parser where it can be saved in file
// *********************************************************************************

   Dataset:=OneFlightAirwaybillSQL;
   OneFlightAirwaybillSQL.close;
   If not OneFlightAirwaybillSQL.Prepared then OneFlightAirwaybillSQL.Prepare;
   OneFlightAirwaybillSQL.ParamByName('Serial_Number').Value:=SerialNumber;

   OneFlightAirwaybillSQL.Open;
   If OneFlightAirwaybillSQL.IsEmpty Then begin
         raise Exception.Create('Cannot find airwaybill');
   end else if OneFlightAirwaybillSQL.RecordCount>1 then begin
         raise Exception.Create('More than one d');
   end else begin
      OneFlightAirwaybillSQL.First;
        FlightOUtSErial:=OneFlightAirwaybillSQL.FieldByName('fk_flight_out_Serial').AsInteger;
   end;


   with FindFlightOutSQL do begin
        close;
        If not Prepared then Prepare;
        ParamByName('Serial_Number').Value:=FlightOutSerial;

        Open;
        Mawb:=FieldByName('MAwb').ASString;
        FlightName:=FieldByName('FLIGHT_NAME').ASString;
        DateDepart:=FieldByName('date_depart').ASDateTime;
   end;

        Temp:=OneFlightAirwaybillSQL.FieldByName('hawb_id').AsString;
        AIrwayBill:=temp;
        TheFileName:=GData.XMLDirectory+'\'+Trim(temp)+'.xml';

     Fdoc:=Dom1.CreateDoc('temp');

     DtDSpec:=GeneralInfo.DeconsolidationDtDTLocation;

     TheRoot:=CreateXMLNodeNew(FDoc,FDoc,'CC615A','',xnode);
     Temp:='xmlns';
     CreateXMLNodeNew(FDoc,TheRoot,temp,'http://www.eurodyn.com',xattribute);

     CreateXMLNodeNew(FDoc,TheRoot,'SyntaxIdentifier','UNOC',xtext);

     CreateXMLNodeNew(FDoc,TheRoot,'SyntaxVersionNumber','3',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'MessageSender','CY10016129G',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'SenderIdCodeQualifier','CY',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'MessageRecipient','NECA.CY',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'RecipientIdentifCodeQualifier','CY',xtext);


     DString:=FormatDateTime('YYMMDD',now);
     CreateXMLNodeNew(FDoc,TheRoot,'DateOfPreparation',DString,xtext);

     DString:=FormatDateTime('HHMM',now);
     CreateXMLNodeNew(FDoc,TheRoot,'TimeOfPreparation',DString,xtext);

     CreateXMLNodeNew(FDoc,TheRoot,'InterchangeControlReference','CY823a7ac010e2',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'MessageIdentification','CY823a7ac010e2',xtext);
     CreateXMLNodeNew(FDoc,TheRoot,'MessageType','CC515A',xtext);




     //********************************************
     //Header515
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515Header','',xnode);

     Temp:='DHL'+Airwaybill;
     //in file we have CY20150430 10 29 47 542  ????
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber',Temp,xtext);

     CreateXMLNodeNew(FDoc,x1node,'TypeOfDeclaration','EX',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'CountryOfDestinationCode','TR',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoodsCode','LCA',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoods','ARADIPPOU',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoodsLNG','EN',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'CountryOfDispatchexportCode','CY',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'TransportModeAtBorder','4',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransAtDeparture','3V167C',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransAtDepartureLNG','EN',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransCrossBorder','3V17C',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransCrossBorderLNG','EN',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'NationOfMeansTransCrossBorder','BE',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'ContainerisedIndicator','0',xtext); //here
     CreateXMLNodeNew(FDoc,x1node,'ECSAccompanyingDocLangCode','EN',xtext); //here


     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfItems','',Dataset,'ITEMS_COUNT',xtext);
     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfPackages','',Dataset,'PIECES',xtext);
     TblCreateXMLNode(FDoc,x1node,'TotalGrossMass','',Dataset,'WEIGHT',xtext);

     DString:=FormatDateTime('YYYY-MM-DD"T00:00:00+03:00"',now);
     CreateXMLNodeNew(FDoc,x1node,'DeclarationDate',DString,xtext);

     CreateXMLNodeNew(FDoc,x1node,'DeclarationPlace','LARNACA',xtext);
     CreateXMLNodeNew(FDoc,x1node,'DeclarationPlaceLNG','EN',xtext);
     CreateXMLNodeNew(FDoc,x1node,'SpecificCircumstanceIndicator','A',xtext);

     Temp:=OneFlightAirwaybillSQL.FieldByName('Payment_method').AsString;
     If temp='A' then
        DString:='Y'
     else if temp='C' then
        Dstring:='D'
     else
        Dstring:='D';
     CreateXMLNodeNew(FDoc,x1node,'TranspChargesMethodOfPayment',Dstring,xtext);

     TblCreateXMLNode(FDoc,x1node,'CommercialReferenceNumber','',Dataset,'HAWB_ID',xtext);
     CreateXMLNodeNew(FDoc,x1node,'TypeOfDeclarationBox12','A',xtext); //here

//
//********************************************
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515Exporter','',xnode);

     TBLCreateXMLNode(FDoc,x1node,'TraderName','',Dataset,'SENDER_NAME',xtext);
     dString:=Trim(Dataset.fieldbyName('SENDER_ADDRESS_1').AsString)+','+Trim(Dataset.fieldbyName('SENDER_ADDRESS_2').AsString)+','+Trim(Dataset.fieldbyName('SENDER_ADDRESS_3').AsString);
     dString:=Copy(dString,1,34);
     CreateXMLNodeNew(FDoc,x1node,'StreetAndNumber',dString,xtext);
     TblCreateXMLNode(FDoc,x1node,'PostalCode','',Dataset,'SENDER_POST_CODE',xtext);
     TblCreateXMLNode(FDoc,x1node,'City','',Dataset,'SENDER_CITY',xtext);
     TblCreateXMLNode(FDoc,x1node,'CountryCode','',Dataset,'SENDER_COUNTRY_CODE',xtext);
     CreateXMLNodeNew(FDoc,x1node,'NADLNG','EN',xtext);
     CreateXMLNodeNew(FDoc,x1node,'TIN','CY10016129G',xtext);

//********************************************
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515Consignee','',xnode);
     TblCreateXMLNode(FDoc,x1node,'TraderName','',Dataset,'CONSIGNEE_NAME',xtext);
     dString:=Trim(Dataset.fieldbyName('CONSIGNEE_ADDRESS_1').AsString)+','+Trim(Dataset.fieldbyName('CONSIGNEE_ADDRESS_2').AsString)+','+Trim(Dataset.fieldbyName('CONSIGNEE_ADDRESS_3').AsString);
     dString:=Copy(dString,1,34);
     CreateXMLNodeNew(FDoc,x1node,'StreetAndNumber',dString,xtext);
     //TblCreateXMLNode(FDoc,x1node,'StreetAndNumber','',Dataset,'CONSIGNEE_ADDRESS',xtext);

     TblCreateXMLNode(FDoc,x1node,'PostalCode','',Dataset,'CONSIGNEE_POST_CODE',xtext);
     TblCreateXMLNode(FDoc,x1node,'City','',Dataset,'CONSIGNEE_CITY',xtext);
     TblCreateXMLNode(FDoc,x1node,'CountryCode','',Dataset,'CONSIGNEE_COUNTRY_cODE',xtext);
     CreateXMLNodeNew(FDoc,x1node,'NADLNG','EN',xtext);


     //****************************************
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515ExportCustomsOffice','',xnode);
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber','CY000440',xtext);
     //****************************************

     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515ExitCustomsOffice','',xnode);
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber','CY000440',xtext);

     //****************************************
     //** For Each Item **************************************
     ItemDataset:=FA_ItemSQL;
     With ItemDataset do begin
        close;
        ParamByName('AirSerial').Value:=SerialNumber;
        If not prepared then prepare;
        Open;
        first;
        //while not eof do begin
                x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515GoodsItem','',xnode);

                TBLCreateXMLNode(FDoc,x1node,'ItemNumber','',ItemDataset,'SEQUENCE',xtext);
                TBLCreateXMLNode(FDoc,x1node,'GoodsDescription','',ItemDataset,'DESCRIPTION',xtext);
                CreateXMLNodeNew(FDoc,x1node,'GoodsDescriptionLNG','EN',xtext);
                TBLCreateXMLNode(FDoc,x1node,'GrossMass','',ItemDataset,'WEIGHT',xtext);
                TBLCreateXMLNode(FDoc,x1node,'NetMass','',ItemDataset,'WEIGHT',xtext);
                CreateXMLNodeNew(FDoc,x1node,'ProcedureRequested','31',xtext);
                CreateXMLNodeNew(FDoc,x1node,'PreviousProcedure','00',xtext);

                dString:=Trim(ItemDataset.FieldByName('Currency').AsString);
                If dString='' then dString:='EUR';
                CreateXMLNodeNew(FDoc,x1node,'StatisticalValueCurrency',dString,xtext);
                TBLCreateXMLNode(FDoc,x1node,'StatisticalValueAmount','',ItemDataset,'AMOUNT',xtext);
                TblCreateXMLNode(FDoc,x1node,'CountryOfOrigin','',Dataset,'SENDER_COUNTRY_CODE',xtext);
                CreateXMLNodeNew(FDoc,x1node,'SupplementaryUnits','1',xtext);



                With MakeSQL do begin
                        Close;
                        ReadONly:=True;
                        SQL.Clear;
                        SQl.Add(
                        'Select info_type,Info_value from flight_airwaybill_parameter where FK_FLIGHT_AIRWAYBILL= :AirSerial ');
                        ParamByName('AirSerial').value:=SerialNumber;
                        if not prepared then prepare;
                        Open;
                        while (not EOF) do begin
                                x2node:=CreateXMLNodeNew(FDoc,x1node,'Msg515ProducedDocumentsCertif','',xtext);
                                Temp:= Fieldbyname('INFO_TYPE').AsString;
                                CreateXMLNodeNew(FDoc,x2node,'DocumentType',Temp,xtext);
                                Temp:= Fieldbyname('INFO_value').AsString;
                                CreateXMLNodeNew(FDoc,x2node,'DocumentReference',temp,xtext);
                                CreateXMLNodeNew(FDoc,x2node,'DocumentReferenceLNG','EN',xtext);
                                next;
                        end;
                        close;
                end;

                x2node:=CreateXMLNodeNew(FDoc,x1node,'Msg515SpecialMentions','',xtext);
                CreateXMLNodeNew(FDoc,x2node,'AdditionalInformationCoded','AdditionalInformationCoded',xtext);
                CreateXMLNodeNew(FDoc,x2node,'Text','Text',xtext);
                CreateXMLNodeNew(FDoc,x2node,'TextLNG','EN',xtext);


                x2node:=CreateXMLNodeNew(FDoc,x1node,'Msg515CodeCommodity','',xtext);
                CreateXMLNodeNew(FDoc,x2node,'CombinedNomenclature','CombinedNomenclature',xtext);
                CreateXMLNodeNew(FDoc,x2node,'TARICCode','TARICCode',xtext);
                CreateXMLNodeNew(FDoc,x2node,'TARICFirstAdditionalCode','TARICFirstAdditionalCode',xtext);
                CreateXMLNodeNew(FDoc,x2node,'TARICSecondAdditionalCode','TARICSecondAdditionalCode',xtext);


                x2node:=CreateXMLNodeNew(FDoc,x1node,'Msg515Packages','',xtext);
                TBLCreateXMLNode(FDoc,x2node,'MarksNumbersOfPackages','',ItemDataset,'TARIFF_CODE',xtext);
                CreateXMLNodeNew(FDoc,x2node,'MarksNumbersOfPackagesLNG','EN',xtext);
                CreateXMLNodeNew(FDoc,x2node,'KindOfPackages','PC',xtext);
                TBLCreateXMLNode(FDoc,x2node,'NumberOfPackages','',Dataset,'PIECES',xtext);


                //next; JUST THE FIRST ITEM ??
        //end;
     end;
     //****************************************


     with FlightAirCountrySQL do begin
        If not active then open;
        while (not EOF) do begin
                Temp:= Fieldbyname('COUNTRY_CODE').AsString;
                x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515Itinerary','',xnode);
                CreateXMLNodeNew(FDoc,x1node,'CountryOfRoutingCode',temp,xtext);
                next;
        end;
     end;


//********************************************
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515DeclarantTrader','',xnode);
     CreateXMLNodeNew(FDoc,x1node,'TraderName','DHL (CYPRUS) LIMITED',xtext);
     CreateXMLNodeNew(FDoc,x1node,'StreetAndNumber','AKROPOLEOS 13',xtext);
     CreateXMLNodeNew(FDoc,x1node,'PostalCode','2006',xtext);
     CreateXMLNodeNew(FDoc,x1node,'City','STROVOLOS',xtext);
     CreateXMLNodeNew(FDoc,x1node,'CountryCode','CY',xtext);
     CreateXMLNodeNew(FDoc,x1node,'NADLNG','EN',xtext);
     CreateXMLNodeNew(FDoc,x1node,'TIN','CY10016129G',xtext);

//********************************************
     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515TermsDelivery','',xnode);
     TBLCreateXMLNode(FDoc,x1node,'IncotermCode','',Dataset,'INCOTERMS',xtext);
     CreateXMLNodeNew(FDoc,x1node,'ComplementaryCode','1',xtext);
     CreateXMLNodeNew(FDoc,x1node,'ComplementOfInfo','LARNACA',xtext);
     CreateXMLNodeNew(FDoc,x1node,'ComplementOfInfoLNG','EN',xtext);
//********************************************



     //x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg615LodgementCustomsOffice','CY000440',xnode);
     //CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber','CY000440',xtext);

//********************************************

     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515DataTransaction','',xnode);
     TBLCreateXMLNode(FDoc,x1node,'Currency','',ItemDataset,'Currency',xtext);
     TBLCreateXMLNode(FDoc,x1node,'TotalAmountInvoiced','',ItemDataset,'amount',xtext);
     TBLCreateXMLNode(FDoc,x1node,'ExchangeRate','',ItemDataset,'Currency_rate',xtext);
     CreateXMLNodeNew(FDoc,x1node,'NatureOfTransactionCode','1',xtext);
//********************************************

     x1node:=CreateXMLNodeNew(FDoc,TheRoot,'Msg515StatusRepresentative','',xnode);
     CreateXMLNodeNew(FDoc,x1node,'RepresentativeStatusCode','2',xtext);




     SaveDomToFile(TheFileName,Par1,Dom1,Fdoc);
     //FixFile(TheFileName);
     OneFlightAirwaybillSQL.close;

End;





procedure TCreateOneXMLFileFRM.Button1Click(Sender: TObject);
begin

End;



//**********************************************************************************
//**********************************************************************************
// XML These are specific procedures to the document to be created
//**********************************************************************************
//**********************************************************************************




procedure TCreateOneXMLFileFRM.ProcessFlightOut(FlightOutSerial:Integer);
Var
        SerialNumber:integer;
        Count:Integer;
        Mawb:String;
Begin

   GetSystemValues(GData);


   If Not DirectoryExists(GData.XMLDirectory) then begin
      if not CreateDir(GData.XMLDirectory) then
         raise Exception.Create('Cannot create directory: '+GData.XMLDirectory);
   end;


//   GetGeneralManifestData(GeneralInfo);
//   XMLImporter:=GeneralInfo.CarrierNumber;

   FlightOutSQL.close;
   If not FlightOutSQL.Prepared then FlightOutSQL.Prepare;
   FlightOutSQL.ParamByName('Serial_Number').Value:=FlightOutSerial;
   FlightOUtSQL.Open;
   If FLightOUtSQL.IsEmpty Then begin
      ShowMessage('FLight Out not found');
         raise Exception.Create('Cannot find d');
   end else if FLightOUtSQL.RecordCount>1 then begin
         raise Exception.Create('More than one d');
   end else begin
      FlightOUtSQL.First;
   end;


     FlightAirwayBillSQL.close;
     If not FlightAirwayBillSQL.Prepared then FlightAirwayBillSQL.Prepare;
     Mawb:=FLightOUtSQL.FieldByNAme('Mawb').Asstring;
     FlightAirwayBillSQL.Open;
     FlightAirwayBillSQL.First;
     Count:=0;

     While not FlightAirwayBillSQL.Eof do begin
        SerialNumber:=FlightAirwaybillSQL.FieldByName('Serial_number').AsInteger;
        CreateOneAirwabillXML(SerialNumber);
        Inc(Count);
        FlightAirwayBillSQL.Next;
     end;
     ShowMessage('Successful'+#13#10+ IntToStr(Count)+' Files Created in folder: '+GData.XMLDirectory);

End;



procedure TCreateOneXMLFileFRM.ProcessOneAir(AirSerial:Integer);
Var
        Count:Integer;
        Mawb:String;
Begin

   GetSystemValues(GData);


   If Not DirectoryExists(GData.XMLDirectory) then begin
      if not CreateDir(GData.XMLDirectory) then
         raise Exception.Create('Cannot create directory: '+GData.XMLDirectory);
   end;


     CreateOneAirwabillXML(AirSerial);
     ShowMessage('Successful'+#13#10+'File Created in folder: '+GData.XMLDirectory);

End;


function TCreateOneXMLFileFRM.SyscreateXmlNode(DomDocument:TDomDocument;ElementFather:TDomNode;ElementName:String;ElementValue:String;ElementKind: TXmlElementKind):TDomNode;
Var
XMLKey:String;
XMLValue:String;
Begin
     XMLKey:=ElementName;
     XMLValue := GetValueFromSystemTable(XMLKey,'',false);
     If XMLValue='' then
        XMLValue:= XMLKey;
     CreateXMLNodeNew(DomDocument,ElementFather,XMLKey,XMLValue,xtext);
End;


function TCreateOneXMLFileFRM.TBLcreateXmlNode(DomDocument:TDomDocument;ElementFather:TDomNode;ElementName:String;ElementValue:String;Table:TDataset;TableField:String;ElementKind: TXmlElementKind):TDomNode;
Var
MyValue:String;
Begin
//MyValue:=table.FieldBYName(TableField).AsString;

If Table.FieldBYName(TableField).DataType =ftfloat then begin
        MyValue:=format('%.2f',[table.FieldBYName(TableField).AsFloat]);
end else begin
        MyValue:=Trim(table.FieldBYName(TableField).AsString);
end;
     //If MyValue='' then
        //MyValue:= ElementName;
     CreateXMLNodeNew(DomDocument,ElementFather,ElementName,MyValue,xtext);
End;



END.
