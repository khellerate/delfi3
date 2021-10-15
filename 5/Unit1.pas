unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit2, DBCtrls, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBGrid_1: TDBGrid;
    DBGrid_2: TDBGrid;
    grp1: TGroupBox;
    Button_2: TButton;
    dblkcbbNAME_F: TDBLookupComboBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure dblkcbbNAME_FClick(Sender: TObject);
    procedure rb1Enter(Sender: TObject);
    procedure rb2Enter(Sender: TObject);
    procedure Button_2Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure TForm1.dblkcbbNAME_FClick(Sender: TObject);
begin
if ((Length(dblkcbbNAME_F.Text) <= 0) or (DM1.ADOQuery_FN.FieldCount <= 0))then
begin
  DM1.ADOQuery_FN.Filtered := False;
  dblkcbbNAME_F.KeyValue := '';
  Exit;
end;
   DM1.ADOQuery_FN.Filter := 'NAME_F = ''' + dblkcbbNAME_F.Text + '''';
   DM1.ADOQuery_FN.Filtered := true;
end;

procedure TForm1.rb1Enter(Sender: TObject);
begin
  dblkcbbNAME_F.Enabled := True;
end;

procedure TForm1.rb2Enter(Sender: TObject);
begin
  dblkcbbNAME_F.Enabled := false;
end;

procedure TForm1.Button_2Click(Sender: TObject);
begin
  if(rb2.Checked) then
  begin
    Form3.QuickRep1.Preview;
    Exit;
  end
  else if(Length(dblkcbbNAME_F.Text) <= 0) then
  begin
    MessageDlg('Не выбранна фирма', mtError, [mbOK,mbOK], 0);
    Exit;
  end;
  Form4.QuickRep1.Preview;
end;

procedure TForm1.rb2Click(Sender: TObject);
begin
  DM1.ADOQuery_FN.Filtered := False;
end;

procedure TForm1.rb1Click(Sender: TObject);
begin
  dblkcbbNAME_FClick(self);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.ADOQuery_Firma1.Edit;
  DM1.ADOQuery_Firma1.Post;
end;

end.
