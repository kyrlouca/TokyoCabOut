unit H_Airwaybill2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator, DBAccess,
  Data.DB, vcl.wwclearpanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  vcl.wwdblook, vcl.Wwdotdot, vcl.Wwdbcomb, vcl.Wwdbedit, Vcl.ExtCtrls,KyriacosTYpes,
  RzPanel;

type
  TH_airwaybill2FRM = class(TForm)
    TitlePNL: TPanel;
    Panel3: TPanel;
    AirwaybillCDS: TIBCDataSource;
    AirwayBillSQL: TIBCQuery;
    UpdateTrans: TIBCTransaction;
    AirwayBillSQLSERIAL_NUMBER: TIntegerField;
    AirwayBillSQLSEQUENCE_NUMBER: TIntegerField;
    AirwayBillSQLHAWB_ID: TStringField;
    AirwayBillSQLSHIPMENT_ORIGIN_AREA: TStringField;
    AirwayBillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    AirwayBillSQLPIECES: TIntegerField;
    AirwayBillSQLWEIGHT: TFloatField;
    AirwayBillSQLDESCRIPTION: TStringField;
    AirwayBillSQLPIECES_S: TStringField;
    AirwayBillSQLSENDER_NAME: TStringField;
    AirwayBillSQLSENDER_ADDRESS: TStringField;
    AirwayBillSQLSENDER_POST_CODE: TStringField;
    AirwayBillSQLSENDER_CITY: TStringField;
    AirwayBillSQLSENDER_COUNTRY_CODE: TStringField;
    AirwayBillSQLCONSIGNEE_NAME: TStringField;
    AirwayBillSQLCONSIGNEE_ADDRESS: TStringField;
    AirwayBillSQLCONSIGNEE_POST_CODE: TStringField;
    AirwayBillSQLCONSIGNEE_CITY: TStringField;
    AirwayBillSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    AirwayBillSQLFK_ITINERARY_SERIAL: TIntegerField;
    AirwayBillSQLPACKAGES_COUNT: TIntegerField;
    AirwayBillSQLITEMS_COUNT: TIntegerField;
    AirwayBillSQLPAYMENT_METHOD: TStringField;
    AirwayBillSQLIS_HIGH: TStringField;
    AirwayBillSQLCUSTOMS_VALUE: TFloatField;
    AirwayBillSQLCURRENCY: TStringField;
    AirwayBillSQLCURRENCY_RATE: TFloatField;
    AirwayBillSQLSENDER_ADDRESS_1: TStringField;
    AirwayBillSQLSENDER_ADDRESS_2: TStringField;
    AirwayBillSQLSENDER_ADDRESS_3: TStringField;
    AirwayBillSQLCONSIGNEE_ADDRESS_1: TStringField;
    AirwayBillSQLCONSIGNEE_ADDRESS_2: TStringField;
    AirwayBillSQLCONSIGNEE_ADDRESS_3: TStringField;
    AirwayBillSQLSENDER_DEVICE_TYPE: TStringField;
    AirwayBillSQLSENDER_DEVICE_DETAILS: TStringField;
    AirwayBillSQLCONSIGNEE_DEVICE_TYPE: TStringField;
    AirwayBillSQLCONSIGNEE_DEVICE_DETAILS: TStringField;
    AirwayBillSQLVALUE_TYPE: TStringField;
    AirwayBillSQLINCOTERMS: TStringField;
    SenderCountrySQL: TIBCQuery;
    SenderCountrySQLCODE_2: TStringField;
    SenderCountrySQLNAME: TStringField;
    SenderCountrySRC: TIBCDataSource;
    AirItemSQL: TIBCQuery;
    AirItemSQLSEQUENCE: TIntegerField;
    AirItemSQLWEIGHT: TFloatField;
    AirItemSQLPIECES: TIntegerField;
    AirItemSQLDESCRIPTION: TStringField;
    AirItemSQLSERIAL_NUMBER: TIntegerField;
    AirItemSQLFK_AIRWAYBILL_SERIAL: TIntegerField;
    AirItemSQLTARIFF_CODE: TStringField;
    AirItemSQLAMOUNT: TFloatField;
    AirItemSQLCURRENCY_RATE: TFloatField;
    AirItemSQLCURRENCY: TStringField;
    AirItemSQLUNIT_OF_MEASURE: TStringField;
    AirItemSRC: TIBCDataSource;
    IncotermsSQL: TIBCQuery;
    IncotermsSQLSERIAL_NUMBER: TIntegerField;
    IncotermsSQLCODE: TStringField;
    IncotermsSQLDESCRIPTION: TStringField;
    ServiceCodeSQL: TIBCQuery;
    ServiceCodeSQLSERIAL_NUMBER: TIntegerField;
    ServiceCodeSQLCODE: TStringField;
    ServiceCodeSQLDESCRIPTION: TStringField;
    AirwayBillSQLSERVICE_CODE: TStringField;
    AirwayBillSQLACCOUNT_NUMBER: TStringField;
    CurrencySQL: TIBCQuery;
    CurrencySQLDESCRIPTION: TStringField;
    CurrencySQLCURRENCY_CODE: TStringField;
    CurrencySQLCOUNTRY_CODE: TIntegerField;
    CurrencySQLXML_CURRENCY: TStringField;
    RzPanel1: TRzPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    wwDBEdit1: TwwDBEdit;
    HawbFLD: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    SequenceFLD: TwwDBEdit;
    OriginFLD: TwwDBEdit;
    WeightFLD: TwwDBEdit;
    DescriptionFLD: TwwDBEdit;
    PiecesFLD: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    ValueFLD: TwwDBComboBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    Label24: TLabel;
    Label25: TLabel;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    SelectNameFLD: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    CnameFLD: TwwDBEdit;
    Cadd1FLD: TwwDBEdit;
    CpostFLD: TwwDBEdit;
    CCityFLD: TwwDBEdit;
    CAdd2FLd: TwwDBEdit;
    CAdd3FLD: TwwDBEdit;
    CCountryFLD: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    CurrencyFLD: TwwDBLookupCombo;
    Panel4: TRzPanel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AirwayBillSQLAfterInsert(DataSet: TDataSet);
    procedure GroupBox2Click(Sender: TObject);
  private
    { Private declarations }
        procedure SelectCustomer(CustomerName:String);
  public
    { Public declarations }
    GAction:string;
    GInSerial:Integer;
    GOutSerial:Integer;
    GMovementSerial:Integer;
    GDocumentMasterSerial:Integer;
  end;

