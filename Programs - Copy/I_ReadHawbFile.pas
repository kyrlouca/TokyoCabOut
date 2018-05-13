unit I_ReadHawbFile;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, StdCtrls, Db, ComCtrls, ExtCtrls, Buttons, Wwtable, Wwquery,
  wwstorep, fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, Grids,
  Wwdbigrd, Wwdbgrid;


Const
        MAXWORDS=100;
type
  TAllSerials=Record
        MovementSerial:Integer;
        DocumentSerial:Integer;
        AirwayBillSerial:Integer;
        ItemSerial:Integer;
  end;

  TMovementHeaderLine= Record
        ReportDate:TDate;
        MNumber:String;
        OriginArea:String;
        OriginCountry:String;
        DestinationArea:String;
        DestinationCountry:String;
        DepartureDate:TDate;
        WeightUnit:String;
        ManifestSection:String;
        ScheduledArriveDate:Tdate;
        ReportTemplate:String;
        MovementKey:String;
  end;


  TDocumentMasterLine=Record
        TransportDoc:String;
        Shipments:Integer;
        Pieces:Integer;
        Weight:Double;
        ShipmentsInternational:Integer;
        ShipmentsTrans:Integer;
        ShipmentsDomestic:Integer;
        MissingAirwayBills:Integer;
        MTDKey:Integer;
  end;

  TAirwaybillLine=Record
        Sequence:Integer;
        TransportDoc:String;
        Hawb:String;
        ShipmentOriginArea:String;
        ShipmentOriginCountry:String;
        Pieces:Integer;
        PiecesS:String;
        Weight:Double;
        Description:String;
  end;

  TAirwayBillItemLine=Record
        Sequence:Integer;
        Description:String;
        Weight:Double;
        Pieces:Integer;
  end;



  TWordsArray=array[0..MAXWORDS]of String;

  TLineState=(START,CMOV,CDOC,CAIR,CABI,II,IGN,ERR,FIN);
  TLineTYpe=(M,D,A,I,EF,ER);
  TStateArray = Array [TlineState,TlineType] of TLineState;

  TI_ReadHawbFileFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    MOVEMENT_SP: TwwStoredProc;
    Panel3: TPanel;
    ReadFileBTN: TfcShapeBtn;
    Button1: TButton;
    SystemParametersSQL: TwwQuery;
    SystemParametersSQLPARAMETER_ID: TStringField;
    SystemParametersSQLINT_1: TIntegerField;
    SystemParametersSQLINT_2: TIntegerField;
    SystemParametersSQLSTR_1: TStringField;
    SystemParametersSQLSTR_2: TStringField;
    MovementSQL: TwwQuery;
    MovementSQLSERIAL_NUMBER: TIntegerField;
    MovementSQLM_NUMBER: TStringField;
    MovementSQLCOUNTRY_ORIGIN_AREA: TStringField;
    MovementSQLCOUNTRY_ORIGIN: TStringField;
    MovementSQLCOUNTRY_DESTINATION_AREA: TStringField;
    MovementSQLCOUNTRY_DESTINATION: TStringField;
    MovementSQLWEIGHT_UNIT: TStringField;
    MovementSQLDATE_SCHEDULED_ARRIVED: TDateTimeField;
    MovementSQLDATE_REPORT: TDateTimeField;
    MovementSQLDATE_DEPARTURE: TDateTimeField;
    MovementSQLREPORT_TEMPLATE: TStringField;
    DocumentMasterSQL: TwwQuery;
    DocumentMasterSQLSERIAL_NUMBER: TIntegerField;
    DocumentMasterSQLTRANSPORT_DOC: TStringField;
    DocumentMasterSQLSHIPMENTS: TIntegerField;
    DocumentMasterSQLPIECES: TIntegerField;
    DocumentMasterSQLWEIGHT: TFloatField;
    DocumentMasterSQLSHIPMENTS_INTERNATIONAL: TIntegerField;
    DocumentMasterSQLSHIPMENTS_TRANS: TIntegerField;
    DocumentMasterSQLSHIPMENTS_DOMESTIC: TIntegerField;
    DocumentMasterSQLAIRWAYBILLS_MISSING: TIntegerField;
    DocumentMasterSQLMTD_KEY: TIntegerField;
    AirwayBillSQL: TwwQuery;
    AirwayBillSQLSERIAL_NUMBER: TIntegerField;
    AirwayBillSQLSEQUENCE_NUMBER: TIntegerField;
    AirwayBillSQLHAWB_ID: TStringField;
    AirwayBillSQLSHIPMENT_ORIGIN_AREA: TStringField;
    AirwayBillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    AirwayBillSQLPIECES: TIntegerField;
    AirwayBillSQLWEIGHT: TFloatField;
    AirwayBillSQLDESCRIPTION: TStringField;
    Airwaybill_SP: TwwStoredProc;
    DocumentMaster_SP: TwwStoredProc;
    AirwayBillItemSQL: TwwQuery;
    AirwayBillItemSQLSEQUENCE: TIntegerField;
    AirwayBillItemSQLWEIGHT: TFloatField;
    AirwayBillItemSQLPIECES: TIntegerField;
    AirwayBillItemSQLDESCRIPTION: TStringField;
    AirwayBillItemSQLSERIAL_NUMBER: TIntegerField;
    AirwayBillItem_SP: TwwStoredProc;
    MovementSQLTEMP: TStringField;
    MovementSQLMANIFEST_SECTION: TStringField;
    DocumentMasterSQLFK_MOVEMENT_SERIAL: TIntegerField;
    AirwayBillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    AirwayBillSQLFK_MOVEMENT_SERIAL: TIntegerField;
    AirwayBillItemSQLFK_AIRWAYBILL_SERIAL: TIntegerField;
    MovementSQLMOVEMENT_KEY: TStringField;
    AirwayBillSQLPIECES_S: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure ReadFileBTNClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MovementSQLNewRecord(DataSet: TDataSet);
    procedure DocumentMasterSQLNewRecord(DataSet: TDataSet);
    procedure AirwayBillSQLNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

    Function InsertMovement(MovementHeader:TMovementHeaderLine;Var AllSerials:TAllSerials):Integer;
    Function InsertDocumentMaster(DM:TDocumentMasterLine;Var AllSerials:TAllSerials):Integer;
    Function InsertAirwaybill(Airwaybill:TAirwayBillLine;Var AllSerials:TAllSerials):Integer;
    Function InsertAirwaybillItem(AirwaybillItem:TAirwayBillItemLine;Var AllSerials:TAllSerials):Integer;
    Function InsertFakeItem(Airwaybill:TAirwayBillLine;Var AllSerials:TAllSerials):Integer;


    Function PrepareMovementRecord(Var RWordsArray:TWordsArray;Var MovementHeaderLine:TMovementHeaderLine):Boolean;
    Function PrepareDocumentRecord(Var RWordsArray:TWordsArray;Var RDocumentMaster:TDocumentMasterLine):Boolean;
    Function PrepareAirwaybillRecord(Var RWordsArray:TWordsArray;Var RAirwaybill:TAirwaybillLine):Boolean;
    Function PrepareAirwaybillItemRecord(Var RWordsArray:TWordsArray;Var RItemLine:TAirwayBillItemLine):Boolean;


    Function GetSystemParameters(TheKey:String):Boolean;

    Function RemoveQuotes(TheString:String):String;
    Function ConvertDate(TheString:String):TDate;
    Function ConvertDateTime(TheDate,TheTime:String):TDate;
    procedure ReplaceComma(Var TheString :String);
    function SafeStringToFloat(TheString:String):Double;
    function UniversalStrToFloat(TheString:String):Double;

    Function OpenFile(Var InFile:TextFile):Boolean;
    Function ReadOneLine(Var InFile:TextFile; Var TheLine:String):Boolean;
    Function ParseLine(TheLine:String;Var MyWordsArray:TWordsArray):Integer;
    Function GetWord(TheString:String;StartingPos:Integer;Var TheWord :String;Var NewStartingPos:Integer):Boolean;


  end;

  Var
  I_ReadHawbFileFRM: TI_ReadHawbFileFRM;


