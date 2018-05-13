unit P_Deconsolidation;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, vcl.Wwdbedit, Vcl.ExtCtrls;
type
  TFindType = (ByMawb,ByTdid);

   RGeneralSystemData=record
      DeconDirectory:String;
      IsOnlyHigh:Boolean;
  end;

  TP_DeconsolidationFRM = class(TForm)
    Panel1: TPanel;
    MawbPNL: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    AirportPNL: TGroupBox;
    Label13: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    RotationFLD: TwwDBEdit;
    CBookFLD: TwwDBEdit;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    wwDBEdit4: TwwDBEdit;
    Label6: TLabel;
    DocumentSRC: TDataSource;
    wwDBEdit3: TwwDBEdit;
    Label8: TLabel;
    MawbFLD: TwwDBEdit;
    TDidFLD: TwwDBEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    ByMawbFLD: TwwDBEdit;
    SpeedButton2: TSpeedButton;
    Label11: TLabel;
    ByTdidFLD: TwwDBEdit;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label2: TLabel;
    Panel2: TPanel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      GData: RGeneralSystemData;
Function GetValueFromSystemTable(Const TheKey,TheDescription:String):String;
Function GetSystemValues(Var GData:RGeneralSystemData):Boolean;
              procedure FindMawb(FindType:TFindType;const TheKey:string);
  end;

var
  P_DeconsolidationFRM: TP_DeconsolidationFRM;

implementation

uses MainForm, GeneralProcedures, G_KyrSQL;

{$R *.DFM}

Function TP_DeconsolidationFRM.GetSystemValues(Var GData:RGeneralSystemData):Boolean;
Begin
   GData.DeconDirectory := GetValueFromSystemTable('X43','directory for storing Deconsolidation xml files ');
   GData.IsOnlyHigh:=(GetValueFromSystemTable('X46','Display only Ede high value hwab ')='Y');
   Result:=true;
End;


Function TP_DeconsolidationFRM.GetValueFromSystemTable(Const TheKey,TheDescription:String):String;
//Var
//   TheQuery:TQUery;
Begin

//
//   TheQuery:=ParameterSQL;
//   TheQUery.ParamByName('TheKey').Value:=TheKey;
//
//   TheQuery.close;
//   If TheQuery.Prepared then TheQuery.Prepare;
//   TheQUery.ParamByName('TheKey').Value:=TheKey;
//   TheQuery.Open;
//   If TheQuery.IsEmpty Then raise exception.create('Enter into General parameter the record:'+TheKey+' for '+TheDescription);
//
//   TheQuery.First;
//   Result:=Trim(TheQuery.fieldbyName('text_1').AsString);
//   TheQuery.Close;
//

End;


procedure TP_DeconsolidationFRM.FindMawb(FindType:TFindType;const TheKey:string);
Var
   TheSQL:String;
begin
{
   With MawbSQL do begin
      close;
      if FindType=ByMawb then begin
         TheSQL:='Select * from Mawb where mawb_id = '+TheKey;
      end else if FindType=ByTdid then begin
         TheSQL:='Select * from Mawb where xml_consolidated_id = '+TheKey;
      end;

      MawbSQL.SQL.Clear;
      MawbSQL.SQL.Add(TheSQL);
      if not prepared then prepare;
//      ParamByName('TheMawbId').value:=TheMawbId;
      Open;
      If IsEmpty Then begin
         ShowMessage('mawb not found');
      end else if RecordCount>1 then begin
         ShowMessage('More than one mawb');
   end;

   end;
}
End;

//

procedure TP_DeconsolidationFRM.SpeedButton2Click(Sender: TObject);
Var
   TheMawbID:String;
begin
   TheMawbId:=trim(ByMawbFLD.Text);
   If TheMawbId='' then
      raise exception.create('Enter Mawb id to search');


   FindMawb(ByMawb,QuotedStr(TheMawbId));

End;

procedure TP_DeconsolidationFRM.SpeedButton3Click(Sender: TObject);
Var
   TheTdID:String;
begin
   TheTdId:=trim(ByTdidFLD.Text);
   If TheTdId='' then
      raise exception.create('Enter Td id to search');
   FindMawb(ByTdid,QuotedStr(TheTdid));

end;

procedure TP_DeconsolidationFRM.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TP_DeconsolidationFRM.FormActivate(Sender: TObject);
begin
ByMawbFLD.SetFocus;
end;

end.
