object Form3: TForm3
  Left = 580
  Top = 349
  BorderStyle = bsDialog
  Caption = #1058#1072#1073#1083#1080#1095#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  ClientHeight = 127
  ClientWidth = 718
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
    Top = 0
    Width = 700
    Height = 120
    DataSource = ds_1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Tab_N'
        Title.Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fam'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Names'
        Title.Caption = #1048#1084#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Otch'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_Data'
        Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kod_Spec'
        Title.Caption = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adres'
        Title.Caption = #1040#1076#1088#1077#1089
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
    Left = 496
    Top = 440
  end
  object tbl_1: TADOTable
    Active = True
    Connection = con_main
    CursorType = ctStatic
    TableName = 'Kadrs_drozdov'
    Left = 560
    Top = 432
  end
  object ds_1: TDataSource
    DataSet = tbl_1
    Left = 616
    Top = 440
  end
end