implementation

uses MainForm;
Var
   TheStringList: TStringList;
{$R *.DFM}





Function TI_ReadHawbFileFRM.PrepareMovementRecord(Var RWordsArray:TWordsArray;Var MovementHeaderLine:TMovementHeaderLine):Boolean;
Var
        DateF:TDate;
        DateTimeF:TTimestamp;
        DateStr:String;
Begin
        MovementHeaderLine.ReportDate:=          ConvertDate(RwordsArray[3]);
        MovementHeaderLine.DepartureDate:=       ConvertDateTime(RwordsArray[3],RwordsArray[4]);
        MovementHeaderLine.ScheduledArriveDate:= ConvertDate(RwordsArray[14]);
        MovementHeaderLine.MNumber:=            RwordsArray[5];
        MovementHeaderLine.OriginArea:=         RwordsArray[6];
        MovementHeaderLine.OriginCountry:=      RwordsArray[7];
        MovementHeaderLine.DestinationCountry:= RwordsArray[8];
        MovementHeaderLine.WeightUnit:=         RwordsArray[11];
        MovementHeaderLine.ReportTemplate:=     RwordsArray[13];
        MovementHeaderLine.MovementKey:=        RwordsArray[19];
//        ShowMEssage(MovementHeaderLine.MNumber);
End;



