object L_FlightOutListFRM: TL_FlightOutListFRM
  Left = 494
  Top = 178
  ClientHeight = 667
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
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
    Font.Name = 'arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 65
    Align = alTop
    Caption = 'List Flights Out'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 601
    Width = 931
    Height = 66
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 18
      Top = 6
      Width = 97
      Height = 44
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF0004450004450004450004450004450004450004450004450004450004
        45000445000445000445000445000445000445000445000445FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000A4D3461A53F70B44B7DC15789CE5F91D66396DB
        6396DB6396DB6598DD6295DA6295DA5D90D55688CD4C7EC24374B83765A9000A
        4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0011563B6DB14174B84B7EC256
        89CE5E91D66396DB6396DB6396DB6598DD6295DA6295DA5D90D55689CE4D80C4
        4477BB3E70B4001156FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0018613869
        AE3366A72B5EA22B5EA22B5EA22B5EA22B5EA2497CCE6396DB3164A52B5EA22B
        5EA22B5EA22B5EA22D60A43869AE001861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF001F6A3A6CB02C5FA32B5EA22B5EA22B5EA22B5EA22B5EA24779CA6093
        D8295CA02B5EA22B5EA22B5EA22B5EA22E61A53A6CB0001F6AFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF00226D3B6DB128579B2B5EA22B5EA22B5EA22B5EA2
        2B5EA24274C45B8ED42554982B5EA22B5EA22B5EA22B5EA22E61A53B6DB10022
        6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0024703D6FB42451952B5EA22B
        5EA22B5EA22B5EA22B5EA23F70BE578ACF214E922B5EA22B5EA22B5EA22B5EA2
        2E61A53D6FB4002470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0026723E70
        B51E498E2A5CA02B5EA22B5EA22B5EA22B5EA23B6BB95285CB1D478C2A5CA02B
        5EA22B5EA22B5EA22D60A43E70B5002672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0028754072B7183F842451962B5EA22B5EA22B5EA22B5EA23766B44E81
        C7173D812451962B5EA22B5EA22B5EA22D60A44072B7002875FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF002A784274B9133479193F84224F9328599D2B5EA2
        2B5EA23463AF4A7DC2113176193F84224F9328599D2B5EA22E61A54274B9002A
        78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002C7A4376BB0C296F0F307415
        3A7E1A43871D488C214F933261AD487BC00B276B0F3074153A7E1A43871D488C
        2451964376BB002C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002E7D4578
        BD477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF47
        7ABF477ABF477ABF142669142669002E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF002F7F477ABF3260AC3260AC3160AC325FAB325FAC3160AB3463AE477A
        BF3260AC3260AC3160AB325FAC3160AB3166B45287D1002F7FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF003182497CC13265A6285B9F285B9F285B9F285B9F
        285B9F3462AF4A7DC22E61A2285B9F285B9F285B9F285B9F70A3EB84B7FC0031
        82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033844B7EC3295CA0275A9E27
        5A9E275A9E275A9E275A9E3A6AB85184CA26589C275A9E275A9E275A9E275A9E
        2B5EA24B7EC3003384FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0035864D80
        C525549826599D26599D26599D26599D26599D4172C2598CD2214F9326599D26
        599D26599D26599D2B5EA24D80C5003586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0036894E81C7204D9125589C25589C25589C25589C25589C497BCE6295
        DB1D488C25589C25589C25589C25589C2A5DA14E81C7003689FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF00388B5083C91C458A23559924579B24579B24579B
        24579B5286DC6C9FE518418423559924579B24579B24579B295CA05083C90038
        8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00398C5084CA163C7F1D4A8D23
        569A23569A23569A23569A5B90E675A8ED1337791D4A8D23569A23569A23569A
        295CA05084CA00398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003B8E5286
        CC0F2F7213397A1A478A1F5094225599225599629AF17DB0F50C2A6B13397A1A
        478A1F5094225599285B9F5286CC003B8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF003C905387CD0A266A0C2869123576153D7F1942851C488B67A0F882B5
        FA0722620C2A6B123576153D7F174083214E925387CD003C90FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF003D91598DD25F92D7699CE174A7EC7DB0F584B7FC
        84B7FC84B7FC82B5FA82B5FA82B5FA7CAFF473A6EB6A9DE26194D95B8FD4003D
        91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003E935085CC5D91D7689CE173
        A6EC7EB1F684B7FC84B7FC84B7FC82B5FA82B5FA82B5FA7BAEF373A6EC699DE2
        6093D95388CF003E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F94003F
        94003F94003F94003F94003F94003F94003F94003F94003F94003F94003F9400
        3F94003F94003F94003F94003F94003F94FFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 931
    Height = 536
    Align = alClient
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 929
      Height = 56
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 17
        Top = 20
        Width = 61
        Height = 16
        Caption = 'Find Flight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object FlightTableFLD: TwwDBLookupCombo
        Left = 233
        Top = 18
        Width = 121
        Height = 24
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'FLIGHT_NAME'#9'9'#9'FLIGHT_NAME'#9'F')
        DataField = 'FK_FLIGHT_TABLE'
        DataSource = FlightOutCDS
        LookupTable = FlightTableSQL
        LookupField = 'SERIAL_NUMBER'
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object wwIncrementalSearch1: TwwIncrementalSearch
        Left = 84
        Top = 16
        Width = 121
        Height = 24
        DataSource = FlightOutCDS
        SearchField = 'Mawb'
        ShowMatchText = True
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object wwDBNavigator1: TwwDBNavigator
        Left = 388
        Top = 18
        Width = 102
        Height = 20
        DataSource = FlightOutCDS
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
        object wwDBNavigator1Refresh: TwwNavButton
          Left = 81
          Top = 0
          Width = 21
          Height = 20
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Refresh'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsRefresh
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 57
      Width = 929
      Height = 478
      Align = alClient
      TabOrder = 1
      object Panel6: TPanel
        Left = 738
        Top = 1
        Width = 24
        Height = 476
        Align = alLeft
        TabOrder = 0
      end
      object FlightOutGRD: TwwDBGrid
        Left = 1
        Top = 1
        Width = 737
        Height = 476
        ControlType.Strings = (
          'FK_FLIGHT_TABLE;CustomEdit;FlightTableFLD')
        Selected.Strings = (
          'SERIAL_NUMBER'#9'10'#9'S/N'
          'MAWB'#9'14'#9'Name'
          'FK_FLIGHT_TABLE'#9'10'#9'Flight'
          'DATE_DEPART'#9'14'#9'Departure Date'
          'REMARKS'#9'16'#9'Remarks'
          'DESTINATION_AREA'#9'16'#9'Destination Area'
          'DESTINATION_COUNTRY'#9'14'#9'Destination')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Align = alLeft
        DataSource = FlightOutCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = []
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        OnTitleButtonClick = FlightOutGRDTitleButtonClick
        OnDblClick = FlightBTNClick
        object FlightOutGRDIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 33
          Height = 33
          AllowAllUp = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF176B1D176B1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF196D1FBEF1D95ACD99196D1FFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF1B6F22B8EFD55ED09D5ED09D59CC971B6F22FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E7126AFECD063D19F63D19F63D1
            9F63D19F58C9931E7126FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF217329A4E9C967D2A2
            67D2A267D2A267D2A267D2A267D2A257C690217329FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24762D98
            E6C26DD4A66DD4A66DD4A66DD4A66DD4A66DD4A66DD4A66DD4A658C38E24762D
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF2779328DE3BB73D5A973D5A973D5A973D5A973D5A973D5A973D5A973D5A973
            D5A973D5A958BF89277932FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF2B7C3684E0B67AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7
            AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD58BA842B7C36FBFCFCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF2F803B2F803B2F803B2F803B2F803B80D9B1
            80D9B180D9B180D9B180D9B168CD9D2F803B2F803B2F803B2F803B2F803BEBEE
            EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF36854388DBB688DBB688DBB688DBB688DBB66FCFA1338340FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF3989488FDDBA8FDDBA8FDDBA8FDDBA8FDDBA75D0A336
            8745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8C4E94DDBD96DEBE96DEBE96DE
            BE96DEBE7AD0A63B8A4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF41905398DEBF
            9DE0C29DE0C29DE0C29DE0C280D1A93E8E50FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF4593579ADFC0A5E2C7A5E2C7A5E2C7A5E2C787D1AC429155FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF49975C99DEC0ABE4CBABE4CBABE4CBABE4CB8CD2AE46
            955AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9A6097DDBEB2E6CFB2E6CFB2E6
            CFB2E6CF91D3B14A985EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF509D6592DBBA
            B8E7D2B8E7D2B8E7D2B8E7D296D3B24D9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF53A0698CD8B6BEE9D6BEE9D6BEE9D6BEE9D69BD4B5509E67FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF56A26C84D5B1C2EAD9C2EAD9C2EAD9C2EAD99ED5B753
            A06AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A37085BD9D85BD9D85BD9D85BD
            9D85BD9D85BD9D56A26EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A471
            58A47158A47158A47158A47158A47158A471FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object InsertBTN: TRzBitBtn
        AlignWithMargins = True
        Left = 777
        Top = 156
        Width = 137
        Height = 56
        Margins.Left = 12
        Alignment = taLeftJustify
        Cancel = True
        ShowDownPattern = False
        BiDiMode = bdLeftToRight
        Caption = 'Add Flight'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
        OnClick = InsertBTNClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333300003333333344C3333333333333337FF3333333
          00003333333A224333333333333338733F33333300003333333A224333333333
          333338733F33333300003333333A224333333333333338733F33333300003333
          333A224333333333333338733F33333300003333333A22433333333333333873
          3F33333300003344444422444444C3337FFF787337FFFFF300003A2222222222
          22224338733333333333333F00003A222222222222224338733333333333333F
          000033AAAAAA222AAAAA3338777777733377777700003333333A224333333337
          888888733788888300003333333A224333333333333338733F33333300003333
          333A224333333333333338733F33333300003333333A22433333333333333873
          3F33333300003333333A2243333333333333387337333333000033333333AA33
          3333333333333877733333330000333333333333333333333333338883333333
          0000}
        Margin = -1
        NumGlyphs = 2
        Spacing = 8
      end
      object BitBtn1: TRzBitBtn
        AlignWithMargins = True
        Left = 777
        Top = 284
        Width = 137
        Height = 56
        Margins.Left = 12
        Alignment = taLeftJustify
        Cancel = True
        ShowDownPattern = False
        BiDiMode = bdLeftToRight
        Caption = 'Edit Flight'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000074120000741200000000000000000000FFFFFFF8F8F8
          FBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD0CFCF393939454133869297D0E9F3E4F8FFF4FCFFFBFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEEF0F08988874B454460747995D1E4A4EBFF99
          E2FF97E1FFDBF3FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F8948B87787A7A95B9
          C3B6F1FFB3EEFFB3EEFFB5EFFFA7E2FFE4F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFB
          889BA2A2C4CFB9ECFABCF2FFBBEFFFC1F1FFBEEFFFA1E3FF99DBFFE8F7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFFFFA6DBF2C0F5FFC6F5FFC5F2FFCAF4FFCEF5FFBAEDFF90DAFB
          8CDBFD9DDCFFEDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4E8FFBCEDFFD0F6FFD6F8FFD8F8FFC8
          F2FF98DAFE6EC8F775CEF58DDBFCA1DEFFEFF8FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1E6FFC6F0FFDCF9
          FFDDFAFFC8F0FF97D7FF5EB8FC5BB9F967C4F579D1F78DDAFCA4DFFFF4FBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D5F1FFB0E5FFAFE4FDA1DDFD79C8FD42A5FF44A5FF51B1FD5CBBF968C4F679CF
          F58DDAFDA6E0FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC2E6FA46B2F130A3F32498F6319CFB3CA1FF46A8FF
          52B0FD5EBBF969C5F679D0F68EDAFCA8E0FFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D7F51E99EC239AF22C
          9CF7359EFC3DA1FF48A8FF54B2FC5FBDF96BC5F67AD0F78DDBFCACE1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF9ED5F61F9BEE259BF32E9DF8369FFD3EA3FF49ABFF55B4FC61BEF96BC8F67C
          D3F790DCFDB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF97D1F61E9AED269BF42F9DFA389FFD41A4FF4DAC
          FF57B6FC63C0F76FC9F583D6F88FDBFEB7E4FFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90CEF41E9AEF279BF5
          309DFA399FFD42A5FF4EADFF58B7FB64C0F770CAF684D6F88CDBFFDFEFF7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF8ECEF41E99EE279BF5309CFA389FFE43A4FF4DADFF59B8FA64C2F771CCF6
          8DD5F45D7F87797978FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF8CCDF51F99EF289AF5319CFA399FFE42A4FF4F
          AEFE59B8FC6CC5F86BA9C74B4A4A2B2B2B5C5C5CF7F7FCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFF8BCCF41F99F0289A
          F5309DFA39A0FE41A4FF50AFFF7DBEEEA6A9AE5F5F6039393A3D3D3C7472D9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FAFDFF8CCDF42099EE289AF52C9CFC3BA3FE8EC9FDE4EAF4AEAEB16C6C6E6F6F
          715D5A8C675FDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9FDFF83C8F41697F0449EE386ACCEB1B1B4ABABAF
          919194BABABEA8A6B17D6FD97064D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFFC8D6DEBAB9B98C
          8C8C626262818182CACACDEEECF69A88DB836ED47C6BC8FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFBFBDEDDDCC3C3C3939393929094BAB1CAAE99D89277CC8067BE9B8CCBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8AAA8B27C6C9D866AB3977BBF8D6EB98164
          B1836DB4E8E4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F7A799C37359A0
          7458A1795EA39A87BCE5E1EFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF7F6FAE1DCEBD5CCE2DDD7E8F9F8FBFFFFFFFFFFFFFFFFFF}
        Margin = -1
        Spacing = 8
      end
      object DeleteBTN: TRzBitBtn
        AlignWithMargins = True
        Left = 777
        Top = 218
        Width = 137
        Height = 56
        Margins.Left = 12
        Alignment = taLeftJustify
        Cancel = True
        ShowDownPattern = False
        BiDiMode = bdLeftToRight
        Caption = 'Delete Flight'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 4
        OnClick = DeleteBTNClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333333333333333
          0000333333333333333333333333333333333333000033333333333333333333
          3333333333333333000033333333333333333333333333333333333300003333
          3333333333333333333333333333333300003333333333333333333333333333
          3333333300003388888888888888333333333333333333330000391111111111
          111193337FFFFFFFFFFFFFF30000391111111111111193387333333333333378
          0000339999999999999933387777777777777778000033333333333333333333
          8888888888888883000033333333333333333333333333333333333300003333
          3333333333333333333333333333333300003333333333333333333333333333
          3333333300003333333333333333333333333333333333330000333333333333
          3333333333333333333333330000333333333333333333333333333333333333
          0000}
        Margin = -1
        NumGlyphs = 2
        Spacing = 8
      end
      object ScanBTN: TRzBitBtn
        AlignWithMargins = True
        Left = 777
        Top = 20
        Width = 137
        Height = 56
        Margins.Left = 12
        Alignment = taLeftJustify
        ShowDownPattern = False
        BiDiMode = bdLeftToRight
        Caption = 'Scan Airwaybills'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 5
        OnClick = ScanBTNClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF926544926544926644926644926643
          9265449266449266449265439266439265439266449265439266449266439266
          43926643926643FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF946744E3CAACE4
          CAACE3CBACE3CBACE3CBACE4CAADE3CAADE4CAADE4CBACE4CAADE4CAACE4CBAC
          E3CBACE4CAACE3CAACE3CAAC936644FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF956845E5CCAFE4CCAFE4CCAFE5CCAFE5CCAFE4CCAEE4CCAFE4CCAFE4CCAFE4
          CCAFE4CCAFE4CDAFE4CDAFE4CCAFE4CDAFE4CCAF956845FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF330F0A804B19804A1944110B44110B44110B804B194411
          0B44110B44110B44110B44110B44110B44110B44110BE5CEB2E5CEB2976945FF
          FFFFFFFFFF926544926544926644926644926643926544926644926644926543
          926643926543926644926543926644926643926643926643926643814C1CE6D1
          B5E6D0B6996A46FFFFFFFFFFFF946744E3CAACE4CAACE3CBACE3CBACE3CBACE4
          CAADE3CAADE4CAADE4CBACE4CAADE4CAACE4CBACE3CBACE4CAACE3CAACE3CAAC
          936644824F21E7D3BAE7D3B99B6C47FFFFFFFFFFFF956845E5CCAFE4CCAFE4CC
          AFE5CCAFE5CCAFE4CCAEE4CCAFE4CCAFE4CCAFE4CCAFE4CCAFE4CDAFE4CDAFE4
          CCAFE4CDAFE4CCAF95684544110BE8D6BEE8D5BE9D6C48FFFFFFFFFFFF976945
          E5CFB2E5CEB2A8744DA8744DA8744DE5CFB2A8744DA8744DA8744DA8744DA874
          4DA8744DA8744DA8744DE5CEB2E5CEB297694584552AE9D9C3E9D8C39F6E48FF
          FFFFFFFFFF996A46E6D1B6E6D1B5E6D1B6E6D0B6E6D0B6E6D1B6E6D0B6E6D0B6
          E6D0B5E6D0B6E6D0B6E6D0B6E6D1B6E6D0B5E6D1B5E6D0B6996A4686582EEBDC
          C9EBDCC9A27049FFFFFFFFFFFF9A6C47E7D3BAE7D3BAE7D3B9E7D3BAE7D3BAE7
          D3BAE7D3B9E7D3BAE7D4BAE7D3B9E7D3BAE7D3BAE7D3B9E7D3BAE7D3BAE7D3B9
          9B6C4744110BEBDECDECDECDA4714AFFFFFFFFFFFF9D6D48E8D6BEE8D6BEA874
          4DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8
          744DE8D6BEE8D5BE9D6C48875D37EDE2D1ECE2D1A6724BFFFFFFFFFFFF9F6E49
          E9D9C3E9D9C2E9D9C3E9D9C3E9D9C3E9D9C3EAD9C3E9D8C3E9D8C2E9D8C3E9D9
          C2E9D8C2EAD9C3E9D9C3E9D9C3E9D8C39F6E4888603BEEE4D6EEE4D6A8754CFF
          FFFFFFFFFFA1704AEBDBC8EBDCC9EADBC8EADCC8EBDBC9EADCC8EADBC8EBDBC8
          EBDCC8EADCC8EADBC8EADCC8EADCC9EBDCC8EBDCC9EBDCC9A2704944110BEFE7
          DAEFE7DAAB764DFFFFFFFFFFFFA3724AEBDECDEBDECDA8744DA8744DA8744DA8
          744DA8744DA8744DA8744DA8744DA8744DECDFCDA8744DA8744DEBDECDECDECD
          A4714A8B6544F0E9DFF0EADEAD774EFFFFFFFFFFFFA6734BEDE1D2EDE1D1ECE1
          D1EDE1D2EDE1D1EDE2D1EDE1D1ECE2D2ECE1D1ECE1D1EDE1D1EDE2D2EDE2D1EC
          E1D1EDE2D1ECE2D1A6724B8C6848F1ECE2F1EBE2AE794FFFFFFFFFFFFFA8744C
          EEE5D6EEE4D6EEE4D6EEE4D6EEE4D6EEE5D6EEE5D6EEE4D6EEE5D6EEE4D6EEE4
          D6EEE4D6EEE5D6EDE4D5EEE4D6EEE4D6A8754C44110BF1EEE5F2EEE6B07950FF
          FFFFFFFFFFAA764DEFE7DAEFE7DAA8744DA8744DA8744DA8744DA8744DA8744D
          A8744DA8744DA8744DA8744DA8744DA8744DEFE7DAEFE7DAAB764D8E6C4DF3F0
          E8F3F0E8B17A50FFFFFFFFFFFFAD774EF0EADEF0EADEF0E9DEF0E9DEF0E9DEF0
          EADFF0EADEF0EADEF0EADFF0E9DEF0EADEF0E9DEF0E9DEF0E9DEF0E9DFF0EADE
          AD774E8E6D50F3F1EAF3F1EAB37B50FFFFFFFFFFFFAE794FF1ECE1F1ECE2A874
          4DA8744DA8744DF1ECE2F1ECE2F0EBE2F1ECE2F1ECE2F1ECE2F1ECE1F1EBE2F1
          ECE2F1ECE2F1EBE2AE794F50120CB47C51B47C51B47C51FFFFFFFFFFFFB07A50
          F1EEE6F2EEE5A8744DA8744DA8744DF1EEE5F2EEE5A8744DA8744DA8744DA874
          4DA8744DA8744DA8744DF1EEE5F2EEE6B07950FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB17B50F3EFE7F3F0E8F2EFE8F2F0E8F3EFE8F2F0E8F2EFE7F3EFE8
          F3F0E8F2F0E8F2EFE8F2F0E7F2F0E8F3F0E7F3F0E8F3F0E8B17A50FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB37C51F3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3
          F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EA
          B37B50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB47C51B47C51B47C51B47C
          51B47C51B47D51B47C51B47C51B47C51B47C51B47C51B47C51B47C51B47C51B4
          7C51B47C51B47C51B47C51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Margin = -1
        Spacing = 8
      end
    end
  end
  object FlightOutSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'FLIGHT_OUT_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_OUT'
      
        '  (SERIAL_NUMBER, MAWB, FK_MOVEMENT_SERIAL, FK_DOCUMENT_MASTER_S' +
        'ERIAL, DATE_DEPART, REMARKS, DESTINATION_AREA, DESTINATION_COUNT' +
        'RY, FK_FLIGHT_TABLE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :MAWB, :FK_MOVEMENT_SERIAL, :FK_DOCUMENT_MAST' +
        'ER_SERIAL, :DATE_DEPART, :REMARKS, :DESTINATION_AREA, :DESTINATI' +
        'ON_COUNTRY, :FK_FLIGHT_TABLE)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_OUT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_OUT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, MAWB = :MAWB, FK_MOVEMENT_SERI' +
        'AL = :FK_MOVEMENT_SERIAL, FK_DOCUMENT_MASTER_SERIAL = :FK_DOCUME' +
        'NT_MASTER_SERIAL, DATE_DEPART = :DATE_DEPART, REMARKS = :REMARKS' +
        ', DESTINATION_AREA = :DESTINATION_AREA, DESTINATION_COUNTRY = :D' +
        'ESTINATION_COUNTRY, FK_FLIGHT_TABLE = :FK_FLIGHT_TABLE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, MAWB, FK_MOVEMENT_SERIAL, FK_DOCUMENT_MAST' +
        'ER_SERIAL, DATE_DEPART, REMARKS, DESTINATION_AREA, DESTINATION_C' +
        'OUNTRY, FK_FLIGHT_TABLE FROM FLIGHT_OUT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_OUT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = trans1
    SQL.Strings = (
      'Select * from FLight_out order by serial_number desc')
    Active = True
    OnDeleteError = FlightOutSQLDeleteError
    Left = 176
    Top = 25
    object FlightOutSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CABOUTDATA.FLIGHT_OUT.SERIAL_NUMBER'
    end
    object FlightOutSQLMAWB: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 14
      FieldName = 'MAWB'
      Origin = 'CABOUTDATA.FLIGHT_OUT.MAWB'
      FixedChar = True
      Size = 15
    end
    object FlightOutSQLFK_FLIGHT_TABLE: TIntegerField
      DisplayLabel = 'Flight'
      DisplayWidth = 10
      FieldName = 'FK_FLIGHT_TABLE'
    end
    object FlightOutSQLDATE_DEPART: TDateTimeField
      DisplayLabel = 'Departure Date'
      DisplayWidth = 14
      FieldName = 'DATE_DEPART'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DATE_DEPART'
    end
    object FlightOutSQLREMARKS: TStringField
      DisplayLabel = 'Remarks'
      DisplayWidth = 16
      FieldName = 'REMARKS'
      Origin = 'CABOUTDATA.FLIGHT_OUT.REMARKS'
      FixedChar = True
      Size = 60
    end
    object FlightOutSQLDESTINATION_AREA: TStringField
      DisplayLabel = 'Destination Area'
      DisplayWidth = 16
      FieldName = 'DESTINATION_AREA'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DESTINATION_AREA'
      FixedChar = True
      Size = 3
    end
    object FlightOutSQLDESTINATION_COUNTRY: TStringField
      DisplayLabel = 'Destination'
      DisplayWidth = 14
      FieldName = 'DESTINATION_COUNTRY'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DESTINATION_COUNTRY'
      FixedChar = True
      Size = 3
    end
    object FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_MOVEMENT_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_OUT.FK_MOVEMENT_SERIAL'
      Visible = False
    end
    object FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_OUT.FK_DOCUMENT_MASTER_SERIAL'
      Visible = False
    end
  end
  object FlightOutCDS: TIBCDataSource
    DataSet = FlightOutSQL
    Left = 649
    Top = 466
  end
  object FlightTableSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_TABLE'
      '  (SERIAL_NUMBER, FLIGHT_NAME, DESTINATION_COUNTRY_CODE)'
      'VALUES'
      '  (:SERIAL_NUMBER, :FLIGHT_NAME, :DESTINATION_COUNTRY_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_TABLE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_TABLE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FLIGHT_NAME = :FLIGHT_NAME, DE' +
        'STINATION_COUNTRY_CODE = :DESTINATION_COUNTRY_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FLIGHT_NAME, DESTINATION_COUNTRY_CODE FROM' +
        ' FLIGHT_TABLE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_TABLE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = trans1
    SQL.Strings = (
      'select * from flight_table')
    FetchAll = True
    ReadOnly = True
    Active = True
    Left = 568
    Top = 89
    object FlightTableSQLFLIGHT_NAME: TStringField
      DisplayWidth = 9
      FieldName = 'FLIGHT_NAME'
      Required = True
      FixedChar = True
      Size = 9
    end
    object FlightTableSQLDESTINATION_COUNTRY_CODE: TStringField
      DisplayWidth = 2
      FieldName = 'DESTINATION_COUNTRY_CODE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FlightTableSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object trans1: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    Left = 721
    Top = 74
  end
  object DeleteFlightCountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_OUT_COUNTRY'
      '  (FK_FLIGHT_OUT)'
      'VALUES'
      '  (:FK_FLIGHT_OUT)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_OUT_COUNTRY'
      'WHERE'
      
        '  FK_FLIGHT_OUT = :Old_FK_FLIGHT_OUT AND COUNTRY_CODE = :Old_COU' +
        'NTRY_CODE')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_OUT_COUNTRY'
      'SET'
      '  FK_FLIGHT_OUT = :FK_FLIGHT_OUT'
      'WHERE'
      
        '  FK_FLIGHT_OUT = :Old_FK_FLIGHT_OUT AND COUNTRY_CODE = :Old_COU' +
        'NTRY_CODE')
    SQLRefresh.Strings = (
      'SELECT FK_FLIGHT_OUT FROM FLIGHT_OUT_COUNTRY'
      'WHERE'
      
        '  FK_FLIGHT_OUT = :FK_FLIGHT_OUT AND COUNTRY_CODE = :COUNTRY_COD' +
        'E')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_OUT_COUNTRY'
      'WHERE'
      
        'FK_FLIGHT_OUT = :Old_FK_FLIGHT_OUT AND COUNTRY_CODE = :Old_COUNT' +
        'RY_CODE'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = trans1
    SQL.Strings = (
      'delete from flight_out_country '
      'where fk_flight_out= :Serialnumber')
    Left = 217
    Top = 506
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SerialNUmber'
        ParamType = ptInput
        Value = 0
      end>
  end
end
