object f_verrou: Tf_verrou
  Left = 189
  Top = 107
  Width = 544
  Height = 375
  Caption = 'verrou'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 112
    Width = 481
    Height = 177
    DataSource = F_principale.ds_verrou
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 296
    Width = 240
    Height = 25
    DataSource = F_principale.ds_verrou
    TabOrder = 1
  end
end
