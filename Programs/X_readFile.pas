
unit X_readFile;
//XMLNode has Childnodes , and you can use Node.Childnodes[0] or Node.ChildNodes['Hdr] to get child node
//XMLNodeList is the list itself. it has attribute list.count and list['arrive'] to get the node
// childnodes will create a node if NOT found . FindNode will result to null and chekc assign
//if Assigned(list['data'])
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.DateUtils,System.Variants, System.Classes, System.ioUtils,Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc, Data.DB, MemDS, DBAccess, IBC,Math, RzButton, RzPanel,
  Vcl.ExtCtrls, Vcl.Mask, RzEdit, vcl.Wwdbedit, RzLabel, RzShellDialogs,CodeSiteLogging;

type
TMawbRec =Record
  mawbSerial:integer;
  MawbId:String;
  EquipmentId:String;
  ArrivalDate:TDate;
  FileName:String;
End;
THawbRec =Record
  HawbId:String;
  HawbSerial:Integer;
  MawbSerial:Integer;
  MawbId:String;
  ArrivalDate:String;
End;
THawbAge=(haNotFound, haSame, haPartial, haOld, haDuplicate);

  TX_readFileFRM = class(TForm)
    XMLDocument1: TXMLDocument;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    HawbSQL: TIBCQuery;
    MawbSQL: TIBCQuery;
    SenderInvoiceSQL: TIBCQuery;
    SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_NUMBER: TStringField;
    SenderInvoiceSQLFK_HAWB_ID: TStringField;
    SenderInvoiceSQLINVOICE_AMOUNT: TFloatField;
    SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField;
    SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField;
    SenderInvoiceSQLTOTAL_AMOUNT: TFloatField;
    SenderInvoiceSQLCURRENCY: TStringField;
    SenderInvoiceSQLEXCHANGE_RATE: TFloatField;
    SenderInvoiceSQLFACTOR: TFloatField;
    SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField;
    SenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLIS_VALID: TStringField;
    SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField;
    SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_RATE: TFloatField;
    SenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    HawbItemSQL: TIBCQuery;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbItemSQLDESCRIPTION: TStringField;
    HawbItemSQLFK_RELIEF_CODE: TStringField;
    HawbItemSQLFK_IMPORT_TYPE: TStringField;
    HawbItemSQLINVOICE_VALUE: TFloatField;
    HawbItemSQLDUTY_TYPE: TStringField;
    HawbItemSQLTARIFF_DESCRIPTION: TStringField;
    HawbItemSQLNET_QUANTITY: TIntegerField;
    HawbItemSQLIMPORT_DUTY_RATE: TFloatField;
    HawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField;
    HawbItemSQLEXCISE_DUTY_RATE: TFloatField;
    HawbItemSQLEXCISE_RELIEVED: TFloatField;
    HawbItemSQLTRL_RATE: TFloatField;
    HawbItemSQLTRL_RELEIVED: TFloatField;
    HawbItemSQLVAT_RATE: TFloatField;
    HawbItemSQLVAT_RELEIVED: TFloatField;
    HawbItemSQLCUSTOMS_VALUE: TFloatField;
    HawbItemSQLCURRENCY_RATE: TFloatField;
    HawbItemSQLCURRENCY: TStringField;
    HawbItemSQLFK_MAWB: TIntegerField;
    HawbItemSQLFK_VAT_CODE: TIntegerField;
    HawbItemSQLFK_TARIFF_C_CODE: TStringField;
    HawbItemSQLFK_TARIFF_CODE: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField;
    HawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField;
    HawbItemSQLDUTY_IMPORT_PAY: TFloatField;
    HawbItemSQLDUTY_TRL_PAY: TFloatField;
    HawbItemSQLDUTY_EXCISE_PAY: TFloatField;
    HawbItemSQLDUTY_VAT_PAY: TFloatField;
    HawbItemSQLDUTY_IMPORT_TOTAL: TFloatField;
    HawbItemSQLDUTY_EXCISE_TOTAL: TFloatField;
    HawbItemSQLDUTY_TRL_TOTAL: TFloatField;
    HawbItemSQLDUTY_VAT_TOTAL: TFloatField;
    HawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField;
    HawbItemSQLDUTY_TOTAL_CHARGES: TFloatField;
    HawbItemSQLFK_EXCISE_CODE: TStringField;
    HawbItemSQLEURO1: TStringField;
    HawbItemSQLEURO2: TStringField;
    HawbItemSQLPOSOSTOSIS: TStringField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    HawbItemSQLUNIT: TStringField;
    HawbItemSQLEURO_PENDING: TStringField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLFK_PORT_IMPORTATION: TIntegerField;
    MawbSQLSIGNATORY_NAME: TStringField;
    MawbSQLFORM_DATE: TDateField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLPASSED: TStringField;
    MawbSQLROTATION_NUMBER: TIntegerField;
    MawbSQLROTATION_YEAR: TSmallintField;
    MawbSQLFK_PORT_CLEARING: TIntegerField;
    MawbSQLGOODS_NUMBER: TIntegerField;
    MawbSQLGOODS_DESCRIPTION: TStringField;
    MawbSQLCBOOK_NUMBER: TStringField;
    MawbSQLINVOICED: TStringField;
    MawbSQLSENT_TO_HEAD: TStringField;
    MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    MawbSQLSTORAGE_EXPENSES: TFloatField;
    MawbSQLDELIVERY_EXPENSES: TFloatField;
    MawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    MawbSQLAMOUNT_INVOICED: TFloatField;
    MawbSQLDATE_PASSED: TDateField;
    MawbSQLGOODS_WEIGHT: TIntegerField;
    MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField;
    MawbSQLHAWBS_IN_MAWB: TIntegerField;
    MawbSQLDOCS_NUMBER: TIntegerField;
    MawbSQLDOCS_WEIGHT: TFloatField;
    MawbSQLHIGH_VALUE_NUMBER: TIntegerField;
    MawbSQLHIGH_VALUE_WEIGHT: TFloatField;
    MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField;
    MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField;
    MawbSQLLOW_VALUE_NUMBER: TIntegerField;
    MawbSQLLOW_VALUE_WEIGHT: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    MawbSQLROTATION_2: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLLOW_VALUE_TDID: TStringField;
    MawbSQLSTATUSC_NUMBER: TIntegerField;
    MawbSQLSTATUSC_WEIGHT: TIntegerField;
    MawbSQLTDID_NEW: TStringField;
    MawbSQLF63: TStringField;
    MawbSQLSTATUSC: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    Panel1: TRzPanel;
    Label1: TLabel;
    RzPanel2: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    Panel2: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    MawbSQLDHL_EQUIPMENT_ID: TStringField;
    Button3: TButton;
    ValueFLD: TwwDBEdit;
    MawbSQLFILE_NAME_XML: TStringField;
    ProcessFLD: TRzLabel;
    OpenfileDLG: TRzOpenDialog;
    All: TButton;
    MawbSQLMSG_TIME: TDateTimeField;
    MawbSQLMOVEMENT_NUMBER: TStringField;
    MawbSQLDATE_DEPART: TDateField;
    MessagesMemo: TRzMemo;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLSEQUENCE_NUMBER: TIntegerField;
    HawbSQLHAWB_ID: TStringField;
    HawbSQLSHIPMENT_ORIGIN_AREA: TStringField;
    HawbSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    HawbSQLPIECES: TIntegerField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    HawbSQLFK_MOVEMENT_SERIAL: TIntegerField;
    HawbSQLPIECES_S: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY_CODE: TStringField;
    HawbSQLCONSIGNEE_NAME: TStringField;
    HawbSQLCONSIGNEE_ADDRESS: TStringField;
    HawbSQLCONSIGNEE_POST_CODE: TStringField;
    HawbSQLCONSIGNEE_CITY: TStringField;
    HawbSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    HawbSQLFK_ITINERARY_SERIAL: TIntegerField;
    HawbSQLPACKAGES_COUNT: TIntegerField;
    HawbSQLITEMS_COUNT: TIntegerField;
    HawbSQLPAYMENT_METHOD: TStringField;
    HawbSQLIS_HIGH: TStringField;
    HawbSQLVALUE_TYPE: TStringField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLCURRENCY: TStringField;
    HawbSQLCURRENCY_RATE: TFloatField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLSENDER_DEVICE_TYPE: TStringField;
    HawbSQLSENDER_DEVICE_DETAILS: TStringField;
    HawbSQLCONSIGNEE_ADDRESS_1: TStringField;
    HawbSQLCONSIGNEE_ADDRESS_2: TStringField;
    HawbSQLCONSIGNEE_ADDRESS_3: TStringField;
    HawbSQLCONSIGNEE_DEVICE_TYPE: TStringField;
    HawbSQLCONSIGNEE_DEVICE_DETAILS: TStringField;
    HawbSQLINCOTERMS: TStringField;
    HawbSQLIS_SCANNED: TStringField;
    HawbSQLSENDER_EMAIL: TStringField;
    HawbSQLCONSIGNEE_EMAIL: TStringField;
    HawbSQLSERVICE_CODE: TStringField;
    HawbSQLACCOUNT_NUMBER: TStringField;
    HawbSQLCONSIGNEE_PREFERRED_NAME: TStringField;
    HawbSQLSENDER_PREFERRED_NAME: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AllClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
