object F_CONVENTION: TF_CONVENTION
  Left = 0
  Top = 0
  Caption = 'F_CONVENTION'
  ClientHeight = 696
  ClientWidth = 1325
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
    Width = 1325
    Height = 696
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 820
      Height = 694
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 818
        Height = 23
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 227
          Height = 21
          Align = alLeft
          Caption = 'CONVENTION(de toutes les gestions)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitHeight = 16
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 670
        Width = 818
        Height = 23
        Align = alBottom
        TabOrder = 1
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 488
          Height = 21
          DataSource = f_dm.ds_convention
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
          ExplicitHeight = 18
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 24
        Width = 818
        Height = 646
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_convention
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
            FieldName = 'CONVENTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESIGNATION'
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
            FieldName = 'DATES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 821
      Top = 1
      Width = 503
      Height = 694
      Align = alRight
      Caption = 'Panel3'
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 501
        Height = 224
        Align = alTop
        Caption = 'Panel6'
        TabOrder = 0
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 499
          Height = 24
          Align = alTop
          TabOrder = 0
          object Label9: TLabel
            Left = 293
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
            ExplicitHeight = 13
          end
          object Label7: TLabel
            Left = 1
            Top = 1
            Width = 69
            Height = 22
            Align = alLeft
            Caption = 'Structure'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitHeight = 16
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 203
          Width = 499
          Height = 20
          Align = alBottom
          TabOrder = 1
          object DBNavigator5: TDBNavigator
            Left = 1
            Top = 1
            Width = 256
            Height = 18
            DataSource = f_dm.Ds_adm_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
        object DBGrid5: TDBGrid
          Left = 1
          Top = 25
          Width = 499
          Height = 178
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
          OnDblClick = prendre
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 225
        Width = 501
        Height = 226
        Align = alTop
        Caption = 'Panel7'
        TabOrder = 1
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 499
          Height = 19
          Align = alTop
          TabOrder = 0
          object Label6: TLabel
            Left = 293
            Top = 1
            Width = 205
            Height = 17
            Align = alRight
            Caption = 'Double Clic Pour Prendre  Le Code'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitHeight = 13
          end
          object Label4: TLabel
            Left = 1
            Top = 1
            Width = 52
            Height = 17
            Align = alLeft
            Caption = 'Article'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitHeight = 16
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 204
          Width = 499
          Height = 21
          Align = alBottom
          TabOrder = 1
          object DBNavigator4: TDBNavigator
            Left = 1
            Top = 1
            Width = 256
            Height = 19
            DataSource = f_dm.ds_chapitre_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 20
          Width = 499
          Height = 184
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
          OnDblClick = prendre1
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
      object Panel12: TPanel
        Left = 1
        Top = 451
        Width = 501
        Height = 242
        Align = alClient
        Caption = 'Panel12'
        TabOrder = 2
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 499
          Height = 23
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 293
            Top = 1
            Width = 205
            Height = 21
            Align = alRight
            Caption = 'Double Clic Pour Prendre  Le Code'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitHeight = 13
          end
          object Label8: TLabel
            Left = 1
            Top = 1
            Width = 89
            Height = 21
            Align = alLeft
            Caption = 'Fournisseur'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitHeight = 16
          end
        end
        object Panel14: TPanel
          Left = 1
          Top = 219
          Width = 499
          Height = 22
          Align = alBottom
          TabOrder = 1
          object name: TEdit
            Left = 389
            Top = 1
            Width = 109
            Height = 20
            Align = alRight
            Color = clSkyBlue
            TabOrder = 0
            OnChange = trouver1
            ExplicitHeight = 21
          end
          object DBNavigator3: TDBNavigator
            Left = 1
            Top = 1
            Width = 256
            Height = 20
            DataSource = f_dm.DataSource_fournisseur
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 1
          end
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 24
          Width = 499
          Height = 195
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
          OnDblClick = prendre3
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
  end
end
