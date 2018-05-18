unit H_FlightAirItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox;
type
  TH_FlightAirItemFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    wwIncrementalSearch1: TwwIncrementalSearch;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    TableSQL: TIBCQuery;
    RzPanel5: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label14: TLabel;
    Label15: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    Label16: TLabel;
    wwDBEdit13: TwwDBEdit;
    Panel6: TRzPanel;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLSEQUENCE: TIntegerField;
    TableSQLWEIGHT: TFloatField;
    TableSQLPIECES: TIntegerField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLTARIFF_CODE: TStringField;
    TableSQLAMOUNT: TFloatField;
    TableSQLCURRENCY_RATE: TFloatField;
    TableSQLCURRENCY: TStringField;
    TableSQLFK_FA_SERIAL: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }

    IN_ACTION:String;
    in_INSTRUCTOR_SERIAL:Integer;

  end;

var
  H_FlightAirItemFRM: TH_FlightAirItemFRM;

implementation

uses    G_generalProcs, MainForm;


{$R *.DFM}

procedure TH_FlightAirItemFRM.BitBtn2Click(Sender: TObject);
begin
if TableSQL.State in [dsEdit,dsInsert] then
  TableSQL.Post;
end;

procedure TH_FlightAirItemFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TH_FlightAirItemFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('status_active').Value:='Y';
  Dataset.FieldByName('CERTIFIED_ANAD').Value:='N';
end;

procedure TH_FlightAirItemFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TH_FlightAirItemFRM.FormActivate(Sender: TObject);
begin
if IN_ACTION='INSERT' then begin
   ksOpenTables([TableSQL]);
   TableSQL.Insert;
end else if IN_ACTION='EDIT' then begin
   TableSQL.Close;
   TableSQL.RestoreSQL;
   tABLESQL.AddWhere('serial_number = :serial');
   TableSQL.ParamByName('serial').Value:=in_INSTRUCTOR_SERIAL;
   TableSQL.Open;
end else if IN_ACTION='DISPLAY' then begin
   TableSQL.Close;
   TableSQL.RestoreSQL;
   tABLESQL.AddWhere('serial_number = :serial');
   TableSQL.ParamByName('serial').Value:=in_INSTRUCTOR_SERIAL;
   TableSQL.ReadOnly:=true;
   TableSQL.Open;
end else begin
   TableSQL.Close;
   TableSQL.RestoreSQL;
   TableSQL.ReadOnly:=False;
   TableSQL.Open;
end;

end;

procedure TH_FlightAirItemFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TH_FlightAirItemFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if TableSQL.State in [dsEdit,dsInsert] then
  TableSQL.Post;
end;

procedure TH_FlightAirItemFRM.FormCreate(Sender: TObject);
begin
  cn:=MainFormFRM.CabOutData;
end;

procedure TH_FlightAirItemFRM.Nav1InsertClick(Sender: TObject);
begin
  FirstFLD.SetFocus;
end;

procedure TH_FlightAirItemFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.