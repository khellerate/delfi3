object Form1: TForm1
  Left = 315
  Top = 108
  Width = 998
  Height = 302
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button_1: TButton
    Left = 454
    Top = 182
    Width = 145
    Height = 25
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072' 1'
    TabOrder = 3
    OnClick = Button_1Click
  end
  object DBGrid_1: TDBGrid
    Left = 429
    Top = 14
    Width = 545
    Height = 120
    DataSource = DM.DataSource_Firma
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'KOD_F'
        Title.Caption = #1050#1086#1076' '#1092#1080#1088#1084#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_F'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADRESS'
        Title.Caption = #1040#1076#1088#1077#1089
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JAN'
        Title.Caption = #1071#1085#1074#1072#1088#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FEV'
        Title.Caption = #1060#1077#1074#1088#1072#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MART'
        Title.Caption = #1052#1072#1088#1090
        Visible = True
      end>
  end
  object DBGrid_2: TDBGrid
    Left = 623
    Top = 134
    Width = 346
    Height = 120
    DataSource = DM.DataSource_Postavki
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'N_nakladnoi'
        Title.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1083#1086#1075#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_postavki'
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080'i'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kod_F'
        Title.Caption = #1050#1086#1076' '#1092#1080#1088#1084#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Summa'
        Title.Caption = #1057#1091#1084#1084#1072
        Visible = True
      end>
  end
  object DBGrid_3: TDBGrid
    Left = 12
    Top = 14
    Width = 417
    Height = 241
    DataSource = DM.DataSource_all
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Name_F'
        Title.Caption = #1060#1080#1088#1084#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_Nakladnoi'
        Title.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1083#1086#1075#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_postavki'
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080#1101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Summa'
        Title.Caption = #1057#1091#1084#1084#1072
        Visible = True
      end>
  end
  object Button_2: TButton
    Left = 456
    Top = 216
    Width = 145
    Height = 25
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072' 2'
    TabOrder = 4
    OnClick = Button_2Click
  end
end
