object f_obs: Tf_obs
  Left = -4
  Top = -4
  Caption = 'Observations'
  ClientHeight = 708
  ClientWidth = 1016
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
    Left = 136
    Top = 16
    Width = 449
    Height = 16
    Caption = #227#220#220#220#220#220#225#199#205#220#220#217#220#220#220#220#220#199#202' '#199#225#220#220#227#220#220#213#220#225#220#205#220#220#220#220#220#220#220#220#220#220#220#201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 64
    Width = 607
    Height = 21
    DataField = 'LIGNE1'
    DataSource = f_dm.ds_obs_ib
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 0
    Top = 88
    Width = 607
    Height = 21
    DataField = 'Ligne2'
    DataSource = f_dm.ds_obs_ib
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 1
    Top = 111
    Width = 605
    Height = 21
    DataField = 'Ligne3'
    DataSource = f_dm.ds_obs_ib
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 2
    Top = 135
    Width = 604
    Height = 21
    DataField = 'Ligne4'
    DataSource = f_dm.ds_obs_ib
    TabOrder = 3
  end
  object Button1: TButton
    Left = 16
    Top = 184
    Width = 75
    Height = 25
    Caption = #228#220#229#220#220#220#199#237#220#220#201
    TabOrder = 4
    OnClick = Button1Click
  end
end
