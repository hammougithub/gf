object f_lieu: Tf_lieu
  Left = 0
  Top = 0
  Caption = 'f_lieu'
  ClientHeight = 605
  ClientWidth = 1146
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
    Left = 11
    Top = 5
    Width = 64
    Height = 16
    Caption = 'Table Lieu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 27
    Width = 673
    Height = 549
    Color = clSkyBlue
    DataSource = f_dm.ds_lieu
    DrawingStyle = gdsGradient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 582
    Width = 588
    Height = 23
    DataSource = f_dm.ds_lieu
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 1
  end
end
