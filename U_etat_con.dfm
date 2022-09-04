object f_etat_con: Tf_etat_con
  Left = 0
  Top = 0
  Caption = 'Etat_connexions'
  ClientHeight = 587
  ClientWidth = 945
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 146
    Height = 16
    Caption = 'Nom du hote serveur BD'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 47
    Width = 43
    Height = 16
    Caption = 'Ip local'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 179
    Top = 99
    Width = 102
    Height = 16
    Caption = 'client Indy actived'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 69
    Width = 481
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 336
    Top = 99
    Width = 137
    Height = 25
    Caption = 'Envoyer (Socket)'
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 179
    Top = 8
    Width = 102
    Height = 28
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'asrock'
  end
  object Edit3: TEdit
    Left = 287
    Top = 8
    Width = 102
    Height = 28
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 8
    Top = 96
    Width = 144
    Height = 25
    Caption = 'activer client et serveur '
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 57
    Top = 44
    Width = 102
    Height = 28
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Button3: TButton
    Left = 336
    Top = 130
    Width = 137
    Height = 25
    Caption = 'Envoyer (Indy)'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 645
    Top = 9
    Width = 209
    Height = 141
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
  object Button4: TButton
    Left = 8
    Top = 127
    Width = 144
    Height = 25
    Caption = 'D'#233'sactiver client et serveur '
    TabOrder = 8
    OnClick = DEsactiver
  end
  object Panel1: TPanel
    Left = 8
    Top = 156
    Width = 934
    Height = 428
    Caption = 'Panel1'
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 9
    object Label8: TLabel
      Left = 10
      Top = 14
      Width = 136
      Height = 13
      Caption = 'Remote Host  (destination) :'
      Layout = tlCenter
    end
    object Label9: TLabel
      Left = 228
      Top = 13
      Width = 64
      Height = 13
      Caption = 'Remote Port:'
      Layout = tlCenter
    end
    object Label10: TLabel
      Left = 351
      Top = 13
      Width = 51
      Height = 13
      Caption = 'Local Port:'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 13
      Top = 35
      Width = 80
      Height = 13
      Caption = 'Texte '#224' envoyer'
    end
    object Label3: TLabel
      Left = 472
      Top = 36
      Width = 52
      Height = 13
      Caption = 'Texte re'#231'u'
    end
    object edtRemoteHost: TEdit
      Left = 142
      Top = 9
      Width = 82
      Height = 21
      MaxLength = 32767
      TabOrder = 0
    end
    object edtRemotePort: TEdit
      Left = 293
      Top = 10
      Width = 52
      Height = 21
      MaxLength = 32767
      TabOrder = 1
      Text = '5000'
    end
    object edtLocalPort: TEdit
      Left = 406
      Top = 9
      Width = 52
      Height = 21
      MaxLength = 32767
      TabOrder = 2
      Text = '5000'
    end
    object btnActivateServer: TButton
      Left = 477
      Top = 3
      Width = 69
      Height = 27
      Caption = 'Activer'
      TabOrder = 3
    end
    object memRecv: TMemo
      Left = 473
      Top = 49
      Width = 457
      Height = 348
      TabOrder = 4
    end
    object btnSend: TButton
      Left = 10
      Top = 397
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 5
    end
    object memsend: TMemo
      Left = 10
      Top = 49
      Width = 461
      Height = 348
      TabOrder = 6
    end
  end
  object client: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 8080
    ReadTimeout = -1
    Left = 408
    Top = 40
  end
  object serveur: TIdTCPServer
    Bindings = <>
    DefaultPort = 8080
    Left = 448
    Top = 40
  end
end
