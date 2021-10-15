object Form4: TForm4
  Left = 803
  Top = 193
  BorderStyle = bsDialog
  Caption = #1069#1082#1088#1072#1085#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  ClientHeight = 243
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 48
    Width = 89
    Height = 13
    Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
  end
  object lbl2: TLabel
    Left = 8
    Top = 96
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object lbl3: TLabel
    Left = 8
    Top = 144
    Width = 19
    Height = 13
    Caption = #1048#1084#1103
  end
  object lbl4: TLabel
    Left = 8
    Top = 192
    Width = 49
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object lbl5: TLabel
    Left = 168
    Top = 48
    Width = 80
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object lbl6: TLabel
    Left = 168
    Top = 96
    Width = 99
    Height = 13
    Caption = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  end
  object lbl7: TLabel
    Left = 168
    Top = 144
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object dbnvgr1: TDBNavigator
    Left = 8
    Top = 8
    Width = 224
    Height = 25
    DataSource = ds1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Hints.Strings = (
      #1055#1077#1088#1074#1072#1103
      #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103
      #1057#1083#1077#1076#1091#1102#1097#1072#1103
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
    OnClick = dbnvgr1Click
  end
  object dbedtTab_N: TDBEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    DataField = 'Tab_N'
    DataSource = ds1
    TabOrder = 1
  end
  object dbedtFam: TDBEdit
    Left = 8
    Top = 112
    Width = 121
    Height = 21
    DataField = 'Fam'
    DataSource = ds1
    TabOrder = 2
  end
  object dbedtNames: TDBEdit
    Left = 8
    Top = 160
    Width = 121
    Height = 21
    DataField = 'Names'
    DataSource = ds1
    TabOrder = 3
  end
  object dbedtOtch: TDBEdit
    Left = 8
    Top = 208
    Width = 121
    Height = 21
    DataField = 'Otch'
    DataSource = ds1
    TabOrder = 4
  end
  object dbedtAdres: TDBEdit
    Left = 168
    Top = 160
    Width = 121
    Height = 21
    DataField = 'Adres'
    DataSource = ds1
    TabOrder = 5
  end
  object edt1: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 168
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'edt2'
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\delf' +
      'i\Firma_drozdov.mdb;Mode=ReadWrite;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 808
    Top = 344
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Kadrs_drozdov'
    Left = 848
    Top = 344
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 896
    Top = 352
  end
end