Function TI_ReadHawbFileFRM.PrepareDocumentRecord(Var RWordsArray:TWordsArray;Var RDocumentMaster:TDocumentMasterLine):Boolean;
Begin
        RDocumentMaster.TransportDoc:=          RwordsArray[2];
        Try RDocumentMaster.Shipments:=         StrToInt(RwordsArray[3])except RDocumentMaster.Shipments:=0; end;
        try RDocumentMaster.Pieces:=            StrToInt(RwordsArray[4])except RDocumentMaster.Pieces:=0; end;
        try RDocumentMaster.Weight:=            StrToFLoat(RwordsArray[5])except RDocumentMaster.Weight:=0; end;
        try RDocumentMaster.ShipmentsInternational:=  StrToInt (RwordsArray[6])except RDocumentMaster.ShipmentsInternational:=0; end;
        try RDocumentMaster.ShipmentsTrans:=    StrToInt(RwordsArray[7])except RDocumentMaster.ShipmentsTrans:=0 ; end;
        try RDocumentMaster.ShipmentsDomestic:= StrToInt(RwordsArray[8])except RDocumentMaster.ShipmentsDomestic:=0 ; end;
        try RDocumentMaster.MissingAirwayBills:=StrToInt(RwordsArray[9])except RDocumentMaster.MissingAirwayBills:=0;end;
        try RDocumentMaster.MTDKey:=            StrToInt(RwordsArray[10]) except RDocumentMaster.MTDKey:=0;end;
End;

Function TI_ReadHawbFileFRM.PrepareAirwaybillRecord(Var RWordsArray:TWordsArray;Var RAirwaybill:TAirwayBillLine):Boolean;
Begin
        try RAirwayBill.Sequence:=              StrToInt (RwordsArray[3])except RAirwayBill.Sequence:=0; end;
        RAirwayBill.TransportDoc:=              RwordsArray[4];
        RAirwayBill.Hawb:=                      RwordsArray[5];
        RAirwayBill.ShipmentOriginArea:=        RwordsArray[7];
        RAirwayBill.ShipmentOriginCountry:=     RwordsArray[8];
//        try RAirwayBill.Pieces:=            StrtoInt(RwordsArray[11])except RAirwaybill.Pieces:=0;end;
        RAirwayBill.PiecesS:=               RwordsArray[11];
        try RAirwayBill.Weight:=        StrToFLoat(RwordsArray[12])except RAirwayBill.Weight:=0; end;
        RAirwayBill.Description:=               RwordsArray[13];
End;

Function TI_ReadHawbFileFRM.PrepareAIrwaybillItemRecord(Var RWordsArray:TWordsArray;Var RItemLine:TAirwayBillItemLine):Boolean;
Begin
        try RItemLine.Sequence:=        StrToInt (RwordsArray[2])except RItemLine.Sequence:=0; end;
        RItemLine.Description:=         RwordsArray[4];
        try RItemLine.Weight:=          StrToFLoat(RwordsArray[5])except RItemLine.Weight:=0; end;
        try RItemLine.Pieces:=            StrtoInt(RwordsArray[7])except RItemLIne.Pieces:=0;end;
End;


//////////////////////////////////////////////////////////////
//*** INSERT procedures
//////////////////////////////////////////////////////////////

Function TI_ReadHawbFileFRM.InsertMovement(MovementHeader:TMovementHeaderLine;Var AllSerials:TAllSerials):Integer;
Var
   Dataset:TDataset;
