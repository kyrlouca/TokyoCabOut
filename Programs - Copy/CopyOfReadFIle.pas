unit CopyOfReadFIle;

//*******************************************************************************
//* How I treat the parser TxAndDty
//* StartTag-
//*   1. Special tags - to decide the table that needs to be used (Insert a record in Database) AND push in stack
//*   2. NOrmal tags - to find if tag is useful
//* Content
//*   If tag was found useful from starttag -> read it in appropriate table
//* EndTag
//*    1. Special Tags - Update table from TableStructure AND POP the stack
//*    2. Normal Tag - Do Nothing
//*******************************************************************************
//* The Mawbs are in MVMTS>
//* Each Mawb is in MvMT>
//* Hawbs are in <shps>
//* Each hawb is a <shp> with fields <hawb>, <invoiceAmount><LineItems>
//* Hawb items are found in <LineItems>
//* Each HawbIte is a <LineItem>
//*******************************************************************************
//*******************************************************************************
// use a class tablestructure to store the tag values for each tag type
// We create 3 instances of talbestructre (Mawb, hawb,item)
// For each instance, store the useful tags and their corresponding field name,
//    The value for each field is updated later
// StartTab - we insert the Mawb, hawb, or item
// EndTag - we update
// FixItem - update the valus of the hawb item
// FixHawb - update the valus of the hawb
// Procedure Updatetable goes throuh the table structures and for each tag->fieldName updates the field Value
//*******************************************************************************

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Buttons, fcLabel, ExtCtrls,
  LibXmlParser, LibXmlComps, DAScript, IBCScript, Db, MemDS, DBAccess, IBC,
  UnicodeConv,math,GeneralProcedures,FileCtrl, fcStatusBar, Grids,
  Wwdbigrd, Wwdbgrid, Mask, wwdbedit;

Const
// These are special tags that mark the begining and ending of an XML Element
        MawbTag='TDOC';
        HawbTag='Shp';
        ItemTag='LineItem';
        SenderTag='ShpCnsgnr';
        CustomerTag='ShpImpter';
        CustomerNameTag='ShpCnsgne';
        //SenderInvoiceTag='TxAndDty';
        //ShpCnsgnr
type
  TCountryDetails=Record
        CountryCode:string;
        CountryNumber:Integer;
        LowFreight:double;
        HighFreight:double;
  end;

  TTariffDetails=Record
        Rate:String;
        Quantity:String;
        Base:String;
        TRL :String;
  end;

  TMawbArrayElement=Record
        MawbId:String;
        IsExists:Boolean;
        IsOldMawb:Boolean;
        SerialNumber:Integer;
        IsNull:Boolean;
  end;

  TMawbArray = Array [1..50] of TMawbArrayElement;

  TBatchDetails=Record
        OldFileName:String;
        NewFileName:String;
  end;

  THawbDetails=Record
        HawbId:String;
        HawbNewSerial:Integer;
        HawbOldSerial:Integer;
        MawbNewSerial:Integer;
        MawbOldSerial:Integer;
        MawbNewId:String;
        MawbOldId:String;
        Description:String;
        Weight:Double;
        Pieces:Integer;
  end;

  TReadFileCopyofFRM = class(TForm)
    Panel5: TPanel;
    fcLabel1: TfcLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    ReadFileBTN: TfcShapeBtn;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    CSMIB1: TCSMIB;
    MawbSQL: TIBCQuery;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLDATE_ARRIVED: TDateTimeField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLFK_PORT_IMPORTATION: TIntegerField;
    MawbSQLSIGNATORY_NAME: TStringField;
    MawbSQLFORM_DATE: TDateTimeField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLPASSED: TStringField;
    MawbSQLROTATION_NUMBER: TIntegerField;
    MawbSQLROTATION_YEAR: TSmallintField;
    MawbSQLFK_PORT_CLEARING: TIntegerField;
    MawbSQLGOODS_NUMBER: TIntegerField;
    MawbSQLGOODS_DESCRIPTION: TStringField;
    MawbSQLCBOOK_NUMBER: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLINVOICED: TStringField;
    MawbSQLSENT_TO_HEAD: TStringField;
    MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    MawbSQLSTORAGE_EXPENSES: TFloatField;
    MawbSQLDELIVERY_EXPENSES: TFloatField;
    MawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    MawbSQLAMOUNT_INVOICED: TFloatField;
    MawbSQLDATE_PASSED: TDateTimeField;
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
    OpenDialog1: TOpenDialog;
    XmlScanner1: TXmlScanner;
    Button1: TButton;
    Button2: TButton;
    FindCurrencySQL: TIBCQuery;
    ExchangeRateSQL: TIBCQuery;
    ExchangeRateSQLFK_CURRENCY_CODE: TStringField;
    ExchangeRateSQLRATE: TFloatField;
    SearchHawbSQL: TIBCQuery;
    PartialHawbSQL: TIBCQuery;
    PartialHawbSQLSERIAL_NUMBER: TIntegerField;
    PartialHawbSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField;
    PartialHawbSQLFK_MAWB_ID_ORIGINAL: TStringField;
    PartialHawbSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField;
    PartialHawbSQLFK_MAWB_ID_ARRIVED: TStringField;
    PartialHawbSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField;
    PartialHawbSQLFK_HAWB_ID_ORIGINAL: TStringField;
    PartialHawbSQLPARTIAL_PIECES: TIntegerField;
    PartialHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    PartialHawbSQLPARTIAL_WEIGHT: TFloatField;
    PartialHawbSQLDESCRIPTION: TStringField;
    SearchHawbSQLSERIAL_NUMBER: TIntegerField;
    SearchHawbSQLHAB_ID: TStringField;
    SearchHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    SearchHawbSQLREFERENCE_NUMBER: TIntegerField;
    SearchHawbSQLMAWB_ID: TStringField;
    Esql: TIBCSQL;
    SearchMawbSQL: TIBCQuery;
    SearchMawbSQLREFERENCE_NUMBER: TIntegerField;
    SearchMawbSQLMAWB_ID: TStringField;
    IBCQuery1: TIBCQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    CountrySQL: TIBCQuery;
    CountrySQLNUMBER: TIntegerField;
    CountrySQLCODE: TStringField;
    CountrySQLNAME: TStringField;
    CountrySQLEU_MEMBER: TStringField;
    CountrySQLFREIGHT05: TIntegerField;
    CountrySQLFREIGHT6: TIntegerField;
    CountrySQLFK_CURRENCY_CODE: TStringField;
    CountrySQLGREEK_NAME: TStringField;
    CountrySQLXML_COUNTRY: TStringField;
    FindCurrencySQLDESCRIPTION: TStringField;
    FindCurrencySQLCURRENCY_CODE: TStringField;
    FindCurrencySQLCOUNTRY_CODE: TIntegerField;
    FindCurrencySQLXML_CURRENCY: TStringField;
    HawbSQL: TIBCQuery;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateTimeField;
    HawbSQLSENT_TO_HEAD: TStringField;
    HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbSQLFK_CLEARANCE_TYPE: TStringField;
    HawbSQLFK_DELIVERY_TERM: TStringField;
    HawbSQLORIGIN_STATION: TStringField;
    HawbSQLEC2_NUMBER_DATE: TStringField;
    HawbSQLSENDERS_INV_NO: TStringField;
    HawbSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    HawbSQLDISTRICT: TStringField;
    HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    HawbSQLPOSOSTOSIS: TStringField;
    HawbSQLTOTAL_DUTIES: TFloatField;
    HawbSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbSQLCLEARANCE_WAITING_REASON: TStringField;
    HawbSQLDATE_CLEARED: TDateTimeField;
    HawbSQLDATE_REGISTERED: TDateTimeField;
    HawbSQLFACTOR: TFloatField;
    HawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbSQLCHARGE_TRL: TFloatField;
    HawbSQLCHARGE_VAT: TFloatField;
    HawbSQLCHARGE_EXCISE: TFloatField;
    HawbSQLCHARGE_IMPORT: TFloatField;
    HawbSQLINVOICABLE: TStringField;
    HawbSQLTOTAL_CHARGES: TFloatField;
    HawbSQLCUSTOMER_NAME: TStringField;
    HawbSQLEDE_COMMENTS: TStringField;
    HawbSQLFK_MAWB_ID: TStringField;
    HawbSQLSIGNATORY_NAME: TStringField;
    HawbSQLXML_HOUSE_ID: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLIS_PRIVATE: TStringField;
    HawbSQLDELIVERY_ORDER_ID: TStringField;
    HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER4_CHARGE: TStringField;
    HawbSQLIS_PAID: TStringField;
    HawbSQLPARTIAL_FLAG: TStringField;
    HawbSQLPARTIAL_WEIGHT: TFloatField;
    HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    HawbSQLPARTIAL_MAWB_ID: TStringField;
    HawbSQLPARTIAL_PIECES: TIntegerField;
    HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLSTATUS_C: TStringField;
    HawbSQLIS_MEDIUM: TStringField;
    HawbSQLMEDIUM_VAT_RATE: TFloatField;
    HawbSQLIS_CHARGED_DELIVERY: TStringField;
    fcStatusBar1: TfcStatusBar;
    FindCustomerSQL: TIBCQuery;
    FindCustomerSQLCODE: TIntegerField;
    FindCustomerSQLNAME: TStringField;
    ReadLowHawbSQL: TIBCQuery;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField5: TIntegerField;
    FloatField1: TFloatField;
    StringField11: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField12: TStringField;
    FloatField5: TFloatField;
    StringField13: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    IntegerField6: TIntegerField;
    FloatField8: TFloatField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField9: TFloatField;
    StringField14: TStringField;
    IntegerField9: TIntegerField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    DateTimeField1: TDateTimeField;
    StringField15: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    StringField21: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    StringField22: TStringField;
    StringField23: TStringField;
    FloatField14: TFloatField;
    StringField24: TStringField;
    StringField25: TStringField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    FloatField15: TFloatField;
    IntegerField14: TIntegerField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField26: TStringField;
    FloatField20: TFloatField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    FloatField21: TFloatField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    FloatField22: TFloatField;
    StringField41: TStringField;
    StringField42: TStringField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    StringField43: TStringField;
    StringField44: TStringField;
    FloatField23: TFloatField;
    StringField45: TStringField;
    HawbGRD: TwwDBGrid;
    FindHawbLowDeletedSQL: TIBCQuery;
    FindHawbLowDeletedSQLHAB_ID: TStringField;
    FindHawbLowDeletedSQLSERIAL_NUMBER: TIntegerField;
    FindHawbLowDeletedSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbLowDeletedSQLFK_MAWB_ID: TStringField;
    FindHawbLowDeletedSQLFK_CURRENCY: TStringField;
    FindHawbLowDeletedSQLFK_COUNTRY_ORIGIN: TIntegerField;
    FindHawbLowDeletedSQLDATE_REGISTERED: TDateTimeField;
    FindHawbLowDeletedSQLCUSTOMER_NAME: TStringField;
    FindHawbLowDeletedSQLDESCRIPTION: TStringField;
    FindHawbLowDeletedSQLWEIGHT: TFloatField;
    FindHawbLowDeletedSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    FindHawbLowDeletedSQLNUMBER_OF_PARCELS: TIntegerField;
    FindHawbLowDeletedSQLDISTRICT: TStringField;
    FindHawbLowDeletedSQLTOTAL_CHARGES: TFloatField;
    FindHawbLowDeletedSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    FindHawbLowDeletedSQLFK_CUSTOMER_CODE: TIntegerField;
    DeleteOneCDS: TIBCSQL;
    DeleteTrans: TIBCTransaction;
    HawbSRC: TIBCDataSource;
    FIndWaitingReasonSQL: TIBCQuery;
    FIndWaitingReasonSQLCODE: TStringField;
    FIndWaitingReasonSQLDESCRIPTION: TStringField;
    FIndWaitingReasonSQLCODE_4: TStringField;
    FIndWaitingReasonSQLDEFAULT_FOR_MEDIUM_VALUE: TStringField;
    RecentMawbSQL: TIBCQuery;
    IntegerField17: TIntegerField;
    StringField46: TStringField;
    RecentMawbSQLDATE_ARRIVED: TDateTimeField;
    SearchMawbSQLDATE_ARRIVED: TDateTimeField;
    FindDefaultMediumWaitingCodeSQL: TIBCQuery;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    FindDefaultMediumWaitingCodeSQLDESCRIPTION: TStringField;
    FindDeliveryOrderChargeSQL: TIBCQuery;
    FindDeliveryOrderChargeSQLAMOUNT: TFloatField;
    FindCustomerSQLCOMPANY_OR_PERSON: TStringField;
    FIndTariffSQL: TIBCQuery;
    FIndTariffSQLCODE: TStringField;
    FIndTariffSQLGENERAL_DUTY_RATE: TFloatField;
    FIndTariffSQLGENERAL_DUTY_TRL: TFloatField;
    FIndTariffSQLGENERAL_DUTY_RATE_QUANT: TFloatField;
    FIndTariffSQLBASE_QUANTITY: TFloatField;
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
    HawbItemSQLEURO_PENDING: TStringField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    FindDefaultVatSQL: TIBCQuery;
    FindDefaultVatSQLCODE: TStringField;
    FindDefaultVatSQLDESCRIPTION: TStringField;
    FindDefaultVatSQLRATE: TFloatField;
    FindDefaultVatSQLXML_CODE: TStringField;
    UpdateCustomer1CDS: TIBCSQL;
    FindChargeSQL: TIBCQuery;
    FindChargeSQLAMOUNT: TFloatField;
    procedure ReadFileBTNClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
        Function DefaultWaitingCode:String;
        Function FindDefaultDeliveryCharge:Double;
        Function FindDefaultStorageCharge:Double;
        Function FindDefaultMediumVat:Double;
        Function FindCharge(TheKey,TheDescription:String;var Num1:Double):Boolean;


    Function GetFileName:String;
        Function GetNewFileName(Const FullFileName:String):String;

    Function ReadFirstPass: Boolean;
    Function ProcessFile(Const BatchDetails:TBatchDetails;Var MawbArray: TMawbARray):Boolean;

    Function StripColon(Var1: String):String;
    Procedure ViewTableNodes(ATable:TTableValues);

    Procedure UpdateTable(TableStructure:TTableValues);
    procedure FindCountry(XMLCode:String;Var CountryDetails:TCountryDetails);
    Function FindCustomer(Const CustomerCode:Integer;Var CustomerName:String;Var IsPrivate:String):Boolean;
    Function FindTariff(Const TariffCode:String;Var TariffDetails:TTariffDetails):Boolean;

    function  FindCurrency(Const XMLCode:String):String;
    function  FindWaitingReason(Const Code4:String):String;
    Function FindExchangeRate(CurrencyCode:String):DOuble;
    Function IsHawbExists(HawbId:String;Var  HawbDetails:THawbDetails):boolean;
    Function IsMawbExists(MawbId:String;Var MAwbSerial:Integer;Var ArrivalDate:TDateTime):boolean;
    Function IsRecentMawbExists(MawbId:String;Var MAwbSerial:Integer;Var ArrivalDate:TDateTime):boolean;
    procedure DeleteHawb(HawbSerial:integer);

    Function CreatePartialHawb(HawbId:String;Var  HawbDetails:THawbDetails):boolean;


    procedure FixMawb(MawbSerial:Integer);
    procedure FixHawb(hawbSerial:Integer);
    procedure FixSender(hawbSerial:Integer);
    procedure FixInvoice(hawbSerial:Integer);
    procedure FixItem(hawbSerial:Integer);
    procedure FixCustomer(hawbSerial:Integer);
