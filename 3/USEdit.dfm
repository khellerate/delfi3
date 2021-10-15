object FSEdit: TFSEdit
  Left = 269
  Top = 322
  BorderStyle = bsDialog
  Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  ClientHeight = 369
  ClientWidth = 754
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
  object dbnvgr1: TDBNavigator
    Left = 0
    Top = 0
    Width = 754
    Height = 41
    DataSource = DMM.DataSource_spets
    Align = alTop
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
  object DBGrid_1: TDBGrid
    Left = 0
    Top = 40
    Width = 753
    Height = 329
    DataSource = DMM.DataSource_spets
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
