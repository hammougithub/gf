object f_edit_bc: Tf_edit_bc
  Left = -4
  Top = -4
  Caption = 'Edition Bon de commande'
  ClientHeight = 742
  ClientWidth = 1326
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = on_create
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1326
    Height = 742
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 32
    ExplicitWidth = 1122
    ExplicitHeight = 585
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 758
      Height = 707
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 19
      ExplicitHeight = 699
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 756
        Height = 429
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 16
        ExplicitTop = 18
        ExplicitWidth = 297
        ExplicitHeight = 317
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 754
          Height = 24
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 1
            Top = 1
            Width = 352
            Height = 22
            Align = alLeft
            Caption = 'Table Bon De Commande (Double Clic pour '#233'diter) '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object cb: TCheckBox
            Left = 359
            Top = 1
            Width = 316
            Height = 22
            Align = alRight
            Caption = 'Cocher pour reporter les totaux (tot:=0.0 dans le programme)'
            Color = clHotLight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object num: TEdit
            Left = 675
            Top = 1
            Width = 78
            Height = 22
            Align = alRight
            Color = clSkyBlue
            TabOrder = 1
            OnChange = seek
            ExplicitLeft = 187
            ExplicitHeight = 21
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 403
          Width = 754
          Height = 25
          Align = alBottom
          TabOrder = 1
          ExplicitLeft = 0
          ExplicitTop = 256
          ExplicitWidth = 409
          object DBNavigator1: TDBNavigator
            Left = 1
            Top = 1
            Width = 432
            Height = 23
            DataSource = f_dm.ds_bc
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
          object ww: TEdit
            Left = 624
            Top = 1
            Width = 129
            Height = 23
            Align = alRight
            Color = clSkyBlue
            TabOrder = 1
          end
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 25
          Width = 754
          Height = 378
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_bc
          DrawingStyle = gdsGradient
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = Etat
          Columns = <
            item
              Expanded = False
              FieldName = 'GESTION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BC1'
              Title.Caption = 'N'#176' BC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TYPES'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TYPES1'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FOURNISSEUR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STRUCTURE'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAPITRE'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARTICLE'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SECTION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TVA'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DELAIS'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AVOIR'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATES'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAM'
              Title.Caption = 'ORIGINE'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBS1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBS2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBS3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AU_COMPTE_DE'
              Title.Caption = 'Au compte de'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UTILISATEUR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_MAJ'
              Visible = True
            end>
        end
      end
      object Panel10: TPanel
        Left = 1
        Top = 430
        Width = 756
        Height = 276
        Align = alBottom
        TabOrder = 1
        object Panel11: TPanel
          Left = 17
          Top = 8
          Width = 272
          Height = 17
          TabOrder = 0
        end
        object Panel12: TPanel
          Left = 17
          Top = 95
          Width = 185
          Height = 41
          Caption = 'Panel12'
          TabOrder = 1
          object DBNavigator2: TDBNavigator
            Left = -43
            Top = 21
            Width = 228
            Height = 20
            DataSource = f_dm.ds_bc_lignes
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            TabOrder = 0
          end
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 754
          Height = 274
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_bc_lignes
          DrawingStyle = gdsGradient
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'GESTION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PU'
              Title.Caption = 'Prix unitaire'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QT'
              Title.Caption = 'Quantit'#233
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UTILISATEUR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_MAJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIGNE'
              Visible = True
            end>
        end
      end
    end
    object Panel3: TPanel
      Left = 759
      Top = 1
      Width = 566
      Height = 707
      Align = alRight
      Caption = 'Panel3'
      TabOrder = 1
      ExplicitLeft = 760
      ExplicitTop = 16
      ExplicitHeight = 353
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 564
        Height = 25
        Align = alTop
        TabOrder = 0
        ExplicitLeft = 8
        ExplicitTop = 0
        ExplicitWidth = 305
        object Label3: TLabel
          Left = 22
          Top = 2
          Width = 283
          Height = 16
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Parametres de l'#39#233'tat Bon de Commande'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 468
        Width = 564
        Height = 25
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 8
        ExplicitTop = 296
        ExplicitWidth = 185
        object DBNavigator3: TDBNavigator
          Left = 1
          Top = 1
          Width = 288
          Height = 23
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
          ExplicitLeft = -103
          ExplicitTop = 5
          ExplicitHeight = 20
        end
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 26
        Width = 564
        Height = 442
        Align = alClient
        Color = clSkyBlue
        DataSource = DataSource1
        DrawingStyle = gdsGradient
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
      object Panel13: TPanel
        Left = 1
        Top = 493
        Width = 564
        Height = 213
        Align = alBottom
        BorderStyle = bsSingle
        TabOrder = 3
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 708
      Width = 1324
      Height = 33
      Align = alBottom
      TabOrder = 2
      object EDITER: TSpeedButton
        Left = 240
        Top = 1
        Width = 94
        Height = 31
        Align = alLeft
        Caption = 'Imprimante'
        Enabled = False
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
        OnClick = EditerClick
        ExplicitLeft = 283
        ExplicitTop = 8
        ExplicitHeight = 33
      end
      object Button2: TButton
        Left = 1
        Top = 1
        Width = 239
        Height = 31
        Align = alLeft
        Caption = 'Afficher et masquer (Libell'#233'es) de l'#39#233'tat BC'
        TabOrder = 0
        OnClick = aficher
        ExplicitLeft = 18
        ExplicitTop = 6
        ExplicitHeight = 35
      end
      object Fin: TButton
        Left = 1248
        Top = 1
        Width = 75
        Height = 31
        Align = alRight
        Caption = 'Fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = FinClick
        ExplicitLeft = 749
        ExplicitTop = 9
        ExplicitHeight = 32
      end
      object bxls: TButton
        Left = 686
        Top = 1
        Width = 82
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'To XLS'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        OnClick = TOxls
        ExplicitLeft = 742
        ExplicitTop = 9
        ExplicitHeight = 32
      end
      object Button1: TButton
        Left = 607
        Top = 1
        Width = 79
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
        OnClick = TOPDF
        ExplicitLeft = 745
        ExplicitTop = 9
        ExplicitHeight = 32
      end
      object fs: TButton
        Left = 527
        Top = 1
        Width = 80
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Fastreport'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 4
        OnClick = fsClick
        ExplicitLeft = 744
        ExplicitTop = 8
        ExplicitHeight = 33
      end
      object fs_ds: TButton
        Left = 435
        Top = 1
        Width = 92
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Designer Fs'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 5
        OnClick = fs_dsClick
        ExplicitLeft = 732
        ExplicitTop = 8
        ExplicitHeight = 33
      end
      object ECRAN: TButton
        Left = 334
        Top = 1
        Width = 101
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = #1593#1604#1609' '#1575#1604#1588#1600#1600#1600#1575#1588#1577
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 6
        OnClick = EcranClick
        ExplicitLeft = 723
        ExplicitTop = 7
        ExplicitHeight = 34
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 264
    Top = 592
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = UTF8Encoding
    Codepage = '1252'
    Left = 1032
    Top = 584
  end
  object simpledataset_parameters: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters  where forme='#39'f_etat_bc'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 712
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = simpledataset_parameters
    Left = 816
    Top = 200
  end
  object QRHTMLFilter1: TQRHTMLFilter
    MultiPage = False
    PageLinks = False
    FinalPage = 0
    FirstLastLinks = False
    Concat = False
    ConcatCount = 1
    LinkFontSize = 12
    LinkFontName = 'Arial'
    TextEncoding = AnsiEncoding
    Left = 992
    Top = 544
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 1016
    Top = 224
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44341.617346527800000000
    ReportOptions.LastChange = 44671.304115127310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var vlinecount:integer;x,y1,z1:real;'
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'vlinecount:=vlinecount+1;x:=x+(<frxDBDataset2."QT">*<frxDBDatase' +
        't2."pu">);'
      'y1:=y1+(<frxDBDataset2."QT">*<frxDBDataset2."pu">);'
      
        'memo85.text:=inttostr(vlinecount)+'#39' '#39'+inttostr((MasterData1.Data' +
        'Set.RecordCount))+'#39'li:'#39'+inttostr(<Line>)+'#39' page: '#39'+inttostr(<pag' +
        'e>)'
      '+'#39' reste'#39'+inttostr(MasterData1.DataSet.RecordCount-<Line>);'
      
        'memo85.text:=inttostr(vlinecount)+'#39' '#39'+inttostr((strtoint(n1.text' +
        ')-vlinecount));'
      
        'if ((((MasterData1.DataSet.RecordCount)-(<Line>))=1) and (vlinec' +
        'ount>(strtoint(n2.text)-1)))'
      '       then  begin'
      
        '             Child1.height:=(strtoint(n1.text)-vlinecount)*maste' +
        'rdata1.height;'
      
        '             line39.top:=1;line39.height:=(strtoint(n1.text)-vli' +
        'necount)*masterdata1.height-1;'
      
        '             line24.top:=0;line24.height:=0;//(strtoint(n1.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '             line18.top:=0;line18.height:=0;//(strtoint(n1.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '             line30.top:=0;line30.height:=0;//(strtoint(n1.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '             line31.top:=0;line31.height:=0;//(strtoint(n1.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '              line32.top:=0;line32.height:=(strtoint(n1.text)-vl' +
        'inecount)*masterdata1.height;'
      
        '             line33.top:=0;line33.height:=0;//(strtoint(n1.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '              line34.top:=0;line34.height:=(strtoint(n1.text)-vl' +
        'inecount)*masterdata1.height;'
      
        '              Child1.Visible:=true;end; // show the band at the ' +
        'current position'
      ''
      
        ' if (MasterData1.DataSet.RecordCount=<Line>)  and ((strtoint(n2.' +
        'text)>vlinecount))'
      '  then  begin'
      
        '             Child1.height:=(strtoint(n2.text)-vlinecount)*maste' +
        'rdata1.height;'
      
        '             line39.top:=1;line39.height:=(strtoint(n2.text)-vli' +
        'necount)*masterdata1.height-1;'
      
        '             line24.top:=0;line24.height:=0;//(strtoint(n2.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '             line18.top:=0;line18.height:=0;//(strtoint(n2.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '             line30.top:=0;line30.height:=0;//(strtoint(n2.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '             line31.top:=0;line31.height:=0;//(strtoint(n2.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '              line32.top:=0;line32.height:=(strtoint(n2.text)-vl' +
        'inecount)*masterdata1.height;'
      
        '             line33.top:=0;line33.height:=0;//(strtoint(n2.text)' +
        '-vlinecount)*masterdata1.height;'
      
        '              line34.top:=0;line34.height:=(strtoint(n2.text)-vl' +
        'inecount)*masterdata1.height;'
      '              Child1.Visible:=true;'
      ''
      '              end;'
      'end;'
      ''
      'procedure SysMemo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '// if ((((MasterData1.DataSet.RecordCount)-(<Line>))=1) and (vli' +
        'necount>(strtoint(n2.text)-1)))'
      '//      or'
      '      if (vlinecount=strtoint(n1.text))'
      '       then begin vlinecount:=0;ENGINE.NewPage    end;'
      'end;'
      ''
      ''
      'procedure PageHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '      vlinecount:=0'
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'vlinecount:=0;'
      '   case strtoint(trim(<frxDBDataset1."TYPES1">)) of'
      '    1:begin c4.text:='#39' X '#39'; c5.text:='#39'   '#39';c6.text:='#39'   '#39' end;'
      '    2:begin c5.text:='#39' X '#39'; c4.text:='#39'   '#39';c6.text:='#39'   '#39' end;'
      '    3:begin c6.text:='#39' X '#39'; c5.text:='#39'   '#39';c4.text:='#39'   '#39' end;'
      'end;'
      ''
      'case strtoint(trim(<frxDBDataset1."TYPES">)) of'
      '    1:begin c1.text:='#39' X '#39'; c2.text:='#39'   '#39';c3.text:='#39'   '#39' end;'
      '    2:begin c2.text:='#39' X '#39'; c1.text:='#39'   '#39';c3.text:='#39'   '#39' end;'
      '    3:begin c3.text:='#39' X '#39'; c1.text:='#39'   '#39';c2.text:='#39'   '#39' end;'
      '    end;'
      'end;'
      ''
      'procedure Child1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  if ((((MasterData1.DataSet.RecordCount)-(<Line>))=1) and (vlin' +
        'ecount>(strtoint(n2.text)-1)))'
      '     then  begin'
      
        '              vlinecount:=0;Child1.Visible:=false;ENGINE.NewPage' +
        '    end;'
      ''
      'end;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   memo140.text:='#39' '#1578#1602#1583#1585' '#1605#1583#1577' '#1575#1604#1578#1587#1604#1610#1605' '#1571#1608' '#1575#1604#1578#1606#1601#1610#1584'  '#39'+trim(<frxDBDat' +
        'aset1."delais">)+'#39' '#1608' '#1607#1584#1575' '#1575#1576#1578#1583#1575#1569#1575' '#1605#1606' '#1578#1575#1585#1610#1582' '#1575#1605#1590#1575#1569' '#1607#1584#1575' '#1575#1604#1587#1606#1583' '#39';'
      '   y.text:=FormatFloat('#39'#,##0.00'#39',y1);'
      '   tp1.text:=FormatFloat('#39'#,##0.00'#39',x);'
      '  if <frxDBDataset1."TVA">=0 then begin'
      
        '         m0.visible:=true; m33.visible:=true;m3.visible:=false;t' +
        '3.visible:=false;m4.visible:=false;t4.visible:=false;'
      '         if  <frxDBDataset1."avoir">=0  then begin'
      '              m0.text:='#39#1575#1604#1605#1576#1604#1594' '#1575#1604#1575#1580#1605#1575#1604#1610#39';'
      
        '              line48.visible:=false;line47.visible:=false;  line' +
        '46.visible:=false;line28.visible:=false;'
      
        '              m2.visible:=false; m1.visible:=false;t2.visible:=f' +
        'alse; t1.visible:=false;'
      
        '              line29.height:=49;line27.height:=49;line26.height:' +
        '=49; line28.visible:=false;//top:=60;'
      '                              end else begin'
      
        '               line48.visible:=true;line47.visible:=true;  line4' +
        '6.visible:=false;line28.visible:=false;'
      
        '               m2.visible:=true; m1.visible:=true;t2.visible:=tr' +
        'ue; t1.visible:=true;'
      
        '               m0.text:='#39#1575#1604#1605#1576#1604#1594' '#1575#1604#1603#1604#1610#39';m1.text:='#39' Avoir'#39';t1.text' +
        ':=FormatFloat('#39'#,##0.00'#39',<frxDBDataset1."avoir">);'
      
        '               m2.text:='#39#1575#1604#1605#1576#1604#1594' '#1575#1604#1575#1580#1605#1575#1604#1610#39';t2.text:=FormatFloat('#39 +
        '#,##0.00'#39',y1-<frxDBDataset1."avoir">);'
      
        '               line29.height:=49;line27.height:=49;line26.height' +
        ':=49;'
      '         end;'
      'end;'
      ' if (<frxDBDataset1."TVA">)<>0 then begin'
      
        '           line48.visible:=true;line47.visible:=true; m33.visibl' +
        'e:=false;'
      
        '           m2.visible:=true; m1.visible:=true;t2.visible:=true; ' +
        't1.visible:=true;'
      '           m0.text:='#39#1575#1604#1605#1576#1604#1594' '#1575#1604#1603#1604#1610#39';'
      
        '           m1.text:='#39#1605'.'#1585'. '#1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1590#1575#1601#1577#39'+'#39'%'#39'+FormatFloat('#39'#,##0' +
        '.00'#39',<frxDBDataset1."tva">);'
      
        '           t1.text:=FormatFloat('#39'#,##0.00'#39',y1*<frxDBDataset1."tv' +
        'a">/100);'
      
        '           m2.text:='#39#1575#1604#1605#1576#1604#1594' '#1576#1580#1605#1610#1593' '#1575#1604#1585#1587#1608#1605#39';t2.text:=FormatFloat('#39 +
        '#,##0.00'#39',y1*(1+(<frxDBDataset1."tva">/100)));'
      '           if  <frxDBDataset1."avoir">=0  then begin'
      '                  line46.visible:=false;line28.visible:=false;'
      
        '                  m3.visible:=false;t3.visible:=false;m4.visible' +
        ':=false;t4.visible:=false;'
      
        '                  line29.height:=93;line27.height:=93;line26.hei' +
        'ght:=93;'
      '                end else begin'
      
        '                            m3.visible:=true;t3.visible:=true;m4' +
        '.visible:=true;t4.visible:=true;'
      
        '                            line46.visible:=true;line28.visible:' +
        '=true;'
      
        '                            line29.height:=138;line27.height:=13' +
        '8;line26.height:=138;'
      
        '                            m3.text:='#39' Avoir'#39';t3.text:=FormatFlo' +
        'at('#39'#,##0.00'#39',<frxDBDataset1."avoir">);'
      '                            m4.text:='#39#1575#1604#1605#1576#1604#1594' '#1575#1604#1575#1580#1605#1575#1604#1610#39';'
      
        '                            t4.text:=FormatFloat('#39'#,##0.00'#39',(y1*' +
        '(1+(<frxDBDataset1."tva">/100)))-<frxDBDataset1."avoir">);'
      '                end ;'
      ''
      '  end;'
      ''
      ''
      ''
      ''
      'end;'
      ''
      ''
      'procedure Child1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '// line18.height:=5;'
      'end;'
      ''
      'procedure BitBtn1OnClick(Sender: TfrxComponent);'
      'begin'
      ' // if strtoint(n1.text)>23 then n1.text:='#39'23'#39';'
      'end;'
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  tt.text:=FormatFloat('#39'#,##0.00'#39',x);z1:=z1+x;z.text:=FormatFloa' +
        't('#39'#,##0.00 '#39',z1);'
      '  x:=0;'
      
        '   if cb1.checked then begin memo89.visible:=false;page.visible:' +
        '=true  end'
      '     else begin   memo89.visible:=true;page.visible:=false end;'
      'end;'
      ''
      'procedure ReportSummary1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '      memo83.visible:=false;memo82.visible:=false;tt.visible:=fa' +
        'lse;z.visible:=false;'
      
        '      line36.visible:=false;line37.visible:=false;line38.visible' +
        ':=false;line45.visible:=false;'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   MasterData1.Height:=strtofloat(trim(n3.text));//(default=21.5' +
        '4 pixels)'
      
        '   line1.Height:=MasterData1.Height;line2.Height:=MasterData1.He' +
        'ight;'
      
        '   line11.Height:=MasterData1.Height;line12.Height:=MasterData1.' +
        'Height;'
      
        '   line13.Height:=MasterData1.Height;line14.Height:=MasterData1.' +
        'Height;'
      '   line15.Height:=MasterData1.Height;'
      
        '   frxdbdataset2qt.Height:=MasterData1.Height;frxdbdataset2pu.He' +
        'ight:=MasterData1.Height;'
      
        '   frxdbdataset2pu1.Height:=MasterData1.Height;frxdbdataset2unit' +
        'e.Height:=MasterData1.Height;'
      
        '   frxdbdataset2lib.Height:=MasterData1.Height;;frxdbdataset2lig' +
        'ne.Height:=MasterData1.Height;'
      'end;'
      ''
      ''
      ''
      'procedure n3OnClick(Sender: TfrxComponent);'
      'begin'
      '     n1.text:=inttostr(int((23*21.54)/strtofloat(n3.text)));'
      '     n2.text:=inttostr(int((9*21.54)/strtofloat(n3.text)));'
      'end;'
      ''
      ''
      ''
      'begin'
      '   vlinecount:=0;x:=0;z1:=0;y1:=0;'
      'end.')
    Left = 807
    Top = 112
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = []
      MirrorMode = []
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.543307090000000000
        Top = 619.842920000000000000
        Width = 793.701300000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Child = frxReport1.Child1
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        KeepFooter = True
        RowCount = 0
        object frxDBDataset2LIGNE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 725.653990000000000000
          Width = 40.818897640000000000
          Height = 21.540000000000000000
          DataSet = f_edit_mandat.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."LIGNE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2LIB: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.630180000000000000
          Width = 385.512060000000000000
          Height = 21.540000000000000000
          DataSet = f_edit_mandat.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset2."LIB">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2QT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.779530000000000000
          Width = 105.826840000000000000
          Height = 21.540000000000000000
          DataSet = f_edit_mandat.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<frxDBDataset2."QT">*<frxDBDataset2."pu">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2PU: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 132.385900000000000000
          Width = 90.708720000000000000
          Height = 21.540000000000000000
          DataSet = f_edit_mandat.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PU"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 349.598640000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'pp')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2PU1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 225.874150000000000000
          Width = 49.133890000000000000
          Height = 21.540000000000000000
          DataField = 'QT'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."QT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 20.787401574803100000
          Height = 21.540000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 130.385826770000000000
          Height = 21.540000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxDBDataset2UNITE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 279.346630000000000000
          Width = 46.866151500000000000
          Height = 21.540000000000000000
          DataField = 'GESTION'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."GESTION"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 223.874150000000000000
          Height = 21.540000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 276.567100000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 329.582870000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 724.157480314961000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 770.346940000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149606300000000000
        Top = 1077.166050000000000000
        Width = 793.701300000000000000
        OnAfterCalcHeight = 'PageFooter1OnAfterCalcHeight'
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Page: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 372.283705000000000000
          Top = 64.251956300000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]/[TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 134.283550000000000000
          Top = 1.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1605#1580#1605#1608#1593' '#1575#1604#1589#1601#1581#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 133.504020000000000000
          Top = 23.677180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1605#1580#1605#1608#1593' '#1575#1604#1589#1601#1581#1575#1578'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 20.779530000000000000
          Top = 0.779530000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          AllowVectorExport = True
          Left = 130.606370000000000000
          Top = 1.779530000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = 21.000000000000000000
          Top = 43.574830000000000000
          Width = 109.606299212598000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 748.346940000000000000
          Top = 23.236240000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '.../...')
          ParentFont = False
        end
        object tt: TfrxMemoView
          AllowVectorExport = True
          Left = 25.338590000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object z: TfrxMemoView
          AllowVectorExport = True
          Left = 27.338590000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Line45: TfrxLineView
          AllowVectorExport = True
          Left = 20.897650000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 541.134200000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        OnAfterPrint = 'PageHeader1OnAfterPrint'
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 681.929190000000000000
          Top = 19.000000000000000000
          Width = 89.000000000000000000
          Height = 44.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1581#1610#1600#1600#1586' '#1605#1582#1589#1589' '#1604#1605#1589#1604#1581#1577' '#1575#1604#1605#1585#1575#1602#1576#1577' '#1575#1604#1605#1575#1604#1610#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 679.929190000000000000
          Top = 69.000000000000000000
          Width = 89.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 565.929190000000000000
          Top = 242.000000000000000000
          Width = 81.440940000000000000
          Height = 18.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1575#1604#1575#1587#1605' '#1608' '#1575#1604#1604#1602#1576' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 735.929190000000000000
          Top = 96.000000000000000000
          Width = 32.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' '#1601#1600#1600#1610)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 166.574830000000000000
          Top = 18.897650000000000000
          Width = 371.708720000000000000
          Height = 29.338590000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              #1575#1604#1580#1605#1600#1600#1607#1600#1600#1608#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1586#1575#1574#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1583#1610#1600#1600#1605#1600#1608#1602#1600#1585#1575#1591#1600#1610#1600#1600#1577' '#1575#1604#1600#1588#1600#1593#1600#1576#1600#1610#1600 +
              #1577)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 239.354360000000000000
          Top = 76.779530000000000000
          Width = 210.944960000000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ' '#1585#1602#1600#1600#1605' 97 '#1578#1600#1600#1575#1585#1610#1582' 2018/09/23')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 239.204700000000000000
          Top = 53.000000000000000000
          Width = 210.897637795276000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            #1587#1600#1600#1600#1600#1600#1606#1600#1600#1583' '#1591#1600#1600#1600#1600#1600#1604#1600#1600#1576)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 271.708720000000000000
          Top = 218.000000000000000000
          Width = 177.204700000000000000
          Height = 17.220470000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1578#1593#1585#1610#1600#1600#1600#1601' '#1576#1575#1604#1605#1600#1578#1600#1593#1600#1600#1575#1605#1600#1604' '#1575#1604#1575#1602#1578#1589#1600#1600#1575#1583#1610)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 450.929190000000000000
          Top = 262.000000000000000000
          Width = 195.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' :'#1571#1608' '#1575#1587#1605' '#1575#1604#1588#1585#1603#1600#1577' ('#1578#1581#1583#1610#1583' '#1575#1604#1588#1603#1604' '#1575#1604#1602#1575#1606#1608#1606#1610') ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 553.929190000000000000
          Top = 280.000000000000000000
          Width = 90.881880000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1610#1578#1589#1585#1601' '#1604#1581#1587#1600#1600#1575#1576' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 65.511750000000000000
          Top = 103.015770000000000000
          Width = 585.393940000000000000
          Height = 18.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1600#1578#1593#1585#1610#1600#1600#1600#1601' '#1576#1575#1604#1605#1600#1589#1604#1581#1577' '#1575#1604#1605#1600#1578#1593#1600#1600#1600#1575#1602#1583#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 572.929190000000000000
          Top = 126.000000000000000000
          Width = 76.338590000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1575#1604#1578#1587#1605#1610#1600#1600#1600#1600#1600#1600#1577' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 66.031540000000000000
          Top = 147.000000000000000000
          Width = 413.015770000000000000
          Height = 17.220470000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '110 347')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 63.590600000000000000
          Top = 126.000000000000000000
          Width = 502.677180000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610#1600#1600#1600#1577' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 482.929190000000000000
          Top = 145.000000000000000000
          Width = 166.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1585#1605#1586' '#1575#1604#1605#1587#1610#1600#1600#1585' ('#1575#1604#1570#1605#1600#1600#1585' '#1576#1575#1604#1589#1585#1601') ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 580.929190000000000000
          Top = 167.000000000000000000
          Width = 69.338590000000000000
          Height = 17.220470000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1575#1604#1600#1593#1600#1606#1600#1600#1608#1575#1606' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 67.472480000000000000
          Top = 167.000000000000000000
          Width = 513.236240000000000000
          Height = 16.220470000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1587#1600#1600#1575#1581#1577' '#1582#1600#1605#1600#1600#1610#1587#1600#1600#1578#1610' '#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 538.504020000000000000
          Top = 188.000000000000000000
          Width = 111.543290000000000000
          Height = 18.220470000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1575#1604#1600#1607#1600#1600#1575#1578#1601' '#1608' '#1575#1604#1601#1575#1603#1587'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 666.149660000000000000
          Top = 161.000000000000000000
          Width = 103.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1604#1605#1589#1604#1581#1577' '#1575#1604#1585#1602#1575#1576#1577' '#1575#1604#1605#1575#1604#1610#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 671.370130000000000000
          Top = 181.000000000000000000
          Width = 97.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1604#1608#1590#1593' '#1582#1575#1578#1605' '#1575#1604#1578#1571#1588#1610#1585#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 661.590600000000000000
          Top = 205.000000000000000000
          Width = 106.220470000000000000
          Height = 18.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '('#1604#1571#1601#1590#1604' '#1605#1585#1575#1602#1576#1577' '#1608#1605#1578#1575#1576#1593#1577' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 679.149660000000000000
          Top = 138.000000000000000000
          Width = 90.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1607#1584#1575' '#1575#1604#1581#1610#1586' '#1605#1582#1589#1589')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 89.929190000000000000
          Top = 189.000000000000000000
          Width = 445.000000000000000000
          Height = 16.220470000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '029 28 53 70')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 572.929190000000000000
          Top = 297.000000000000000000
          Width = 73.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1575#1604#1600#1593#1600#1606#1600#1600#1608#1575#1606' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 551.929190000000000000
          Top = 316.000000000000000000
          Width = 93.220470000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1575#1604#1607#1575#1578#1601' '#1608#1575#1604#1601#1575#1603#1587' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 479.252010000000000000
          Top = 340.338590000000000000
          Width = 169.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1585#1602#1605' '#1575#1604#1587#1580#1604' '#1575#1604#1578#1580#1575#1585#1610' '#1575#1608' '#1576'. '#1575#1604#1581#1585#1601#1610'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 549.929190000000000000
          Top = 363.338590000000000000
          Width = 99.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1585#1602#1600#1600#1605' '#1575#1604#1575#1593#1578#1605#1600#1600#1575#1583'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 470.708720000000000000
          Top = 386.338590000000000000
          Width = 179.000000000000000000
          Height = 15.220470000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1603#1588#1601' '#1575#1604#1581#1587#1575#1576#1575#1578' '#1575#1604#1576#1606#1603#1610#1577'('#1571#1608' '#1575#1604#1576#1585#1610#1583#1610#1577') ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 234.590600000000000000
          Top = 363.338590000000000000
          Width = 136.338590000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1585#1602#1600#1600#1605' '#1575#1604#1578#1593#1585#1610#1601' '#1575#1604#1575#1581#1589#1575#1574#1610'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 234.929190000000000000
          Top = 340.338590000000000000
          Width = 122.559060000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1585#1602#1600#1600#1605' '#1575#1604#1578#1593#1585#1610#1601' '#1575#1604#1580#1576#1575#1574#1610'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object f10: TfrxMemoView
          AllowVectorExport = True
          Left = 63.370130000000000000
          Top = 384.913420000000000000
          Width = 404.574830000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'B.E.A LAGHOUAT C. N'#176' 002000290292200325-58')
          ParentFont = False
          VAlign = vaCenter
        end
        object f8: TfrxMemoView
          AllowVectorExport = True
          Left = 373.275820000000000000
          Top = 362.512060000000000000
          Width = 173.322820000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape20: TfrxShapeView
          AllowVectorExport = True
          Left = 20.535433070866100000
          Top = 413.645950000000000000
          Width = 741.921257401575000000
          Height = 0.377952755905512000
          Frame.Typ = []
        end
        object Shape21: TfrxShapeView
          AllowVectorExport = True
          Left = 21.779530000000000000
          Top = 435.645950000000000000
          Width = 741.559060000000000000
          Height = 0.377952755905512000
          Frame.Typ = []
        end
        object Shape22: TfrxShapeView
          AllowVectorExport = True
          Left = 20.779530000000000000
          Top = 497.000310000000000000
          Width = 740.779530000000000000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object Shape23: TfrxShapeView
          AllowVectorExport = True
          Left = 20.779530000000000000
          Top = 415.000310000000000000
          Width = 0.377952760000000000
          Height = 82.393700790000000000
          Frame.Typ = []
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 272.779530000000000000
          Top = 417.645950000000000000
          Width = 199.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1582#1600#1589#1600#1600#1600#1608#1589#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578' '#1575#1604#1600#1591#1600#1600#1604#1600#1600#1600#1600#1576)
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 588.779530000000000000
          Top = 456.764070000000000000
          Width = 42.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1571#1588#1600#1600#1594#1575#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 589.779530000000000000
          Top = 477.897960000000000000
          Width = 43.338590000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1604#1600#1600#1608#1575#1586#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 588.779530000000000000
          Top = 438.645950000000000000
          Width = 42.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1582#1600#1583#1605#1575#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 482.779530000000000000
          Top = 439.645950000000000000
          Width = 75.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1601#1602#1600#1575#1578' '#1575#1604#1578#1587#1610#1610#1600#1585)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 481.779530000000000000
          Top = 456.645950000000000000
          Width = 76.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1601#1602#1600#1575#1578' '#1575#1604#1578#1580#1607#1610#1610#1586)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 480.779530000000000000
          Top = 476.645950000000000000
          Width = 77.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1606#1601#1602#1600#1600#1600#1575#1578' '#1571#1582#1600#1585#1609)
          ParentFont = False
          VAlign = vaCenter
        end
        object c2: TfrxMemoView
          AllowVectorExport = True
          Left = 635.559060000000000000
          Top = 458.764070000000000000
          Width = 18.897637800000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ')
          ParentFont = False
        end
        object c1: TfrxMemoView
          AllowVectorExport = True
          Left = 635.779530000000000000
          Top = 438.645950000000000000
          Width = 18.897637800000000000
          Height = 17.007874020000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ')
          ParentFont = False
        end
        object c6: TfrxMemoView
          AllowVectorExport = True
          Left = 560.779530000000000000
          Top = 476.645950000000000000
          Width = 18.897637800000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ')
          ParentFont = False
        end
        object c5: TfrxMemoView
          AllowVectorExport = True
          Left = 560.779530000000000000
          Top = 457.645950000000000000
          Width = 18.897637800000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ')
          ParentFont = False
        end
        object c4: TfrxMemoView
          AllowVectorExport = True
          Left = 560.779530000000000000
          Top = 438.645950000000000000
          Width = 18.897637800000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  X ')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 343.220470000000000000
          Top = 438.645950000000000000
          Width = 134.118120000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ': '#1605#1608#1590#1608#1593' '#1575#1604#1591#1604#1576' '#1576#1575#1604#1578#1601#1589#1610#1600#1604' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 727.779530000000000000
          Top = 439.645950000000000000
          Width = 33.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' : '#1602#1587#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 729.779530000000000000
          Top = 475.645950000000000000
          Width = 30.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' :'#1576#1606#1583)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 721.779530000000000000
          Top = 457.645950000000000000
          Width = 37.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ': '#1601#1589#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 583.929500000000000000
          Top = 436.677490000000000000
          Width = 0.377952755905512000
          Height = 60.102350000000000000
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 659.740570000000000000
          Top = 439.457020000000000000
          Width = 0.377952760000000000
          Height = 56.322820000000000000
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 762.567410000000000000
          Top = 414.000310000000000000
          Width = 0.377952755905512000
          Height = 82.779530000000000000
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 479.102660000000000000
          Top = 436.677490000000000000
          Width = 0.377952755905512000
          Height = 60.102350000000000000
          Frame.Typ = []
        end
        object c3: TfrxMemoView
          AllowVectorExport = True
          Left = 635.063390000000000000
          Top = 477.693260000000000000
          Width = 18.897637800000000000
          Height = 17.007874020000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 282.015770000000000000
          Top = 518.913730000000000000
          Width = 43.842527010000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1608#1581#1583#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 225.015770000000000000
          Top = 518.913730000000000000
          Width = 48.779530000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1600#1603#1600#1605#1610#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 132.236240000000000000
          Top = 518.913730000000000000
          Width = 87.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1587#1593#1600#1585' '#1575#1604#1608#1581#1583#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 22.661410000000000000
          Top = 518.913730000000000000
          Width = 103.354360000000000000
          Height = 17.000000000000000000
          OnAfterData = 'Memo73OnAfterData'
          OnAfterPrint = 'Memo73OnAfterPrint'
          OnBeforePrint = 'Memo73OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1600#1605#1576#1604#1600#1600#1600#1600#1600#1600#1594)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 732.015770000000000000
          Top = 518.913730000000000000
          Width = 33.440940000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1585#1602#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 1.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 16.118120000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 212.031632760000000000
          Width = 591.496060550000000000
          Height = 0.377952755905512000
          Frame.Typ = []
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 58.472480000000000000
          Top = 100.944960000000000000
          Width = 595.275590550000000000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 58.133890000000000000
          Top = 101.047310000000000000
          Width = 0.377952760000000000
          Height = 302.362351180000000000
          Frame.Typ = []
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 238.110390000000000000
          Width = 591.496060550000000000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object Shape12: TfrxShapeView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 336.378170000000000000
          Width = 591.496060550000000000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object Shape13: TfrxShapeView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 359.614410000000000000
          Width = 591.496060550000000000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object Shape14: TfrxShapeView
          AllowVectorExport = True
          Left = 58.472480000000000000
          Top = 382.291590000000000000
          Width = 595.275590550000000000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object Shape15: TfrxShapeView
          AllowVectorExport = True
          Left = 58.960629921259800000
          Top = 404.409448818898000000
          Width = 595.275590551181100000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object Shape26: TfrxShapeView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 102.047310000000000000
          Width = 0.377952760000000000
          Height = 302.362351180000000000
          Frame.Typ = []
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 331.582870000000000000
          Top = 518.677490000000000000
          Width = 385.496290000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1600#1576#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1606#1575#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 22.338590000000000000
          Top = 516.677490000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1SECTION: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 666.079160000000000000
          Top = 441.425480000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'SECTION'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SECTION"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1CHAPITRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 666.079160000000000000
          Top = 460.323130000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'CHAPITRE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CHAPITRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1ARTICLE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 681.417750000000000000
          Top = 479.000310000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'ARTICLE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICLE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1OBS1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 23.559060000000000000
          Top = 438.425480000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset1."OBS1">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1OBS2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 24.559060000000000000
          Top = 458.102660000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset1."OBS2">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1OBS3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.779530000000000000
          Top = 478.779840000000000000
          Width = 449.764070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset1."OBS3">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape25: TfrxShapeView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 123.724490000000000000
          Width = 591.496060550000000000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 20.779527560000000000
          Top = 517.457020000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 130.385900000000000000
          Top = 517.457020000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 223.870000000000000000
          Top = 518.457020000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 277.039370078740000000
          Top = 517.236550000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 329.700990000000000000
          Top = 518.236550000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 724.213050000000000000
          Top = 516.677490000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 770.126470000000000000
          Top = 517.236550000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          AllowVectorExport = True
          Left = 20.779530000000000000
          Top = 541.134200000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Top = 2.448980000000000000
          Height = 404.409710000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = 658.858690000000000000
          Top = 405.409710000000000000
          Width = 120.944960000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object f1: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 241.889920000000000000
          Width = 498.897960000000000000
          Height = 19.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PAPETERIE ROUIGHI-ROUIGHI M/A')
          ParentFont = False
          VAlign = vaCenter
        end
        object f2: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 261.567100000000000000
          Width = 385.512060000000000000
          Height = 19.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object f3: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 280.685220000000000000
          Width = 483.779840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object f4: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 296.582870000000000000
          Width = 506.457020000000000000
          Height = 19.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1581#1610' '#1576#1608#1593#1575#1605#1585' '#1575#1604#1605#1593#1605#1608#1585#1577' '#1600' '#1575#1604#1571#1594#1608#1575#1591)
          ParentFont = False
          VAlign = vaCenter
        end
        object f5: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 317.480520000000000000
          Width = 483.779840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object f6: TfrxMemoView
          AllowVectorExport = True
          Left = 361.834880000000000000
          Top = 340.157700000000000000
          Width = 113.385900000000000000
          Height = 19.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '03/A/4619602')
          ParentFont = False
          VAlign = vaCenter
        end
        object f7: TfrxMemoView
          AllowVectorExport = True
          Left = 62.606370000000000000
          Top = 339.157700000000000000
          Width = 169.385900000000000000
          Height = 19.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '198203010007745')
          ParentFont = False
          VAlign = vaCenter
        end
        object f9: TfrxMemoView
          AllowVectorExport = True
          Left = 61.606370000000000000
          Top = 363.614410000000000000
          Width = 169.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '03010307586')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 241.889920000000000000
        Top = 812.598950000000000000
        Width = 793.701300000000000000
        OnAfterPrint = 'ReportSummary1OnAfterPrint'
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 20.779530000000000000
          Width = 750.118120000000000000
          Height = 0.377952760000000000
          Frame.Typ = []
        end
        object tenl: TfrxMemoView
          AllowVectorExport = True
          Left = 263.992270000000000000
          Top = 98.149660000000000000
          Width = 512.259740000000000000
          Height = 35.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              #1582#1605#1587#1605#1575#1574#1577' '#1608' '#1582#1605#1587#1577' '#1608' '#1582#1605#1587#1608#1606' '#1575#1604#1601'  '#1608' '#1582#1605#1587#1605#1575#1574#1577' '#1608' '#1579#1604#1575#1579#1577' '#1583#1610#1606#1575#1585' '#1580#1586#1575#1574#1585#1610'  90 '#1587 +
              #1606#1578#1610#1605)
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 467.133890000000000000
          Top = 138.047310000000000000
          Width = 309.000000000000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1610#1604#1578#1586#1605' '#1575#1604#1605#1578#1593#1575#1605#1604' '#1575#1604#1575#1602#1578#1589#1575#1583#1610' '#1576#1578#1606#1601#1610#1584' '#1607#1584#1575' '#1575#1604#1591#1604#1576' '#1581#1587#1576' '#1575#1604#1588#1585#1608#1591' '#1575#1604#1605#1581#1583#1583#1577)
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 693.133890000000000000
          Top = 160.826840000000000000
          Width = 83.220470000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1605#1600#1589#1583#1613#1585' '#1575#1604#1578#1605#1608#1610#1600#1600#1604' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 419.677180000000000000
          Top = 179.724490000000000000
          Width = 356.440940000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '  '#1578#1602#1583#1585' '#1605#1583#1577' '#1575#1604#1578#1587#1604#1610#1605' '#1571#1608' '#1575#1604#1578#1606#1601#1610#1584'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object t4: TfrxMemoView
          AllowVectorExport = True
          Left = 23.456710000000000000
          Top = 117.590600000000000000
          Width = 104.118120000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object m1: TfrxMemoView
          AllowVectorExport = True
          Left = 131.543290000000000000
          Top = 53.795300000000000000
          Width = 126.456710000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' '#1605'. '#1585#1587#1605' '#1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1590#1575#1601#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object m2: TfrxMemoView
          AllowVectorExport = True
          Left = 132.779530000000000000
          Top = 73.574830000000000000
          Width = 124.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1605#1576#1604#1594' '#1576#1581#1587#1575#1576' '#1603#1604' '#1575#1604#1585#1587#1608#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object t2: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677165350000000000
          Top = 73.220470000000000000
          Width = 104.692913390000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object m3: TfrxMemoView
          AllowVectorExport = True
          Left = 133.779530000000000000
          Top = 94.236240000000000000
          Width = 59.747990000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AVOIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object m4: TfrxMemoView
          AllowVectorExport = True
          Left = 133.118120000000000000
          Top = 117.574830000000000000
          Width = 74.527520000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1605#1576#1604#1594' '#1575#1604#1575#1580#1605#1575#1604#1610)
          ParentFont = False
        end
        object t3: TfrxMemoView
          AllowVectorExport = True
          Left = 22.779530000000000000
          Top = 94.220470000000000000
          Width = 104.692913390000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object t1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.779530000000000000
          Top = 52.440940000000000000
          Width = 104.692913390000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object m33: TfrxMemoView
          AllowVectorExport = True
          Left = 264.779530000000000000
          Top = 29.559060000000000000
          Width = 200.763760000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1594#1610#1585' '#1582#1575#1590#1600#1600#1593' '#1604#1590#1585#1610#1600#1600#1600#1576#1577' '#1575#1604#1585#1587#1605' '#1593#1604#1609' '#1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1590#1575#1601#1577)
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 76.590600000000000000
          Width = 263.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' : '#1610#1608#1602#1601' '#1587#1606#1583'  '#1607#1584#1575' '#1575#1604#1591#1604#1576' '#1593#1604#1609' '#1575#1604#1605#1576#1604#1594' '#1575#1604#1575#1580#1605#1575#1604#1610' '#1576#1575#1604#1581#1585#1608#1601'  ')
          ParentFont = False
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 130.393700787402000000
          Height = 136.063080000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 20.787401570000000000
          Height = 139.842610000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 21.000000000000000000
          Top = 138.165430000000000000
          Width = 238.110390000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 258.551330000000000000
          Height = 138.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object m0: TfrxMemoView
          AllowVectorExport = True
          Left = 133.165430000000000000
          Top = 28.661410000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'mS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 134.165430000000000000
          Top = 3.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1605#1580#1605#1608#1593' '#1575#1604#1589#1601#1581#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object y: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677165350000000000
          Top = 28.456710000000000000
          Width = 104.692913390000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object tp1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677165350000000000
          Top = 3.779530000000000000
          Width = 104.692913390000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 20.779530000000000000
          Top = 24.677180000000000000
          Width = 238.110390000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 21.000000000000000000
          Top = 49.354360000000000000
          Width = 238.110390000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 281.921460000000000000
          Top = 211.874150000000000000
          Width = 146.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1605#1589#1604#1581#1600#1600#1600#1600#1600#1600#1600#1577' '#1575#1604#1605#1578#1593#1600#1600#1600#1600#1600#1600#1575#1602#1583#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 78.488250000000000000
          Top = 211.653680000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1594#1600#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1600#1577' '#1610#1608#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 158.740260000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset1."tam">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = 20.897650000000000000
          Top = 114.385900000000000000
          Width = 238.110390000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 20.897650000000000000
          Top = 92.708720000000000000
          Width = 238.110390000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 20.677180000000000000
          Top = 71.811070000000000000
          Width = 238.110390000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 665.197280000000000000
        Visible = False
        Width = 793.701300000000000000
        OnAfterPrint = 'Child1OnAfterPrint'
        OnBeforePrint = 'Child1OnBeforePrint'
        ToNRows = 0
        ToNRowsMode = rmCount
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 329.574803149606000000
          Top = 2.645640000000000000
          Height = 56.692827950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 276.661417322835000000
          Height = 56.692827950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 223.748031496063000000
          Height = 56.692827950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 130.385900000000000000
          Height = 56.692827950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 20.787401570000000000
          Height = 56.692827950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 720.755905511810900000
          Height = 56.692827950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 770.267716535433000000
          Height = 56.692827950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Left = 21.779530000000000000
          Top = 3.000000000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line39: TfrxLineView
          AllowVectorExport = True
          Left = 770.126470000000000000
          Top = 3.779530000000000000
          Width = -744.567410000000000000
          Height = 79.370130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsDialog
      DoubleBuffered = False
      Height = 240.000000000000000000
      ClientHeight = 201.000000000000000000
      Left = 399.000000000000000000
      Top = 162.000000000000000000
      Width = 680.000000000000000000
      Scaled = True
      ClientWidth = 664.000000000000000000
      object Label1: TfrxLabelControl
        Left = 24.000000000000000000
        Top = 60.000000000000000000
        Width = 363.000000000000000000
        Height = 16.000000000000000000
        ShowHint = True
        Caption = 'Nombre de lignes sans bas de page (le nombre est limit'#233' '#224' 23)'
        Color = clBtnFace
        OnClick = 'Label1OnClick'
      end
      object BitBtn1: TfrxBitBtnControl
        Left = 404.000000000000000000
        Top = 156.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = 'ok'
        ModalResult = 1
        OnClick = 'BitBtn1OnClick'
      end
      object Label2: TfrxLabelControl
        Left = 24.000000000000000000
        Top = 96.000000000000000000
        Width = 297.000000000000000000
        Height = 16.000000000000000000
        ShowHint = True
        Caption = 'Nombre de lignes avec le sommaire (9 par d'#233'fault). '
        Color = clBtnFace
        OnClick = 'Label1OnClick'
      end
      object n1: TfrxMaskEditControl
        Left = 396.000000000000000000
        Top = 56.000000000000000000
        Width = 41.000000000000000000
        Height = 21.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Color = clWindow
        EditMask = '99'
        MaxLength = 2
        Text = '23'
        OnClick = 'n1OnClick'
      end
      object n2: TfrxMaskEditControl
        Left = 396.000000000000000000
        Top = 88.000000000000000000
        Width = 41.000000000000000000
        Height = 21.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Color = clWindow
        EditMask = '99'
        MaxLength = 2
        Text = '09'
      end
      object cb1: TfrxCheckBoxControl
        Left = 28.000000000000000000
        Top = 140.000000000000000000
        Width = 249.000000000000000000
        Height = 17.000000000000000000
        ShowHint = True
        Caption = 'Cocher pour Imprimer les N'#176' de page'
        Checked = True
        State = cbChecked
        Color = clBtnFace
      end
      object Label3: TfrxLabelControl
        Left = 23.000000000000000000
        Top = 24.000000000000000000
        Width = 236.000000000000000000
        Height = 16.000000000000000000
        ShowHint = True
        Caption = ' MasterData.Height(default=21.54 pixels)'
        Color = clBtnFace
        OnClick = 'Label1OnClick'
      end
      object n3: TfrxMaskEditControl
        Left = 268.000000000000000000
        Top = 20.000000000000000000
        Width = 49.000000000000000000
        Height = 21.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Color = clWindow
        MaxLength = 0
        Text = '21,54'
        OnChange = 'n3OnClick'
      end
    end
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 1064
    Top = 520
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = f_dm.ds_bc
    BCDToCurrency = False
    Left = 408
    Top = 176
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = f_dm.ds_bc_lignes
    BCDToCurrency = False
    Left = 472
    Top = 128
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSource = f_dm.DataSource_fournisseur
    BCDToCurrency = False
    Left = 320
    Top = 128
  end
end