begin
     Result:=0;
     Dataset:=MovementSQL;

     If Dataset.Active then begin
        Dataset.Close;
     end;
     Dataset.open;
     Dataset.Insert;

     Dataset.FieldByName('M_NUMBER').value:=MovementHeader.MNumber;
     Dataset.FieldByName('DATE_REPORT').value:=MovementHeader.ReportDate;
     Dataset.FieldByName('COUNTRY_ORIGIN_AREA').value:=MovementHeader.OriginArea;
     Dataset.FieldByName('COUNTRY_ORIGIN').value:=MovementHeader.OriginCountry;
     Dataset.FieldByName('COUNTRY_DESTINATION_AREA').value:=MovementHeader.DestinationArea;
     Dataset.FieldByName('COUNTRY_DESTINATION').value:=MovementHeader.DestinationCountry;
     Dataset.FieldByName('WEIGHT_UNIT').value:=MovementHeader.WeightUnit;
     Dataset.FieldByName('MANIFEST_SECTION').value:=MovementHeader.ManifestSection;
     Dataset.FieldByName('DATE_SCHEDULED_ARRIVED').value:=MovementHeader.ScheduledArriveDate;
     Dataset.FieldByName('DATE_REPORT').value:=MovementHeader.ReportDate;
     Dataset.FieldByName('DATE_DEPARTURE').value:=MovementHeader.DepartureDate;
     Dataset.FieldByName('REPORT_TEMPLATE').value:=MovementHeader.ReportTemplate;
     Dataset.FieldByName('MOVEMENT_KEY').value:=MovementHeader.MovementKey;

     Result:=     Dataset.FieldByName('serial_number').AsInteger;
     Dataset.Post;
     Dataset.Close;


end;


Function TI_ReadHawbFileFRM.InsertDocumentMaster(DM:TDocumentMasterLine;Var AllSerials:TAllSerials):Integer;
Var
   Dataset:TDataset;
begin
     Result:=0;
     Dataset:=DocumentMasterSQL;

     If Dataset.Active then begin
        Dataset.Close;
     end;
     Dataset.open;
     Dataset.Insert;

     Dataset.FieldByName('FK_MOVEMENT_SERIAL').value:=AllSerials.MovementSerial;

     Dataset.FieldByName('TRANSPORT_DOC').value:=dm.TransportDoc;
     Dataset.FieldByName('SHIPMENTS').value:=dm.Shipments;
     Dataset.FieldByName('PIECES').value:=dm.Pieces;
     Dataset.FieldByName('WEIGHT').value:=dm.Weight;
     Dataset.FieldByName('SHIPMENTS_INTERNATIONAL').value:=dm.ShipmentsInternational;
     Dataset.FieldByName('SHIPMENTS_TRANS').value:=dm.ShipmentsTrans;
     Dataset.FieldByName('SHIPMENTS_DOMESTIC').value:=dm.ShipmentsTrans;
     Dataset.FieldByName('AIRWAYBILLS_MISSING').value:=dm.MissingAirwayBills;
     Dataset.FieldByName('MTD_KEY').value:=dm.MTDKey;

     Result:=     Dataset.FieldByName('serial_number').AsInteger;

     Dataset.Post;
     Dataset.Close;


end;

Function TI_ReadHawbFileFRM.InsertAirwaybill(Airwaybill:TAirwayBillLine;Var AllSerials:TAllSerials):Integer;
Var
   Dataset:TDataset;
begin
     Result:=0;
     Dataset:=AirwayBillSQL;

     If Dataset.Active then begin
        Dataset.Close;
     end;
     Dataset.open;
     Dataset.Insert;

     Dataset.FieldByName('FK_MOVEMENT_SERIAL').value:=AllSerials.MovementSerial;
     Dataset.FieldByName('FK_DOCUMENT_MASTER_SERIAL').value:=AllSerials.DocumentSerial;

     Dataset.FieldByName('SEQUENCE_NUMBER').value:=Airwaybill.Sequence;
     Dataset.FieldByName('HAWB_ID').value:=Airwaybill.Hawb;
     Dataset.FieldByName('SHIPMENT_ORIGIN_AREA').value:=Airwaybill.ShipmentOriginArea;
     Dataset.FieldByName('SHIPMENT_ORIGIN_COUNTRY').value:=Airwaybill.ShipmentOriginCountry;
     Dataset.FieldByName('PIECES').value:=Airwaybill.Pieces;
     Dataset.FieldByName('PIECES_S').value:=Airwaybill.PiecesS;
     Dataset.FieldByName('WEIGHT').value:=Airwaybill.Weight;
     Dataset.FieldByName('DESCRIPTION').value:=Airwaybill.Description;

     Result:=     Dataset.FieldByName('serial_number').AsInteger;
     Dataset.Post;
     Dataset.Close;

