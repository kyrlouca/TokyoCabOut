unit H_airwaybill;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator, DBAccess,
  Data.DB, vcl.Wwdbedit, Vcl.Buttons, Vcl.ExtCtrls;

type
  TH_airwaybillFRM = class(TForm)
    TitlePNL: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    AirwaybillCDS: TIBCDataSource;
    GroupBox1: TGroupBox;
    wwDBEdit1: TwwDBEdit;
    HawbFLD: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    SequenceFLD: TwwDBEdit;
    OriginFLD: TwwDBEdit;
    WeightFLD: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DescriptionFLD: TwwDBEdit;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    PiecesFLD: TwwDBEdit;
    GroupBox2: TGroupBox;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    wwDBEdit13: TwwDBEdit;
    Label25: TLabel;
    wwDBEdit14: TwwDBEdit;
    AirwaybillSQL: TIBCQuery;
    UpdateTransaction: TIBCTransaction;
    AirwaybillSQLSERIAL_NUMBER: TIntegerField;
    AirwaybillSQLSEQUENCE_NUMBER: TIntegerField;
    AirwaybillSQLHAWB_ID: TStringField;
    AirwaybillSQLSHIPMENT_ORIGIN_AREA: TStringField;
    AirwaybillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    AirwaybillSQLPIECES: TIntegerField;
    AirwaybillSQLWEIGHT: TFloatField;
    AirwaybillSQLDESCRIPTION: TStringField;
    AirwaybillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    AirwaybillSQLFK_MOVEMENT_SERIAL: TIntegerField;
    AirwaybillSQLPIECES_S: TStringField;
    AirwaybillSQLSENDER_NAME: TStringField;
    AirwaybillSQLSENDER_ADDRESS: TStringField;
    AirwaybillSQLSENDER_POST_CODE: TStringField;
    AirwaybillSQLSENDER_CITY: TStringField;
    AirwaybillSQLSENDER_COUNTRY_CODE: TStringField;
    AirwaybillSQLCONSIGNEE_NAME: TStringField;
    AirwaybillSQLCONSIGNEE_ADDRESS: TStringField;
    AirwaybillSQLCONSIGNEE_POST_CODE: TStringField;
    AirwaybillSQLCONSIGNEE_CITY: TStringField;
    AirwaybillSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    AirwaybillSQLFK_ITINERARY_SERIAL: TIntegerField;
    AirwaybillSQLPACKAGES_COUNT: TIntegerField;
    AirwaybillSQLITEMS_COUNT: TIntegerField;
    AirwaybillSQLPAYMENT_METHOD: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    GAction:string;
    GAirSerial:Integer;
    GMovementSerial:Integer;
    GDocumentSerial:Integer;
    procedure EditAirwaybill(SerialNumber:Integer);
    procedure InsertAirwaybill(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
  end;

var
  H_airwaybillFRM: TH_airwaybillFRM;

implementation

uses MainForm;

{$R *.DFM}

procedure TH_airwaybillFRM.FormActivate(Sender: TObject);

Var
Dataset:TDataset;
Begin

//ItineraryFLD.Text:='';
Dataset:=AirwaybillCDS.DataSet;
If GAction='EDIT' then begin
        TitlePNL.Caption:='Edit AIrwaybill';
        IF Dataset.Active then
                Dataset.close;
        (Dataset as TIBCQuery).parambyName('SerialNumber').Value:=GAirSerial;
        Dataset.Open;
        Dataset.Edit;
        If  SequenceFLD.CanFocus then SequenceFLD.SetFocus;
end else if GAction='INSERT' then begin
        TitlePNL.Caption:='Insert Flight Out';
        If not Dataset.active then dataset.open;
        Dataset.Insert;
        Dataset.FieldByName('fk_document_master_serial').Value:=GDocumentSerial;
        Dataset.FieldByName('fk_movement_serial').Value:=GMovementSerial;
        If  SequenceFLD.CanFocus then SequenceFLD.SetFocus;
end;

End;

procedure TH_airwaybillFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TH_airwaybillFRM.AcceptBTNClick(Sender: TObject);
Var
Dataset:Tdataset;
begin
Dataset:=AirwaybillSQL;
If Dataset.State in [dsInsert,dsEdit] then
        Dataset.Post;
//GFLightOutSerial:=Dataset.fieldbyName('serial_number').AsInteger;
ModalResult:=mrok;
Close;


end;

procedure TH_airwaybillFRM.CancelBTNClick(Sender: TObject);
Var
Dataset:Tdataset;
begin
Dataset:=AirwaybillSQL;
If Dataset.State in [dsInsert,dsEdit] then
        Dataset.Cancel;
ModalResult:=mrCancel;
close;

end;


procedure TH_airwaybillFRM.EditAirwaybill(SerialNumber:Integer);
begin
End;

procedure TH_airwaybillFRM.InsertAirwaybill(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
begin

End;



procedure TH_airwaybillFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
self.CancelBTN.click;

end;

end.
