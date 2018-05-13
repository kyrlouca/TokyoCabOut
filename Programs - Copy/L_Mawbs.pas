unit L_Mawbs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  Wwquery, DASQLMonitor, IBCSQLMonitor, DBAccess, Db;

type
  TL_MawbsFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    DocumentMasterSQL: TIBCQuery;
    AirwayBillSQL: TIBCQuery;
    DocumentMasterSQLSERIAL_NUMBER: TIntegerField;
    DocumentMasterSQLTRANSPORT_DOC: TStringField;
    DocumentMasterSQLSHIPMENTS: TIntegerField;
    DocumentMasterSQLPIECES: TIntegerField;
    DocumentMasterSQLWEIGHT: TFloatField;
    DocumentMasterSQLSHIPMENTS_INTERNATIONAL: TIntegerField;
    DocumentMasterSQLSHIPMENTS_TRANS: TIntegerField;
    DocumentMasterSQLSHIPMENTS_DOMESTIC: TIntegerField;
    DocumentMasterSQLAIRWAYBILLS_MISSING: TIntegerField;
    DocumentMasterSQLFK_MOVEMENT_SERIAL: TIntegerField;
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
    Panel5: TPanel;
    wwDBGrid1: TwwDBGrid;
    Button1: TButton;
    Panel2: TPanel;
    ByMawbsFLD: TwwDBEdit;
    FindHawbBTN: TSpeedButton;
    Label1: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    AirGRD: TwwDBGrid;
    DeleteSelectedBTN: TBitBtn;
    BitBtn1: TBitBtn;
    AirwayBillSQLPIECES_S: TStringField;
    InsertBTN: TBitBtn;
    UpdateMovementTrans: TIBCTransaction;
    UpdateDocumentTrans: TIBCTransaction;
    UpdateairwayBillTrans: TIBCTransaction;
    DeleteAirwaybillItemsSQL: TIBCSQL;
    DocumentMasterCDS: TIBCDataSource;
    AirwaybillCDS: TIBCDataSource;
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
    DocumentMasterSQLMTD_KEY: TStringField;
    AirwayBillSQLITEMS_COUNT: TIntegerField;
    AirwayBillSQLPAYMENT_METHOD: TStringField;
    DocumentMasterSQLDATE_CREATED: TDateTimeField;
    IBCQuery1: TIBCQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MovementSQLBeforeEdit(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure DeleteSelectedBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AirGRDDblClick(Sender: TObject);
    procedure InsertBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        procedure DeleteOneAirwaybill(AirSerial:Integer);
  end;

var
  L_MawbsFRM: TL_MawbsFRM;

implementation

uses MainForm, H_Airwaybill, H_Airwaybill2;

{$R *.DFM}

procedure TL_MawbsFRM.FormActivate(Sender: TObject);
begin
If not DocumentMasterSQL.Active then
        DocumentMasterSQL.Open
else
        DocumentMasterSQL.Refresh;

If not AIrwayBillSQL.Active then
        AIrwayBillSQL.Open
else
        AIrwayBillSQL.Refresh;

end;

procedure TL_MawbsFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TL_MawbsFRM.MovementSQLBeforeEdit(
  DataSet: TDataSet);
begin
end;
{
   Dataset.FieldByName('Code').ReadOnly:=true;
}

procedure TL_MawbsFRM.Button1Click(Sender: TObject);
begin
DocumentMasterSQL.Refresh;
AIrwayBillSQL.Refresh;

end;

procedure TL_MawbsFRM.DeleteSelectedBTNClick(Sender: TObject);
Var
I: integer;
SelectedCount:Integer;
AirSerial:Integer;
TheDataset:TDataset;
begin

     TheDataset:= AirGRD.datasource.dataset;
     SelectedCount:=  AirGRD.SelectedList.Count;

     //DisableControls; don't do it , because children cannot follow
     for i:= 0 to SelectedCount-1 do begin

        TheDataset.GotoBookmark(AirGRD.SelectedList.items[i]);
        TheDataset.Freebookmark(AirGRD.SelectedList.items[i]);
        AirSerial:=TheDataset.FieldbyName('serial_Number').AsInteger;
        DeleteOneAIrwaybill(AirSerial);
     end;
     AirGRD.SelectedList.Clear;

End;

procedure TL_MawbsFRM.BitBtn1Click(Sender: TObject);
begin
     AirGRD.UnselectAll;
     AirGRD.SelectedList.Clear;


end;

procedure TL_MawbsFRM.DeleteOneAirwaybill(AirSerial:Integer);
Begin


        AirwaybillSQL.AutoCommit:=false;

        AirwayBillSQL.UpdateTransaction.StartTransaction;

{        AirwaybillSQL.Options.AutoPrepare:=false;
        If not AirwayBillSQL.Prepared then begin
                AirwayBillSQL.Prepare;
        end;

        If not DeleteAirwayBillItemsSQL.Prepared then begin
                DeleteAirwayBillItemsSQL.Prepare;
        end;
}
        DeleteAirwayBillItemsSQL.ParamByName('AirwayBillSerial').Value:=AirSErial;
        DeleteAirwayBillItemsSQL.Execute;
        AirwayBillSQL.delete;
//       AirwayBillSQL.UpdateTransaction.RollbackRetaining;
       AirwayBillSQL.UpdateTransaction.Commit;
        AirwaybillSQL.AutoCommit:=True;

End;

procedure TL_MawbsFRM.Button2Click(Sender: TObject);
begin
        if UpdateAirwaybillTrans.Active then begin
                ShowMessage('active');
        end;

end;

procedure TL_MawbsFRM.AirGRDDblClick(Sender: TObject);
Var
        AirSerial:Integer;
begin
        AIrSerial:=AirGRD.DataSource.DataSet.fieldbyName('serial_number').AsInteger;
        H_airwaybill2FRM.GAction:='EDIT';
        H_airwaybill2FRM.GInSerial:=aiRsERIAL;
        H_airwaybill2FRM.SHowmodal;
        AirwaybillSQL.Refresh;
        AirwaybillSQL.Locate('SERIAL_NUMBER',AirSerial,[]);




end;

procedure TL_MawbsFRM.InsertBTNClick(Sender: TObject);
Var
        AirSerial:Integer;
begin


        H_airwaybillFRM.GAction:='INSERT';

        H_AirwaybillFRM.GMovementSerial:=DocumentMasterSQL.FieldbyName('FK_MOVEMENT_SERIAL').AsInteger;
        H_AirwaybillFRM.GDocumentSerial:=DocumentMasterSQL.fieldbyName('serial_number').AsInteger;

        H_airwaybillFRM.SHowmodal;
        AirwaybillSQL.Refresh;
        AirwaybillSQL.Open;

//        AIrSerial:=H_airwaybillFRM.GAirSerial;
//        AirwaybillSQL.Locate('SERIAL_NUMBER',AirSerial,[]);

end;

END.