end;


Function TI_ReadHawbFileFRM.InsertAirwaybillItem(AirwaybillItem:TAirwayBillItemLine;Var AllSerials:TAllSerials):Integer;
Var
   Dataset:TDataset;
begin
     Result:=0;
     Dataset:=AirwayBillItemSQL;

     If Dataset.Active then begin
        Dataset.Close;
     end;
     Dataset.open;
     Dataset.Insert;

     Dataset.FieldByName('FK_AIRWAYBILL_SERIAL').value:=AllSerials.AirwayBillSerial;

     Dataset.FieldByName('SEQUENCE').value:=AirwaybillItem.Sequence;
     Dataset.FieldByName('PIECES').value:=AirwaybillItem.Pieces;
     Dataset.FieldByName('WEIGHT').value:=AirwaybillItem.Weight;
     Dataset.FieldByName('DESCRIPTION').value:=AirwaybillItem.Description;

     Result:=     Dataset.FieldByName('serial_number').AsInteger;

     Dataset.Post;
     Dataset.Close;


end;


Function TI_ReadHawbFileFRM.InsertFakeItem(Airwaybill:TAirwayBillLine;Var AllSerials:TAllSerials):Integer;
Var
   Dataset:TDataset;
begin
     Result:=0;
     Dataset:=AirwayBillItemSQL;

     If Dataset.Active then begin
        Dataset.Close;
     end;
     Dataset.open;
     Dataset.Insert;

     Dataset.FieldByName('FK_AIRWAYBILL_SERIAL').value:=AllSerials.AirwayBillSerial;

     Dataset.FieldByName('SEQUENCE').value:=1;
     Dataset.FieldByName('PIECES').value:=Airwaybill.Pieces;
     Dataset.FieldByName('WEIGHT').value:=Airwaybill.Weight;
     Dataset.FieldByName('DESCRIPTION').value:=Airwaybill.Description;

     Result:=     Dataset.FieldByName('serial_number').AsInteger;
     Dataset.Post;
     Dataset.Close;


end;


//////////////////////////////////////////////////////////////
//*** STORE  procedures
//////////////////////////////////////////////////////////////

procedure TI_ReadHawbFileFRM.MovementSQLNewRecord(DataSet: TDataSet);
begin
     Movement_SP.Prepare;
     Movement_SP.ExecProc;
     Dataset.FieldByName('serial_number').value:=MOVEMENT_SP.paramByName('SERIAL_NUMBER').asInteger;
     MOVEMENT_SP.close;

end;

procedure TI_ReadHawbFileFRM.DocumentMasterSQLNewRecord(DataSet: TDataSet);
begin
     DocumentMaster_SP.Prepare;
     DOcumentMaster_SP.ExecProc;
     Dataset.FieldByName('serial_number').value:=DocumentMaster_SP.paramByName('SERIAL_NUMBER').asInteger;
     DocumentMaster_SP.close;

end;

procedure TI_ReadHawbFileFRM.AirwayBillSQLNewRecord(DataSet: TDataSet);
begin
     Airwaybill_SP.Prepare;
     Airwaybill_Sp.ExecProc;
     Dataset.FieldByName('serial_number').value:=Airwaybill_Sp.paramByName('SERIAL_NUMBER').asInteger;
     Airwaybill_SP.close;

end;


//////////////////////////////////////////////////////////////
//*** Parsing procedures
//////////////////////////////////////////////////////////////

Function TI_ReadHawbFileFRM.GetSystemParameters(TheKey:String):Boolean;
Var
        CDefaultDirectory:String;
        CDefaultFile:String;

Begin
     with SystemParametersSQL do
     begin
        close;
        if not prepared then prepare;
        ParambyName('TheKey').Value:='S_9';
        open;
        if IsEmpty then
        begin
                ShowMessage('Add S_9 in system_parameters for default directory');
                abort;
        end;
        CDefaultDirectory:=FieldByName('str_1').asString;
        CDefaultFile:=FieldByName('str_2').asString;
        OpenDialog1.InitialDir:=CDefaultDirectory;
        OpenDialog1.FileName:=CDefaultFile;
     end;

End;


Function TI_ReadHawbFileFRM.ParseLine(TheLine:String;Var MyWordsArray:TWordsArray):Integer;
Var
           WordCount:Integer;
           StartingPos:Integer;
           NewStartingPos:integer;
           TheWOrd:String;
