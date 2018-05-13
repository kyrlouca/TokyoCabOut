unit H_ScanAirwaybillNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  DBAccess, Data.DB, vcl.Wwdotdot, vcl.Wwdbcomb, vcl.wwdblook;



type
  TH_ScanAirwaibillNewFRM = class(TForm)
    Panel1: TPanel;
    BottomPNL: TPanel;
    Panel3: TPanel;
    FlightAirwaybillSQL: TIBCQuery;
    Label5: TLabel;
    Label9: TLabel;
    HeaderPNL: TPanel;
    BitBtn2: TBitBtn;
    FlightAirwaybillSQLSERIAL_NUMBER: TIntegerField;
    FlightAirwaybillSQLSEQUENCE_NUMBER: TIntegerField;
    FlightAirwaybillSQLHAWB_ID: TStringField;
    FlightAirwaybillSQLSHIPMENT_ORIGIN_AREA: TStringField;
    FlightAirwaybillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    FlightAirwaybillSQLPIECES: TIntegerField;
    FlightAirwaybillSQLWEIGHT: TFloatField;
    FlightAirwaybillSQLDESCRIPTION: TStringField;
    FlightAirwaybillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightAirwaybillSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightAirwaybillSQLPIECES_S: TStringField;
    FlightAirwaybillSQLFK_AIRWAYBILL_SERIAL: TIntegerField;
    FlightAirwaybillSQLFK_FLIGHT_OUT_SERIAL: TIntegerField;
    Label10: TLabel;
    SearchFlightOutFLD: TwwDBEdit;
    FindHawbBTN: TSpeedButton;
    FlightOutSQL: TIBCQuery;
    FlightOutSQLSERIAL_NUMBER: TIntegerField;
    FlightOutSQLMAWB: TStringField;
    FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightOutSQLDATE_DEPART: TDateTimeField;
    FlightOutSQLREMARKS: TStringField;
    FlightOutSQLDESTINATION_AREA: TStringField;
    FlightOutSQLDESTINATION_COUNTRY: TStringField;
    FindFlightByxSQL: TIBCQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FindFLightAirwaybillbyHawbSQL: TIBCQuery;
    FindFLightAirwaybillbyHawbSQLSERIAL_NUMBER: TIntegerField;
    FindFLightAirwaybillbyHawbSQLHAWB_ID: TStringField;
    FindFLightAirwaybillbyHawbSQLFK_FLIGHT_OUT_SERIAL: TIntegerField;
    FlightAirwaybillTrans: TIBCTransaction;
    FlightOutCDS: TIBCDataSource;
    FLightAirwaybillCDS: TIBCDataSource;
    FlightAirwaybillSQLSENDER_NAME: TStringField;
    FlightAirwaybillSQLSENDER_ADDRESS: TStringField;
    FlightAirwaybillSQLSENDER_POST_CODE: TStringField;
    FlightAirwaybillSQLSENDER_CITY: TStringField;
    FlightAirwaybillSQLSENDER_COUNTRY_CODE: TStringField;
    FlightAirwaybillSQLCONSIGNEE_NAME: TStringField;
    FlightAirwaybillSQLCONSIGNEE_ADDRESS: TStringField;
    FlightAirwaybillSQLCONSIGNEE_POST_CODE: TStringField;
    FlightAirwaybillSQLCONSIGNEE_CITY: TStringField;
    FlightAirwaybillSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    FlightAirwaybillSQLFK_ITINERARY_SERIAL: TIntegerField;
    FlightAirwaybillSQLPACKAGES_COUNT: TIntegerField;
    FlightAirwaybillSQLITEMS_COUNT: TIntegerField;
    BitBtn3: TBitBtn;
    FlightAirwaybillSQLPAYMENT_METHOD: TStringField;
    DeleteFlightCountriesSQL: TIBCSQL;
    FlightTableSQL: TIBCQuery;
    FlightOutSQLFK_FLIGHT_TABLE: TIntegerField;
    FlightTableSQLSERIAL_NUMBER: TIntegerField;
    FlightTableSQLFLIGHT_NAME: TStringField;
    FlightTableSQLDESTINATION_COUNTRY_CODE: TStringField;
    FlightAirwaybillCountrySQL: TIBCQuery;
    FlightAirwaybillCountrySQLCOUNTRY_CODE: TStringField;
    FlightAirwaybillCountrySQLFK_FLIGHT_AIRWAYBILL: TIntegerField;
    FlightOutCountrySQL: TIBCQuery;
    FlightOutCountrySQLFK_FLIGHT_OUT: TIntegerField;
    FlightOutCountrySQLCOUNTRY_CODE: TStringField;
    FlightOutCountrySQLORDER_POSITION: TIntegerField;
    GroupBox1: TGroupBox;
    wwDBEdit2: TwwDBEdit;
    pamenwwDBEdit4: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    wwDBEdit5: TwwDBEdit;
    Panel5: TPanel;
    wwDBEdit3: TwwDBEdit;
    FlightAirwaybillCountrySQLORDER_POSITION: TIntegerField;
    MiddlePNL: TPanel;
    UpdateHawbTypeSQL: TIBCSQL;
    UpdateHawbTrans: TIBCTransaction;
    FlightAirwaybillSQLVALUE_TYPE: TStringField;
    FlightAirwaybillSQLSENDER_ADDRESS_2: TStringField;
    FlightAirwaybillSQLSENDER_ADDRESS_3: TStringField;
    FlightAirwaybillSQLSENDER_ACCOUNT_NUMBER: TIntegerField;
    FlightAirwaybillSQLFK_SENDER_SERIAL: TIntegerField;
    FlightAirwaybillSQLDISTRICT_CODE: TStringField;
    FlightAirwaybillSQLTARIFF_CODE: TStringField;
    FlightAirwaybillSQLTARIFF_KEYWORD: TStringField;
    FlightAirwaybillSQLIS_CLEARED: TStringField;
    FlightAirwaybillSQLIS_HIGH: TStringField;
    FlightAirwaybillSQLSENDER_ADDRESS_1: TStringField;
    FlightAirwaybillSQLSENDER_DEVICE_TYPE: TStringField;
    FlightAirwaybillSQLSENDER_DEVICE_DETAILS: TStringField;
    FlightAirwaybillSQLCONSIGNEE_DEVICE_TYPE: TStringField;
    FlightAirwaybillSQLCONSIGNEE_DEVICE_DETAILS: TStringField;
    FlightAirwaybillSQLCONSIGNEE_ADDRESS_1: TStringField;
    FlightAirwaybillSQLCONSIGNEE_ADDRESS_2: TStringField;
    FlightAirwaybillSQLCONSIGNEE_ADDRESS_3: TStringField;
    FindAirwayBillSQL: TIBCQuery;
    FindAirwayBillSQLSERIAL_NUMBER: TIntegerField;
    FindAirwayBillSQLHAWB_ID: TStringField;
    AirwaybillItemSQL: TIBCQuery;
    AirwaybillItemSQLSEQUENCE: TIntegerField;
    AirwaybillItemSQLWEIGHT: TFloatField;
    AirwaybillItemSQLPIECES: TIntegerField;
    AirwaybillItemSQLDESCRIPTION: TStringField;
    AirwaybillItemSQLSERIAL_NUMBER: TIntegerField;
    AirwaybillItemSQLFK_AIRWAYBILL_SERIAL: TIntegerField;
    AirwaybillItemSQLTARIFF_CODE: TStringField;
    AirwaybillItemSQLAMOUNT: TFloatField;
    AirwaybillItemSQLCURRENCY_RATE: TFloatField;
    AirwaybillItemSQLCURRENCY: TStringField;
    AirwaybillItemSQLUNIT_OF_MEASURE: TStringField;
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
    WriteTRans: TIBCTransaction;
    UpdateTableSQL: TIBCSQL;
    DetailsPNL: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    wwDBEdit1: TwwDBEdit;
    WeightFLD: TwwDBEdit;
    DescriptionFLD: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    AirwaybillOriginalSQL: TIBCQuery;
    AirwaybillOriginalSQLSERIAL_NUMBER: TIntegerField;
    AirwaybillOriginalSQLSEQUENCE_NUMBER: TIntegerField;
    AirwaybillOriginalSQLHAWB_ID: TStringField;
    AirwaybillOriginalSQLSHIPMENT_ORIGIN_AREA: TStringField;
    AirwaybillOriginalSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    AirwaybillOriginalSQLPIECES: TIntegerField;
    AirwaybillOriginalSQLWEIGHT: TFloatField;
    AirwaybillOriginalSQLDESCRIPTION: TStringField;
    AirwaybillOriginalSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    AirwaybillOriginalSQLFK_MOVEMENT_SERIAL: TIntegerField;
    AirwaybillOriginalSQLPIECES_S: TStringField;
    AirwaybillOriginalSQLSENDER_NAME: TStringField;
    AirwaybillOriginalSQLSENDER_ADDRESS: TStringField;
    AirwaybillOriginalSQLSENDER_POST_CODE: TStringField;
    AirwaybillOriginalSQLSENDER_CITY: TStringField;
    AirwaybillOriginalSQLSENDER_COUNTRY_CODE: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_NAME: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_ADDRESS: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_POST_CODE: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_CITY: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    AirwaybillOriginalSQLFK_ITINERARY_SERIAL: TIntegerField;
    AirwaybillOriginalSQLPACKAGES_COUNT: TIntegerField;
    AirwaybillOriginalSQLITEMS_COUNT: TIntegerField;
    AirwaybillOriginalSQLPAYMENT_METHOD: TStringField;
    AirwaybillOriginalSQLIS_HIGH: TStringField;
    AirwaybillOriginalSQLVALUE_TYPE: TStringField;
    AirwaybillOriginalSQLCUSTOMS_VALUE: TFloatField;
    AirwaybillOriginalSQLCURRENCY: TStringField;
    AirwaybillOriginalSQLCURRENCY_RATE: TFloatField;
    AirwaybillOriginalSQLSENDER_ADDRESS_1: TStringField;
    AirwaybillOriginalSQLSENDER_ADDRESS_2: TStringField;
    AirwaybillOriginalSQLSENDER_ADDRESS_3: TStringField;
    AirwaybillOriginalSQLSENDER_DEVICE_TYPE: TStringField;
    AirwaybillOriginalSQLSENDER_DEVICE_DETAILS: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_ADDRESS_1: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_ADDRESS_2: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_ADDRESS_3: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_DEVICE_TYPE: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_DEVICE_DETAILS: TStringField;
    AirwaybillOriginalSQLINCOTERMS: TStringField;
    AirwaybillOriginalSQLIS_SCANNED: TStringField;
    FlightAirwaybillGRD: TwwDBGrid;
    ValueFLD: TwwDBComboBox;
    HawbInputFLD: TwwDBEdit;
    Label2: TLabel;
    SelectRGP: TRadioGroup;
    DeleteSelectedBTN: TBitBtn;
    SelectSQL: TIBCQuery;
    FlightAirwaybillSQLSERVICE_CODE: TStringField;
    FlightAirwaybillSQLACCOUNT_NUMBER: TStringField;
    FlightAirwaybillSQLINCOTERMS: TStringField;
    AirwaybillOriginalSQLSENDER_EMAIL: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_EMAIL: TStringField;
    AirwaybillOriginalSQLSERVICE_CODE: TStringField;
    AirwaybillOriginalSQLACCOUNT_NUMBER: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure AirwayBillSQLAfterPost(DataSet: TDataSet);
    procedure FlightAirwaybillGRDDblClick(Sender: TObject);
    procedure HawbInputFLDKeyPress(Sender: TObject; var Key: Char);
    procedure FindHawbBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FlightOutCDSStateChange(Sender: TObject);
    procedure XMLBTNClick(Sender: TObject);
    procedure XMLOneBTNClick(Sender: TObject);
    procedure XMLForOneBTNClick(Sender: TObject);
    procedure DeleteXBTNClick(Sender: TObject);
    procedure HighGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure HighGRDTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure SelectRGPClick(Sender: TObject);
    procedure DeleteSelectedBTNClick(Sender: TObject);
  private
    { Private declarations }
        procedure UpdateHawbStatus(HawbSerial:Integer;IsHigh:String);
  public
    { Public declarations }
    GAction:string;
    GFlightOutSerial:Integer;

    Function  FindFlightOut(Mawb:String;Var Serial:Integer):boolean;
    Function  OPenFlightOut(Serial:Integer):boolean;
    procedure InsertFlightAirwaybill(Var SerialNumber:Integer;HawbId:string);
    procedure DeleteFlightAirwaybill(Var SerialNumber:Integer);
    procedure ProcessAirwaybill(Var SerialNumber:Integer;HawbId:string);
  end;

