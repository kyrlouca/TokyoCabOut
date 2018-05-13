object S_SelectTariffYFRM: TS_SelectTariffYFRM
  Left = 440
  Top = 320
  BorderStyle = bsDialog
  Caption = 'S_SelectTariffYFRM'
  ClientHeight = 702
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 65
    Align = alTop
    Caption = 'Select Tariff y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 649
    Width = 629
    Height = 53
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 9
      Top = 9
      Width = 88
      Height = 40
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 629
    Height = 120
    Align = alTop
    TabOrder = 2
    OnClick = Panel2Click
    object BYCodeBTN: TSpeedButton
      Left = 205
      Top = 11
      Width = 23
      Height = 26
      Hint = 'Find Hawb in this Mawb'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = BYCodeBTNClick
    end
    object ByDescBTN: TSpeedButton
      Left = 397
      Top = 43
      Width = 23
      Height = 26
      Hint = 'Find Hawb in this Mawb'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = ByDescBTNClick
    end
    object Label1: TLabel
      Left = 13
      Top = 49
      Width = 51
      Height = 16
      Caption = 'By Desc'
    end
    object Label2: TLabel
      Left = 12
      Top = 17
      Width = 52
      Height = 16
      Caption = 'By Code'
    end
    object NameFLD: TwwDBEdit
      Left = 69
      Top = 45
      Width = 321
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyUp = NameFLDKeyUp
    end
    object CodeFLD: TwwDBEdit
      Left = 69
      Top = 13
      Width = 121
      Height = 24
      Picture.PictureMask = '####  ## ## ##'
      Picture.AllowInvalidExit = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyUp = CodeFLDKeyUp
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 185
    Width = 629
    Height = 464
    Align = alClient
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 627
      Height = 462
      Selected.Strings = (
        'CODE'#9'14'#9'Code'
        'USER_KEYWORD'#9'20'#9'Keyword'
        'GENERAL_DUTY_RATE'#9'10'#9'Duty Rate'
        'GENERAL_DUTY_RATE_QUANT'#9'10'#9'Qty'#9'F'
        'BASE_QUANTITY'#9'10'#9'Per'
        'GENERAL_DUTY_TRL'#9'10'#9'TRL')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      BorderStyle = bsNone
      Color = 13428976
      DataSource = CustomerSRC
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = wwDBGrid1DblClick
      object EditBTN: TButton
        Left = 336
        Top = 112
        Width = 75
        Height = 25
        Caption = 'EditBTN'
        TabOrder = 0
      end
    end
  end
  object CustomerSRC: TDataSource
    DataSet = CustomerSQL
    Left = 472
    Top = 169
  end
  object CustomerSQL: TIBCQuery
    SQL.Strings = (
      'SElect first 40 *'
      'from '
      'Tariff ta')
    Left = 224
    Top = 129
    object CustomerSQLCODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 14
      FieldName = 'CODE'
      Required = True
      Size = 17
    end
    object CustomerSQLUSER_KEYWORD: TStringField
      DisplayLabel = 'Keyword'
      DisplayWidth = 20
      FieldName = 'USER_KEYWORD'
      FixedChar = True
    end
    object CustomerSQLGENERAL_DUTY_RATE: TFloatField
      DisplayLabel = 'Duty Rate'
      DisplayWidth = 10
      FieldName = 'GENERAL_DUTY_RATE'
      DisplayFormat = '0.00'
    end
    object CustomerSQLGENERAL_DUTY_RATE_QUANT: TFloatField
      DisplayLabel = 'Qty'
      DisplayWidth = 10
      FieldName = 'GENERAL_DUTY_RATE_QUANT'
      DisplayFormat = '0.00'
    end
    object CustomerSQLBASE_QUANTITY: TFloatField
      DisplayLabel = 'Per'
      DisplayWidth = 10
      FieldName = 'BASE_QUANTITY'
      DisplayFormat = '0.00'
    end
    object CustomerSQLGENERAL_DUTY_TRL: TFloatField
      DisplayLabel = 'TRL'
      DisplayWidth = 10
      FieldName = 'GENERAL_DUTY_TRL'
      DisplayFormat = '0.00'
    end
    object CustomerSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 28
      FieldName = 'DESCRIPTION'
      Visible = False
      Size = 1000
    end
    object CustomerSQLKEYWORD: TStringField
      FieldName = 'KEYWORD'
      Visible = False
      Size = 5
    end
    object CustomerSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Required = True
      Visible = False
    end
    object CustomerSQLLAST_UPDATE_DATE: TDateTimeField
      FieldName = 'LAST_UPDATE_DATE'
      Visible = False
    end
    object CustomerSQLFK_VAT_CATEGORY_CODE: TStringField
      FieldName = 'FK_VAT_CATEGORY_CODE'
      Visible = False
      Size = 3
    end
    object CustomerSQLPREFERENTIAL_DUTY_RATE: TFloatField
      FieldName = 'PREFERENTIAL_DUTY_RATE'
      Visible = False
    end
    object CustomerSQLPREFERENTIAL_DUTY_TRL: TFloatField
      FieldName = 'PREFERENTIAL_DUTY_TRL'
      Visible = False
    end
    object CustomerSQLPREFER_DUTY_RATE_QUANT: TFloatField
      FieldName = 'PREFER_DUTY_RATE_QUANT'
      Visible = False
    end
    object CustomerSQLLICENSE_REQUIRED: TStringField
      FieldName = 'LICENSE_REQUIRED'
      Visible = False
      Size = 1
    end
    object CustomerSQLFK_MEASUREMENT_UNIT: TStringField
      FieldName = 'FK_MEASUREMENT_UNIT'
      Visible = False
      Size = 3
    end
    object CustomerSQLDUTY_METHOD_VALUE: TFloatField
      FieldName = 'DUTY_METHOD_VALUE'
      Visible = False
    end
    object CustomerSQLDUTY_METHOD_QUANTITY: TIntegerField
      FieldName = 'DUTY_METHOD_QUANTITY'
      Visible = False
    end
    object CustomerSQLDUTY_METHOD_MIXED: TFloatField
      FieldName = 'DUTY_METHOD_MIXED'
      Visible = False
    end
    object CustomerSQLDUTY_CALCULATION_OPERATOR: TStringField
      FieldName = 'DUTY_CALCULATION_OPERATOR'
      Visible = False
      Size = 4
    end
    object CustomerSQLINVOICE_BASED: TStringField
      FieldName = 'INVOICE_BASED'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CustomerSQLEXCISE_DUTY_RATE: TFloatField
      FieldName = 'EXCISE_DUTY_RATE'
      Visible = False
    end
    object CustomerSQLIMPORT_DUTY_PER_QTY: TFloatField
      FieldName = 'IMPORT_DUTY_PER_QTY'
      Visible = False
    end
    object CustomerSQLIS_HEADER: TStringField
      FieldName = 'IS_HEADER'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CustomerSQLIS_TARIFF: TStringField
      FieldName = 'IS_TARIFF'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
end
