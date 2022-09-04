object f_bc: Tf_bc
  Left = 8
  Top = 60
  Caption = 'MISE A JOUR DE BON DE COMMANDE'
  ClientHeight = 731
  ClientWidth = 1325
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = fermer
  OnCreate = on_create
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1325
    Height = 731
    Align = alClient
    BorderStyle = bsSingle
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1319
      Height = 189
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 1317
        Height = 24
        Align = alTop
        TabOrder = 0
        object Label12: TLabel
          Left = 150
          Top = 1
          Width = 131
          Height = 22
          Align = alLeft
          Caption = 'N'#176' Bon de commande  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 149
          Height = 22
          Align = alLeft
          Caption = 'Table Bon de commande  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
        object Label10: TLabel
          Left = 375
          Top = 3
          Width = 596
          Height = 13
          Caption = 
            '(le refresh des donn'#233'es lignes est fait avec un close-open dans ' +
            'l'#39#233'ven AfterApplyUpdate -----> A corriger)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object num: TEdit
          Left = 281
          Top = 1
          Width = 62
          Height = 22
          Align = alLeft
          Color = clSkyBlue
          TabOrder = 0
          OnChange = seek5
          ExplicitHeight = 21
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 163
        Width = 1317
        Height = 25
        Align = alBottom
        TabOrder = 1
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 440
          Height = 23
          DataSource = f_dm.ds_bc
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 441
          Top = 1
          Width = 99
          Height = 23
          Align = alLeft
          Color = clSkyBlue
          TabOrder = 1
          OnChange = seek5
          ExplicitHeight = 21
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 25
        Width = 1317
        Height = 138
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_bc
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
            FieldName = 'GESTION'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BC1'
            Title.Alignment = taCenter
            Title.Caption = 'N'#176' BC'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TYPES'
            PickList.Strings = (
              '1 '#1575#1588#1594#1575#1604
              '2 '#1604#1608#1575#1586#1605'  '
              '3 '#1582#1583#1605#1575#1578)
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'types1'
            PickList.Strings = (
              '1 '#1606#1601#1602#1575#1578' '#1575#1604#1578#1587#1610#1610#1585
              '2 '#1606#1601#1602#1575#1578' '#1575#1604#1578#1580#1607#1610#1586
              '3 '#1606#1601#1602#1575#1578' '#1575#1582#1585#1609)
            Title.Caption = 'TYPE1'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOURNISSEUR'
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRUCTURE'
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAPITRE'
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTICLE'
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 35
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'DELAIS'
            PickList.Strings = (
              #1576#1593#1583' '#1578#1587#1604#1610#1605' '#1607#1584#1575' '#1575#1604#1591#1604#1576)
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVOIR'
            Title.Caption = '     AVOIR'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tam'
            Title.Alignment = taCenter
            Title.Caption = #1605#1589#1583#1585' '#1575#1604#1578#1605#1608#1610#1604
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS1'
            Title.Caption = ' '#1605#1608#1590#1608#1593' '#1575#1604#1591#1604#1576' 1  '
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS2'
            Title.Caption = #1605#1608#1590#1608#1593' '#1575#1604#1591#1604#1576' 2'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS3'
            Title.Caption = #1605#1608#1590#1608#1593' '#1575#1604#1591#1604#1576' 3'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TVA'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SECTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'au_compte_de'
            Title.Alignment = taCenter
            Title.Caption = 'Au compte de'
            Width = 200
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
    object Panel5: TPanel
      Left = 1
      Top = 190
      Width = 1319
      Height = 206
      Align = alBottom
      Caption = 'Panel5'
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 1317
        Height = 25
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 216
          Height = 23
          Align = alLeft
          Caption = 'Table Ligne bon de commande'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 16
        end
        object ww: TEdit
          Left = 217
          Top = 1
          Width = 36
          Height = 23
          Align = alLeft
          Color = clSkyBlue
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 181
        Width = 1317
        Height = 24
        Align = alBottom
        TabOrder = 1
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 1
          Width = 472
          Height = 22
          DataSource = f_dm.ds_bc_lignes
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
        end
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 26
        Width = 1317
        Height = 155
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_bc_lignes
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
            FieldName = 'LIGNE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GESTION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BC1'
            Visible = False
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'LIB'
            Title.Alignment = taCenter
            Title.Caption = 'LIBELLE '
            Width = 500
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'UNITE'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'PU'
            Title.Alignment = taCenter
            Title.Caption = 'Prix unitaire'
            Width = 100
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'QT'
            Title.Alignment = taCenter
            Title.Caption = 'Quantit'#233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UTILISATEUR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_MAJ'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UTILISATEUR'
            Visible = False
          end>
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 396
      Width = 1319
      Height = 301
      Align = alBottom
      Caption = 'Panel8'
      TabOrder = 2
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 499
        Height = 299
        Align = alClient
        Caption = 'Panel9'
        TabOrder = 0
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 497
          Height = 48
          Align = alTop
          BorderStyle = bsSingle
          TabOrder = 0
          object Label5: TLabel
            Left = 324
            Top = 1
            Width = 82
            Height = 16
            Caption = 'Registre c. Fr.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 217
            Top = -1
            Width = 26
            Height = 16
            Caption = 'AI F.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 249
            Top = 23
            Width = 78
            Height = 16
            Caption = 'N. Fiscale Fr.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 103
            Top = 23
            Width = 43
            Height = 16
            Caption = 'Nom F.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 2
            Top = 3
            Width = 89
            Height = 16
            Caption = 'Fournisseur'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 103
            Top = 2
            Width = 47
            Height = 16
            Caption = 'Code F.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object ai: TEdit
            Left = 251
            Top = 1
            Width = 55
            Height = 21
            Color = clSkyBlue
            TabOrder = 0
            OnChange = seek5
          end
          object rc: TEdit
            Left = 414
            Top = 1
            Width = 74
            Height = 21
            Color = clSkyBlue
            TabOrder = 1
            OnChange = seek4
          end
          object nf: TEdit
            Left = 333
            Top = 21
            Width = 70
            Height = 21
            Color = clSkyBlue
            TabOrder = 2
            OnChange = seek3
          end
          object nom: TEdit
            Left = 154
            Top = 22
            Width = 77
            Height = 21
            Color = clSkyBlue
            TabOrder = 3
            OnChange = seek2
          end
          object mat: TEdit
            Left = 153
            Top = 1
            Width = 46
            Height = 21
            Color = clSkyBlue
            TabOrder = 4
            OnChange = Seek
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 273
          Width = 497
          Height = 25
          Align = alBottom
          TabOrder = 1
          object DBNavigator3: TDBNavigator
            Left = 1
            Top = 1
            Width = 251
            Height = 23
            DataSource = f_dm.DataSource_fournisseur
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 49
          Width = 497
          Height = 224
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.DataSource_fournisseur
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = prendre_code_fournisseur
          Columns = <
            item
              Expanded = False
              FieldName = 'BENIFICIAIRE'
              Title.Caption = 'code'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOM'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANQUE'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPTE'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ai'
              Title.Caption = 'Article imp.'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIB'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ADRESSE'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEPHONE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOM_AVIS_DE_VIREMENT'
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
      object Panel12: TPanel
        Left = 500
        Top = 1
        Width = 408
        Height = 299
        Align = alRight
        Caption = 'Panel12'
        TabOrder = 1
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 406
          Height = 25
          Align = alTop
          TabOrder = 0
          object Label3: TLabel
            Left = 1
            Top = 1
            Width = 230
            Height = 23
            Align = alLeft
            Caption = 'Table Chapitres(D. Clic pour pr. le code)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
        end
        object Panel14: TPanel
          Left = 1
          Top = 273
          Width = 406
          Height = 25
          Align = alBottom
          TabOrder = 1
          object DBNavigator5: TDBNavigator
            Left = 1
            Top = 1
            Width = 240
            Height = 23
            DataSource = f_dm.ds_chapitre_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 26
          Width = 406
          Height = 247
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_chapitre_ib
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = prendre_article
        end
      end
      object Panel15: TPanel
        Left = 908
        Top = 1
        Width = 410
        Height = 299
        Align = alRight
        Caption = 'Panel15'
        TabOrder = 2
        object Panel16: TPanel
          Left = 1
          Top = 1
          Width = 408
          Height = 26
          Align = alTop
          TabOrder = 0
          object Label7: TLabel
            Left = 1
            Top = 1
            Width = 112
            Height = 24
            Align = alLeft
            Caption = 'Table structure'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitHeight = 16
          end
        end
        object DBGrid5: TDBGrid
          Left = 1
          Top = 27
          Width = 408
          Height = 246
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.Ds_adm_ib
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = prendre_code
        end
        object Panel17: TPanel
          Left = 1
          Top = 273
          Width = 408
          Height = 25
          Align = alBottom
          TabOrder = 2
          object DBNavigator4: TDBNavigator
            Left = 1
            Top = 1
            Width = 256
            Height = 23
            DataSource = f_dm.Ds_adm_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
      end
    end
    object Panel18: TPanel
      Left = 1
      Top = 697
      Width = 1319
      Height = 29
      Align = alBottom
      TabOrder = 3
      object SpeedButton1: TSpeedButton
        Left = 1
        Top = 1
        Width = 93
        Height = 27
        Align = alLeft
        Caption = 'Impression'
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
        ExplicitLeft = 369
        ExplicitTop = 0
        ExplicitHeight = 35
      end
      object Button1: TButton
        Left = 1253
        Top = 1
        Width = 65
        Height = 27
        Align = alRight
        Caption = 'Quiter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object compter: TSQLQuery
    GetMetadata = True
    DataSource = f_dm.ds_bc_lignes
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'b'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT count(bc1) from BC_LIGNE'
      'where gestion=:a and bc1=:b')
    SQLConnection = f_dm.connect_db_gf
    Left = 1296
    Top = 352
  end
end