var
  H_ScanAirwaibillNewFRM: TH_ScanAirwaibillNewFRM;

implementation

uses MainForm, H_FlightAirwaybill, H_flightOut;

{$R *.DFM}

procedure TH_ScanAirwaibillNewFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FlightOutSQL.Close;
FlightAirwaybillSQL.Close;

end;

procedure TH_ScanAirwaibillNewFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TH_ScanAirwaibillNewFRM.AirwayBillSQLAfterPost(DataSet: TDataSet);
Var
   TheBookMark:TBookmark;
begin
TheBookMark:=Dataset.GetBookmark;
Dataset.Close;
Dataset.Open;
Dataset.GotoBookmark(TheBookMark);
end;

Function TH_ScanAirwaibillNewFRM.FindFlightOut(Mawb:String;Var Serial:Integer):Boolean;
begin
Serial:=0;
with FindFlightbyxSQL do begin
        close;
        If not prepared then Prepare;
        ParamByName('Mawb').value:= Mawb;
        Open;
        Result:=(not IsEmpty);
        If Result then begin
                First;
                Serial:=FieldByName('Serial_number').AsINteger;

        end;

end;

End;

Function TH_ScanAirwaibillNewFRM.OpenFlightOut(Serial:Integer):Boolean;
begin
with FlightOutSQL do begin
        close;
        If not prepared then Prepare;
        ParamByName('SerialNumber').value:= serial;
        Open;
        Result:=(not IsEmpty);
        MiddlePNL.Visible:=Result;
        If Result then begin
                If not FlightAirwaybillSQL.Active then
                        FlightAirwaybillSQL.Open
                else
                        FLightAIrwaybillSQL.Refresh;

                IF HawbINputfld.CanFocus then
                        HawbInputFLD.SetFocus;

        end else begin
