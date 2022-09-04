object f_des: Tf_des
  Left = 0
  Top = 0
  Caption = 'D'#233'signation'
  ClientHeight = 881
  ClientWidth = 1570
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1570
    Height = 881
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1280
      Top = 32
      Width = 289
      Height = 820
      Align = alRight
      TabOrder = 0
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 287
        Height = 16
        Align = alTop
        Caption = 'D'#233'signation Quantit'#233'(D.Clic sur D'#233'signation)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ExplicitWidth = 263
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 17
        Width = 287
        Height = 782
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.DataSource_desig_qt
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'REF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'R'#233'f'#233'rence'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QT'
            Title.Caption = 'Quantit'#233
            Width = 55
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATES'
            Title.Caption = 'Date'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UTILISATEUR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATE_MAJ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end>
      end
      object DBNavigator3: TDBNavigator
        Left = 1
        Top = 799
        Width = 287
        Height = 20
        DataSource = f_dm.DataSource_desig_qt
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
        Align = alBottom
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 999
      Top = 32
      Width = 231
      Height = 820
      Align = alRight
      Color = clSilver
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 998
      ExplicitTop = 26
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 229
        Height = 16
        Align = alTop
        Caption = 'Unit'#233's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ExplicitWidth = 38
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 17
        Width = 229
        Height = 783
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.Ds_unites
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = unite_prendre
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UNITE'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel13: TPanel
        Left = 1
        Top = 800
        Width = 229
        Height = 19
        Align = alBottom
        Caption = 'Panel13'
        TabOrder = 1
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 1
          Width = 240
          Height = 18
          DataSource = f_dm.Ds_unites
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1568
      Height = 31
      Align = alTop
      TabOrder = 2
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 111
        Height = 29
        Align = alLeft
        Caption = 'Table Designation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ExplicitHeight = 16
      end
      object RadioGroup1: TRadioGroup
        Left = 354
        Top = 1
        Width = 213
        Height = 29
        Align = alLeft
        Caption = 'T R I'
        Color = clSkyBlue
        Columns = 2
        Items.Strings = (
          'Tri par d'#233'signation'
          'Tri par r'#233'frence')
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        OnClick = trier
      end
      object Edit4: TEdit
        Left = 328
        Top = 1
        Width = 26
        Height = 29
        Align = alLeft
        TabOrder = 1
        Visible = False
        ExplicitHeight = 21
      end
      object Edit3: TEdit
        Left = 298
        Top = 1
        Width = 30
        Height = 29
        Align = alLeft
        TabOrder = 2
        Visible = False
        ExplicitHeight = 21
      end
      object Edit2: TEdit
        Left = 280
        Top = 1
        Width = 18
        Height = 29
        Align = alLeft
        TabOrder = 3
        Visible = False
        ExplicitHeight = 21
      end
      object Edit1: TEdit
        Left = 112
        Top = 1
        Width = 168
        Height = 29
        Align = alLeft
        Color = clSkyBlue
        TabOrder = 4
        OnChange = fd
        ExplicitHeight = 21
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 852
      Width = 1568
      Height = 28
      Align = alBottom
      TabOrder = 3
      object SpeedButton1: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 26
        Align = alLeft
        Caption = 'Imprimer'
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
        ExplicitLeft = 74
        ExplicitTop = -2
        ExplicitHeight = 35
      end
      object Button1: TButton
        Left = 1512
        Top = 1
        Width = 55
        Height = 26
        Align = alRight
        Caption = 'Fin'
        TabOrder = 0
        OnClick = quiter
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 32
      Width = 998
      Height = 820
      Align = alClient
      TabOrder = 4
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 996
        Height = 763
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.Ds_designation
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = prendre_desig
        Columns = <
          item
            Expanded = False
            FieldName = 'REF'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESIGNATION'
            Title.Alignment = taCenter
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prix'
            Title.Alignment = taCenter
            Title.Caption = 'Price'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_ACTUEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_CONSOMMEE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 99
            Visible = True
          end>
      end
      object Panel7: TPanel
        Left = 1
        Top = 788
        Width = 996
        Height = 31
        Align = alBottom
        TabOrder = 1
        object Button2: TButton
          Left = 1
          Top = 1
          Width = 345
          Height = 29
          Align = alLeft
          Caption = 'Voir ou Cacher les consommations de la des'#233'signation en cours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 686
          Top = 1
          Width = 309
          Height = 29
          Align = alRight
          Caption = 'Voir ou Cacher  les Quantit'#233's  de la d'#233'signation en cours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 764
        Width = 996
        Height = 24
        Align = alBottom
        TabOrder = 2
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 660
          Height = 22
          DataSource = f_dm.Ds_designation
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
        end
      end
      object Panel10: TPanel
        Left = 665
        Top = 394
        Width = 327
        Height = 302
        Caption = 'Panel10'
        TabOrder = 3
        Visible = False
        object DBGrid5: TDBGrid
          Left = 1
          Top = 1
          Width = 325
          Height = 279
          Align = alClient
          Color = clCream
          DataSource = DataSource2
          DrawingStyle = gdsGradient
          GradientEndColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
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
              FieldName = 'QT'
              Title.Alignment = taCenter
              Title.Caption = 'Quantit'#233
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATES'
              Title.Alignment = taCenter
              Title.Caption = 'DATE'
              Width = 77
              Visible = True
            end>
        end
        object DBNavigator5: TDBNavigator
          Left = 1
          Top = 280
          Width = 325
          Height = 21
          DataSource = DataSource2
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 1
          Visible = False
        end
      end
      object Panel9: TPanel
        Left = 2
        Top = 394
        Width = 657
        Height = 302
        TabOrder = 4
        Visible = False
        object DBGrid4: TDBGrid
          Left = 1
          Top = 1
          Width = 655
          Height = 279
          Align = alClient
          Color = clCream
          DataSource = DataSource1
          DrawingStyle = gdsGradient
          GradientEndColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
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
              FieldName = 'QT'
              Title.Alignment = taCenter
              Title.Caption = 'QT'#233
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATES'
              Title.Alignment = taCenter
              Title.Caption = 'DATE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMA'
              Title.Alignment = taCenter
              Title.Caption = 'NOM'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRENOMA'
              Title.Alignment = taCenter
              Title.Caption = 'PRENOM'
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMA_1'
              Title.Alignment = taCenter
              Title.Caption = 'SERVICE'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVATION'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ADM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERVICE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ADM_1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAT_1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODE'
              Visible = True
            end>
        end
        object Panel12: TPanel
          Left = 1
          Top = 280
          Width = 655
          Height = 21
          Align = alBottom
          TabOrder = 1
          object DBNavigator4: TDBNavigator
            Left = 1
            Top = 1
            Width = 304
            Height = 19
            DataSource = DataSource1
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
            Visible = False
          end
        end
      end
    end
    object Panel14: TPanel
      Left = 1230
      Top = 32
      Width = 50
      Height = 820
      Align = alRight
      TabOrder = 5
    end
  end
  object del_qt_desig: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete from designation_qt where ref=:x')
    SQLConnection = f_dm.connect_db_gf
    Left = 816
    Top = 3
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 552
    Top = 80
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'v'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select a.qt,a.dates,a.adm,a.mat,a.service,a.observation,b.adm,b.' +
        'mat,b.noma,b.prenoma,c.code,c.noma'
      ' from consommation a, employes b, service c'
      
        'where a.ref=:v and a.adm=b.adm and a.mat=b.mat and a.service=c.c' +
        'ode order by a.dates')
    SQLConnection = f_dm.connect_db_gf
    Left = 752
    Top = 88
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Options = [poCascadeUpdates, poUseQuoteChar]
    Left = 664
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 616
    Top = 104
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'v'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select a.qt,a.dates from designation_qt a'
      'where a.ref=:v  order by a.dates')
    SQLConnection = f_dm.connect_db_gf
    Left = 680
    Top = 224
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Options = [poCascadeUpdates, poUseQuoteChar]
    Left = 672
    Top = 176
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 560
    Top = 176
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 624
    Top = 200
  end
end