//    DefaultDeliveryTerm:String;
//    DefaultUnit:String;

  Function GetTheFile:String;
  function   GetClearingInstruction(Const HawbSerial:Integer):String;


  function  FindExchangeRate(Const Currency:String):Double;
  function FindDefaultDelivery() :String;
  function FindDefaultUnit() :String;
  function FindMediumWaitingReason() :String; //if medium Val

  Function FindCountry(Const CountryStr:String):Integer;
  function  FindWaitingReason(Const Code4:String):String;
  function  FindClearanceInstruction(Const CodeVal:String):String;


  function ReadTheFile(Const FileName:String) :boolean;
  function ReadOneXML(Const FileName:String) :Boolean;
  function findMawb(Const MawbId:String):TMawbRec;
  function isPartialMawb(const mawbNode:IXMLNode):Integer;
  function isOldMawb(const mawbNode:IXMLNode):Integer;
  function isMawbFileExists(const HeaderNode:IXMLNode;const mawbNode:IXMLNode):Boolean;

//  function findMawbEquipmentId(Const MawbId:String;Const EqId:String):Integer;
  //  function findMawbInSameFile(Const MawbId:String;Const DateArrived:TDate;Const FileName:String):Integer;

  function findHawb(Const HawbId:String;Mawbserial:Integer):boolean;
  function findHawbSmart(Const HawbId:String;Const mawbId:string; Const FileName:String):THawbAge;

  function ProcessOneMawb(headerNode:IXMLNode; mawbNode:IXMLNode;fileName:String):Integer;

  function CreateMawb(Const MawbId:String;Const HeaderNode:IXMLNode;Const MawbNode:IXMLNode;Const fileName:string):integer;
