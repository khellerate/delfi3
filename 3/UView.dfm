object FView: TFView
  Left = 618
  Top = 201
  BorderStyle = bsDialog
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088
  ClientHeight = 228
  ClientWidth = 276
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
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 19
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label3: TLabel
    Left = 8
    Top = 128
    Width = 49
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label4: TLabel
    Left = 8
    Top = 176
    Width = 80
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label5: TLabel
    Left = 144
    Top = 32
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label6: TLabel
    Left = 144
    Top = 80
    Width = 78
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
  end
  object Label7: TLabel
    Left = 144
    Top = 128
    Width = 89
    Height = 13
    Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
  end
  object dbedt1: TDBEdit
    Left = 8
    Top = 48
    Width = 121
    Height = 21
    DataField = 'Fam'
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 1
  end
  object dbedt2: TDBEdit
    Left = 8
    Top = 96
    Width = 121
    Height = 21
    DataField = 'Names'
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 3
  end
  object dbedt3: TDBEdit
    Left = 8
    Top = 144
    Width = 121
    Height = 21
    DataField = 'Otch'
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 5
  end
  object dbedt4: TDBEdit
    Left = 8
    Top = 192
    Width = 121
    Height = 21
    DataField = 'B_Data'
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 7
  end
  object dbedt5: TDBEdit
    Left = 144
    Top = 48
    Width = 121
    Height = 21
    DataField = 'Adres'
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 2
  end
  object dbedt6: TDBEdit
    Left = 144
    Top = 96
    Width = 121
    Height = 21
    DataField = 'Kod_Spec'
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 4
  end
  object dbedt7: TDBEdit
    Left = 144
    Top = 144
    Width = 121
    Height = 21
    DataField = 'Tab_N'
    DataSource = DMM.DataSource_kadrs
    ReadOnly = True
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 272
    Height = 25
    DataSource = DMM.DataSource_kadrs
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Hints.Strings = (
      #1055#1077#1088#1074#1072#1103
      #1053#1072#1079#1072#1076
      #1042#1087#1077#1088#1077#1076
      #1055#1086#1089#1083#1077#1076#1085#1103#1103
      'Insert record'
      'Delete record'
      'Edit record'
      'Post edit'
      'Cancel edit'
      'Refresh data')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
end