//                HawbInputFLD.Enabled:=False;
        end;
end;

End;






procedure TH_ScanAirwaibillNewFRM.InsertFlightAirwaybill(Var SerialNumber:Integer;HawbId:string);
begin

with  FlightAirwaybillSQL do begin
        Insert;
        FieldByName('Hawb_id').value:=Hawbid;
        SerialNumber:=FieldByName('serial_number').AsInteger;
end;

End;



procedure TH_ScanAirwaibillNewFRM.DeleteFlightAirwaybill(Var SerialNumber:Integer);
begin
End;


procedure TH_ScanAirwaibillNewFRM.ProcessAirwaybill(Var SerialNumber:Integer;HawbId:string);
Var
        AirSerial:Integer;
        AirCountry:String;
        FaSerial:Integer;
        ValueType:String;


begin


with FindAirwaybillSQL do begin   //cannot find original airwaybill
        close;
        If not prepared then Prepare;
        ParamByName('HawbID').value:=Hawbid;
        Open;
        If (IsEmpty) then begin
                AirSerial:=0;
                //raise exception.Create('Hawb: '+HawbId+' Not Found. Create Airwaybill First');
        end else begin
                AirSerial:=FieldByName('serial_number').AsInteger;
        end;

end;


with FindFlightAirwayBillByHawbSQL do begin   //cannot have two same hawb ids on SAME flight
        close;
        If not prepared then Prepare;
        ParamByName('HawbID').value:=Hawbid;
        ParamByName('FLightSerial').value:=FlightOutSQL.FieldByName('serial_number').AsInteger;
        Open;
        If (not IsEmpty) then begin
                Raise exception.Create('Hawb: '+HawbId+' already scanned');
        end;