Begin
           WordCount:=0;
           StartingPos:=1;
           // read all the words of a single line
           while (GetWord(TheLIne,StartingPos,TheWord,NewStartingPos)) do begin
                 Inc(WordCount);
                 MyWordsArray[WordCount]:=RemoveQuotes(TheWord);
                 StartingPos:=NewStartingPos;
                 If (WordCount=MAXWORDS) then begin
                        ShowMessage('Line with too many words:'+TheLine);
                        abort;
                 end;
           end;
           Result:=WordCount;
End;




Function TI_ReadHawbFileFRM.OpenFile(Var InFile:TextFile):Boolean;
Var
        TheFileName:String;
Begin

Result:=False;

with OpenDialog1 do begin
if Execute then begin
   TheFileName:= Filename;
    AssignFile(InFile,TheFileName);
    {$I-}
    Reset(InFile);
    {$I+}
    if IOResult <> 0 then begin
      	MessageDlg('Can Not Read File'+TheFileName, mtError, [mbOk], 0);
        Result:=false;
    end else begin
        Result:=True;
    end;
end else begin
     ShowMessage('No File was Selected');
     Result:=false;
end; //execute
end;{with}

end;



Function TI_ReadHawbFileFRM.ReadOneLine(Var InFile:TextFile;Var TheLine:String):Boolean;
Var
        MyEol:Boolean;
        Ir:Integer;
        TheChar:Char;
        intChar:Integer;
Begin
          THeLine:='';
          MyEol:=false;
          Ir:=0;
           While ((not myEol)and (Not Eof(Infile)) ) do begin
                 Read(Infile,TheChar);
                 intChar:=Ord(TheChar);
                 if IntChar=10 then begin
                    MyEoL:=true;
                    break;
                 end else begin
                     TheLine:=TheLine+TheChar;
                 end;
                 Inc(ir);
//                 if(ir=100) then showmessage('100');
           end;
           result:= (not  (eof(InFile)));

End;

Function TI_ReadHawbFileFRM.GetWord(TheString:String;StartingPos:Integer;Var TheWord :String;Var NewStartingPos:Integer):Boolean;
//**************************************
// Use an automaton here just for fun
// three states:
// Before Start: just ignore everything until you hit a quote
// After First Quote : Include everthying until you hit second quote
// After Second QUote : Just get out
// What happens if never reach the "AFTER_SECOND_QUOTE"? Serious problem here
//**************************************
Const
     Comma=',';
     Space='#32';
     Qt='"';

Var
   NumberOfLetters:Integer;
   TheChar,PrevChar:Char;
   CurrentState:String;
Begin
  CurrentState:='BEFORE_START';
  TheWord:='';
  NumberOfLetters:=0;
  NewStartingPos:=StartingPos;
  While( (CurrentState<>'AFTER_SECOND_QUOTE') and (NewStartingPos <= Length(TheString)) ) do begin
     TheChar:=TheString[NewStartingPos];
     if (CurrentState='BEFORE_START') then begin
        if (TheChar=qt) then begin
           CurrentState:='AFTER_FIRST_QUOTE';
        end else if TheChar<> qt then begin
           // just ignore, we need to find quotes first
        end;
     end else if (CurrentState='AFTER_FIRST_QUOTE') then begin
        if (TheChar=Qt) then begin
           CurrentState:='AFTER_SECOND_QUOTE';
        end else if TheChar<> qt then begin
            TheWord:=TheWord+TheChar;
            Inc(NumberofLetters);
        end;
     end;
     Inc(NewStartingPos);
  end;//for

  If (CurrentState = 'BEFORE_START')then begin
      // never made it to the first quote,
      // it means that there is no need to check for more words in this line
      result:=False;
  end else if (CurrentState = 'AFTER_SECOND_QUOTE')then begin
      Result:=True;
  end else if (CurrentState <> 'AFTER_SECOND_QUOTE')then begin
      //TheWord:='SERIOUS PROBLEM MUST GET OUT';
      Result:=true; //serious problem, never found second quote . CHanged it to just get the word until the end of line
  end;

End;


//********************************************************************
// My convert Procedures
//********************************************************************

Function TI_ReadHawbFileFRM.RemoveQuotes(TheString:String):String;
Const
     Qt='"';
Var
     NewString:String;
     TheLength:Integer;
     ThePos:Integer;
