object f_facture: Tf_facture
  Left = 0
  Top = 0
  Caption = 'FACTURES'
  ClientHeight = 702
  ClientWidth = 1293
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1293
    Height = 702
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 8
    ExplicitWidth = 1113
    ExplicitHeight = 670
    object Panel2: TPanel
      Left = 867
      Top = 1
      Width = 425
      Height = 671
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 840
      ExplicitTop = 6
      ExplicitHeight = 551
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 423
        Height = 250
        Align = alTop
        TabOrder = 0
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 421
          Height = 25
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 16
          ExplicitTop = 0
          ExplicitWidth = 233
          object Label9: TLabel
            Left = 215
            Top = 1
            Width = 205
            Height = 23
            Align = alRight
            Caption = 'Double Clic Pour Prendre  Le Code'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitLeft = -4
            ExplicitTop = 17
            ExplicitHeight = 13
          end
          object Label7: TLabel
            Left = 1
            Top = 1
            Width = 69
            Height = 23
            Align = alLeft
            Caption = 'Structure'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitLeft = 172
            ExplicitTop = 14
            ExplicitHeight = 16
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 225
          Width = 421
          Height = 24
          Align = alBottom
          TabOrder = 1
          ExplicitTop = 208
          object DBNavigator5: TDBNavigator
            Left = 1
            Top = 1
            Width = 419
            Height = 22
            DataSource = f_dm.Ds_adm_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alClient
            TabOrder = 0
            ExplicitLeft = 25
            ExplicitTop = 15
            ExplicitWidth = 136
            ExplicitHeight = 18
          end
        end
        object DBGrid5: TDBGrid
          Left = 1
          Top = 26
          Width = 421
          Height = 199
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.Ds_adm_ib
          DrawingStyle = gdsGradient
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = prendre1
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 251
        Width = 423
        Height = 209
        Align = alClient
        TabOrder = 1
        ExplicitTop = 234
        ExplicitHeight = 250
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 421
          Height = 16
          Align = alTop
          TabOrder = 0
          object Label6: TLabel
            Left = 215
            Top = 1
            Width = 205
            Height = 14
            Align = alRight
            Caption = 'Double Clic Pour Prendre  Le Code'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitLeft = -20
            ExplicitTop = 20
            ExplicitHeight = 13
          end
          object Label4: TLabel
            Left = 1
            Top = 1
            Width = 52
            Height = 14
            Align = alLeft
            Caption = 'Article'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitLeft = 133
            ExplicitTop = 17
            ExplicitHeight = 16
          end
        end
        object Panel12: TPanel
          Left = 1
          Top = 182
          Width = 421
          Height = 26
          Align = alBottom
          TabOrder = 1
          ExplicitTop = 174
          object DBNavigator4: TDBNavigator
            Left = 1
            Top = 1
            Width = 416
            Height = 25
            DataSource = f_dm.ds_chapitre_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            TabOrder = 0
          end
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 17
          Width = 421
          Height = 165
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_chapitre_ib
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = xprendre
          Columns = <
            item
              Expanded = False
              FieldName = 'CHAPITRE'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARTICLE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIBELLE_ARABE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIBELLE'
              Visible = True
            end>
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 460
        Width = 423
        Height = 210
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 448
        object TPanel
          Left = 1
          Top = 1
          Width = 421
          Height = 24
          Align = alTop
          TabOrder = 0
          object Label3: TLabel
            Left = 1
            Top = 1
            Width = 89
            Height = 22
            Align = alLeft
            Caption = 'Fournisseur'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitLeft = 96
            ExplicitTop = 25
            ExplicitHeight = 16
          end
          object Label5: TLabel
            Left = 215
            Top = 1
            Width = 205
            Height = 22
            Align = alRight
            Caption = 'Double Clic Pour Prendre  Le Code'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitLeft = 116
            ExplicitTop = 12
            ExplicitHeight = 13
          end
        end
        object TPanel
          Left = 1
          Top = 184
          Width = 421
          Height = 25
          Align = alBottom
          TabOrder = 1
          ExplicitTop = 192
          object name: TEdit
            Left = 278
            Top = 1
            Width = 142
            Height = 23
            Align = alRight
            Color = clSkyBlue
            TabOrder = 0
            OnChange = xtrouver
            ExplicitLeft = 43
            ExplicitTop = 20
            ExplicitHeight = 21
          end
          object DBNavigator3: TDBNavigator
            Left = 1
            Top = 1
            Width = 277
            Height = 23
            DataSource = f_dm.DataSource_fournisseur
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 93
            ExplicitTop = 19
            ExplicitWidth = 92
            ExplicitHeight = 22
          end
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 25
          Width = 421
          Height = 159
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clSkyBlue
          DataSource = f_dm.DataSource_fournisseur
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = zprendre
          Columns = <
            item
              Expanded = False
              FieldName = 'BENIFICIAIRE'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOM'
              Width = 280
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
              FieldName = 'ADRESSE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEPHONE'
              Visible = True
            end>
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 866
      Height = 671
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 48
      ExplicitTop = 33
      ExplicitWidth = 337
      ExplicitHeight = 395
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 864
        Height = 20
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 862
          Height = 18
          Align = alClient
          Caption = 'FACTURES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitLeft = 8
          ExplicitTop = 8
          ExplicitWidth = 73
          ExplicitHeight = 16
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 640
        Width = 864
        Height = 30
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 628
        object SpeedButton1: TSpeedButton
          Left = 606
          Top = 1
          Width = 257
          Height = 28
          Align = alRight
          Caption = 'LISTE DES FACTURES D'#39'UN FOURNISSEUR'
          Glyph.Data = {
            66090000424D660900000000000036000000280000001C0000001C0000000100
            18000000000030090000B00B0000B00B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF959696818487818487818486818487828687828687
            82868782868882868882878883878983878983878983888983888A84888A8488
            8A84898B84898B84898B838789FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF95
            9696FEFEFCFEFEFCFEFEFCFEFEFCFBFBFAF8F8F7F6F6F4F3F3F2F0F0EFEEEEED
            EBEBEAE9E9E7E6E6E5E3E3E2E1E1E0DCDCDAD5D5D4D0D0CFCACACAC5C5C58387
            89FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959696FEFEFCFEFEFCFEFEFCFE
            FEFCFEFEFCFBFBFAF8F8F7F6F6F4F3F3F2F0F0EFEEEEEDEBEBEAE9E9E7E6E6E5
            E3E3E2E1E1E0DCDCDAD5D5D4D0D0CFCACACA838789FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF959696CBEEFFCBEEFFCBEEFFCBEEFFCBEEFFCBEEFFCBEEFFCB
            EEFFF6F6F4F3F3F2F0F0EFEEEEEDEBEBEAE9E9E7E6E6E5E3E3E2E1E1E0DCDCDA
            D5D5D4D0D0CF838789FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959696CBEE
            FF44BDFF23A7ED23A7ED23A7ED23A7ED42B7F6BAD9E9E0E0DEDDDDDCDCDCDAE1
            E1E0EBEBEAEBEBEAE9E9E7E6E6E5E3E3E2E1E1E0DCDCDAD5D5D4838789FF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF959696CBEEFF44BDFF69636469636444BD
            FF6760623BA1D96565607A76755D595A4B464769686C7D7E837B808780848B84
            898F8F90968F9096E1E1E0DCDCDA838789FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF959696CBEEFF44BDFF69636444BDFF696364827D7E0084FF0084FF0084
            FF0084FF006ED49190927E8186A3A7AFBAC0C781848ABFBDC08F9096E3E3E2E1
            E1E0838789FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959696CBEEFF44BDFF
            44BDFF44BDFF44BDFF43BBFB0084FF27A1DD23A7ED169FF40282F2006ED4A951
            0A919092C0C0BFD8D8D7E9E9E7E9E9E7E6E6E5E3E3E2838789FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF959696CBEEFFCBEEFF8F90968F9096A1A1A1939692
            ABAAA40082FA2CB8FC26B4FF17A5FFA6500AC0590C894109676B70696D728182
            888E8F93EAEAE9E7E7E6838789FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF95
            9696FEFEFCFEFEFC8F9096BFBDC08C8C8BA09E9DC5C4BDA49F990084FF2CBAFF
            A9510AC75C0CF48C30C25A0C894109686B6F989798818288EAEAE9EAEAE98387
            89FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959696FEFEFCFEFEFCFEFEFCFE
            FEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCC75C0DF7AF6CF6A355F69E4BF48C30
            C25A0C894109919092C0C0BFD8D8D7EAEAE9838789FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF959696FEFEFCFEFEFC8F90968F9096A1A1A1939692ACABA590
            8F89B1ABAA868081C75C0DF7AF6CF6A355F69E4BF48C30C25A0C894109737378
            C0C0BFD8D8D7828688FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959696FEFE
            FCFEFEFC8F9096BFBDC08C8C8BA09E9DC5C4BDA49F99E0D9D7CFC6C9A6A4A4C7
            5C0DF7AF6CF6A355F69E4BF48C30C25A0C894109919092C0C0BF777A7DFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF959696FEFEFCFEFEFCFEFEFCFEFEFCFEFE
            FCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCC75C0DF7AF6CF6A355F6
            9E4BF48C30C25A0C894109919092696B6DFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF959696FEFEFCFEFEFC8F90968F9096A1A1A1939692ACABA5908F89B1AB
            AA86808169636488868B8F9096C75C0DF7AF6CF6A355F69E4BF48C30C25A0C89
            41096A6C6EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959696FEFEFCFEFEFC
            8F9096BFBDC08C8C8BA09E9DC5C4BDA49F99E0D9D7CFC6C9A6A4A4BFBDC0ACB1
            B7D0D7E0C75C0DF7AF6CF6A355F69E4BF48C30C25A0C894109FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF959696FEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFC
            FEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCC75C0DF7AF
            6CF6A355F69E4BF48C30C65C0C874109FF00FFFF00FFFF00FFFF00FFFF00FF95
            9696FEFEFCFEFEFC8F90968F9096A1A1A1939692ACABA5908F89B1ABAA868081
            69636488868B8F909683899081868C84898FC75C0DF7AF6CF6A355F69E4BF48C
            30894109FF00FFFF00FFFF00FFFF00FFFF00FF959696FEFEFCFEFEFC8F9096BF
            BDC08C8C8BA09E9DC5C4BDA49F99E0D9D7CFC6C9A6A4A4BFBDC0ACB1B7D0D7E0
            CED4DC82868BBFBDC0C75C0DF7AF6CF6A355F69E4B894109FF00FFFF00FFFF00
            FFFF00FFFF00FF959696FEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFE
            FEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFC
            C75C0DC75C0D894109FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959696FEFE
            FCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFE
            FEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFC838789FF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF959696FEFEFCFEFEFCFEFEFCFEFEFCFEFE
            FCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFE
            FEFCFEFEFCFEFEFCFEFEFCFEFEFC838789FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF9596968383838383838383838383838383838383838383838383838383
            8383838383838383838483838483848483848483878983878983878983878983
            8789838789FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF}
          OnClick = SpeedButton1Click
          ExplicitLeft = 56
          ExplicitTop = 8
          ExplicitHeight = 33
        end
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 605
          Height = 28
          DataSource = f_dm.ds_facture
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alClient
          TabOrder = 0
          ExplicitTop = 16
          ExplicitHeight = 24
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 21
        Width = 864
        Height = 619
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_facture
        DrawingStyle = gdsGradient
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'GESTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FACTURE'
            Width = 108
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
            FieldName = 'BENIFICIAIRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MONTANT'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERIODE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENGAGEMENT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVATION'
            Visible = True
          end>
      end
    end
    object Panel13: TPanel
      Left = 1
      Top = 672
      Width = 1291
      Height = 29
      Align = alBottom
      TabOrder = 2
      object fin: TBitBtn
        Left = 1
        Top = 1
        Width = 69
        Height = 27
        Align = alLeft
        Caption = 'fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF19160F6B594FCE7DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBAB4DEB5F18E95509E95509EC6927F2996CF9C9B2FEF6F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBAB4DEB5F18E95509E9550AE95509E9560AE9560AE9560AEF7D45F4AA84FA
          D8C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBAB4DEB5F19EA5509E9550AE9550AE9560BE9550AEA550BE9560BE9560CEA
          560BEB611BF08D5AF7BC9FFDECE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF021D581848770000000000
          00FBAB4DDB5008E9560AEA550AE9560AEA560BE9560BEA560BE9560CE9570CE9
          560CE9570CE9560DE9560DDE530D0D2155184878FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03215C1848790000000000
          00FBAB4DDB5009E9550AE9550BE9560BE9560BE9560BE9560CEA570CE9570DE9
          570DE9570DE9570DE9580EE9570F112456194879FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05245F1849790000000000
          00FBAB4DDB5009E9550BE9560CE9560CEA570CE9570CE9570CE9560DE9570DE9
          570EE9570EEA570EE9570EE9570F12275A184979FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF062863184A7B0000000000
          00FBAB4DDB510AEA570BE9560CE9560CE9560DE9570DEA570DE9570DE9570EE9
          570EE9570EE9580EE9570FE9580F142A5E194A7BFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF092C68184B7C0000000000
          00FBAB4DDE6120EB5F18E9560CEA570DEA570DE9570DEA570EEA570EE9570EE9
          570FE9580FEA580FEA580FEA5810152F63194B7BFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FEFFFFFF0B316D194C7D0000000000
          00FBAB4DE37640EE7B40EC6F2FEB631EE95810E9570EE9570EE9570EEA570FEA
          5810E9580FE95810EA5811EA5811173368194C7DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C8EAEAFA0C3572194D7E0000000000
          00FBAB4DE57A46EE7F47EE7C43EE793FED6D2EEA601AEA580FE9580FE9580FEA
          5810EA5811EA5811E95811EA59111A376D194E7EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C83434D91037801A4E800000000000
          00FBAB4DE67E4BEF824BEF7F48EE7D45EE7B41EE7439EC6624E95810E95810EA
          5910EA5811EA5911EA5912EA59121C3C721A4E80FFFFFFFFFFFFFFFFFF1616C8
          1616C81616C81616C81616C81616C81616C87070FC3439D21A4B890000000000
          00FBAB4DE6824FEF8651C35B18EE8149EF7E47EE7C44EE7940EC6827EA5A12EA
          5912EA5911E95912E95A12E959131E41771A5081FFFFFFFFFFFFFFFFFF1616C8
          C0C0FE9494FD7171FD7171FD7171FD7171FD7171FD7070FC353AD30202130000
          00FBAB4DE684548292914B6980C35B18EF824CEF8049EE7D45EE7A42EC6927E9
          5912E95912E95A12EA5A13E9591421467D1A5183FFFFFFFFFFFFFFFFFF1616C8
          CECEFEC5C5FEA0A0FE7F7FFD7171FD7171FD7171FD7171FD6E6EFB1919970000
          00FBAB4DE7885A9CA89E809E9EF08855F08551EF834EEF814AEE7E47EE7B43EB
          6626EA5913E95913E95A14E95914224B831B5285FFFFFFFFFFFFFFFFFF1616C8
          D4D4FECFCFFECBCBFEBABAFEA0A0FE8C8CFD7D7DFD7272FC373DD30202130000
          00FBAB4DE88D60F19262F18E5EF08C5BEF8A58EF8753F08551EF824DEF7F4AEE
          773DEA611EEA5A14E95A15EA5A1524518A1B5386FFFFFFFFFFFFFFFFFF1616C8
          1616C81616C81616C81616C81616C81616C8BCBCFE575CDB1B4E8E0000000000
          00FBAB4DE89066F29668F19264F09060F18D5CF08A59EF8956EF8552EF834FEE
          814BED6F33EA5A14E95B15EA5A1527568F1C5488FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C85B5BE01D55A21C558A0000000000
          00FBAB4DE9966CF2986DF2966AF19466F19263F18E5EF08C5AEF8957EF8754EF
          8451EE804AEB6524EA5B15EA5A162A5B961C5689FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C8EAEAFA2061A41C578B0000000000
          00FBAB4DE99871F39D73F29A70F2976BF19568F19264F19060F18D5DEF8B5AF0
          8856F08653ED7236EA5B16EA5B172D619C1C578BFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FEFFFFFF2367AB1C598C0000000000
          00FBAB4DEA9B75F3A179F39E76F29B71F2996EF2966AF19467F19163F18E5FF0
          8B5BF08958EF814DEB601DEA5B182F66A11C588CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF256CB01C598E0000000000
          00FBAB4DECA07CF3A57FF3A27AF39F77F29D74F29A6FF2976CF19568F19265F1
          9061F08D5DF08A59EB6B2DEA5C18326CA81C5A8EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2872B71C5B900000000000
          00FBAB4DECA581F4A985F4A680F3A47DF3A079F39E75F29B71F2986EF1966AF1
          9366F19063F18E60ED753DEA5C183371AE1C5B8FFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B78BD1D5C910000000000
          00FBAB4DEDA886F4AD8AF4AA86F4A783F3A47EF3A27BF39F77F29C73F1996FF2
          976CF19569F19264EF804CEA5B183575B31D5D91FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D7DC31D5D920000000000
          00FBAB4DEEAC8CF5B090F4AE8CF4AB89F4A884F4A681F3A47DF3A078F29E75F2
          9B72F2986DF1966AF08A5AEA5C18387BB91D5E92FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F82C91E5E940000000000
          00FBAB4DEEAF91F5B495F5B291F4AF8DF4AC8AF4AA86F4A682F3A47EF3A17BF3
          9E77F29C73F2996FF19467EA5C193B80BF1E5F94FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3287CE1E60950000000000
          00FBAC4EF6B898F6B89BF6B697F5B293F5B090F5AD8CF4AB87F3A884F3A680F3
          A27CF3A079F29D75F29A70EA5C193D84C21E6095FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF338BD31E60970000000000
          008A6841D7A068FBB87CF9B98EF7B797F5B495F5B191F5AE8DF4AC8AF4A985F4
          A682F3A47EF3A07AF29A70EA5C193E88C71E6096FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3690D71E62980000000000
          0000000000000018120B574229BD8B59DEA46CFAB67AF8B68BF6B18EF4AD8BF4
          AA87F4A783F3A47FF2976CEA5C19408CCC1F6198FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3793DC1E62980000000000
          000000000000000000000000000000000000001E170E664C30C7935FFCB774FA
          B47AF7B184F5A983F19063EA5C194290D11E6298FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3997DF1E63990000000000
          0000000000000000000000000000000000000000000000000000000000000027
          1E137A5B39CE9861FBB26CF489424294D41F6299FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A99E31F639A1F639A1F63
          9A1E639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F
          649A1F639A1F639A1F639A2F6A981F639A1F649AFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B9CE63B9CE63B9CE63B9C
          E63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B
          9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE6FFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 0
        OnClick = finClick
        ExplicitLeft = 116
        ExplicitTop = 5
        ExplicitHeight = 36
      end
    end
  end
end
