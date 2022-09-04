object f_fournisseur: Tf_fournisseur
  Left = 0
  Top = 0
  Caption = 'FOURNISSSEUR'
  ClientHeight = 710
  ClientWidth = 1306
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = oncreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 1306
    Height = 656
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = clSkyBlue
    DataSource = f_dm.DataSource_fournisseur
    DrawingStyle = gdsGradient
    ParentBiDiMode = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BENIFICIAIRE'
        Title.Alignment = taCenter
        Title.Caption = 'code'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ARTISANT'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOM'
        Title.Alignment = taCenter
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'entreprise'
        Title.Alignment = taCenter
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BANQUE'
        Title.Alignment = taCenter
        Width = 133
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COMPTE'
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RC'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NF'
        Title.Alignment = taCenter
        Title.Caption = 'Numero fiscal'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'EMAIL'
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Ai'
        Title.Alignment = taCenter
        Title.Caption = 'Article imp.'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIB'
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ADRESSE'
        Title.Alignment = taCenter
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TELEPHONE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOM_AVIS_DE_VIREMENT'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UTILISATEUR'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATE_MAJ'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1306
    Height = 29
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object Label7: TLabel
      Left = 862
      Top = 7
      Width = 85
      Height = 16
      Caption = 'AI Fournisseur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 677
      Top = 8
      Width = 92
      Height = 16
      Caption = 'RC Fournisseur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 471
      Top = 8
      Width = 91
      Height = 16
      Caption = 'NF Fournisseur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 300
      Top = 8
      Width = 43
      Height = 16
      Caption = 'Nom F.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 193
      Top = 8
      Width = 47
      Height = 16
      Caption = 'Code F.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 140
      Height = 16
      Caption = 'Fichier Fournisseur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object ai: TEdit
      Left = 957
      Top = 6
      Width = 90
      Height = 21
      Color = clSkyBlue
      TabOrder = 0
      OnChange = seek4
    end
    object rc: TEdit
      Left = 776
      Top = 6
      Width = 79
      Height = 21
      Color = clSkyBlue
      TabOrder = 1
      OnChange = seek3
    end
    object nf: TEdit
      Left = 570
      Top = 7
      Width = 90
      Height = 21
      Color = clSkyBlue
      TabOrder = 2
      OnChange = seek2
    end
    object nom: TEdit
      Left = 350
      Top = 6
      Width = 115
      Height = 21
      Color = clSkyBlue
      TabOrder = 3
      OnChange = seek1
    end
    object mat: TEdit
      Left = 246
      Top = 7
      Width = 48
      Height = 21
      Color = clSkyBlue
      TabOrder = 4
      OnChange = seek
    end
    object Button1: TButton
      Left = 1280
      Top = 1
      Width = 25
      Height = 27
      Align = alRight
      Caption = #1593#1585#1576#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
      ExplicitLeft = 1286
      ExplicitTop = -4
      ExplicitHeight = 31
    end
    object Button2: TButton
      Left = 1246
      Top = 1
      Width = 34
      Height = 27
      Align = alRight
      Caption = 'Latin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
      ExplicitLeft = 351
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 685
    Width = 1306
    Height = 25
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 2
    object Panel3: TPanel
      Left = 186
      Top = 1
      Width = 1119
      Height = 23
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      ExplicitLeft = 1
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 431
        Height = 21
        Align = alLeft
        Caption = 
          'Saisir un caract'#232're dans le champ Artisant si le fournisseur est' +
          ' un artisant '
        Color = clActiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 687
        ExplicitHeight = 16
      end
      object DBNavigator1: TDBNavigator
        Left = 432
        Top = 1
        Width = 686
        Height = 21
        DataSource = f_dm.DataSource_fournisseur
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitWidth = 456
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 23
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 1120
      object fin: TButton
        Left = 1
        Top = 1
        Width = 75
        Height = 21
        Align = alLeft
        Caption = 'Fin'
        TabOrder = 0
        OnClick = fin1
        ExplicitLeft = 109
      end
    end
  end
end
