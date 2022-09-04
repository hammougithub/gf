object f_etats_consommation: Tf_etats_consommation
  Left = 0
  Top = 0
  Caption = 'Edition Etats Consommation'
  ClientHeight = 396
  ClientWidth = 1211
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 26
    Top = 160
    Width = 465
    Height = 39
    Caption = 'E T A T   A R T I C L E   P O U R   U N    A G E N T'
    OnClick = pp
    OnDblClick = pp
  end
  object SpeedButton7: TSpeedButton
    Left = 26
    Top = 300
    Width = 465
    Height = 37
    Caption = 'F  I  N'
    OnClick = SpeedButton7Click
  end
  object SpeedButton5: TSpeedButton
    Left = 26
    Top = 265
    Width = 465
    Height = 37
  end
  object SpeedButton4: TSpeedButton
    Left = 26
    Top = 230
    Width = 465
    Height = 37
  end
  object SpeedButton3: TSpeedButton
    Left = 26
    Top = 197
    Width = 465
    Height = 35
  end
  object SpeedButton1: TSpeedButton
    Left = 26
    Top = 91
    Width = 465
    Height = 39
    Caption = 
      'E T A T   A R T I C L E   T O U T    B U R E A U   T O U T   A G' +
      ' E N T'
    OnClick = Etat_par_bureau
    OnDblClick = etat_par_agent
  end
  object SpeedButton6: TSpeedButton
    Left = 26
    Top = 126
    Width = 465
    Height = 39
    Caption = 'E T A T   A R T I C L E    P O U R   U N    B U R E A U'
    OnClick = Parbureau1Click
    OnDblClick = Parbureau1Click
  end
end
