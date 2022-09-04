object f_mandat1: Tf_mandat1
  Left = 4
  Top = 37
  Width = 799
  Height = 534
  Caption = 'f_mandat1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = ACTIVER
  OnShow = ACTIVER
  PixelsPerInch = 96
  TextHeight = 13
  object panel1: TPanel
    Left = -2
    Top = 2
    Width = 365
    Height = 176
    Caption = ' '
    Color = clAqua
    TabOrder = 0
    object Label3: TLabel
      Left = 4
      Top = 26
      Width = 50
      Height = 13
      Caption = 'N'#176' mandat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Date: TLabel
      Left = 131
      Top = 4
      Width = 23
      Height = 13
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Chapitre: TLabel
      Left = 7
      Top = 45
      Width = 39
      Height = 13
      Caption = 'Chapitre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Article: TLabel
      Left = 129
      Top = 43
      Width = 32
      Height = 13
      Caption = 'Article.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Structure: TLabel
      Left = 7
      Top = 69
      Width = 43
      Height = 13
      Caption = 'Structure'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 94
      Top = 70
      Width = 74
      Height = 13
      Caption = 'N'#176' engagement'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 7
      Top = 90
      Width = 57
      Height = 13
      Caption = 'Observation'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 4
      Width = 36
      Height = 13
      Caption = 'Gestion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 121
      Top = 20
      Width = 186
      Height = 13
      Caption = 'Double clic pour prendre la date du jour'
    end
    object vgestion: TMaskEdit
      Left = 46
      Top = 2
      Width = 60
      Height = 21
      Color = clSilver
      ReadOnly = True
      TabOrder = 0
      Text = ' '
    end
    object vdate: TMaskEdit
      Left = 160
      Top = 2
      Width = 66
      Height = 21
      Hint = 'Double clic pour prendre la date du jour'
      Color = clSilver
      EditMask = '00/00/0000'
      MaxLength = 10
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '  /  /    '
      OnDblClick = vdateChange
    end
    object vchapitre: TEdit
      Left = 58
      Top = 45
      Width = 53
      Height = 21
      Color = clSilver
      TabOrder = 3
      Text = ' '
    end
    object varticle: TEdit
      Left = 164
      Top = 42
      Width = 40
      Height = 21
      Color = clSilver
      TabOrder = 4
      Text = ' '
    end
    object vstructure: TEdit
      Left = 60
      Top = 67
      Width = 25
      Height = 21
      Color = clSilver
      TabOrder = 5
      Text = ' '
    end
    object vengagement: TEdit
      Left = 173
      Top = 66
      Width = 56
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clSilver
      ParentBiDiMode = False
      TabOrder = 6
      Text = ' '
    end
    object vobservation: TEdit
      Left = 68
      Top = 89
      Width = 294
      Height = 21
      Color = clSilver
      TabOrder = 7
      Text = ' '
    end
    object bt1: TBitBtn
      Left = 6
      Top = 152
      Width = 89
      Height = 20
      Caption = 'Enregistrer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = bt1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object bt4: TBitBtn
      Left = 299
      Top = 152
      Width = 57
      Height = 20
      Caption = 'F i n '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = bt4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
    end
    object bt2: TBitBtn
      Left = 95
      Top = 152
      Width = 113
      Height = 20
      Caption = 'Modifier les lignes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = bt2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      NumGlyphs = 2
    end
    object bt3: TBitBtn
      Left = 208
      Top = 152
      Width = 91
      Height = 20
      Caption = 'Annuler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = bt3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
        FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
        FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
        0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
        F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
        FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
        0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
        003333337FFFFFFF773333330000000003333333777777777333}
      NumGlyphs = 2
    end
    object vmandat: TEdit
      Left = 58
      Top = 24
      Width = 56
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clSilver
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      Text = ' '
    end
    object somme1: TBitBtn
      Left = 3
      Top = 110
      Width = 289
      Height = 19
      Caption = 'Cliquer -->Somme des mandats de meme numero et chapitre '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = somme1Click
    end
    object SOMMe: TBitBtn
      Left = 2
      Top = 131
      Width = 299
      Height = 18
      Caption = 'Cliquer -->Somme des mdts de m numero et chapitre  et article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = SOMMeClick
    end
    object som1: TMaskEdit
      Left = 292
      Top = 110
      Width = 69
      Height = 21
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      Text = ' '
    end
    object som: TEdit
      Left = 301
      Top = 131
      Width = 61
      Height = 21
      Color = clScrollBar
      TabOrder = 15
      Text = ' '
    end
  end
  object Panel2: TPanel
    Left = 391
    Top = 183
    Width = 393
    Height = 317
    Caption = ' '
    Color = clAqua
    TabOrder = 2
    object Label6: TLabel
      Left = 9
      Top = 2
      Width = 201
      Height = 13
      Caption = 'Fichier Chapitre, Doubl clic pour prendre ...'
    end
    object Label7: TLabel
      Left = 10
      Top = 160
      Width = 213
      Height = 13
      Caption = 'Fichier B'#233'nificiaire, Doubl clic pour prendre ...'
    end
    object Label10: TLabel
      Left = 214
      Top = 3
      Width = 152
      Height = 13
      Caption = 'Fichier administration double clic'
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 173
      Width = 337
      Height = 118
      Color = clSilver
      DataSource = F_principale.Ds_fournisseur
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = prendre_four
      Columns = <
        item
          Expanded = False
          FieldName = 'CODE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nom'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANQUE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Adresse'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telephone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lib'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Rc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Artisant'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 6
      Top = 296
      Width = 224
      Height = 18
      DataSource = F_principale.Ds_fournisseur
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      Left = 6
      Top = 141
      Width = 128
      Height = 18
      DataSource = F_principale.ds_chapitre
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
    end
    object DBGrid2: TDBGrid
      Left = 4
      Top = 17
      Width = 168
      Height = 121
      Color = clSilver
      DataSource = f_dm.ds_chapitre_ib
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = prendre_chap
      Columns = <
        item
          Expanded = False
          FieldName = 'CHAPITRE'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARTICLE'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIBELLE_ARABE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Type'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIBELLE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIBELLE_CHAPITRE'
          Visible = True
        end>
    end
    object DBNavigator4: TDBNavigator
      Left = 178
      Top = 140
      Width = 132
      Height = 18
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object DBGrid4: TDBGrid
      Left = 176
      Top = 18
      Width = 191
      Height = 119
      Color = clSilver
      DataSource = f_dm.Ds_adm_ib
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = prendre_str
    end
  end
  object Panel3: TPanel
    Left = 1
    Top = 180
    Width = 386
    Height = 313
    Caption = 'Panel3'
    Color = clTeal
    TabOrder = 1
    object StringGrid1: TStringGrid
      Left = 2
      Top = 6
      Width = 379
      Height = 297
      Color = clSilver
      ColCount = 4
      DefaultRowHeight = 16
      DragMode = dmAutomatic
      FixedColor = clAqua
      FixedCols = 2
      RowCount = 50
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      RowHeights = (
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16)
    end
    object StringGrid2: TStringGrid
      Left = 3
      Top = 213
      Width = 379
      Height = 121
      Color = clSilver
      ColCount = 4
      DefaultRowHeight = 16
      FixedColor = clAqua
      FixedCols = 2
      RowCount = 50
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    Left = 365
    Top = 1
    Width = 422
    Height = 178
    Caption = 'Panel4'
    Color = clAqua
    TabOrder = 3
    object Label4: TLabel
      Left = 168
      Top = 144
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object DBGrid3: TDBGrid
      Left = 2
      Top = 3
      Width = 255
      Height = 153
      Color = clSilver
      DataSource = f_dm.ds_mandat_ib
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Gestion'
          Title.Caption = 'Gest'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MANDAT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Chapitre'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Article'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dates'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Structure'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Engagement'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Observation'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Journal'
          Visible = True
        end>
    end
    object DBNavigator3: TDBNavigator
      Left = 56
      Top = 158
      Width = 120
      Height = 18
      DataSource = f_dm.ds_mandat_ib
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbRefresh]
      TabOrder = 1
    end
    object bt5: TBitBtn
      Left = 176
      Top = 158
      Width = 118
      Height = 18
      Caption = 'Modifier un mandat'
      TabOrder = 2
      OnClick = bt5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
    end
    object bt6: TBitBtn
      Left = 293
      Top = 158
      Width = 123
      Height = 18
      Caption = 'Supprimer 1 mandat'
      TabOrder = 3
      OnClick = bt6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object Edit1: TEdit
      Left = 0
      Top = 159
      Width = 54
      Height = 21
      Color = clSilver
      TabOrder = 4
      Text = ' '
      OnChange = CHERCHER_mandat
    end
    object DBGrid5: TDBGrid
      Left = 257
      Top = 3
      Width = 163
      Height = 153
      Color = clScrollBar
      DataSource = f_dm.ds_lignes_ib
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Ligne'
          Width = 12
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Benificiaire'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Montant'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Observation'
          Visible = True
        end>
    end
  end
  object del_mandat: TQuery
    DatabaseName = 'gf'
    SQL.Strings = (
      
        'delete  from mandat where gestion=:a and mandat=:b and chapitre=' +
        ':c and'
      'article=:d and dates=:e and structure=:f'
      ' ')
    Left = 298
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end>
  end
  object ib_select_lignes: TIBQuery
    Database = f_dm.gf_ib
    Transaction = f_dm.gf_IBT1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = f_dm.ds_lignes_ib
    SQL.Strings = (
      
        'select * from lignes where gestion=:a and mandat=:b and chapitre' +
        '=:c and'
      'article=:d and dates=:e and structure=:f'
      ' ')
    Left = 677
    Top = 49
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end>
  end
  object IB_del_lignes_mandat: TIBQuery
    Database = f_dm.gf_ib
    Transaction = f_dm.gf_IBT1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'delete  from lignes where gestion=:a and mandat=:b and chapitre=' +
        ':c and'
      'article=:d and dates=:e and structure=:f')
    Left = 661
    Top = 97
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end>
  end
  object ib_del_mandat: TIBQuery
    Database = f_dm.gf_ib
    Transaction = f_dm.gf_IBT1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = f_dm.ds_mandat_ib
    SQL.Strings = (
      
        'delete  from mandat where gestion=:a and mandat=:b and chapitre=' +
        ':c and'
      'article=:d and dates=:e and structure=:f')
    Left = 581
    Top = 81
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end>
  end
end
