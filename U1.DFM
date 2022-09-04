object Form1: TForm1
  Left = 192
  Top = 107
  Width = 590
  Height = 434
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 56
    Top = 0
    Width = 8
    Height = 13
    Caption = 'l1'
  end
  object l2: TLabel
    Left = 64
    Top = 368
    Width = 8
    Height = 13
    Caption = 'l2'
  end
  object l3: TLabel
    Left = 304
    Top = 0
    Width = 8
    Height = 13
    Caption = 'l3'
  end
  object l4: TLabel
    Left = 256
    Top = 352
    Width = 8
    Height = 13
    Caption = 'l4'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 16
    Width = 217
    Height = 161
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 200
    Width = 217
    Height = 153
    DataSource = Ds2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 376
    Top = 352
    Width = 130
    Height = 25
    Caption = 'Transfert fichier mandat'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid3: TDBGrid
    Left = 232
    Top = 16
    Width = 265
    Height = 161
    DataSource = ds11
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid4: TDBGrid
    Left = 224
    Top = 200
    Width = 321
    Height = 145
    DataSource = ds22
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 384
    Top = 381
    Width = 130
    Height = 25
    Caption = 'Transfert fichier ligne'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 368
    Width = 75
    Height = 25
    Caption = 'date'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'gf'
    FieldDefs = <
      item
        Name = 'Gestion'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Chapitre'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Article'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANDAT'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Date'
        DataType = ftDate
      end
      item
        Name = 'Structure'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Engagement'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Obesrvation'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'Table1Index1'
      end>
    StoreDefs = True
    TableName = 'mandat.DB'
    Left = 512
    Top = 8
  end
  object ds1: TDataSource
    DataSet = Table1
    Left = 544
    Top = 8
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'gf_dbase'
    DefaultIndex = False
    IndexFiles.Strings = (
      'MANDAT.NDX')
    IndexName = 'MANDAT.NDX'
    TableName = 'MANDAT.DBF'
    Left = 488
    Top = 192
  end
  object Ds2: TDataSource
    DataSet = Table2
    Left = 552
    Top = 304
  end
  object Table11: TTable
    Active = True
    DatabaseName = 'gf'
    DefaultIndex = False
    TableName = 'lignes.DB'
    Left = 512
    Top = 72
  end
  object ds11: TDataSource
    DataSet = Table11
    Left = 544
    Top = 72
  end
  object Table22: TTable
    Active = True
    DatabaseName = 'gf_dbase'
    IndexFiles.Strings = (
      'LIGNE.NDX')
    IndexName = 'LIGNE.NDX'
    MasterSource = Ds2
    TableName = 'LIGNE.DBF'
    Left = 544
    Top = 200
  end
  object ds22: TDataSource
    DataSet = Table22
    Left = 552
    Top = 272
  end
end
