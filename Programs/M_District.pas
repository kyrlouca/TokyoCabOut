unit M_District;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  wwSpeedButton, wwDBNavigator, DBAccess, IBC, Data.DB, MemDS,
  vcl.wwclearpanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, vcl.Wwdbedit,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TM_DistrictFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    NameFLD: TwwDBEdit;
    CodeFLD: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    Label9: TLabel;
    DistrictSQL: TIBCQuery;
    CountryIBSRC: TIBCDataSource;
    SErialFLD: TwwDBEdit;
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
    DistrictSQLCODE_X: TStringField;
    DistrictSQLDESCRIPTION: TStringField;
    DistrictSQLSERIAL_NUMBER: TIntegerField;
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
  M_DistrictFRM: TM_DistrictFRM;

implementation

uses MainForm;

{$R *.DFM}


procedure TM_DistrictFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_DistrictFRM.wwDBNavigator1InsertClick(
  Sender: TObject);
begin
If CodeFLD.CanFocus then
   COdeFLD.SetFocus;
end;


procedure TM_DistrictFRM.AcceptBTNClick(Sender: TObject);
begin
If DistrictSQL.State=dsEdit then begin
        DistrictSQL.Post;
end;
Close;
end;

procedure TM_DistrictFRM.CancelBTNClick(Sender: TObject);
begin
DIstrictSQL.Cancel;
close;

end;


procedure TM_DistrictFRM.EditAirwaybill(SerialNumber:Integer);
begin
End;



procedure TM_DistrictFRM.FormActivate(Sender: TObject);
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
