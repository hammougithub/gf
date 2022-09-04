object f_dep_annul: Tf_dep_annul
  Left = 0
  Top = 0
  Caption = 'DEPENSES ANNULES'
  ClientHeight = 697
  ClientWidth = 1320
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = on_create
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1320
    Height = 697
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 701
      Height = 695
      Align = alClient
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 699
        Height = 24
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 146
          Height = 22
          Align = alLeft
          Caption = 'D'#233'penses annul'#233'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          ExplicitHeight = 16
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 25
        Width = 699
        Height = 639
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_depenses_annulees
        DrawingStyle = gdsClassic
        TabOrder = 1
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
            FieldName = 'MONTANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRUCTURE'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRUCTURE_SITUATION'
            Title.Caption = 'STR_SITUATION'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVATION'
            Visible = True
          end>
      end
      object Panel7: TPanel
        Left = 1
        Top = 664
        Width = 699
        Height = 30
        Align = alBottom
        TabOrder = 2
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 351
          Height = 28
          DataSource = f_dm.ds_depenses_annulees
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
        end
      end
    end
    object Panel3: TPanel
      Left = 702
      Top = 1
      Width = 617
      Height = 695
      Align = alRight
      TabOrder = 1
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 615
        Height = 320
        Align = alTop
        TabOrder = 0
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 613
          Height = 23
          Align = alTop
          TabOrder = 0
          object Label7: TLabel
            Left = 1
            Top = 1
            Width = 69
            Height = 21
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
          object Label9: TLabel
            Left = 70
            Top = 1
            Width = 156
            Height = 21
            Align = alLeft
            Caption = 'D. Clic Pour Prendre Code'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitLeft = 89
            ExplicitHeight = 13
          end
        end
        object DBGrid5: TDBGrid
          Left = 1
          Top = 24
          Width = 613
          Height = 269
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.Ds_adm_ib
          DrawingStyle = gdsGradient
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = prendre_code
        end
        object Panel9: TPanel
          Left = 1
          Top = 293
          Width = 613
          Height = 26
          Align = alBottom
          TabOrder = 2
          object DBNavigator5: TDBNavigator
            Left = 1
            Top = 1
            Width = 244
            Height = 24
            DataSource = f_dm.Ds_adm_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 321
        Width = 615
        Height = 373
        Align = alClient
        TabOrder = 1
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 613
          Height = 24
          Align = alTop
          TabOrder = 0
          object Label6: TLabel
            Left = 100
            Top = 5
            Width = 178
            Height = 13
            Caption = 'D. Clic Pour Prendre  Le Code'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 18
            Top = 5
            Width = 52
            Height = 16
            Caption = 'Article'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 341
          Width = 613
          Height = 31
          Align = alBottom
          TabOrder = 1
          object DBNavigator4: TDBNavigator
            Left = 1
            Top = 1
            Width = 360
            Height = 29
            DataSource = f_dm.ds_chapitre_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 25
          Width = 613
          Height = 316
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
      end
    end
  end
end
