unit L_FlightOutList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  DBAccess, Data.DB, vcl.Wwkeycb, vcl.wwdblook;

type
  TL_FlightOutListFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    FlightOutSQL: TIBCQuery;
    Label5: TLabel;
    Label9: TLabel;
    FlightOutSQLSERIAL_NUMBER: TIntegerField;
    FlightOutSQLMAWB: TStringField;
    FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightOutSQLDATE_DEPART: TDateTimeField;
    FlightOutSQLREMARKS: TStringField;
    FlightOutSQLDESTINATION_AREA: TStringField;
    FlightOutSQLDESTINATION_COUNTRY: TStringField;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    FlightOutGRD: TwwDBGrid;
    DeleteSelectedBTN: TBitBtn;
    InsertBTN: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    FlightOutCDS: TIBCDataSource;
    FlightTableSQL: TIBCQuery;
    FlightTableSQLFLIGHT_NAME: TStringField;
    FlightTableSQLDESTINATION_COUNTRY_CODE: TStringField;
    FlightTableSQLSERIAL_NUMBER: TIntegerField;
    FlightOutSQLFK_FLIGHT_TABLE: TIntegerField;
    FlightTableFLD: TwwDBLookupCombo;
    trans1: TIBCTransaction;
    DeleteFlightCountrySQL: TIBCQuery;
    wwIncrementalSearch1: TwwIncrementalSearch;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FlightOutGRDDblClick(Sender: TObject);
    procedure InsertBTNClick(Sender: TObject);
    procedure FlightBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DeleteSelectedBTNClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FlightOutSQLDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
    GAction:string;
    GAirSerial:Integer;
    GMovementSerial:Integer;
    GDocumentMasterSerial:Integer;
    procedure EditFlightOUt(SerialNumber:Integer);
    procedure InsertFlightOUt(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);


  end;

var
  L_FlightOutListFRM: TL_FlightOutListFRM;

implementation

uses MainForm, H_flightOut, H_scanAirwaybill,
  H_ScanAirwaybillNew;

{$R *.DFM}

procedure TL_FlightOutListFRM.FormActivate(Sender: TObject);

Begin
//If ByMawbsFLD.CanFocus then ByMawbFLD.SetFocus;
FlightOutSQL.Open;


If GAction='EDIT' then begin
EditFlightOut(GAirSerial);

end else if GAction='INSERT' then begin
InsertFlightOUt(GAirSerial,GMovementSerial,GDocumentMasterSerial);

end;

End;

procedure TL_FlightOutListFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FlightOutSQL.Close;

end;

procedure TL_FlightOutListFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;


procedure TL_FlightOutListFRM.EditFlightOut(SerialNumber:Integer);
begin
with FlightOutSQL do begin
        close;
        If not prepared then Prepare;
        ParamByName('serialNumber').value:= SerialNumber;
        Open;
end;
End;

procedure TL_FlightOutListFRM.InsertFlightOut(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
begin
with  FlightOutSQL do begin
        close;
        If not prepared then Prepare;
        Open;
        Insert;
        SerialNumber:=FieldbyName('serial_number').AsInteger;
end;

End;


procedure TL_FlightOutListFRM.FlightOutGRDDblClick(Sender: TObject);
Var
        FlightSerial:Integer;
begin
        FlightSerial:=FlightOutGRD.DataSource.DataSet.fieldbyName('serial_number').AsInteger;
        H_FlightOutFRM.GAction:='EDIT';
        H_FlightOutFRM.GFlightOutSerial:=FlightSerial;
        H_FlightOutFRM.SHowmodal;
        FlightOutSQL.Close;
        FlightOutSQL.Open;
        FlightOutSQL.Locate('SERIAL_NUMBER',FlightSerial,[]);

end;

procedure TL_FlightOutListFRM.InsertBTNClick(Sender: TObject);
Var
        FlightOutSerial:Integer;
begin
        H_FlightOutFRM.GAction:='INSERT';
        H_FlightOutFRM.SHowmodal;
        FlightOUtSQL.Refresh;
End;



procedure TL_FlightOutListFRM.FlightBTNClick(Sender: TObject);
Var
FlightOutSerial:Integer;
begin

FlightOutSerial:=FLightOutGRD.DataSource.DataSet.FieldbyName('serial_number').AsInteger;

{
H_ScanAirwaybillFRM.GAction:='EDIT';
H_ScanAirwaybillFRM.GFlightOutSerial:=FlightOutSerial;
H_ScanAirwaybillFRM.SearchFlightOutFLD.Text:=FLightOutGRD.DataSource.DataSet.FieldbyName('Mawb').AsString;

H_ScanAirwaybillFRM.showmodal;
}

H_ScanAirwaibillNewFRM.GAction:='EDIT';
H_ScanAirwaibillNewFRM.GFlightOutSerial:=FlightOutSerial;
H_ScanAirwaibillNewFRM.SearchFlightOutFLD.Text:=FLightOutGRD.DataSource.DataSet.FieldbyName('Mawb').AsString;

H_ScanAirwaibillNewFRM.showmodal;

end;

procedure TL_FlightOutListFRM.BitBtn1Click(Sender: TObject);
Var
        FlightOutSerial:Integer;
begin
        FlightOutSerial:=FlightOutGRD.DataSource.DataSet.fieldbyName('serial_number').AsInteger;
        H_FlightOutFRM.GAction:='EDIT';
        H_FlightOutFRM.GFlightOutSerial:=FlightOutSerial;
        H_FlightOutFRM.SHowmodal;
        FlightOutSQL.Refresh;
        FlightOutSQL.Locate('SERIAL_NUMBER',FlightOutSerial,[]);

end;

procedure TL_FlightOutListFRM.DeleteSelectedBTNClick(Sender: TObject);
Var
        Serial:Integer;
begin

FlightOUtSQL.AutoCommit:=false;
DeleteFlightCountrySQL.AutoCommit:=false;

        Trans1.StartTransaction;
        Serial:=FlightOUtSQL.FieldByName('serial_number').AsInteger;
        DeleteFlightCountrySQL.parambyName('SerialNumber').Value:=Serial;

        DeleteFlightCountrySQL.ExecSQL;
        FlightOutSQL.Delete;

        trans1.Commit;

        FlightOutSQL.AutoCommit:=true;
        DeleteFlightCOuntrySQL.AutoCommit:=true;


end;

procedure TL_FlightOutListFRM.Button1Click(Sender: TObject);
begin
If FlightOutSQL.UpdateTransaction.Active then
        ShowMEssage('act');
end;

procedure TL_FlightOutListFRM.FlightOutSQLDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin

ShowMessage('Cannot Delete Flight when it has Airwaybills');
Trans1.Rollback;
Action:=daabort;

end;

END.
