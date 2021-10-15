unit UQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, ComCtrls, Grids, DBGrids, UDM,
  Buttons;

type
  TForm1 = class(TForm)
    lbl6: TLabel;
    DBGrid_kadrs: TDBGrid;
    grp1: TGroupBox;
    edt1: TEdit;
    dtp1: TDateTimePicker;
    Button_2: TButton;
    Button_3: TButton;
    grp2: TGroupBox;
    rg1: TRadioGroup;
    rg2: TRadioGroup;
    grp3: TGroupBox;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    edt2: TEdit;
    Button_4: TButton;
    Button_5: TButton;
    dblkcbb1: TDBLookupComboBox;
    edt3: TEdit;
    Button_1: TButton;
    DBGrid_1: TDBGrid;
    chk1: TCheckBox;
    chk2: TCheckBox;
    pgc2: TPageControl;
    ts3: TTabSheet;
    ts4: TTabSheet;
    Button_6: TButton;
    Button_7: TButton;
    Button_8: TButton;
    pgc3: TPageControl;
    ts5: TTabSheet;
    ts6: TTabSheet;
    ts7: TTabSheet;
    ts8: TTabSheet;
    chk3: TCheckBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    chk4: TCheckBox;
    rb3: TRadioButton;
    rb4: TRadioButton;
    edt8: TEdit;
    edt9: TEdit;
    chk5: TCheckBox;
    rb5: TRadioButton;
    rb6: TRadioButton;
    dtp2: TDateTimePicker;
    dtp3: TDateTimePicker;
    lbl3: TLabel;
    lbl4: TLabel;
    rb7: TRadioButton;
    rb8: TRadioButton;
    edt10: TEdit;
    chk6: TCheckBox;
    cbb1: TComboBox;
    ts9: TTabSheet;
    rg3: TRadioGroup;
    bvl1: TBevel;
    bvl2: TBevel;
    Bevel1: TBevel;
    bvl3: TBevel;
    bvl4: TBevel;
    bvl5: TBevel;
    bvl6: TBevel;
    bvl7: TBevel;
    bvl8: TBevel;
    bvl9: TBevel;
    bvl10: TBevel;
    bvl11: TBevel;
    bvl12: TBevel;
    Button_9: TButton;
    bvl13: TBevel;
    bvl14: TBevel;
    bvl15: TBevel;
    bvl16: TBevel;
    procedure Button_2Click(Sender: TObject);
    procedure Button_3Click(Sender: TObject);
    procedure Button_6Click(Sender: TObject);
    procedure Button_4Click(Sender: TObject);
    procedure Button_5Click(Sender: TObject);
    procedure Button_7Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure Button_1Click(Sender: TObject);
    procedure edt3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt3KeyPress(Sender: TObject; var Key: Char);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure rb5Click(Sender: TObject);
    procedure rb6Click(Sender: TObject);
    procedure rb8Click(Sender: TObject);
    procedure rb7Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure rg2Click(Sender: TObject);
    procedure Button_9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DateUtils, ADODB, DB, Unit2, UTable, Unit3;

{$R *.dfm}

