object M_ParametersFRM: TM_ParametersFRM
  Left = 283
  Top = 228
  Width = 1300
  Height = 779
  Caption = 'M_ParametersFRM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 127
    Top = 346
    Width = 42
    Height = 16
    Caption = 'STR_4'
    FocusControl = DBEdit4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1282
    Height = 65
    Align = alTop
    Caption = 'System Parameters'
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
    Top = 681
    Width = 1282
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
    Width = 1282
    Height = 48
    Align = alTop
    TabOrder = 2
    object wwDBNavigator1: TwwDBNavigator
      Left = 1
      Top = 9
      Width = 246
      Height = 32
      AutosizeStyle = asSizeNavButtons
      DataSource = SystemParametersSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      object wwDBNavigator1Prior: TwwNavButton
        Left = 0
        Top = 0
        Width = 36
        Height = 32
        Hint = 'Move to prior record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Prior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsPrior
      end
      object wwDBNavigator1Next: TwwNavButton
        Left = 36
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Next'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsNext
      end
      object wwDBNavigator1Insert: TwwNavButton
        Left = 71
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 106
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsDelete
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 141
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsPost
      end
      object wwDBNavigator1Cancel: TwwNavButton
        Left = 176
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsCancel
      end
      object wwDBNavigator1Button: TwwNavButton
        Left = 211
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Refresh the contents of the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Button'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1ButtonClick
        Index = 6
        Style = nbsRefresh
      end
    end
    object SystemSelectBTN: TBitBtn
      Left = 320
      Top = 7
      Width = 89
      Height = 35
      Caption = 'System'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SystemSelectBTNClick
      NumGlyphs = 2
    end
    object FileSelectBTN: TBitBtn
      Left = 438
      Top = 7
      Width = 154
      Height = 35
      Caption = 'UnixTransfer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = FileSelectBTNClick
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 615
      Top = 7
      Width = 154
      Height = 35
      Caption = 'InvoiceTransfer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object EmailBTN: TBitBtn
      Left = 791
      Top = 7
      Width = 154
      Height = 35
      Caption = 'Email/SMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = EmailBTNClick
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 1282
    Height = 568
    Align = alClient
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 8
      Top = 32
      Width = 681
      Height = 249
      Caption = 'GroupBox1'
      TabOrder = 0
      object idlbl: TLabel
        Left = 32
        Top = 30
        Width = 105
        Height = 16
        Caption = 'PARAMETER_ID'
        FocusControl = DBEdit1
      end
      object int1lbl: TLabel
        Left = 91
        Top = 61
        Width = 36
        Height = 16
        Alignment = taRightJustify
        Caption = 'INT_1'
        FocusControl = DBEdit2
      end
      object Str1lbl: TLabel
        Left = 85
        Top = 93
        Width = 42
        Height = 16
        Alignment = taRightJustify
        Caption = 'STR_1'
        FocusControl = DBEdit3
      end
      object str2lbl: TLabel
        Left = 85
        Top = 121
        Width = 42
        Height = 16
        Alignment = taRightJustify
        Caption = 'STR_2'
        FocusControl = DBEdit4
      end
      object str3lbl: TLabel
        Left = 85
        Top = 153
        Width = 42
        Height = 16
        Alignment = taRightJustify
        Caption = 'STR_3'
        FocusControl = DBEdit4
      end
      object str4lbl: TLabel
        Left = 85
        Top = 178
        Width = 42
        Height = 16
        Alignment = taRightJustify
        Caption = 'STR_4'
        FocusControl = DBEdit4
      end
      object str5lbl: TLabel
        Left = 85
        Top = 210
        Width = 42
        Height = 16
        Alignment = taRightJustify
        Caption = 'STR_5'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 152
        Top = 25
        Width = 144
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PARAMETER_ID'
        DataSource = SystemParametersSRC
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 152
        Top = 57
        Width = 74
        Height = 24
        DataField = 'INT_1'
        DataSource = SystemParametersSRC
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 152
        Top = 87
        Width = 417
        Height = 24
        DataField = 'STR_1'
        DataSource = SystemParametersSRC
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 152
        Top = 118
        Width = 417
        Height = 24
        DataField = 'STR_2'
        DataSource = SystemParametersSRC
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 152
        Top = 148
        Width = 417
        Height = 24
        DataField = 'STR_3'
        DataSource = SystemParametersSRC
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 152
        Top = 179
        Width = 417
        Height = 24
        DataField = 'STR_4'
        DataSource = SystemParametersSRC
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 152
        Top = 209
        Width = 417
        Height = 24
        DataField = 'STR_5'
        DataSource = SystemParametersSRC
        TabOrder = 6
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 304
      Width = 1009
      Height = 257
      Selected.Strings = (
        'PARAMETER_ID'#9'6'#9'PAR_ID'
        'INT_1'#9'9'#9'INT_1'
        'STR_1'#9'19'#9'STR_1'
        'STR_2'#9'20'#9'STR_2'
        'STR_3'#9'20'#9'STR_3'
        'STR_4'#9'20'#9'STR_4'
        'STR_5'#9'20'#9'STR_5')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = SystemParametersSRC
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
  end
  object SystemParametersSQL: TQuery
    BeforeInsert = SystemParametersSQLBeforeInsert
    BeforeEdit = SystemParametersSQLBeforeEdit
    DatabaseName = 'CabOutData'
    RequestLive = True
    SQL.Strings = (
      'Select * from system_parameters where'
      'parameter_id like '#39'S_%'#39)
    UniDirectional = True
    Left = 600
    Top = 153
    object SystemParametersSQLPARAMETER_ID: TStringField
      DisplayLabel = 'PAR_ID'
      DisplayWidth = 6
      FieldName = 'PARAMETER_ID'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.PARAMETER_ID'
      FixedChar = True
    end
    object SystemParametersSQLINT_1: TIntegerField
      DisplayWidth = 9
      FieldName = 'INT_1'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.INT_1'
    end
    object SystemParametersSQLSTR_1: TStringField
      DisplayWidth = 19
      FieldName = 'STR_1'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.STR_1'
      FixedChar = True
      Size = 30
    end
    object SystemParametersSQLSTR_2: TStringField
      DisplayWidth = 20
      FieldName = 'STR_2'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.STR_2'
      FixedChar = True
      Size = 30
    end
    object SystemParametersSQLSTR_3: TStringField
      DisplayWidth = 20
      FieldName = 'STR_3'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.STR_3'
      Size = 80
    end
    object SystemParametersSQLSTR_4: TStringField
      DisplayWidth = 20
      FieldName = 'STR_4'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.STR_4'
      Size = 80
    end
    object SystemParametersSQLSTR_5: TStringField
      DisplayWidth = 20
      FieldName = 'STR_5'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.STR_5'
      Size = 80
    end
    object SystemParametersSQLINT_2: TIntegerField
      DisplayWidth = 10
      FieldName = 'INT_2'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.INT_2'
      Visible = False
    end
  end
  object SystemParametersSRC: TDataSource
    DataSet = SystemParametersSQL
    Left = 488
    Top = 137
  end
end
