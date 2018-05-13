unit l_FlightAirwaybillParameters;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  Wwquery, wwstorep, fcButton, fcImgBtn, fcShapeBtn, Wwkeycb, DBAccess, Db,
  fcdbtreeview, DBCtrls, DBCGrids, wwdblook;

type
  TL_AdditionalParametersFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Label5: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DeleteSelectedBTN: TBitBtn;
    InsertBTN: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    UsedForUpdateTrans: TIBCTransaction;
    ParamItemSQL: TIBCQuery;
    ParamItemSRC: TIBCDataSource;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    GroupGRD: TwwDBGrid;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    ParamItemSQLSERIAL_NUMBER: TIntegerField;
    ParamItemSQLFK_PARAM_FA_CATEGORY: TIntegerField;
    ParamItemSQLINFO_TYPE: TStringField;
    ParamItemSQLINFO_VALUE: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure InsertBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DeleteSelectedBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwNavButton3Click(Sender: TObject);
    procedure wwNavButton4Click(Sender: TObject);
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
  L_AdditionalParametersFRM: TL_AdditionalParametersFRM;

implementation

uses MainForm,  M_Itinerary;

{$R *.DFM}

procedure TL_AdditionalParametersFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;


procedure TL_AdditionalParametersFRM.EditFlightOut(SerialNumber:Integer);
begin
End;

procedure TL_AdditionalParametersFRM.InsertFlightOut(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
begin
End;


procedure TL_AdditionalParametersFRM.InsertBTNClick(Sender: TObject);
Var
        OutSerial:Integer;
begin
         // L_FlightAirwaybillsFRM.GAction:='INSERT';
         // L_FlightAirwaybillsFRM.SHowmodal;
End;




procedure TL_AdditionalParametersFRM.BitBtn1Click(Sender: TObject);
begin
//M_ParamGroupFRM.GAction:='EDIT';
//M_ParamGroupFRM.SHowmodal;
end;

procedure TL_AdditionalParametersFRM.DeleteSelectedBTNClick(Sender: TObject);
begin
//ParamGroupSQL.Delete;
end;

procedure TL_AdditionalParametersFRM.FormActivate(Sender: TObject);
Var
        SerialNumber:Integer;
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


procedure TL_AdditionalParametersFRM.wwNavButton3Click(Sender: TObject);
begin
GroupGRD.SetFocus;
end;

procedure TL_AdditionalParametersFRM.wwNavButton4Click(Sender: TObject);
begin
If not ParamItemSQL.IsEmpty then begin
        ShowMessage('Delete Items first');
        abort;
end;
end;

END.
