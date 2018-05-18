object L_ItineraryFRM: TL_ItineraryFRM
  Left = 285
  Top = 102
  ClientHeight = 621
  ClientWidth = 625
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
    Width = 625
    Height = 65
    Align = alTop
    Caption = 'List Itineraries'
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
    Top = 555
    Width = 625
    Height = 66
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 8
      Top = 13
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
    Width = 625
    Height = 490
    Align = alClient
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 623
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 1
      Top = 65
      Width = 623
      Height = 424
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 24
        Height = 424
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object DeleteSelectedBTN: TBitBtn
        Left = 712
        Top = 89
        Width = 137
        Height = 32
        BiDiMode = bdRightToLeft
        Cancel = True
        Caption = 'Delete Itinerary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'ARIAL'
        Font.Style = [fsBold]
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
        NumGlyphs = 2
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = DeleteSelectedBTNClick
      end
      object InsertBTN: TBitBtn
        Left = 696
        Top = 1
        Width = 137
        Height = 40
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = 'Add Itinerary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'ARIAL'
        Font.Style = [fsBold]
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
        NumGlyphs = 2
        ParentBiDiMode = False
        ParentFont = False
        Style = bsNew
        TabOrder = 2
        Visible = False
        OnClick = InsertBTNClick
      end
      object BitBtn1: TBitBtn
        Left = 720
        Top = 49
        Width = 137
        Height = 32
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = 'Edit Itinerary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'ARIAL'
        Font.Style = [fsBold]
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
        ParentBiDiMode = False
        ParentFont = False
        Style = bsNew
        TabOrder = 3
        Visible = False
        OnClick = BitBtn1Click
      end
      object BitBtn3: TBitBtn
        Left = 712
        Top = 153
        Width = 137
        Height = 40
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = 'Add Itinerary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'ARIAL'
        Font.Style = [fsBold]
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
        NumGlyphs = 2
        ParentBiDiMode = False
        ParentFont = False
        Style = bsNew
        TabOrder = 4
        Visible = False
        OnClick = InsertBTNClick
      end
      object GroupBox1: TGroupBox
        Left = 30
        Top = -16
        Width = 409
        Height = 241
        Caption = 'Itinerary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object FlightOutGRD: TwwDBGrid
          Left = 2
          Top = 64
          Width = 408
          Height = 175
          Selected.Strings = (
            'SERIAL_NUMBER'#9'5'#9'S/N'
            'FLIGHT_NAME'#9'33'#9'Name')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 1
          ShowHorzScrollBar = True
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Align = alLeft
          Ctl3D = True
          DataSource = ItinerarySRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'ARIAL'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'ARIAL'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = FlightOutGRDDblClick
          ExplicitLeft = 3
          ExplicitTop = 89
          ExplicitHeight = 182
        end
        object wwDBNavigator2: TwwDBNavigator
          Left = 2
          Top = 21
          Width = 405
          Height = 43
          AutosizeStyle = asNone
          DataSource = ItinerarySRC
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alTop
          ExplicitTop = 3
          object wwNavButton1: TwwNavButton
            Left = 0
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
            Index = 0
            Style = nbsPrior
          end
          object wwNavButton2: TwwNavButton
            Left = 25
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Next'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsNext
          end
          object wwNavButton3: TwwNavButton
            Left = 50
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
            Index = 2
            Style = nbsInsert
          end
          object wwNavButton4: TwwNavButton
            Left = 75
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Delete current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Delete'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsDelete
          end
          object wwNavButton5: TwwNavButton
            Left = 100
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
            Index = 4
            Style = nbsPost
          end
          object wwNavButton6: TwwNavButton
            Left = 125
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
            Index = 5
            Style = nbsCancel
          end
          object wwNavButton7: TwwNavButton
            Left = 150
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
            Index = 6
            Style = nbsRefresh
          end
        end
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 88
        Top = 516
        Width = 209
        Height = 24
        Ctl3D = True
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODE_2'#9'8'#9'Code2'#9'F'
          'NAME'#9'60'#9'NAME'#9'F')
        DataField = 'COUNTRY_CODE'
        DataSource = itineraryCountrySRC
        LookupTable = CountrySQL
        LookupField = 'CODE_2'
        Options = [loColLines]
        ParentCtl3D = False
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object GroupBox2: TGroupBox
        Left = 40
        Top = 248
        Width = 385
        Height = 217
        Caption = 'Itinerary Countries'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object wwDBNavigator1: TwwDBNavigator
          Left = 2
          Top = 21
          Width = 381
          Height = 36
          AutosizeStyle = asNone
          DataSource = itineraryCountrySRC
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alTop
          object wwDBNavigator1Prior: TwwNavButton
            Left = 0
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
            Index = 0
            Style = nbsPrior
          end
          object wwDBNavigator1Next: TwwNavButton
            Left = 25
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Next'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsNext
          end
          object wwDBNavigator1Insert: TwwNavButton
            Left = 50
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
            Index = 2
            Style = nbsInsert
          end
          object wwDBNavigator1Delete: TwwNavButton
            Left = 75
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Delete current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Delete'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsDelete
          end
          object wwDBNavigator1Post: TwwNavButton
            Left = 100
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
            Index = 4
            Style = nbsPost
          end
          object wwDBNavigator1Cancel: TwwNavButton
            Left = 125
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
            Index = 5
            Style = nbsCancel
          end
          object wwDBNavigator1Refresh: TwwNavButton
            Left = 150
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
            Index = 6
            Style = nbsRefresh
          end
        end
        object wwDBGrid1: TwwDBGrid
          Left = 2
          Top = 57
          Width = 335
          Height = 158
          ControlType.Strings = (
            'COUNTRY_CODE;CustomEdit;wwDBLookupCombo3')
          Selected.Strings = (
            'ORDER_POSITION'#9'5'#9'Pos'
            'COUNTRY_CODE'#9'9'#9'Country'
            'CountryName'#9'25'#9'CountryName')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Align = alLeft
          BorderStyle = bsNone
          Color = clInfoBk
          Ctl3D = False
          DataSource = itineraryCountrySRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgEditing, dgTitles, dgColumnResize, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = FlightOutGRDDblClick
        end
      end
    end
  end
  object ItinerarySQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'ITINERARY_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO ITINERARY'
      '  (SERIAL_NUMBER, FLIGHT_NAME)'
      'VALUES'
      '  (:SERIAL_NUMBER, :FLIGHT_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM ITINERARY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE ITINERARY'
      'SET'
      '  SERIAL_NUMBER = :SERIAL_NUMBER, FLIGHT_NAME = :FLIGHT_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      'SELECT SERIAL_NUMBER, FLIGHT_NAME FROM ITINERARY'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM ITINERARY'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = UsedForUpdateTrans
    SQL.Strings = (
      'Select * from itinerary')
    Active = True
    Left = 560
    Top = 105
    object ItinerarySQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 5
      FieldName = 'SERIAL_NUMBER'
    end
    object ItinerarySQLFLIGHT_NAME: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 33
      FieldName = 'FLIGHT_NAME'
      FixedChar = True
      Size = 30
    end
  end
  object UsedForUpdateTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    DefaultCloseAction = taCommit
    Active = True
    Left = 808
    Top = 113
  end
  object ItinerarySRC: TIBCDataSource
    DataSet = ItinerarySQL
    Left = 633
    Top = 98
  end
  object ItineraryCountrySQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'ITINERARY_COUNTRY_GENERATOR'
    SQLInsert.Strings = (
      'INSERT INTO ITINERARY_COUNTRY'
      
        '  (SERIAL_NUMBER, FK_ITINERARY_SERIAL, COUNTRY_CODE, ORDER_POSIT' +
        'ION)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_ITINERARY_SERIAL, :COUNTRY_CODE, :ORDER_P' +
        'OSITION)')
    SQLDelete.Strings = (
      'DELETE FROM ITINERARY_COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE ITINERARY_COUNTRY'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_ITINERARY_SERIAL = :FK_ITIN' +
        'ERARY_SERIAL, COUNTRY_CODE = :COUNTRY_CODE, ORDER_POSITION = :OR' +
        'DER_POSITION'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_ITINERARY_SERIAL, COUNTRY_CODE, ORDER_P' +
        'OSITION FROM ITINERARY_COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :P_1_SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM ITINERARY_COUNTRY'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = UsedForUpdateTrans
    SQL.Strings = (
      'Select * from itinerary_country order by order_position')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_ITINERARY_SERIAL'
    MasterSource = ItinerarySRC
    Active = True
    Left = 632
    Top = 297
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = 12
      end>
    object ItineraryCountrySQLORDER_POSITION: TIntegerField
      DisplayLabel = 'Pos'
      DisplayWidth = 5
      FieldName = 'ORDER_POSITION'
    end
    object ItineraryCountrySQLCOUNTRY_CODE: TStringField
      DisplayLabel = 'Country'
      DisplayWidth = 9
      FieldName = 'COUNTRY_CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object ItineraryCountrySQLCountryName: TStringField
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'CountryName'
      LookupDataSet = CountrySQL
      LookupKeyFields = 'CODE_2'
      LookupResultField = 'NAME'
      KeyFields = 'COUNTRY_CODE'
      Lookup = True
    end
    object ItineraryCountrySQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Visible = False
    end
    object ItineraryCountrySQLFK_ITINERARY_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_ITINERARY_SERIAL'
      Required = True
      Visible = False
    end
  end
  object itineraryCountrySRC: TIBCDataSource
    DataSet = ItineraryCountrySQL
    Left = 769
    Top = 330
  end
  object CountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO COUNTRY'
      
        '  (CODE_3, CODE_2, NAME, FK_CURRENCY_CODE, GREEK_NAME, SERIAL_NU' +
        'MBER)'
      'VALUES'
      
        '  (:CODE_3, :CODE_2, :NAME, :FK_CURRENCY_CODE, :GREEK_NAME, :SER' +
        'IAL_NUMBER)')
    SQLDelete.Strings = (
      'DELETE FROM COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE COUNTRY'
      'SET'
      
        '  CODE_3 = :CODE_3, CODE_2 = :CODE_2, NAME = :NAME, FK_CURRENCY_' +
        'CODE = :FK_CURRENCY_CODE, GREEK_NAME = :GREEK_NAME, SERIAL_NUMBE' +
        'R = :SERIAL_NUMBER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT CODE_3, CODE_2, NAME, FK_CURRENCY_CODE, GREEK_NAME, SERIA' +
        'L_NUMBER FROM COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM COUNTRY'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'Select * from Country')
    Active = True
    Left = 865
    Top = 482
    object CountrySQLCODE_2: TStringField
      DisplayLabel = 'Code2'
      DisplayWidth = 8
      FieldName = 'CODE_2'
      FixedChar = True
      Size = 2
    end
    object CountrySQLNAME: TStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      FixedChar = True
      Size = 60
    end
  end
end
