unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Button_1: TButton;
    DBGrid_1: TDBGrid;
    DBGrid_2: TDBGrid;
    DBGrid_3: TDBGrid;
    Button_2: TButton;
    procedure Button_1Click(Sender: TObject);
    procedure Button_2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2, Unit4;

{$R *.dfm}

procedure TForm1.Button_1Click(Sender: TObject);
begin
  Form3.QuickRep1.Preview;
end;

procedure TForm1.Button_2Click(Sender: TObject);
begin
  DM.ADOQuery_all.Sort := 'Name_F ' + 'ASC';
  Form4.QuickRep1.Preview;
end;

end.
 