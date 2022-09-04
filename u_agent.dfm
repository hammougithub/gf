object f_agent: Tf_agent
  Left = 0
  Top = 0
  Caption = 'f_agent'
  ClientHeight = 736
  ClientWidth = 1202
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = on_create
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 202
    Height = 16
    Caption = 'Fichier du personnel  Comptabilit'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 423
    Width = 121
    Height = 16
    Caption = 'Fichier du personnel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 405
    Top = 681
    Width = 28
    Height = 16
    Caption = 'Adm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 236
    Top = 683
    Width = 86
    Height = 16
    Caption = 'Pr'#233'nom(en Ar)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 1
    Top = 684
    Width = 157
    Height = 16
    Caption = 'Recherche par nom(en Ar)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 0
    Top = 657
    Width = 146
    Height = 16
    Caption = 'Recherche par matricule'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 30
    Width = 1186
    Height = 363
    Color = clSkyBlue
    DataSource = f_dm1.ds_employes
    DrawingStyle = gdsGradient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 399
    Width = 576
    Height = 18
    DataSource = f_dm1.ds_employes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 1
  end
  object DBNavigator2: TDBNavigator
    Left = 487
    Top = 652
    Width = 432
    Height = 18
    DataSource = f_dm.ds_agent
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 2
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 445
    Width = 943
    Height = 201
    Color = clSkyBlue
    DataSource = f_dm.ds_agent
    DrawingStyle = gdsGradient
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REGION'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADM'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APC'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRENOMA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRENOM'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE_ACTUEL'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_ACTUELLE'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXE'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_N'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIEU_N'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE_ENF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE_CHA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIVEAU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODE_DIPLOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIPLOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_REC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_SOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIF_SOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUATION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ECHELON_ACTUEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_DERNIER_ECHELON'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_FONCTION_ACTUELLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE_REC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_REC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE1ER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_ACTUELLE_VISA_DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_ACTUELLE_VISA_NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARRETE_NOM_GRADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARRETE_TIT_GRADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARRETE_NOM_FONCTION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_ARRETE_NOM_FONCTION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_ARRETE_NOM_GRADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_ARRETE_TIT_GRADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_SS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANCIENNETE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_NIVEAU_ACTUELLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_NIVEAU_ACTUE_VISA_DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_NIVEAU_ACTUE_VISA_NUM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_TEL_FIXE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_TEL_MOBILE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERVICE_MILIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_GRADE_ACTUEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE_ACTUEL_VISA_NOMIN_DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE_ACTUEL_VISA_TITUL_DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE_ACTUEL_VISA_NUMERO_TITUL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE_ACTUEL_VISA_NUMERO_NOMIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_NIVEAU_ACTUELLE_NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION_NIVEAU_ACTUELLE_DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE_ACTUEL_VISA_NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE_ACTUEL_VISA_DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIEU_N_F'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UTILISATEUR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_MAJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRESUME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STAGIAIRE'
        Visible = True
      end>
  end
  object mat: TEdit
    Left = 153
    Top = 657
    Width = 48
    Height = 21
    Color = clSkyBlue
    TabOrder = 4
  end
  object adm: TEdit
    Left = 437
    Top = 680
    Width = 38
    Height = 21
    Color = clSkyBlue
    TabOrder = 5
    Text = ' '
  end
  object prename: TEdit
    Left = 324
    Top = 680
    Width = 76
    Height = 21
    Color = clSkyBlue
    TabOrder = 6
    Text = ' '
  end
  object name: TEdit
    Left = 164
    Top = 680
    Width = 69
    Height = 21
    Color = clSkyBlue
    TabOrder = 7
  end
  object DBGrid6: TDBGrid
    Left = 957
    Top = 445
    Width = 237
    Height = 201
    Color = clSkyBlue
    DataSource = f_dm.ds_adm
    DrawingStyle = gdsGradient
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REGION'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODE_ADM'
        Title.Caption = 'ADM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMA'
        Visible = True
      end>
  end
  object DBNavigator7: TDBNavigator
    Left = 974
    Top = 652
    Width = 220
    Height = 18
    DataSource = f_dm.ds_adm
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Kind = dbnHorizontal
    TabOrder = 9
  end
end
