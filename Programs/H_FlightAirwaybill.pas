unit H_FlightAirwaybill;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  Wwdbcomb, Data.DB, DBAccess, vcl.wwdblook, vcl.Wwdotdot;

type
  TH_FlightairwaybillFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    Label9: TLabel;
    FlightAirwaybillCDS: TIBCDataSource;
    FairwaybillCountrySQL: TIBCQuery;
    FAirwaybillCountryCRC: TIBCDataSource;
    CountrySQL: TIBCQuery;
    CountrySQLCODE_2: TStringField;
    CountrySQLNAME: TStringField;
    FairwaybillCountrySQLCOUNTRY_CODE: TStringField;
    FairwaybillCountrySQLFK_FLIGHT_AIRWAYBILL: TIntegerField;
    FairwaybillCountrySQLCountry: TStringField;
    UpdateTransaction: TIBCTransaction;
    ItinerarySQL: TIBCQuery;
    ItineraryCRC: TIBCDataSource;
    ItinerarySQLSERIAL_NUMBER: TIntegerField;
    ItinerarySQLFLIGHT_NAME: TStringField;
    ItineraryCountrySQL: TIBCQuery;
    ItineraryCountrySQLSERIAL_NUMBER: TIntegerField;
    ItineraryCountrySQLFK_ITINERARY_SERIAL: TIntegerField;
    ItineraryCountrySQLCOUNTRY_CODE: TStringField;
    FlightAirwaybillSQL: TIBCQuery;
    FlightAirwaybillSQLHAWB_ID: TStringField;
    FlightAirwaybillSQLDESCRIPTION: TStringField;
    FlightAirwaybillSQLWEIGHT: TFloatField;
    FlightAirwaybillSQLPIECES: TIntegerField;
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
    FlightAirwaybillSQLSERIAL_NUMBER: TIntegerField;
    FlightAirwaybillSQLSEQUENCE_NUMBER: TIntegerField;
    FlightAirwaybillSQLSHIPMENT_ORIGIN_AREA: TStringField;
    FlightAirwaybillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    FlightAirwaybillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightAirwaybillSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightAirwaybillSQLPIECES_S: TStringField;
    FlightAirwaybillSQLFK_AIRWAYBILL_SERIAL: TIntegerField;
    FlightAirwaybillSQLFK_FLIGHT_OUT_SERIAL: TIntegerField;
    FlightAirwaybillSQLPAYMENT_METHOD: TStringField;
    FairwaybillCountrySQLORDER_POSITION: TIntegerField;
    ItineraryCountrySQLORDER_POSITION: TIntegerField;
    FlightAirwaybillSQLSENDER_ADDRESS_2: TStringField;
    FlightAirwaybillSQLSENDER_ADDRESS_3: TStringField;
    FlightAirwaybillSQLFK_SENDER_SERIAL: TIntegerField;
    FlightAirwaybillSQLSENDER_ACCOUNT_NUMBER: TIntegerField;
    FlightAirwaybillSQLDISTRICT_CODE: TStringField;
    FlightAirwaybillSQLTARIFF_CODE: TStringField;
    FlightAirwaybillSQLTARIFF_KEYWORD: TStringField;
    FlightAirwaybillSQLIS_CLEARED: TStringField;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    SerialFLD: TwwDBEdit;
    HawbFLD: TwwDBEdit;
    WeightFLD: TwwDBEdit;
    DescriptionFLD: TwwDBEdit;
    PiecesFLD: TwwDBEdit;
    ItemsFLD: TwwDBEdit;
    PaymentFLD: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    SpeedButton1: TSpeedButton;
    sname: TwwDBEdit;
    sadd1: TwwDBEdit;
    spost: TwwDBEdit;
    scity: TwwDBEdit;
    scountry: TwwDBLookupCombo;
    SelectNameFLD: TwwDBEdit;
    sadd2: TwwDBEdit;
    sadd3: TwwDBEdit;
    GroupBox3: TGroupBox;
    FlightAirwaybillSQLVALUE_TYPE: TStringField;
    FlightAirwaybillSQLSENDER_ADDRESS_1: TStringField;
    FlightAirwaybillSQLSENDER_DEVICE_TYPE: TStringField;
    FlightAirwaybillSQLSENDER_DEVICE_DETAILS: TStringField;
    FlightAirwaybillSQLCONSIGNEE_DEVICE_TYPE: TStringField;
    FlightAirwaybillSQLCONSIGNEE_DEVICE_DETAILS: TStringField;
    FlightAirwaybillSQLCONSIGNEE_ADDRESS_1: TStringField;
    FlightAirwaybillSQLCONSIGNEE_ADDRESS_2: TStringField;
    FlightAirwaybillSQLCONSIGNEE_ADDRESS_3: TStringField;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    namefld: TwwDBEdit;
    cadd1: TwwDBEdit;
    cpost: TwwDBEdit;
    ccity: TwwDBEdit;
    ccountry: TwwDBLookupCombo;
    cadd2: TwwDBEdit;
    cadd3: TwwDBEdit;
    ValueFLD: TwwDBComboBox;
    Label6: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    GroupBox4: TGroupBox;
    FA_ItemSQL: TIBCQuery;
    wwDBGrid1: TwwDBGrid;
    FA_ItemSRC: TIBCDataSource;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
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
    SelectTariffFLD: TwwDBEdit;
    SpeedButton2: TSpeedButton;
    Label24: TLabel;
    IncotermsSQL: TIBCQuery;
    IncotermsSQLCODE: TStringField;
    IncotermsSQLDESCRIPTION: TStringField;
    IncotermsSQLSERIAL_NUMBER: TIntegerField;
    ServiceCodeSQL: TIBCQuery;
    ServiceCodeSQLCODE: TStringField;
    ServiceCodeSQLDESCRIPTION: TStringField;
    ServiceCodeSQLSERIAL_NUMBER: TIntegerField;
    IncotermsFLD: TwwDBLookupCombo;
    ServiceCodeFLD: TwwDBLookupCombo;
    AccountNumbFD: TwwDBEdit;
    FlightAirwaybillSQLIS_HIGH: TStringField;
    FlightAirwaybillSQLSERVICE_CODE: TStringField;
    FlightAirwaybillSQLACCOUNT_NUMBER: TStringField;
    FlightAirwaybillSQLINCOTERMS: TStringField;
    Label20: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    CurrencySQL: TIBCQuery;
    CurrencySQLDESCRIPTION: TStringField;
    CurrencySQLCURRENCY_CODE: TStringField;
    CurrencySQLCOUNTRY_CODE: TIntegerField;
    CurrencySQLXML_CURRENCY: TStringField;
    CurrencyFLD: TwwDBLookupCombo;
    Label32: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label31: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label27: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label28: TLabel;
    wwDBEdit2: TwwDBEdit;
    FAIrwayBillParamSQL: TIBCQuery;
    ParamGroupItemSQL: TIBCQuery;
    FAIrwayBillParamSQLSERIAL_NUMBER: TIntegerField;
    FAIrwayBillParamSQLFK_FLIGHT_AIRWAYBILL: TIntegerField;
    FAIrwayBillParamSQLINFO_TYPE: TStringField;
    FAIrwayBillParamSQLINFO_VALUE: TStringField;
    FAirwayBillParamSRC: TIBCDataSource;
    GroupBox5: TGroupBox;
    ItineraryFLD: TwwDBLookupCombo;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    CountryGRD: TwwDBGrid;
    CountryLookupFLD: TwwDBLookupCombo;
    GroupBox6: TGroupBox;
    ParamGroupFLD: TwwDBLookupCombo;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwDBGrid2: TwwDBGrid;
    ParamGroupItemSQLSERIAL_NUMBER: TIntegerField;
    ParamGroupItemSQLINFO_TYPE: TStringField;
    ParamGroupItemSQLINFO_VALUE: TStringField;
    MakeSQL: TIBCQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure AirwayBillSQLAfterPost(DataSet: TDataSet);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure ItineraryFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FairwaybillCountrySQLPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ParamGroupFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
        procedure SelectCustomer(CustomerName:String);
        Function SelectTariff(TariffCode:String):boolean;
  public
    { Public declarations }
    GAction:string;
    GHawbId:String;
    GFlightOutSerial:integer;
    GFlightAIrSerial:Integer;
    procedure InsertAirwaybill(HawbId:String);
  end;

