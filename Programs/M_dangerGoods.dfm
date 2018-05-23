object M_DangerGoodsFRM: TM_DangerGoodsFRM
  Left = 402
  Top = 83
  ClientHeight = 475
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'ARIAL'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object Label5: TLabel
    Left = 55
    Top = 324
    Width = 41
    Height = 16
    Caption = 'Weight'
  end
  object Label9: TLabel
    Left = 201
    Top = 356
    Width = 40
    Height = 16
    Caption = 'Pieces'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'ARIAL'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 65
    Align = alTop
    Caption = 'Dangerous Goods'
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
    Top = 409
    Width = 740
    Height = 66
    Align = alBottom
    TabOrder = 1
    object AcceptBTN: TBitBtn
      Left = 22
      Top = 8
      Width = 94
      Height = 49
      Caption = 'Accept'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
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
      Left = 138
      Top = 8
      Width = 95
      Height = 49
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
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
    Top = 65
    Width = 740
    Height = 344
    Align = alClient
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 24
      Top = 55
      Width = 369
      Height = 122
      Caption = 'Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 46
        Top = 30
        Width = 30
        Height = 16
        Caption = 'Code'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'ARIAL'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 11
        Top = 60
        Width = 65
        Height = 16
        Caption = 'Description'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'ARIAL'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object NameFLD: TwwDBEdit
        Left = 82
        Top = 26
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'KEY'
        DataSource = TableSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'ARIAL'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit1: TwwDBEdit
        Left = 82
        Top = 56
        Width = 250
        Height = 24
        Color = clWhite
        DataField = 'DESCRIPTION'
        DataSource = TableSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'ARIAL'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object RzDBCheckBox1: TRzDBCheckBox
        Left = 34
        Top = 86
        Width = 58
        Height = 17
        DataField = 'IS_DEFAULT'
        DataSource = TableSRC
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Alignment = taLeftJustify
        Caption = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'arIAL'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 24
      Top = 200
      Width = 449
      Height = 225
      ControlType.Strings = (
        'IS_DEFAULT;CheckBox;Y;N')
      Selected.Strings = (
        'KEY'#9'10'#9'Code'#9'F'
        'DESCRIPTION'#9'30'#9'DESCRIPTION'
        'IS_DEFAULT'#9'1'#9'Default')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = TableSRC
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'ARIAL'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBNavigator1: TwwDBNavigator
      Left = 16
      Top = 24
      Width = 225
      Height = 25
      DataSource = TableSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object wwDBNavigator1First: TwwNavButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
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
        Left = 25
        Top = 0
        Width = 25
        Height = 25
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
        Left = 50
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Next'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsNext
      end
      object wwDBNavigator1Last: TwwNavButton
        Left = 75
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to last record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Last'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsLast
      end
      object wwDBNavigator1Insert: TwwNavButton
        Left = 100
        Top = 0
        Width = 25
        Height = 25
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
        Left = 125
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsDelete
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 150
        Top = 0
        Width = 25
        Height = 25
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
        Left = 175
        Top = 0
        Width = 25
        Height = 25
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
        Left = 200
        Top = 0
        Width = 25
        Height = 25
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
  object TableSQL: TIBCQuery
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO AUX_DANGEROUS_GOODS'
      '  (IS_DEFAULT, DESCRIPTION, KEY)'
      'VALUES'
      '  (:IS_DEFAULT, :DESCRIPTION, :KEY)')
    SQLDelete.Strings = (
      'DELETE FROM AUX_DANGEROUS_GOODS'
      'WHERE'
      '  KEY = :Old_KEY')
    SQLUpdate.Strings = (
      'UPDATE AUX_DANGEROUS_GOODS'
      'SET'
      
        '  IS_DEFAULT = :IS_DEFAULT, DESCRIPTION = :DESCRIPTION, KEY = :K' +
        'EY'
      'WHERE'
      '  KEY = :Old_KEY')
    SQLRefresh.Strings = (
      'SELECT IS_DEFAULT, DESCRIPTION, KEY FROM AUX_DANGEROUS_GOODS'
      'WHERE'
      '  KEY = :KEY')
    SQLLock.Strings = (
      'SELECT NULL FROM AUX_DANGEROUS_GOODS'
      'WHERE'
      'KEY = :Old_KEY'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM AUX_DANGEROUS_GOODS'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    UpdateTransaction = UsedForUpdateTrans
    SQL.Strings = (
      'select * from Aux_dangerous_goods')
    Active = True
    Left = 80
    Top = 25
    object TableSQLKEY: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 10
      FieldName = 'KEY'
      Required = True
      Size = 10
    end
    object TableSQLDESCRIPTION: TStringField
      DisplayWidth = 30
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object TableSQLIS_DEFAULT: TStringField
      DisplayLabel = 'Default'
      DisplayWidth = 1
      FieldName = 'IS_DEFAULT'
      FixedChar = True
      Size = 1
    end
  end
  object TableSRC: TIBCDataSource
    DataSet = TableSQL
    Left = 152
    Top = 33
  end
  object UsedForUpdateTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    DefaultCloseAction = taCommit
    Left = 232
    Top = 57
  end
  object CountrySQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'select * from country')
    ReadOnly = True
    Left = 720
    Top = 225
    object CountrySQLCODE_2: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 5
      FieldName = 'CODE_2'
      FixedChar = True
      Size = 2
    end
    object CountrySQLNAME: TStringField
      DisplayLabel = 'Country Name'
      DisplayWidth = 20
      FieldName = 'NAME'
      FixedChar = True
      Size = 60
    end
  end
  object readTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    DefaultCloseAction = taCommit
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 456
    Top = 137
  end
end