//  function UpdateMawb(Const MawbSerial:Integer;Const MawbNode:IXMLNode):Integer;
  function UpdateHawb(Const HawbSerial:Integer; hawbNode:IXMLNode):Integer;
  function UpdateCustomer(Const HawbSerial:Integer; const TraderId:integer;Const hawbNode:IXMLNode):Integer;

  //  function CreateSenderInvoice(Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
  function CreateHawb(Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
  function CreatePartialHawb(Const hawbId:String ;Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
  function CreateHawbItem(Const mawbSerial:Integer; Const hawbSerial:Integer ; hawbItemNode:IXMLNode):Integer;

  procedure DeleteHawb(hawbSerial:Integer);
  procedure DeleteMawb(aMawbSerial:Integer);
  procedure DeleteallMawbs(aMawbSerial:Integer);
 Function GetDefaultMediumVatRate():Double;


  public
    { Public declarations }
  end;

var
  X_readFileFRM: TX_readFileFRM;

implementation

{$R *.dfm}

uses  G_kyriacosTypes,  G_KyrSQL, G_generalProcs, G_DebugUnit, MainForm,
  GeneralParametersNew;





function TX_readFileFRM.FindMediumWaitingReason() :String;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select first 1 * customer');
  try
    qr.Open;
    result:='a';
  finally
    qr.Free;
  end;

end;


function TX_readFileFRM.FindDefaultDelivery() :String;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select first 1 * customer');
  try
    qr.Open;
    result:='a';
  finally
    qr.Free;
  end;

end;



function TX_readFileFRM.FindDefaultUnit() :String;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select first 1 * customer');
  try
    qr.Open;
    result:='a';
  finally
    qr.Free;
  end;

end;


procedure TX_readFileFRM.FormActivate(Sender: TObject);
begin
ProcessFLD.Visible:=false;

end;

procedure TX_readFileFRM.FormCreate(Sender: TObject);
begin
  cn:= MainFormFRM.CabOutData;
end;








function TX_readFileFRM.ReadTheFile(Const FileName:String) :Boolean;
var
  Doc: IXMLDocument;
  Data: IXMLNode;
  Movements, Mawbs,Hawbs :IXMLNodeList;
  aHeader,aMovement,aMawb,aHawb:ixmlnODE;
  I: Integer;
//  j:Integer;
  MawbRec:TmawbRec;
  str:String;
  temptime:TDateTime;
  TotalHawbs:Integer;

begin
  TotalHawbs:=0;
  result:=true;
  Doc := LoadXMLDocument(FileName);
  Data := Doc.DocumentElement;

  Movements:=Data.ChildNodes['Dtls'].ChildNodes['Entries'].ChildNodes['Entry'].childNOdes['Mvmts'].ChildNodes;
  aHeader:=Data.ChildNodes['Hdr'];


  if Movements.Count <1 then begin
    result:=False;
    exit;
  end;
// ShowMessage(Movements[0].ChildNodes['MvmtNo'].Text);

  Mawbs:=Movements[0].ChildNodes['TDOCs'].ChildNodes; //only one movement is sent
  aMovement:=Movements[0];
  if Mawbs.Count <1 then begin
    result:=False;
    exit;
  end;

  //same first mawb exists in another file
  aMawb := Mawbs[0];
  if isMawbFileExists(aHeader, aMawb) then begin
    result:=False;
    exit;
  end;

  for I := 0 to Mawbs.Count-1 do  begin
  //each movement may hawe one or more mawbs  (each mawb is a TDOC) but may have more than one same mawb
    aMawb := Mawbs[i];
    TotalHawbs := TotalHawbs + ProcessOneMawb(aHeader,aMawb,fileName);
  end;

  MessagesMemo.Lines.Add('---------------------------------------------------------');
  MessagesMemo.Lines.Add('--------------------- Total Created:'+InttoStr(Totalhawbs));


  end;




procedure TX_readFileFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TX_readFileFRM.RzBitBtn2Click(Sender: TObject);
var
  FileName:String;
  FileNameXyz:String;
  MoveFolder:String;
  MoveFile:String;
  temp:string;
  strings:TstringList;
begin

//  fileName:='C:\Data\DelphiProjects\Tariffs\XMLFiles1\t1.Xml';
  ProcessFLD.Visible:=true;
  MessagesMemo.Clear;
  FileName:=GetTheFile();
  if FileName='' then begin
      exit;
  end else begin
  end;

  temp:=UpperCase(Tpath.GetExtension(filename));
  If UpperCase(temp)='.XYZ' then begin
      showmessage('cannot read file with EXTENSION XYZ');
      exit;
  end;

   MoveFOlder := GN_GetTheSystemParameter(cn, 'F_1').P_String5;
   If not System.SysUtils.DirectoryExists(MoveFolder) then begin
    MessageDlg('Destination Directory Does NOT exist:'+#13+#10+ MOveFolder, mtError, [mbOK], 0);
    exit;
   end;


  MessagesMemo.lines.Add('Processing File:    '+FileName);

  FileNameXyz:=Tpath.ChangeExtension(FileName,'.xyz');

  try
  //Convert to utf to strip control chars
    temp:=trim(system.IOutils.Tfile.ReadAllText(filename));
    strings:=TStringList.Create();
    strings.Add(temp);
    strings.SaveToFile(FileNameXyz,TEncoding.UTF8);
  finally
    strings.Free;
   end;
  Tfile.Delete(fileName);

  ReadOneXML(FileNameXyz);


 temp:=Tpath.ChangeExtension(FileNameXYZ,'.XXX');
  If RenameFile(FileNameXYZ,temp ) then begin
      MoveFIle:=MoveFolder +'\'+System.SysUtils.ExtractFileName(temp);
      TRY
        Tfile.Move(temp,MoveFile);
      FINALLY
       self.ModalResult:=mrNone;
      END;
  end;

  MessagesMemo.lines.Add('----------------------------------------------------');
  MessagesMemo.lines.Add('Finish:    '+FileName);
  self.ModalResult:=mrNone;
  ProcessFLD.Visible:=false;

end;


function TX_readFileFRM.ReadOneXML(Const FileName:String) :Boolean;
var
  Doc: IXMLDocument;
  Data: IXMLNode;
  Movements, Mawbs,Hawbs :IXMLNodeList;
  aHeader,aMovement,aMawb,aHawb:ixmlnODE;
  I: Integer;
//  j:Integer;
  MawbRec:TmawbRec;
  str:String;
  temptime:TDateTime;
  TotalHawbs:Integer;

begin
  TotalHawbs:=0;
  result:=true;
  Doc := LoadXMLDocument(FileName);
  Data := Doc.DocumentElement;

  Movements:=Data.ChildNodes['Dtls'].ChildNodes['Entries'].ChildNodes['Entry'].childNOdes['Mvmts'].ChildNodes;
  aHeader:=Data.ChildNodes['Hdr'];


  if Movements.Count <1 then begin
    result:=False;
    exit;
  end;
// ShowMessage(Movements[0].ChildNodes['MvmtNo'].Text);

  Mawbs:=Movements[0].ChildNodes['TDOCs'].ChildNodes; //only one movement is sent
  aMovement:=Movements[0];
  if Mawbs.Count <1 then begin
    result:=False;
    exit;
  end;

  //same first mawb exists in another file
  aMawb := Mawbs[0];
  if isMawbFileExists(aHeader, aMawb) then begin
    result:=False;
    exit;
  end;

  for I := 0 to Mawbs.Count-1 do  begin
  //each movement may hawe one or more mawbs  (each mawb is a TDOC) but may have more than one same mawb
    aMawb := Mawbs[i];
    TotalHawbs := TotalHawbs + ProcessOneMawb(aHeader,aMawb,fileName);
  end;

  MessagesMemo.Lines.Add('---------------------------------------------------------');
  MessagesMemo.Lines.Add('--------------------- Total Created:'+InttoStr(Totalhawbs));


  end;



function TX_readFileFRM.ProcessOneMawb(headerNode:IXMLNode;MawbNode:IXMLNode;FileName:string):Integer;
var
  MawbId:String;
  hawbNodes :IXMLNodeList;
  hawbNode:ixmlnODE;
  hawbItemNodes:IxmlNodeList;
  hawbItemNode:IxmlNode;
  j,k:Integer;
  MawbSerial:Integer;
  Hawbserial:integer;
  hawb:string;
  isNewMawb:Boolean;
  HawbAge:THawbAge;
//  OldmawbRec:TmawbRec;
  newEqId:String;
  CountNew,CountSame,CountPartial:integer;
  MawbMessage:String;
  ClearingInstruction:String;
  ArrivalDate:TDate;
  DepartureDate:TDate;
  OldMawbSerial:Integer;
  TraderId:Integer;

begin
  CountNew:=0;
  CountSame:=0;
  CountPartial:=0;
//  ksOpenTables([MawbSQL,HawbSQL,SenderInvoiceSQL,HawbItemSQL]);

  MawbId:=MawbNode.ChildNodes['TDOCNo'].Text;
  ArrivalDate   :=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text);
  DepartureDate :=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text);


  hawbNOdes:=MawbNOde.ChildNodes['Shps'].ChildNodes;

  for j:= 0 to hawbNodes.Count -1 do begin
      hawbNode:=hawbNodes[j];
      hawb:=hawbNode.ChildNodes['HAWB'].Text;

      hawbAge:=haOld;
      case hawbAge of
        haNotFound,haOld: begin
            inc(countNew);
            HawbSerial := CreateHawb(MawbSerial,hawbNode);


            hawbItemNodes:=hawbNode.ChildNodes['LineItems'].ChildNodes;
            for k:= 0 to hawbItemNodes.Count -1 do begin
              hawbItemNode:= hawbItemNodes[k];
//              CreateHawbItem(MawbSerial,Hawbserial,HawbItemNode);
            end;
        end;
        haSame: begin
            inc(countSame);
//            HawbSerial := UpdateHawb(HawbSerial,HawbNode);
            continue;
        end;
        haPartial: begin
            inc(countPartial);
//            CreatePartialHawb(hawb,Mawbserial,hawbNode);
        end;
      end;


  end;

  if IsNewMawb then
    MawbMessage:='New Mawb Created:'
  else
    MawbMessage:='EXISTING Mawb UPDATED:';

  MessagesMemo.Lines.Add(MawbMessage+MawbId);
  MessagesMemo.Lines.Add('------Hawbs Created:'+IntToStr(CountNew));
  MessagesMemo.Lines.Add('------Partial Hawbs:'+IntToStr(CountPartial));
  MessagesMemo.Lines.Add('------Rejected Same Hawbs:'+InttoStr(CountSame));
  result:=CountNew;
end;



function TX_readFileFRM.findMawb(Const MawbId:String):TmawbRec;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select reference_number,Mawb_id,DHL_Equipment_id,date_arrived from Mawb where Mawb_id= :MawbID');
  try
  qr.ParamByName('MawbID').Value:=MawbId;
  qr.Open;
  result.mawbSerial:=qr.FieldByName('reference_number').AsInteger;
  result.MawbId:=qr.FieldByName('Mawb_id').AsString;
  result.EquipmentId:=qr.FieldByName('DHL_EQUIPMENT_ID').AsString;
  result.ArrivalDate:=qr.FieldByName('date_arrived').AsDateTime;
  result.FileName:=qr.FieldByName('fiLE_nAME_XML').AsString;
  close;
  finally
    qr.Free;
  end;

End;
function TX_readFileFRM.isPartialMawb(const mawbNode:IXMLNode):Integer;
// same mawb, same date arrived and depart
var
  qr:TksQuery;
  str:String;
  MawbId:String;
  ArrivalDate,DepartureDate:TDate;
begin
  result:=0;
  MawbId:=MawbNode.ChildNodes['TDOCNo'].Text;

  ArrivalDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text);
  DepartureDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text);

  str:=  'select reference_Number from mawb ma '
    +' where ma.mawb_id= :mawbId and ma.date_depart= :dateDepart';
  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('MawbID').Value:=MawbId;
