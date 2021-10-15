object FMain: TFMain
  Left = 442
  Top = 156
  BorderStyle = bsDialog
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' 2'
  ClientHeight = 504
  ClientWidth = 738
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 8
    Width = 91
    Height = 13
    Caption = #1058#1072#1073#1083#1080#1094#1072' "'#1058#1086#1074#1072#1088#1099'"'
  end
  object lbl1: TLabel
    Left = 496
    Top = 8
    Width = 85
    Height = 13
    Caption = #1058#1072#1073#1083#1080#1094#1072' "'#1057#1082#1083#1072#1076'"'
  end
  object lbl2: TLabel
    Left = 152
    Top = 240
    Width = 82
    Height = 13
    Caption = #1042#1089#1077#1075#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077
  end
  object lbl3: TLabel
    Left = 504
    Top = 240
    Width = 137
    Height = 13
    Caption = #1055#1086#1076#1089#1095#1077#1090' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1090#1086#1074#1072#1088#1072
  end
  object DBGrid_Tovar: TDBGrid
    Left = 0
    Top = 24
    Width = 289
    Height = 201
    DataSource = DataSource_Tovar
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1062#1077#1085#1072
        Width = 82
        Visible = True
      end>
  end
  object DBGrid_Sklad: TDBGrid
    Left = 288
    Top = 24
    Width = 449
    Height = 201
    DataSource = DataSource_Sklad
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088'_'#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Title.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072'_'#1087#1086#1089#1090#1072#1074#1082#1080
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088'_'#1090#1086#1074#1072#1088#1072
        Title.Caption = #1053#1086#1084#1077#1088' '#1090#1086#1074#1072#1088#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1086#1089#1090#1091#1087#1080#1083#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1088#1086#1076#1072#1085#1086
        Width = 69
        Visible = True
      end>
  end
  object DBGrid_all: TDBGrid
    Left = 0
    Top = 256
    Width = 385
    Height = 209
    DataSource = DataSource_all
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1062#1077#1085#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1086#1089#1090#1091#1087#1080#1083#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1088#1086#1076#1072#1085#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1089#1090#1072#1090#1086#1082
        Visible = True
      end>
  end
  object Panel_clc: TPanel
    Left = 432
    Top = 256
    Width = 289
    Height = 73
    BorderStyle = bsSingle
    TabOrder = 3
    object RB_all: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = #1058#1086#1074#1072#1088' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      Checked = True
      TabOrder = 2
      TabStop = True
      OnEnter = RB_allEnter
    end
    object RB_self: TRadioButton
      Left = 8
      Top = 8
      Width = 113
      Height = 17
      Caption = #1058#1086#1074#1072#1088' '#1085#1072' '#1074#1099#1073#1086#1088
      TabOrder = 0
      OnEnter = RB_selfEnter
    end
    object DBCombo_sel: TDBLookupComboBox
      Left = 136
      Top = 8
      Width = 145
      Height = 21
      Enabled = False
      KeyField = #1053#1072#1079#1074#1072#1085#1080#1077
      ListField = #1053#1072#1079#1074#1072#1085#1080#1077
      ListFieldIndex = 1
      ListSource = DataSource_Tovar
      NullValueKey = 16449
      TabOrder = 1
    end
  end
  object Button_clc: TButton
    Left = 568
    Top = 296
    Width = 145
    Height = 25
    Caption = #1055#1086#1076#1089#1095#1077#1090
    TabOrder = 4
    OnClick = Button_clcClick
  end
  object pnl_price: TPanel
    Left = 432
    Top = 344
    Width = 289
    Height = 153
    BorderStyle = bsSingle
    TabOrder = 5
  end
  object Button_upd: TButton
    Left = 8
    Top = 472
    Width = 369
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1079#1072#1087#1088#1086#1089
    TabOrder = 6
    OnClick = Button_updClick
  end
  object ADOConnection_main: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\de' +
      'lfi\BDMain.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 480
    Top = 448
  end
  object ADOTable_Tovar: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    TableName = 'Tovar'
    Left = 112
    Top = 168
  end
  object ADOTable_Sklad: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    TableName = 'Sklad'
    Left = 520
    Top = 176
  end
  object DataSource_Tovar: TDataSource
    DataSet = ADOTable_Tovar
    Left = 112
    Top = 120
  end
  object DataSource_Sklad: TDataSource
    DataSet = ADOTable_Sklad
    Left = 520
    Top = 136
  end
  object DataSource_all: TDataSource
    Tag = 1
    DataSet = ADOQuery_all
    Left = 168
    Top = 360
  end
  object ADOQuery_price: TADOQuery
    AutoCalcFields = False
    Connection = ADOConnection_main
    CursorType = ctStatic
    DataSource = DataSource_all
    ParamCheck = False
    Parameters = <
      item
        Name = #1087#1088#1084
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT         SUM(Tovar.'#1062#1077#1085#1072' * ( Sklad.'#1055#1086#1089#1090#1091#1087#1080#1083#1086' - Sklad.'#1055#1088#1086#1076#1072#1085 +
        #1086' ))'
      'FROM           Tovar,Sklad'
      
        'WHERE         Tovar.'#1050#1086#1076' = Sklad.'#1053#1086#1084#1077#1088'_'#1090#1086#1074#1072#1088#1072' and ((Tovar.'#1053#1072#1079#1074#1072#1085#1080 +
        #1077' = '#1087#1088#1084') or ('#1087#1088#1084' is NULL))')
    Left = 480
    Top = 392
  end
  object ADOQuery_all: TADOQuery
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT           Tovar.'#1053#1072#1079#1074#1072#1085#1080#1077', Tovar.'#1062#1077#1085#1072' ,Sklad.'#1055#1086#1089#1090#1091#1087#1080#1083#1086',Skl' +
        'ad.'#1055#1088#1086#1076#1072#1085#1086' , (Sklad.'#1055#1086#1089#1090#1091#1087#1080#1083#1086' - Sklad.'#1055#1088#1086#1076#1072#1085#1086') as '#1054#1089#1090#1072#1090#1086#1082' '
      'FROM             Tovar, Sklad'
      'WHERE           Tovar.'#1050#1086#1076' = Sklad.'#1053#1086#1084#1077#1088'_'#1090#1086#1074#1072#1088#1072)
    Left = 168
    Top = 416
  end
end
