object f_reimpute: Tf_reimpute
  Left = 10
  Top = 20
  Caption = 'Reimputation'
  ClientHeight = 697
  ClientWidth = 1495
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = oncreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1495
    Height = 697
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 429
    ExplicitTop = 30
    ExplicitWidth = 980
    ExplicitHeight = 635
    object Panel2: TPanel
      Left = 1
      Top = 483
      Width = 1493
      Height = 213
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 64
      ExplicitTop = 512
      ExplicitWidth = 489
      ExplicitHeight = 161
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 1491
        Height = 20
        Align = alTop
        Caption = 'R'#233'imputations'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ExplicitLeft = 8
        ExplicitTop = 133
        ExplicitWidth = 103
      end
      object DBGrid6: TDBGrid
        Left = 1
        Top = 21
        Width = 1491
        Height = 166
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_reimputation
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
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
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRUCTURE_SITUATION'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATES'
            Visible = True
          end
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
            FieldName = 'UTILISATEUR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE_MAJ'
            Visible = True
          end>
      end
      object Panel10: TPanel
        Left = 1
        Top = 187
        Width = 1491
        Height = 25
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 616
        ExplicitTop = 128
        ExplicitWidth = 401
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 1
          Width = 408
          Height = 23
          DataSource = f_dm.ds_reimputation
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 0
          ExplicitHeight = 25
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1493
      Height = 482
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 64
      ExplicitTop = 24
      ExplicitWidth = 1065
      object Panel4: TPanel
        Left = 867
        Top = 1
        Width = 625
        Height = 480
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 720
        ExplicitTop = 22
        ExplicitHeight = 379
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 623
          Height = 20
          Align = alTop
          Caption = 'Articles(Double Clic Pour Prendre  Le Code)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitWidth = 307
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 21
          Width = 623
          Height = 435
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_chapitre_ib
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = prendre_article
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
        object Panel11: TPanel
          Left = 1
          Top = 456
          Width = 623
          Height = 23
          Align = alBottom
          TabOrder = 1
          object DBNavigator4: TDBNavigator
            Left = 1
            Top = 1
            Width = 288
            Height = 21
            DataSource = f_dm.ds_chapitre_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
            ExplicitHeight = 39
          end
        end
      end
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 866
        Height = 480
        Align = alClient
        Caption = 'Panel9'
        TabOrder = 1
        ExplicitLeft = 328
        ExplicitTop = 16
        ExplicitWidth = 481
        ExplicitHeight = 439
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 864
          Height = 303
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 48
          ExplicitTop = 16
          ExplicitWidth = 233
          ExplicitHeight = 233
          object Panel7: TPanel
            Left = 1
            Top = 282
            Width = 862
            Height = 20
            Align = alBottom
            TabOrder = 0
            ExplicitTop = 261
            object DBNavigator1: TDBNavigator
              Left = 1
              Top = 1
              Width = 240
              Height = 18
              DataSource = f_dm.ds_mandat_ib
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              TabOrder = 0
              ExplicitLeft = 191
              ExplicitTop = 5
              ExplicitHeight = 20
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 862
            Height = 28
            Align = alTop
            TabOrder = 1
            object Label11: TLabel
              Left = 666
              Top = 1
              Width = 136
              Height = 26
              Align = alRight
              Caption = 'Num'#233'ro du mandat'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
              ExplicitLeft = 142
              ExplicitTop = 5
              ExplicitHeight = 20
            end
            object Label2: TLabel
              Left = 10
              Top = 5
              Width = 364
              Height = 20
              Caption = 'Mandats(Double clic pour saisir une r'#233'imputation ...)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
            end
            object Edit1: TEdit
              Left = 802
              Top = 1
              Width = 59
              Height = 26
              Align = alRight
              Color = clSkyBlue
              TabOrder = 0
              OnChange = seek_mandat
              ExplicitLeft = 414
              ExplicitTop = 7
              ExplicitHeight = 21
            end
          end
          object DBGrid1: TDBGrid
            Left = 1
            Top = 29
            Width = 862
            Height = 253
            Align = alClient
            Color = clSkyBlue
            DataSource = f_dm.ds_mandat_ib
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = prendre_mandat
            Columns = <
              item
                Expanded = False
                FieldName = 'MANDAT'
                Title.Caption = '   N'#176
                Width = 55
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
                Title.Alignment = taCenter
                Title.Caption = 'Art'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATES'
                Title.Caption = '     Date'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENGAGEMENT'
                Title.Alignment = taCenter
                Title.Caption = 'Eng'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GESTION'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STRUCTURE'
                PickList.Strings = (
                  '1 DRT'
                  '2 TW GHA'
                  '3 TW LAG'
                  '4 TW OUA'
                  '5 TW ILI'
                  '6 TW TAM'
                  '7 TC GHA'
                  '8 TC LAG'
                  '9 TC OUA'
                  'a TC ILLI'
                  'b TC TAM')
                Title.Caption = 'Str'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVATION'
                Width = 280
                Visible = True
              end>
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 304
          Width = 864
          Height = 175
          Align = alBottom
          Caption = 'Panel6'
          TabOrder = 1
          ExplicitLeft = 48
          ExplicitTop = 279
          ExplicitWidth = 369
          object Label5: TLabel
            Left = 1
            Top = 1
            Width = 862
            Height = 20
            Align = alTop
            Caption = 'Lignes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            ExplicitLeft = 18
            ExplicitWidth = 47
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 21
            Width = 862
            Height = 153
            Align = alClient
            Color = clSkyBlue
            DataSource = f_dm.ds_lignes_ib_1
            DrawingStyle = gdsGradient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'LIGNE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BENIFICIAIRE'
                Title.Caption = 'Benif'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MONTANT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVATION'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STRUCTURE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MANDAT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHAPITRE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ARTICLE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Visible = True
              end>
          end
        end
      end
    end
  end
  object q_mdm: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'b'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'y'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from lignes where gestion=:a and mandat=:b ' +
        'and  chapitre=:x and article=:y ')
    SQLConnection = f_dm.connect_db_gf
    Left = 680
    Top = 424
  end
end
