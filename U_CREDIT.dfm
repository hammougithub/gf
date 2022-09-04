object F_credit: TF_credit
  Left = 15
  Top = 34
  Caption = 'MAJ DES CREDITS'
  ClientHeight = 713
  ClientWidth = 1235
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = oncreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1235
    Height = 713
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 762
      Height = 711
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 760
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 1
          Top = 24
          Width = 758
          Height = 16
          Align = alBottom
          Caption = 
            'Il faut engager tt les cr'#233'dits pour que l'#39#233'tat Engagement soit c' +
            'orrect'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 23
          ExplicitWidth = 392
        end
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 758
          Height = 16
          Align = alTop
          Caption = 'Fichier Cr'#233'dit (n:normal  p:plus  m:moins)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          ExplicitWidth = 288
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 683
        Width = 760
        Height = 27
        Align = alBottom
        TabOrder = 1
        object Label5: TLabel
          Left = 144
          Top = 25
          Width = 132
          Height = 16
          Caption = 'Cr'#233'dit du Chapitre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 416
          Height = 25
          DataSource = f_dm.ds_credit_ib
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
        end
        object pp: TEdit
          Left = 638
          Top = 1
          Width = 121
          Height = 25
          Align = alRight
          TabOrder = 1
          Text = 'pp'
          ExplicitHeight = 21
        end
      end
      object DBGrid4: TDBGrid
        Left = 1
        Top = 42
        Width = 760
        Height = 641
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_credit_ib
        DrawingStyle = gdsClassic
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CHAPITRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTICLE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CREDIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GESTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLUS_MOINS'
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
          end>
      end
    end
    object Panel3: TPanel
      Left = 763
      Top = 1
      Width = 471
      Height = 711
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 469
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 1
          Top = 24
          Width = 467
          Height = 16
          Align = alBottom
          Caption = 'Double Clic Pour Prendre  Le Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          ExplicitWidth = 249
        end
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 467
          Height = 16
          Align = alTop
          Caption = 'Fichier Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          ExplicitWidth = 103
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 683
        Width = 469
        Height = 27
        Align = alBottom
        TabOrder = 1
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 1
          Width = 232
          Height = 25
          DataSource = f_dm.ds_chapitre_ib
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          TabOrder = 0
        end
        object Button1: TButton
          Left = 263
          Top = 1
          Width = 96
          Height = 25
          Align = alRight
          Caption = 'fin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          OnClick = Button1Click
          ExplicitLeft = 372
        end
        object BitBtn1: TBitBtn
          Left = 359
          Top = 1
          Width = 109
          Height = 25
          Align = alRight
          Caption = 'Engagement'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn1Click
          ExplicitLeft = 650
        end
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 42
        Width = 469
        Height = 641
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_chapitre_ib
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = prendre_code
      end
    end
  end
  object q_cre_affec: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where chapitre=:x and gestion=:z and (plus_moins='#39'n'#39' or plus_moi' +
        'ns='#39'p'#39')')
    SQLConnection = f_dm.connect_db_gf
    Left = 352
    Top = 579
  end
  object q_enmoins: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      'where chapitre=:x  and plus_moins='#39'm'#39' and gestion=:z')
    SQLConnection = f_dm.connect_db_gf
    Left = 464
    Top = 563
  end
end