//    qr.ParamByName('DateArrived').AsDate:= ArrivalDate;
    qr.ParamByName('DateDepart').AsDate := DepartureDate;
    qr.Open;
    result := qr.FieldByName('reference_number').AsInteger;
    close;
  finally
    qr.Free;
  end;

End;
function TX_readFileFRM.isOldMawb(const mawbNode:IXMLNode):Integer;
// same mawb, but different date arrived and depart
var
  qr:TksQuery;
  str:String;
  MawbId:String;
  ArrivalDate,DepartureDate:TDate;
begin
  result:=0;
  MawbId:=MawbNode.ChildNodes['TDOCNo'].Text;

  ArrivalDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text);
  DepartureDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text);

  //check both arrived and depart because arrive may be null and it would be the same anyway
  str:=  'select reference_Number from mawb ma '
    +' where ma.mawb_id= :mawbId and (  ma.date_depart<> :dateDepart)';
  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('MawbID').Value:=MawbId;
//    qr.ParamByName('DateArrived').AsDate:= ArrivalDate;
    qr.ParamByName('DateDepart').AsDate := DepartureDate;
    qr.Open;
    result := qr.FieldByName('reference_number').AsInteger;
    close;
  finally
    qr.Free;
  end;

End;
function TX_readFileFRM.isMawbFileExists(const HeaderNode:IXMLNode;const mawbNode:IXMLNode):Boolean;
//will only check the first mawb in the file, since same mawb may exist in the same file
// same mawb, same date arrived but different file

var
  qr:TksQuery;
  str:String;
  MawbId:String;
  MsgTime:TDateTime;
  fileName:String;
begin

  MawbId:=MawbNode.ChildNodes['TDOCNo'].Text;

  Str:= HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgDate'].Text
  +' '+ HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgTime'].Text;
  MsgTime:=ConvertUTCTimeStampF(str);

//
//  str:= 'select reference_Number ,FILE_NAME_XML from mawb ma'
//  +' where ma.mawb_id= :mawbId and ma.msg_time= :MsgTime';
//
//  try
//    qr:=TksQuery.Create(cn,str);
//    qr.ParamByName('MawbID').Value:=MawbId;
//    qr.ParamByName('MsgTime').AsDateTime:=MsgTime;
//    qr.Open;
//    fileName:=qr.FieldByName('FILE_NAME_XML').AsString;
//    result:= not qr.IsEmpty;
//    close;
//  finally
//    qr.Free;
//  end;

result:=false;
  if (result) then begin
    MessagesMemo.Lines.add('*******ERROR - SAME Mawb (Msg_Time) already EXISTS'+'Mawb id: '+ MawbId );
    MessagesMemo.Lines.add('----- Previous FileName '+ FileName );
    ShowMessage('*******ERROR - SAME Mawb (Msg_Time) already EXISTS');
    Self.ModalResult:=mrNone;
  end;

