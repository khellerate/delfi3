object Form2: TForm2
  Left = 846
  Top = 332
  BorderStyle = bsDialog
  Caption = #1058#1072#1073#1083#1080#1095#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1077#1081
  ClientHeight = 139
  ClientWidth = 339
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
    Width = 320
    Height = 120
    DataSource = DataSource_1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Kod_Spec'
        Title.Caption = #1050#1086#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Spec'
        Width = 84
        Visible = True
      end>
  end
  object ADOTable_1: TADOTable
    Active = True
    Connection = con_main
    CursorType = ctStatic
    TableName = 'Spets'
    Left = 120
    Top = 352
    object intgrfldADOTable_1Kod_Spec: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080#13#10
      FieldName = 'Kod_Spec'
    end
    object wdstrngfldADOTable_1Spec: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'Spec'
      Size = 25
    end
  end
  object con_main: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\delf' +
      'i\Firma_drozdov.mdb;Mode=ReadWrite;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 360
  end
  object DataSource_1: TDataSource
    DataSet = ADOTable_1
    Left = 176
    Top = 360
  end
end
