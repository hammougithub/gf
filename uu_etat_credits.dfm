object ff_etat_credits: Tff_etat_credits
  Left = 341
  Top = 166
  HorzScrollBar.Color = clBtnShadow
  HorzScrollBar.ParentColor = False
  Caption = 'Etat des cr'#233'dits'
  ClientHeight = 370
  ClientWidth = 583
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 40
    Top = 48
    Width = 69
    Height = 16
    Caption = 'Gestion :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 88
    Width = 49
    Height = 16
    Caption = 'Date :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Imprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Sur ecran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Fin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object xgestion: TEdit
    Left = 105
    Top = 48
    Width = 38
    Height = 24
    TabOrder = 3
    Text = '2001'
  end
  object xdate: TMaskEdit
    Left = 99
    Top = 88
    Width = 80
    Height = 24
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
end
