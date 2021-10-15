object FMain: TFMain
  Left = 473
  Top = 205
  BorderStyle = bsDialog
  Caption = #1051#1056' 4'
  ClientHeight = 120
  ClientWidth = 211
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
  object Button_table: TButton
    Left = 13
    Top = 8
    Width = 185
    Height = 21
    Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090' Table'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button_tableClick
  end
  object Button_query: TButton
    Left = 13
    Top = 48
    Width = 185
    Height = 21
    Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090' Query'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button_queryClick
  end
  object Button_exit: TButton
    Left = 13
    Top = 88
    Width = 185
    Height = 21
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button_exitClick
  end
end