//    procedure FixCustomerName(CustomerSerial:Integer);

    Function ProcessLowValue(MawbSerial:Integer):Boolean;
    procedure CopyHawbToLow(HawbSerial:integer);
    procedure DeleteOneHawb(HawbSerial:Integer);


  public
    { Public declarations }
    GlobalStorageCharge:Double;
    GlobalDeliveryCharge:Double;
    GlobalDefaultMediumVAT:Double;
    GlobalMediumWaitingREason:String;
    GlobalDeliveryOrder_DDP:Double;
    GlobalDeliveryOrder_Minimum:Double;

    MawbTable:TTableValues;
    HawbTable:TTableValues;
    ItemTable:TTableValues;
    SenderTable:TTableValues;
    CustomerTable:TTableValues;
    CustomerNameTable:TTableValues;
    //SenderInvoiceTable:TTableValues;

  end;

var
  ReadFileCopyofFRM: TReadFileCopyofFRM;

implementation

uses KyriacosTypes;

{$R *.DFM}

Function TReadFileCopyofFRM.StripColon(Var1: String):String;
Var
 ColPos:Integer;
Begin
        ColPos:=Pos(':',Var1);
        Result:=Copy(Var1,ColPos+1,Length(Var1)-ColPos );

End;


Function TReadFileCopyofFRM.GetNewFileName(Const FullFileName:String):String;
Var
        Success:integer;
        NewDir:String;
        NewName:String;
        FileName:String;
//        RenameDir:String;
Begin
{
        FileName:=ExtractFileName(FullFileName);

        NewDir:= MainTestFRM.GetValueFromSystemTable('F_5', 'Folder to Move Files');
        If Not DirectoryExists(NewDir) then begin
                NewDir:=ExtractFileDir(FullFileName);
        end;
        FileName:=NewDir+'\'+FileName;
        if Pos('.',FileName)>0 then begin
                Newname := Copy(FileName, 1, LastDelimiter('.', FileName))+'XXX';
        end else begin
                Newname := FileName+'.XXX';
        end;
        Result:=NewName;
}

End;


Function TReadFileCopyofFRM.GetFileName:String;

Var
        Success:integer;
        DefaultDir:String;
//        RenameDir:String;
Begin
{
        DefaultDir:= MainTestFRM.GetValueFromSystemTable('F_4', 'Folder to Read Files');

        OpenDialog1.InitialDir:=DefaultDir;
//        OpenDialog1.Filter:='XML files (*.XML) | *.XML';
        with OpenDialog1 do begin
                if Execute then begin
                        Result:= Filename;
                end else begin
                        Result:='';
                end; //execute
        end;
        //ShowMessage(Result);
}

End;


Function TReadFileCopyofFRM.FindCustomer(Const CustomerCode:Integer;Var CustomerName:String;Var IsPrivate:String):Boolean;
Begin
     with FindCustomerSQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('CustomerCode').Value:=CustomerCode;
          Open;
          Result:= Not IsEmpty;
          If (Result) then begin
                CustomerName:=FieldByName('NAME').AsString;
                If FieldByName('COMPANY_OR_PERSON').AsString='P' then begin
                       IsPrivate:='Y'
                end else begin
                       IsPrivate:='N'
                end;
          end;
          close;
     end;

End;


Function TReadFileCopyofFRM.FindTariff(Const TariffCode:String;Var TariffDetails:TTariffDetails):Boolean;
Begin
     with FindTariffSQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('Code').Value:=TariffCode;
          Open;
          Result:= Not IsEmpty;
          If (Result) then begin
                TariffDetails.Rate :=FieldByName('GENERAL_DUTY_RATE').AsString;
                TariffDetails.Quantity :=FieldByName('GENERAL_DUTY_RATE_quant').AsString;
                TariffDetails.Base :=FieldByName('BASE_QUANTITY').AsString;
                TariffDetails.TRL :=FieldByName('GENERAL_DUTY_TRL').AsString;
          end;
          close;
     end;

end;



function  TReadFileCopyofFRM.FindWaitingReason(Const Code4:String):String;
Begin
     if Code4='' then begin
        result:=''
     end else begin
     with FindWaitingReasonSQL do begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('XMLCode').Value:=Code4;
          Open;
          If (not IsEmpty) then begin
                Result:=FieldByName('CODE').AsString;
          end else begin
                Result:='';
          end;
          close;
     end;
     end;
End;



Function  TReadFileCopyofFRM.FindCurrency(Const XMLCode:String):String;
Var
        Code2Digit:String;
Begin
     Code2Digit:=Copy(XMLCOde,1,2);
     with FindCurrencySQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('XMLCode').Value:=Code2Digit;;
          Open;
          If (not IsEmpty) then begin
                Result:=FieldByName('CURRENCY_CODE').AsString;
          end else begin
                Result:=XMLCode;
          end;
          close;
     end;

End;

Function TReadFileCopyofFRM.FindExchangeRate(CurrencyCode:String):DOuble;
Begin
     with ExchangeRateSQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('CurrencyCode').Value:=CurrencyCode;
          Open;
          If (not IsEmpty) then begin
                Result:=FieldByName('Rate').AsFloat;
          end else begin
                Result:=0;
          end;
          close;
     end;

End;


procedure TReadFileCopyofFRM.FindCountry(XMLCode:String;Var CountryDetails:TCountryDetails);
Begin
     with CountrySQL do
     begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('XMLCode').Value:=XMLCode;
          Open;
          If (not IsEmpty) then begin
            CountryDetails.CountryNumber:=FieldByName('Number').AsInteger;
             CountryDetails.LowFreight:=FieldBYName('FREIGHT05').AsFloat;
             CountryDetails.HighFreight:=FieldBYName('FREIGHT6').AsFloat;

          end else begin
            CountryDetails.CountryNumber:=0;
             CountryDetails.LowFreight:=0;
             CountryDetails.HighFreight:=0;
          end;
          close;
     end;

End;

Procedure TReadFileCopyofFRM.UpdateTable(TableStructure:TTableValues);
Var
        Success:integer;
        TagRecord:TTagRecord;
        Count:Integer;
        I:Integer;
        F:DOuble;
        ATable:TIBCQuery;
        AField:TField;
        TableName:String;
        FieldName:String;
        OldDS:char;
        TempFloat:Double;
        TempInt:Integer;