var
  H_FlightairwaybillFRM: TH_FlightairwaybillFRM;

implementation

uses MainForm,H_ScanAirwaybill, S_SelectCustomerx, S_SelectTariffY,
  KyriacosTypes;

{$R *.DFM}


Function TH_FlightairwaybillFRM.SelectTariff(TariffCode:String):boolean;
Var
   ItemData:TIBCQuery;
   TariffRecord:TTariffRecord;

begin

        S_SelectTariffYFRM.CodeFLD.Text:=TariffCode;
        S_SelectTariffYFRM.SelectTariffbyCode(TariffCode);
        S_SelectTariffYFRM.ShowModal;
        Result:= S_selectTariffYFRM.OutIsSelect;
        If Result then begin
                ItemData:=TIbCQuery(FA_ItemSRC.DataSet);
                TariffRecord:=S_SelectTariffYFRM.GTariffRecord;


                If (not ItemData.IsEmpty) and (ItemData.State=dsBrowse) then
                        ItemData.Edit;

                ItemData.FieldByName('TARIFF_CODE').VALUE:= TariffRecord.Code;
                ItemData.FieldByName('DESCRIPTION').value:= TariffRecord.UserKeyword;

end;


end;



{
//************************
procedure TJ_HawbItemFRM.SpeedButton1Click(Sender: TObject);
Var
        ItemData:TIBCQUery;
begin
        ItemData:=TIbCQuery(HawbItemSRC.DataSet);

iF SelectTariff Then begin

        //self.TariffCodeFLD.Text:=TariffRecord.Code;

        If ItemData.State=dsBrowse then
                ItemData.Edit;

     ItemData.FieldByName('FK_TARIFF_CODE').VALUE:= TariffRecord.Code;
     ItemData.FieldByName('DESCRIPTION').value:= TariffRecord.UserKeyword;
     ItemData.FieldByName('IMPORT_DUTY_RATE').value:= TariffRecord.IRate;
     ItemData.FieldByName('IMPORT_DUTY_RATE_QUANT').value:= TariffRecord.IPerQuantity;
     ItemData.FieldByName('IMPORT_DUTY_RATE_BASE').value:= TariffRecord.IBase;
     ItemData.FieldByName('trl_rATE').value:= TariffRecord.Trl;

end;

end;
}
//**************************

