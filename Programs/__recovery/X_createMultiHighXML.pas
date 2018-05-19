unit X_createMultiHighXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.adomxmldom, Xml.XMLDoc, vcl.wwbutton, Xml.Win.msxmldom, Data.DB, MemDS,
  DBAccess, IBC, RzLabel;

type
  TX_CreateMultiHighXmlFRM = class(TForm)
    Button1: TButton;
    XMLDoc: TXMLDocument;
    XMLDocNew: TXMLDocument;
    wwButton1: TwwButton;
    RzLabel1: TRzLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
        cn:TIBCConnection;
    Function TestOne(Const HawbSerial:Integer):String;

    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;overload;
    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode; overload;
    Function  AddAtrribute(HeaderNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
    function CreateXmlNodeNew(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; ElementType: TNodeType =ntElement):IXMLNode;
    function TBLCreateXMLNode(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; Dataset: TDataset; FieldName:String; ElementType: TNodeType =ntElement):IXMLNode;


  function CreateNodeHeader( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateNodeAirwayBills( Const FlightSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateNodeForItems( Const AirwaybillSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateNodeFlightCountries( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;


  public
    { Public declarations }
    IN_FlightSerial:Integer;
    procedure CreateOneAirwabillXML(Const SerialNumber:Integer);
  Function  CreateMultiXML(Const FlightOutSerial:Integer):Integer;

  end;

var
  X_CreateMultiHighXmlFRM: TX_CreateMultiHighXmlFRM;

implementation

{$R *.dfm}

uses MainForm, GeneralParametersNew, G_KyrSQL, G_generalProcs;

procedure TX_CreateMultiHighXmlFRM.Button1Click(Sender: TObject);
begin

CreateMultiXML(IN_FlightSerial);

end;


Function TX_CreateMultiHighXmlFRM.TestOne(Const HawbSerial:Integer):String;
var
  destPath:String;
  LDocument: IXMLDocument;
  DomImpl: IDOMImplementation;
  LNodeElement, NodeCData, NodeText: IXMLNode;
  DTDNode, HeaderNode,fNode:IXMLNode;
  GenNOde:IXMLNode;
  MawbSerial:Integer;
  CustomerSerial:Integer;
  val:string;
  count:integer;
  HouseDir:String;
  hawbId:string;


begin

end;

procedure TX_CreateMultiHighXmlFRM.CreateOneAirwabillXML(Const SerialNumber:Integer);

begin

end;




function TX_CreateMultiHighXmlFRM.CreateXmlNodeNew(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; ElementType: TNodeType =ntElement):IXMLNode;
Var
  HeaderNode:IXMLNode;
   CxFather:IXMLNode;
   TheElement:IXMLNode;
   TheTextElement:IXMLNode;
//   TheAttr:TDomAttr;
Begin

  HeaderNode:=ElementFather.AddChild(ElementName,-1);
  if (Trim(ElementValue)>'') and (ElementType=ntText) then
    HeaderNode.Text:=ElementValue;
  result:=HeaderNode;

End;

procedure TX_CreateMultiHighXmlFRM.FormCreate(Sender: TObject);
begin
  cn:= MainFormFRM.CabOutData;
end;

function TX_CreateMultiHighXmlFRM.TBLCreateXMLNode(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; Dataset: TDataset; FieldName:String; ElementType: TNodeType =ntElement):IXMLNode;
Var
   CxFather:IXMLNode;
   TheElement:IXMLNode;
   TheTextElement:IXMLNode;
   MyValue:String;
//   TheAttr:TDomAttr;
Begin
//     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfItems','',Dataset,'ITEMS_COUNT',ntText);

  If Dataset.FieldBYName(FieldName).DataType in [ftfloat,ftSingle] then begin
       MyValue:=gpFloatToStr(dataset.FieldBYName(FieldName).AsFloat,3);
//        MyValue:=format('%.3f',[dataset.FieldBYName(FieldName).AsFloat]);
  end else begin
        MyValue:=Trim(dataset.FieldBYName(FieldName).AsString);
  end;
     //If MyValue='' then
        //MyValue:= ElementName;
     CreateXMLNodeNew(XMLDoc,ElementFather,ElementName,MyValue,ntText);

End;


Function TX_CreateMultiHighXmlFRM.AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Attributes['VALUE']:=NodeText;
end;

Function TX_CreateMultiHighXmlFRM.AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Attributes[AttributeName]:=AttributeText;
end;

Function TX_CreateMultiHighXmlFRM.AddAtrribute(HeaderNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
Begin
  HeaderNode.Attributes[AttributeName]:=AttributeText;
  result:=HeaderNode;
end;



Function TX_CreateMultiHighXmlFRM.CreateMultiXML(Const FlightOutSerial:Integer):integer;
var
  FDoc:IXMLDocument;
  TheRoot:IXMLNode;
  HeaderNode:IXMLNode;
  strXMl:String;
  FileName:String;

  temp:String;
  FQr: TksQuery;
  Mawb:String;
  flightSerial:Integer;

Begin
  fQr:=TksQuery.Create(cn,' select *  from Flight_out where serial_number= :Serial');
  try
    fQr.ParambyName('serial').Value:= FlightOutSerial;
    fQr.Open;
    Mawb:=fQr.FieldByName('Mawb').AsString;
    ShowMessage(Mawb);

    FDoc:=XMLDocNew;
    FDoc.active:=false;
    Fdoc.XML.Text:='';
    FDoc.Active := True;
    FDoc.Version := '1.0';
    FDoc.Encoding := 'UTF-8';

    TheRoot := FDoc.AddChild('CC515A');
    TheRoot.SetAttributeNS('xmlns', '', 'http://www.eurodyn.com' );
     /////////////////////////////////////////////////////////////////////////
    CreateNodeHeader(FlightOutSerial,Fdoc,TheRoot);
    CreateNodeAirwayBills(FlightOutSerial,Fdoc,TheRoot);
    CreateNodeFlightCountries(FlightOutSerial,Fdoc,TheRoot);
     /////////////////////////////////////////////////////////////////////////
    strXML := StringReplace(FDoc.XML.Text, ' xmlns=""', '', [rfReplaceAll]);
    FDoc := LoadXMLData(strXML);
//     FileName:= DefaultDir+'\'+ Trim(OneFlightAirwaybillSQL.FieldByName('hawb_id').AsString)+'.xml';
    FileName:= 'C:\Data\DelphiProjects\TokyoCabOut\XML\OutputXML\High22.xml';
    FDoc.SaveToFile(FileName);

  finally
    fQr.Free;
  end;


end;

function TX_CreateMultiHighXmlFRM.CreateNodeHeader( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  qr:TksQuery;
  HeaderNode,x1Node:IXMLNode;
  val:String;
  addr:string;
  DString:String;
  MawbId:String;
  FlightName:string;
  DateDepart:Tdate;
begin
  val:=
  '   select'
  +'  fo.serial_number, fo.mawb, fo.Date_depart, ft.flight_name'
  +'   from flight_out fo'
  +'   left outer join flight_table ft on fo.fk_flight_table=ft.serial_number'
  +'   where fo.serial_number = :serial';
  Qr:=TksQuery.Create(cn,val);

  try
      Qr.ParambyName('serial').Value:= FlightOutSerial;
      Qr.Open;
      if qr.IsEmpty then
        exit;

      MawbId:=Qr.FieldByName('Mawb').AsString;
      FlightName:=Qr.FieldByName('Flight_name').AsString;
      DateDepart:=Qr.FieldByName('date_depart').AsDateTime;




     CreateXMLNodeNew(FDoc,FatherNode,'SyntaxIdentifier','UNOC',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'SyntaxVersionNumber','3',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'MessageSender','CY10016129G',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'SenderIdCodeQualifier','CY',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'MessageRecipient','NECA.CY',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'RecipientIdentifCodeQualifier','CY',ntText);
     DString:=FormatDateTime('YYMMDD',now);
     CreateXMLNodeNew(FDoc,FatherNode,'DateOfPreparation',DString,ntText);
     DString:=FormatDateTime('HHMM',now);
     CreateXMLNodeNew(FDoc,FatherNode,'TimeOfPreparation',DString,ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'InterchangeControlReference','CY823a7ac010e2',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'MessageIdentification','CY823a7ac010e2',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'MessageType','CC515A',ntText);

/////////////////////////////////


    //********************************************
     //Header515
     val:=MawbId+FormatDateTime('YYMMDDHHMMSS', now);
     x1node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515Header','',ntElement);
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber',val,ntText);

     CreateXMLNodeNew(FDoc,x1node,'TypeOfDeclaration','EX',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'CountryOfDestinationCode','TR',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoodsCode','LCA',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoods','ARADIPPOU',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoodsLNG','EN',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'CountryOfDispatchexportCode','CY',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'TransportModeAtBorder','4',ntText); //here

     //xxxx
     DString:= flight_name + FormatDateTime('dd/mm/yyy',DateDepart)
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransAtDeparture','3V167C',ntText); //here


     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransAtDepartureLNG','EN',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransCrossBorder','3V17C',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransCrossBorderLNG','EN',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'NationOfMeansTransCrossBorder','BE',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'ContainerisedIndicator','0',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'ECSAccompanyingDocLangCode','EN',ntText); //here


     DString:=FormatDateTime('YYYY-MM-DD"T00:00:00+03:00"',now);
     CreateXMLNodeNew(FDoc,x1node,'DeclarationDate',DString,ntText);

     CreateXMLNodeNew(FDoc,x1node,'DeclarationPlace','LARNACA',ntText);
     CreateXMLNodeNew(FDoc,x1node,'DeclarationPlaceLNG','EN',ntText);
     CreateXMLNodeNew(FDoc,x1node,'SpecificCircumstanceIndicator','A',ntText);

     CreateXMLNodeNew(FDoc,x1node,'TypeOfDeclarationBox12','A',ntText); //here



      qr.Close;
    finally
      qr.Free;
    end;

end;


function TX_CreateMultiHighXmlFRM.CreateNodeAirwayBills( Const FlightSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  HeaderNode:IXMLNode;
  x2Node:IXMLNode;
  val,temp:String;
  addr:string;
  DString:String;
  AirSerial:Integer;
  qr, qr2: TksQuery;
  ItemSerial:Integer;
    i:Integer;
begin
//    HeaderNode:= CreateXmlNodeNew(Fdoc,FatherNode,'AirwayBills','');


    Qr:=TksQuery.Create(cn,' select * from FLIGHT_AIRWAYBILL where FK_FLIGHT_OUT_SERIAL= :serial');
    try
      i:=0;
      Qr.ParambyName('serial').Value:= FlightSerial;
      Qr.Open;
//      name="Msg615ProducedDocumentsCertif"
      while (not qr.eof) do begin
        inc(i);
       airSerial:=qr.FieldByName('Serial_number').AsInteger;
       HeaderNode :=CreateXMLNodeNew(FDoc,FatherNode,'Msg615GoodsItem','',ntElement);
 //       TblCreateXMLNode(FDoc,HeaderNode,'City','',qr,'HAWB_ID',ntText);

//       TblCreateXMLNode(FDoc,HeaderNode,'ItemNumber','',qr,'SEQUENCE_NUMBER',ntText);
       CreateXMLNodeNew(FDoc,HeaderNode,'ItemNumber',intToStr(i),ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'GoodsDescription','',qr,'DESCRIPTION',ntText);
       CreateXMLNodeNew(FDoc,HeaderNode,'GoodsDescriptionLNG','EN',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'GrossMass','',qr,'WEIGHT',ntText);

       Temp:=qr.FieldByName('Payment_method').AsString;
        If temp='A'       then DString:='Y'
        else  if temp='C' then Dstring:='D'
        else  Dstring:='D';

       CreateXMLNodeNew(FDoc,HeaderNode,'TranspChargesMethodOfPayment',Temp,ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'CommercialReferenceNumber','',qr,'HAWB_ID',ntText);
       CreateXMLNodeNew(FDoc,HeaderNode,'UNDangerousGoodsCode','1',ntText);

       x2Node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg615ProducedDocumentsCertif',Temp,ntText);
       CreateXMLNodeNew(FDoc,x2node,'DocumentType','N741',ntText);
       TblCreateXMLNode(FDoc,x2node,'CommercialReferenceNumber','',qr,'HAWB_ID',ntText);


       //Consignor
       x2node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg615ConsignorTrader','',ntElement);
       TBLCreateXMLNode(FDoc,x2node,'TraderName','',qr,'SENDER_NAME',ntText);
       dString:=Trim(qr.fieldbyName('SENDER_ADDRESS_1').AsString)+','+Trim(qr.fieldbyName('SENDER_ADDRESS_2').AsString)+','+Trim(qr.fieldbyName('SENDER_ADDRESS_3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',qr,'SENDER_POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',qr,'SENDER_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',qr,'SENDER_COUNTRY_CODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);

       //Consignee
       x2node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg615Consignee','',ntElement);
       TblCreateXMLNode(FDoc,x2node,'TraderName','',qr,'CONSIGNEE_NAME',ntText);
       dString:=Trim(qr.fieldbyName('CONSIGNEE_ADDRESS_1').AsString)+','+Trim(qr.fieldbyName('CONSIGNEE_ADDRESS_2').AsString)+','+Trim(qr.fieldbyName('CONSIGNEE_ADDRESS_3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',qr,'CONSIGNEE_POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',qr,'CONSIGNEE_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',qr,'CONSIGNEE_COUNTRY_cODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);


//       CreateNodeFlightCountries(AirSerial,Fdoc,HeaderNode);
//       CreateNodeForItems(AirSerial,Fdoc,HeaderNode);

       qr.Next;
      end;
      result:= FatherNOde;
    finally
      qr.Free;
    end;

end;


function TX_CreateMultiHighXmlFRM.CreateNodeForItems( Const AirwaybillSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  HeaderNode,x2Node:IXMLNode;
  val:String;
  addr:string;
  DString:String;
  qr:TksQuery;
begin

  HeaderNode :=CreateXMLNodeNew(FDoc,FatherNode,'HawbItems','',ntElement);
  Qr:=TksQuery.Create(cn,' select *  from FLIGHT_AIRWAYBILL_ITEM where fK_fa_serial= :Serial');
  try
    Qr.ParambyName('serial').Value:= AirwayBillSerial;
    Qr.Open;
    while(not Qr.Eof) do begin
     Val :=qr.FieldByName('SERIAL_NUMBER').AsString;

     HeaderNode :=CreateXMLNodeNew(FDoc,HeaderNode,'HawbItem','',ntElement);
     TblCreateXMLNode(FDoc,HeaderNode, 'Serial', '',qr, 'Serial_number',ntText);
     CreateXMLNodeNew(FDoc,HeaderNode,'itme','Ch1',ntText);
     result:= HeaderNode;
     qr.Next;
    end;
  finally
    qr.Free;
  end;



end;


function TX_CreateMultiHighXmlFRM.CreateNodeFlightCountries( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  HeaderNode,x2Node:IXMLNode;
  val:String;
  addr:string;
  DString:String;
  qr:TksQuery;
begin

val:=
  ' select fo.serial_number, fo.fk_flight_table, fc.country_code from'
  +'  flight_out fo left outer join'
  +'  flight_out_country fc on fc.fk_flight_out=fo.serial_number'
  +'  where fo.serial_number= :serial'
  +'  order by fc.order_position';

 HeaderNode:=FatherNode;
// Qr:=TksQuery.Create(cn,' select * from Flight_airwaybill_country where FK_FLIGHT_AIRWAYBILL = :serial');
 Qr:=TksQuery.Create(cn,val);
  try
    Qr.ParambyName('serial').Value:= FlightOutSerial;
    Qr.Open;
    while (not qr.eof) do begin
      x2Node:=CreateXMLNodeNew(FDoc,FatherNOde,'Msg615Itinerary','',ntElement);
      TblCreateXMLNode(FDoc,x2Node, 'CountryOfRoutingCode', '',qr, 'Country_code',ntText);
      result:= HeaderNode;
      qr.next;
    end;
  finally
    qr.Free;
  end;

end;





end.
