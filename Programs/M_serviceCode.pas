unit M_serviceCode;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit;
type
  TM_ServiceCodesFRM = class(TForm)
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
    ServiceCodeSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ServiceCodeSQLSERIAL_NUMBER: TIntegerField;
    ServiceCodeSQLCODE: TStringField;
    ServiceCodeSQLDESCRIPTION: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ServiceCodeSQLAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  M_ServiceCodesFRM: TM_ServiceCodesFRM;

implementation

uses MainForm;


{$R *.DFM}

procedure TM_ServiceCodesFRM.FormActivate(Sender: TObject);
begin
ServiceCodeSQL.close;
ServiceCodeSQL.Open;
//SearchFieldFLD.SetFocus;
end;

procedure TM_ServiceCodesFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_ServiceCodesFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_ServiceCodesFRM.TableSRCStateChange(Sender: TObject);
begin


with ServiceCodeSQL do
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

procedure TM_ServiceCodesFRM.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TM_ServiceCodesFRM.ServiceCodeSQLAfterInsert(DataSet: TDataSet);
begin
   NameFLD.SetFocus;

end;

End.