end;



with  AirwaybillOriginalSQL do begin
        close;
        If not prepared then Prepare;
        ParamByName('HawbID').value:=Hawbid;
        Open;
        If (not IsEmpty) then begin    // The Airwaybill exists since it was normally read from the text file previously
                AirSerial:=  AirwaybillOriginalSQL.FieldbyName('SERIAL_NUMBER').AsInteger;
                InsertFlightAirwaybill(SerialNumber,HawbId);

                FaSerial:=SErialNumber;
                FlightAirwaybillSQL.fieldbyname('FK_flight_out_serial').value:=FlightOutSQL.FieldByName('serial_number').AsInteger;



                FlightAirwaybillSQL.fieldbyname('HAWB_ID').value:=AirwaybillOriginalSQL.FieldbyName('HAWB_ID').AsString;

                valueType:=AirwaybillOriginalSQL.FieldbyName('VALUE_TYPE').AsString;
                If ValueType='' then begin
                        ValueType:='H';
                end;

                FlightAirwaybillSQL.fieldbyname('FK_AIRWAYBILL_SERIAL').value:=AirSerial;
                FlightAirwaybillSQL.fieldbyname('VALUE_TYPE').value:=ValueType;
                FlightAirwaybillSQL.fieldbyname('ITEMS_COUNT').value:=AirwaybillOriginalSQL.FieldbyName('ITEMS_COUNT').AsInteger;
                FlightAirwaybillSQL.fieldbyname('PACKAGES_COUNT').value:=AirwaybillOriginalSQL.FieldbyName('PACKAGES_COUNT').AsInteger;
                FlightAirwaybillSQL.fieldbyname('DESCRIPTION').value:=AirwaybillOriginalSQL.FieldbyName('DESCRIPTION').AsString;
                FlightAirwaybillSQL.fieldbyname('PIECES').value:=AirwaybillOriginalSQL.FieldbyName('PIECES').AsInteger;
                FlightAirwaybillSQL.fieldbyname('WEIGHT').value:=AirwaybillOriginalSQL.FieldbyName('WEIGHT').AsFloat;

                FlightAirwaybillSQL.fieldbyname('SHIPMENT_ORIGIN_COUNTRY').value:=AirwaybillOriginalSQL.FieldbyName('SHIPMENT_ORIGIN_COUNTRY').AsString;
                FlightAirwaybillSQL.fieldbyname('SHIPMENT_ORIGIN_AREA').value:=AirwaybillOriginalSQL.FieldbyName('SHIPMENT_ORIGIN_AREA').AsString;


                FlightAirwaybillSQL.fieldbyname('SENDER_NAME').value:=AirwaybillOriginalSQL.FieldbyName('SENDER_NAME').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_ADDRESS_1').value:=AirwaybillOriginalSQL.FieldByName('SENDER_ADDRESS_1').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_ADDRESS_2').value:=AirwaybillOriginalSQL.FieldByName('SENDER_ADDRESS_2').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_ADDRESS_3').value:=AirwaybillOriginalSQL.FieldByName('SENDER_ADDRESS_3').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_POST_CODE').value:=AirwaybillOriginalSQL.FieldbyName('SENDER_POST_CODE').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_CITY').value:=AirwaybillOriginalSQL.FieldByName('SENDER_CITY').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_COUNTRY_CODE').value:=AirwaybillOriginalSQL.FieldbyName('SENDER_COUNTRY_CODE').AsString;

                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_NAME').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_NAME').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_ADDRESS_1').value:=AirwaybillOriginalSQL.FieldByName('CONSIGNEE_ADDRESS_1').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_ADDRESS_2').value:=AirwaybillOriginalSQL.FieldByName('CONSIGNEE_ADDRESS_2').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_ADDRESS_3').value:=AirwaybillOriginalSQL.FieldByName('CONSIGNEE_ADDRESS_3').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_POST_CODE').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_POST_CODE').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_CITY').value:=AirwaybillOriginalSQL.FieldByName('CONSIGNEE_CITY').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_COUNTRY_CODE').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_COUNTRY_CODE').AsString;
                FlightAirwaybillSQL.fieldbyname('PAYMENT_METHOD').value:=AirwaybillOriginalSQL.FieldbyName('PAYMENT_METHOD').AsString;


                FlightAirwaybillSQL.fieldbyname('Incoterms').value:=AirwaybillOriginalSQL.FieldbyName('Incoterms').AsString;
                FlightAirwaybillSQL.fieldbyname('service_code').value:=AirwaybillOriginalSQL.FieldbyName('service_code').AsString;
                FlightAirwaybillSQL.fieldbyname('ACCOUNT_NUMBER').value:=AirwaybillOriginalSQL.FieldbyName('ACCOUNT_NUMBER').AsString;




                FlightAirwaybillSQL.fieldbyname('sender_Device_type').value:=AirwaybillOriginalSQL.FieldbyName('sender_Device_type').AsString;
                FlightAirwaybillSQL.fieldbyname('sender_DEVICE_DETAILS').value:=AirwaybillOriginalSQL.FieldbyName('sender_DEVICE_DETAILS').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_Device_type').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_Device_type').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_DEVICE_DETAILS').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_DEVICE_DETAILS').AsString;

                FlightAirwaybillSQL.Post;


                ///************************************
                // copy items
                ///************************************
                with AirwaybillItemSQL do begin
                        close;
                        If not prepared then prepare;
                        ParamByName('AirSerial').Value:=AirSerial;
                        open;
                        first;
                        while not eof do begin
                                If not FA_ItemSQL.Active then
                                        FA_ItemSQL.Open;
                                FA_ItemSQL.Insert;

                                FA_ItemSQL.FieldByName('FK_fa_SERIAL').value:=fAsERIAL;

                                FA_ItemSQL.FieldByName('WEIGHT').value:=AirwaybillItemSQL.FieldByName('WEIGHT').AsFloat;
                                FA_ItemSQL.FieldByName('PIECES').value:=AirwaybillItemSQL.FieldByName('PIECES').AsInteger;
                                FA_ItemSQL.FieldByName('DESCRIPTION').value:=AirwaybillItemSQL.FieldByName('DESCRIPTION').AsString;


                                FA_ItemSQL.FieldByName('AMOUNT').value:=AirwaybillItemSQL.FieldByName('AMOUNT').AsFloat;
                                FA_ItemSQL.FieldByName('SEQUENCE').value:=AirwaybillItemSQL.FieldByName('SEQUENCE').AsInteger;
                                FA_ItemSQL.FieldByName('currency').value:=AirwaybillItemSQL.FieldByName('currency').AsString;
                                FA_ItemSQL.Post;
                                AirwaybillItemSQL.next;
                        end;
                end;


                //For each flight airwaybill insert the origin as the first country
                // Next insert flight's countries
                //Last insert the destination country
                if not FlightAIrwaybillCountrySQL.Active then
                        FlightAIrwaybillCountrySQL.Open;

                // the sender origin country
                FlightAIrwaybillCountrySQL.insert;
                FlightAirwaybillCountrySQL.fieldbyname('Country_code').value:=AirwaybillOriginalSQL.FieldbyName('SENDER_COUNTRY_CODE').AsString;
                FlightAirwaybillCountrySQL.fieldbyname('order_position').value:=0;
                FlightAirwaybillCOuntrySQL.Post;

                FlightOutCountrySQL.Refresh;
                FlightOutCountrySQL.First;
                while not FlightOutCountrySQL.eof do begin
                        // if not exists then insert
                        AirCountry:=FlightOUtCountrySQL.FieldbyName('COUNTRY_CODE').AsString;
                        If (not FlightAIrwaybillCountrySQL.LocateEx('COUNTRY_CODE',AirCountry,[])) then begin
                         FlightAIrwaybillCountrySQL.insert;
                         FlightAirwaybillCountrySQL.fieldbyname('Country_code').value:=FlightOUtCountrySQL.FieldbyName('COUNTRY_CODE').AsString;
                         FlightAirwaybillCountrySQL.fieldbyname('order_position').value:=FlightOUtCountrySQL.FieldbyName('Order_position').AsInteger;
                         FlightAirwaybillCOuntrySQL.Post;
                        end;
                        FlightOutCountrySQL.next;
                end;
                // if it exists DO NOT insert
                FlightAIrwaybillCountrySQL.insert;
                FlightAirwaybillCountrySQL.fieldbyname('Country_code').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_COUNTRY_CODE').AsString;
                FlightAirwaybillCountrySQL.fieldbyname('order_position').value:=100;
                FlightAirwaybillCOuntrySQL.Post;

                if AirwayBillOriginalSQL.State=dsbrowse then begin
                   AirwaybillOriginalSQL.Edit;
                end;
                AirwaybillOriginalSQL.FieldbyName('IS_SCANNED').Value:='Y';
                AirwaybillOriginalSQL.Post;

                DetailsPNL.Visible:=true;
        end else begin   // Somehow the airwaybill not read from file. Still we need to put it on flight
                DetailsPNL.Visible:=False;

                H_FlightAirwaybillFRM.GHawbId:=HawbId;
                H_FlightAirwaybillFRM.GFlightOutSerial:=FlightOutSQL.FieldByName('serial_number').AsInteger;
                H_FlightAirwaybillFRM.GAction:='INSERT';
                If H_FLightAirwaybillFRM.ShowModal=mrOK then begin