Begin


 TableStructure.GoFirstNode;
 while TableStructure.GetNextNode(TagRecord) do begin



        if TagRecord.IsSpecialTag then begin       // isIgnore - does not update Tfields with a value
                //ShowMessage('special'+TagRecord.TagName);
                continue;
        end;
        if TagRecord.IsNull then begin
                //ShowMessage('special'+TagRecord.TagName);
                continue;
        end;

        //check here for debuging
        If TagRecord.TagName='TariffQnty' then begin
                //ShowMessage('debug UpdateValue '+'tag='+TagREcord.TagName+' val='+TagRecord.FIeldValue);
        end;

        TableName:=TagRecord.TableName;
        ATable:=FindComponent(TableName) as TIBCQuery;

         FieldName:=TagRecord.FieldName;
        aField:=ATable.FindField(FieldName);

        If Assigned(AField) then begin

               case aField.DataType of
               ftInteger: begin
                        //ShowMessage('int '+aField.FieldName);

                        try
                               TempFloat:= StrToFloat(TagRecord.FIeldValue);
                               // aField.Value := StrToIntDef(TagRecord.FIeldValue,0);
                        except
                                on Exception:  EConvertError do
                                 TempFloat:=0;
                        end;
                        TempInt:=Trunc(TempFloat);
                        aField.Value:=TEmpInt;

                        end;
               ftFloat: begin
                        //ShowMessage('float '+aField.FieldName);
                        try
                                OldDS:=DecimalSeparator;
                                DecimalSeparator:='.';
                                F := StrToFloat(TagRecord.FIeldValue);
                                DecimalSeparator:=OldDS;
                        except
                                on Exception : EConvertError do
                                F:=0;
                        end;
                        aField.Value := F;
                        end;
               ftSmallInt: begin
                        //ShowMessage('sma int '+aField.FieldName);
                        aField.Value := StrToIntDef(TagRecord.FIeldValue,0);
                        end;
               ftString:begin
                        aField.Value := TagRecord.FIeldValue;
                        //ShowMessage('string '+aField.FieldName);
                        end;
               ftDateTime:begin
                        aField.value:=ConvertDate(TagRecord.FieldValue);
                        //ShowMessage('date '+aField.FieldName);
                        end;
               end;

        end;
 end;

End;

procedure TReadFileCopyofFRM.FixInvoice(hawbSerial:Integer);
Var
        ICurr:Integer;
        SCurr:String;
        aString:String;
        aInt:Integer;
        aDouble:Double;

        Freight:Double;
        ExchangeRate:Double;
        InvoiceValue:Double;
        CustomsValue:Double;

        VatCharge:Double;
        DeliveryAmount:Double;

        TagRecord:TTagRecord;
        CountryDetails:TCountryDetails;

        IsMedium:Boolean;
        IsDDP:Boolean;

Begin

        //HawbTable.UpdateValue(TheTag,Parser.CurContent);
        {
        ItemTable.FindNode('CtryOrgnCd',TagRecord);
        self.FindCountry(TagRecord.FIeldValue,CountryDetails);
        ICurr:=COuntryDetails.CountryNumber;
        SCurr:=IntToStr(ICurr);
        ShowMessage(SCurr);
        ItemTable.UpdateValue('CtryOrgnCd',SCUrr);
        }


        //Find the exchange rate
        HawbTable.FindNode('CstmsValCrncyCd',TagRecord);

        astring:=FindCurrency(TagRecord.FieldValue);

        //ShowMessage('currency='+aString);

        HawbTable.UpdateValue('X_CURRENCY',aString);
        aString:=TagREcord.FIeldValue;

        ExchangeRate:=FindExchangeRate(aString);
        HawbTable.UpdateValue('X_ExchangeRate',FloatToStr(ExchangeRate));


        //roUND THE INVOICE VALUE
        HawbTable.FindNode('CstmsVal',TagRecord);
        InvoiceValue:=StrToFloatMy(TagRecord.FieldValue);
        aInt:= Trunc(Ceil(InvoiceValue));

//        HawbTable.UpdateValue('CstmsVal',intToStr(aInt));
        HawbTable.UpdateValue('X_INVOICE_AMOUNT',intToStr(aInt));
        HawbTable.UpdateValue('X_PRE_DISCOUNT_AMOUNT',intToStr(aInt));


        HawbTable.FindNode('X_IsMedium',TagRecord);
        IsMedium:=TagRecord.FieldValue='Y';

        If IsMedium then begin
                HawbTable.FindNode('Frght',TagRecord);
                Freight:=StrToFloatMy(TagRecord.FieldValue);



                HawbTable.FindNode('X_IsPaid',TagRecord);
                IsDDP:=TagRecord.FIeldValue='Y';
                If IsDDP then begin
                       DeliveryAmount:=  GlobalDeliveryOrder_DDP;
                end else begin
                       DeliveryAmount:=  GlobalDeliveryOrder_Minimum;
                end;
                HawbTable.UpdateValue('X_DELIVERY_ORDER_AMOUNT',FloatToStr(DeliveryAmount));

                If ExchangeRate<=0 then begin
                        CustomsValue:=0;
                end else begin
                        CustomsValue:=(InvoiceValue+Freight)/ExchangeRate;
                end;
                aInt:= Trunc(Ceil(CustomsValue));
                HawbTable.UpdateValue('X_MEDIUM_CUSTOMS_VALUE',intToStr(aInt));
                HawbTable.UpdateValue('X_MEDIUM_HAWB_CUSTOMS_VALUE',intToStr(aInt));


                VatCharge:=aInt*GlobalDefaultMediumVAT/100;
                HawbTable.UpdateValue('X_CHARGE_VAT',FloatToStr(VatCharge) );



        end;


end;


procedure TReadFileCopyofFRM.FixMawb(MawbSerial:Integer);
Var
        ICurr:Integer;
        SCurr:String;
        TagRecord:TTagRecord;
        CountryDetails:TCountryDetails;
Begin
{
        MawbTable.FindNode('ShpCtryOrgn',TagRecord);
        FindCountry(TagRecord.FIeldValue,CountryDetails);
        SCurr:=IntToStr(COuntryDetails.CountryNumber);
        //ShowMessage(SCurr);
        HawbTable.UpdateValue('ShpCtryOrgn',SCUrr);

        HawbTable.FindNode('X_Clearance',TagRecord);
        HawbTable.UpdateValue('X_Clearance','IM 4');

}

end;


procedure TReadFileCopyofFRM.FixHawb(hawbSerial:Integer);
Var
        ICurr:Integer;
        SCurr:String;
        aString:string;
        aInt:INteger;
        TagRecord:TTagRecord;
        CountryDetails:TCountryDetails;
        CustomerName:String;
        IsDDP:Boolean;
Begin

        HawbTable.FindNode('ShpCtryOrgn',TagRecord);
        FindCountry(TagRecord.FIeldValue,CountryDetails);
        SCurr:=IntToStr(COuntryDetails.CountryNumber);
        HawbTable.UpdateValue('ShpCtryOrgn',SCUrr);

        HawbTable.FindNode('X_Clearance',TagRecord);
        HawbTable.UpdateValue('X_Clearance','IM 4');



        MawbTable.FindNode('X_MawbID',TagRecord);
        aString:=TagRecord.FIeldValue;
        HawbTable.UpdateValue('X_FK_MAWB_ID',aString);



        HawbTable.FindNode('DHLServiceCd',TagRecord);
        aString:=TagREcord.FIeldValue;
        IsDDP:=(Trim(aString)='DDP') OR (Trim(aString)='DTP');

        If (Trim(aString)='DDP') OR (Trim(aString)='DTP') then begin
                HawbTable.UpdateValue('X_IsPaid','Y');
        end else begin
                HawbTable.UpdateValue('X_IsPaid','N');
        end;


        HawbTable.FindNode('Status',TagRecord);
        aString:=FindWaitingReason(TagRecord.FIeldValue);
        HawbTable.UpdateValue('X_WAITING_REASON',aString);

        If HawbTable.FindNode('Category',TagRecord) then begin
                aString:=TagREcord.FIeldValue;
        end else begin
                aString:='';
        end;

        If (Trim(aString)='1')or (Trim(aString)='2')or(Trim(aString)='3') then begin
                //HawbTable.UpdateValue('X_IsLow','Y');
                HawbTable.UpdateValue('X_IsMedium','N');
                HawbTable.UpdateValue('X_IsHigh','N');
        end else If (Trim(aString)='4') then begin
                //HawbTable.UpdateValue('X_IsLow','N');
                HawbTable.UpdateValue('X_IsMedium','Y');
                HawbTable.UpdateValue('X_IsHigh','N');

                HawbTable.UpdateValue('X_WAITING_REASON',GlobalMediumWaitingREason);
                //HawbTable.UpdateValue('X_MEDIUM_VAT',FloatToStr(GlobalDefaultMediumVAT));

        end else If (Trim(aString)='5')or (Trim(aString)='6')or(Trim(aString)='7') then begin
                //HawbTable.UpdateValue('X_IsLow','N');
                HawbTable.UpdateValue('X_IsMedium','N');
                HawbTable.UpdateValue('X_IsHigh','Y');
        end else begin
                //HawbTable.UpdateValue('X_IsLow','N');
                HawbTable.UpdateValue('X_IsMedium','N');
                HawbTable.UpdateValue('X_IsHigh','Y');
        end;


end;

procedure TReadFileCopyofFRM.FixSender(hawbSerial:Integer);
Const
  lb= #13;
Var
        S1,S2,S3,s4,s5,s6,s7:String;
        SA:String;
        TagRecord:TTagRecord;
Begin

        if SenderTable.FindNode('AddrLn1',TagRecord) then
                s1:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('AddrLn2',TagRecord) then
                s2:=Trim(TagRecord.FIeldValue)+lb ;

        if SenderTable.FindNode('AddrLn3',TagRecord) then
                s3:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('City',TagRecord)then
                s4:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('PostalCd',TagRecord)then
                s5:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('State',TagRecord)then
                s6:=Trim(TagRecord.FIeldValue)+lb;

        if SenderTable.FindNode('CtryCd',TagRecord)then
                s7:=Trim(TagRecord.FIeldValue)+lb;

        Sa:=s1+ s2+ s3+s4+s5+s6+s7;

        SenderTable.UpdateValue('X_SENDER_ADDRESS',SA);


end;


procedure TReadFileCopyofFRM.FixCustomer(hawbSerial:Integer);
Var
        TagRecord:TTagRecord;
        CustomerName:String;
        IsPrivate:String;
        XMLCustomerName:String;
        XMLCustomerCode:String;
        Address1,Address2,Address3:String;
        DeviceType:String;
        Telephone:String;
        SQL1:String;

Begin

        if CustomerNameTable.FindNode('AddrLn1',TagRecord) then
                Address1:=TagRecord.FIeldValue;

        if CustomerNameTable.FindNode('AddrLn2',TagRecord) then
                Address2:=TagRecord.FIeldValue;

        if CustomerNameTable.FindNode('AddrLn3',TagRecord) then
                Address2:=Address2 +' '+TagRecord.FIeldValue;

        if CustomerNameTable.FindNode('City',TagRecord) then
                Address3:=TagRecord.FIeldValue;

        if CustomerNameTable.FindNode('PostalCd',TagRecord) then
                Address3:=Address3+' '+TagRecord.FIeldValue;

        if CustomerNameTable.FindNode('DeviceType',TagRecord) then begin
                DeviceType:=TagRecord.FIeldValue
        end;

        if CustomerNameTable.FindNode('DeviceDtls',TagRecord) then begin
                Telephone:=TagRecord.FIeldValue
        end;


