object F_sauv: TF_sauv
  Left = 8
  Top = 59
  Caption = 'SAUVEGRDE BASE DE DONNEES'
  ClientHeight = 741
  ClientWidth = 996
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = oncreate
  OnShow = voir
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 218
    Width = 89
    Height = 19
    AutoSize = False
    Caption = ' '
    Color = clScrollBar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 22
    Top = 455
    Width = 174
    Height = 16
    Caption = ' number of sectors per cluster'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 21
    Top = 485
    Width = 164
    Height = 16
    Caption = 'number of bytes per sector. '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 20
    Top = 512
    Width = 201
    Height = 16
    Caption = 'number of free clusters on the disk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 21
    Top = 536
    Width = 175
    Height = 16
    Caption = 'number of clusters on the disk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 20
    Top = 560
    Width = 123
    Height = 16
    Caption = 'Total disque (en Mo)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 21
    Top = 584
    Width = 149
    Height = 16
    Caption = 'Total disque free (en Mo)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 416
    Width = 162
    Height = 16
    Caption = 'INFORMATON DISQUE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 72
    Top = 88
    Width = 297
    Height = 16
    Caption = 'NOM DU DRIVE OU SE TROUVE LA BD (C,D,E...)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 96
    Top = 48
    Width = 213
    Height = 16
    Caption = 'Mot de passe pour Backup-Restore'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 304
    Top = 312
    Width = 41
    Height = 13
    Caption = 'Source'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 304
    Top = 344
    Width = 65
    Height = 13
    Caption = 'Destination'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 8
    Top = 296
    Width = 289
    Height = 13
    Caption = 'gbak.exe doit '#234'tre dans le repertoire programme_ib'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 320
    Top = 368
    Width = 657
    Height = 13
    Caption = 
      'R'#233'ctifier le fichier BD destination, La r'#233'stauration est faite d' +
      'ans le meme repertoire , V'#233'rifier votre base de donn'#233'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 226
    Top = 452
    Width = 92
    Height = 21
    TabOrder = 2
    Text = ' '
  end
  object Edit2: TEdit
    Left = 226
    Top = 481
    Width = 93
    Height = 21
    TabOrder = 4
    Text = ' '
  end
  object Edit3: TEdit
    Left = 226
    Top = 509
    Width = 94
    Height = 21
    TabOrder = 5
    Text = ' '
  end
  object Edit4: TEdit
    Left = 225
    Top = 535
    Width = 95
    Height = 21
    TabOrder = 6
    Text = ' '
  end
  object Edit5: TEdit
    Left = 224
    Top = 560
    Width = 95
    Height = 21
    TabOrder = 7
    Text = ' '
  end
  object Edit6: TEdit
    Left = 224
    Top = 584
    Width = 95
    Height = 21
    TabOrder = 8
    Text = ' '
  end
  object BitBtn1: TBitBtn
    Left = 880
    Top = 672
    Width = 75
    Height = 25
    Caption = 'F I N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object Edit7: TEdit
    Left = 385
    Top = 87
    Width = 48
    Height = 21
    TabOrder = 1
    Text = 'i'
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 176
    Width = 289
    Height = 41
    Caption = 'GBAK-BACKUP'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 312
    Width = 289
    Height = 47
    Caption = 'GBAK-RESTORE'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
      555555777777777FF5555500000000805555557777777777FF555550BBBBB008
      05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
      005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
      055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
      055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
      05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
      05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
      005555555775FFFF77F555555570000000555555555777777755}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object mp: TEdit
    Left = 332
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = mot_passe
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 616
    Width = 0
    Height = 17
    TabOrder = 11
  end
  object Edit8: TEdit
    Left = 304
    Top = 184
    Width = 681
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object source: TEdit
    Left = 373
    Top = 311
    Width = 567
    Height = 21
    TabOrder = 13
    Text = ' '
  end
  object dest: TEdit
    Left = 373
    Top = 336
    Width = 566
    Height = 21
    TabOrder = 14
  end
  object go: TBitBtn
    Left = 224
    Top = 360
    Width = 72
    Height = 33
    Caption = 'Go'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = goClick
  end
  object Edit9: TEdit
    Left = 120
    Top = 133
    Width = 697
    Height = 21
    TabOrder = 16
    Text = 
      'gbak -v -B -user SYSDBA -password masterkey pc-salah:e:\chapitre' +
      '_delphi\dB_INTERBASE\gf.fdb i:\chapitre_delphi\dB_INTERBASE\gf.g' +
      'bk'
    OnChange = mot_passe
  end
  object OpenDialog1: TOpenDialog
    InitialDir = 'E:\chapitre_delphi'
    Left = 584
    Top = 416
  end
end
