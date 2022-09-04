object f_nouvelle_version: Tf_nouvelle_version
  Left = 0
  Top = 0
  Caption = 'f_nouvelle_version'
  ClientHeight = 373
  ClientWidth = 775
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = get_date
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 56
    Width = 148
    Height = 16
    Caption = 'Date de gf_dbexpress.exe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 56
    Top = 97
    Width = 529
    Height = 17
    DataField = 'NOM'
    DataSource = f_dm.DataSource_programme
  end
  object DBText2: TDBText
    Left = 56
    Top = 120
    Width = 81
    Height = 17
    DataField = 'DATES'
    DataSource = f_dm.DataSource_programme
  end
  object DBText3: TDBText
    Left = 168
    Top = 120
    Width = 65
    Height = 17
    Color = clSkyBlue
    DataField = 'PRENDRE'
    DataSource = f_dm.DataSource_programme
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 210
    Top = 55
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 168
    Width = 711
    Height = 57
    DataSource = f_dm.DataSource_programme
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 231
    Width = 240
    Height = 25
    DataSource = f_dm.DataSource_programme
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 2
  end
end