procedure TH_FlightairwaybillFRM.SelectCustomer(CustomerName:String);
Var
        CustomerRecord:TCustomerRecord;
   AirCDS:TDataset;
   AName:String;

begin
        AirCDS:=FlightAirwayBillSQL;
        aName:=Trim(CustomerName);

        S_SelectCustomerXFRM.NameFLD.Text:=aName;
        S_SelectCustomerXFRM.SelectCustomer(aName);
        S_SelectCustomerXFRM.ShowModal;
        CustomerRecord:=S_SelectCustomerxFRM.GCustomerRecord;

        if CustomerRecord.code>0 then begin
                If AirCDS.State=dsbrowse then
                        AirCDS.edit;

                AirCDS.FieldByName('FK_SENDER_SERIAL').value:=CustomerRecord.code;
                AirCDS.FieldByName('SENDER_ACCOUNT_NUMBER').value:=CustomerRecord.CustomerAccount;
                AirCDS.FieldByName('sender_NAME').value:=UpperCase(CustomerRecord.Name);
                AirCDS.FieldByName('sender_ADDRESS').value:=UpperCase(CustomerRecord.Address1);
                AirCDS.FieldByName('sender_ADDRESS_1').value:=UpperCase(CustomerRecord.Address1);
                AirCDS.FieldByName('sender_ADDRESS_2').value:=UpperCase(CustomerRecord.Address2);
                AirCDS.FieldByName('sender_ADDRESS_3').value:=UpperCase(CustomerRecord.Address3);
                AirCDS.FieldByName('sender_POST_CODE').value:=UpperCase(CustomerRecord.PostCode);
                AirCDS.FieldByName('DISTRICT_CODE').value:=CustomerRecord.District;
                AirCDS.FieldByName('SENDER_CITY').value:=CustomerRecord.DistrictName;

        end;



End;






procedure TH_FlightairwaybillFRM.FormActivate(Sender: TObject);
Var
        SerialNumber:Integer;
        Dataset:TDataset;
        I:Integer;

Begin

for i := 0 to (Self as TForm).ComponentCount-1 do begin
if (Self as TForm).Components[i] is TDataset then begin
        Dataset:= TDataset(Tform(Self).Components[i]);

        If not Dataset.Active then
                Dataset.Open
        else
                Dataset.Refresh;

        end;
end;


ItineraryFLD.Text:='';
Dataset:=FlightAirwaybillSQL;
If GAction='EDIT' then begin
        Dataset.close;
        (Dataset as TIBCQuery).parambyName('SerialNumber').Value:=GFlightAirSerial;
        Dataset.Open;
        Dataset.Edit;
        If  ItemsFLD.CanFocus then ItemsFLD.SetFocus;
end else if GAction='INSERT' then begin
        If not Dataset.active then dataset.open;
        Dataset.Insert;
        Dataset.FieldByName('hawb_id').Value:=GHawbId;
        Dataset.FieldByName('fk_flight_Out_serial').Value:=GFlightOUtSerial;
        If  ItemsFLD.CanFocus then ItemsFLD.SetFocus;
end;

ItinerarySQL.Refresh;


End;

procedure TH_FlightairwaybillFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if FlightAirwaybillSQL.State in [dsEdit,dsInsert] then begin
        self.CancelBTN.click;
end;

end;

procedure TH_FlightairwaybillFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;

procedure TH_FlightairwaybillFRM.wwDBNavigator1InsertClick(Sender: TObject);
begin
CountryGRD.SetActiveField('ORDER_POSITION');
End;

