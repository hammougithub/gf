object f_etats: Tf_etats
  Left = 0
  Top = 0
  Caption = 'Etats'
  ClientHeight = 650
  ClientWidth = 1243
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = oncreate
  OnShow = refresh
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1243
    Height = 650
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 99
    ExplicitWidth = 673
    ExplicitHeight = 519
    object Panel2: TPanel
      Left = 1
      Top = 567
      Width = 1241
      Height = 49
      Align = alBottom
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 8
        Width = 919
        Height = 16
        Caption = 
          'Aller '#224' CREDITS AFFECTES et mettre le champ Plus_moins="P" (plus' +
          ') en "N" des cr'#233'dits de Date ant'#233'rieur et soustraire les credits' +
          ' en Moins des cr'#233'dits  ="N"...'#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 455
      Height = 566
      Align = alLeft
      TabOrder = 1
      object SpeedButton6: TSpeedButton
        Left = 1
        Top = 1
        Width = 453
        Height = 39
        Align = alTop
        Caption = 'SITUATION DE CONSOMMATION DE CREDITS(A4)'
        Layout = blGlyphTop
        OnClick = e9
        ExplicitLeft = -79
        ExplicitTop = 86
        ExplicitWidth = 465
      end
      object SpeedButton7: TSpeedButton
        Left = 1
        Top = 227
        Width = 453
        Height = 37
        Align = alTop
        Caption = 'Fichiers EXCEL'
        OnClick = SpeedButton7Click
        ExplicitLeft = -232
        ExplicitTop = 228
        ExplicitWidth = 465
      end
      object SpeedButton5: TSpeedButton
        Left = 1
        Top = 190
        Width = 453
        Height = 37
        Align = alTop
        Caption = 
          'SITUATION  DES CREDITS PAR CHAPITRE DES TWs  ET TCs Papier A3 Or' +
          'ientation Paysage'
        OnClick = eee5
        ExplicitLeft = -232
        ExplicitTop = 228
        ExplicitWidth = 465
      end
      object SpeedButton4: TSpeedButton
        Left = 1
        Top = 153
        Width = 453
        Height = 37
        Align = alTop
        Caption = 'SITUATION  DES CREDITS PAR ARTICLE DES TWs  ET TCs'
        OnClick = e5
        OnDblClick = e5
        ExplicitLeft = -232
        ExplicitTop = 228
        ExplicitWidth = 465
      end
      object SpeedButton3: TSpeedButton
        Left = 1
        Top = 118
        Width = 453
        Height = 35
        Align = alTop
        Caption = 'COMPTE ADMINISTRATIF TABLEAU N'#176'3'
        OnClick = e4
        ExplicitLeft = -232
        ExplicitTop = 197
        ExplicitWidth = 465
      end
      object SpeedButton2: TSpeedButton
        Left = 1
        Top = 79
        Width = 453
        Height = 39
        Align = alTop
        Caption = 'COMPTE ADMINISTRATIF TABLEAU N'#176' 1'
        OnClick = e2
        ExplicitLeft = -232
        ExplicitTop = 160
        ExplicitWidth = 465
      end
      object SpeedButton1: TSpeedButton
        Left = 1
        Top = 40
        Width = 453
        Height = 39
        Align = alTop
        Caption = 'SITUATION DES CREDITS (Letter 8 1/2 x11 pouces) '
        Enabled = False
        OnClick = e1
        ExplicitLeft = -232
        ExplicitTop = 123
        ExplicitWidth = 465
      end
      object Panel6: TPanel
        Left = 1
        Top = 305
        Width = 453
        Height = 32
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 390
        object Label2: TLabel
          Left = 1
          Top = 6
          Width = 88
          Height = 16
          Caption = 'Date  de l'#39#233'tat  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 240
          Top = 20
          Width = 120
          Height = 21
          TabOrder = 0
          Text = 'Edit1'
          Visible = False
        end
        object Button3: TButton
          Left = 274
          Top = 47
          Width = 74
          Height = 25
          Caption = 'date en FR'
          TabOrder = 1
          Visible = False
          OnClick = op
        end
        object xdate: TMaskEdit
          Left = 266
          Top = 78
          Width = 70
          Height = 21
          Color = clSkyBlue
          TabOrder = 2
          Text = ''
          Visible = False
        end
        object xdate1: TMaskEdit
          Left = 95
          Top = 5
          Width = 82
          Height = 24
          Color = clSkyBlue
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 3
          Text = '  /  /    '
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 264
        Width = 453
        Height = 41
        Align = alTop
        TabOrder = 1
        ExplicitLeft = 43
        ExplicitTop = 328
        ExplicitWidth = 262
        object cb1: TCheckBox
          Left = 1
          Top = 1
          Width = 451
          Height = 39
          Align = alClient
          Caption = 'Imprimer cr'#233'dits en + et en -'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          ExplicitWidth = 388
          ExplicitHeight = 35
        end
      end
    end
    object Panel4: TPanel
      Left = 456
      Top = 1
      Width = 786
      Height = 566
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 416
      ExplicitTop = 39
      ExplicitWidth = 777
      ExplicitHeight = 385
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 784
        Height = 16
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        Caption = 'Parametres de l'#39#233'tat '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        Visible = False
        ExplicitLeft = 25
        ExplicitTop = 4
        ExplicitWidth = 152
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 17
        Width = 216
        Height = 526
        Align = alClient
        Color = clSkyBlue
        DataSource = f_etat_consommation.ds1
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'CHAPITRE'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTICLE'
            Width = 25
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TYP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBELLE_ARABE'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBELLE'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBELLE_CHAPITRE'
            Title.Caption = 'Libelle ( Pour  l'#39#233'tat  ... )'
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        Left = 217
        Top = 17
        Width = 568
        Height = 526
        Align = alRight
        Color = clSkyBlue
        DataSource = DataSource1
        DrawingStyle = gdsGradient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'DESIGNATION'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAMP'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBELLEAR'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBELLEFR'
            Width = 450
            Visible = True
          end>
      end
      object Panel8: TPanel
        Left = 1
        Top = 543
        Width = 784
        Height = 22
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 560
        ExplicitWidth = 847
        object DBNavigator2: TDBNavigator
          Left = 495
          Top = 1
          Width = 288
          Height = 20
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alRight
          TabOrder = 0
          Visible = False
          ExplicitLeft = 393
          ExplicitTop = 2
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 616
      Width = 1241
      Height = 33
      Align = alBottom
      TabOrder = 3
      object screen: TSpeedButton
        Left = 217
        Top = 1
        Width = 85
        Height = 31
        Align = alLeft
        Caption = 'Ecran      '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          66090000424D660900000000000036000000280000001C0000001C0000000100
          18000000000030090000430B0000430B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF3C7B1BEBEBEBE
          BEBEBEBEBEBEBEBE08B5FF9CB5FFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEFF00FFFF00FFF3C7B1FFFFFFFFFFFFFFFFFFFFFFFF08B5FF21
          42E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBEFF00FFFF00
          FFF3C7B10B453108B5FF2142EF0B483408B5FF2142E70B49342142E708B5FF0D
          4A340D4B360E4C3675A59474A49375A49375A29275A39375A19176A29175A191
          76A09077A19277A39377A292BEBEBEFF00FFFF00FFF3C7B1154B3608B5FF08B5
          FF2142E708B5FF2142E72142E708B5FF08B5FF12503B10503A114F3978A69677
          A39378A39377A090779F90779F90779F90779F8F779D8E779C8D779A8C779C8D
          BEBEBEFF00FFFF00FFF3C7B11831261B372C08B5FF08B5FF6BE7FF6BE7FF08B5
          FF08B5FF174C38164E3A174E3A164E397BA7977DA7987CA6967CA6967CA5957D
          A2937BA0917CA1937C9F917A9F907B9F907A9E90BEBEBEFF00FFFF00FF9CB5FF
          2142E72142E708B5FF6BE7FF6BE7FF6BE7FF6BE7FF08B5FF2142E72142E79CB5
          FF15573F7CAF9D7DB3A27EB8A67FB8A67FB8A680BAA980BAA980B7A781B3A381
          B0A182AFA182B0A1BEBEBEFF00FFFF00FF08B5FF08B5FF08B5FF08B5FF6BE7FF
          6BE7FF6BE7FF6BE7FF08B5FF08B5FF08B5FF08B5FF1A76567EC8AE7FCBB17FCE
          B280CFB580D1B780CFB681D2B880D3B981D2B881D0B683CEB584CBB2BEBEBEFF
          00FFFF00FFF3C7B117795916805F2142E708B5FF6BE7FF6BE7FF08B5FF2142E7
          1A936D1D967220967321967284DCBF83DDBF83DCBF83DABD82D4B882D1B581CB
          B181C4AB82BCA482B8A283B8A183B5A0BEBEBEFF00FFFF00FFF3C7B1179D7721
          42E708B5FF08B5FF08B5FF08B5FF08B5FF08B5FF315AFF1D94701F8E6B208B67
          83CEB584C8AF83BEA681B8A380B29F81AE9B82A69482A391839F908EA1929CA2
          93A6A698BEBEBEFF00FFFF00FFF3C7B122B88F08B5FF08B5FF24A58008B5FF21
          42E7228B6B08B5FF08B5FF217A5C21705321654A84AF9C8CAD9B9CB5A5B1C2B7
          C5CCC1DCDCD2F3EDE6FFF8F0FFFAF0FFF4E7FFEDE2FFECDCBEBEBEFF00FFFF00
          FFF3C7B1E6C7A7C7C3A1A7B99694B08D08B5FF2142E7829B7D86A08894A28FA2
          8F74B4957AC9A58DFFEAD6FFF3DFFFFFF9FFFFF8FFFAEAFFF0DBFFF7E4FFFFEF
          FFF9E4FFFDEDFFFFF8FFFDECBEBEBEFF00FFFF00FFF3C7B1F4C49CF3C099F3BE
          97F3BA9408B5FF9CB5FFF3AD88F2AA84F1A780F2A47EF0A17AF09E77FFE1C3FF
          E6CBFFEAD3FFECD6FFE8D1FFEBD4FFF7E4FFF7E4FFFEEFFFFEEFFFF1DCFFEDD5
          BEBEBEFF00FFFF00FFF3C7B1F4BB90F4B98DF4B689F4B288F4B48FF3AD85F3A5
          79F2A275F19E72F19C70F1996DF2B497FFFAE8FFE5CCFFF5E2FFFAEAFFFFFFFF
          FEEFFFFFFFFFFFFFFFFFF6FFFAE6FFE1C2FFDAB5BEBEBEFF00FFFF00FFF3C7B1
          F4B485F4B182F4B286F4CDB4F4DDCDF4A980F29D6DF29968F29564F29466F29E
          77F3D3C3FFFFFDFFD8B8FFD1ACFFD2AFFFE4CBFFF6E2FFFFF3FFFCEAFFE2C3FF
          D2ACFFD2AAFFDCB8BEBEBEFF00FFFF00FFF3C7B1F4A877F3A676F4B087F4AE85
          F39F70F39867F29461F3905CF28B57F18651F1844EF0814BFFCBA1FFCAA2FFC7
          9CFFC599FFCBA3FFFFFBFFFFEEFFD0A9FFC294FFC99EFFD1ABFFCFA6BEBEBEFF
          00FFFF00FFF3C7B1F39E67F49A65F49964F49560F29361F3A983F19768F19B70
          F0814CEF7C44F07840EF773DFFC79FFFC79FFFC59CFFC094FFBC8DFFBC8DFFBC
          8DFFBB8CFFBB8DFFCFACFFF9E4FFEED5BEBEBEFF00FFFF00FFF3C7B1F4945CF4
          915AF38F57F38C54F18751F18A57F0814BF0854FF0783EF1753AF07438EF733A
          FFC9A4FFD7BBFFD7BBFFBD92FFB889FFB687FFB587FFB587FFB789FFBA8DFFB8
          89FFC59CBEBEBEFF00FFFF00FFF3C7B1F38E53F28A51F1874EF1844BF17E47EF
          7B42EF783DEF753BF0733AEF733BEE7743F08A62FFEAD5FFE4CDFFD1B4FFBB92
          FFB68BFFB285FFB184FFC8A5FFEDD7FFD1B2FFCEADFFCCA9BEBEBEFF00FFFF00
          FFF3C7B1F2884BF1864FF19261F08F5FEF8B5DEF7F4BEE7B45ED763FEE7845EE
          7D50F08861F19F82FFF0DEFFF8E7FFD2B7FFBF9CFFAF86FFAF86FFB48DFFE2CE
          FFFFFFFFFFFFFFFFFFFFFFFFBEBEBEFF00FFFF00FFF3C7B1F2AF89F4C9B1F4DC
          CCF4DDD2F3BFA7F18E64EF8357EE8052EF8B64F19371F2A98CF3C0ABFFEFDDFF
          E1CBFFD2B8FFB28BFFB896FFD1B8FFE0CBFFDBC4FFFFFAFFFFFFFFFFFFFFFFFF
          BEBEBEFF00FFFF00FFF3C7B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBEFF00FFFF00FFF3C7B1
          F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7
          B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3C7B1F3
          C7B1F3C7B1F3C7B1F3C7B1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF}
        ParentFont = False
        OnClick = ecran
        ExplicitLeft = 253
        ExplicitTop = 2
        ExplicitHeight = 39
      end
      object print: TSpeedButton
        Left = 1
        Top = 1
        Width = 105
        Height = 31
        Align = alLeft
        BiDiMode = bdRightToLeft
        Caption = 'Imprimer        '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFC
          FCF9F9F9FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAECE6E2D8C6B9F5
          F4F4F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF2F2F2B6B6
          B6ABABABDCDCDCECECECF5F5F5F8F8F8F5F5F5EBEBEBC1B1A4AB876CB39177BC
          A18FCFCDCCE8E8E8F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEFEFEFB1B1B17A7A7A7171
          717171717F7F7FB0B0B0C6C6C6CFCFCFC0BAB59F816AA07C5ECCB5A3F3EAE2CB
          B19DBA9D87C3BFBCDFDFDFF6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCECECECA9A9A97777777575759291907171
          71B0AFAE7775757272728F8E8EA494868F6C4FA5846ADFCDBEF29B80F3EAE3F8
          F1ECD7C2B2BD9C85BFB8B4D7D7D7F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFCFCE7E7E7A3A3A3747474777777979695B5B3B1B7B5B47171
          71E5E5E57A78777E76718F725A967155C1A793E9D7C8EF9679F26F49F29D82F5
          EDE6F8F4EFE3D3C8C3A088BEB4ACCFCFCFEDEDEDFCFCFCFFFFFFFFFFFFFFFFFF
          FDFDFDE2E2E29D9D9D7373737A79799F9E9DBBBAB8BDBCBABCB9B8BAB8B77171
          71E5E5E57A787766564C9A76590C83000C83000C83000C8300EF977AF19A7FF3
          9E84F6A28AFAF6F2EDE3DBC6A58BC0B0A6C8C8C8E7E7E7F9F9F9FFFFFFE0E0E0
          9C9C9C7171717D7C7CA5A4A3C3C3C0C4C2C0C1C0BFC0BEBDBEBCBBBDBBB97171
          71E5E5E57A787739383A433A38587532789B590C83000C8300EAD9CC87E8E530
          F2F831F4FAB7A590FBF8F6F2ECE5CCAB94C2AC9EC2C2C2DFDFDFFFFFFF7A7A7A
          80807FACABABCCCBCACCCAC9C9C8C7C7C6C5C5C4C2C4C2C0C2C0BEC0BEBD7171
          71E0E0E07A78773130332C2B2D3936367B614D3E735E076E34538C7A86E7E330
          F2F730F3F98BF1F2F7A58EFDFAF8F1E8E1C8A48BC3AA98C4C3C2FFFFFF7A7A7A
          BDBCBCD2D1D1D0CFCFCFCECCCDCCCBCACAC9C8C7C6C7C6C4C5C4C2C3C2C07171
          71DFDEDE7A78774E4D4D2C2A2D32313339393A6A574A386B554E8573EE9577EF
          977BF29B80F49F85EDE3DBD1B9A6C09C80C4A38DC4B2A6D8D5D3FFFFFF7A7A7A
          C8C7C7D6D5D4D4D3D2D2D1D0D0CFCFCECECDCDCCCACACAC8C9C8C6C7C6C37171
          71DFDEDE7A78777E7C7A726F703D3C3F39383A4241425D534C526063CAB29EEE
          9679E2CFC2C1A691AD8A6EB59D8BB7ADA7BBBBBBDCDCDCF6F6F6FFFFFF7A7A7A
          D5D5D4DDDDDCD7D7D6D6D5D4D4D3D2D1D0CFCFCFCECECDCCCCCBCACAC9C87171
          71DFDEDE7A78777F7C7B8482818785856362624342434B494B5A555282654FA5
          866B8F715A958578747270B1B1B1B5B5B5B8B8B8CECECEF2F2F2FFFFFF7A7A7A
          E2E2E2EEEDEDE0DFDFD9D9D8D7D7D6D5D4D4D4D2D2D2D0CFCFCFCECECDCC7171
          71DFDEDE7A78777F7B7B8481818A8786908E8D8A88875A59595453535E5A5B6A
          635E7D7C7BBAB9B8717171B1B1B1B5B5B5B7B7B7C5C5C5E7E7E7FFFFFF7A7A7A
          E6E6E6F8F8F8F1F1F1E6E6E6DBDADAD9D8D8D7D6D5D5D5D3D3D2D1CCCCCB7171
          71DFDEDE7A78777E7C7B8481818A8786918E8D9895949F9C9C8281805F5E5E64
          62627D7B7BBAB9B9717171B2B2B2B9B9B9C7C7C7E6E6E6F9F9F9FFFFFF7A7A7A
          E8E8E8FAFAFAF9F9F9F8F8F8F1F1F1E9E8E9E1E1E1DBDBDBD7D6D5A6A5A57171
          717373737776767D7A798482818A8787908F8D989794A09D9CA7A5A4A3A1A078
          76767D7B7BBAB9B9717171BBBBBBCFCFCFEDEDEDFBFBFBFFFFFFFFFFFF7A7A7A
          E9E9EAFBFBFBFAFAFAFAFAFAF9F9F9F8F8F8F8F8F8F7F7F7E6E6E67878787171
          71A5A4A4BCBBBA8C8C8B797878898685908E8D989794A09D9CA7A5A4AEACABB5
          B3B1A7A5A5BAB9B9717171D8D8D8F3F3F3FDFDFDFFFFFFFFFFFFFFFFFF7A7A7A
          D7D7D7FCFCFCFBFBFBFBFBFBFBFBFAFAFAFAF9F9F9E9E9E97C7C7C7171718C8C
          8CD0CFCFCDCBCAB9B7B6B0AFAE828282848382989594A09D9CA7A4A3AEACABB4
          B2B2BBB9B8BAB9B8717171F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C
          717171939393C7C7C7E0E0E0DFDFDFDFDFDFC2C2C27171717171718C8C8CD9D8
          D8D8D8D7BBBAB89997949D9A99BAB8B7A4A3A27F7F7E959493A6A5A4AEABABB5
          B3B2BBB8B7BAB9B8717171FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB
          828282717171717171717171717171717171807F7F9F9F9FCFCFCFE9E9E9E5E5
          E4CAC8C7A7A5A3A09E9D999795918F8EA3A19FBDBCBB979696868584A8A6A5B4
          B3B1BAB8B8BAB9B9777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9C9B9B9D9C9A7575759B9B9BC9C9C8E1E0E1E7E6E6EAEAEAEDEDEEE0DFDFC7C5
          C4B3B1AEADABA9A7A5A3A09F9D999794918E8E8E8C8BACABAABAB7B78D8C8C94
          9392B7B6B5BBB9B87A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A5A5A5B6B4B2AFADAB8786867B7A7AB7B6B5C4C2C2ABAAA8A7A5A4ADABA9B3B0
          AFB6B4B2B2B0AEADABAAA7A5A3A19E9C999794908F8D8A8787918F8EB9B7B6B0
          AFAD888887A2A0A07A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FAFAFABDBCBCAAA9A7916B4ED2D2D17C7C7C8D8C8CC0BFBEA7A5A3A7A5A3ADAB
          A9B2B0AFB6B4B2B3B1AEADABA9A7A5A3A19E9D999794918F8D8A8887868584C6
          C5C3B3B1B07171719F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9F9F9967153F9F9F9EEEEEE949494747474A6A6A6B5B3B2A7A5
          A3ADABAAB3B1AEB6B4B2B3B0AEADABAAA7A5A4A09E9D999795918E8DB5B4B3D0
          CECE878686737373E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9C775AFFFFFFFFFFFFFFFFFFC0C0C0767676818181B7B6
          B6ACAAA8ADABA9B2B0AFB6B4B2B3B0AEAEABA9A7A5A4A3A09FBEBDBCDDDCDBAD
          ACAC717171B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFA37E62FFFFFFF9F5F1FCF9F7FEFDFCEBEBEB8F8F8F7171
          719B9A9AB7B5B4ADABAAB2B1AEB6B4B2B8B6B4C5C3C2E0E0DFEAE9E9CFCFCE76
          7676A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFAB866AFFFFFFF1E6DDF4EBE4F7F0EBF9F5F1FDFBFABCBC
          BC747474797979B2B0AFD3D3D2DBDADBE6E6E6EBEAEAEEEDEDC0C0C07575759A
          9A9AFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB28D71F6F1EDF7F0EAEDDED3EFE1D7F1E6DDF4EBE4F8F2
          EDEFEFEF7B7B7B7171718A89899B9B9B999999878686717171757575BBBBBBFE
          FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEEE5DEC7A993E6D8CFFCF9F7EDDFD4EADACCECDDD1EFE1
          D7FDFBF9B994799F9F9F7C7C7C7171717A7A7A8E8E8EB1B1B1EAEAEAFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFCFBDCC8B9D4BBA9FAF6F4F5EDE7EADACCE9D7
          C9FBF8F6BF9B80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E8E1D1B5A1EFE4DEFCF9F7F1E5
          DCFCF9F7C5A185FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFADEC9B9DEC9B9FDFB
          FAFEFEFDC8A489FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE5DDD4BA
          A5F3EBE6C4A085FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB
          F9DAC5B5BF9B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentBiDiMode = False
        OnClick = pr
        ExplicitLeft = 60
        ExplicitTop = 2
        ExplicitHeight = 39
      end
      object Button2: TButton
        Left = 920
        Top = 1
        Width = 320
        Height = 31
        Align = alRight
        Caption = 'Afficher et masquer (Libell'#233'es) des '#233'tats'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button2Click
        ExplicitHeight = 39
      end
      object Button1: TButton
        Left = 755
        Top = 1
        Width = 165
        Height = 31
        Align = alRight
        Caption = 'Configurer Imprimante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
        ExplicitLeft = 411
        ExplicitTop = 2
        ExplicitHeight = 39
      end
      object ecran_fr: TButton
        Left = 302
        Top = 1
        Width = 89
        Height = 31
        Align = alLeft
        Caption = 'ECRAN FR'
        Enabled = False
        TabOrder = 2
        OnClick = ecran_frClick
        ExplicitLeft = 327
        ExplicitTop = 2
        ExplicitHeight = 39
      end
      object topdf: TButton
        Left = 106
        Top = 1
        Width = 111
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'To pdf'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        OnClick = topdfClick
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 792
    Top = 72
  end
  object q_mdm: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'y'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'r'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'w'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select count (montant) from lignes where chapitre=:x and article' +
        '=:y and'
      '(structure_situation=:r) and gestion=:z and dates<=:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 408
    Top = 427
  end
  object simpledataset_parameters1: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters where forme='#39'f_etat_consommation'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 736
    Top = 128
  end
  object simpledataset_parameters3: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters where forme='#39'f_tableau3'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 728
    Top = 248
  end
  object simpledataset_parameters2: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters where forme='#39'f_tableau1'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 728
    Top = 184
  end
  object DataSource1: TDataSource
    Left = 864
    Top = 208
  end
  object SimpleDataSet_parameters4: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters where forme='#39'f_situation_a3'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 552
    Top = 152
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\PC-SALAH\EPSON LQ-2090 ESC/P 2 Ver 2.0 (Copie 2)'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44298.668680162000000000
    ReportOptions.LastChange = 44717.500219571760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'Function NombreEnLettres(Valeur : Real; SM : String = '#39#39' ; Franc' +
        'e : Boolean = True ) : string;'
      
        '// Conversion d'#39'un r'#233'el '#224' 2 d'#233'cimales en lettre avec symbole mon' +
        #233'taire en option'
      '//  Valeur : nombre '#224' convertir'
      '//  SM     : symbole mon'#233'taire'
      '//  France : langue fran'#231'aise, sinon belge'
      'Var'
      '  unite      : array[1..19] of string;'
      '  dizaineF   : array[2.. 9] of string;'
      '  dizaineB   : array[2.. 9] of string;'
      '  coefs      : array[0.. 3] of string;'
      ''
      '  temp      : String;'
      '  c, d, u   : Integer;'
      '  coef      : Integer;'
      '  i         : Integer;'
      '  neg       : boolean;'
      '  n         : Integer ;'
      '  Decimales : Real ;'
      '  Centimes  : String ;'
      'Begin'
      '  result := '#39#39';'
      '  unite[1]:='#39'un'#39';'
      '  unite[2]:='#39'deux'#39';'
      '  unite[3]:='#39'trois'#39';'
      '  unite[4]:='#39'quatre'#39';'
      '  unite[5]:='#39'cinq'#39';'
      '  unite[6]:='#39'six'#39';'
      '  unite[7]:='#39'sept'#39';'
      '  unite[8]:='#39'huit'#39';'
      '  unite[9]:='#39'neuf'#39';'
      '  unite[10]:='#39'dix'#39';'
      '  unite[11]:='#39'onze'#39';'
      '  unite[12]:='#39'douze'#39';'
      '  unite[13]:='#39'treize'#39';'
      '  unite[14]:='#39'quatorze'#39';'
      '  unite[15]:='#39'quinze'#39';'
      '  unite[16]:='#39'seize'#39';'
      '  unite[17]:='#39'dix sept'#39';'
      '  unite[18]:='#39'dix huit'#39';'
      '  unite[19]:='#39'dix neuf'#39';'
      ''
      '  dizaineF[2]:='#39'vingt'#39';'
      '  dizaineF[3]:='#39'trente'#39';'
      '  dizaineF[4]:='#39'quarante'#39';'
      '  dizaineF[5]:='#39'cinquante'#39';'
      '  dizaineF[6]:='#39'soixante'#39';'
      '  dizaineF[7]:='#39#39';'
      '  dizaineF[8]:='#39'quatre-vingt'#39';'
      '  dizaineF[9]:='#39#39';'
      ''
      '  dizaineB[2]:='#39'vingt'#39';'
      '  dizaineB[3]:='#39'trente'#39';'
      '  dizaineB[4]:='#39'quarante'#39';'
      '  dizaineB[5]:='#39'cinquante'#39';'
      '  dizaineB[6]:='#39'soixante'#39';'
      '  dizaineB[7]:='#39'septante'#39';'
      '  dizaineB[8]:='#39'octante'#39';'
      '  dizaineB[9]:='#39'nonante'#39';'
      ''
      '  coefs[0]:='#39'cent'#39';'
      '  coefs[1]:='#39'mille'#39';'
      '  coefs[2]:='#39'million'#39';'
      '  coefs[3]:='#39'milliard'#39';'
      ''
      '   // Cas particulier de z'#233'ro'
      '  If Valeur = 0 then'
      '  begin'
      '    result := '#39' zero'#39';'
      '    exit;'
      '  end;'
      ''
      '  // M'#233'morisation du signe'
      '  neg := Valeur < 0;'
      '  If neg then Valeur := -Valeur;'
      ''
      '  n         := Trunc(Valeur) ;'
      
        '  decimales := Round(Frac(Valeur) * 100) ;   // 2 premi'#232'res d'#233'ci' +
        'males'
      '  coef      := 0 ;'
      '  Repeat'
      
        '    // R'#233'cup'#233'ration de l'#39'unit'#233' du bloc de trois chiffres en cour' +
        's'
      '    u:=n mod 10; n:=n div 10;'
      
        '    // R'#233'cup'#233'ration de la dizaine du bloc de trois chiffres en c' +
        'ours'
      '    d:=n mod 10; n:=n div 10;'
      ''
      '    // Traitement des dizaines'
      '    temp := '#39#39';'
      '    // Passage sur la dizaine inf'#233'rieure pour 10 '#224' 19'
      '    // et pour 70-79 90-99 dans le cas de la France'
      '    If (d=1) Or ((d in [7,9])And France) then'
      '    begin'
      '      Dec(d);'
      '      Inc(u,10);'
      '    end;'
      '    if d > 1 then'
      '    begin'
      '      If France Then'
      '      Begin'
      '        temp := '#39' '#39' + DizaineF[d];'
      
        '        // Ajout du cas particulier de '#39'et'#39' entre la dizaine et ' +
        '1'
      '        if (d < 8) and ((u = 1) or (u = 11)) then'
      '          temp := temp + '#39' et'#39';'
      '      End Else'
      '      Begin'
      '        temp := '#39' '#39' + DizaineB[d];'
      
        '        // Ajout du cas particulier de '#39'et'#39' entre la dizaine et ' +
        '1'
      '        if (u = 1) then'
      '          temp := temp + '#39' et'#39';'
      '      End;'
      '    end;'
      '    // ajout du texte de l'#39'unit'#233
      '    if u > 0 then temp := temp + '#39' '#39' + unite[u];'
      '    // ajout du '#39's'#39' '#224' Quatre-vingt si rien ne suit'
      
        '    If (result = '#39#39') and (d = 8) and (u = 0) and France then res' +
        'ult := '#39's'#39';'
      '    result := temp + result;'
      ''
      
        '    // R'#233'cup'#233'ration de la centaine du bloc de trois chiffres en ' +
        'cours'
      '    c := n mod 10; n := n div 10; {R'#233'cup'#232're centaine}'
      '    If c > 0 then'
      '    begin'
      '      temp := '#39#39';'
      '      if c > 1 then temp := '#39' '#39' + unite[c] + temp;'
      '      temp := temp + '#39' '#39' + coefs[0];'
      
        '      // Traitement du cas particulier du '#39's'#39' '#224' cent si rien ne ' +
        'suit'
      '      If (result = '#39#39') and (c > 1) then result := '#39's'#39';'
      '      result := temp + result;'
      '    end;'
      ''
      '    // Traitement du prochain groupe de 3 chiffres'
      '    if n > 0 then'
      '    begin'
      '      Inc(coef);'
      '      I := n mod 1000;'
      '      If (i > 1) and (coef > 1) then result := '#39's'#39' + result;'
      '      If i > 0 then result := '#39' '#39' + coefs[coef] + result;'
      
        '      // Traitement du cas particulier '#39'mille'#39' ( non pas '#39'un mil' +
        'le'#39' )'
      '      If (i = 1) and (coef = 1) then Dec(n);'
      '    end;'
      '  until n = 0;'
      ''
      '  SM := Trim(SM) ;'
      '  If (SM <> '#39#39') Then'
      '    Begin'
      '      result := Trim(result)+ '#39' '#39'+ SM;'
      '      If (Decimales > 0 ) Then'
      '         Begin'
      '           Centimes := '#39' centimes'#39' ;'
      
        '           If (Trunc(Decimales) = 1) Then  Centimes := '#39' centime' +
        #39' ;'
      
        '            Result := Result + '#39' et '#39'+NombreEnLettres(Decimales)' +
        ' + Centimes ;'
      '         End ;'
      '    End'
      '  Else'
      '    Begin'
      '      result := Trim(result);'
      '      If (Decimales > 0 ) Then'
      '         Begin'
      
        '            Result := Result + '#39' virgule '#39'+NombreEnLettres(Decim' +
        'ales) ;'
      '         End ;'
      '    End ;'
      ''
      '  // Ajout du signe en cas de besoin'
      '  if neg then result := '#39'moins '#39' + result;'
      'End;'
      ''
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//   memo47.text:=NombreEnLettres(<SUM(<frxDBDataset2."MONTANT">' +
        ',MasterData1)>,'#39#8364#39',true);'
      'end;'
      ''
      'begin'
      'end.')
    Left = 944
    Top = 520
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = f_edit_bc.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'lettre'
        Value = Null
      end
      item
        Name = 'pop'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      VGuides.Strings = (
        '320')
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692913390000000000
        Top = 192.756030000000000000
        Width = 1632.001054000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 907.601054000000000000
          Top = -1.000000000000000000
          Width = 156.400000000000000000
          Height = 55.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#233'penses'
            'du mois')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 732.000000000000000000
          Top = -1.000000000000000000
          Width = 168.240000000000000000
          Height = 56.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#233'penses'
            'Ant'#233'rieures')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 588.000000000000000000
          Width = 136.320000000000000000
          Height = 56.692913390000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total'
            'des'
            ' engagements')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 491.000000000000000000
          Width = 95.360000000000000000
          Height = 56.692913385826770000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dotations'
            'r'#233'vis'#233'es')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.559060000000000000
          Width = 52.913420000000000000
          Height = 46.015770000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Chap'
            '')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 412.000000000000000000
          Top = 27.000000000000000000
          Width = 72.840000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'En moins')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 320.000000000000000000
          Top = 25.000000000000000000
          Width = 89.000000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'En plus')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 320.000000000000000000
          Width = 165.400000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mouvements d'#39'ordre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 177.000000000000000000
          Top = 1.000000000000000000
          Width = 143.000000000000000000
          Height = 47.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cr'#233'dits affect'#233's'
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 64.000000000000000000
          Top = 3.000000000000000000
          Width = 110.800000000000000000
          Height = 46.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Libell'#233' nature')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 1066.000000000000000000
          Top = 0.243970000000000000
          Width = 156.400000000000000000
          Height = 55.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total des'
            'D'#233'penses')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 1226.000000000000000000
          Top = 0.243970000000000000
          Width = 156.400000000000000000
          Height = 55.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Soldes'
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 1386.000000000000000000
          Top = -0.756030000000000000
          Width = 75.400000000000000000
          Height = 55.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '   %')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 151.181102362204700000
        Top = 18.897650000000000000
        Width = 1632.001054000000000000
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 511.259740000000000000
          Top = 0.107050000000000000
          Width = 474.726160000000000000
          Height = 29.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPUBLIQUE ALGERIENNE DEMOCRATIQUE ET POPULAIRE ')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 350.739950000000000000
          Top = 97.590551180000000000
          Width = 487.608040000000000000
          Height = 28.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUATION DE CONSOMMATION DE CREDITS ARRETEE AU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 15.307050000000000000
          Top = 8.225170000000000000
          Width = 220.200000000000000000
          Height = 17.661410000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MINISTERE DES FINANCES')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 15.018800000000000000
          Top = 29.004700000000000000
          Width = 759.961040000000000000
          Height = 26.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'DIRECTION GENERALE DE TRESOR ET DE GESTION DES OPERATIONS FINANC' +
              'IERES DE L'#39'ETAT')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 57.252010000000000000
          Width = 389.291590000000000000
          Height = 25.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DIRECTION REGIONALE DU TRESOR  A GHARDAIA')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 1348.000000000000000000
          Top = 1058.800000000000000000
          Width = 286.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' ......................'#1575#1604#1600#1600#1605#1600#1576#1600#1604#1600#1600#1594' '#1575#1604#1600#1589#1600#1600#1600#1575#1601#1600#1610' ')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 1391.000000000000000000
          Top = 1122.800000000000000000
          Width = 240.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Shape14: TfrxShapeView
          AllowVectorExport = True
          Left = 6.720000000000000000
          Top = 264.000000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape20: TfrxShapeView
          AllowVectorExport = True
          Left = 444.600000000000000000
          Top = 264.000000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 566.400000000000000000
          Top = 263.800000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 610.800000000000000000
          Top = 264.000000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 643.200000000000000000
          Top = 264.000000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 691.200000000000000000
          Top = 264.000000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 758.400000000000000000
          Top = 263.000000000000000000
          Width = 0.844800000000000000
          Height = 568.320000000000000000
          Frame.Typ = []
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 489.600000000000000000
          Top = 264.000000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 892.800000000000000000
          Top = 263.040000000000000000
          Width = 0.844800000000000000
          Height = 568.320000000000000000
          Frame.Typ = []
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 1296.000000000000000000
          Top = 264.000000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 1622.800000000000000000
          Top = 264.200000000000000000
          Width = 0.844800000000000000
          Height = 501.120000000000000000
          Frame.Typ = []
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 7.600000000000000000
          Top = 263.200000000000000000
          Width = 1616.640000000000000000
          Height = 0.960000000000000000
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.160000000000000000
        Top = 309.921460000000000000
        Width = 1632.001054000000000000
        DataSet = f_edit_bc.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 493.000000000000000000
          Top = 0.400000000000000000
          Width = 70.080000000000000000
          Height = 19.200000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '347')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1MONTANT: TfrxMemoView
          AllowVectorExport = True
          Left = 761.000000000000000000
          Top = 0.400000000000000000
          Width = 129.600000000000000000
          Height = 19.200000000000000000
          DataSet = f_edit_bc.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTANT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2OBSERVATION: TfrxMemoView
          AllowVectorExport = True
          Left = 9.200000000000000000
          Top = 0.400000000000000000
          Width = 432.000000000000000000
          Height = 19.200000000000000000
          DataSet = f_edit_bc.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Trim(<frxDBDataset2."OBSERVATION">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2BANQUE: TfrxMemoView
          AllowVectorExport = True
          Left = 895.200000000000000000
          Top = 0.400000000000000000
          Width = 397.440000000000000000
          Height = 19.200000000000000000
          DataSet = f_edit_bc.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[Trim(<frxDBDataset2."compte">)+'#39'  '#39'+Trim(<frxDBDataset2."banque' +
              '">)]')
        end
        object frxDBDataset1GESTION: TfrxMemoView
          AllowVectorExport = True
          Left = 569.000000000000000000
          Top = 0.400000000000000000
          Width = 40.320000000000000000
          Height = 19.200000000000000000
          DataField = 'GESTION'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."GESTION"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1CHAPITRE: TfrxMemoView
          AllowVectorExport = True
          Left = 645.200000000000000000
          Top = 0.400000000000000000
          Width = 45.120000000000000000
          Height = 19.200000000000000000
          DataField = 'CHAPITRE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHAPITRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1ARTICLE: TfrxMemoView
          AllowVectorExport = True
          Left = 615.400000000000000000
          Top = 0.400000000000000000
          Width = 23.040000000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICLE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICLE"]')
          VAlign = vaCenter
        end
        object frxDBDataset1ENGAGEMENT: TfrxMemoView
          AllowVectorExport = True
          Left = 692.800000000000000000
          Top = 0.400000000000000000
          Width = 62.400000000000000000
          Height = 19.200000000000000000
          DataField = 'ENGAGEMENT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ENGAGEMENT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2NOM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1300.200000000000000000
          Top = 0.600000000000000000
          Width = 319.680000000000000000
          Height = 19.200000000000000000
          DataSet = f_edit_bc.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Trim(<frxDBDataset2."NOM">)]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 447.600000000000000000
          Width = 38.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '110')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 288.000000000000000000
        ParentFont = False
        Top = 389.291590000000000000
        Width = 1632.001054000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 1506.600000000000000000
          Top = 63.600000000000000000
          Width = 96.000000000000000000
          Height = 28.800000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1608#1602#1601#1578' '#1593#1604#1609' '#1605#1576#1604#1594)
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 757.000000000000000000
          Top = 1.000000000000000000
          Width = 136.320000000000000000
          Height = 28.800000000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."MONTANT">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 895.200000000000000000
          Top = 5.400000000000000000
          Width = 108.800000000000000000
          Height = 28.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1605#1600#1580#1600#1605#1600#1600#1608#1593' '#1575#1604#1600#1581#1600#1608#1575#1604#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 897.200000000000000000
          Top = 34.000000000000000000
          Width = 51.600000000000000000
          Height = 27.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1600#1600#1601#1600#1589#1600#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 145.800000000000000000
          Top = 70.600000000000000000
          Width = 106.800000000000000000
          Height = 32.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1570#1605#1600#1600#1585' '#1576#1575#1604#1589#1585#1601)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 1405.600000000000000000
          Top = 110.200000000000000000
          Width = 199.600000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '........................... '#1575#1604#1600#1605#1600#1576#1604#1600#1600#1594' '#1575#1604#1600#1582#1600#1600#1600#1600#1575#1605' ')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 1405.600000000000000000
          Top = 133.200000000000000000
          Width = 199.600000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' ...................... '#1575#1604#1600#1605#1600#1576#1604#1600#1600#1594' '#1575#1604#1600#1605#1600#1585#1601#1600#1600#1608#1590' ')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 547.138590000000000000
          Top = 109.000000000000000000
          Width = 125.656710000000000000
          Height = 35.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1594#1600#1600#1600#1585#1583#1575#1610#1600#1600#1600#1577' '#1610#1608#1605)
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 433.200000000000000000
          Top = 109.000000000000000000
          Width = 109.800000000000000000
          Height = 35.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '2018/12/31')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 1414.200000000000000000
          Top = 157.800000000000000000
          Width = 190.000000000000000000
          Height = 25.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' ....................'#1575#1604#1600#1606#1600#1601#1600#1600#1602#1600#1600#1575#1578' '#1575#1604#1600#1605#1600#1587#1600#1583#1583#1577' ')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 551.400000000000000000
          Top = 63.400000000000000000
          Width = 950.400000000000000000
          Height = 28.800000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' '#1575#1604#1601'  '#1608' '#1605#1575#1574#1577' '#1608' '#1575#1585#1576#1593#1608#1606' '#1583#1610#1606#1575#1585' '#1580#1586#1575#1574#1585#1610' .')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1CHAPITRE1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 757.600000000000000000
          Top = 31.000000000000000000
          Width = 136.320000000000000000
          Height = 31.680000000000000000
          DataField = 'CHAPITRE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHAPITRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 1422.800000000000000000
          Top = 187.400000000000000000
          Width = 180.400000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '..................'#1575#1602#1600#1578#1600#1591#1600#1600#1575#1593' '#1575#1604#1600#1605#1600#1581#1600#1575#1587#1600#1600#1600#1576'  ')
          ParentFont = False
        end
        object Shape21: TfrxShapeView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 5.600000000000000000
          Top = -3.000000000000000000
          Width = 1616.640000000000000000
          Height = 0.960000000000000000
          Frame.Typ = []
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 896
    Top = 544
  end
end
