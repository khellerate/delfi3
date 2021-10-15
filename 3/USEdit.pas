unit USEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDM, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFSEdit = class(TForm)
    dbnvgr1: TDBNavigator;
    DBGrid_1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSEdit: TFSEdit;

implementation

{$R *.dfm}

end.
