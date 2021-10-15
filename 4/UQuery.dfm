object Form1: TForm1
  Left = 437
  Top = 223
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082' '#1080' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103'  '#1079#1072#1087#1080#1089#1077#1081' '#1074' '#1085#1072#1073#1086#1088#1077' '#1076#1072#1085#1085#1099#1093' Query'
  ClientHeight = 360
  ClientWidth = 740
  Color = clWhite
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
  object lbl6: TLabel
    Left = 8
    Top = 0
    Width = 86
    Height = 20
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = #1058#1072#1073#1083#1080#1094#1072' Kadrs'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object DBGrid_kadrs: TDBGrid
    Left = 8
    Top = 24
    Width = 448
    Height = 145
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
  object grp1: TGroupBox
    Left = 8
    Top = 176
    Width = 232
    Height = 137
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1090#1072#1073#1083#1080#1094#1077
    TabOrder = 2
    object bvl13: TBevel
      Left = 8
      Top = 80
      Width = 216
      Height = 48
      Shape = bsFrame
    end
    object bvl14: TBevel
      Left = 8
      Top = 24
      Width = 216
      Height = 48
      Shape = bsFrame
    end
    object Button_2: TButton
      Left = 88
      Top = 32
      Width = 128
      Height = 24
      Caption = #1055#1086' '#1090#1072#1073#1077#1083#1100#1085#1086#1084#1091' '#1085#1086#1084#1077#1088#1091
      TabOrder = 1
      OnClick = Button_2Click
    end
    object edt1: TEdit
      Left = 16
      Top = 32
      Width = 65
      Height = 21
      TabOrder = 0
      OnKeyPress = edt1KeyPress
    end
    object dtp1: TDateTimePicker
      Left = 16
      Top = 88
      Width = 80
      Height = 24
      Date = 44475.000000000000000000
      Time = 44475.000000000000000000
      TabOrder = 2
    end
    object Button_3: TButton
      Left = 104
      Top = 88
      Width = 112
      Height = 24
      Caption = #1055#1086' '#1076#1072#1090#1077' '#1088#1086#1078#1076#1077#1085#1080#1103
      TabOrder = 3
      OnClick = Button_3Click
    end
  end
  object grp2: TGroupBox
    Left = 248
    Top = 176
    Width = 288
    Height = 177
    Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' ('#1086#1090#1073#1086#1088')'
    TabOrder = 3
    object pgc1: TPageControl
      Left = 2
      Top = 15
      Width = 284
      Height = 160
      ActivePage = ts2
      Align = alClient
      TabOrder = 0
      object ts1: TTabSheet
        Caption = #1054#1073#1099#1095#1085#1072#1103
        object bvl15: TBevel
          Left = 6
          Top = 0
          Width = 264
          Height = 48
          Shape = bsFrame
        end
        object bvl16: TBevel
          Left = 4
          Top = 56
          Width = 264
          Height = 48
          Shape = bsFrame
        end
        object edt2: TEdit
          Left = 16
          Top = 16
          Width = 120
          Height = 21
          TabOrder = 0
        end
        object Button_4: TButton
          Left = 144
          Top = 16
          Width = 113
          Height = 24
          Caption = #1055#1086' '#1092#1072#1084#1080#1083#1080#1080
          TabOrder = 1
          OnClick = Button_4Click
        end
        object Button_5: TButton
          Left = 144
          Top = 72
          Width = 113
          Height = 24
          Caption = #1055#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          TabOrder = 3
          OnClick = Button_5Click
        end
        object dblkcbb1: TDBLookupComboBox
          Left = 16
          Top = 72
          Width = 120
          Height = 21
          KeyField = 'Spec'
          ListField = 'Spec'
          ListSource = DM.DataSource_spets
          TabOrder = 2
        end
        object Button_1: TButton
          Left = 8
          Top = 104
          Width = 256
          Height = 24
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          TabOrder = 4
          OnClick = Button_1Click
        end
      end
      object ts2: TTabSheet
        Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1072#1103
        ImageIndex = 1
        object edt3: TEdit
          Left = 0
          Top = 0
          Width = 168
          Height = 21
          Enabled = False
          TabOrder = 0
          OnKeyPress = edt3KeyPress
          OnKeyUp = edt3KeyUp
        end
        object DBGrid_1: TDBGrid
          Left = 0
          Top = 32
          Width = 272
          Height = 96
          BorderStyle = bsNone
          DataSource = DM.DataSource_ff
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgIndicator]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -4
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              ButtonStyle = cbsNone
              Color = clMenu
              DropDownRows = 0
              Expanded = False
              FieldName = 'FFam'
              Title.Color = clMedGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -1
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 273
              Visible = True
            end>
        end
        object chk1: TCheckBox
          Left = 168
          Top = 0
          Width = 40
          Height = 24
          Caption = #1042#1082#1083
          TabOrder = 1
          OnClick = chk1Click
        end
        object chk2: TCheckBox
          Left = 168
          Top = 16
          Width = 96
          Height = 16
          Caption = #1042#1099#1074#1086#1076' '#1085#1072' '#1075#1083#1072#1074#1085#1091#1102
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = chk2Click
        end
      end
    end
  end
  object rg1: TRadioGroup
    Left = 544
    Top = 184
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
  object rg2: TRadioGroup
    Left = 544
    Top = 280
    Width = 184
    Height = 72
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
    ItemIndex = 0
    Items.Strings = (
      #1042#1086#1079#1088#1072#1089#1090#1072#1085#1080#1077
      #1059#1073#1099#1074#1072#1085#1080#1077)
    TabOrder = 5
    OnClick = rg2Click
  end
  object grp3: TGroupBox
    Left = 472
    Top = 0
    Width = 256
    Height = 176
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1076#1074#1091#1084' '#1087#1086#1083#1103#1084
    TabOrder = 0
    object pgc2: TPageControl
      Left = 2
      Top = 15
      Width = 252
      Height = 159
      ActivePage = ts4
      Align = alClient
      TabOrder = 0
      object ts3: TTabSheet
        Caption = #1054#1073#1099#1095#1085#1099#1081
        object Button_8: TButton
          Left = 8
          Top = 96
          Width = 216
          Height = 24
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          TabOrder = 2
          OnClick = Button_1Click
        end
        object Button_7: TButton
          Left = 8
          Top = 40
          Width = 216
          Height = 24
          Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1076#1074#1091#1084' '#1087#1086#1083#1103#1084
          TabOrder = 1
          OnClick = Button_7Click
        end
        object Button_6: TButton
          Left = 8
          Top = 8
          Width = 216
          Height = 24
          Caption = #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1076#1074#1091#1084' '#1087#1086#1083#1103#1084
          TabOrder = 0
          OnClick = Button_6Click
        end
      end
      object ts4: TTabSheet
        Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081
        ImageIndex = 1
        object pgc3: TPageControl
          Left = 0
          Top = 0
          Width = 244
          Height = 131
          ActivePage = ts6
          Align = alClient
          TabOrder = 0
          object ts5: TTabSheet
            Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081
            object lbl1: TLabel
              Left = 96
              Top = 80
              Width = 12
              Height = 13
              Caption = #1086#1090
            end
            object lbl2: TLabel
              Left = 160
              Top = 80
              Width = 13
              Height = 13
              Caption = #1076#1086
            end
            object bvl1: TBevel
              Left = 0
              Top = 16
              Width = 48
              Height = 16
              Shape = bsTopLine
              Style = bsRaised
            end
            object bvl5: TBevel
              Left = 0
              Top = 24
              Width = 232
              Height = 40
              Shape = bsFrame
            end
            object bvl6: TBevel
              Left = 0
              Top = 64
              Width = 232
              Height = 40
              Shape = bsFrame
            end
            object chk3: TCheckBox
              Left = 0
              Top = 0
              Width = 88
              Height = 16
              Caption = #1042#1082#1083
              TabOrder = 0
              OnClick = chk3Click
            end
            object rb1: TRadioButton
              Left = 8
              Top = 32
              Width = 88
              Height = 24
              Caption = #1058#1086#1095#1085#1086#1077
              Checked = True
              Enabled = False
              TabOrder = 1
              TabStop = True
              OnClick = rb1Click
            end
            object rb2: TRadioButton
              Left = 8
              Top = 72
              Width = 88
              Height = 24
              Caption = #1055#1088#1086#1084#1077#1078#1091#1090#1086#1082
              Enabled = False
              TabOrder = 3
              OnClick = rb2Click
            end
            object edt4: TEdit
              Left = 184
              Top = 32
              Width = 40
              Height = 24
              Enabled = False
              MaxLength = 4
              TabOrder = 2
              OnKeyPress = edt1KeyPress
            end
            object edt5: TEdit
              Left = 112
              Top = 72
              Width = 40
              Height = 24
              Enabled = False
              MaxLength = 4
              TabOrder = 4
              OnKeyPress = edt1KeyPress
            end
            object edt6: TEdit
              Left = 184
              Top = 72
              Width = 40
              Height = 24
              Enabled = False
              MaxLength = 4
              TabOrder = 5
              OnKeyPress = edt1KeyPress
            end
          end
          object ts6: TTabSheet
            Caption = #1060#1072#1084#1080#1083#1080#1103
            ImageIndex = 1
            object bvl3: TBevel
              Left = 0
              Top = 16
              Width = 48
              Height = 16
              Shape = bsTopLine
              Style = bsRaised
            end
            object bvl7: TBevel
              Left = 0
              Top = 24
              Width = 240
              Height = 40
              Shape = bsFrame
            end
            object bvl8: TBevel
              Left = 0
              Top = 64
              Width = 240
              Height = 40
              Shape = bsFrame
            end
            object chk4: TCheckBox
              Left = 0
              Top = 0
              Width = 88
              Height = 16
              Caption = #1042#1082#1083
              TabOrder = 0
              OnClick = chk4Click
            end
            object rb3: TRadioButton
              Left = 8
              Top = 32
              Width = 88
              Height = 24
              Caption = #1058#1086#1095#1085#1086#1077
              Checked = True
              Enabled = False
              TabOrder = 1
              TabStop = True
              OnClick = rb3Click
            end
            object rb4: TRadioButton
              Left = 8
              Top = 72
              Width = 88
              Height = 24
              Caption = #1055#1086' '#1084#1072#1089#1082#1077
              Enabled = False
              TabOrder = 3
              OnClick = rb4Click
            end
            object edt8: TEdit
              Left = 112
              Top = 32
              Width = 120
              Height = 21
              Enabled = False
              MaxLength = 9
              TabOrder = 2
            end
            object edt9: TEdit
              Left = 112
              Top = 72
              Width = 120
              Height = 21
              Enabled = False
              MaxLength = 9
              TabOrder = 4
            end
          end
          object ts7: TTabSheet
            Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
            ImageIndex = 2
            object bvl2: TBevel
              Left = 0
              Top = 16
              Width = 48
              Height = 16
              Shape = bsTopLine
              Style = bsRaised
            end
            object bvl9: TBevel
              Left = 0
              Top = 64
              Width = 240
              Height = 40
              Shape = bsFrame
            end
            object bvl10: TBevel
              Left = 0
              Top = 24
              Width = 240
              Height = 40
              Shape = bsFrame
            end
            object rb7: TRadioButton
              Left = 8
              Top = 32
              Width = 88
              Height = 24
              Caption = #1055#1086' '#1085#1086#1084#1077#1088#1091
              Checked = True
              Enabled = False
              TabOrder = 1
              TabStop = True
              OnClick = rb7Click
            end
            object rb8: TRadioButton
              Left = 8
              Top = 72
              Width = 88
              Height = 24
              Caption = #1055#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
              Enabled = False
              TabOrder = 3
              OnClick = rb8Click
            end
            object edt10: TEdit
              Left = 112
              Top = 32
              Width = 32
              Height = 24
              Enabled = False
              TabOrder = 2
            end
            object chk6: TCheckBox
              Left = 0
              Top = 0
              Width = 88
              Height = 16
              Caption = #1042#1082#1083
              TabOrder = 0
              OnClick = chk6Click
            end
            object cbb1: TComboBox
              Left = 112
              Top = 72
              Width = 120
              Height = 21
              Enabled = False
              ItemHeight = 0
              TabOrder = 4
            end
          end
          object ts8: TTabSheet
            Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            ImageIndex = 3
            object lbl3: TLabel
              Left = 96
              Top = 40
              Width = 12
              Height = 13
              Caption = #1086#1090
              Visible = False
            end
            object lbl4: TLabel
              Left = 96
              Top = 80
              Width = 13
              Height = 13
              Caption = #1076#1086
              Visible = False
            end
            object bvl4: TBevel
              Left = 0
              Top = 16
              Width = 48
              Height = 16
              Shape = bsTopLine
              Style = bsRaised
            end
            object bvl11: TBevel
              Left = 0
              Top = 64
              Width = 240
              Height = 40
              Shape = bsFrame
            end
            object bvl12: TBevel
              Left = 0
              Top = 24
              Width = 240
              Height = 40
              Shape = bsFrame
            end
            object chk5: TCheckBox
              Left = 0
              Top = 0
              Width = 88
              Height = 16
              Caption = #1042#1082#1083
              TabOrder = 0
              OnClick = chk5Click
            end
            object rb5: TRadioButton
              Left = 0
              Top = 32
              Width = 88
              Height = 24
              Caption = #1058#1086#1095#1085#1086#1077
              Enabled = False
              TabOrder = 1
              OnClick = rb5Click
            end
            object rb6: TRadioButton
              Left = 0
              Top = 72
              Width = 88
              Height = 24
              Caption = #1055#1088#1086#1084#1077#1078#1091#1090#1086#1082
              Enabled = False
              TabOrder = 3
              OnClick = rb6Click
            end
            object dtp2: TDateTimePicker
              Left = 112
              Top = 32
              Width = 120
              Height = 24
              Date = 44483.000000000000000000
              Time = 44483.000000000000000000
              Checked = False
              DateFormat = dfLong
              Enabled = False
              TabOrder = 2
            end
            object dtp3: TDateTimePicker
              Left = 112
              Top = 72
              Width = 120
              Height = 24
              Date = 44483.116208506940000000
              Time = 44483.116208506940000000
              DateFormat = dfLong
              Enabled = False
              TabOrder = 4
            end
          end
          object ts9: TTabSheet
            Caption = #1055#1086#1080#1089#1082
            ImageIndex = 4
            object Bevel1: TBevel
              Left = 0
              Top = 16
              Width = 48
              Height = 16
              Shape = bsTopLine
              Style = bsRaised
            end
            object rg3: TRadioGroup
              Left = 0
              Top = 0
              Width = 128
              Height = 96
              Caption = #1060#1086#1088#1084#1072' '#1074#1099#1074#1086#1076#1072
              ItemIndex = 1
              Items.Strings = (
                #1058#1072#1073#1083#1080#1094#1072
                #1054#1090#1095#1077#1090)
              TabOrder = 0
            end
            object Button_9: TButton
              Left = 144
              Top = 8
              Width = 88
              Height = 88
              Caption = #1053#1072#1081#1090#1080
              TabOrder = 1
              OnClick = Button_9Click
            end
          end
        end
      end
    end
  end
end
