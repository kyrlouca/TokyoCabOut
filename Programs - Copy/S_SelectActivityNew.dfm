object S_selectActivityNewFRM: TS_selectActivityNewFRM
  Left = 422
  Top = 101
  BorderStyle = bsDialog
  Caption = 'S_selectActivityNewFRM'
  ClientHeight = 702
  ClientWidth = 464
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
    Width = 464
    Height = 65
    Align = alTop
    Caption = 'Select Activity'
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
    Width = 464
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
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 464
    Height = 72
    Align = alTop
    TabOrder = 2
    OnClick = Panel2Click
    object ByDescBTN: TSpeedButton
      Left = 397
      Top = 6
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
      Top = 12
      Width = 51
      Height = 16
      Caption = 'By Desc'
    end
    object NameFLD: TwwDBEdit
      Left = 69
      Top = 8
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 137
    Width = 464
    Height = 512
    Align = alClient
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 462
      Height = 510
      Selected.Strings = (
        'SERIAL_NUMBER'#9'10'#9'S/N'
        'CODE'#9'8'#9'Code'
        'DESCRIPTION'#9'30'#9'Description'
        'FEE'#9'10'#9'Fee')
      IniAttributes.Delimiter = ';;'
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
      IndicatorColor = icBlack
    end
  end
  object CustomerSRC: TDataSource
    DataSet = CustomerSQL
    Left = 472
    Top = 169
  end
  object CustomerSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO ACTIVITY'
      '  (SERIAL_NUMBER, CODE, DESCRIPTION, FEE)'
      'VALUES'
      '  (:SERIAL_NUMBER, :CODE, :DESCRIPTION, :FEE)')
    SQLDelete.Strings = (
      'DELETE FROM ACTIVITY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE ACTIVITY'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, CODE = :CODE, DESCRIPTION = :D' +
        'ESCRIPTION, FEE = :FEE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      'SELECT SERIAL_NUMBER, CODE, DESCRIPTION, FEE FROM ACTIVITY'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM ACTIVITY'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM ACTIVITY'
      ''
      ') q')
    Connection = MainFormFRM.pFIBDatabase1
    SQL.Strings = (
      'SElect first 40 *'
      'from '
      'Activity')
    Active = True
    Left = 488
    Top = 81
  end
end
