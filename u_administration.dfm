object f_administration: Tf_administration
  Left = 15
  Top = 77
  Caption = 'Administration'
  ClientHeight = 723
  ClientWidth = 1175
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = oncreate_f_administration
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1175
    Height = 723
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1173
      Height = 696
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 31
        Width = 1171
        Height = 664
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = clSkyBlue
        DataSource = f_dm.Ds_adm_ib
        DrawingStyle = gdsGradient
        ParentBiDiMode = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRUCTURE_SITUATION'
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
            FieldName = 'LIBELLE_STRUCTURE_SITUATION'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBELLE_FRANCAIS'
            Width = 250
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
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 1171
        Height = 30
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 895
          Height = 28
          Align = alLeft
          Caption = 
            'Fichier Administration(Dans  LIBELLE_STRUCTURE_SITUATION s'#233'parer' +
            ' l'#39'intitul'#233' par / si vous avez 02 lignes)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          ExplicitLeft = 2
          ExplicitTop = 12
          ExplicitHeight = 20
        end
        object Button2: TButton
          Left = 1111
          Top = 1
          Width = 34
          Height = 28
          Align = alRight
          Caption = 'Latin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
          ExplicitLeft = 351
          ExplicitHeight = 25
        end
        object Button3: TButton
          Left = 1145
          Top = 1
          Width = 25
          Height = 28
          Align = alRight
          Caption = #1593#1585#1576#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
          ExplicitLeft = 1286
          ExplicitTop = -4
          ExplicitHeight = 31
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 697
      Width = 1173
      Height = 25
      Align = alBottom
      TabOrder = 1
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 468
        Height = 23
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = 704
        object fin: TButton
          Left = 1
          Top = 1
          Width = 75
          Height = 21
          Align = alLeft
          Caption = 'Fin'
          TabOrder = 0
          OnClick = finClick
          ExplicitLeft = 392
        end
      end
      object Panel5: TPanel
        Left = 469
        Top = 1
        Width = 703
        Height = 23
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 1
        ExplicitLeft = 1
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 701
          Height = 21
          DataSource = f_dm.Ds_adm_ib
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 636
        end
      end
    end
  end
end