End;
function TX_readFileFRM.findHawbSmart(Const HawbId:String;Const mawbId:string; Const FileName:String):THawbAge;
var
//  qr:TksQuery;
  str:String;
  oldMawbId:string;
  oldMawbSerial:Integer;
  OldEqid:string;
  daysOld:Integer;
begin

  result:=haNotFound;

  //Same -- Same Mawb, same file
  //it's ok and will update the existing hawb
  str:='select ha.serial_number from hawb ha '
  +' left outer join mawb ma on ha.fk_mawb_refer_number=ma.reference_number'
  +' where hab_id = :hawbId'
  +' and ma.mawb_id= :MawbId'
  +' and ma.file_name_xml= :fileName';

  if ksCountRecSQL(cn,str,[hawbId,MawbId,Filename])>0 then begin
    result:=haSame;
    exit;
  end;

  //Duplicate -- Same mawb, different file
  str:='select ha.serial_number from hawb ha '
  +' left outer join mawb ma on ha.fk_mawb_refer_number=ma.reference_number'
  +' where hab_id = :hawbId'
  +' and ma.mawb_id= :MawbId'
  +' and ma.file_name_xml <> :fileName';
  if ksCountRecSQL(cn,str,[hawbId,MawbId,filename])>0 then begin
    result:=haDuplicate;
    exit;
  end;


//Partial -- Different mawb, recent 30 days (file doesn't matter anyway)
Str:= 'select alla.serial_number ,alla.fk_mawb_refer_number, alla.daysOld'
+' from ('
+' select ha.serial_number, hab_id,ha.fk_mawb_refer_number, ha.date_registered,'
+'  ( cast(''now'' as date) - ha.date_registered ) as DaysOld, ma.reference_number, ma.mawb_id'
+'  from hawb ha'
+'  left outer join mawb ma'
+'  on ha.fk_mawb_refer_number=ma.reference_number'
+'  where  hab_id = :HawbId'
+'  and ma.mawb_id <> :MawbId'
//+' and ma.file_name_xml <> :fileName'
+'  ) as alla'
+' where alla.daysOld <= 30';
  if ksCountRecSQL(cn,str,[hawbId,MawbId])>0 then begin
    result:=haPartial;
    exit;
  end;

// Old and different -- Different mawb, old hawb in the past (same or other file doesnt matter really)
// (this is just an old valid hawb)
Str:= 'select alla.serial_number ,alla.fk_mawb_refer_number, alla.daysOld'
+' from ('
+' select ha.serial_number, hab_id,ha.fk_mawb_refer_number, ha.date_registered,'
+'  ( cast(''now'' as date) - ha.date_registered ) as DaysOld, ma.reference_number, ma.mawb_id'
+'  from hawb ha'
+'  left outer join mawb ma'
+'  on ha.fk_mawb_refer_number=ma.reference_number'
+'  where  hab_id = :HawbId'
+'  and ma.mawb_id <> :MawbId'
+'  ) as alla'
+' where alla.daysOld > 30';
  if ksCountRecSQL(cn,str,[hawbId,MawbId])>0 then begin
    result:=haOld;
    exit;
  end;

End;
function TX_readFileFRM.findHawb(Const HawbId:String;Mawbserial:Integer):boolean;
var
  qr:TksQuery;
  str:String;
begin
//if there is a recent hawb (in less than 20 days) then it is a partial hawb
  Str:= 'select ha.serial_number from hawb ha where hab_id = :hawbId and fk_mawb_refer_number=  :mawbserial';
  result:=ksCountRecSQL(cn,str,[hawbId,IntToStr(MawbSerial)])>0 ;

End;
function TX_readFileFRM.CreateMawb(Const MawbId:String;Const HeaderNode:IXMLNode;Const MawbNode:IXMLNode;Const FileName:String):integer;
var
  ArrivalDate:TDate;
  DepartureDate:TDate;
//  ArrivalDate2:TDate;
  temp:String;
  Movement:String;
  str:string;
  MsgTime:TDateTime;
begin

  if MawbSQL.Active then
    MawbSQL.close;




  MawbSql.Open;
  MawbSQl.Edit;
  MawbSQL.FieldByName('Mawb_id').Value:=MawbId;
  mawbSQL.FieldByName('FILE_NAME_XML').value := TPath.GetFileName(FileName);

  if Trim(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text) ='' then begin
    ArrivalDate:=now;
  end else begin
    ArrivalDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text);
  end;
  mawbSQL.FieldByName('date_arrived').value  :=arrivalDate;

  DepartureDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text);
  mawbSQL.FieldByName('date_depart').value  :=DepartureDate;


  temp:= mawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text;
  mawbSQL.FieldByName('FORM_DATE').value  := ConvertDateF(temp);

  temp:= mawbNode.ParentNode.ParentNode.ChildNodes['MvmtNo'].Text;
  mawbSQL.FieldByName('FLIGHT_NUMBER').value  := temp;

  MawbSQL.FieldByName('REFERENCE_YEAR').Value:=yearOf(arrivalDate);
  MawbSQL.FieldByName('Passed').Value:='N';
  MawbSQL.FieldByName('DHL_EQUIPMENT_ID').Value:=mawbNode.ChildNodes['EquipmentID'].Text;

   Movement:=MawbNode.ParentNode.ParentNode.ChildNodes['MvmtNo'].Text;
   MawbSQL.FieldByName('MOVEMENT_NUMBER').Value:=Movement;

  Str:= HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgDate'].Text
  +' '+ HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgTime'].Text;
  MsgTime:=ConvertUTCTimeStampF(str);
  MawbSQL.FieldByName('MSG_TIME').AsDateTime:=MsgTime;



  MawbSQL.Post;
  result:=MawbSQL.FieldByName('Reference_number').AsInteger;

  MawbSQL.Close;
end;
procedure TX_readFileFRM.DeleteMawb(aMawbSerial:Integer);
var
  multiSQL:TksMultiSQL;
  hiStr:String;
