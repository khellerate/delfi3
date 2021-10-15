object FEdit: TFEdit
  Left = 1057
  Top = 180
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088
  ClientHeight = 267
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object lbl2: TLabel
    Left = 8
    Top = 104
    Width = 49
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object lbl3: TLabel
    Left = 8
    Top = 152
    Width = 80
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object lbl4: TLabel
    Left = 144
    Top = 8
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object lbl5: TLabel
    Left = 144
    Top = 56
    Width = 78
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
  end
  object lbl6: TLabel
    Left = 144
    Top = 104
    Width = 89
    Height = 13
    Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
  end
  object dbedt1: TDBEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    DataField = 'Fam'
    DataSource = DMM.DataSource_kadrs
    TabOrder = 0
  end
  object dbedt2: TDBEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    DataField = 'Names'
    DataSource = DMM.DataSource_kadrs
    MaxLength = 15
    TabOrder = 2
  end
  object dbedt3: TDBEdit
    Left = 8
    Top = 120
    Width = 121
    Height = 21
    DataField = 'Otch'
    DataSource = DMM.DataSource_kadrs
    MaxLength = 15
    TabOrder = 4
  end
  object dbedt5: TDBEdit
    Left = 144
    Top = 24
    Width = 121
    Height = 21
    DataField = 'Adres'
    DataSource = DMM.DataSource_kadrs
    MaxLength = 15
    TabOrder = 1
  end
  object dbedt7: TDBEdit
    Left = 144
    Top = 120
    Width = 121
    Height = 21
    DataField = 'Tab_N'
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 5
  end
  object Button_ok: TButton
    Left = 8
    Top = 200
    Width = 257
    Height = 21
    Caption = #1055#1088#1080#1085#1103#1090#1100
    TabOrder = 7
    OnClick = Button_okClick
  end
  object Button_no: TButton
    Left = 8
    Top = 232
    Width = 257
    Height = 21
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 8
    OnClick = Button_noClick
  end
  object dblkcbbKod_Spec: TDBLookupComboBox
    Left = 144
    Top = 72
    Width = 121
    Height = 21
    DataField = 'Kod_Spec'
    DataSource = DMM.DataSource_kadrs
    KeyField = 'Kod_Spec'
    ListField = 'Spec'
    ListSource = DMM.DataSource_spets
    TabOrder = 3
  end
  object medt1: TMaskEdit
    Left = 8
    Top = 168
    Width = 120
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 6
    Text = '  .  .    '
  end
end
