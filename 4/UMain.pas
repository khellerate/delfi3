unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UTable;

type
  TFMain = class(TForm)
    Button_table: TButton;
    Button_query: TButton;
    Button_exit: TButton;
    procedure Button_tableClick(Sender: TObject);
    procedure Button_queryClick(Sender: TObject);
    procedure Button_exitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

uses UQuery;

{$R *.dfm}

procedure TFMain.Button_tableClick(Sender: TObject);
begin
  FTable.Show;
end;

procedure TFMain.Button_queryClick(Sender: TObject);
begin
  Form1.Show();
end;

procedure TFMain.Button_exitClick(Sender: TObject);
begin
  Close;
end;

end.