var
  H_airwaybill2FRM: TH_airwaybill2FRM;

implementation

uses MainForm,H_Movement, H_FlightAirwaybill, S_SelectCustomerx;

{$R *.DFM}

{
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



procedure TH_airwaybill2FRM.SelectCustomer(CustomerName:String);
Var
        CustomerRecord:TktCustomerRecord;
   AirCDS:TDataset;
   AName:String;

begin
        AirCDS:=AirwayBillSQL;
        aName:=Trim(CustomerName);

        S_SelectCustomerXFRM.NameFLD.Text:=aName;
        S_SelectCustomerXFRM.SelectCustomer(aName);
        S_SelectCustomerXFRM.ShowModal;
        CustomerRecord:=S_SelectCustomerxFRM.GCustomerRecord;

        if CustomerRecord.code>0 then begin
                If AirCDS.State=dsbrowse then
                        AirCDS.edit;

                //AirCDS.FieldByName('FK_SENDER_SERIAL').value:=CustomerRecord.code;
                //AirCDS.FieldByName('SENDER_ACCOUNT_NUMBER').value:=CustomerRecord.CustomerAccount;
                AirCDS.FieldByName('sender_NAME').value:=UpperCase(CustomerRecord.Name);
                AirCDS.FieldByName('sender_ADDRESS').value:=UpperCase(CustomerRecord.Address1);
                AirCDS.FieldByName('sender_ADDRESS_1').value:=UpperCase(CustomerRecord.Address1);
                AirCDS.FieldByName('sender_ADDRESS_2').value:=UpperCase(CustomerRecord.Address2);
                AirCDS.FieldByName('sender_ADDRESS_3').value:=UpperCase(CustomerRecord.Address3);
                AirCDS.FieldByName('sender_POST_CODE').value:=UpperCase(CustomerRecord.PostCode);

                AirCDS.FieldByName('SENDER_CITY').value:=UpperCase(CustomerRecord.District);

        end;



End;

procedure TH_airwaybill2FRM.FormActivate(Sender: TObject);
Var
        Dataset:Tdataset;

Begin

If SenderCountrySQL.Active then begin
        SenderCountrySQL.Close;
end;
        SenderCountrySQL.Open;

with IncotermsSQL do begin
If Active then begin
   Close;
end;
   Open;
end;

with ServiceCodeSQL do begin
If Active then begin
   Close;
end;
   Open;
end;

with CurrencySQL do begin
If Active then begin
   Close;
end;
   Open;
end;


Dataset:=AirwaybillCDS.DataSet;
If GAction='EDIT' then begin
        TitlePNL.Caption:='Edit Airwaybill';
        Dataset.close;
        (Dataset as TIBCQuery).parambyName('SerialNumber').Value:=GInSerial;
        Dataset.Open;
        AirItemSQL.Close;
        AirItemSQL.OPen;
        Dataset.Edit;
        If  SequenceFLD.CanFocus then SequenceFLD.SetFocus;
end else if GAction='INSERT' then begin
        TitlePNL.Caption:='Insert AIrwaybill';
        If not Dataset.active then dataset.open;
        Dataset.Insert;
//        Dataset.FieldByName('fk_document_master_serial').Value:=GDocumentMasterSerial;
//        Dataset.FieldByName('fk_movement_serial').Value:=GMovementSerial;
        AirItemSQL.Close;
        AirItemSQL.OPen;
        If  SequenceFLD.CanFocus then SequenceFLD.SetFocus;
end;





End;

procedure TH_airwaybill2FRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TH_airwaybill2FRM.wwDBNavigator1InsertClick(
  Sender: TObject);
begin
  if AirwayBillSQL.State in [dsInsert,dsEdit] then begin
    AirwayBillSQL.Post;
    if AirwayBillSQL.IsEmpty then
      abort;
  end;

//  If CodeFLD.CanFocus then
//   CodeFLD.SetFocus;
//  end;

End;

procedure TH_airwaybill2FRM.AcceptBTNClick(Sender: TObject);
Var
Dataset:Tdataset;
begin
Dataset:=AirwaybillCDS.DataSet;
If Dataset.State in [dsInsert,dsEdit] then
        Dataset.Post;
//UpdateTransaction.Commit;
H_flightAirwaybillFRM.ModalResult:=mrok;
Close;

end;

procedure TH_airwaybill2FRM.CancelBTNClick(Sender: TObject);
Var
Dataset:Tdataset;
begin
Dataset:=AirwaybillCDS.DataSet;
If Dataset.State in [dsInsert,dsEdit] then
        Dataset.Cancel;
//UpdateTransaction.Rollback;
ModalResult:=mrCancel;
close;


end;





procedure TH_airwaybill2FRM.SpeedButton1Click(Sender: TObject);
Var
        CustomerName:String;
begin
SElectCustomer(self.SelectNameFLD.Text);

end;

procedure TH_airwaybill2FRM.AirwayBillSQLAfterInsert(DataSet: TDataSet);
begin
GOutSerial:=Dataset.FieldbyName('Serial_number').AsInteger;
end;





procedure TH_airwaybill2FRM.GroupBox2Click(Sender: TObject);
begin
SElectCustomer(self.SelectNameFLD.Text);
end;

end.
