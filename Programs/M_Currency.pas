unit M_Currency;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit;
type
  TM_CurrencyFRM = class(TForm)
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
    CurrencySQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    CurrencySQLDESCRIPTION: TStringField;
    CurrencySQLCURRENCY_CODE: TStringField;
    CurrencySQLCOUNTRY_CODE: TIntegerField;
    CurrencySQLXML_CURRENCY: TStringField;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencySQLAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  M_CurrencyFRM: TM_CurrencyFRM;

implementation

uses MainForm;


{$R *.DFM}

procedure TM_CurrencyFRM.FormActivate(Sender: TObject);
begin
CurrencySQL.close;
CurrencySQL.Open;
//SearchFieldFLD.SetFocus;
end;

procedure TM_CurrencyFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_CurrencyFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_CurrencyFRM.TableSRCStateChange(Sender: TObject);
begin


with CurrencySQL do
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

procedure TM_CurrencyFRM.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TM_CurrencyFRM.CurrencySQLAfterInsert(DataSet: TDataSet);
begin
   NameFLD.SetFocus;

end;

End.