//         ShowMessage('Debug address1='+TagRecord.FIeldValue);



        XMLCustomerCode:='-1';
        if CustomerTable.FindNode('TraderID',TagRecord) then
                XMLCustomerCode:=TagRecord.FIeldValue;

        XMLCustomerName:='';
        // ATTENTION (From CustomerNameTable Not from CustomerTable
        if CustomerNameTable.FindNode('CoName',TagRecord) then
                XMLCustomerName:=TagRecord.FIeldValue;

        If FindCustomer(StrToIntDef(XMLCustomerCode,-1), CustomerName,IsPrivate) then begin
                If XMLCustomerName>'' then begin
                    CustomerName:=XMLCUstomerName;


                    If DeviceType='TEL' then begin
                        SQL1:=' Update customer set name= :CustomerName, Address1= :Address1, Address2= :Address2, Address3= :Address3, Tel_NO1= :Phone where code= :CustomerCode';
                    end else If DeviceType='FAX' then begin
                        SQL1:=' Update customer set name= :CustomerName, Address1= :Address1, Address2= :Address2, Address3= :Address3, FAX1= :Phone where code= :CustomerCode';
                    end else If DeviceType='MOB' then begin
                        SQL1:=' Update customer set name= :CustomerName, Address1= :Address1, Address2= :Address2, Address3= :Address3, MOBILE_TO_NOTIFY = :Phone where code= :CustomerCode';
                    end else begin
                        SQL1:=' Update customer set name= :CustomerName, Address1= :Address1, Address2= :Address2, Address3= :Address3, CUSTOM_DEALER_NUMBER = :Phone where code= :CustomerCode';// update unused field to satisfy parameter :phone
                    end;

                    With UpdateCustomer1CDS do begin
                        SQL.Clear;
                        SQL.Add(SQL1);
                        IF not Prepared then prepare;
                        ParamByName('CustomerCode').value:=XMLCustomerCode;
                        ParamByName('CustomerName').value:=Copy(CustomerName,1,80);
                        ParamByName('Address1').Value:=Copy(Address1,1,80);
                        ParamByName('Address2').Value:=Copy(Address2,1,40);
                        ParamByName('Address3').Value:=Copy(Address3,1,40);
                        ParamByName('Phone').Value:=Copy(Telephone,1,10);
                        Execute;
                        //ShowMessage('debug rows affected='+IntTOStr(RowsAffected));

                    end;
                end;


                CUstomerTable.UpdateValue('X_CUSTOMER_CODE',XMLCustomerCode);
                CUstomerTable.UpdateValue('X_CUSTOMER_NAME',CustomerName);
                CUstomerTable.UpdateValue('X_IsPrivate',IsPrivate);
        end else begin
                // Name is found in another node
                // but I update the CustomerTable not the CustomerName
                //CustomerNameTable.FindNode('CoName',TagRecord);
                CUstomerTable.UpdateValue('X_CUSTOMER_NAME',XMLCustomerName);
                //CUstomerNameTable.UpdateValue('X_CUSTOMER_NAME',TagRecord.FIeldValue);
        end;
End;

{procedure TReadFileFRM.FixCustomerName(CustomerSerial:Integer);
Var
        TagRecord:TTagRecord;
        CustomerName:String;
        Temp:String;
Begin

        If not FindCustomer(CustomerSerial,temp)  then begin
                CustomerNameTable.FindNode('CoName',TagRecord);
                CUstomerNameTable.UpdateValue('X_CUSTOMER_NAME',TagRecord.FIeldValue);
                //HawbTable.UpdateValue('X_CUSTOMER_CODE',');
        end;
End;

}


procedure TReadFileCopyofFRM.FixItem(hawbSerial:Integer);
Var
        ICurr:Integer;
        aString:String;
        bString:String;
        aDouble:Double;
        aInt:Integer;
        TagRecord:TTagRecord;
        CountryDetails:TCountryDetails;
        TD:TTariffDetails;
Begin
        //Round_prediscount amount
        ItemTable.FindNode('InvLineVal',TagRecord);
        aDouble:=StrToFloatMy(TagRecord.FieldValue);
        aInt:= Trunc(Ceil(aDouble));
        ItemTable.UpdateValue('InvLineVal',intToStr(aInt));

        //Find the exchange rate
        ItemTable.FindNode('InvCrncyCd',TagRecord);
        aString:=TagREcord.FIeldValue;
        aDouble:=FindExchangeRate(aString);
        ITemTable.UpdateValue('X_ExchangeRate',FloatToStr(aDouble));

        //Find Origin COuntry Number
        ItemTable.FindNode('CtryMfctrerOrgn',TagRecord);
        FindCountry(TagRecord.FIeldValue,CountryDetails);
        aString:=IntToStr(COuntryDetails.CountryNumber);
        ItemTable.UpdateValue('X_OriginCountry',aString);


        ITemTable.FindNode('TariffCdNo',TagRecord);
        aString:=Trim(TagRecord.FIeldValue);
        bString:=Copy(aString,1,4)+'  '+COpy(aString,5,2)+' '+COpy(aString,7,2)+' '+Copy(aString,9,2);
        ItemTable.UpdateValue('X_Tariff',bString);

        If FIndTariff(BString,TD) then begin
                ItemTable.UpdateValue('X_RATE',TD.Rate);
                ItemTable.UpdateValue('X_QUANTITY',TD.Quantity);
                ItemTable.UpdateValue('X_BASE_QUANTITY',TD.Base);
                ItemTable.UpdateValue('X_TRL',TD.TRL);

        end;


        ItemTable.FindNode('InvNo',TagRecord);
        aString:=TagRecord.FIeldValue;
        ItemTable.UpdateValue('InvNo',aString);


end;


procedure TReadFileCopyofFRM.Button2Click(Sender: TObject);
begin
ShowMessage(FloattoStr(FindDefaultStorageCharge));
end;

procedure TReadFileCopyofFRM.BitBtn1Click(Sender: TObject);
begin
Close;
end;


Function TReadFileCopyofFRM.IsMawbExists(MawbId:String;Var MAwbSerial:Integer;Var ArrivalDate:TDateTime):boolean;
Begin
     with SearchMawbSQL do begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('MawbId').Value:= MawbId;
          Open;
          Result:=NOt IsEmpty;
          If Result then begin
                MawbSerial:=FieldByName('REFERENCE_NUMBER').AsInteger;
                ArrivalDate:=FieldByName('DATE_ARRIVED').AsDateTime;
          end else begin
            MawbSerial:=-1;
          end;

          close;
     end;
End;

Function TReadFileCopyofFRM.IsRecentMawbExists(MawbId:String;Var MAwbSerial:Integer;Var ArrivalDate:TDateTime):boolean;
Begin
     with RecentMawbSQL do begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('MawbId').Value:= MawbId;
//          ParamByName('DateArrived').Value:= Now -
          Open;
          Result:=NOt IsEmpty;
          If Result then
                MawbSerial:=FieldByName('REFERENCE_NUMBER').AsInteger
          else
            MawbSerial:=-1;

          close;
     end;
End;



Function TReadFileCopyofFRM.IsHawbExists(HawbId:String;Var  HawbDetails:THawbDetails):boolean;
Begin
     with SearchHawbSQL do begin
          Close;
          If not Prepared Then Prepare;
          ParamByName('HabId').Value:= HawbId;
          Open;
          HawbDetails.HawbId:=FieldByName('Hab_id').AsString;
          HawbDetails.HawbOldSerial:=FieldByName('Serial_number').AsInteger;
          HawbDetails.MawbOldSerial:=FieldByName('fk_mawb_refer_number').AsInteger;
          HawbDetails.MawbOldId:=FieldByName('mawb_id').AsString;
          {
          HPOriginalHawbSerial:=FieldByName('Serial_number').AsInteger;
          HPOriginalMawbSerial:= FieldByName('fk_mawb_refer_number').AsInteger;
          HPOriginalMawbid :=FieldByName('FK_mawb_id').AsString;
          }
          Result:=NOt IsEmpty;
     end;
End;

Function TReadFileCopyofFRM.CreatePartialHawb(HawbId:String;Var  HawbDetails:THawbDetails):boolean;
Begin
        with PartialHawbSQL do begin
                close;
                if not PartialHawbSQL.Active then open;

                Insert;

                 FieldByName('FK_HAWB_SERIAL_ORIGINAL').value:=HawbDetails.HawbOldSerial;
                FieldByName('FK_HAWB_ID_ORIGINAL').value:=HawbDetails.HawbId;

                FieldByName('FK_MAWB_SERIAL_ORIGINAL').value:=HawbDetails.MawbOldSerial;
                FieldByName('FK_MAWB_ID_ORIGINAL').value:= HawbDetails.MawbOldId;

                FieldByName('FK_MAWB_SERIAL_ARRIVED').value:=HawbDetails.MawbNewSerial;
                FieldByName('FK_MAWB_ID_ARRIVED').value:= HawbDetails.MawbNewId;


                FieldByName('PARTIAL_WEIGHT').value:= HawbDetails.Weight;
                FieldByName('PARTIAL_PIECES').value:=HawbDetails.Pieces;
                FieldByName('PARTIAL_DELIVERY_ORDER_ID').value:= HawbDetails.HawbId;
                FieldByName('DESCRIPTION').value:=HawbDetails.Description;

                post;
                close;

        end;
End;

procedure TReadFileCopyofFRM.DeleteHawb(HawbSerial:integer);
Var
 MawbSerial:Integer;
 SHawbSerial:String;
 SMawbSerial:String;
 ElementArray : array[1..3] of string;
 I:Integer;
begin

If HawbSerial>0 then begin
  SHawbSerial:=IntToStr(HawbSerial);

  ElementArray[1]:='Delete from hawb_item hi where fk_Hawb_serial= ' + SHawbSerial;
  ELementArray[2]:='Delete from sender_Invoice si where fk_hawb_serial=' + SHawbSerial;  //sender invoice
  ElementArray[3]:='Delete from hawb ha where ha.serial_number= ' + SHawbSerial; // hawb

  For I:=1 to 3 do begin
        ESQL.Text:=ElementArray[i];
        //SHowMessage(ESQL.Text);
        ESQL.ExecQuery;
  end;

end;


End;

{
procedure TReadFileFRM.DeleteMawb(MawbSerial:integer);
Var
 SHawbSerial:String;
 SMawbSerial:String;
 ElementArray : array[1..4] of string;
 I:Integer;
begin

If MawbSerial>0 then begin
  SHawbSerial:=IntToStr(HawbSerial);

  ElementArray[1]:='Delete from hawb_item hi where fk_Hawb_serial= ' + SHawbSerial;
  ELementArray[2]:='Delete from sender_Invoice si where fk_hawb_serial=' + SHawbSerial;  //sender invoice
  ElementArray[3]:='Delete from hawb ha where ha.serial_number= ' + SHawbSerial; // hawb
  ElementArray[3]:='Delete from Mawb ha where ha.serial_number= ' + SHawbSerial; // hawb

  For I:=1 to 3 do begin
        ESQL.Text:=ElementArray[i];
        //SHowMessage(ESQL.Text);
        ESQL.ExecQuery;
  end;

end;


End;
}