procedure TH_FlightairwaybillFRM.AirwayBillSQLAfterPost(DataSet: TDataSet);
Var
   TheBookMark:TBookmark;
begin
TheBookMark:=Dataset.GetBookmark;
Dataset.Close;
Dataset.Open;
Dataset.GotoBookmark(TheBookMark);
end;

procedure TH_FlightairwaybillFRM.AcceptBTNClick(Sender: TObject);
Var
Dataset:Tdataset;
begin
Dataset:=FlightAirwaybillSQL;
If Dataset.State in [dsInsert,dsEdit] then
        Dataset.Post;
H_flightAirwaybillFRM.ModalResult:=mrok;
Close;
end;

procedure TH_FlightairwaybillFRM.CancelBTNClick(Sender: TObject);
Var
Dataset:Tdataset;
begin
Dataset:=FlightAirwaybillSQL;
If Dataset.State in [dsInsert,dsEdit] then
        Dataset.Cancel;
ModalResult:=mrCancel;
close;

end;



procedure TH_FlightairwaybillFRM.InsertAirwaybill(HawbId:String);
begin

End;


procedure TH_FlightairwaybillFRM.ItineraryFLDCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin

If FlightAirwaybillSQL.State=dsInsert then begin
        FlightAirwaybillSQL.Post;

end;

With FAirwayBillCountrySQL do begin
        first;
        While not Eof do begin
                delete;
        end;
end;


If Trim(FlightAirwaybillSQL.FieldByName('SENDER_COUNTRY_CODE').AsString)>'' then begin
        FAirwayBillCountrySQL.Insert;
        FAirwayBillCountrySQL.FieldByName('COUNTRY_CODE').Value:=FlightAirwaybillSQL.FieldBYName('sender_country_code').AsString;
        FAirwayBillCountrySQL.FieldByName('Order_position').Value:=0;
        FAirwayBillCountrySQL.Post;
end;
With ItineraryCountrySQL do begin
        first;
        While not Eof do begin
                FAirwayBillCountrySQL.Insert;
                FAirwayBillCountrySQL.FieldByName('COUNTRY_CODE').Value:=FieldBYName('country_code').AsString;
                FAirwayBillCountrySQL.FieldByName('Order_position').Value:=FieldBYName('Order_position').AsInteger;
                FAirwayBillCountrySQL.Post;
                next;

        end;
If Trim(FlightAirwaybillSQL.FieldByName('consignee_country_code').AsString)>'' then begin
        FAirwayBillCountrySQL.Insert;
        FAirwayBillCountrySQL.FieldByName('COUNTRY_CODE').Value:=FlightAirwaybillSQL.FieldBYName('consignee_country_code').AsString;
        FAirwayBillCountrySQL.FieldByName('Order_position').Value:=100;
        FAirwayBillCountrySQL.Post;
end;

end;



End;
procedure TH_FlightairwaybillFRM.FairwaybillCountrySQLPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin

ShowMessage('Cannot Insert Duplicate Country');
Action:=daabort;

end;

procedure TH_FlightairwaybillFRM.SpeedButton2Click(Sender: TObject);
Var
TariffCode:String;

begin
       TariffCode:=Trim(SelectTariffFLD.Text);
        SelectTariff(TariffCode);

end;

procedure TH_FlightairwaybillFRM.SpeedButton1Click(Sender: TObject);
begin
SElectCustomer(self.SelectNameFLD.Text);
end;

procedure TH_FlightairwaybillFRM.ParamGroupFLDCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
Var
InfoType:String;
AirSerial:Integer;
IsInserted:boolean;
begin


If FlightAirwaybillSQL.State=dsInsert then begin
        FlightAirwaybillSQL.Post;
end;
        AirSerial:=FlightAirwaybillSQL.FieldByName('SERIAL_NUMBER').AsInteger;
        INfoType:=LookupTable.FieldByName('INFO_TYPE').AsString;

          With MakeSQL do begin
                Close;
                ReadONly:=True;
                SQL.Clear;
                SQl.Add(
                'Select info_type from flight_airwaybill_parameter where FK_FLIGHT_AIRWAYBILL= :AirSerial '
                +' and info_type=:InfoType');
                ParamByName('AirSerial').value:=AirSerial;
                ParamByName('InfoType').value:=InfoType;
                if not prepared then prepare;
                Open;
                IsInserted:=not  MakeSQL.IsEmpty;
                close;
          end;


        if not IsInserted then begin
                FAirwayBillParamSQL.Insert;
                FAirwayBillParamSQL.FieldByName('INFO_TYPE').Value:=LookupTable.FieldBYName('INFO_TYPE').AsString;
                FAirwayBillParamSQL.FieldByName('INFO_VALUE').Value:=LookupTable.FieldBYName('INFO_VALUE').AsString;
                FAirwayBillParamSQL.Post;
        end;


End;

end.
