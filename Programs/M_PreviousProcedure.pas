unit M_PreviousProcedure;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, RzButton, RzRadChk,
  RzDBChk;
type
  TM_PreviousProcedureFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Grid1: TwwDBGrid;
    Label3: TLabel;
    NameFLD: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    TableSQLIS_DEFAULT: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLKEY: TStringField;
    RzDBCheckBox1: TRzDBCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  M_PreviousProcedureFRM: TM_PreviousProcedureFRM;

implementation

uses MainForm;


{$R *.DFM}

procedure TM_PreviousProcedureFRM.FormActivate(Sender: TObject);
begin
TableSQL.close;
TableSQL.Open;
//SearchFieldFLD.SetFocus;
end;

procedure TM_PreviousProcedureFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If TableSQL.State in [dsInsert, dsEdit] then
  tableSQL.Post;
end;

procedure TM_PreviousProcedureFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_PreviousProcedureFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_PreviousProcedureFRM.TableSRCStateChange(Sender: TObject);
begin


with TableSQL do
begin
     If State<>dsInsert then
     begin
         NameFLD.Enabled:=false;
//       FieldByName('id').ReadOnly:=true;
     end
     else
     begin
         NameFLD.Enabled:=true;
//       FieldByName('id').ReadOnly:=false;
     end;
end;//with

end;

procedure TM_PreviousProcedureFRM.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssCtrl in shift) and (key=vk_return)) then begin
   if Nav1Post.Enabled then begin
      Nav1Post.Click;
   end;

end;

if ((ssCtrl in shift) and (key=vk_insert)) then begin
   if Nav1Insert.Enabled then begin
      Nav1Insert.Click;
   end;
end;

end;

procedure TM_PreviousProcedureFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
   NameFLD.SetFocus;

end;

End.
