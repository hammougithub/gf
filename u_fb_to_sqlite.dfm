object f_fb_to_sqlite: Tf_fb_to_sqlite
  Left = 0
  Top = 0
  Caption = 'f_fb_to_sqlite'
  ClientHeight = 763
  ClientWidth = 1357
  Color = clBtnFace
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
    Left = 296
    Top = 301
    Width = 13
    Height = 13
    Caption = 'BD'
  end
  object Label8: TLabel
    Left = 284
    Top = 320
    Width = 44
    Height = 13
    Caption = 'SD CARD'
  end
  object Button2: TButton
    Left = 894
    Top = 8
    Width = 75
    Height = 25
    Caption = 'vider'
    TabOrder = 0
  end
  object Button3: TButton
    Left = 975
    Top = 8
    Width = 75
    Height = 25
    Caption = 'R'#233'ouvrir'
    TabOrder = 1
  end
  object DBNavigator4: TDBNavigator
    Left = 3
    Top = 742
    Width = 552
    Height = 21
    DataSource = f_dm.ds_agent
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 2
  end
  object Button8: TButton
    Left = 1152
    Top = 6
    Width = 132
    Height = 25
    Caption = 'Ouvrir la DB Sqlite'
    TabOrder = 3
  end
  object Button9: TButton
    Left = 1056
    Top = 8
    Width = 75
    Height = 25
    Caption = 'FB To SQL'
    TabOrder = 4
  end
  object Button12: TButton
    Left = 416
    Top = 226
    Width = 75
    Height = 25
    Caption = 'Button12'
    TabOrder = 5
    OnClick = Button12Click
  end
  object Edit1: TEdit
    Left = 530
    Top = 226
    Width = 55
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object NavigatorBindSourceDB4: TBindNavigator
    Left = 672
    Top = 712
    Width = 240
    Height = 25
    Orientation = orHorizontal
    TabOrder = 7
  end
  object Button13: TButton
    Left = 607
    Top = 224
    Width = 75
    Height = 25
    Caption = 'fournisseur'
    TabOrder = 8
  end
  object Button14: TButton
    Left = 296
    Top = 272
    Width = 231
    Height = 25
    Caption = 'Copier BD dans le SD CARD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button14Click
  end
  object Edit2: TEdit
    Left = 334
    Top = 296
    Width = 193
    Height = 21
    TabOrder = 10
    Text = 'GF.DB'
  end
  object Edit3: TEdit
    Left = 334
    Top = 316
    Width = 193
    Height = 21
    TabOrder = 11
    Text = 'Ce PC\Galaxy J3 Pro\Card\'
  end
  object Button1: TButton
    Left = 574
    Top = 272
    Width = 125
    Height = 41
    Caption = '--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 528
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 220
    Top = 65525
  end
  object BindingsList2: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 316
  end
  object FDQuery_del_agent: TFDQuery
    SQL.Strings = (
      'delete from agent')
    Left = 1064
    Top = 592
  end
  object FDQuery_agent: TFDQuery
    CachedUpdates = True
    SQL.Strings = (
      'select * from agent order by region,adm,mat')
    Left = 888
    Top = 608
  end
end
