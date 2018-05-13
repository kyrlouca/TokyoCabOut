object M_DistrictFRM: TM_DistrictFRM
  Left = 220
  Top = 210
  ClientHeight = 0
  ClientWidth = 120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 45
    Top = 263
    Width = 34
    Height = 13
    Caption = 'Weight'
  end
  object Label9: TLabel
    Left = 163
    Top = 289
    Width = 32
    Height = 13
    Caption = 'Pieces'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 120
    Height = 53
    Align = alTop
    Caption = 'Edit District'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1036
  end
  object Panel4: TPanel
    Left = 0
    Top = -53
    Width = 120
    Height = 53
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 608
    ExplicitWidth = 1036
    object AcceptBTN: TBitBtn
      Left = 18
      Top = 7
      Width = 76
      Height = 39
      Caption = 'Accept'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = AcceptBTNClick
    end
    object CancelBTN: TBitBtn
      Left = 112
      Top = 7
      Width = 77
      Height = 39
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = CancelBTNClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 53
    Width = 120
    Height = 555
    Align = alClient
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 20
      Top = 46
      Width = 299
      Height = 143
      Caption = 'Edit District'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 33
        Top = 33
        Width = 26
        Height = 13
        Caption = 'Serial'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 33
        Top = 89
        Width = 28
        Height = 13
        Caption = 'Name'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 30
        Top = 68
        Width = 25
        Height = 13
        Caption = 'Code'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object NameFLD: TwwDBEdit
        Left = 65
        Top = 86
        Width = 98
        Height = 24
        Color = clWhite
        DataField = 'DESCRIPTION'
        DataSource = CountryIBSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object CodeFLD: TwwDBEdit
        Left = 65
        Top = 65
        Width = 59
        Height = 24
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'CODE_X'
        DataSource = CountryIBSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object SErialFLD: TwwDBEdit
        Left = 65
        Top = 33
        Width = 59
        Height = 24
        Color = clBtnFace
        DataField = 'SERIAL_NUMBER'
        DataSource = CountryIBSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 20
      Top = 208
      Width = 449
      Height = 183
      Selected.Strings = (
        'SERIAL_NUMBER'#9'6'#9'S/N'
        'CODE_X'#9'4'#9'Code'
        'DESCRIPTION'#9'15'#9'Name')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = CountryIBSRC
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -10
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBNavigator1: TwwDBNavigator
      Left = 13
      Top = 20
      Width = 183
      Height = 20
      DataSource = CountryIBSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object wwDBNavigator1First: TwwNavButton
        Left = 0
        Top = 0
        Width = 20
        Height = 20
        Hint = 'Move to first record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1First'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object wwDBNavigator1Prior: TwwNavButton
        Left = 20
        Top = 0
        Width = 21
        Height = 20
        Hint = 'Move to prior record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Prior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPrior
      end
      object wwDBNavigator1Next: TwwNavButton
        Left = 41
        Top = 0
        Width = 20
        Height = 20
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Next'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsNext
      end
      object wwDBNavigator1Last: TwwNavButton
        Left = 61
        Top = 0
        Width = 20
        Height = 20
        Hint = 'Move to last record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Last'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsLast
      end
      object wwDBNavigator1Insert: TwwNavButton
        Left = 81
        Top = 0
        Width = 21
        Height = 20
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1InsertClick
        Index = 4
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 102
        Top = 0
        Width = 20
        Height = 20
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsDelete
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 122
        Top = 0
        Width = 20
        Height = 20
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsPost
      end
      object wwDBNavigator1Cancel: TwwNavButton
        Left = 142
        Top = 0
        Width = 21
        Height = 20
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 7
        Style = nbsCancel
      end
      object wwDBNavigator1Refresh: TwwNavButton
        Left = 163
        Top = 0
        Width = 20
        Height = 20
        Hint = 'Refresh the contents of the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Refresh'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 8
        Style = nbsRefresh
      end
    end
  end
  object DistrictSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'DISTRICT_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO DISTRICT'
      '  (CODE_X, DESCRIPTION, SERIAL_NUMBER)'
      'VALUES'
      '  (:CODE_X, :DESCRIPTION, :SERIAL_NUMBER)')
    SQLDelete.Strings = (
      'DELETE FROM DISTRICT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE DISTRICT'
      'SET'
      
        '  CODE_X = :CODE_X, DESCRIPTION = :DESCRIPTION, SERIAL_NUMBER = ' +
        ':SERIAL_NUMBER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      'SELECT CODE_X, DESCRIPTION, SERIAL_NUMBER FROM DISTRICT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM DISTRICT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM DISTRICT'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    UpdateTransaction = UsedForUpdateTrans
    SQL.Strings = (
      'select * from district')
    Active = True
    Left = 80
    Top = 25
    object DistrictSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 6
      FieldName = 'SERIAL_NUMBER'
    end
    object DistrictSQLCODE_X: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 4
      FieldName = 'CODE_X'
      Required = True
      Size = 3
    end
    object DistrictSQLDESCRIPTION: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 15
      FieldName = 'DESCRIPTION'
      Size = 15
    end
  end
  object CountryIBSRC: TIBCDataSource
    DataSet = DistrictSQL
    Left = 464
    Top = 89
  end
  object UsedForUpdateTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    DefaultCloseAction = taCommit
    Left = 216
    Top = 33
  end
end
