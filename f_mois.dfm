object f_m: Tf_m
  Left = 0
  Top = 0
  Caption = 'f_m'
  ClientHeight = 666
  ClientWidth = 1020
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
  object Label1: TLabel
    Left = 72
    Top = 5
    Width = 139
    Height = 16
    Caption = 'Table Mois et p'#233'riodes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 72
    Top = 24
    Width = 305
    Height = 615
    Color = clSkyBlue
    DataSource = f_dm.ds_mois_ib
    DrawingStyle = gdsGradient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ENARABE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOIS'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 72
    Top = 644
    Width = 300
    Height = 21
    DataSource = f_dm.ds_mois_ib
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 1
  end
end