Function TReadFileCopyofFRM.ReadFirstPass:Boolean;
//*******************************************
//*** Check before processing file
//*******************************************
VAR
BatchDetails:TBatchDetails;
   I:Integer;
//   XmlFileName:String;
   Parser : TXmlParser;
  TheTag:String;
  IsGetTagValue:Boolean;
  IsStartTag:Boolean;
  IsContent:Boolean;
  TagRecord:TTagRecord;
  CountMawb:Integer;
  MawbArray:TMawbArray;
  MawbSerial:Integer;
  MawbId:String;
  ArrivalDate:Tdatetime;
Begin
   For I:=1 to Length(MawbArray) do begin

   end;

   BatchDetails.OldFileName:=GetFileName;
   BatchDetails.NewFileName:=GetNewFileName(BatchDetails.OldFileName);

   If Trim(BatchDetails.OldFileName)='' then  begin
                ShowMessage('No File was Selected');
                Result:=False;
                abort;
   end;


   MawbTable:=TTableValues.Create;

//   MawbTable.AddNode('TDOCNo','MawbSQL','xMawbId',TRUE);//this tag will read the MawbID but it will not be used to automatically update the table
   MawbTable.AddNode('TDOCNo','MawbSQL','Mawb_Id',false);//this tag will read the MawbID but it will not be used to automatically update the table
   MawbTable.AddNode('ArrivalDate','MawbSQL','Date_Arrived',FALSE);

   Parser := TXmlParser.Create;          // Create Parser Instance
   Parser.Normalize := TRUE; // (i.e. pack and trimm off Whitespaces)
   Parser.LoadFromFile (BatchDetails.OldFileName);
  Parser.StartScan;

  IsGetTagValue:=False;
  IsContent:=False;
  IsStartTag:=False;
  CountMawb:=0;
  MawbSQL.CLose;
  WHILE Parser.Scan DO begin

        if Parser.CurPartType=ptStartTag then begin
        //* From starttag we find
        //* the type of item (mawb, hawb, item) or if the tag is in the array and it is useful to read its content

                TheTag:=StripColon(Parser.Curname);
                IsGetTagValue:=False; // read the content after a tag only for tags in array
                if MawbTable.FindNode(TheTag,tagRecord) then begin
                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.TagName);
                        IsGetTagValue:=True;
                end;
        end else if Parser.CurPartType=ptEndTag then begin
                TheTag:=StripColon(Parser.Curname);
                IsGetTagValue:=False;
        end else if Parser.CurPartType=ptContent then begin
                If ISGetTagValue then begin  // we had previously a usefule startag
                        TheTag:=StripColon(Parser.Curname);
                        MawbTable.UpdateValue(TheTag,Parser.CurContent);
                        if TheTag='TDOCNo' then begin
                            Inc(CountMawb);
                            MawbID:=Parser.CurContent;

                            if IsMawbExists(MawbId,MawbSerial,ArrivalDate) then begin
                                 MawbArray[CountMawb].MawbId:=MawbId;
                                    {
                                 if (Date - ArrivalDate)>100 then begin
                                 //found an OLD Mawb. GO ahead and create new one
                                   //ShowMessage('arrival date'+DateToStr(ArrivalDate));;
                                        MawbSQL.Insert;
                                        MawbSerial:=MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
                                        MawbId:=IntToStr('MawbSerial');
                                        MawbSQL.FieldByName('mawb_id').Value:=MawbId;
                                        MawbSQL.FieldByName('REFERENCE_YEAR').Value:='2022';
                                        MawbSQL.FieldByName('PASSED').Value:='N';
                                        MawbSQL.FieldByName('SENT_TO_HEAD').Value:='N';
                                        MawbSQL.FieldByName('INVOICED').Value:='N';
                                //ShowMessage('Mawb id'+MawbId+'Mawbserial'+IntToStr(MawbSerial));
                                        MawbSQL.Post;

                                 end;
                            }
                             //*****************************************************************
                            end else begin
                             //****************************************************************

                                IF not MawbSQL.Active then begin
                                        MawbSQL.Open;
                                End;
                                MawbSQL.Insert;
                                MawbSerial:=MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
                                MawbSQL.FieldByName('mawb_id').Value:=MawbId;

                                MawbSQL.FieldByName('REFERENCE_YEAR').Value:='2022';
                                MawbSQL.FieldByName('PASSED').Value:='N';
                                MawbSQL.FieldByName('SENT_TO_HEAD').Value:='N';
                                MawbSQL.FieldByName('INVOICED').Value:='N';
                                //ShowMessage('Mawb id'+MawbId+'Mawbserial'+IntToStr(MawbSerial));
                                MawbSQL.Post;

                            end;
                                MawbArray[CountMawb].MawbId:=MawbID;
                                MawbArray[CountMawb].SerialNumber:=MawbSerial;
                                MawbArray[CountMawb].IsExists:=True;
                        end;

                        IsGetTagValue:=False;
                end;
        end;

 end;//While
  MawbTable.Destroy;
  Parser.Free;

 ProcessFile(BatchDetails,mawbArray);
    //Self.ViewTableNodes(MawbTable);
{
  For I:=1 to CountMawb do begin
        ShowMessage('I:'+IntToStr(I)+'='+MawbArray[I].MawbId + 'serial='+IntToStr(MawbArray[i].SerialNumber));


  end;
}

end;                   

procedure TReadFileCopyofFRM.ReadFileBTNClick(Sender: TObject);
Var MawbArray :TMawbArray;
Begin
        ReadFirstPass ;
         {
        if ReadFirstPass  then begin
                HawbGRD.Visible:=True;
                ProcessFile(MawbArray)
        end else begin
                ShowMessage('File Already Loaded');
        end;
        HawbGRD.VIsible:=False;
        }

End;

Function TReadFileCopyofFRM.DefaultWaitingCode:String;
Var
 WD:String;
Begin

        with FindDefaultMediumWaitingCodeSQL do begin
                   close;
                   Open;
                   Wd:= FieldbyName('CODE').AsString;
                   result:=WD;
        end;
End;

Function TReadFileCopyofFRM.FindDefaultMediumVat:Double;
Var
 WD:String;
Begin

        with FindDefaultVATSQL do begin
                   close;
                   Open;
                   Result:= FieldbyName('Rate').AsFloat;
        end;


End;


Function TReadFileCopyofFRM.FindCharge(TheKey,TheDescription:String;var Num1:Double):Boolean;
Begin
   with FIndChargeSQL do
     begin
        close;
        if not prepared then prepare;
        ParamByName('TheCode').Value:=TheKey;
        open;
        If not IsEmpty then begin
                Num1:=FieldByName('Amount').asFloat;
        end;
        result:=not IsEmpty;
     end;
End;


Function TReadFileCopyofFRM.FindDefaultDeliveryCharge:Double;
Var
 WD:String;
Begin


   with FIndDeliveryOrderChargeSQL do begin
        close;
        if not prepared then prepare;
        ParamByName('TheCode').Value:='D3';
        open;
        if IsEmpty then
        begin
                ShowMessage('Add a D3 record in other_charge table for Delivery Charges required by customs');
                abort;
        end;
        Result:=FieldByName('amount').asFloat;   //this is charged by customs
     end;

End;

Function TReadFileCopyofFRM.FindDefaultStorageCharge:Double;
Begin


     //EDE storage Expenses
     with FIndDeliveryOrderChargeSQL do

     begin
        close;
        if not prepared then prepare;
        ParamByName('TheCode').Value:='D4';
        open;
        if IsEmpty then
        begin
                ShowMessage('Add a D4 record in other_charge table for Storage Charges required by Customs');
                abort;
        end;
        Result:=FieldByName('amount').asFloat;
     end;


End;




Function TReadFileCopyofFRM.ProcessFile(Const BatchDetails:TBatchDetails;Var MawbArray: TMawbARray):Boolean;

VAR
  ItemState:TItemType;
  TheTag:String;
  Parser : TXmlParser;
  //XmlFileName:String;
  x:string;
  TheContent:String;
  PartType:TPartType;
  IsContent:Boolean;
  IsStartTag:Boolean;

  TagRecord:TTagRecord;
  XTagRecord:TTagRecord;
  bTagRecord:TTagRecord;

  IsGetTagValue:Boolean;
  IsEmptyTag:Boolean;
  aString:String;


  OB:TObjectList;
  Si:TStackItem;
  I:Integer;
  MawbIndex:Integer;

  eTag:String;
  STag:String;
  ItemType:TItemType;
  HawbSerial:Integer;
  MawbSerial:Integer;
  ExistingMawbSerial:Integer;
  InvoiceSerial:Integer;
  DefaultDir:String;
  TheFile:String;
  HawbId:String;
  HawbRecord:THawbDetails;
  IsHawbExistsBool:Boolean;
  NewName:String;
  XSerial:Integer;
  ArrivalDate:TDatetime;

  CountMawb:Integer;
  CountHawb:Integer;
  TempFcustomer:Integer;

BEGIN

