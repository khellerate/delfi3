object Form5: TForm5
  Left = 160
  Top = 305
  BorderStyle = bsDialog
  Caption = #1058#1072#1073#1083#1080#1095#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072' '#1079#1072#1087#1088#1086#1089#1072
  ClientHeight = 203
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 8
    Top = 8
    Width = 1009
    Height = 177
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Spets.Kod_Spec'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Spec'
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tab_N'
        Title.Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Color = clInactiveCaptionText
        Expanded = False
        FieldName = 'Fam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Title.Color = clBackground
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Names'
        Title.Caption = #1048#1084#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Otch'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_Data'
        Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kadrs_drozdov.Kod_Spec'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Adres'
        Title.Caption = #1040#1076#1088#1077#1089
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end>
  end
  object con_main: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\delf' +
      'i\Firma_drozdov.mdb;Mode=ReadWrite;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 400
  end
  object qry1: TADOQuery
    Active = True
    Connection = con_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Spets,Kadrs_drozdov'
      'WHERE Spets.Kod_Spec = Kadrs_drozdov.Kod_Spec;')
    Left = 128
    Top = 408
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 176
    Top = 408
  end
end
