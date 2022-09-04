object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 468
  ClientWidth = 1246
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 21
    Width = 1257
    Height = 615
    Color = clSkyBlue
    DataSource = DataSource1
    DrawingStyle = gdsGradient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FORME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESIGNATION'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAMP'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIBELLEAR'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIBELLEFR'
        Width = 450
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    Left = 224
    Top = 344
  end
end
