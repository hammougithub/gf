object etat_credits: Tetat_credits
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Etat des crédits'
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
    Top = 48
    Width = 52
    Height = 16
    Caption = 'Gestion :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 88
    Width = 35
    Height = 16
    Caption = 'Date :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 48
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Preview'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Fin'
    TabOrder = 2
    OnClick = Button3Click
  end
  object xgestion: TEdit
    Left = 102
    Top = 48
    Width = 36
    Height = 21
    TabOrder = 3
    Text = '2001'
  end
  object xdate: TMaskEdit
    Left = 99
    Top = 88
    Width = 69
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
end
