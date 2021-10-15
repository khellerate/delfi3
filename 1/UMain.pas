unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses U2, U3, U4, U5;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 Form4.Show;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  Form5.Show;
end;

end.