//                        FlightAirwaybillLowSQL.open;
                end;
                FlightAirwaybillSQL.Refresh;

        end;
end;

End;



procedure TH_ScanAirwaibillNewFRM.FlightAirwaybillGRDDblClick(Sender: TObject);
Var
        Serial:Integer;
        FlightOutSerial:Integer;
begin

        Serial:=FlightAirwaybillGRD.DataSource.DataSet.fieldbyName('serial_number').AsInteger;
        If Serial<=0 then begin
                abort;
        end;
        FLightOUtSerial:=FlightAirwaybillGRD.DataSource.DataSet.fieldbyName('fk_flight_out_serial').AsInteger;
        H_FlightAirwaybillFRM.GFlightAIrSerial:=Serial;
        H_FlightAirwaybillFRM.GFlightOutSerial:=FlightOutSerial;
        H_FlightAirwaybillFRM.GAction:='EDIT';

        H_FlightAirwaybillFRM.SHowmodal;
        FlightAIrwaybillSQL.Refresh;
        FlightAIrwaybillSQL.Locate('SERIAL_NUMBER',Serial,[]);
        DetailsPNL.Visible:=False;
end;

procedure TH_ScanAirwaibillNewFRM.HawbInputFLDKeyPress(Sender: TObject;
  var Key: Char);