//         XmlFileName:=MawbDetails.OldFileName;

        //*******************************************************
        //****  Create Mawb fields from tags ******************
        //*******************************************************

        MawbTable:=TTableValues.Create;

        MawbTable.AddNodewithValue('TDOCNo','MawbSQL','Mawb_id','-1',FALSE);// MawbID was Read before
        MawbTable.AddNode('ArrivalDate','MawbSQL','Date_Arrived',FALSE);
        MawbTable.AddNode('X_MawbID','MawbSQL','MawbId',true);


        //*******************************************************
        //****  Create Hawb and Sender Invoice fields from tags ******************
        //*******************************************************

        HawbTable:=TTableValues.Create;

        HawbTable.AddNodeWithValue('X_FK_CLEARING_STATE','HawbSQL','FK_CLEARING_STATE','0',FALSE);
        HawbTable.AddNodeWithValue('X_FK_INVOICE_STATUS','HawbSQL','FK_INVOICE_STATUS','0',FALSE);
        HawbTable.AddNodeWithValue('X_FK_MAWB_ID','HawbSQL','FK_mawb_id','999',FALSE);
        HawbTable.AddNodeWithValue('X_DELIVERY_ORDER_AMOUNT','HawbSQL','DELIVERY_ORDER_AMOUNT','0',FALSE);
        HawbTable.AddNodeWithValue('X_INVOICE_AMOUNT','SenderINvoiceSQL','INVOICE_AMOUNT','0',FALSE);
        HawbTable.AddNodeWithValue('X_MEDIUM_CUSTOMS_VALUE','SenderINvoiceSQL','CUSTOMS_VALUE','0',FALSE);


        HawbTable.AddNodeWithValue('X_CHARGE_VAT','HawbSQL','CHARGE_VAT','0',FALSE);

        HawbTable.AddNodeWithValue('X_MEDIUM_HAWB_CUSTOMS_VALUE','HawbSQL','CUSTOMS_VALUE','0',FALSE);
        HawbTable.AddNodeWithValue('X_MEDIUM_VAT','HAWBSQL','MEDIUM_VAT_RATE',FloatToSTr(GlobalDefaultMediumVAT),FALSE);

        HawbTable.AddNode('HAWB','HawbSQL','Hab_id',FALSE);
        HawbTable.AddNode('SDPieces','HawbSQL','NUMBER_OF_PARCELS',FALSE);
        HawbTable.AddNode('ManifestedPieces','HawbSQL','NUM_OF_PIECES_ARRIVED',FALSE);
        HawbTable.AddNode('CargoDesc','HawbSQL','DESCRIPTION',FALSE);
        HawbTable.AddNode('GrossWgt','HawbSQL','weight',false);
        HawbTable.AddNode('DutyTaxFee','HawbSQL','tax',false);
        HawbTable.AddNode('ShpCtryOrgn','HawbSQL','fk_country_origin',false);
        HawbTable.AddNode('ArrivalDateInDischarge','HawbSQL','DATE_REGISTERED',false);
        HawbTable.AddNode('CstmsVal','SenderInvoiceSQL','xx',true);
        HawbTable.AddNode('X_PRE_DISCOUNT_AMOUNT','SenderInvoiceSQL','PRE_DISCOUNT_AMOUNT',false);

        //SenderInvoiceTable:=TTableValues.Create;
        //SenderInvoiceTable.AddNode('CstmsVal','SenderInvoiceSQL','INvoice_amount',True);



        HawbTable.AddNode('Frght','SenderInvoiceSQL','FREIGHT_AMOUNT',FALSE);


        HawbTable.AddNode('Incoterms','HawbSQL','FK_DELIVERY_TERM',FALSE);

        HawbTable.AddNode('Category','HawbSQL','x_FK_DELIVERY_TERM',TRUE);
        HawbTable.AddNodeWithNull('X_IsMedium','HawbSQL','IS_MEDIUM');
        HawbTable.AddNodeWithNull('X_IsHigh','HawbSQL','HIGH_VALUE');
        //HawbTable.AddNodeWithNull('X_IsLow','HawbSQL','IS_PRIVATE');asdfasd

        HawbTable.AddNode('DHLServiceCd','HawbSQL','AIS_PAID',true);
        HawbTable.AddNode('X_IsPaid','HawbSQL','IS_PAID',FALSE);

        HawbTable.AddNode('Status','HawbSQL','x_CLEARANCE_WAITING_CODE',TRUE);
        HawbTable.AddNode('X_WAITING_REASON','HawbSQL','CLEARANCE_WAITING_CODE',FALSE);


        //HawbTable.AddNode('InvNo','SenderInvoiceSQL','INVOICE_NUMBER',false);

        HawbTable.AddNode('CstmsValCrncyCd','SenderInvoiceSQL','ACurrency',TRUE);
        HawbTable.AddNode('X_CURRENCY','SenderInvoiceSQL','CURRENCY',false);
        HawbTable.AddNode('X_ExchangeRate','SenderInvoiceSQL','EXCHANGE_RATE',false);


        //HawbTable.AddNode('CoName','HawbSQL','CUSTOMER_NAME',FALSE);
        HawbTable.AddNode('X_Clearance','HawbSQL','FK_CLEARANCE_TYPE',FALSE);


        //*******************************************************
        //****  Create Hawb Items fields from tags ******************
        //*******************************************************

        ItemTable:=TTableValues.Create;


        ItemTable.AddNodeWithValue('X_FK_RELIEF_CODE','HawbItemSQL','FK_RELIEF_CODE','0',false);
        ItemTable.AddNodeWithValue('X_FK_IMPORT_TYPE','HawbItemSQL','FK_IMPORT_TYPE','C',false);
        ItemTable.AddNodeWithValue('X_DUTY_TYPE','HawbItemSQL','DUTY_TYPE','G',false);


        ITemTable.AddNode('TariffCdNo','HawbItemSQL','xxFK_TARIFF_CODE',TRUE);
        ItemTable.AddNode('X_Tariff','HawbItemSQL','FK_TARIFF_CODE',FALSE);

        ItemTable.AddNode('X_RATE','HawbItemSQL','IMPORT_DUTY_RATE',FALSE);
        ItemTable.AddNode('X_QUANTITY','HawbItemSQL','IMPORT_DUTY_RATE_QUANT',FALSE);
        ItemTable.AddNode('X_BASE_QUANTITY','HawbItemSQL','IMPORT_DUTY_RATE_BASE',FALSE);
        ItemTable.AddNode('X_TRL','HawbItemSQL','TRL_RATE',FALSE);


        ItemTable.AddNode('InvNo','SenderInvoiceSQL','INVOICE_NUMBER',false);

{
        Incoterms DELIVERY_TERM   OK
        DHLServiceCd IS_PAID (DDP or DTP)    OK

        Category 0 Documents,==== 1,2 Low value, 3 Medium == 4,5,6 High

        Under ShpImpter
                TraderID Customer ID
                CoName
 }

        ItemTable.AddNode('GoodsItemNo','HawbItemSQL','INVOICE_LINE',false);
        ItemTable.AddNode('DutyTaxFeeRate','HawbItemSQL','EXCISE_DUTY_RATE',false);

        ItemTable.AddNode('DescOfGoods','HawbItemSQL','DESCRIPTION',false);
        ItemTable.AddNode('UnitPrice','HawbItemSQL','INVOICE_VALUE',false);
        ItemTable.AddNode('InvLineVal','HawbItemSQL','PRE_DISCOUNT_AMOUNT',false);
        ItemTable.AddNode('InvCrncyCd','HawbItemSQL','CURRENCY',false);
        ItemTable.AddNode('X_ExchangeRate','HawbItemSQL','CURRENCY_RATE',false);     //X Find it manually

        ItemTable.AddNode('CtryMfctrerOrgn','HawbItemSQL','STring_COUNTRY_ORIGIN',True);
        ItemTable.AddNode('X_OriginCountry','HawbItemSQL','FK_COUNTRY_ORIGIN',false); //find it adf

        //ItemTable.AddNode('X_CustomsValue','HawbItemSQL','Customs_value',false);     //it will be fixed
        ItemTable.AddNode('MeasureUnitQualifier','HawbItemSQL','IMPORT_DUTY_RATE_UNIT',false);

        ItemTable.AddNode('TariffQnty','HawbItemSQL','NET_QUANTITY',false);
         ItemTable.AddNode('NetWeight','HawbItemSQL','WEIGHT_NET',false);

        //*******************************************************
        //****  Create Sender Customer fields from tags ******************
        //*******************************************************

        SenderTable:=TTableValues.Create;
        SenderTable.AddNodeWithValue('CoName','HawbSQL','SENDER_NAME','0',false);

        SenderTable.AddNode('X_SENDER_ADDRESS','HawbSQL','SENDER_ADDRESS_1',false);

        SenderTable.AddNode('AddrLn1','HawbSQL','xSENDER_ADDRESS_1',True);
        SenderTable.AddNode('AddrLn2','HawbSQL','xSENDER_ADDRESS_2',True);
        SenderTable.AddNode('AddrLn3','HawbSQL','xSENDER_ADDRESS_3',True);
        SenderTable.AddNode('City','HawbSQL','xSCIty',True);
        SenderTable.AddNode('PostalCd','HawbSQL','xPostalcd',True);
        SenderTable.AddNode('State','HawbSQL','xstate',True);
        SenderTable.AddNode('CtryCd','HawbSQL','xctrycd',True);

        //*******************************************************
        //****  Create Receiving Customer fields from tags
        //*****  will get all the fields but not the code (Trader ID)*************
        //*******************************************************

        CustomerTable:=TTableValues.Create;
        CustomerTable.AddNode('TraderID','HawbSQL','xFK_CUSTOMER_CODE',TRUE);
        CustomerTable.AddNodeWithNull('X_CUSTOMER_CODE','HawbSQL','FK_CUSTOMER_CODE');
        CustomerTable.AddNodeWithNull('X_CUSTOMER_NAME','HawbSQL','CUSTOMER_NAME');
        CustomerTable.AddNodeWithNull('X_IsPrivate','HawbSQL','IS_PRIVATE');


        //*******************************************************
        //****  To Get the customer code from Trader ID
        //*******************************************************
        CustomerNameTable:=TTableValues.Create;
        CustomerNameTable.AddNode('CoName','HawbSQL','xxCUSTOMER_NAME',True);
        CustomerNameTable.AddNode('AddrLn1','CustomerSQL','xxCUSTOMER_NAME',True);
        CustomerNameTable.AddNode('AddrLn2','CustomerSQL','xxCUSTOMER_NAME',True);
        CustomerNameTable.AddNode('AddrLn3','CustomerSQL','xxCUSTOMER_NAME',True);
        CustomerNameTable.AddNode('City','CustomerSQL','xxCUSTOMER_NAME',True);
        CustomerNameTable.AddNode('PostalCd','CustomerSQL','xxCUSTOMER_NAME',True);
        CustomerNameTable.AddNode('DeviceType','CustomerSQL','xxCUSTOMER_NAME',True);
        CustomerNameTable.AddNode('DeviceDtls','CustomerSQL','xxCUSTOMER_NAME',True);

        //*******************************************************
        //****  Create SenderInvoice  Customer fields from tags ******************
        //*******************************************************



//
//

  OB:=TObjectList.Create(true);


  Parser := TXmlParser.Create;          // Create Parser Instance
  Parser.Normalize := TRUE; // (i.e. pack and trimm off Whitespaces)
  Parser.LoadFromFile(BatchDetails.OldFileName);


  //  XmlFilename:='E:\All\CabReadXML\Documentation\Test1.xml';


  Parser.StartScan;
  //Dtls-Entries-Entry-(VanningPlace,Mvmts-Mvmt-TDOCS-TDOC-Shps-Shp-(HAWB,LineItems-LineItem, A lot of other fields)
  MawbSQL.Close;
  MawbSQL.Open;
  HawbSQL.Close;
  HawbSQL.open;
  SenderInvoiceSQL.Close;
  SenderInvoiceSQL.Open;
  HawbItemSQL.Close;
  HawbItemSQL.Open;

  CountMawb:=0;
  CountHawb:=0;
  MawbIndex:=0;

  IsGetTagValue:=False;
  IsContent:=False;
  IsStartTag:=False;
  ItemType:=itMawb;
  InvoiceSerial:=0;
  WHILE Parser.Scan DO begin

