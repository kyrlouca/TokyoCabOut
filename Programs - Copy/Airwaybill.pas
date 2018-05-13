unit Airwaybill;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  Wwquery, wwstorep, Db, DBAccess;

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
    AirwayBillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    AirwayBillSQLFK_MOVEMENT_SERIAL: TIntegerField;
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
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GAction:string;
    GInSerial:Integer;
    GMovementSerial:Integer;
    GDocumentMasterSerial:Integer;
  end;

var
  H_airwaybillFRM: TH_airwaybillFRM;

implementation

uses MainForm,H_Movement, H_FlightAirwaybill;

{$R *.DFM}

procedure TH_airwaybillFRM.FormActivate(Sender: TObject);
Var
        Dataset:Tdataset;

Begin
Dataset:=AirwaybillCDS.DataSet;
If GAction='EDIT' then begin
        TitlePNL.Caption:='Edit Airwaybill';
        Dataset.close;
        (Dataset as TIBCQuery).parambyName('SerialNumber').Value:=GInSerial;
        Dataset.Open;
        Dataset.Edit;
        If  SequenceFLD.CanFocus then SequenceFLD.SetFocus;
end else if GAction='INSERT' then begin
        TitlePNL.Caption:='Insert AIrwaybill';
        If not Dataset.active then dataset.open;
        Dataset.Insert;
        Dataset.FieldByName('fk_document_master_serial').Value:=GDocumentMasterSerial;
        Dataset.FieldByName('fk_movement_serial').Value:=GMovementSerial;
        If  SequenceFLD.CanFocus then SequenceFLD.SetFocus;
end;





End;

procedure TH_airwaybillFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TH_airwaybillFRM.wwDBNavigator1InsertClick(
  Sender: TObject);
begin
{If CodeFLD.CanFocus then
   CodeFLD.SetFocus;
end;
}
End;

procedure TH_airwaybillFRM.AcceptBTNClick(Sender: TObject);
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

procedure TH_airwaybillFRM.CancelBTNClick(Sender: TObject);
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





end.