Begin
     NewString:=TheString;
     TheLength:=Length(TheString);

     If theLength>0 then begin
        If theString[1]=Qt then begin
           NewString:=Copy(TheString,2,TheLength-1);
           ThePos:=Pos(Qt,NewString);
           If ThePos>0 then begin
              NewString:=Copy(NewString,1,(ThePos-1));
           end;
        end;
     end;
     Result:=NewString;
End;



Function TI_ReadHawbFileFRM.ConvertDateTime(TheDate,TheTime:String):TDate;
Var
        StrDate : string;
begin
        DateSeparator := '-';
        ShortDateFormat:='yyyy/mm/dd hh:nn:ss';
        DateSeparator  :='/';
        LongTimeFormat :='hh:mm:ss';
        TimeSeparator  :=':';
        StrDate:=TheDate+' '+TheTime;

        try
           Result:=StrToDateTime(StrDate);
        except
           Result:=int(Now);
        end;
       ShortDateFormat:='dd/mm/yyyy';
End;

Function TI_ReadHawbFileFRM.ConvertDate(TheString:String):Tdate;
Var
    TheDate:TDate;
     Year,Month,Day:String;
Begin
     ShortDateFormat:='yyyy/mm/dd';
     try
        TheDate:=StrToDate(TheString);
     except
           TheDate:=int(Now);
     end;
     ShortDateFormat:='dd/mm/yyyy';
     Result:=TheDate;
End;


procedure TI_ReadHawbFileFRM.ReplaceComma(Var TheString :String);
var
 ThePos :Integer;
begin
         ThePos:=Pos(',',TheString);
         If (ThePos>0) then
            TheString[ThePos]:='.';

end;

function TI_ReadHawbFileFRM.SafeStringToFloat(TheString:String):Double;
Var
   String1 :String;
   TheNumber: double;
begin
   String1:=TheString;
   ReplaceComma(String1);
   try
      TheNumber:=StrToFloat(String1);
   except
   on EConvertError do
      TheNumber:=0;
   end;
   Result:=TheNumber;
end;

function TI_ReadHawbFileFRM.UniversalStrToFloat(TheString:String):Double;
Var
   String1 :String;
   TheNumber: double;
   IsCommaDigit:Boolean;
begin
   IsCommaDigit:=(DecimalSeparator=','); // the system uses the comma for decimal if true
   If not IsCommaDigit then begin // since the local is using the dot for decimal
      String1:=TheString;
      ReplaceComma(String1); // replace the comma with the dot
      try
         TheNumber:=StrToFloat(String1);
      except
      on EConvertError do
         TheNumber:=0;
      end;
      Result:=TheNumber;
   end else
   begin
      String1:=TheString;
      try
         TheNumber:=StrToFloat(String1);
      except
      on EConvertError do
         TheNumber:=0;
      end;
      Result:=TheNumber;
   end;
end;



//********************************************************************
// Processing Procedures
//********************************************************************
procedure TI_ReadHawbFileFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;


procedure TI_ReadHawbFileFRM.ReadFileBTNClick(Sender: TObject);

{
                0) Start                (F->CF, M->CM, A->ERR, I->ERR,Ei->IGN)  //does nothing
                1)Create Flight CF      (F->CF, M->CM, A->ERR, I->ERR,EI->IGN)  //create flight
                2)Create Mawb CM        (F->CF, M->CM, A->CH, I->ERR,EI->IGN)    //create mawb
                3)Create Hawb CH        (F->CFI, M->CFI, A->CFI, I->CI,EI->IGN)  //create hawb
                4)Create Item CI        (F->CF, M->CM, A->CH, I->II,EI->IGN)   //will create item
                5)Ignore Item II       (F->CF, M->CM, A->CH, I->II,EI->IGN)  // will NOT create item
                6)Create FAKE ITEM(cfi) (F->CF, M->CM, A->CFI,I->II,EI->IGN) // WILL Create fake item
                7)FINISH
}
         // M,D,A,I,EF,ER  (EF= End of File, ER=Error)
Const
        StateArray2 : TStateArray = (
        (CMOV,IGN,IGN,IGN,FIN,IGN),     //START
        (CMOV,CDOC,IGN,IGN,FIN,IGN),    //CMOV
        (CMOV,CDOC,CAIR,IGN,FIN,IGN),   //CDOC
        (CMOV,CDOC,CAIR,CABI,FIN,IGN),  //CAIR
        (CMOV,CDOC,CAIR,II,FIN,IGN),    //CABI
        (CMOV,CDOC,CAIR,II,FIN,IGN),    //II
        (CMOV,CDOC,CAIR,II,FIN,IGN),    //IGN
        (FIN,FIN,FIN,FIN,FIN,ERR),      //FINISH
        (ERR,ERR,ERR,ERR,ERR,ERR)       //ERROR
        );
