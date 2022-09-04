object f_fb_sqlite: Tf_fb_sqlite
  Left = 0
  Top = 0
  Caption = 'f_fb_sqlite'
  ClientHeight = 803
  ClientWidth = 1389
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 658
    Top = 1
    Width = 161
    Height = 16
    Caption = 'Table Designation SQLITE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 111
    Height = 16
    Caption = 'Table Designation'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 310
    Top = 346
    Width = 171
    Height = 16
    Caption = 'Table des Quantit'#233's SQLITE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 960
    Top = 338
    Width = 164
    Height = 16
    Caption = 'Table Consommation sqlite'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 343
    Width = 141
    Height = 16
    Caption = 'Table des Quantit'#233's FB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 549
    Top = 338
    Width = 149
    Height = 16
    Caption = 'Table Consommation FB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 160
    Width = 129
    Height = 16
    Caption = 'Table Fournisseur FB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 555
    Width = 101
    Height = 16
    Caption = 'Table Agents FB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object NavigatorBindSourceDB1: TBindNavigator
    Left = 730
    Top = 151
    Width = 240
    Height = 25
    DataSource = BindSourceDB1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Orientation = orHorizontal
    TabOrder = 0
  end
  object StringGridBindSourceDB1: TStringGrid
    Left = 655
    Top = 23
    Width = 625
    Height = 122
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 1
    ColWidths = (
      64)
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 20
    Width = 577
    Height = 115
    Color = clSkyBlue
    DataSource = f_dm.Ds_designation
    DrawingStyle = gdsGradient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REF'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESIGNATION'
        Title.Alignment = taCenter
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prix'
        Title.Alignment = taCenter
        Title.Caption = 'Price'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNITE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_ACTUEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_CONSOMMEE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 99
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 591
    Top = 56
    Width = 59
    Height = 41
    Caption = '--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = des
  end
  object BindNavigator1: TBindNavigator
    Left = 8
    Top = 138
    Width = 240
    Height = 18
    Orientation = orHorizontal
    TabOrder = 4
  end
  object DBGrid5: TDBGrid
    Left = 8
    Top = 182
    Width = 409
    Height = 123
    Color = clSkyBlue
    DataSource = f_dm.DataSource_fournisseur
    DrawingStyle = gdsGradient
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BENIFICIAIRE'
        Title.Caption = 'code'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ARTISANT'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOM'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'entreprise'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BANQUE'
        Width = 133
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COMPTE'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RC'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NF'
        Title.Caption = 'Numero fiscal'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'EMAIL'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Ai'
        Title.Caption = 'Article imp.'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIB'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ADRESSE'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TELEPHONE'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOM_AVIS_DE_VIREMENT'
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
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 311
    Width = 240
    Height = 23
    DataSource = f_dm.Ds_designation
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 6
  end
  object StringGridBindSourceDB2: TStringGrid
    Left = 487
    Top = 182
    Width = 378
    Height = 107
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 7
  end
  object NavigatorBindSourceDB2: TBindNavigator
    Left = 487
    Top = 295
    Width = 240
    Height = 25
    DataSource = BindSourceDB2
    Orientation = orHorizontal
    TabOrder = 8
  end
  object Button2: TButton
    Left = 423
    Top = 216
    Width = 46
    Height = 41
    Caption = '--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = four
  end
  object DBGrid4: TDBGrid
    Left = 8
    Top = 363
    Width = 240
    Height = 161
    Color = clSkyBlue
    DataSource = f_dm.DataSource_desig_qt
    DrawingStyle = gdsGradient
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'R'#233'f'#233'rence'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QT'
        Title.Caption = 'Quantit'#233
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATES'
        Title.Caption = 'Date'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UTILISATEUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATE_MAJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = False
      end>
  end
  object DBGrid2: TDBGrid
    Left = 533
    Top = 360
    Width = 340
    Height = 161
    Color = clSkyBlue
    DataSource = f_dm.Ds_consommation
    DrawingStyle = gdsGradient
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REGION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ADM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESIGNATION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATES'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERVICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT'
        Title.Alignment = taCenter
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVATION'
        Title.Alignment = taCenter
        Width = 300
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 9
    Top = 530
    Width = 240
    Height = 18
    DataSource = f_dm.DataSource_desig_qt
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 12
  end
  object StringGridBindSourceDB3: TStringGrid
    Left = 307
    Top = 368
    Width = 206
    Height = 154
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 13
  end
  object BindNavigator2: TBindNavigator
    Left = 317
    Top = 528
    Width = 200
    Height = 21
    DataSource = BindSourceDB3
    Orientation = orHorizontal
    TabOrder = 14
  end
  object Button3: TButton
    Left = 250
    Top = 396
    Width = 51
    Height = 41
    Caption = '--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = qt
  end
  object DBNavigator3: TDBNavigator
    Left = 533
    Top = 527
    Width = 240
    Height = 23
    DataSource = f_dm.Ds_consommation
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 16
  end
  object Button4: TButton
    Left = 879
    Top = 386
    Width = 55
    Height = 41
    Caption = '--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = cons
  end
  object StringGridBindSourceDB4: TStringGrid
    Left = 960
    Top = 358
    Width = 320
    Height = 156
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 18
  end
  object NavigatorBindSourceDB4: TBindNavigator
    Left = 965
    Top = 516
    Width = 240
    Height = 25
    DataSource = BindSourceDB4
    Orientation = orHorizontal
    TabOrder = 19
  end
  object DBGrid3: TDBGrid
    Left = 10
    Top = 577
    Width = 621
    Height = 194
    Color = clSkyBlue
    DataSource = f_dm.ds_agent
    DrawingStyle = gdsGradient
    TabOrder = 20
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ADM'
        Title.Alignment = taCenter
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMA'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRENOMA'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM'
        Title.Alignment = taCenter
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRENOM'
        Title.Alignment = taCenter
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGION'
        Title.Alignment = taCenter
        Width = 30
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
        FieldName = 'APC'
        Width = 30
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
  object DBNavigator4: TDBNavigator
    Left = 9
    Top = 777
    Width = 240
    Height = 18
    DataSource = f_dm.ds_agent
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 21
  end
  object Button5: TButton
    Left = 637
    Top = 615
    Width = 51
    Height = 41
    Caption = '--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    OnClick = agent
  end
  object StringGridBindSourceDB5: TStringGrid
    Left = 693
    Top = 577
    Width = 688
    Height = 186
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 23
  end
  object NavigatorBindSourceDB5: TBindNavigator
    Left = 693
    Top = 769
    Width = 240
    Height = 25
    DataSource = BindSourceDB5
    Orientation = orHorizontal
    TabOrder = 24
  end
  object Button14: TButton
    Left = 871
    Top = 200
    Width = 231
    Height = 25
    Caption = 'Copier BD dans le SD CARD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
    OnClick = Button14Click
  end
  object Edit2: TEdit
    Left = 909
    Top = 224
    Width = 193
    Height = 21
    TabOrder = 26
    Text = 'GF.DB'
  end
  object Edit3: TEdit
    Left = 909
    Top = 244
    Width = 193
    Height = 21
    TabOrder = 27
    Text = 'Ce PC\Galaxy J3 Pro\Card\'
  end
  object Edit1: TEdit
    Left = 591
    Top = 103
    Width = 25
    Height = 21
    TabOrder = 28
  end
  object Edit4: TEdit
    Left = 624
    Top = 103
    Width = 25
    Height = 21
    TabOrder = 29
  end
  object Edit5: TEdit
    Left = 423
    Top = 263
    Width = 25
    Height = 21
    TabOrder = 30
  end
  object Edit6: TEdit
    Left = 456
    Top = 263
    Width = 25
    Height = 21
    TabOrder = 31
  end
  object Edit7: TEdit
    Left = 250
    Top = 439
    Width = 25
    Height = 21
    TabOrder = 32
  end
  object Edit8: TEdit
    Left = 276
    Top = 439
    Width = 25
    Height = 21
    TabOrder = 33
  end
  object Edit9: TEdit
    Left = 637
    Top = 657
    Width = 25
    Height = 21
    TabOrder = 34
  end
  object Edit10: TEdit
    Left = 663
    Top = 657
    Width = 25
    Height = 21
    TabOrder = 35
  end
  object Edit11: TEdit
    Left = 881
    Top = 433
    Width = 25
    Height = 21
    TabOrder = 36
  end
  object Edit12: TEdit
    Left = 908
    Top = 432
    Width = 25
    Height = 21
    TabOrder = 37
  end
  object Button6: TButton
    Left = 487
    Top = 161
    Width = 75
    Height = 22
    Caption = 'Open Table'
    TabOrder = 38
    OnClick = four1
  end
  object Button7: TButton
    Left = 560
    Top = 161
    Width = 75
    Height = 21
    Caption = 'Close table'
    TabOrder = 39
    OnClick = close1
  end
  object Button8: TButton
    Left = 920
    Top = 1
    Width = 75
    Height = 21
    Caption = 'Close table'
    TabOrder = 40
    OnClick = Button7Click
  end
  object Button9: TButton
    Left = 847
    Top = 1
    Width = 75
    Height = 22
    Caption = 'Open Table'
    TabOrder = 41
    OnClick = Button6Click
  end
  object Button10: TButton
    Left = 764
    Top = 556
    Width = 75
    Height = 21
    Caption = 'Close table'
    TabOrder = 42
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 691
    Top = 556
    Width = 75
    Height = 22
    Caption = 'Open Table'
    TabOrder = 43
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 217
    Top = 880
    Width = 45
    Height = 41
    Caption = '--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 44
    OnClick = agent
  end
  object FDQuery_des: TFDQuery
    CachedUpdates = True
    Connection = FDConnect_gf_sqlite
    SQL.Strings = (
      'select * from designation')
    Left = 944
    Top = 80
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery_des
    ScopeMappings = <>
    Left = 776
    Top = 64
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      GridControl = StringGridBindSourceDB1
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB2
      GridControl = StringGridBindSourceDB2
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB3
      GridControl = StringGridBindSourceDB3
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB4
      GridControl = StringGridBindSourceDB4
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB5
      GridControl = StringGridBindSourceDB5
      Columns = <>
    end
  end
  object FDQuery_del_des: TFDQuery
    Connection = FDConnect_gf_sqlite
    SQL.Strings = (
      'delete from designation')
    Left = 1032
    Top = 56
  end
  object FDConnect_gf_sqlite: TFDConnection
    Params.Strings = (
      'Database=h:\chapitre_delphi\db_sqlite\gf.db'
      'DriverID=SQLite')
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    Left = 1208
    Top = 64
  end
  object FDQuery_del_four: TFDQuery
    Connection = FDConnect_gf_sqlite
    SQL.Strings = (
      'delete from fournisseur')
    Left = 792
    Top = 219
  end
  object FDQuery_four: TFDQuery
    CachedUpdates = True
    Connection = FDConnect_gf_sqlite
    SQL.Strings = (
      'select * from fournisseur')
    Left = 672
    Top = 203
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDQuery_four
    ScopeMappings = <>
    Left = 720
    Top = 224
  end
  object FDQuery_del_qt: TFDQuery
    CachedUpdates = True
    Connection = FDConnect_gf_sqlite
    SQL.Strings = (
      'delete from designation')
    Left = 405
    Top = 384
  end
  object FDQuery_qt: TFDQuery
    CachedUpdates = True
    Connection = FDConnect_gf_sqlite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'select * from designation_qt'
      '')
    Left = 453
    Top = 392
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = FDQuery_qt
    ScopeMappings = <>
    Left = 448
    Top = 360
  end
  object FDQuery_cons: TFDQuery
    CachedUpdates = True
    Connection = FDConnect_gf_sqlite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'select * from CONSOMMATION')
    Left = 1048
    Top = 408
  end
  object FDQuery_del_cons: TFDQuery
    CachedUpdates = True
    Connection = FDConnect_gf_sqlite
    SQL.Strings = (
      'delete from designation')
    Left = 1152
    Top = 416
  end
  object BindSourceDB4: TBindSourceDB
    DataSet = FDQuery_cons
    ScopeMappings = <>
    Left = 1032
    Top = 384
  end
  object FDQuery_agent: TFDQuery
    CachedUpdates = True
    Connection = FDConnect_gf_sqlite
    SQL.Strings = (
      'select * from agent order by region,adm,mat')
    Left = 860
    Top = 566
  end
  object FDQuery_del_agent: TFDQuery
    Connection = FDConnect_gf_sqlite
    SQL.Strings = (
      'delete from agent')
    Left = 764
    Top = 558
  end
  object BindSourceDB5: TBindSourceDB
    DataSet = FDQuery_agent
    ScopeMappings = <>
    Left = 788
    Top = 590
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 528
    Top = 8
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'ALTER TABLE ADM_APC_GRADE_FONCTION_MISSION ADD '
      'categ_fonction Char(2)')
    SQLConnection = f_dm.connect_db_gf
    Left = 320
    Top = 128
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 432
    Top = 136
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 376
    Top = 144
  end
end