//  mawbSerial:String;
begin
//    mawbserial:= IntToStr(aMawbSerial);
    hiStr:= 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in '
    + '( select hi.serial_number from  hawb_item hi where hi.fk_mawb= :mawb)';

    ksExecSQLVar(cn,hiStr,[aMawbSerial]);
    ksExecSQLVar(cn,'delete from hawb_comments hc where hc.fk_hawb_serial in '
         +' (select serial_number from hawb ha where hc.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number= :mawb)',[aMawbserial]);
    ksExecSQLVar(cn,'delete from hawb_partial where FK_MAWB_SERIAL_ORIGINAL = :mawb',[aMawbSerial] );
    ksExecSQLVar(cn,'delete from hawb_partial hp where hp.fk_mawb_serial_arrived  = :mawb ',[aMawbSerial] );
    ksExecSQLVar(cn,'Delete from hawb_item hi where hi.fk_hawb_serial in(select serial_number from hawb ha where ha.fk_mawb_refer_number= :mawb)',[amawbSerial]);
    ksExecSQLVar(cn,'delete from sender_invoice where fk_Mawb_serial= :mawb' ,[amawbSerial]);
    ksExecSQLVar(cn,'delete from hawb where fk_mawb_refer_number = :mawb ',[amawbSerial]) ;



   end;
procedure TX_readFileFRM.DeleteallMawbs(aMawbSerial:Integer);
var
  multiSQL:TksMultiSQL;
  hiStr:String;

begin
//    mawbserial:= IntToStr(aMawbSerial);
    hiStr:= 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in '
    + '( select hi.serial_number from  hawb_item hi where hi.fk_mawb>= :mawb)';

    ksExecSQLVar(cn,hiStr,[aMawbSerial]);
    ksExecSQLVar(cn,'delete from hawb_comments hc where hc.fk_hawb_serial in '
         +' (select serial_number from hawb ha where hc.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number >= :mawb)',[amawbserial]);
    ksExecSQLVar(cn,'delete from hawb_partial where FK_MAWB_SERIAL_ORIGINAL >= :mawb',[aMawbSerial] );
    ksExecSQLVar(cn,'delete from hawb_partial hp where hp.fk_mawb_serial_arrived  >= :mawb ',[aMawbSerial] );
    ksExecSQLVar(cn,'Delete from hawb_item hi where hi.fk_hawb_serial in(select serial_number from hawb ha where ha.fk_mawb_refer_number >= :mawb)',[amawbSerial]);
    ksExecSQLVar(cn,'delete from sender_invoice where fk_Mawb_serial >= :mawb' ,[amawbSerial]);
    ksExecSQLVar(cn,'delete from hawb where fk_mawb_refer_number >= :mawb ',[amawbSerial]) ;



   end;
procedure TX_readFileFRM.Button2Click(Sender: TObject);
begin
DeleteHawb(StrToIntDef(ValueFLD.Text,0));
end;

procedure TX_readFileFRM.AllClick(Sender: TObject);
begin
DeleteAllMawbs(StrToIntDef(ValueFLD.Text,0));
end;

procedure TX_readFileFRM.Button1Click(Sender: TObject);
begin
  DeleteMawb(StrToIntDef(ValueFLD.Text,0) );
end;



