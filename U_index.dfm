object f_index: Tf_index
  Left = 10
  Top = 46
  Caption = 'Forme Index'
  ClientHeight = 470
  ClientWidth = 727
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 86
    Top = 384
    Width = 420
    Height = 24
    Caption = 
      '                                                                ' +
      '                    '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 261
    Top = 32
    Width = 5
    Height = 24
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 171
    Height = 20
    Caption = 'TABLES DES INDEX'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 697
    Height = 305
    Color = clInactiveCaption
    FixedColor = clInactiveCaption
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = fermer
  end
  object Button2: TButton
    Left = 632
    Top = 432
    Width = 75
    Height = 25
    Caption = 'F I N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 360
    Width = 665
    Height = 17
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 432
    Width = 361
    Height = 25
    Caption = 'MAJ TABLE INDEX  ---> passwourd --->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C8807FF7777777777FF700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 88
    Top = 432
    Width = 97
    Height = 25
    Caption = 'REINDEX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333FFF33F333FF3F330E0330FFFCCFCC33777FF7F3377F7730EEE030FFFC
      CFCC377777F7F33773770EEE0000FFFFFCCF777777773F33377FEEE0BFBF0FFF
      FCCF7777333373F337730E0BFBFBF0FFCCFF77733333373F77F330BFBFBFBF0F
      CCFF37F333333F7F773330FBFBFB0B0FFFFF37F3F33F737FFFFF30B0BF0FB000
      000037F73F73F777777730FB0BF0FB0FFFFF373F73F73F7F333F330030BF0F0F
      FF993F77373F737F3377CC33330BF00FFF9977FFF373F77F3F77CC993330009F
      99FF7777F337777F77F333993330F99F99FF3F77FF37F773773F993CC330FFF9
      9F9977F77F37F3377F77993CC330FFF99F997737733733377377}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = REINDEX
  end
  object Edit1: TEdit
    Left = 560
    Top = 432
    Width = 57
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = ' '
    Visible = False
    OnChange = ouv
    OnExit = ouv
  end
end
