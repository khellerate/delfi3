unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TFMain = class(TForm)
    Button_OView: TButton;
    Button_OKEdit: TButton;
    Button_OSEdit: TButton;
    procedure Button_OViewClick(Sender: TObject);
    procedure Button_OKEditClick(Sender: TObject);
    procedure Button_OSEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

uses UView, UKEdit, USEdit, UDM, UEdit;

{$R *.dfm}

procedure TFMain.Button_OViewClick(Sender: TObject);
begin
  FView.Show;
end;

procedure TFMain.Button_OKEditClick(Sender: TObject);
begin
  FKEdit.Show;
end;

procedure TFMain.Button_OSEditClick(Sender: TObject);
begin
  FSEdit.Show;
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if(DMM.ADOTable_kadrs.Modified) then
        DMM.ADOTable_kadrs.Post;
end;

end.
