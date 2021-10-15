object FTable: TFTable
  Left = 366
  Top = 306
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082' '#1080' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1079#1072#1087#1080#1089#1077#1081' '#1074' '#1085#1072#1073#1086#1088#1077' '#1076#1072#1085#1085#1099#1093' Table'
  ClientHeight = 345
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl5: TLabel
    Left = 104
    Top = 0
    Width = 97
    Height = 16
    Caption = #1058#1072#1073#1083#1080#1094#1072' Spets'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 440
    Top = 0
    Width = 97
    Height = 16
    Caption = #1058#1072#1073#1083#1080#1094#1072' Kadrs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rg2: TRadioGroup
    Left = 544
    Top = 272
    Width = 184
    Height = 64
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
    ItemIndex = 0
    Items.Strings = (
      #1042#1086#1079#1088#1072#1089#1090#1072#1085#1080#1077
      #1059#1073#1099#1074#1072#1085#1080#1077)
    TabOrder = 5
    OnClick = rg2Click
  end
  object rg1: TRadioGroup
    Left = 544
    Top = 176
    Width = 184
    Height = 88
    Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086
    ItemIndex = 0
    Items.Strings = (
      #1058#1072#1073' '#1085#1086#1084#1077#1088
      #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      #1060#1072#1084#1080#1083#1080#1103)
    TabOrder = 4
    OnClick = rg1Click
  end
  object knhjk: TDBGrid
    Left = 280
    Top = 24
    Width = 448
    Height = 136
    DataSource = DM.DataSource_all
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Tab_N'
        Title.Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081
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
        FieldName = 'Spec'
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_Data'
        Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Visible = True
      end>
  end
  object DBGrid_sotr: TDBGrid
    Left = 8
    Top = 24
    Width = 256
    Height = 137
    DataSource = DM.DataSource_spets
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
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 8
    Top = 176
    Width = 232
    Height = 160
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1090#1072#1073#1083#1080#1094#1077
    TabOrder = 2
    object bvl1: TBevel
      Left = 8
      Top = 32
      Width = 217
      Height = 50
      Shape = bsFrame
    end
    object bvl2: TBevel
      Left = 7
      Top = 88
      Width = 217
      Height = 50
      Shape = bsFrame
    end
    object Button_2: TButton
      Left = 72
      Top = 48
      Width = 145
      Height = 21
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1091
      TabOrder = 1
      OnClick = Button_2Click
    end
    object edt1: TEdit
      Left = 16
      Top = 48
      Width = 49
      Height = 21
      MaxLength = 4
      TabOrder = 0
      OnKeyPress = edt1KeyPress
    end
    object dtp1: TDateTimePicker
      Left = 16
      Top = 104
      Width = 81
      Height = 21
      Date = 44475.000000000000000000
      Time = 44475.000000000000000000
      TabOrder = 2
    end
    object Button_3: TButton
      Left = 104
      Top = 104
      Width = 112
      Height = 21
      Caption = #1055#1086' '#1076#1072#1090#1077' '#1088#1086#1078#1076#1077#1085#1080#1103
      TabOrder = 3
      OnClick = Button_3Click
    end
  end
  object grp2: TGroupBox
    Left = 248
    Top = 176
    Width = 288
    Height = 160
    Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' ('#1086#1090#1073#1086#1088')'
    TabOrder = 3
    object bvl3: TBevel
      Left = 8
      Top = 16
      Width = 273
      Height = 50
      Shape = bsFrame
    end
    object bvl4: TBevel
      Left = 8
      Top = 72
      Width = 273
      Height = 50
      Shape = bsFrame
    end
    object edt2: TEdit
      Left = 16
      Top = 32
      Width = 144
      Height = 21
      TabOrder = 0
    end
    object Button_1: TButton
      Left = 8
      Top = 128
      Width = 273
      Height = 21
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      TabOrder = 4
      OnClick = Button_1Click
    end
    object Button_4: TButton
      Left = 168
      Top = 32
      Width = 105
      Height = 21
      Caption = #1055#1086' '#1092#1072#1084#1080#1083#1080#1080
      TabOrder = 1
      OnClick = Button_4Click
    end
    object Button_5: TButton
      Left = 168
      Top = 88
      Width = 104
      Height = 21
      Caption = #1055#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      TabOrder = 3
      OnClick = Button_5Click
    end
    object dblkcbb1: TDBLookupComboBox
      Left = 16
      Top = 88
      Width = 144
      Height = 21
      KeyField = 'Spec'
      ListField = 'Spec'
      ListSource = DM.DataSource_spets
      TabOrder = 2
    end
  end
end