var
   NewPos:integer;
   TheType:Char;
   LineCount:Integer;
   MovementCount:Integer;
   DocumentCount:integer;
   AirwaybillCount:Integer;

   InFile : TextFile;
   TheLine     : String;
   KWordsArray:TWordsArray;

   LineState:TLineState;
   PreviousState:TlineState;
   LineType:TlineTYpe;
   IsLineError:Boolean;

   AllSerials:TAllSerials;
   MovementHeaderLine:TMovementHeaderLine;
   DocumentMasterLine:TdocumentMasterLine;
   AirwayBillLine:TAirwayBillLine;
   ItemLine:TAirwaybillItemLine;
begin
//***************************************************
          {
                STATE AUTOMATON
                To have a state automaton we need the follwing states including start and the finish
                The stateTable array will just tell you which is the next state. Each state JUST does a job, it doesn't care where is coming from;
          }
//***************************************************

    GetSystemParameters('S9');

    If not OpenFile(InFile) then begin
        abort;
    end;

    IsLineError:=False;
    LineState:=START;
    PreviousState:=START;
    LineCount:=0;
    MovementCount:=0;
    DocumentCount:=0;
    AirwaybillCount:=0;

    while ( ReadOneLine(inFile,TheLine)) do begin

          If (ParseLine(TheLine,KWordsArray)<1) then // last line may be empty
                break;

           Inc(LineCount); //120

           IsLineError:=false;
           TheType:=KWordsArray[1][1];
           Case TheTYpe of
           'F':LineTYpe:=M;
           'M':LineType:=D;
           'A':LineType:=A;
           'I':LineType:=I;
           else begin
                IsLineError:=true;
                continue;
           end;
           end;

           LineState:=StateArray2[LineState,LineType];

        Case  LineState Of
           CMOV:   begin
                        If PreviousState=CAIR then
                                InsertFakeItem(AirwayBillLine,AllSerials);
                        PrepareMovementRecord(KWordsArray,MovementHeaderLine);
                        AllSerials.MovementSerial:= InsertMovement(MovementHeaderLine,AllSerials);
                        AllSerials.DocumentSerial:=0;
                        AllSerials.AirwayBillSerial:=0;
                        Inc(MovementCount);
                end;
           CDOC:  begin
                        If PreviousState=CAIR then
                                InsertFakeItem(AirwayBillLine,AllSerials);
                        PrepareDocumentRecord(KwordsArray,DocumentMasterLine);
                        AllSerials.DocumentSerial:=InsertDocumentMaster(DocumentMasterLine,AllSerials);
                        AllSerials.AirwayBillSerial:=0;
                        Inc(DocumentCount);
                end;
           CAIR:  begin
                        If PreviousState=CAIR then
                                InsertFakeItem(AirwayBillLine,AllSerials);
                        PrepareAirwaybillRecord(KwordsArray,AirwayBillLine);
                        AllSerials.AirwayBillSerial:=InsertAirwayBIll(AirwayBIllLine,AllSerials);
                        Inc(Airwaybillcount);
                end;
           CABI:begin
                        PrepareAirwayBillItemRecord(KwordsArray,ItemLine);
                        InsertAirwayBillItem(ItemLine,AllSerials);
                end;
           II:begin
                  //ignore
                end;
           else
                begin
                        ShowMessage('St????= what '+ TheLine);
                end;
        end;
        PreviousState:=LineState;

    end;

    Closefile(Infile);

    MessageDlg('File was SUCCESSFULLY Read.'+#10#13+ 'Movements='+IntToStr(MovementCOunt)+#10#13+'Documents='+IntToStr(DocumentCount)+#10#13+'AirwayBills='+IntToStr(AirwayBillCount)
    , mtInformation, [mbOK], 0);
//                 H_hawbDataDML.MawbSRC.DataSet.Close;
//                 H_hawbDataDML.MawbSRC.DataSet.open;
End;

procedure TI_ReadHawbFileFRM.Button1Click(Sender: TObject);
Var
        ADate:TDate;
begin

        ADate:=COnvertDateTime('2003/12/26', '07:06:05');
        //ShowMessage(FormatDateTime('dd/mmm/yyyy hh:nn:ss',Adate));
end;





END.
