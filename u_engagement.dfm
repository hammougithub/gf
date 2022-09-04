object F_engagement: TF_engagement
  Left = 72
  Top = 143
  BorderStyle = bsNone
  Caption = 'MAJ DES ENGAGEMENTS'
  ClientHeight = 538
  ClientWidth = 863
  Color = clInactiveCaptionText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMenu
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 241
    Top = 161
    Width = 73
    Height = 20
    BiDiMode = bdLeftToRight
    Caption = #199#225#228#229#199#237#201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentFont = False
    ParentBiDiMode = False
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 22
    Top = 0
    Width = 146
    Height = 16
    Caption = 'Fichier Engagement'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 19
    Top = 192
    Width = 140
    Height = 16
    Caption = 'D'#233'tail Engagement'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 464
    Top = 179
    Width = 249
    Height = 16
    Caption = 'Double Clic Pour Prendre  Le Code'
    Color = clScrollBar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 121
    Top = 179
    Width = 40
    Height = 13
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 190
    Top = 382
    Width = 40
    Height = 13
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 94
    Top = 179
    Width = 26
    Height = 13
    Caption = 'Post'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 163
    Top = 382
    Width = 26
    Height = 13
    Caption = 'Post'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 210
    Width = 724
    Height = 135
    FixedColor = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMenu
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 15
    Top = 162
    Width = 147
    Height = 19
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object DBNavigator2: TDBNavigator
    Left = 19
    Top = 365
    Width = 232
    Height = 19
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
    TabOrder = 2
  end
  object DBGrid3: TDBGrid
    Left = 463
    Top = 16
    Width = 280
    Height = 138
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator3: TDBNavigator
    Left = 474
    Top = 156
    Width = 200
    Height = 18
    TabOrder = 4
  end
  object plus: TButton
    Left = 258
    Top = 366
    Width = 37
    Height = 17
    Caption = ' + '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenu
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Button1: TButton
    Left = 170
    Top = 162
    Width = 30
    Height = 18
    Caption = ' + '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenu
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object moins: TButton
    Left = 201
    Top = 163
    Width = 29
    Height = 18
    Caption = ' - '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenu
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object DBGrid2: TDBGrid
    Left = 19
    Top = 32
    Width = 399
    Height = 120
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenu
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
