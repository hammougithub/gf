object f_edit_mandat: Tf_edit_mandat
  Left = 11
  Top = 8
  Caption = 'Edition_mandat'
  ClientHeight = 705
  ClientWidth = 1249
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -7
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = non_lecture_seul
  OnCreate = oncreate
  OnShow = refresh
  PixelsPerInch = 96
  TextHeight = 13
  object Button3: TButton
    Left = 899
    Top = 496
    Width = 88
    Height = 33
    Caption = 'ConverterQr2Fr'
    TabOrder = 0
    Visible = False
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 861
    Top = 534
    Width = 119
    Height = 38
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Fastreport6_convert'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 899
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 2
    Visible = False
    OnClick = Button6Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1249
    Height = 705
    Align = alClient
    TabOrder = 3
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1247
      Height = 431
      Align = alClient
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 631
        Height = 429
        Align = alLeft
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 629
          Height = 25
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 491
            Top = 1
            Width = 137
            Height = 23
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alRight
            Caption = 'Double Clic pour '#233'diter'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -7
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitHeight = 13
          end
          object Label1: TLabel
            Left = 1
            Top = 1
            Width = 104
            Height = 23
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            Caption = 'Table Mandat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitHeight = 16
          end
          object Edit1: TEdit
            Left = 105
            Top = 1
            Width = 69
            Height = 23
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            Color = clSkyBlue
            TabOrder = 0
            Text = ' '
            OnChange = seek_mandat
            ExplicitHeight = 21
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 405
          Width = 629
          Height = 23
          Align = alBottom
          TabOrder = 1
          object DBNavigator1: TDBNavigator
            Left = 1
            Top = 1
            Width = 331
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            DataSource = f_dm.ds_mandat_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 26
          Width = 629
          Height = 379
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_mandat_ib
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -7
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = etat
          Columns = <
            item
              Expanded = False
              FieldName = 'GESTION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MANDAT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAPITRE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARTICLE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STRUCTURE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATES'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_ENGAGEMENT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVATION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JOURNAL'
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
              FieldName = 'ENGAGEMENT'
              Visible = True
            end>
        end
      end
      object Panel6: TPanel
        Left = 632
        Top = 1
        Width = 614
        Height = 429
        Align = alClient
        TabOrder = 1
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 612
          Height = 16
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          Caption = 'Parametres de l'#39#233'tat Mandat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          ExplicitWidth = 203
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 17
          Width = 612
          Height = 388
          Align = alClient
          Color = clSkyBlue
          DataSource = DataSource1
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -7
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
        object Panel11: TPanel
          Left = 1
          Top = 405
          Width = 612
          Height = 23
          Align = alBottom
          TabOrder = 1
          object DBNavigator2: TDBNavigator
            Left = 1
            Top = 1
            Width = 384
            Height = 21
            DataSource = DataSource1
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            Align = alLeft
            TabOrder = 0
          end
        end
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 432
      Width = 1247
      Height = 240
      Align = alBottom
      TabOrder = 1
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 510
        Height = 238
        Align = alLeft
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 508
          Height = 236
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_lignes_ib_1
          DrawingStyle = gdsGradient
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -7
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MANDAT'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAPITRE'
              Width = 35
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
              FieldName = 'LIGNE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BENIFICIAIRE'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MONTANT'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVATION'
              Width = 478
              Visible = True
            end>
        end
      end
      object Panel9: TPanel
        Left = 511
        Top = 1
        Width = 735
        Height = 238
        Align = alClient
        TabOrder = 1
        object DBGrid4: TDBGrid
          Left = 1
          Top = 1
          Width = 733
          Height = 236
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          Color = clSkyBlue
          DataSource = DataSource2
          DrawingStyle = gdsGradient
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -7
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MONTANT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVATION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANQUE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPTE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOM_AVIS_DE_VIREMENT'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIBELLE_ARABE'
              Width = 162
              Visible = True
            end>
        end
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 672
      Width = 1247
      Height = 32
      Align = alBottom
      TabOrder = 2
      object SpeedButton1: TSpeedButton
        Left = 369
        Top = 1
        Width = 102
        Height = 30
        Align = alLeft
        Caption = 'Avis de vir.'
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
        OnClick = SpeedButton1Click
        ExplicitLeft = 432
        ExplicitTop = 3
        ExplicitHeight = 38
      end
      object SpeedButton2: TSpeedButton
        Left = 471
        Top = 1
        Width = 102
        Height = 30
        Align = alLeft
        Caption = 'Etat de vir.'
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
        OnClick = SpeedButton2Click
        OnDblClick = clic
        ExplicitLeft = 531
        ExplicitTop = 3
        ExplicitHeight = 38
      end
      object Button2: TButton
        Left = 1
        Top = 1
        Width = 239
        Height = 30
        Align = alLeft
        Caption = 'Afficher et masquer (Libell'#233'es) de l'#39#233'tat Mandat'
        TabOrder = 0
        OnClick = pop
      end
      object Button1: TButton
        Left = 240
        Top = 1
        Width = 129
        Height = 30
        Align = alLeft
        Caption = 'Configurer Imprimante'
        TabOrder = 1
        OnClick = Button1Click
      end
      object bpdf: TButton
        Left = 573
        Top = 1
        Width = 63
        Height = 30
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'To PDF'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        OnClick = TOPDF
      end
      object Print: TButton
        Left = 636
        Top = 1
        Width = 78
        Height = 30
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = #1591#1600#1600#1576#1600#1600#1575#1593#1600#1600#1577
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        OnClick = TOPrINT
      end
      object Preview: TButton
        Left = 714
        Top = 1
        Width = 85
        Height = 30
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
        TabOrder = 4
        OnClick = PreviewClick
      end
      object fs: TButton
        Left = 799
        Top = 1
        Width = 82
        Height = 30
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Fastreport'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 5
        OnClick = fastr
      end
      object fs_ds: TButton
        Left = 881
        Top = 1
        Width = 94
        Height = 30
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Designer Fs'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 6
        OnClick = fs_dsClick
      end
      object fin: TButton
        Left = 975
        Top = 1
        Width = 82
        Height = 30
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = #1606#1600#1600#1607#1600#1600#1575#1610#1577
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 7
        OnClick = finClick
      end
      object esc: TButton
        Left = 1057
        Top = 1
        Width = 51
        Height = 30
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Cancel'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 8
        OnClick = cancel
      end
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 352
    Top = 592
  end
  object PrintDialog1: TPrintDialog
    Left = 264
    Top = 592
  end
  object simpledataset_parameters: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters where forme='#39'f_etat_mandat'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 752
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = simpledataset_parameters
    Left = 760
    Top = 208
  end
  object DataSetProvider_lignes: TDataSetProvider
    DataSet = lignes
    Left = 160
    Top = 536
  end
  object ClientDataSet_lignes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_lignes'
    Left = 296
    Top = 528
  end
  object lignes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptInput
        Value = '2018'
      end
      item
        DataType = ftInteger
        Name = 'b'
        ParamType = ptInput
        Value = '1980'
      end
      item
        DataType = ftString
        Name = 'c'
        ParamType = ptInput
        Value = '34/14'
      end
      item
        DataType = ftString
        Name = 'd'
        ParamType = ptInput
        Value = '06'
      end>
    SQL.Strings = (
      
        'select a.montant,a.observation,b.nom,banque,b.compte,b.nom_avis_' +
        'de_virement,c.libelle_arabe'
      'from lignes a,fournisseur b,administration c'
      'where a.benificiaire= b.benificiaire and a.structure=c.code'
      'and gestion=:a and mandat=:b and chapitre=:c and article=:d ')
    SQLConnection = f_dm.connect_db_gf
    Left = 64
    Top = 544
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet_lignes
    Left = 560
    Top = 512
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = f_dm.ds_mandat_ib
    BCDToCurrency = False
    Left = 1168
    Top = 608
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = ClientDataSet_lignes
    BCDToCurrency = False
    Left = 1032
    Top = 488
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
    ReportOptions.LastChange = 44714.673859386570000000
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
    OnBeforePrint = ppp
    OnGetValue = ongetvalue
    Left = 776
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
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
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456685590000000000
        Top = 306.141930000000000000
        Width = 1632.001054000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 1297.601054000000000000
          Width = 325.400000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1600#1593#1610#1610#1600#1600#1600#1600#1600#1606' '#1575#1604#1600#1605#1600#1587#1600#1578#1600#1601#1600#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1583)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 894.000000000000000000
          Width = 402.240000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1602#1600#1600#1600#1600#1600#1605' '#1575#1604#1600#1581#1600#1587#1600#1600#1600#1600#1600#1600#1600#1575#1576)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 757.000000000000000000
          Width = 136.320000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1600#1605#1600#1576#1600#1604#1600#1600#1600#1600#1600#1600#1600#1594)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 693.000000000000000000
          Width = 63.360000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1576'.'#1578#1593#1600#1607#1583)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 641.000000000000000000
          Width = 52.800000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1601#1600#1589#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 612.000000000000000000
          Width = 27.840000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1576#1606#1583)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 565.000000000000000000
          Width = 46.000000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1578#1587#1610#1610#1585)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 490.000000000000000000
          Width = 74.400000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1570#1605#1585' '#1576#1575#1604#1589#1585#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 444.000000000000000000
          Width = 45.000000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '110')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 7.000000000000000000
          Width = 436.800000000000000000
          Height = 24.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1600#1600#1600#1605#1600#1600#1585#1580#1600#1600#1600#1593' '#1608'  '#1575#1604#1600#1600#1600#1605#1600#1604#1575#1581#1600#1592#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 264.566929130000000000
        Top = 18.897650000000000000
        Width = 1632.001054000000000000
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 883.684910000000000000
          Top = 10.579530000000000000
          Width = 421.006370000000000000
          Height = 29.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1575#1604#1580#1600#1600#1605#1600#1600#1607#1600#1608#1585#1610#1600#1577' '#1575#1604#1600#1580#1600#1586#1575#1574#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1583#1610#1600#1605#1600#1600#1608#1602#1600#1585#1575#1591#1600#1610#1600#1600#1577' '#1575#1604#1600#1600#1588#1600#1593#1600#1600#1576#1600 +
              #1600#1610#1600#1600#1577)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 1482.040940000000000000
          Top = 46.800000000000000000
          Width = 106.400000000000000000
          Height = 31.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1608#1586#1575#1585#1577' '#1575#1604#1600#1600#1600#1605#1600#1600#1575#1604#1600#1600#1610#1600#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 1328.240940000000000000
          Top = 118.200000000000000000
          Width = 263.400000000000000000
          Height = 31.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610#1600#1600#1600#1577' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 670.000000000000000000
          Top = 56.800000000000000000
          Width = 202.600000000000000000
          Height = 29.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1605#1600#1581#1600#1575#1587#1600#1600#1576' '#1575#1604#1602#1600#1600#1600#1575#1574#1600#1605' '#1576#1575#1604#1589#1600#1600#1585#1601)
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 670.000000000000000000
          Top = 84.800000000000000000
          Width = 202.600000000000000000
          Height = 29.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1571#1605#1610#1600#1600#1600#1600#1600#1606' '#1582#1600#1600#1586#1610#1600#1600#1600#1606#1600#1577' '#1608#1604#1575#1610#1600#1600#1600#1577' '#1594#1600#1585#1583#1575#1610#1600#1600#1577)
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 583.000000000000000000
          Top = 113.800000000000000000
          Width = 288.000000000000000000
          Height = 31.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1581#1600#1587#1600#1600#1575#1576' '#1604#1604#1600#1600#1589#1600#1585#1601' '#1581'.'#1580'.'#1576'  '#1585#1602#1600#1600#1605' 713000 '#1575#1604#1600#1580#1600#1586#1575#1574#1600#1600#1585)
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 72.000000000000000000
          Top = 49.800000000000000000
          Width = 220.200000000000000000
          Height = 29.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1581#1600#1600#1608#1575#1604#1600#1577' '#1578#1600#1587#1600#1583#1610#1600#1600#1583' '#1575#1604#1600#1606#1601#1600#1602#1600#1600#1575#1578' '#1575#1604#1604#1578#1600#1600#1610' '#1578#1600#1582#1600#1600#1589#1600#1605)
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 167.200000000000000000
          Top = 82.800000000000000000
          Width = 125.000000000000000000
          Height = 29.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1605#1600#1606' '#1605#1610#1600#1600#1586#1575#1606#1610#1600#1600#1577' '#1575#1604#1600#1600#1583#1608#1604#1600#1600#1577)
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 25.200000000000000000
          Top = 115.800000000000000000
          Width = 267.000000000000000000
          Height = 29.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610#1600#1600#1600#1577' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1577)
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 924.000000000000000000
          Top = 164.800000000000000000
          Width = 82.000000000000000000
          Height = 24.960000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1575#1604#1570#1605#1600#1600#1585' '#1576#1575#1604#1589#1585#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 924.000000000000000000
          Top = 189.800000000000000000
          Width = 82.000000000000000000
          Height = 24.960000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '347')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 877.000000000000000000
          Top = 164.800000000000000000
          Width = 46.000000000000000000
          Height = 24.960000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            #1578#1600#1600#1587#1610#1600#1610#1600#1600#1585)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 825.000000000000000000
          Top = 164.800000000000000000
          Width = 51.000000000000000000
          Height = 24.960000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            #1575#1604#1600#1601#1600#1589#1600#1600#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 877.000000000000000000
          Top = 189.800000000000000000
          Width = 46.000000000000000000
          Height = 24.960000000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."GESTION"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 825.000000000000000000
          Top = 189.800000000000000000
          Width = 51.000000000000000000
          Height = 24.960000000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHAPITRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 1531.800527000000000000
          Top = 226.983464560000000000
          Width = 71.600000000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1600#1581#1600#1608#1575#1604#1600#1577' '#1585#1602#1600#1600#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 1483.000000000000000000
          Top = 226.800000000000000000
          Width = 49.000000000000000000
          Height = 26.456692910000000000
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
            '[frxDBDataset1."MANDAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 1436.000000000000000000
          Top = 226.800000000000000000
          Width = 45.400000000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1576#1600#1578#1600#1600#1575#1585#1610#1582)
          ParentFont = False
          VAlign = vaCenter
        end
        object l_a: TfrxMemoView
          AllowVectorExport = True
          Left = 1338.440940000000000000
          Top = 186.800000000000000000
          Width = 254.000000000000000000
          Height = 30.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 1247.716450000000000000
          Top = 80.800000000000000000
          Width = 341.524490000000000000
          Height = 32.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              #1575#1604#1605#1583#1610#1585#1610#1577' '#1575#1604#1593#1575#1605#1577' '#1604#1604#1582#1586#1610#1606#1577' '#1608' '#1575#1604#1578#1587#1610#1610#1585' '#1575#1604#1605#1581#1575#1587#1576#1578#1610' '#1604#1604#1593#1605#1604#1610#1575#1578' '#1575#1604#1605#1575#1604#1610#1577' '#1604#1604#1583 +
              #1608#1604#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 1368.040940000000000000
          Top = 152.400000000000000000
          Width = 224.400000000000000000
          Height = 31.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1601#1585#1593#1610#1577' '#1604#1604#1605#1610#1586#1575#1606#1610#1577' '#1608' '#1575#1604#1608#1587#1575#1574#1604)
          ParentFont = False
          VAlign = vaCenter
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
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1336.800000000000000000
          Top = 226.400000000000000000
          Width = 96.000000000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '2018/12/31')
          ParentFont = False
          VAlign = vaCenter
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
        Top = 393.071120000000000000
        Width = 1632.001054000000000000
        DataSet = frxDBDataset2
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
          DataSet = frxDBDataset2
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
          DataSet = frxDBDataset2
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
          DataSet = frxDBDataset2
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
          DataSet = frxDBDataset2
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
        Top = 472.441250000000000000
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
  object OpenDialog1: TOpenDialog
    Left = 1128
    Top = 432
  end
  object SaveDialog1: TSaveDialog
    Left = 1152
    Top = 496
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
    Left = 1024
    Top = 440
  end
  object fsPascal1: TfsPascal
    Left = 704
    Top = 288
  end
  object fsScript1: TfsScript
    Lines.Strings = (
      'program pp;'
      'uses '#39'Unit_function_and_procedure'#39';'
      'begin'
      '  a:='#39'a'#39';'
      '   if (a in ['#39'a'#39','#39'd'#39']) then showmessage('#39'gg'#39')'
      'end.')
    SyntaxType = 'PascalScript'
    Left = 688
    Top = 232
  end
  object total: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptInput
        Value = '2018'
      end
      item
        DataType = ftInteger
        Name = 'b'
        ParamType = ptInput
        Value = '1980'
      end
      item
        DataType = ftString
        Name = 'c'
        ParamType = ptInput
        Value = '34/14'
      end
      item
        DataType = ftString
        Name = 'd'
        ParamType = ptInput
        Value = '06'
      end>
    SQL.Strings = (
      'select sum(montant) from lignes '
      'where gestion=:a and mandat=:b and chapitre=:c and article=:d ')
    SQLConnection = f_dm.connect_db_gf
    Left = 456
    Top = 536
  end
end
