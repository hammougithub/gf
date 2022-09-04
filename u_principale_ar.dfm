object f_principale_ar: Tf_principale_ar
  Left = 0
  Top = 0
  Caption = 'f_principale_ar'
  ClientHeight = 410
  ClientWidth = 1258
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = on_activate
  OnClose = quiter
  OnCloseQuery = FormCloseQuery
  OnCreate = on_create
  OnShow = AVoirlanneedegestion
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1143
    Top = 72
    Width = 81
    Height = 24
    Caption = #1587#1600#1600#1606#1600#1600#1577' '#1575#1604#1573#1583#1575#1585#1577
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object dat: TLabel
    Left = 1056
    Top = 29
    Width = 19
    Height = 13
    Caption = 'dat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object GESTION: TEdit
    Left = 1056
    Top = 72
    Width = 59
    Height = 28
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = '2010'
    OnChange = filtrer
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 25
    Height = 25
    Caption = 'Fr'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ydate: TMaskEdit
    Left = 302
    Top = 307
    Width = 91
    Height = 24
    Color = clWhite
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 2
    Text = '01/  /    '
    Visible = False
  end
  object xdate: TMaskEdit
    Left = 304
    Top = 273
    Width = 92
    Height = 24
    Color = clWhite
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 3
    Text = '  /  /    '
    Visible = False
  end
  object ZDATE: TMaskEdit
    Left = 302
    Top = 359
    Width = 83
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
    Visible = False
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 424
    Top = 16
    object TABLES1: TMenuItem
      Caption = ' '#1575#1604#1600#1580#1600#1583#1575#1608#1604
      object FOURNISSEUR1: TMenuItem
        Caption = #1575#1604#1605#1608#1585#1583#1608#1606
        OnClick = FOURNISSEUR1Click
      end
      object CHAPITRE1: TMenuItem
        Caption = #1575#1604#1601#1589#1608#1604
        OnClick = CHAPITRE1Click
      end
      object Adminstration1: TMenuItem
        Caption = #1575#1604#1575#1583#1575#1585#1577
        OnClick = Adminstration1Click
      end
      object TYPEDEPENSE1: TMenuItem
        Caption = #1606#1608#1593' '#1575#1604#1605#1589#1575#1585#1610#1601
      end
      object BAREMEDESFRAIS1: TMenuItem
        Caption = #1580#1583#1608#1604' '#1575#1604#1585#1587#1608#1605
      end
      object PARAMETRESMISSION1: TMenuItem
        Caption = #1605#1593#1604#1605#1575#1578' '#1575#1604#1605#1607#1605#1577
      end
      object PARAMETERS1: TMenuItem
        Caption = #1575#1604#1605#1593#1604#1605#1575#1578
      end
      object AGENTS1: TMenuItem
        Caption = #1575#1604#1593#1605#1575#1604
      end
      object GRADE1: TMenuItem
        Caption = #1575#1604#1583#1585#1580#1575#1578
      end
      object FONCTION1: TMenuItem
        Caption = #1575#1604#1608#1592#1575#1574#1601
      end
      object MOIS1: TMenuItem
        Caption = #1575#1604#1588#1607#1608#1585
      end
      object LIEU1: TMenuItem
        Caption = #1605#1603#1575#1606
      end
      object SERVICE1: TMenuItem
        Caption = #1575#1604#1605#1589#1575#1604#1581
      end
    end
    object CREDITSAFFECTES1: TMenuItem
      Caption = '  '#1575#1604#1575#1593#1578#1605#1575#1583#1575#1578' '#1575#1604#1605#1582#1589#1589#1577
      object MAJ9: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1585
      end
      object DEPENSESANNULEES2: TMenuItem
        Caption = #1575#1604#1605#1589#1575#1585#1610#1601' '#1575#1604#1605#1604#1594#1575#1577
      end
    end
    object FACTURES1: TMenuItem
      Caption = '  '#1601#1575#1578#1608#1585#1577'  '
      object MAJ7: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1585
      end
      object LISTEDESFACTURESDUNFOURNISSEUR1: TMenuItem
        Caption = #1602#1575#1574#1605#1577' '#1575#1604#1601#1608#1575#1578#1610#1585' '#1605#1606' '#1605#1608#1585#1583
      end
    end
    object CONVENTION1: TMenuItem
      Caption = '  '#1573#1578#1601#1575#1602#1610#1577
      object Misejours1: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1585
      end
    end
    object BONDECOMMANDE1: TMenuItem
      Caption = '  '#1571#1605#1585' '#1588#1585#1575#1569
      object MAJ1: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1585
      end
      object Edition3: TMenuItem
        Caption = #1578#1581#1585#1610#1585
      end
    end
    object MANDATS1: TMenuItem
      Caption = '  '#1575#1604#1578#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1586#1575#1605
      object MAJ3: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1585
      end
      object EDITION1: TMenuItem
        Caption = #1578#1581#1585#1610#1585'(Us Std Fanfold OU Pli'#233' std us)'
      end
      object CONSUL_eng: TMenuItem
        Caption = #1575#1587#1578#1588#1575#1585#1577' & '#1578#1581#1602#1602
      end
      object ENGAGEMENTCREDITS1: TMenuItem
        Caption = #1575#1604#1578#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1586#1575#1605' ---> '#1575#1593#1578#1605#1575#1583#1575#1578
        Visible = False
      end
      object LISTEDESENGAGEMENTSDUNFOURNISSEUR1: TMenuItem
        Caption = #1602#1575#1574#1605#1577' '#1575#1604#1578#1586#1575#1605#1575#1578' '#1575#1604#1605#1608#1585#1583
      end
    end
    object MANDAT1: TMenuItem
      Caption = '  '#1581#1600#1600#1600#1600#1608#1575#1604#1600#1600#1600#1600#1600#1600#1600#1577
      object MAJ4: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1585
      end
      object REIMPUTATION1: TMenuItem
        Caption = #1573#1587#1578#1585#1580#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1593
      end
      object EDITION2: TMenuItem
        Caption = #1578#1581#1585#1610#1600#1600#1600#1585' (14,17 x 11 puces)'
      end
      object AVISDEVIREMENT1: TMenuItem
        Caption = #1575#1588#1593#1600#1575#1585' '#1576#1575#1604#1583#1601#1593' (11,24 x 6 pouces)'
      end
      object FichierAvisdefirement1: TMenuItem
        Caption = #1605#1604#1600#1600#1601' '#1575#1588#1593#1575#1585' '#1576#1575#1604#1583#1601#1593
      end
      object ETATDEVIREMENT1: TMenuItem
        Caption = #1602#1600#1600#1575#1574#1605#1577' '#1575#1604#1583#1601#1600#1600#1593'(listing 11pouce80cl)'
      end
      object Consultation1: TMenuItem
        Caption = #1575#1587#1578#1588#1575#1585#1577' & '#1578#1581#1602#1602
      end
      object JOURNAL1: TMenuItem
        Caption = #1580#1600#1600#1608#1585#1606#1575#1604
      end
      object LISTEDEMANDATDUNFOURNISSEUR1: TMenuItem
        Caption = #1602#1575#1574#1605#1577' '#1575#1604#1581#1608#1604#1575#1578' '#1575#1604#1605#1608#1585#1583
      end
    end
    object MISSION1: TMenuItem
      Caption = '  '#1571#1605#1600#1600#1600#1585' '#1576#1605#1600#1600#1600#1607#1605#1600#1600#1600#1600#1600#1577' '
      object MAJ5: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1585
      end
      object CALCULETEDITION1: TMenuItem
        Caption = #1575#1604#1581#1587#1575#1576' '#1608#1575#1604#1578#1581#1585#1610#1585
      end
    end
    object CONSONMMA1: TMenuItem
      Caption = '  '#1575#1587#1578#1607#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1604#1575#1603#1575#1578
      object MAJ8: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1585
        OnClick = MAJ8Click
      end
      object DESIGNATION1: TMenuItem
        Caption = ' '#1580#1583#1608#1604' '#1575#1604#1578#1593#1610#1610#1606#1600#1600#1600#1600#1600#1600#1575#1578
        OnClick = DESIGNATION1Click
      end
      object EDITIONETAT1: TMenuItem
        Caption = #1578#1581#1585#1610#1600#1600#1600#1600#1600#1600#1600#1600#1585#1575#1578
        OnClick = EDITIONETAT1Click
      end
      object VERIFIERDESIGNATION1: TMenuItem
        Caption = #1578#1581#1602#1610#1600#1600#1600#1600#1602' '#1575#1604#1578#1593#1610#1610#1600#1600#1600#1600#1600#1606#1575#1578
      end
    end
    object COMPTABILITE1: TMenuItem
      Caption = '  '#1575#1604#1605#1581#1600#1600#1600#1600#1600#1575#1587#1576#1577
      object Maj6: TMenuItem
        Caption = #1578#1594#1610#1610#1600#1600#1600#1600#1585
      end
      object Donnes1: TMenuItem
        Caption = #1605#1593#1591#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578' '#1575#1604#1575#1601#1585#1575#1583
      end
    end
    object ETATS1: TMenuItem
      Caption = '  '#1578#1581#1585#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1585#1575#1578
      object SITUATIONDESCREDITS1: TMenuItem
        Caption = 'SITUATION DES CREDITS (Letter 8 1/2 x11 pouces) '
        Enabled = False
      end
      object SITUATIONDESCREDITSPARARTICLE1: TMenuItem
        Caption = 'SITUATION  DES CREDITS PAR ARTICLE DES TWs'
        Enabled = False
      end
      object SITUATIONDESCREDITSPARARTICLEDSETW1: TMenuItem
        Caption = 'SITUATION  DES CREDITS PAR ARTICLE DES TCS'
        Enabled = False
      end
      object SITUATIONDESCREDITSPARARTICLEDSETWsETTCs1: TMenuItem
        Caption = 'SITUATION  DES CREDITS PAR ARTICLE DES TWs  ET TCs'
        Enabled = False
      end
      object ETATDESDEPENSESEXECUTEES1: TMenuItem
        Caption = 'ETAT DES DEPENSES EXECUTEES'
        Enabled = False
      end
      object COMPTEADMINISTRATIVETABLEAUN31: TMenuItem
        Caption = 'COMPTE ADMINISTRATIF TABLEAU N'#176' 1'
        Enabled = False
      end
      object COMPTEADMINISTRATIFTABLEAUN31: TMenuItem
        Caption = 'COMPTE ADMINISTRATIF TABLEAU N'#176' 3'
        Enabled = False
      end
      object NOMBREDEMANDATPARCHAPITREPARSTRUCTURE1: TMenuItem
        Caption = 'NOMBRE DE MANDATS PAR CHAPITRE PAR STRUCTURE'
        Enabled = False
      end
    end
    object OUTILS1: TMenuItem
      Caption = '  '#1571#1583#1608#1575#1578
      object Parametres1: TMenuItem
        Caption = #1575#1604#1573#1593#1583#1575#1583#1575#1578
        Visible = False
      end
      object Sauvegarde1: TMenuItem
        Caption = #1581#1601#1592' '#1608' '#1575#1587#1578#1585#1580#1575#1593' '#1575#1604#1576#1610#1575#1606#1575#1578
      end
      object RequetteSQL1: TMenuItem
        Caption = ' SQL'
      end
      object ouslespanneauxdeconfig1: TMenuItem
        Caption = #1590#1576#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1591
      end
      object Priphriquesetimprimantes1: TMenuItem
        Caption = #1575#1604#1591#1575#1576#1593#1575#1578' '#1608#1575#1604#1571#1580#1607#1586#1577' '#1575#1604#1591#1585#1601#1610#1577
      end
      object RedmarrgeSpooler1: TMenuItem
        Caption = #1571#1593#1583' '#1578#1588#1594#1610#1604' Printer Spooler'
      end
      object Services1: TMenuItem
        Caption = #1582#1583#1605#1575#1578
        Visible = False
      end
      object RsolutionEcran1: TMenuItem
        Caption = #1583#1602#1577' '#1575#1604#1588#1575#1588#1577
      end
      object Utilisateur1: TMenuItem
        Caption = #1575#1604#1605#1587#1578#1582#1583#1605#1608#1606
      end
    end
    object Aide1: TMenuItem
      Caption = '  '#1588#1600#1600#1600#1600#1585#1581
      object Apropos1: TMenuItem
        Caption = #1576#1582#1600#1600#1589#1600#1600#1608#1589
      end
      object Aide2: TMenuItem
        Caption = #1575#1593#1600#1600#1600#1600#1575#1606#1577
      end
    end
    object Dpanage1: TMenuItem
      Caption = '  '#1578#1600#1600#1600#1600#1589#1581#1610#1600#1600#1581
    end
    object RECONNECT: TMenuItem
      Caption = '  '#1575#1593#1600#1600#1600#1600#1600#1575#1583#1577' '#1601#1578#1600#1600#1581' '
    end
    object QUITER1: TMenuItem
      Caption = '  '#1575#1606#1578#1607#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1569
      OnClick = QUITER1Click
    end
  end
end
