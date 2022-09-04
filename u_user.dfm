object f_user: Tf_user
  Left = 189
  Top = 107
  Width = 544
  Height = 375
  Caption = 'f_user'
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
    Left = 112
    Top = 72
    Width = 320
    Height = 120
    DataSource = F_principale.ds_user
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 104
    Top = 200
    Width = 240
    Height = 25
    DataSource = F_principale.ds_user
    TabOrder = 1
  end
end
