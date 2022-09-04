object f_chapitre: Tf_chapitre
  Left = -4
  Top = -4
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = 'CHAPITRE'
  ClientHeight = 751
  ClientWidth = 1301
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  WindowState = wsMaximized
  OnCreate = oncreate_f_chapitre
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1301
    Height = 751
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 1242
    object DBGrid1: TDBGrid
      Left = 1
      Top = 26
      Width = 1299
      Height = 699
      Align = alClient
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clSkyBlue
      DataSource = f_dm.ds_chapitre_ib
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
          FieldName = 'CHAPITRE'
          Title.Alignment = taCenter
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARTICLE'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYP'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'LIBELLE_ARABE'
          Title.Alignment = taCenter
          Width = 470
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIBELLE'
          Title.Alignment = taCenter
          Width = 470
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIBELLE_CHAPITRE'
          Title.Alignment = taCenter
          Title.Caption = 'Libelle ( Pour  l'#39#233'tat  ... )'
          Width = 470
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1299
      Height = 25
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 1240
      object Label1: TLabel
        Left = 10
        Top = 1
        Width = 117
        Height = 16
        Caption = 'Fichier Chapitre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Button1: TButton
        Left = 1273
        Top = 1
        Width = 25
        Height = 23
        Align = alRight
        Caption = #1593#1585#1576#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
        ExplicitLeft = 1239
        ExplicitTop = -4
      end
      object Button2: TButton
        Left = 1239
        Top = 1
        Width = 34
        Height = 23
        Align = alRight
        Caption = 'Latin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
        ExplicitLeft = 1199
        ExplicitTop = -1
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 725
      Width = 1299
      Height = 25
      Align = alBottom
      TabOrder = 2
      ExplicitWidth = 1240
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 360
        Height = 23
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = 879
        object Fin: TButton
          Left = 1
          Top = 1
          Width = 75
          Height = 21
          Align = alLeft
          Caption = 'Fin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = FinClick
          ExplicitLeft = 284
        end
      end
      object Panel3: TPanel
        Left = 361
        Top = 1
        Width = 937
        Height = 23
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 1
        ExplicitWidth = 878
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 935
          Height = 21
          DataSource = f_dm.ds_chapitre_ib
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 792
        end
      end
    end
  end
  object DataSource1: TDataSource
    Left = 680
    Top = 296
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 688
    Top = 248
  end
end
