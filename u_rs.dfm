object F_rs: TF_rs
  Left = 8
  Top = 11
  Width = 1005
  Height = 723
  Caption = 'Requette SQL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = -43
    Width = 77
    Height = 16
    Caption = 'Requete SQl'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 77
    Height = 16
    Caption = 'Requete SQl'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object t1: TRichEdit
    Left = 6
    Top = 22
    Width = 737
    Height = 81
    Color = clSkyBlue
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 151
    Width = 976
    Height = 509
    Color = clSkyBlue
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 664
    Width = 225
    Height = 18
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 6
    Top = 106
    Width = 169
    Height = 37
    Caption = 'Executer la requette'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF7DA4BF6496B76496B76496B76496B76496B76496B76496
      B76496B76496B76496B76496B76496B76496B76496B76496B76496B76496B764
      96B76496B76496B76496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8EB0C596C6DB4BC3F54BC3F54BC3F54BC3F54BC3F54BC3F54BC3
      F54BC3F54BC3F54BC3F54BC3F54BC3F54BC3F54BC3F54BC3F54BC3F54BC3F54B
      C3F54BC3F54BC3F562ABD06496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8EB0C598D9F66FCEF76FC8EE70C1E36FC1E36EC1E36DC0E36CC0
      E36CC0E26BC0E26ABFE269BFE269BFE268BFE267BEE266BEE265BEE265BEE264
      BDE263BDE24BC3F54BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8DAFC499DAF770CEF7B49C8C988270806D59806D59806D59806D
      59806D59806D59806D59806D59806D59806D59806D59806D59806D59806D5980
      6D59806D5963BDE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8DB0C499DAF770CEF7B49C8CFDF9F8FCF8F6FCF7F5FBF6F4FBF5
      F2FAF3F0F9F1EEF9F1EEF9F1EDF9F0ECF8EFEBF8EEE9F8EDE8F7ECE7F7ECE6F7
      ECE6806D5964BDE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8DAFC499DAF771CEF7B49C8CFDFBF9FDF9F8FCF8F6FCF7F5F6F1
      F1D5D1E5D6D0DEF0E9E6F9F0EDF9F1EDF9F0ECF8EFEBF8EEE9F8EDE8F7ECE7F7
      ECE6806D5965BEE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8CAEC499DAF772CFF7B49C8CFEFCFAFDFBF9FDF9F8F7F3F3C7C6
      E43644C16E78CFC9C5D8F2EBE8F9F1EEF9F1EDF9F0ECF8EFEBF8EEE9F8EDE8F7
      ECE7806D5965BEE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8CAEC499DAF773CFF7B49C8CFEFDFCFEFCFAF8F6F6C7C6E53644
      C14762F1455CE96D76CECEC9D9F4EDE9F9F1EEF9F1EDF9F0ECF8EFEBF8EEE9F8
      EDE8806D5966BEE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8BAEC49ADAF774CFF7B49C8CFEFEFDFAF9FACBCCE63644C13F53
      EA6277FB5268F93D4CDD6D74CBDCD5DCF6EEEBFAF2EFF9F1EDF9F0ECF8EFEBF8
      EEE9806D5967BEE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8BAEC39ADBF774CFF7B9A394FFFFFED3D5EC3644C13C49E15D6B
      F1A3AFFFA3AFFF4A5BF13B49D57980CDEAE2DFF6EFEBFAF2EFF9F1EDF9F0ECF8
      EFEB806D5968BFE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8AAEC39ADBF774CFF7B9A395FFFFFF586AE03C49E25865EDA3AF
      FF5668DF5D71E0A3AFFF4355EE414ED58F93D0EFE7E2F8F1EDFAF2EFF9F1EDF9
      F0EC806D5969BFE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8AADC39CDCF874CFF7B9A495FFFFFFF3F1F55769DFA3AFFF5668
      DFF3F1F5FDFBF96D7FE3A3AFFF4659EB4C59CAA4A5D3EEE7E5F8F1EEFAF2EFF9
      F1ED806D5969BFE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF89ADC29CDBF874CFF7BAA596FFFFFFFDFDFFF3F1F55668DFF2F3
      F8FEFDFCFEFCFAFDFBF98695E7A3AFFF4B5DE95E68CEBFBDD7F2EBE8F9F2EFFA
      F2EF806D596ABFE24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF8AADC39DDCF874CFF7BAA597FFFFFFFFFFFFFEFEFEFDFEFFFFFF
      FEFEFEFDFEFDFCFEFCFAFDFBF99FAAEBA3AFFF495AE77078D3D1CCDBF6EEEBFA
      F3F0806D596BC0E24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF89ACC29DDDF874CFF7BAA697FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFEFDFEFDFCFEFCFAFDFBF9B8C0EF6C7BED4858E38187D6DED8DFF8
      F0ED806D596CC0E24BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF88ACC29EDDF974CFF7BBA698FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFDFEFDFCFEFCFAFDFBF9C8CDF26875E44A58D0999CD2EA
      E4E4806D596CC0E34BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF87ABC19FDDF9A4DFF9BBA798FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFEFEFDFEFDFCFEFCFAFDFBF9C8CDF26470D65864CFDD
      D8E0806D596DC0E34BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF87ABC1C1E9FB53C0E7D2C5BCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFEFDFCFEFCFAFDFBF9C8CDF27882DFE4
      E1EA806D596EC1E34BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFB0C7D6C1EAFB5FACE3D3C6BDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFEFDFCFEFCFAFDFBF9FDF9F8FC
      F8F6806D596FC1E34BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      5FACE333D5E1B0C7D533D5E12BE1F74FC0EAFFFFFF33D5E15FACE3F1F0EEEBE9
      E6EBE9E7ECEAE8ECEAE8EDEBE9EDECE9EEECE9EDECE9EEECE9EFEBE8EEEBE8FD
      F9F8806D5970C1E34BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      33D5E15FACE34EBEE24FC0EA38F3FF4FC0EA4DC2E75FACE333D5E1B2ADA68A82
      778A82778A82778A82778A82778A82778A82778A82778A82778A8277D1CBC5FD
      FBF998827070C1E34BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF4FC0EA2BE1F75BFFF97FFFFA5EFFF92BE1F74FC0EAFFFFFFEBE6DBEBE6
      DBEAE4D8E9E0D2E7DCCDE6D8C8E5D4C2E3CFBDE2CBB7E0C7B2E0C6B08A8277B4
      9C8CB49C8C70C9EE4BC3F56496B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      4FC0EA33D5E159FFF9A5FEFFCFFDFFABFFFC5EFFF933D5E14FC0EAFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE6D8C8E5D4C2E3CFBDE2CBB7E0C7B28A827771
      CEF770CEF770CEF74BC3F56496B7FF00FFFF00FFFF00FFFF00FF53C0E75FACE3
      2BE1F736EEFF78FFFACCFDFFD8FEFFCFFDFF7FFFFA38F3FF2BE1F75FACE353C0
      E7BCB6AEFFFFFF6C94AD84A9BFE7DCCD877D74999084B6B0A3B6B0A3B0BFBE9F
      DEFA9FDEF99EDDF975B2CA7AABC6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      33D5E133D5E155FFF9A2FFFBCCFDFFA5FEFF5BFFF933D5E133D5E1AFC6D5AFC7
      D58A8277FFFFFF516F816C94ADE9E0D28A807786ABC086ABC087AAC187AAC187
      ABC188ABC187ABC287ABC2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF4FC0EA2BE1F755FFF978FFFA59FFF92BE1F74FC0EAFF00FFFF00FFFF00
      FFAEA599D1C9C1FFFFFFFFFFFF8A8277A8A095FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      33D5E15FACE353C0E74FC0EA36EEFF4FC0EA50C7EC5FACE333D5E1FF00FFFF00
      FFD1C9C1BCB5ABB6B0A3ABA293A8A095D1C9C1FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      5FACE333D5E1FF00FF33D5E12BE1F74FC0EAFF00FF33D5E15FACE3FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF5FACE3FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF53C0E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object DataSource1: TDataSource
    DataSet = r2
    Left = 872
    Top = 80
  end
  object r2: TIBQuery
    Database = f_dm.gf_ib
    Transaction = f_dm.gf_IBT1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 872
    Top = 32
  end
end