//***********************************************************************************
//******** Start Tag***************************************************************************
//***********************************************************************************
        if Parser.CurPartType=ptStartTag then begin
        //* From starttag we find
        //* the type of item (mawb, hawb, item) or if the tag is in the array and it is useful to read its content

                TheTag:=StripColon(Parser.Curname);
                IsGetTagValue:=False; // read the content after a tag only for tags in array
                IsStartTag:=True;
                If TheTag=MawbTag then begin
                //************************************************************************
                //** we are now reading Mawb data
                //************************************************************************
                        ItemType:=itMawb;
                        ob.Add(TStackItem.Create(MawbTag,itMawb));
                        //ShowMessage('add '+TstackItem(ob.Items[ob.count-1]).State);
                        ItemType:=itMawb;
                        {
                        MawbSQL.Insert;
                        MawbSerial:=MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
                        MawbSQL.FieldByName('mawb_id').Value:=IntToStr(MawbSerial);
                        MawbSQL.FieldByName('REFERENCE_YEAR').Value:='2022';
                        MawbSQL.FieldByName('PASSED').Value:='N';
                        MawbSQL.FieldByName('SENT_TO_HEAD').Value:='N';
                        MawbSQL.FieldByName('INVOICED').Value:='N';
                        }
                        //If RecentMawbExists()
                        Inc(MawbIndex);
                        MawbSerial:=MawbArray[MawbIndex].SerialNumber;
                        WIth MawbSql do begin
                                Close;
                                ParambyName('MawbSerial').Value:=MawbSerial;
                                Open;
                                aString:=FieldByName('Mawb_id').AsString;
                                MawbTable.UpdateValue('X_MawbID',aString);
                        end;
                end else If TheTag=HawbTag then begin
                //************************************************************************
                //** we are now reading Hawb data
                //************************************************************************
                        ItemType:=itHawb;
                        ob.Add(TStackItem.Create(HawbTag,itHawb));
                        //ShowMessage('add '+TstackItem(ob.Items[ob.count-1]).State);
                        ItemType:=itHawb;

                        HawbSQL.Insert;
                        HawbSQL.FieldByName('hab_id').Value:=HawbSQL.FieldByname('SERIAL_NUMBER').AsString;
                        HawbSQL.FieldByName('FK_MAWB_REFER_NUMBER').Value:=MawbSerial;
                        HawbSQL.FieldByName('SENT_TO_HEAD').Value:='N';
                        HawbSQL.FieldByName('FK_CUSTOMER_ACCOUNT').Value:=0;




                        HawbSQL.FieldByName('Fk_clearance_type').value:='IM 4';


                        HawbSQL.FieldByName('Other_charge_Paid').Value:='N';
                        HawbSQL.FieldByName('Fk_clearing_state').value:=0;
                        HawbSQL.FieldByName('Fk_invoice_status').value:=0;
                        HawbSQL.FieldByName('SENT_TO_HEAD').Value:='N';
                        HawbSQL.FieldByNAME('Date_Registered').value:=date;

                        HawbSQL.FieldByName('Invoicable').Value:='Y';

                        HawbSQL.FieldByName('Invoice_Total').Value:=0;
                        HawbSQL.FieldByName('Freight_Amount').Value:=0;
                        HawbSQL.FieldByName('Customs_Value').Value:=0;
                        HawbSQL.FieldByName('Stamps_amount').Value:=0;
                        HawbSQL.FieldByName('Other_charge_amount').Value:=0;
                        HawbSQL.FieldByName('FK_SEC_MAWB_REFER_NUMBER').Value:=0;

                        HawbSQL.FieldByName('EDE_DELIVERY_EXPENSES').Value:=GlobalDeliveryCharge;
                        HawbSQL.FieldByName('EDE_STORAGE_EXPENSES').Value:=GlobalStorageCharge;
                        HawbSQL.FieldByName('MEDIUM_VAT_RATE').Value:=self.GlobalDefaultMediumVAT;



                        //ShowMessage('habserial='+ HawbSQL.FieldByName('FK_MAWB_REFER_NUMBER').AsString);


                        HawbSQL.Post;
                        HawbSerial:=HawbSQL.FieldByName('serial_number').AsInteger;

                        Inc(invoiceSerial);
                        SenderInvoiceSQL.Insert;
                        //SenderInvoiceSQL.FieldByName('INVOICE_SERIAL').Value:=InvoiceSerial;
                        SenderInvoiceSQL.FieldByName('INVOICE_SERIAL').Value:=HawbSerial;
                        SenderInvoiceSQL.FieldByName('INVOICE_number').Value:=1000;
                        SenderInvoiceSQL.FieldByName('FK_MAWB_sERIAL').Value:=mawbSerial;
                        SenderInvoiceSQL.FieldByName('FK_HAWB_SERIAL').Value:=HawbSerial;
                        SenderInvoiceSQL.FieldByName('total_amount').Value:=0;
                        SenderInvoiceSQL.FieldByName('invoice_amount').Value:=0;
                        SenderInvoiceSQL.FieldByName('discount_amount').Value:=0;
                        SenderInvoiceSQL.FieldByName('freight_amount').Value:=0;
                        SenderInvoiceSQL.FieldByName('is_valid').Value:='Y';
                        SenderInvoiceSQL.FieldByName('CURRENCY').Value:='EUR';// it will change later on
                        SenderInvoiceSQL.FieldByName('EXCHANGE_RATE').Value:=1;

                        SenderInvoiceSQL.Post;
                        InvoiceSerial:=SenderInvoiceSQL.FieldByName('INVOICE_SERIAL').AsInteger;


                end else if (TheTag=ItemTag) then begin
                //************************************************************************
                //** we are now reading Hawb ITem data
                //************************************************************************
                        ItemType:=itItem;
                        ob.Add(TStackItem.Create('Item',itItem));
                        //ShowMessage('add '+TstackItem(ob.Items[ob.count-1]).State);
                        HawbItemSQL.Insert;
                        HawbItemSQL.FieldByName('FK_MAWB').Value:=mawbSerial;
                        HawbItemSQL.FieldByName('FK_HAWB_SERIAL').Value:=HawbSerial;
                        HawbItemSQL.FieldByName('FK_SENDER_INVOICE_SERIAL').Value:=InvoiceSerial;


                        HawbItemSQL.FieldByName('FK_VAT_CODE').value:='1';
                        HawbItemSQL.FieldByName('FK_EXCISE_CODE').value:=' ';
                        HawbItemSQL.FieldByName('MULTI_ITEMS_INVOICE').Value:='N';
                        HawbItemSQL.FieldByName('DUTY_TYPE').Value:='G';
                        HawbItemSQL.FieldByName('EURO_PENDING').value:='N';
                        HawbItemSQL.FieldByName('FK_IMPORT_TYPE').value:='C';
                        HawbItemSQL.FieldByName('POSOSTOSIS').value:='N';
                        HawbItemSQL.FieldByName('FK_RELIEF_CODE').value:='0';



                        //HawbItemSQL.FieldByName('CURRENCY').Value:='EUR';
                        HawbItemSQL.Post;
                end else if (TheTag=SenderTag) then begin
                        ItemType:=itSender;
                        ob.Add(TStackItem.Create('Sender',itSender));
                end else if (TheTag=CustomerTag) then begin
                        ItemType:=itCustomer;
                        ob.Add(TStackItem.Create('Customer',itCustomer));
                end else if (TheTag=CustomerNameTag) then begin
                        ItemType:=itCustomerName;
                        ob.Add(TStackItem.Create('Customer Name',itCustomerName));
                {end else if (TheTag=SenderInvoiceTag) then begin
                        ItemType:=itSenderInvoice;
                        ob.Add(TStackItem.Create('Sender Invoie',itSenderInvoice));
                }
                end else begin
                //************************************************************************
                // Check if this StartTag is useful
                //************************************************************************
                        {
                        if theTag='ArrivalDate' then begin
                                ShowMessage('date');
                        end;
                        }
                        if ItemType=itMawb then begin
                                if MawbTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.TagName);
                                end;
                        end else if ItemType=itHawb then begin
                                if hawbTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                end;
                        end else if ItemType=itItem then begin
                                if ItemTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.FieldName);
                                end;
                        end else if ItemType=itSender then begin
                                if SenderTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.FieldName);
                                end;
                        end else if ItemType=itCustomer then begin
                                if CustomerTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.FieldName);
                                end;
                        end else if ItemType=itCustomerName then begin
                                if CustomerNameTable.FindNode(TheTag,tagRecord) then begin
                                        IsGetTagValue:=True;
                                        //ShowMessage('found useful tag='+TheTag+' '+TagRecord.FieldName);
                                end;
                        end;

                end;
//***********************************************************************************
//******** End Tag***************************************************************************
//***********************************************************************************

        end else if Parser.CurPartType=ptEndTag then begin
                TheTag:=StripColon(Parser.Curname);
                IsGetTagValue:=False;
                If (TheTag=MawbTag) or (TheTag=HawbTag) or (TheTag=ItemTag)or (theTag=SenderTag)or (TheTag=CustomerTag)or (TheTag=CustomerNameTag) {or (TheTag=SenderInvoiceTag)}then begin //xxx was used for testing
                        // Pop out last stack item to find what item was read before
                        ob.Delete(ob.count-1);
                        If ob.Count>0 then begin
                                ItemType:= TstackItem(ob[ob.count-1]).ItemType;
                        end;
                end;

                If TheTag=MawbTag then begin


                        MawbSQL.Edit;

                        FixMawb(1);

                        UpdateTable(MawbTable);

                        MawbTable.FindNode('TDOCNo',xTagRecord);
                        if IsMawbExists(XTagRecord.FIeldValue,ExistingMawbSerial,ArrivalDate) then begin
                                //ShowMessage('Id='+xTagRecord.FIeldValue+ IntToStr(mawbSerial));


                                //ShowMessage('ERROR: MawbId '+XTagRecord.FIeldValue+ ' Already EXISTS but it will continue');
                                //MawbSQL.FieldByName('mawb_id').Value:=MawbSQL.FieldbYName('reference_number').AsString;
                                //ShowMessage(   MawbSQL.FieldByName('mawb_id').AsString);

                        end;

                        MawbSQL.Post;
                        ProcessLowValue(MawbSerial);
                        MawbTable.CleanTableNodes;
                end else If TheTag=HawbTag then begin
                        //ViewTableNodes(HawbTable);

                        HawbSQL.Edit;
                        SenderInvoiceSQL.Edit;

                        FixHawb(1);
                        FixInvoice(1); // there is no InvoiceTable , may be I should have created it. After fixhawb to check for medium
                        FixSender(1);
                        FIxCustomer(1); // fixes values in both customer and customerName table
                        //FIxCustomerName(TempFCustomer); updated in fixCustomer but CustomerNameTable still needed to copy values to table

                        HawbTable.FindNode('HAWB',BTagRecord);
                        HawbId:=BtagRecord.FIeldValue;
                        IsHawbExistsBool:= IsHawbExists(HawbId,HawbRecord);
                        If IsHawbExistsBool then begin
                        // Create the partial and delete the original hawb after

                                HawbRecord.HawbNewSerial:=HawbSerial;
                                HawbRecord.MawbNewSerial:=MawbSerial;

                                HawbTable.FindNode('CargoDesc',BTagRecord);
                                HawbRecord.Description:=BTagRecord.FIeldValue;

                                MawbTable.FindNode('X_MawbID',BTagRecord); //abc
                                HawbRecord.MawbNewId:=BTagRecord.FIeldValue;

                                HawbTable.FindNode('GrossWgt',BTagRecord);
                                HawbRecord.Weight:=StrToFloatMy(BtagRecord.FieldValue);

                                HawbTable.FindNode('ManifestedPieces',BTagRecord);
                                HawbRecord.Pieces:=StrToINtDef(BTagRecord.FIeldValue,0);

                                CreatePartialHawb(HawbId,HawbRecord);
                                HawbTable.UpdateValue('HAWB',IntToStr(HawbSerial));
                        end;

                        UpdateTable(HawbTable);
                        UpdateTable(CustomerTable);
                        UpdateTable(SenderTable);
                        UpdateTable(CustomerNameTable);
                        //UpdateTable(SenderInvoiceTable);



                        HawbSQL.Post;
                        SenderInvoiceSQL.Post;


                        If IsHawbExistsBool then begin
                                DeleteHawb(hawbSerial);
                        end;

                        HawbTable.CleanTableNodes;
                        SenderTable.CleanTableNodes;
                        CustomerTable.CleanTableNodes;
                        CustomerNameTable.CleanTableNodes;
                        //SenderInvoiceTable.CleanTableNodes;

                        Inc(CountHawb);
                end else if (TheTag=ItemTag) then begin
                        // do your stuff, insert the hawb item
                        SenderInvoiceSQL.Edit;
                        HawbItemSQL.Edit;
                        FixItem(1);
                        UpdateTable(ItemTable);
                        //UPdateInvoice(1);
                        HawbItemSQL.Post;
                        SenderInvoiceSQL.Post;
                        ItemTable.CleanTableNodes;
                end else if (TheTag=SenderTag) then begin
                        // do your stuff in update hawb since sender details are actually contained in customer node

                end else if (TheTag=CustomerTag) then begin
                        //CustomerTable.FindNode('TraderId',TagRecord);
                        //TempFCustomer:=StrToIntDef(TagRecord.FIeldValue,-1);
                end else if (TheTag=CustomerNameTag) then begin
                        // do your stuff in update hawb since sender details are actually contained in customer node
                {
                end else if (TheTag=SenderInvoiceTag) then begin
                        // do your stuff in update hawb since sender details are actually contained in customer node
                }
                end else begin
                end;

        end else if Parser.CurPartType=ptContent then begin
