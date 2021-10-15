unit UEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, ADODB, UDM;

type
  TFEdit = class(TForm)
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    dbedt5: TDBEdit;
    dbedt7: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    Button_ok: TButton;
    Button_no: TButton;
    dblkcbbKod_Spec: TDBLookupComboBox;
    medt1: TMaskEdit;
    procedure Button_noClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button_okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEdit: TFEdit;

implementation


{$R *.dfm}

procedure TFEdit.Button_noClick(Sender: TObject);
begin
  Close;
end;

procedure TFEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMM.ADOTable_kadrs.Cancel;
end;

function isSuc(edit:TDBEdit) : Boolean;
begin
  if (Length(edit.Text) <= 3) then Result:=True
  else Result:=False;
end;

procedure TFEdit.Button_okClick(Sender: TObject);
var dat:TDateTime;
begin
  if not TryStrToDate(medt1.Text,dat) then
  begin
    ShowMessage('Повторите ввод даты');
    Exit;
  end;
  if isSuc(dbedt1) or isSuc(dbedt2) or isSuc(dbedt3) or isSuc(dbedt5) then
  begin
    ShowMessage('Повторите ввод данных');
    Exit;
  end;


  if DMM.ADOTable_kadrs.Modified or medt1.Modified then
  begin
      DMM.ADOTable_kadrs.Edit;
      DMM.ADOTable_kadrs.FieldByName('B_Data').AsString := medt1.Text;
      DMM.ADOTable_kadrs.Post;
  end;
  Close;
end;

procedure TFEdit.FormShow(Sender: TObject);
begin
  medt1.Text := DMM.ADOTable_kadrs.FieldByName('B_Data').AsString;
end;

end.
