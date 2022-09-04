object Form1: TForm1
  Left = 192
  Top = 107
  Caption = 'Edition_mandat'
  ClientHeight = 384
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 110
    Height = 16
    Caption = 'Fichier Mandat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 40
    Width = 457
    Height = 257
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = etat
  end
  object DBNavigator1: TDBNavigator
    Left = 48
    Top = 304
    Width = 224
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object fin: TButton
    Left = 288
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Fin'
    TabOrder = 2
    OnClick = finClick
  end
  object Print: TButton
    Left = 48
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Print'
    Enabled = False
    TabOrder = 3
  end
  object Preview: TButton
    Left = 123
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Preview'
    Enabled = False
    TabOrder = 4
    OnClick = PreviewClick
  end
  object Button2: TButton
    Left = 199
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Cancel'
    Enabled = False
    TabOrder = 5
    OnClick = cancel
  end
end
