object F_GRADE: TF_GRADE
  Left = 0
  Top = 0
  Caption = 'GRADE'
  ClientHeight = 760
  ClientWidth = 1323
  Color = clSilver
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1323
    Height = 760
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 48
    ExplicitWidth = 1105
    ExplicitHeight = 553
    object Panel2: TPanel
      Left = 1
      Top = 28
      Width = 920
      Height = 699
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      ExplicitLeft = 56
      ExplicitTop = 38
      ExplicitWidth = 185
      ExplicitHeight = 363
      object DBGrid3: TDBGrid
        Left = 1
        Top = 1
        Width = 918
        Height = 697
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.ds_grade
        DrawingStyle = gdsClassic
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRADEA'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SECTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTICLE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORDRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INDICE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TYPE_PERS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE_MAJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UTILISATEUR'
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 921
      Top = 28
      Width = 401
      Height = 699
      Align = alRight
      Caption = 'Panel3'
      TabOrder = 1
      ExplicitLeft = 792
      ExplicitHeight = 692
      object DBGrid4: TDBGrid
        Left = 1
        Top = 1
        Width = 399
        Height = 697
        Align = alClient
        Color = clSkyBlue
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1321
      Height = 27
      Align = alTop
      TabOrder = 2
      ExplicitLeft = 40
      ExplicitTop = 0
      ExplicitWidth = 1049
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 919
        Height = 25
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 41
        ExplicitTop = 0
        ExplicitWidth = 185
        ExplicitHeight = 41
        object Label9: TLabel
          Left = 1
          Top = 1
          Width = 134
          Height = 23
          Align = alLeft
          Caption = 'TABLE DES GRADES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitLeft = 8
          ExplicitTop = 8
          ExplicitHeight = 16
        end
      end
      object Panel6: TPanel
        Left = 920
        Top = 1
        Width = 400
        Height = 25
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 791
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 234
          Height = 23
          Align = alLeft
          Caption = 'TABLE DES GRADES COMPTABILITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitLeft = -49
          ExplicitTop = 8
          ExplicitHeight = 16
        end
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 727
      Width = 1321
      Height = 32
      Align = alBottom
      TabOrder = 3
      ExplicitTop = 655
      ExplicitWidth = 1192
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 919
        Height = 30
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 32
        ExplicitTop = -1
        ExplicitWidth = 473
        ExplicitHeight = 41
        object SpeedButton4: TSpeedButton
          Left = 765
          Top = 1
          Width = 153
          Height = 28
          Align = alRight
          Caption = 'Copier les donn'#233'es'
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C20E0000C20E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF696968666666868887FF00FFFF00FFFF00FFFF00FF
            FF00FF4F8D55497F4E42724836603D36603D36603D36603D36603D36603D3660
            3D36603D36603D36603D36603D36603D36603D36603D36603D36603D36603D36
            603D36603D38603E6A6C68747373A9A6A7BEBABB888B8AFF00FFFF00FFACAEAC
            8D8581837B7760606099C29D97C09B95BF9993BD9791BC958FBB938CB9918AB7
            8F88B68D86B48A84B38982B18680B0847EAE827CAD807AAC7E78AA7C75A87A73
            A77872A576738573676767A9A6A7D1CDCF9A9797888484FF00FFFF00FF8D8581
            C9C6C4FFFFFFA49B969BC39F99C29D97C09B95BF9993BD9791BC958FBB938CB9
            918AB78F88B68D86B48A84B38982B18680B0847EAE827CAD807AAC7E78AA7C75
            A87A799478646563A3A0A1D1CDCFB5B2B39B9598979797FF00FFFF00FFFF00FF
            FF00FF5392589FC6A39DC5A19BC39F99C29D97C09B95BF9993BD9791BC958FBB
            938CB9918AB78F88B68D86B48A84B38982B18680B0847EAE827CAD807AAC7E78
            A87B6C6E6A868584D0CCCEBCBABA999395959292FF00FFFF00FFFF00FFFF00FF
            FF00FF539258A1C8A59FC6A39DC5A19BC39F99C29D97C09B95BF9993BD9791BC
            958FBB938CB8918AB68E88B58C86B28984B18882AF8580AF837EAD827DA87F73
            83726A6A6AD2CED0CBC7C9918D8E989496FF00FFFF00FFFF00FFFF00FFACAEAC
            8D8581837B77606060A1C8A59FC6A39DC5A19BC39F99C29D97C09B95BF9993BD
            9791BA948EB7908BB38D89B08A87AF8885AC8584AC8582AC8380AC827D947B63
            6564A9A6A7D0CCCE8E8A89989395FF00FFFF00FFFF00FFFF00FFFF00FF8D8581
            C9C6C4FFFFFFA49B96A3C9A7A1C8A59FC6A39DC5A19BC39F99C29D97BF9A94BC
            9791B2918893827B7B7473706D706D6B716F6B787A72808E7B82A37F696B66A8
            A4A4CDCACBA4A0A29B95983A613FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258A8CCABA6CBA9A3C9A7A1C8A59FC6A39DC5A19BC29E98BE9A92A6
            8D787672827F789F988CBBB19EC7BAA6B8AE9C9994877A777274716D74716CC4
            BFBFA39F9E9892947AA97C36603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AACEADA8CCABA6CBA9A3C9A7A1C8A59FC6A39CC29E8C92857874
            72AAA495CAC7AFD9C8B2E4C8B3E5C9B4E5C9B4E4C8B3DAC6B09C9188716E6B93
            8E8A8F88887EA87E7CAD8036603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
            8D8581837B77606060AACEADA8CCABA6CBA9A3C9A7A0C6A498AC957C7975C2BD
            A8CEC9B1D2C6ACD9C6ACE1D1BDE5D8C5E5D4C1E2CFBAE5C9B4E3C8B2C6B3A672
            6F6C829C7D80AB817EAC8136603DFF00FFFF00FFFF00FFFF00FFFF00FF8D8581
            C9C6C4FFFFFFA49B96ACCFAFAACEADA8CCABA6CAA8A1C0A17E7B77B1AB9CD0C4
            ABD8BDA2DCBEA3DDBFA4E9D7C6EBDED0E5EADFEBDECFE7D9C8E3CBB7E5C9B49E
            998C77757082A88180B08437603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AED1B1AED1B1ACCFAFAACEADA8CBAA96A08F8E8982CEC0A6D7B7
            9ADCBBA0DDBFA4E4CDB7ECE1D2E6EBE0E5EBE0E5EADFEADFD0EADECEE3CBB5D9
            C6B17A777282967E82B18636603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AED1B1AED1B1AED1B1ACCFAFA9CCAC86847FB2AC9CD2AF8FD8B4
            96DCBA9DDEBFA5EDE2D3E7ECE1E6EBE1E6EBE0E5EBE0ECE1D3ECE0D2E5D1BEE3
            C9B39895887C817584B38936603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
            8D8581837B77606060AED1B1AED1B1AED1B1ABCDAE807C79C3B6A0D2AC8AD9B4
            93DBB698E2C6AFEFE3D6E7ECE1E7ECE1E6EBE1E6EBE0E5EBE0EDE2D4E9D6C4E5
            C9B4B4B19F75736E86B48A36603DFF00FFFF00FFFF00FFFF00FFFF00FF8D8581
            C9C6C4FFFFFFA49B96AED1B1AED1B1AED1B1ADCFB07F7B78CAB599D2A986D8B0
            8FD9AE8DDDBA9DEBDDCCEFE6D7EEE6D7E7ECE1E6EBE1E6EBE0E5EBE0EAD9C8E5
            C9B4C2BEA974716E88B68D37603EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AED1B1AED1B1AED1B1AED1B148814E837F7B9098749D966DA49C
            74A59E76A6A37CA5A37EA8A985AEB798B0BFA3A4BEA3A4BEA3A4BEA3B0BA9EE4
            C8B3B7B3A17876728AB78F37603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AED1B1AED1B1AED1B1AED1B148814E898882B6A493C2B28EC7B6
            94C9BA98D2CFB5D2D2B8CBC2A5C9BFA1CCC3A6D2D1B9D5D7C0D6DBC5B1BEA1E1
            CFBC9D998D8085798CB99137603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
            8D8581837B77606060AED1B1AED1B1AED1B147814E9EA697938C85C2B08CC5B4
            90C8B895D3D1B8D4E3D2D8DDC9D2D2B8CBC2A5C9BFA1C9BFA1C9BFA1A5A37ED0
            B3977F7B768D9D878EB89137603DFF00FFFF00FFFF00FFFF00FFFF00FF8D8581
            C9C6C4FFFFFFA49B96AED1B1AED1B1AED1B147814EACCAAD84807DB69880C2B0
            8DC7B491D2D0B7D5E4D2D4E3D2D8DFCAD8DDC9D4D6BED3D2B9D0CDB3A1A783A4
            96887E7B7692B69291BB9436603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AED1B1AED1B1AED1B1AED1B147814EAED1B1A7B9A4837E7ABDAD
            8CC2B08DCFD2BBD2E3D0D5E4D2D4E3D2D4E3D2D4E3D2D6DCC7DFDBC8AEB19B78
            757293AE9194BD9793BD9736603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AED1B1AED1B1AED1B1AED1B147814EAED1B1AED0B09A9F92807B
            79B4A99AD2D0BBD7D4C0D0D8C1D2D9C3D2D9C3CFD6C0D2D0BBA8A4987875728F
            9C8A98BF9A97BF9A95BF9936603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
            8D8581837B77606060AED1B1AED1B1AED1B147814EAED1B1AED1B1AED0B0A7B9
            A4827F7B8D8A84ACA79CC2BDADC8C5B2BFBBABA39F9484817C807D795F835E9C
            C39F9BC29E99C29D97C09B36603DFF00FFFF00FFFF00FFFF00FFFF00FF8D8581
            C9C6C4FFFFFFA49B96AED1B1AED1B1AED1B147814EAED1B1AED1B1AED1B1AED1
            B1ACCAAD9EA6978988827D79767976737A777588888198A392A1C2A248814E9F
            C6A39DC5A19BC39F99C29D36603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AED1B1AED1B1AED1B1AED1B147814E47814E47814E47814E4781
            4E47814E47814E48814E48814E48814E48814E48814E48814E47814E47814EA1
            C8A59FC6A39DC5A19BC39F36603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF539258AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1
            B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1ACCFAFAACEADA8CCABA6CBA9A3
            C9A7A1C8A59FC6A39DC5A136603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
            8D8581837B77606060AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1
            B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1ACCFAFAACEADA8CCABA6
            CBA9A3C9A7A1C8A59FC6A3427248FF00FFFF00FFFF00FFFF00FFFF00FF8D8581
            C9C6C4FFFFFFA49B96AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1
            B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1ACCFAFAACEADA8
            CCABA6CBA9A3C9A7A1C8A5497F4EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF518F56518F56518F56518F565190565290575290575290575290575291
            5752915752915752915753915853925853925853925853925853925853925853
            9258539258539258539258539258FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = SpeedButton4Click
          ExplicitLeft = 389
          ExplicitTop = 9
          ExplicitHeight = 32
        end
        object DBNavigator3: TDBNavigator
          Left = 1
          Top = 1
          Width = 308
          Height = 28
          DataSource = f_dm.ds_grade
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 23
          ExplicitHeight = 18
        end
      end
      object Panel9: TPanel
        Left = 920
        Top = 1
        Width = 400
        Height = 30
        Align = alRight
        Caption = 'Panel9'
        TabOrder = 1
        ExplicitLeft = 791
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 350
          Height = 28
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Align = alLeft
          TabOrder = 0
        end
      end
    end
  end
  object SimpleDataSet_grade: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from grade order by code'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 384
    Top = 8
  end
  object del: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'delete from grade')
    SQLConnection = f_dm.connect_db_gf
    Left = 448
    Top = 8
  end
end
