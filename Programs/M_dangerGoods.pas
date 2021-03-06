unit M_dangerGoods;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  DBAccess, IBC, Data.DB, MemDS, vcl.wwdblook, RzButton, RzRadChk, RzDBChk;

type
  TM_DangerGoodsFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    NameFLD: TwwDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    Label9: TLabel;
    TableSQL: TIBCQuery;
    TableSRC: TIBCDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    UsedForUpdateTrans: TIBCTransaction;
    CountrySQL: TIBCQuery;
    CountrySQLCODE_2: TStringField;
    CountrySQLNAME: TStringField;
    wwDBEdit1: TwwDBEdit;
    readTrans: TIBCTransaction;
    TableSQLIS_DEFAULT: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLKEY: TStringField;
    RzDBCheckBox1: TRzDBCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GAction:string;
    GAirSerial:Integer;
    GMovementSerial:Integer;
    GDocumentMasterSerial:Integer;
    procedure EditAirwaybill(SerialNumber:Integer);
  end;

var
  M_DangerGoodsFRM: TM_DangerGoodsFRM;

implementation

uses MainForm;

{$R *.DFM}


procedure TM_DangerGoodsFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_DangerGoodsFRM.wwDBNavigator1InsertClick(
  Sender: TObject);
begin
If NameFLD.CanFocus then
   NameFLD.SetFocus;
end;


procedure TM_DangerGoodsFRM.AcceptBTNClick(Sender: TObject);
begin
If TableSQL.State=dsEdit then begin
        TableSQL.Post;
end;
Close;
end;

procedure TM_DangerGoodsFRM.CancelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;

end;


procedure TM_DangerGoodsFRM.EditAirwaybill(SerialNumber:Integer);
begin
End;



procedure TM_DangerGoodsFRM.FormActivate(Sender: TObject);
Var
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

end;

end.
