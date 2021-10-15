object Form1: TForm1
  Left = 387
  Top = 220
  Width = 718
  Height = 394
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1086#1074' '#1080#1079' '#1085#1072#1073#1086#1088#1086#1074' '#1076#1072#1085#1085#1099#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 112
    Top = 144
    Width = 47
    Height = 18
    Caption = #1047#1072#1087#1088#1086#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 299
    Top = 0
    Width = 108
    Height = 18
    Caption = #1058#1072#1073#1083#1080#1094#1072' FIRMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid_1: TDBGrid
    Left = 8
    Top = 24
    Width = 681
    Height = 113
    DataSource = DM1.DataSource_Firma1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'KOD_F'
        ReadOnly = False
        Title.Caption = #1050#1086#1076' '#1092#1080#1088#1084#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_F'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADRESS'
        Title.Caption = #1040#1076#1088#1077#1089#1089
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
      end
      item
        Expanded = False
        FieldName = 'kv'
        Title.Caption = #1047#1072' '#1082#1074#1072#1088#1090#1072#1083
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nl'
        Title.Caption = #1053#1072#1083#1086#1075
        Visible = True
      end>
  end
  object DBGrid_2: TDBGrid
    Left = 8
    Top = 168
    Width = 345
    Height = 177
    DataSource = DM1.DataSource_FN
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NAME_F'
        Title.Caption = #1060#1080#1088#1084#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = #1042#1088#1077#1084#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLATA'
        Title.Caption = #1055#1083#1072#1090#1077#1078
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 360
    Top = 168
    Width = 329
    Height = 177
    Caption = #1054#1090#1095#1077#1090
    TabOrder = 2
    object Button_2: TButton
      Left = 17
      Top = 136
      Width = 295
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090
      TabOrder = 3
      OnClick = Button_2Click
    end
    object dblkcbbNAME_F: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 169
      Height = 21
      DataField = 'NAME_F'
      Enabled = False
      KeyField = 'NAME_F'
      ListField = 'NAME_F'
      ListFieldIndex = 1
      ListSource = DM1.DataSource_Firma1
      TabOrder = 0
      OnClick = dblkcbbNAME_FClick
    end
    object rb1: TRadioButton
      Left = 16
      Top = 56
      Width = 265
      Height = 17
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090' '#1076#1083#1103' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1092#1080#1088#1084#1099
      TabOrder = 1
      OnClick = rb1Click
      OnEnter = rb1Enter
    end
    object rb2: TRadioButton
      Left = 16
      Top = 88
      Width = 273
      Height = 17
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1083#1085#1099#1081' '#1086#1090#1095#1077#1090' ('#1088#1072#1079#1084#1077#1088' '#1085#1072#1083#1086#1075#1072')'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rb2Click
      OnEnter = rb2Enter
    end
  end
end
