�
 TM_TARIFFNEW2FRM 0�"  TPF0TM_TariffNew2FRMM_TariffNew2FRMLeft6Top� Caption
New TariffClientHeightrClientWidthbColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrderPositionpoDesktopCenter
OnActivateFormActivateOnClose	FormClosePixelsPerInchx
TextHeight TPanelTitlePNLLeft Top WidthbHeight9AlignalTopCaptionEdit TariffFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrder ExplicitWidth`  TPanelDataPNLLeft Top9WidthbHeightAlignalClientTabOrderExplicitWidth`ExplicitHeight�  	TGroupBoxCustomerGRPLeftTopWidthHeight� CaptionCustomer DetailsTabOrder  TLabelLabel1Left;TopWidth!HeightCaptionCode  TLabelLabel2Left'Top9Width8HeightCaptionKeyWord  TLabelLabel5LeftATop� WidthHeightCaptionTRL  TLabelLabel6LeftTopoWidthHeightCaptionPerFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel17LeftHTophWidthHeightCaption%Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel7Left� TopfWidthHeightCaption+Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel3Left�TopoWidth$HeightCaptionUnitsFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  	TwwDBEdit
KeywordFLDLeftjTop4Width� HeightCharCaseecUpperCase	DataFieldUSER_KEYWORD
DataSource	TariffSRCTabOrderUnboundDataType	wwDefaultWantReturnsWordWrap  TDBEditRateFLDLeftjTopjWidth?Height	DataFieldGENERAL_DUTY_RATE
DataSource	TariffSRCTabOrder  TDBEditQRateFLDLeft� TopjWidth?Height	DataFieldGENERAL_DUTY_RATE_QUANT
DataSource	TariffSRCTabOrder  TDBEditPerFLDLeft:TopjWidth?Height	DataFieldBASE_QUANTITY
DataSource	TariffSRCTabOrder  TDBEditTRLFLDLeftjTop� WidthWHeight	DataFieldGENERAL_DUTY_TRL
DataSource	TariffSRCTabOrder  	TwwDBEditCodeFLDLefthTopWidthyHeight	DataFieldCODE
DataSource	TariffSRCPicture.PictureMask####  ## ## ##TabOrder UnboundDataType	wwDefaultWantReturnsWordWrap    TPanel
ButtonsPNLLeft Top>WidthbHeight4AlignalBottomTabOrderExplicitTop8ExplicitWidth` TBitBtn	AcceptBTNLeft
TopWidthdHeight)CaptionAcceptFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  ModalResult	NumGlyphs
ParentFontTabOrder OnClickAcceptBTNClick  TBitBtn	CancelBTNLeftvTopWidthdHeight)Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold KindbkCancel	NumGlyphs
ParentFontTabOrderOnClickCancelBTNClick  TButtonButton1Left�TopWidthKHeightCaptionButton1TabOrderVisibleOnClickButton1Click   TwwDataSource	TariffSRCDataSet	TariffSQLLeft� Top  TIBCTransaction
WriteTransDefaultConnectionMainFormFRM.CabOutDataLeft Top  	TIBCQuery	TariffSQLGeneratorModegmInsertSQLInsert.StringsINSERT INTO TARIFF�    (CODE, KEYWORD, FK_COUNTRY_ORIGIN, LAST_UPDATE_DATE, FK_VAT_CATEGORY_CODE, PREFERENTIAL_DUTY_RATE, PREFERENTIAL_DUTY_TRL, GENERAL_DUTY_RATE, GENERAL_DUTY_TRL, GENERAL_DUTY_RATE_QUANT, PREFER_DUTY_RATE_QUANT, LICENSE_REQUIRED, FK_MEASUREMENT_UNIT, DUTY_METHOD_VALUE, DUTY_METHOD_QUANTITY, DUTY_METHOD_MIXED, DUTY_CALCULATION_OPERATOR, BASE_QUANTITY, INVOICE_BASED, EXCISE_DUTY_RATE, IMPORT_DUTY_PER_QTY, DESCRIPTION, IS_HEADER, IS_TARIFF, USER_KEYWORD)VALUES�    (:CODE, :KEYWORD, :FK_COUNTRY_ORIGIN, :LAST_UPDATE_DATE, :FK_VAT_CATEGORY_CODE, :PREFERENTIAL_DUTY_RATE, :PREFERENTIAL_DUTY_TRL, :GENERAL_DUTY_RATE, :GENERAL_DUTY_TRL, :GENERAL_DUTY_RATE_QUANT, :PREFER_DUTY_RATE_QUANT, :LICENSE_REQUIRED, :FK_MEASUREMENT_UNIT, :DUTY_METHOD_VALUE, :DUTY_METHOD_QUANTITY, :DUTY_METHOD_MIXED, :DUTY_CALCULATION_OPERATOR, :BASE_QUANTITY, :INVOICE_BASED, :EXCISE_DUTY_RATE, :IMPORT_DUTY_PER_QTY, :DESCRIPTION, :IS_HEADER, :IS_TARIFF, :USER_KEYWORD) SQLDelete.StringsDELETE FROM TARIFFWHERE  CODE = :Old_CODE SQLUpdate.StringsUPDATE TARIFFSET�    CODE = :CODE, KEYWORD = :KEYWORD, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, LAST_UPDATE_DATE = :LAST_UPDATE_DATE, FK_VAT_CATEGORY_CODE = :FK_VAT_CATEGORY_CODE, PREFERENTIAL_DUTY_RATE = :PREFERENTIAL_DUTY_RATE, PREFERENTIAL_DUTY_TRL = :PREFERENTIAL_DUTY_TRL, GENERAL_DUTY_RATE = :GENERAL_DUTY_RATE, GENERAL_DUTY_TRL = :GENERAL_DUTY_TRL, GENERAL_DUTY_RATE_QUANT = :GENERAL_DUTY_RATE_QUANT, PREFER_DUTY_RATE_QUANT = :PREFER_DUTY_RATE_QUANT, LICENSE_REQUIRED = :LICENSE_REQUIRED, FK_MEASUREMENT_UNIT = :FK_MEASUREMENT_UNIT, DUTY_METHOD_VALUE = :DUTY_METHOD_VALUE, DUTY_METHOD_QUANTITY = :DUTY_METHOD_QUANTITY, DUTY_METHOD_MIXED = :DUTY_METHOD_MIXED, DUTY_CALCULATION_OPERATOR = :DUTY_CALCULATION_OPERATOR, BASE_QUANTITY = :BASE_QUANTITY, INVOICE_BASED = :INVOICE_BASED, EXCISE_DUTY_RATE = :EXCISE_DUTY_RATE, IMPORT_DUTY_PER_QTY = :IMPORT_DUTY_PER_QTY, DESCRIPTION = :DESCRIPTION, IS_HEADER = :IS_HEADER, IS_TARIFF = :IS_TARIFF, USER_KEYWORD = :USER_KEYWORDWHERE  CODE = :Old_CODE SQLRefresh.Strings�  SELECT CODE, KEYWORD, FK_COUNTRY_ORIGIN, LAST_UPDATE_DATE, FK_VAT_CATEGORY_CODE, PREFERENTIAL_DUTY_RATE, PREFERENTIAL_DUTY_TRL, GENERAL_DUTY_RATE, GENERAL_DUTY_TRL, GENERAL_DUTY_RATE_QUANT, PREFER_DUTY_RATE_QUANT, LICENSE_REQUIRED, FK_MEASUREMENT_UNIT, DUTY_METHOD_VALUE, DUTY_METHOD_QUANTITY, DUTY_METHOD_MIXED, DUTY_CALCULATION_OPERATOR, BASE_QUANTITY, INVOICE_BASED, EXCISE_DUTY_RATE, IMPORT_DUTY_PER_QTY, DESCRIPTION, IS_HEADER, IS_TARIFF, USER_KEYWORD FROM TARIFFWHERE  CODE = :CODE SQLLock.StringsSELECT NULL FROM TARIFFWHERECODE = :Old_CODEFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM TARIFF    ) q 
ConnectionMainFormFRM.CabOutDataTransaction MainFormFRM.UsedForReadOnlyTransUpdateTransaction
WriteTransSQL.Strings,Select * from Tariff where code= :TariffCode OnNewRecordTariffSQLNewRecordLeft@Top		ParamDataDataType	ftUnknownName
TariffCodeValue   TStringFieldTariffSQLCODE	FieldNameCODERequired	Size  TStringFieldTariffSQLKEYWORD	FieldNameKEYWORDSize  TIntegerFieldTariffSQLFK_COUNTRY_ORIGIN	FieldNameFK_COUNTRY_ORIGINRequired	  TDateTimeFieldTariffSQLLAST_UPDATE_DATE	FieldNameLAST_UPDATE_DATE  TStringFieldTariffSQLFK_VAT_CATEGORY_CODE	FieldNameFK_VAT_CATEGORY_CODESize  TFloatFieldTariffSQLPREFERENTIAL_DUTY_RATE	FieldNamePREFERENTIAL_DUTY_RATE  TFloatFieldTariffSQLPREFERENTIAL_DUTY_TRL	FieldNamePREFERENTIAL_DUTY_TRL  TFloatFieldTariffSQLGENERAL_DUTY_RATE	FieldNameGENERAL_DUTY_RATE  TFloatFieldTariffSQLGENERAL_DUTY_TRL	FieldNameGENERAL_DUTY_TRL  TFloatField TariffSQLGENERAL_DUTY_RATE_QUANT	FieldNameGENERAL_DUTY_RATE_QUANT  TFloatFieldTariffSQLPREFER_DUTY_RATE_QUANT	FieldNamePREFER_DUTY_RATE_QUANT  TStringFieldTariffSQLLICENSE_REQUIRED	FieldNameLICENSE_REQUIREDSize  TStringFieldTariffSQLFK_MEASUREMENT_UNIT	FieldNameFK_MEASUREMENT_UNITSize  TFloatFieldTariffSQLDUTY_METHOD_VALUE	FieldNameDUTY_METHOD_VALUE  TIntegerFieldTariffSQLDUTY_METHOD_QUANTITY	FieldNameDUTY_METHOD_QUANTITY  TFloatFieldTariffSQLDUTY_METHOD_MIXED	FieldNameDUTY_METHOD_MIXED  TStringField"TariffSQLDUTY_CALCULATION_OPERATOR	FieldNameDUTY_CALCULATION_OPERATORSize  TFloatFieldTariffSQLBASE_QUANTITY	FieldNameBASE_QUANTITY  TStringFieldTariffSQLINVOICE_BASED	FieldNameINVOICE_BASEDRequired		FixedChar	Size  TFloatFieldTariffSQLEXCISE_DUTY_RATE	FieldNameEXCISE_DUTY_RATE  TFloatFieldTariffSQLIMPORT_DUTY_PER_QTY	FieldNameIMPORT_DUTY_PER_QTY  TStringFieldTariffSQLDESCRIPTION	FieldNameDESCRIPTIONSize�  TStringFieldTariffSQLIS_HEADER	FieldName	IS_HEADERRequired		FixedChar	Size  TStringFieldTariffSQLIS_TARIFF	FieldName	IS_TARIFFRequired		FixedChar	Size  TStringFieldTariffSQLUSER_KEYWORD	FieldNameUSER_KEYWORD	FixedChar	    