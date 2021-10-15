unit U2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids;

type
  TForm2 = class(TForm)
    ADOTable_1: TADOTable;
    con_main: TADOConnection;
    DataSource_1: TDataSource;
    dbgrd1: TDBGrid;
    intgrfldADOTable_1Kod_Spec: TIntegerField;
    wdstrngfldADOTable_1Spec: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