Var
        Serial:Integer;
begin
If (Key= #13) then begin
//ShowMessage('value entered='+HawbInputFLD.Text);
ProcessAIrwayBill(Serial,HawbInputFLD.Text);
HawbInputFLD.Clear;
end;

end;





procedure TH_ScanAirwaibillNewFRM.FindHawbBTNClick(Sender: TObject);
Var
        FlightSerial:Integer;
begin
 If FindFlightOut(SearchFlightOutFLD.text,FlightSerial) then begin
        OpenFlightOut(FlightSerial);
 end else begin
        FlightOUtSQL.Close;

 end;
MiddlePNL.visible:=  (not FlightOUtSQL.IsEmpty and FlightOutSQL.Active);


End;

procedure TH_ScanAirwaibillNewFRM.FormCreate(Sender: TObject);
begin
If not FLightAIrwaybillSQL.Active then
         FLightAIrwaybillSQL.open;
end;

procedure TH_ScanAirwaibillNewFRM.FormActivate(Sender: TObject);
Var
Dataset:TDataset;
I:Integer;
begin
for i := 0 to (Self as TForm).ComponentCount-1 do begin
if (Self as TForm).Components[i] is TDataset then begin
        Dataset:= TDataset(Tform(Self).Components[i]);

        If not Dataset.Active then
                Dataset.Open
        else
                Dataset.Refresh;

        end;
end;


MiddlePNL.visible:=  (not FlightOUtSQL.IsEmpty and FlightOutSQL.Active);

If searchFlightOutfld.canfocus then SearchFlightOutfld.setfocus;
//FlightAirwaybillSQL.Open;

If GAction='EDIT' then begin
OpenFlightOut(GFLightOutSerial);


end;


end;

procedure TH_ScanAirwaibillNewFRM.BitBtn3Click(Sender: TObject);
Var
        FlightOutSerial:Integer;
        FlightOutMawb:String;
begin
        H_FlightOutFRM.GAction:='INSERT';
        H_FlightOutFRM.SHowmodal;
        FlightOutSerial:=H_flightOutFRM.GFlightOutSerial;
        OpenFlightOut(FlightOutSerial);

end;

procedure TH_ScanAirwaibillNewFRM.FlightOutCDSStateChange(Sender: TObject);
begin
MiddlePNL.visible:=  (not FlightOUtSQL.IsEmpty and FlightOutSQL.Active);

end;

procedure TH_ScanAirwaibillNewFRM.XMLBTNClick(Sender: TObject);
Var
        SerialNumber:Integer;
        Mawb:String;
begin
SerialNumber:=FLightOutSQL.FieldByName('serial_number').AsInteger;
//CreateOneXMLFileFRM.GFlightOutSerial:=SerialNumber;
//CreateOneXMLFileFRM.ProcessFlightOut(SerialNumber);

end;

procedure TH_ScanAirwaibillNewFRM.XMLOneBTNClick(Sender: TObject);
Var
        SerialNumber:Integer;
        Mawb:String;
begin
SerialNumber:=FLightAirwaybillSQL.FieldByName('serial_number').AsInteger;
//CreateOneXMLFileFRM.ProcessOneAir(SerialNumber);

end;

procedure TH_ScanAirwaibillNewFRM.XMLForOneBTNClick(Sender: TObject);

Var
        SerialNumber:Integer;
        Mawb:String;
begin
iF FlightAirwaybillCDS.DataSet.State=dsEdit then
        FlightAirwaybillCDS.DataSet.Post;

SerialNumber:=FLightAirwaybillSQL.FieldByName('serial_number').AsInteger;
Mawb:= FlightOutSQL.FieldbyName('Mawb').AsString;
//CreateOneXMLFileFRM.ProcessOneAir(SerialNumber);

end;

procedure TH_ScanAirwaibillNewFRM.DeleteXBTNClick(Sender: TObject);
Var
        Serial:Integer;
begin
        Serial:= FlightAIrwayBillSQL.FieldbyName('serial_number').AsInteger;

        FlightAirwaybillSQL.AutoCommit:=false;
        FlightAirwaybillSQL.UpdateTransaction.StartTransaction;
        DeleteFlightCountriesSQL.parambyName('SerialNumber').Value:=Serial;
        DeleteFlightCountriesSQL.Execute;
        FlightAirwaybillSQL.Delete;
        FlightAirwaybillSQL.UpdateTransaction.Commit;
        FlightAirwaybillSQL.AutoCommit:=true;
        DetailsPNL.Visible:=False;

end;

procedure TH_ScanAirwaibillNewFRM.UpdateHawbStatus(HawbSerial:Integer;IsHigh:String);
begin
      With UpdateHawbTypeSQL do begin
        ParamByName('SerialNumber').Value:=HawbSerial;
        ParamByName('IsHigh').Value:=IsHigh;
        Execute;
     end;
end;


procedure TH_ScanAirwaibillNewFRM.HighGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
Var
   IsCustomerZero:Boolean;
   IsCustomerNull:Boolean;
begin

IsCustomerZero:=Field.DataSet.FieldByName('FK_SENDER_SERIAL').AsInteger=0;
IsCustomerNull:=Field.DataSet.FieldByName('FK_SENDER_SERIAL').IsNull;


If UpperCase(Field.FieldName)='SENDER_NAME' then begin

        if  IsCustomerZero or IsCustomerNull then begin
                ABrush.Color := $000141FE;//red
        end else begin
                if Highlight then begin
                        afont.Color:=ClBlack;
                        brush.color:=clYellow;// $1C86EE;
                end;
        end;
end;


end;

procedure TH_ScanAirwaibillNewFRM.HighGRDTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
{
        HawbDS:=TIBCQUery(HighGRD.DataSource.DataSet);
        Bm:=HawbDS.GetBookmark;
        HawbDs.ControlsDisabled;
        HawbDS.close;

        if Uppercase(AFieldName)='SERIAL_NUMBER' then begin
                HawbDS.SetOrderBy(AFieldName+' DESC');
        end else begin
                HawbDs.SetOrderBy(AFieldName);
        end;

        HawbDS.open;
        HawbDs.EnableControls;
        //if Hawbds.BookmarkValid(bm) then
                HawbDS.GotoBookmark(Bm);

        HighGRD.SelectRecord;
        }
        end;

procedure TH_ScanAirwaibillNewFRM.SelectRGPClick(Sender: TObject);

begin

FlightAirwaybillSQL.DeleteWhere;
If SelectRGP.ItemIndex=0 then begin

end else if SelectRGP.ItemIndex=1 then begin
FlightAirwaybillSQL.AddWhere('VALUE_TYPE=''H'' ');
end else if SelectRGP.ItemIndex=2 then begin
FlightAirwaybillSQL.AddWhere('VALUE_TYPE=''M''');
end else if SelectRGP.ItemIndex=3 then begin
FlightAirwaybillSQL.AddWhere('VALUE_TYPE=''L''');
end else if SelectRGP.ItemIndex=4 then begin
FlightAirwaybillSQL.AddWhere('VALUE_TYPE IS NULL');
end;

//FlightAirwayBillSQL.RefreshRecord;
FlightAirwayBillSQL.close;
FlightAirwayBillSQL.open;
end;

procedure TH_ScanAirwaibillNewFRM.DeleteSelectedBTNClick(Sender: TObject);
Var
        Serial:Integer;
        FlightOutSerial:Integer;
        AirSerial:Integer;
begin

        Serial:=FlightAirwaybillGRD.DataSource.DataSet.fieldbyName('serial_number').AsInteger;
        AirSerial:=FlightAirwaybillGRD.DataSource.DataSet.fieldbyName('fk_airwaybill_serial').AsInteger;

        If Serial<=0 then begin
                abort;
        end;

        FLightOUtSerial:=FlightAirwaybillGRD.DataSource.DataSet.fieldbyName('fk_flight_out_serial').AsInteger;
        With UpdateTableSQL do begin
                SQL.Clear;
                SQL.Add('Delete from Flight_airwaybill_country where FK_FLIGHT_AIRWAYBILL=:FlightAir ');
                ParambyName('FlightAir').Value:=Serial;
                Execute;

        end;

        With UpdateTableSQL do begin
                SQL.Clear;
                SQL.Add('Delete from Flight_airwaybill_Item where FK_FA_SERIAL=:FlightAir ');
                ParambyName('FlightAir').Value:=Serial;
                Execute;

        end;
        With UpdateTableSQL do begin
                SQL.Clear;
                SQL.Add('Delete from Flight_airwaybill where SERIAL_NUMBER=:FlightAir ');
                ParambyName('FlightAir').Value:=Serial;
                Execute;

        end;

        With UpdateTableSQL do begin
                SQL.Clear;
                SQL.Add('Update airwaybill set IS_SCANNED=''N'' where SERIAL_NUMBER=:AirSerial ');
                ParambyName('AirSerial').Value:=AirSerial;
                Execute;

        end;


        FlightAirwaybillSQL.Refresh;

End;

end.
