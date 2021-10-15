unit UKEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, UDM;

type
  TFKEdit = class(TForm)
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKEdit: TFKEdit;

implementation

uses UEdit;

{$R *.dfm}

procedure TFKEdit.btn2Click(Sender: TObject);
begin
  if MessageDlg('Действительно удалить?',mtWarning, mbOKCancel, 0) = mrOK then
    DMM.ADOTable_kadrs.Delete;
end;

procedure TFKEdit.btn1Click(Sender: TObject);
begin
    DMM.ADOTable_kadrs.Append;
    DMM.ADOQuery_counter.Close;
    DMM.ADOQuery_counter.Open;
    FEdit.dbedt7.Field.Value := DMM.ADOQuery_counter.Fields[0].AsString;
    FEdit.dblkcbbKod_Spec.KeyValue:=1;
    FEdit.Show;
end;

procedure TFKEdit.btn3Click(Sender: TObject);
begin
  FEdit.Show;
end;

end.
