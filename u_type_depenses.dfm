object f_type_depenses: Tf_type_depenses
  Left = 159
  Top = 140
  Caption = 'TYPE DEPENSES'
  ClientHeight = 337
  ClientWidth = 733
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 296
    Width = 324
    Height = 25
    DataSource = f_dm.ds_nat_dep_ib
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 0
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 11
    Width = 330
    Height = 279
    Color = clSkyBlue
    DataSource = f_dm.ds_nat_dep_ib
    DrawingStyle = gdsGradient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
