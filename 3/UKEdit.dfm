object FKEdit: TFKEdit
  Left = 382
  Top = 250
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  ClientHeight = 313
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 0
    Top = 40
    Width = 705
    Height = 257
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Tab_N'
        Title.Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088#13#10
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
  object btn1: TButton
    Left = 8
    Top = 8
    Width = 241
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 264
    Top = 8
    Width = 169
    Height = 25
    Caption = #1059#1074#1086#1083#1080#1090#1100
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 448
    Top = 8
    Width = 249
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = btn3Click
  end
end