//***********************************************************************************
//******** XContent***************************************************************************
//***********************************************************************************
                If ISGetTagValue then begin  // we had previously a usefule startag
                        //raph.GetNode(CurrentState,theTag,TagRecord);
                        if ItemType=itMawb then begin
                                //ShowMessage('Mawb- '+TagRecord.TagName+' update =*'+ Parser.CurContent+'*');
                                MawbTable.UpdateValue(TheTag,Parser.CurContent);
                        end else if ItemType=itHawb then begin
                                HawbTable.UpdateValue(TheTag,Parser.CurContent);

                                If TheTag='GoodsItemNo' then begin
                                        ShowMessage('found  tag='+TheTag+' value:= '+TagRecord.FIeldValue+'pa'+Parser.CurContent);
                                end;

                        end else if ItemType=itItem then begin
                                //ShowMessage('Hawb item- '+TagRecord.TagName+' update =*'+ Parser.CurContent+'*');
                                ItemTable.UpdateValue(TheTag,Parser.CurContent);
                        end else if ItemType=itSender then begin
                                SenderTable.UpdateValue(TheTag,Parser.CurContent);
                        end else if ItemType=itCustomer then begin
                                CustomerTable.UpdateValue(TheTag,Parser.CurContent);
                        end else if ItemType=itCustomerName then begin
                                CustomerNameTable.UpdateValue(TheTag,Parser.CurContent);
                                //ShowMessage('Name- '+TagRecord.TagName+' update =*'+ Parser.CurContent+'*');
                        end;
                        IsGetTagValue:=False; // clear the flag of a usefule startag
                end;
        //end else begin
        end;


end; //while


  Parser.Free;
  ob.Free;
  MawbTable.Destroy;
  HawbTable.Destroy;
  ItemTable.Destroy;
  SenderTable.Destroy;
  CustomerTable.Destroy;
  CustomerNameTable.Destroy;
  //SEnderInvoiceTable.Destroy;

  ShowMessage('Mawbs: '+IntToStr(CountMawb)+' ,Hawbs: '+IntToSTr(CountHawb));


  //CopyFile(Pchar(BatchDetails.OldFileName), Pchar(BatchDetails.NewFileName), false);

  if not RenameFile(BatchDetails.OldFileName ,BatchDetails.NewFileName) then
        ShowMEssage('Cannot rename file. Error: '+IntToStr(GetLastError));


End;

Procedure TReadFileCopyofFRM.ViewTableNodes(ATable:TTableValues);
vAR
        I:Integer;
        TagRecord:TTagRecord;
begin

  aTable.GoFirstNode;
  While aTable.GetNextNode(tagRecord) do begin
        ShowMessage(TagRecord.TagName+' - ' + tagRecord.FieldName+ ' : '+TagRecord.FIeldValue);
  end;


end;


procedure TReadFileCopyofFRM.DeleteOneHawb(HawbSerial:Integer);
Var
I: integer;
SelectedCount:Integer;
HawbSerialStr:String;
HawbId:String;
DeleteSQL:String;
IsCleared,IsInvoiced,IsFound:Boolean;
Begin

     with HawbSQL do begin
        close;
        if not prepared Then Prepare;
        ParamByName('HawbSerial').value:= HawbSerial;
        Open;
        IsFound:=(not Isempty);
        IsCleared:= (FieldByName('FK_CLEARING_STATE').AsInteger=1);
        IsInvoiced:=(FieldByName('FK_INVOICE_STATUS').AsInteger=1);
        HawbId:= FieldByName('Hab_id').AsString;
        HawbSerialStr:=IntToStr(hawbserial);
     end;


        if( IsFound and  (not IsInvoiced) and (not IsCleared)) then begin
                with  DeleteOneCDS do begin
                                   //HawbStatusC_CDS.Autocommit:=False;
                                   //HawbStatusC_CDS.Transaction:=ClairDML.UsedForReadOnlyTrans;
                                   //HawbStatusC_CDS.UpdateTransaction:=DeleteOneCDS.Transaction;
                                    DeleteOneCDS.AutoCommit:=false;
                                    DeleteOneCDS.Transaction:=DeleteTrans;
                                    DeleteOneCDS.Transaction.StartTransaction;  // this transaction may apply to other tables as well

                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from Hawb_item where fk_hawb_serial= '+HawbSerialStr+';';
                                    DeleteOneCDS.Execute;


                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from Hawb_cOMMENTS where fk_hawb_serial= '+HawbSerialStr;
                                    DeleteOneCDS.Execute;

                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from Hawb_Partial where fk_hawb_serial_original= '+HawbSerialStr;
                                    DeleteOneCDS.Execute;

                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from SENDER_INVOICE where fk_hawb_serial= '+HawbSerialStr;
                                    DeleteOneCDS.Execute;


                                    DeleteOneCDS.SQL.Clear;
                                    DeleteOneCDS.SQL.Text:='Delete from HAWB where SERIAL_NUMBER= '+HawbSerialStr;
                                    DeleteOneCDS.Execute;

                                    DeleteOneCDS.Transaction.Commit;

                end;
        end;


End;




procedure TReadFileCopyofFRM.CopyHawbToLow(HawbSerial:integer);
Var
 DatasetSource:TIBCQuery;
 DatasetDest:TIBCQuery;
Begin
// Insert entry in Hawb_deleted_low when deleting low value Hawbs

        DatasetSource:=HawbSQL ;
        DatasetDest:=FindHawbLowDeletedSQL;

     with DatasetSource do begin
        close;
        if not prepared Then Prepare;
        ParamByName('HawbSerial').value:= HawbSerial;
        Open;
     end;

        try
        with Datasetsource do begin
                If not DatasetDest.active then DatasetDest.Open;

                DatasetDest.Insert;

                DatasetDest.FieldByName('HAB_ID').value:= FieldByName('HAB_ID').AsString;
                DatasetDest.FieldByName('FK_MAWB_REFER_NUMBER').value:= FieldByName('FK_MAWB_REFER_NUMBER').AsInteger;

                DatasetDest.FieldByName('FK_MAWB_ID').value:= FieldByName('FK_MAWB_ID').AsString;
                DatasetDest.FieldByName('FK_CUSTOMER_CODE').value:= FieldByName('FK_CUSTOMER_CODE').AsInteger;
                DatasetDest.FieldByName('FK_CURRENCY').value:= FieldByName('FK_CURRENCY').AsString;
                DatasetDest.FieldByName('FK_COUNTRY_ORIGIN').value:= FieldByName('FK_COUNTRY_ORIGIN').AsInteger;
                DatasetDest.FieldByName('DATE_REGISTERED').value:= FieldByName('DATE_REGISTERED').AsDateTime;
                DatasetDest.FieldByName('CUSTOMER_NAME').value:= FieldByName('CUSTOMER_NAME').AsString;


                DatasetDest.FieldByName('CUSTOMER_NAME').value:= FieldByName('CUSTOMER_NAME').AsString;
                DatasetDest.FieldByName('DESCRIPTION').value:= FieldByName('DESCRIPTION').AsString;
                DatasetDest.FieldByName('WEIGHT').value:= FieldByName('WEIGHT').AsFloat;
                DatasetDest.FieldByName('TOTAL_NUM_OF_PIECES').value:= FieldByName('TOTAL_NUM_OF_PIECES').AsInteger;
                DatasetDest.FieldByName('NUM_OF_PIECES_ARRIVED').value:= FieldByName('NUM_OF_PIECES_ARRIVED').AsInteger;
                DatasetDest.FieldByName('NUMBER_OF_PARCELS').value:= FieldByName('NUMBER_OF_PARCELS').AsInteger;
                DatasetDest.FieldByName('DISTRICT').value:= FieldByName('DISTRICT').AsString;
                DatasetDest.FieldByName('TOTAL_CHARGES').value:= FieldByName('TOTAL_CHARGES').AsFloat;




                DatasetDest.Post;
        end;
        except on E: Exception Do begin
                ShowMessage( e.Message);
                ShowMessage('Cannot insert');
                end;
        end;
End;





procedure TReadFileCopyofFRM.Button1Click(Sender: TObject);
Var
Ser:Integer;
//MawbDetails :TBatchDetails;

begin

end;

Function TReadFileCopyofFRM.ProcessLowValue(MawbSerial:Integer):Boolean;
Var
        HawbSerial:Integer;
Begin
   With ReadLowHawbSQL do begin

        Close;
        If Not Prepared then prepare;
        ParamByName('MawbSerial').Value:=MawbSerial;
        Open;
        While Not EOF do begin
                HawbSerial:=FieldByName('SERIAL_NUMBER').AsInteger;
                //ShowMessage('Process Low Value '+FieldByName('hab_id').AsString);
                CopyHawbToLow(HawbSerial);
                DeleteOneHawb(HawbSerial);

                NExt;
        end;
   end;
End;



procedure TReadFileCopyofFRM.FormActivate(Sender: TObject);
Var
        S1:String;
begin
HawbGRD.Visible:=False;
GlobalMediumWaitingREason:=DefaultWaitingCode;
GlobalStorageCharge:=self.FindDefaultStorageCharge;
GlobalDeliveryCharge:=FindDefaultDeliveryCharge;
GlobalDefaultMediumVAT:=FindDefaultMediumVat;


S1:='Add D12 using System->Params->Charges/General Amount = Minimum for Delivery charge, DHL Clears, No DdP';
if not FindCharge('D12',S1,GlobalDeliveryOrder_Minimum) then begin
        ShowMessage(S1);
        abort;
end;

S1:='Add D6 using System->Params->Charges/General Amount = Delivery charge, Customer Clears DTP';
if not FindCharge('D6',S1,GlobalDeliveryOrder_DDP) then begin
        ShowMessage(S1);
        abort;
end;



end;

end.

