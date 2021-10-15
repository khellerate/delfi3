program Proj1;

uses
  Forms,
  UMain in 'UMain.pas' {Form1},
  U2 in 'U2.pas' {Form2},
  U3 in 'U3.pas' {Form3},
  U4 in 'U4.pas' {Form4},
  U5 in 'U5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
