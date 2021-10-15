unit UTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, UDM, DBCtrls, ExtCtrls;

type
  TFTable = class(TForm)
    knhjk: TDBGrid;
    DBGrid_sotr: TDBGrid;
    grp1: TGroupBox;
    grp2: TGroupBox;
    edt1: TEdit;
    edt2: TEdit;
    dtp1: TDateTimePicker;
    Button_1: TButton;
    lbl5: TLabel;
    lbl6: TLabel;
    Button_2: TButton;
    Button_3: TButton;
    Button_4: TButton;
    Button_5: TButton;
    dblkcbb1: TDBLookupComboBox;
    rg1: TRadioGroup;
    rg2: TRadioGroup;
    bvl1: TBevel;
    bvl2: TBevel;
    bvl3: TBevel;
    bvl4: TBevel;
    procedure Button_2Click(Sender: TObject);
    procedure Button_3Click(Sender: TObject);
    procedure Button_1Click(Sender: TObject);
    procedure Button_4Click(Sender: TObject);
    procedure rb1Enter(Sender: TObject);
    procedure rb3Enter(Sender: TObject);
    procedure rb4Enter(Sender: TObject);
    procedure rb2Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rb5Enter(Sender: TObject);
    procedure rb6Enter(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure rg2Click(Sender: TObject);
    procedure Button_5Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTable: TFTable;
  ssort: String;

implementation

{$R *.dfm}

procedure TFTable.Button_2Click(Sender: TObject);
begin
  if Length(edt1.Text) <= 0 then
  begin;
     MessageDlg('Окно ввода номера специальности не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;
  if not DM.ADOTable_spets.Locate('Kod_Spec',edt1.Text,[]) then
    MessageDlg('Запись не найдена', mtInformation, [mbOK,mbOK], 0)
  else
    MessageDlg('Название специальности: ' + DM.ADOTable_spets.Fields[1].AsString, mtInformation, [mbOK,mbOK], 0);
end;

procedure TFTable.Button_3Click(Sender: TObject);
begin
  if not DM.ADOTable_kadrs.Locate('B_Data',DateToStr(dtp1.DateTime),[]) then
    MessageDlg('Запись не найдена', mtInformation, [mbOK,mbOK], 0)
  else
    MessageDlg('Табельный номер: ' + DM.ADOTable_kadrs.Fields[0].AsString, mtInformation, [mbOK,mbOK], 0);
end;

procedure TFTable.Button_1Click(Sender: TObject);
begin
   DM.ADOQuery_all.Filtered := False;
end;

procedure TFTable.Button_4Click(Sender: TObject);
begin
  if Length(edt2.Text) <= 0 then
  begin;
     MessageDlg('Окно ввода фамилии не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;

  DM.ADOQuery_all.Filter := 'Fam = '''+edt2.Text+''' ';
  DM.ADOQuery_all.Filtered := True;
end;

procedure TFTable.rb1Enter(Sender: TObject);
begin
  DM.ADOQuery_all.Sort := 'Tab_N' + ssort;
end;

procedure TFTable.rb3Enter(Sender: TObject);
begin
  DM.ADOQuery_all.Sort := 'Spec'+ ssort;
end;

procedure TFTable.rb4Enter(Sender: TObject);
begin
  DM.ADOQuery_all.Sort := 'B_Data'+ ssort;
end;

procedure TFTable.rb2Enter(Sender: TObject);
begin
  DM.ADOQuery_all.Sort := 'Fam'+ ssort;
end;

procedure TFTable.FormShow(Sender: TObject);
begin
  ssort:=' ASC';
end;

procedure TFTable.rb5Enter(Sender: TObject);
var temp:integer;
begin
  ssort:=' ASC';
  rg1Click(self);
end;

procedure TFTable.rb6Enter(Sender: TObject);
begin
  ssort:=' DESC';
  rg1Click(self);
end;

procedure TFTable.rg1Click(Sender: TObject);
begin
   case rg1.ItemIndex of
    0:rb1Enter(self);
    1:rb2Enter(self);
    2:rb3Enter(self);
    3:rb4Enter(self);
  end;
end;

procedure TFTable.rg2Click(Sender: TObject);
begin
  case rg2.ItemIndex of
    0:rb5Enter(self);
    1:rb6Enter(self);
  end;
end;

procedure TFTable.Button_5Click(Sender: TObject);
begin
  if Length(dblkcbb1.Text) <= 0 then
  begin;
     MessageDlg('Окно ввода специальности не должно быть пустым', mtError, [mbOK,mbOK], 0);
     Exit;
  end;
  DM.ADOQuery_all.Filter := 'Spec = '''+dblkcbb1.Text+''' ';
  DM.ADOQuery_all.Filtered := True;
end;

procedure TFTable.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', Char(8)]) then Key := Char(0);
end;

end.
