object f_qr2fr: Tf_qr2fr
  Left = 0
  Top = 0
  Caption = 'Qr2Fr'
  ClientHeight = 334
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 48
    Width = 60
    Height = 13
    Caption = 'conv.Source'
  end
  object Label2: TLabel
    Left = 180
    Top = 107
    Width = 59
    Height = 13
    Caption = 'conv.Target'
  end
  object Button1: TButton
    Left = 66
    Top = 232
    Width = 145
    Height = 41
    Caption = 'qr62fr6'
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 26
    Top = 69
    Width = 127
    Height = 33
    Caption = 'ConverterQr2Fr'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 240
    Top = 48
    Width = 201
    Height = 21
    TabOrder = 2
    Text = 'fs_mission'
  end
  object Edit2: TEdit
    Left = 240
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 456
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 592
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44340.675554421300000000
    ReportOptions.LastChange = 44340.675554421300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 520
    Top = 96
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 592
    Top = 128
  end
end