function TX_readFileFRM.CreateHawb(Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
var
HawbSerial:Integer;
  qr:TIBCQuery;
  siSQL:TIBCQuery;
  temp:string;
  senderNode:IXMLNode;
  CustomerNode:IXMLNode;
  ClearingInstruction:String;
  Currency:String;
  TraderId:String;
  hawbId:String;
  isDTP:String;
  isError:boolean;
begin


    HawbId:= hawbNode.ChildNodes['HAWB'].Text;
    senderNode:=hawbNode.ChildNodes['ShpCnsgnr'].ChildNodes['CnsgnrCoDtls'];
    CustomerNode:=hawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'];
//      codesite.Send('HawbID'+HawbId);

    qr:=TksQuery.Create(cn,'Select * from airwaybill where serial_number= -1');
    try
    qr.Open;
    qr.Insert;
    isError:=false;

     qr.FieldByName('serial_number').Value:= G_KyrSQL.ksGenerateSerial(cn,'AIRWAYBILL_GENERATOR');
     qr.FieldByName('Hawb_id').Value:= hawbNode.ChildNodes['HAWB'].Text;
     qr.FieldByName('weight').Value:= G_generalProcs.ConvertDecimalF(hawbNode.ChildNodes['GrossWgt'].Text);
     qr.FieldByName('SHIPMENT_ORIGIN_AREA').Value:= hawbNode.ChildNodes['ShpOrgn'].Text;
     qr.FieldByName('SHIPMENT_ORIGIN_COUNTRY').Value:= hawbNode.ChildNodes['ShpCtryOrgn'].Text;


     qr.FieldByName('DESCRIPTION').Value:= hawbNode.ChildNodes['CargoDesc'].Text;
     qr.FieldByName('CUSTOMS_VALUE').Value:= ConvertDecimalF( hawbNode.ChildNodes['CstmsVal'].Text);
     qr.FieldByName('CURRENCY').Value:= hawbNode.ChildNodes['CstmsValCrncyCd'].Text;
     qr.FieldByName('INCOTERMS').Value:= hawbNode.ChildNodes['Incoterms'].Text;
     qr.FieldByName('SERVICE_CODE').Value:= hawbNode.ChildNodes['DHLServiceCd'].Text;

     qr.FieldByName('PIECES').Value:= hawbNode.ChildNodes['SDPieces'].Text;
     //qr.FieldByName('VALUE_TYPE').Value:= hawbNode.ChildNodes['Category'].Text;
     qr.FieldByName('ACCOUNT_NUMBER').Value:= hawbNode.ChildNodes['DHLAcctNo'].Text;
     qr.FieldByName('PAYMENT_METHOD').Value:= hawbNode.ChildNodes['X_PaymentMethod'].Text;


     qr.FieldByName('Sender_name').Value:=senderNode.ChildNodes['CoName'].Text;
     qr.FieldByName('SENDER_ADDRESS_1').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn1'].Text;
     qr.FieldByName('SENDER_ADDRESS_2').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn2'].Text;
     qr.FieldByName('SENDER_ADDRESS_2').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn2'].Text;
     qr.FieldByName('SENDER_ADDRESS_3').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn3'].Text;
     qr.FieldByName('SENDER_POST_CODE').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['PostalCd'].Text;
     qr.FieldByName('SENDER_CITY').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['City'].Text;
     qr.FieldByName('SENDER_COUNTRY_CODE').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['CtryCd'].Text;


     qr.FieldByName('SENDER_DEVICE_TYPE').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['DeviceType'].Text;
     qr.FieldByName('SENDER_DEVICE_DETAILS').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['DeviceDtls'].Text;
     qr.FieldByName('SENDER_PREFERRED_NAME').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['PreferredName'].Text;


     qr.FieldByName('CONSIGNEE_NAME').Value:=CustomerNode.ChildNodes['CoName'].Text;
     qr.FieldByName('CONSIGNEE_ADDRESS_1').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['AddrLn1'].Text;
     qr.FieldByName('CONSIGNEE_ADDRESS_2').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['AddrLn2'].Text;
     qr.FieldByName('CONSIGNEE_ADDRESS_3').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['AddrLn3'].Text;
     qr.FieldByName('CONSIGNEE_POST_CODE').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['PostalCd'].Text;
     qr.FieldByName('CONSIGNEE_CITY').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['City'].Text;
     qr.FieldByName('CONSIGNEE_COUNTRY_CODE').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['CtryCd'].Text;


     qr.FieldByName('CONSIGNEE_DEVICE_TYPE').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['DeviceType'].Text;
     qr.FieldByName('CONSIGNEE_DEVICE_TYPE').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['DeviceDtls'].Text;
     qr.FieldByName('CONSIGNEE_PREFERRED_NAME').Value:=CustomerNode.ChildNodes['AddrEng'].ChildNodes['PreferredName'].Text;





      qr.Post;
    finally
     qr.Free;
//      G_DebugUnit.GD_ShowDataRecord(qr);
    end;


    result:=HawbSerial;

end;

function TX_readFileFRM.CreatePartialHawb(Const hawbId:String ;Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
var
  qr:TksQuery;
  oh:TksQuery;
  SerialNumber:Integer;
  OldHawbSerial:Integer;
  OldMawbSerial:Integer;
  OldMawbId:String;
begin

  try
    oh:=TksQuery.Create(cn,'SELECT NEXT VALUE FOR HAWB_PARTIAL_GENERATOR FROM RDB$DATABASE');
    oh.Open;
    SerialNumber :=oh.FieldByName('GEN_ID').AsInteger;
    oh.Close;
  finally
    oh.Free;
  end;

  try
    oh:=TksQuery.Create(cn,'select serial_number, hab_id, fk_mawb_refer_number from hawb where hab_Id= :HawbId');
    oh.ParamByName('hawbId').Value:=hawbId;
    oh.Open;

    qr:=TksQuery.Create(cn,'select * from hawb_partial where serial_number =0 ');
    qr.Open;
    qr.Insert;
    qr.FieldByName('serial_number').value:=SerialNumber;

    qr.FieldByName('FK_HAWB_SERIAL_ORIGINAL').value := oh.FieldByName('serial_number').AsInteger;
    qr.FieldByName('FK_HAWB_ID_ORIGINAL').value     := oh.FieldByName('hab_id').AsString;

    qr.FieldByName('FK_MAWB_SERIAL_ORIGINAL').value := oh.FieldByName('fk_mawb_refer_number').AsInteger;
    qr.FieldByName('FK_MAWB_ID_ORIGINAL').value     := ''; //not used anymore

    qr.FieldByName('FK_MAWB_SERIAL_ARRIVED').value  := MawbSerial;
    qr.FieldByName('FK_MAWB_ID_ARRIVED').value      :='';

    qr.FieldByName('PARTIAL_WEIGHT').value          := ConvertDecimalF(hawbNode.ChildNodes['GrossWgt'].Text);
    qr.FieldByName('PARTIAL_PIECES').value          := StrToIntDef(hawbNode.ChildNodes['ManifestedPieces'].Text,0);
    qr.FieldByName('PARTIAL_DELIVERY_ORDER_ID').value := HawbId;
    qr.FieldByName('DESCRIPTION').value             := hawbNode.ChildNodes['CargoDesc'].Text;


    qr.Post;
    result:=0;
    qr.close;
    oh.Close;
  finally
    qr.Free;
    oh.free;
  end;

end;

function TX_readFileFRM.UpdateHawb(Const HawbSerial:Integer; hawbNode:IXMLNode):Integer;
var
  PiecesArrived:Integer;
begin
  piecesArrived:=StrToIntDef( hawbNode.ChildNodes['ManifestedPieces'].Text,0);
  ksExecSQLVar(cn,'update hawb set NUM_OF_PIECES_ARRIVED = NUM_OF_PIECES_ARRIVED + :pieces where serial_number= :serial',[PiecesArrived,HawbSerial]);

end;




function TX_readFileFRM.UpdateCustomer(Const HawbSerial:Integer; const TraderId:integer; Const hawbNode:IXMLNode):Integer;
var
  qr:TksQuery;
  str:string;
  addr:IXMLNode;
  Name:string;
  Device:String;
  Phone:string;
begin
  addr:=HawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'].ChildNodes['AddrEng'];

  Name:=Copy(HawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'].ChildNodes['CoName'].Text,1,80);
  phone:=Copy(addr.ChildNodes['Cntct'].ChildNodes['CntctDevices'].ChildNodes['DeviceDtls'].Text,10);

  Str:=' Update customer set name= :CustomerName, Address1= :Address1, Address2= :Address2, Address3= :Address3, '
  +'ADDRESS_POST_CODE= :post ,ADDRESS_CITY= :city ,ADDRESS_COUNTRY = :country, TEL_NO1 = :tel'
  +' where code= :CustomerCode';

  ksExecSQLVar(cn,str,[
  Name,
  Copy(addr.ChildNodes['AddrLn1'].text,1,50),
  Copy(addr.ChildNodes['AddrLn2'].text,1,50),
  Copy(addr.ChildNodes['AddrLn3'].text,1,50),
  Copy(addr.ChildNodes['PostalCd'].text,1,50),
  Copy(addr.ChildNodes['City'].text,1,50),
  Copy(addr.ChildNodes['CtryCd'].text,1,50),
  Phone,
  TraderId
   ]);

end;



function TX_readFileFRM.CreateHawbItem(Const mawbSerial:Integer; Const hawbSerial:Integer ; hawbItemNode:IXMLNode):Integer;
var
  OldMawbId:String;
  HawbNode:IXMLNode;
  Count:Integer;
  Weight:Double;
//  unit:string;
begin
  try
  HawbItemSQL.Insert;
  HawbItemSQL.FieldByName('FK_MAWB').Value              := MawbSerial;
  HawbItemSQL.FieldByName('FK_HAWB_SERIAL').Value       := HawbSerial;
  HawbItemSQL.FieldByName('FK_SENDER_INVOICE_SERIAL').Value := 1;

  HawbItemSQL.FieldByName('PRE_DISCOUNT_AMOUNT').value  := ConvertDecimalF( hawbItemNode.ChildNodes['InvLineVal'].Text);
  HawbItemSQL.FieldByName('DESCRIPTION').value          := hawbItemNode.ChildNodes['DescOfGoods'].Text;
  HawbItemSQL.FieldByName('NET_QUANTITY').value         := math.Ceil ( ConvertDecimalF(HawbItemNode.ChildNodes['TariffQnty'].Text) );
//  HawbItemSQL.FieldByName('INVOICE_VALUE').value        := ConvertDecimalF( hawbItemNode.ChildNodes['UnitPrice'].Text);
  HawbItemSQL.FieldByName('CURRENCY').value             :=hawbItemNode.ChildNodes['InvCrncyCd'].Text;
//  HawbItemSQL.FieldByName('IMPORT_DUTY_RATE_UNIT').value :=hawbItemNode.ChildNodes['DescOfGoods'].Text;

   HawbNode:=hawbItemNode.ParentNode.ParentNode;
   Count:=HawbNode.ChildNodes['LineItems'].ChildNodes.Count;

    Weight:= ConvertDecimalF(HawbNode.ChildNodes['GrossWgt'].Text);
    if Count>0 then begin
      weight:=weight/Count;
    end;
    HawbItemSQL.FieldByName('WEIGHT_NET').value:=Weight;

  HawbItemSQL.FieldByName('FK_COUNTRY_ORIGIN').value    :=FindCountry(hawbItemNode.ChildNodes['CtryMfctrerOrgn'].Text);

  HawbItemSQL.FieldByName('unit').value    :=FindDefaultUnit();


  HawbItemSQL.Post;
  except
      G_DebugUnit.GD_ShowDataRecord(HawbItemSQL);
      ShowMessage('HawbItem error: hawb-serial= '+IntToStr(hawbSerial));
      HawbItemSQL.Cancel;
      result:=0;
      exit;

  end;

end;



Function TX_readFileFRM.FindCountry(Const CountryStr:String):Integer;
var
  qr:TksQuery;
Begin
  qr:=TksQuery.Create(cn,'select number from country where XML_Country= :XmlCountry');
  try
    qr.ParamByName('XMLCountry').Value:=CountryStr;
    qr.Open;
    result:=qr.FieldByName('Number').AsInteger;
    qr.Close;
  finally
    qr.free;
  end;
end;

function  TX_readFileFRM.FindWaitingReason(Const Code4:String):String;
var
  qr:TksQuery;
Begin
     if Code4='' then begin
        result:='';
        exit;
     end;

     qr:=TksQuery.Create(cn,'Select * From Clearance_Waiting_code where code_4= :XMLCode');
     try
      qr.ParamByName('XMLCode').Value:= Code4;
      qr.Open;
      If (not qr.IsEmpty) then begin
            Result:=qr.FieldByName('CODE').AsString;
      end else begin
            Result:='';
      end;

     finally
       qr.Free;
     end;

End;

function  TX_readFileFRM.GetClearingInstruction(Const HawbSerial:Integer):String;
var
  qr:TksQuery;
Begin
     qr:=TksQuery.Create(cn,'Select fk_clearance_instruction From hawb Where serial_number= :HawbSerial');
     try
      qr.ParamByName('HawbSerial').Value:= HawbSerial;
      qr.Open;
      Result:=qr.FieldByName('FK_clearance_instruction').AsString;
     finally
       qr.Free;
     end;

End;

function  TX_readFileFRM.FindExchangeRate(Const Currency:String):Double;
var
  qr:TksQuery;
Begin
     qr:=TksQuery.Create(cn,'Select rate From EXCHANGE_RATE Where fk_currency_code= :Currency');
     try
      qr.ParamByName('Currency').Value:= currency;
      qr.Open;
      Result:=qr.FieldByName('Rate').AsFloat;
     finally
       qr.Free;
     end;

End;



function  TX_readFileFRM.FindClearanceInstruction(Const CodeVal:String):String;
begin

         If (Trim(CodeVal)='1')or (Trim(CodeVal)='2')or(Trim(CodeVal)='3') then begin
              result:='LOW';
        end else If (Trim(CodeVal)='4') then begin
                result:='MED';
        end else If (Trim(CodeVal)='5')or (Trim(CodeVal)='6')or(Trim(CodeVal)='7') then begin
              result:='IM4';
        end else begin
              result:='IM4';
        end;
  end;


Function TX_readFileFRM.GetTheFile:String;
Var
//        Success:integer;
        DefaultDir:String;
        ParamRec:TParameterRecord;
Begin
        DefaultDir:= GN_GetTheSystemParameter(cn, 'F_1').P_String4;
        If DefaultDir='' then begin
          MessageDlg('Menu ->System->Params-> System Parameters. Then Add record with Code=F1 ', mtWarning, [mbOK], 0);
        end;

        OpenFileDLG.InitialDir:=Defaultdir;
        OpenFIleDLG.Filter:='No Extention|*.;XML|*.XML';

        with OpenfileDLG do begin
                if Execute then begin
                        Result:= Filename;
                end else begin
                        Result:='';
                end; //execute
        end;{with}
End;




procedure TX_readFileFRM.DeleteHawb(hawbSerial:Integer);
var
  multiSQL:TksMultiSQL;
  hiStr:String;
  HawbStr:string;
begin
  HawbStr:=IntToStr(HawbSerial);
   try
    hiStr:= 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in '
    + '( select hi.serial_number from  hawb_item hi where hi.fk_hawb_serial = :hawb )';

    multiSQL:=TksMultiSQL.Create(cn)
    .add(hiStr,[HawbStr])
    .add('delete from hawb_comments where fk_hawb_serial = :hawb',[HawbStr] )
    .add('delete from hawb_partial where FK_HAWB_SERIAL_ORIGINAL = :hawb',[HawbStr] )
    .add('delete from hawb_item where fk_hawb_serial =:hawb',[HawbStr] )
    .add('delete from sender_invoice where fk_hawb_serial = :hawb' ,[HawbStr])
    .add('delete from hawb where serial_number = :hawb',[HawbStr])
    .ExecSQL();

   finally
     multiSQL.Free;
   end;

end;

Function TX_readFileFRM.GetDefaultMediumVatRate():Double;
var
  qr:TksQuery;
begin
    result:=0;
    qr:=TksQuery.Create(cn, 'select rate from VAT_Category where code= ''MED'' ');
    try
      qr.Open;
      Result:=qr.FieldByName('rate').AsFloat;
    finally
      qr.Free;
    end;

end;




END.





