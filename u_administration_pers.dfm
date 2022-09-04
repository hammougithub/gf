object f_administration_pers: Tf_administration_pers
  Left = 0
  Top = 0
  Caption = 'f_administration_pers'
  ClientHeight = 730
  ClientWidth = 1287
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 730
    Align = alClient
    Caption = 'Panel3'
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 224
    ExplicitWidth = 889
    ExplicitHeight = 377
    object Panel2: TPanel
      Left = 1
      Top = 704
      Width = 1285
      Height = 25
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 112
      ExplicitTop = 384
      ExplicitWidth = 281
      object Panel4: TPanel
        Left = 760
        Top = 1
        Width = 524
        Height = 23
        Align = alRight
        TabOrder = 0
        object Button1: TButton
          Left = 448
          Top = 1
          Width = 75
          Height = 21
          Align = alRight
          Caption = 'Fin'
          TabOrder = 0
          OnClick = Button1Click
          ExplicitLeft = 333
          ExplicitHeight = 23
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 759
        Height = 23
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 1
        ExplicitLeft = 504
        ExplicitTop = 8
        ExplicitWidth = 185
        ExplicitHeight = 41
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 757
          Height = 21
          DataSource = f_dm.ds_adm
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alClient
          TabOrder = 0
          ExplicitTop = 0
          ExplicitWidth = 660
          ExplicitHeight = 23
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1285
      Height = 703
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 1
      ExplicitLeft = 72
      ExplicitTop = 120
      ExplicitWidth = 521
      ExplicitHeight = 369
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 1283
        Height = 20
        Align = alTop
        Caption = 'Fichier Administration_pers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ExplicitWidth = 229
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 21
        Width = 1283
        Height = 681
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_adm
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
