object M_ParametersFRM: TM_ParametersFRM
  Left = 304
  Top = 217
  Width = 1030
  Height = 863
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
    FocusControl = DescriptionFLD
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1012
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
    Top = 765
    Width = 1012
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
    Width = 1012
    Height = 48
    Align = alTop
    TabOrder = 2
    object wwDBNavigator1: TwwDBNavigator
      Left = 1
      Top = 9
      Width = 246
      Height = 32
      AutosizeStyle = asSizeNavButtons
      DataSource = SystemParametersCDS
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
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1InsertClick
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
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1ButtonClick
        Index = 6
        Style = nbsRefresh
      end
    end
    object SystemSelectBTN: TBitBtn
      Left = 296
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
    object XMLBtn: TBitBtn
      Left = 422
      Top = 7
      Width = 154
      Height = 35
      Caption = 'XML'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = XMLBtnClick
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
      Visible = False
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
      Visible = False
      OnClick = EmailBTNClick
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 1012
    Height = 652
    Align = alClient
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 1
      Top = 42
      Width = 1010
      Height = 287
      Align = alTop
      Caption = 'GroupBox1'
      TabOrder = 0
      object idlbl: TLabel
        Left = 56
        Top = 54
        Width = 66
        Height = 16
        Caption = 'KEY FIELD'
        FocusControl = KEyFld
      end
      object Str1lbl: TLabel
        Left = 80
        Top = 131
        Width = 42
        Height = 16
        Alignment = taRightJustify
        Caption = 'STR_1'
        FocusControl = Str1FLD
      end
      object str2lbl: TLabel
        Left = 54
        Top = 81
        Width = 68
        Height = 16
        Alignment = taRightJustify
        Caption = 'Description'
        FocusControl = DescriptionFLD
      end
      object str3lbl: TLabel
        Left = 78
        Top = 159
        Width = 44
        Height = 16
        Alignment = taRightJustify
        Caption = 'Float_1'
        FocusControl = DescriptionFLD
      end
      object str4lbl: TLabel
        Left = 86
        Top = 184
        Width = 36
        Height = 16
        Alignment = taRightJustify
        Caption = 'INT_1'
        FocusControl = DescriptionFLD
      end
      object Date_1: TLabel
        Left = 79
        Top = 216
        Width = 43
        Height = 16
        Alignment = taRightJustify
        Caption = 'Date_1'
        FocusControl = DescriptionFLD
      end
      object Label2: TLabel
        Left = 36
        Top = 22
        Width = 86
        Height = 16
        Caption = 'Serial Number'
        FocusControl = KEyFld
      end
      object KEyFld: TDBEdit
        Left = 131
        Top = 49
        Width = 78
        Height = 24
        CharCase = ecUpperCase
        DataField = 'KEY_FIELD'
        DataSource = SystemParametersCDS
        TabOrder = 0
      end
      object Str1FLD: TDBEdit
        Left = 131
        Top = 125
        Width = 417
        Height = 24
        DataField = 'STR_1'
        DataSource = SystemParametersCDS
        TabOrder = 2
      end
      object DescriptionFLD: TDBEdit
        Left = 131
        Top = 78
        Width = 417
        Height = 24
        DataField = 'DESCRIPTION'
        DataSource = SystemParametersCDS
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 131
        Top = 154
        Width = 417
        Height = 24
        DataField = 'NUM_1'
        DataSource = SystemParametersCDS
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 131
        Top = 185
        Width = 81
        Height = 24
        DataField = 'INT_1'
        DataSource = SystemParametersCDS
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 131
        Top = 215
        Width = 81
        Height = 24
        DataField = 'DATE_1'
        DataSource = SystemParametersCDS
        TabOrder = 5
      end
      object DBEdit1: TDBEdit
        Left = 131
        Top = 17
        Width = 81
        Height = 24
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'SERIAL_NUMBER'
        DataSource = SystemParametersCDS
        ReadOnly = True
        TabOrder = 6
      end
      object Button1: TButton
        Left = 712
        Top = 160
        Width = 137
        Height = 25
        Caption = 'Insert Parameters'
        TabOrder = 7
        Visible = False
        OnClick = Button1Click
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1010
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 1
      Top = 329
      Width = 1010
      Height = 322
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object ParamGRD: TCRDBGrid
        Left = 0
        Top = 0
        Width = 1010
        Height = 322
        OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeRecordCount]
        Align = alClient
        BorderStyle = bsNone
        DataSource = SystemParametersCDS
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object SystemParametersSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'SYSTEM_PARAMETER_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO SYSTEM_PARAMETERS'
      
        '  (SERIAL_NUMBER, KEY_FIELD, SYS_TYPE, INT_1, INT_2, STR_1, STR_' +
        '2, STR_3, STR_4, STR_5, NUM_1, NUM_2, DATE_1, DATE_2, DESCRIPTIO' +
        'N)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :KEY_FIELD, :SYS_TYPE, :INT_1, :INT_2, :STR_1' +
        ', :STR_2, :STR_3, :STR_4, :STR_5, :NUM_1, :NUM_2, :DATE_1, :DATE' +
        '_2, :DESCRIPTION)')
    SQLDelete.Strings = (
      'DELETE FROM SYSTEM_PARAMETERS'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SYSTEM_PARAMETERS'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, KEY_FIELD = :KEY_FIELD, SYS_TY' +
        'PE = :SYS_TYPE, INT_1 = :INT_1, INT_2 = :INT_2, STR_1 = :STR_1, ' +
        'STR_2 = :STR_2, STR_3 = :STR_3, STR_4 = :STR_4, STR_5 = :STR_5, ' +
        'NUM_1 = :NUM_1, NUM_2 = :NUM_2, DATE_1 = :DATE_1, DATE_2 = :DATE' +
        '_2, DESCRIPTION = :DESCRIPTION'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, KEY_FIELD, SYS_TYPE, INT_1, INT_2, STR_1, ' +
        'STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2, DATE_1, DATE_2, DESCRI' +
        'PTION FROM SYSTEM_PARAMETERS'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SYSTEM_PARAMETERS'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    UpdateTransaction = UsedForUpdateTrans
    SQL.Strings = (
      
        'Select * from system_parameters where SYS_TYPE= :Type ORDER BY S' +
        'ERIAL_NUMBER')
    Active = True
    OnNewRecord = SystemParametersSQLNewRecord
    Left = 344
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Type'
      end>
    object SystemParametersSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object SystemParametersSQLKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Required = True
      FixedChar = True
      Size = 35
    end
    object SystemParametersSQLSYS_TYPE: TStringField
      FieldName = 'SYS_TYPE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SystemParametersSQLINT_1: TIntegerField
      FieldName = 'INT_1'
    end
    object SystemParametersSQLSTR_1: TStringField
      FieldName = 'STR_1'
      FixedChar = True
      Size = 30
    end
    object SystemParametersSQLNUM_1: TFloatField
      FieldName = 'NUM_1'
    end
    object SystemParametersSQLDATE_1: TDateTimeField
      FieldName = 'DATE_1'
    end
    object SystemParametersSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
  end
  object UsedForUpdateTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    DefaultCloseAction = taCommit
    Left = 648
    Top = 161
  end
  object SystemParametersCDS: TIBCDataSource
    DataSet = SystemParametersSQL
    OnStateChange = SystemParametersCDSStateChange
    Left = 432
    Top = 209
  end
  object ParScript: TIBCScript
    SQL.Strings = (
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (1, '#39'SynVerNumMES2                ' +
        '      '#39', '#39'XML'#39', NULL, NULL, '#39'3                             '#39', '#39'3' +
        '                             '#39', NULL, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (2, '#39'SynIdeMES1                   ' +
        '      '#39', '#39'XML'#39', NULL, NULL, '#39'UNOC                          '#39', NU' +
        'LL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#39'                 ' +
        '                                           '#39');'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (3, '#39'MesSenMES3                   ' +
        '      '#39', '#39'XML'#39', NULL, NULL, '#39'CY10016129G                   '#39', '#39'3' +
        '                             '#39', '#39'23'#39', '#39'3233'#39', '#39'23'#39', NULL, NULL, ' +
        'NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (4, '#39'MesRecMES6                   ' +
        '      '#39', '#39'XML'#39', NULL, NULL, '#39'CY                            '#39', NU' +
        'LL, NULL, '#39'3'#39', NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (6, '#39'MesTypMES20                  ' +
        '      '#39', '#39'XML'#39', NULL, NULL, '#39'CC615A                        '#39', NU' +
        'LL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (18, '#39'S01                         ' +
        '       '#39', '#39'SYS'#39', NULL, NULL, '#39'E:\All\xml\cabout             '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (5, '#39'IntConRefMES11               ' +
        '      '#39', '#39'XML'#39', NULL, NULL, '#39'Controlrefere                 '#39', '#39'y' +
        'yyy                          '#39', NULL, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (19, '#39'ArrAgrLocCodHEA62           ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'CY000440                      '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (20, '#39'ArrAgrLocOfGooHEA63         ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'LARNACA                       '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (21, '#39'ArrAgrLocOfGooHEA63LNG      ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'EN                            '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (22, '#39'DecPlaHEA394                ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'LARNACA                       '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (23, '#39'DecPlaHEA394LNG             ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'EN                            '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (24, '#39'SpeCirIndHEA1               ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'A                             '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (25, '#39'NADLNGCO                    ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'EN                            '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (26, '#39'NADLNGCE                    ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'EN                            '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (27, '#39'RefNumEXT1                  ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'CY000440                      '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (28, '#39'GooDesGDS23LNG              ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'EN                            '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (29, '#39'MarNumOfPacGS21LNG          ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'EN                            '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (30, '#39'RefNumCOL1                  ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'CY000440                      '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (31, '#39'NamPLD1                     ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'DHL (CYPRUS) LIMITED          '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (32, '#39'StrAndNumPLD1               ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'AKROPOLEOS 13                 '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (33, '#39'PosCodPLD1                  ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'2006                          '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (34, '#39'CitPLD1                     ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'STROVOLOS                     '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (35, '#39'CouCodPLD1                  ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'CY                            '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (36, '#39'PERLODSUMDECLNG             ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'EN                            '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO SYSTEM_PARAMETERS (SERIAL_NUMBER, KEY_FIELD, SYS_TYP' +
        'E, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2' +
        ', DATE_1, DATE_2, DESCRIPTION)'
      
        '                       VALUES (37, '#39'TINPLD1                     ' +
        '       '#39', '#39'XML'#39', NULL, NULL, '#39'CY10016129G                   '#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#39'                ' +
        '                                            '#39');'
      ''
      'COMMIT WORK;')
    AutoCommit = True
    Connection = MainFormFRM.CabOutData
    Transaction = UsedForUpdateTrans
    Left = 737
    Top = 203
  end
  object IBCQuery1: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'SYSTEM_PARAMETER_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO SYSTEM_PARAMETERS'
      
        '  (SERIAL_NUMBER, KEY_FIELD, SYS_TYPE, INT_1, INT_2, STR_1, STR_' +
        '2, STR_3, STR_4, STR_5, NUM_1, NUM_2, DATE_1, DATE_2, DESCRIPTIO' +
        'N)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :KEY_FIELD, :SYS_TYPE, :INT_1, :INT_2, :STR_1' +
        ', :STR_2, :STR_3, :STR_4, :STR_5, :NUM_1, :NUM_2, :DATE_1, :DATE' +
        '_2, :DESCRIPTION)')
    SQLDelete.Strings = (
      'DELETE FROM SYSTEM_PARAMETERS'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SYSTEM_PARAMETERS'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, KEY_FIELD = :KEY_FIELD, SYS_TY' +
        'PE = :SYS_TYPE, INT_1 = :INT_1, INT_2 = :INT_2, STR_1 = :STR_1, ' +
        'STR_2 = :STR_2, STR_3 = :STR_3, STR_4 = :STR_4, STR_5 = :STR_5, ' +
        'NUM_1 = :NUM_1, NUM_2 = :NUM_2, DATE_1 = :DATE_1, DATE_2 = :DATE' +
        '_2, DESCRIPTION = :DESCRIPTION'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, KEY_FIELD, SYS_TYPE, INT_1, INT_2, STR_1, ' +
        'STR_2, STR_3, STR_4, STR_5, NUM_1, NUM_2, DATE_1, DATE_2, DESCRI' +
        'PTION FROM SYSTEM_PARAMETERS'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SYSTEM_PARAMETERS'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    UpdateTransaction = UsedForUpdateTrans
    SQL.Strings = (
      
        'Select * from system_parameters where SYS_TYPE= :Type ORDER BY S' +
        'ERIAL_NUMBER')
    Active = True
    OnNewRecord = SystemParametersSQLNewRecord
    Left = 824
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Type'
      end>
    object IntegerField1: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object StringField1: TStringField
      FieldName = 'KEY_FIELD'
      Required = True
      FixedChar = True
      Size = 35
    end
    object StringField2: TStringField
      FieldName = 'SYS_TYPE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object IntegerField2: TIntegerField
      FieldName = 'INT_1'
    end
    object StringField3: TStringField
      FieldName = 'STR_1'
      FixedChar = True
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'NUM_1'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATE_1'
    end
    object StringField4: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
  end
end