procedure TForm1.Button_2Click(Sender: TObject);
begin
  if Length(edt1.Text) <= 0 then
  begin;
     MessageDlg('Окно ввода табельного номера не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;
  if not DM.ADOQuery_all.Locate('Tab_N',edt1.Text,[]) then
    MessageDlg('Запись не найдена', mtInformation, [mbOK,mbOK], 0)
  else
    MessageDlg('Фамилия: ' + DM.ADOQuery_all.FieldByName('Fam').AsString, mtInformation, [mbOK,mbOK], 0);
end;

procedure TForm1.Button_3Click(Sender: TObject);
begin
  if not DM.ADOQuery_all.Locate('B_Data',DateToStr(dtp1.DateTime),[]) then
    MessageDlg('Запись не найдена', mtInformation, [mbOK,mbOK], 0)
  else
    MessageDlg('Табельный номер: ' + DM.ADOQuery_all.Fields[0].AsString, mtInformation, [mbOK,mbOK], 0);
end;

procedure TForm1.Button_6Click(Sender: TObject);
begin
  if Length(edt1.Text) <= 0 then
  begin;
     MessageDlg('Окно ввода табельного номера не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;

  if not DM.ADOQuery_all.Locate('B_Data;Tab_N',VarArrayOF([DateToStr(dtp1.DateTime),edt1.Text]),[]) then
    MessageDlg('Запись не найдена', mtInformation, [mbOK,mbOK], 0)
  else
    MessageDlg('Фамилия: ' + DM.ADOQuery_all.Fields[1].AsString, mtInformation, [mbOK,mbOK], 0);
end;

procedure TForm1.Button_4Click(Sender: TObject);
begin
  if Length(edt2.Text) <= 0 then
  begin;
     MessageDlg('Окно ввода фамилии не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;

  DM.ADOQuery_all.Filter := 'Fam = '''+edt2.Text+''' ';
  DM.ADOQuery_all.Filtered := True;
end;

procedure TForm1.Button_5Click(Sender: TObject);
begin
  if Length(dblkcbb1.Text) <= 0 then
  begin;
     MessageDlg('Окно ввода специальности не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;

  DM.ADOQuery_all.Filter := 'Spec = '''+dblkcbb1.Text+'''';
  DM.ADOQuery_all.Filtered := True;
end;

procedure TForm1.Button_7Click(Sender: TObject);
begin
  if (Length(dblkcbb1.Text) <= 0) then
  begin;
     MessageDlg('Окно ввода специальности не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;
  if ((Length(edt2.Text) <= 0)) then
  begin;
     MessageDlg('Окно ввода фамилии не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;
  DM.ADOQuery_all.Filter := 'Spec = '''+dblkcbb1.Text+'''' + ' and Fam = ''' + edt2.Text+'''';
  DM.ADOQuery_all.Filtered := True;
end;

procedure TForm1.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', Char(8)]) then Key := Char(0);
end;

procedure TForm1.Button_1Click(Sender: TObject);
begin
  DM.ADOQuery_all.Filtered := False;
end;

procedure TForm1.edt3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sqlstr,sqlpar:String;
begin
    with DM.ADOQuery_ff do
    begin
      Close;
      Parameters.ParamByName('FindName').Value := edt3.Text;
      Open;
    end;

    if (not chk2.Checked) then sqlpar:='' else sqlpar := edt3.Text;
    sqlstr :=  'SELECT   Kadrs_drozdov.Tab_N, Kadrs_drozdov.Fam, Spets.Spec, Kadrs_drozdov.B_Data '
              +' FROM     Spets, Kadrs_drozdov '
              +' WHERE    Spets.Kod_Spec = Kadrs_drozdov.Kod_Spec '
              +' AND      Kadrs_drozdov.Fam like '''+'%'+sqlpar+'%'+'''';

    with DM.ADOQuery_all do
    begin
        CLOSE;
        SQL.Clear;
        SQL.Add(sqlstr);
        OPEN;
    end;

end;

procedure TForm1.edt3KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = Char(13)) then edt3.text := DBGrid_1.Fields[0].AsString;
  if(DBGrid_1.FieldCount = 1) then 
end;

procedure TForm1.chk1Click(Sender: TObject);
begin
  with DBGrid_1 do
  begin
      Enabled := not Enabled;
      Repaint;
  end;
  chk2.Enabled := not chk2.Enabled;
  with edt3 do
  begin
      if(Enabled) then
      begin
          Text:='';
          chk2.Checked := false;
          edt3KeyUp(Sender, TwoDigitYearCenturyWindow, [ssLeft]);
      end;
      Enabled := not Enabled;
  end;
end;

procedure TForm1.chk2Click(Sender: TObject);
begin
   edt3KeyUp(Sender, TwoDigitYearCenturyWindow, [ssLeft]);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  with DM.ADOTable_spets do
  begin
    First;
    while (not Eof) do
    begin
      cbb1.Items.Add(Fields[1].AsString);
      Next;
    end;
    cbb1.ItemIndex:=0;
  end;  
end;

procedure TForm1.chk3Click(Sender: TObject);
begin
  rb1.Enabled := (Sender as TCheckBox).Checked;
  rb2.Enabled := (Sender as TCheckBox).Checked;

  if (rb1.Checked) then
  begin
    edt4.Enabled:=True;
    edt5.Enabled:=false;
    edt6.Enabled:=false;
  end else
  begin
    edt4.Enabled:=false;
    edt5.Enabled:=true;
    edt6.Enabled:=true;
  end;
end;

procedure TForm1.rb2Click(Sender: TObject);
begin
  chk3Click(chk3);
end;

procedure TForm1.rb1Click(Sender: TObject);
begin
  chk3Click(chk3);
end;

procedure TForm1.chk4Click(Sender: TObject);
begin
  rb3.Enabled := (Sender as TCheckBox).Checked;
  rb4.Enabled := (Sender as TCheckBox).Checked;

  if (rb1.Checked) then
  begin
    edt8.Enabled:=True;
    edt9.Enabled:=false;
  end else
  begin
    edt8.Enabled:=false;
    edt9.Enabled:=True;
  end;
end;

procedure TForm1.chk6Click(Sender: TObject);
begin
  rb7.Enabled := (Sender as TCheckBox).Checked;
  rb8.Enabled := (Sender as TCheckBox).Checked;

  if (rb1.Checked) then
  begin
    edt10.Enabled:=True;
    cbb1.Enabled:=false;
  end else
  begin
    edt10.Enabled:=false;
    cbb1.Enabled:=True;
  end;
end;

procedure TForm1.chk5Click(Sender: TObject);
begin
  rb5.Enabled := (Sender as TCheckBox).Checked;
  rb6.Enabled := (Sender as TCheckBox).Checked;

  if (rb1.Checked) then
  begin
    dtp2.Enabled:=True;
    dtp3.Enabled:=false;
    lbl3.Visible := false;
    lbl4.Visible := False;
  end else
  begin
    dtp2.Enabled:=false;
    dtp3.Enabled:=True;
    lbl3.Visible := true;
    lbl4.Visible := true;
  end;
end;

procedure Finder_T;
begin
  
end;

procedure TForm1.rb5Click(Sender: TObject);
begin
  dtp3.Enabled := False;
  dtp2.Enabled := True;
  lbl4.Enabled := False;
  lbl3.Enabled := False;
end;

procedure TForm1.rb6Click(Sender: TObject);
begin
  dtp3.Enabled := True;
  dtp2.Enabled := True;
  lbl4.Enabled := True;
  lbl3.Enabled := True;
end;

procedure TForm1.rb8Click(Sender: TObject);
begin
  cbb1.Enabled := True;
  edt10.Enabled := False;
end;

procedure TForm1.rb7Click(Sender: TObject);
begin
  cbb1.Enabled := false;
  edt10.Enabled := true;
end;

procedure TForm1.rb4Click(Sender: TObject);
begin
   edt9.Enabled := True;
   edt8.Enabled := False;
end;

procedure TForm1.rb3Click(Sender: TObject);
begin
    edt9.Enabled := false;
    edt8.Enabled := true;
end;

procedure TForm1.rg1Click(Sender: TObject);
begin
  case rg1.ItemIndex of
    0:FTable.rb1Enter(self);
    1:FTable.rb2Enter(self);
    2:FTable.rb3Enter(self);
    3:FTable.rb4Enter(self);
  end;
end;

procedure TForm1.rg2Click(Sender: TObject);
begin
  case rg2.ItemIndex of
    0:FTable.rb5Enter(self);
    1:FTable.rb6Enter(self);
  end;
end;

procedure TForm1.Button_9Click(Sender: TObject);
begin
with DM.ADOQuery_FTAB do
  begin
      Close;
      with Form1 do
      begin
        if(chk3.Checked) then
        begin
          if rb1.Checked then
          begin
            Parameters.ParamByName('TABF').Value := edt4.Text;
            Parameters.ParamByName('TABL').Value := edt4.Text;
            Form3.QRLabel_9.Caption   := edt4.Text;
            Form3.QRLabel_10.Caption  := 'Фикс.';
          end else
          begin
            Parameters.ParamByName('TABF').Value := edt5.Text;
            Parameters.ParamByName('TABL').Value := edt6.Text;
            Form3.QRLabel_9.Caption := edt5.Text + ' .. ' + edt6.Text;
            Form3.QRLabel_10.Caption  := 'диапазон';
          end;
        end else
        begin
            Parameters.ParamByName('TABF').Value := null;
            Parameters.ParamByName('TABL').Value := null;
            Form3.QRLabel_9.Caption := 'null';
            Form3.QRLabel_10.Caption := 'null';
        end;

        if(chk4.Checked) then
        begin
          if rb3.Checked then
          begin
            Parameters.ParamByName('TFAM').Value := edt8.Text;
            Form3.QRLabel_13.Caption := 'Фикс.';
            Form3.QRLabel_14.Caption := edt8.Text;
          end else
          begin
            Parameters.ParamByName('TFAM').Value := edt9.Text;
            Form3.QRLabel_13.Caption := 'маска.';
            Form3.QRLabel_14.Caption := edt9.Text;
          end;
        end else
        begin
          Parameters.ParamByName('TFAM').Value := null;
          Form3.QRLabel_13.Caption := 'null';
          Form3.QRLabel_14.Caption := 'null';
        end;  

        if(chk6.Checked) then
        begin
          if rb7.Checked then
          begin
            Parameters.ParamByName('TSPE_N').Value := edt10.Text;
            Form3.QRLabel_17.Caption := 'по номеру';
            Form3.QRLabel_18.Caption := edt10.Text;
          end else
          begin
            Parameters.ParamByName('TSPE_K').Value := cbb1.Text;
            Form3.QRLabel_17.Caption := 'по названию';
            Form3.QRLabel_18.Caption := cbb1.Text;
          end;  
        end else
        begin
            Parameters.ParamByName('TSPE_K').Value := null;
            Parameters.ParamByName('TSPE_N').Value := null;
            Form3.QRLabel_17.Caption := 'null';
            Form3.QRLabel_18.Caption := 'null';
        end;
                          
        if(chk5.Checked) then
        begin
          if rb5.Checked then
          begin
            Parameters.ParamByName('TDATEF').Value := dtp2.DateTime;
            Parameters.ParamByName('TDATEL').Value := dtp2.DateTime;
            Form3.QRLabel_111.Caption := 'фикс.';
            Form3.QRLabel_112.Caption := TimeToStr(dtp2.DateTime);
          end else
          begin
            Parameters.ParamByName('TDATEF').Value := dtp2.DateTime;
            Parameters.ParamByName('TDATEL').Value := dtp3.DateTime;
            Form3.QRLabel_111.Caption := 'диапазон';
            Form3.QRLabel_112.Caption := TimeToStr(dtp2.DateTime) + '..' + TimeToStr(dtp3.DateTime);
          end;
        end else
        begin
            Parameters.ParamByName('TDATEF').Value := null;
            Parameters.ParamByName('TDATEL').Value := null;
            Form3.QRLabel_111.Caption := 'null';
            Form3.QRLabel_112.Caption := 'null';
        end;  
      end;
      Open;
  end;
  case rg3.ItemIndex of
    0: Form2.Show;
    1: Form3.QuickRep1.Preview;
  end;
end;

end.
