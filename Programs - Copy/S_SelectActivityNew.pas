unit S_SelectActivityNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,G_GeneralProcedures,
  fcButton, fcImgBtn, fcShapeBtn;

type
  TS_selectActivityNewFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    CustomerSRC: TDataSource;
    wwDBGrid1: TwwDBGrid;
    CustomerSQL: TIBCQuery;
    NameFLD: TwwDBEdit;
    ByDescBTN: TSpeedButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure CustomerSQLBeforeEdit(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ByDescBTNClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure NameFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
        procedure UpdateTariff(IsSaveAll:Boolean);
  public
    { Public declarations }
    InAction:String;
    InTariffCode:String;
    OutIsSelect:Boolean;
        GActivityRecord:TActivityRecord;
    procedure SelectTariff(Const TariffName:String);
    procedure SelectTariffbyCode(Const TariffCode:String);

  end;

var
  S_selectActivityNewFRM: TS_selectActivityNewFRM;

implementation

uses MainForm;
{$R *.DFM}

procedure TS_selectActivityNewFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CustomerSQL.Close;

end;

procedure TS_selectActivityNewFRM.BitBtn2Click(Sender: TObject);
begin
InAction:='';
OutIsSelect:=True;
close;
end;

procedure TS_selectActivityNewFRM.CustomerSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=true;
end;


procedure TS_selectActivityNewFRM.SelectTariff(Const TariffName:String);
Var
 aName:String;
begin

        aName:=Trim(TariffName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('USER_KEYWORD starting with :SInput');
                SetOrderBy('USER_KEYWORD Asc');
                If not prepared then prepare;
                ParamByName('SInput').Value:=aName;
                Open;
        end;

end;

procedure TS_selectActivityNewFRM.SelectTariffbyCode(Const TariffCode:String);
begin

//        aName:=Trim(CustomerName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('CODE STARTING WITH :SInput');
                SetOrderBy('Code Asc');
                If not prepared then prepare;
                ParamByName('SInput').AsString:=TariffCode;
                //ShowMessage(CustomerSQL.FInalSQL);
                Open;
        end;

end;


procedure TS_selectActivityNewFRM.wwDBGrid1DblClick(Sender: TObject);
Var
        CustomerSerial:Integer;
begin
//        CUstomerSerial:=CustomerSQL.fieldByName('Code').AsInteger;
        With CustomerSQL do begin
                GActivityRecord.Serial:=CustomerSQL.fieldByName('Serial_number').asInteger;
                GActivityRecord.fee:=CustomerSQL.fieldByName('fee').AsFloat;
        end;
        //ShowMessage(intToStr(GCustomerRecord.Code));

        If InAction='MENU' then begin
              //EditBTN.Click;
        end else begin
                Close;
                Self.OutIsSelect:=True;
        end;

end;

procedure TS_selectActivityNewFRM.FormActivate(Sender: TObject);
begin
Self.OutIsSelect:=False;
If   NameFLD.CanFocus then NameFLD.SetFocus;
NameFLd.SelStart := Length(NameFLD.Text);
If CustomerSQL.Active=false then
CustomerSQL.Open;

end;

procedure TS_selectActivityNewFRM.UpdateTariff(IsSaveAll:Boolean);
begin
End;

procedure TS_selectActivityNewFRM.ByDescBTNClick(Sender: TObject);
Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectTariff(aName);
end;

procedure TS_selectActivityNewFRM.Panel2Click(Sender: TObject);
Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectTariff(aName);


end;

procedure TS_selectActivityNewFRM.NameFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

Var
 aName:String;
begin

end;

END.
