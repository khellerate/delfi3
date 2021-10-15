unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, Grids, DBGrids, DB, StdCtrls, DBCtrls, ExtCtrls;

type
  TFMain = class(TForm)
    ADOConnection_main: TADOConnection;
    ADOTable_Tovar: TADOTable;
    ADOTable_Sklad: TADOTable;
    DataSource_Tovar: TDataSource;
    DataSource_Sklad: TDataSource;
    DBGrid_Tovar: TDBGrid;
    DBGrid_Sklad: TDBGrid;
    DataSource_all: TDataSource;
    DBGrid_all: TDBGrid;
    Label1: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    Button_clc: TButton;
    Panel_clc: TPanel;
    RB_all: TRadioButton;
    RB_self: TRadioButton;
    lbl3: TLabel;
    DBCombo_sel: TDBLookupComboBox;
    pnl_price: TPanel;
    ADOQuery_price: TADOQuery;
    Button_upd: TButton;
    ADOQuery_all: TADOQuery;
    //procedure ADOQuery_allCalcFields(DataSet: TDataSet);
    procedure RB_allEnter(Sender: TObject);
    procedure RB_selfEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button_clcClick(Sender: TObject);
    procedure Button_updClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

//procedure TFMain.ADOQuery_allCalcFields(DataSet: TDataSet);
//begin
//  DataSet.FieldByName('Остаток').AsInteger :=
//      DataSet.Fields[2].AsInteger - DataSet.Fields[3].AsInteger;
//end;

procedure TFMain.RB_allEnter(Sender: TObject);
begin
  DBCombo_sel.Enabled := False;
end;

procedure TFMain.RB_selfEnter(Sender: TObject);
begin
  DBCombo_sel.Enabled := True;
end;

procedure TFMain.FormShow(Sender: TObject);
begin
  DBCombo_sel.KeyValue := ADOTable_Tovar.Fields[1].AsString;
  Button_clc.OnClick(self);
end;

procedure TFMain.Button_clcClick(Sender: TObject);
begin
  ADOQuery_price.Active:=False;

  if RB_self.Checked then
    ADOQuery_price.Parameters.Items[0].Value:= DBCombo_sel.Text
  else
    ADOQuery_price.Parameters.Items[0].Value:= null;
  ADOQuery_price.Active:=True;
  
  pnl_price.Caption := 'Стоимость товаров = ' + ADOQuery_price.Fields[0].AsString +'р';
end;

procedure TFMain.Button_updClick(Sender: TObject);
begin
  ADOQuery_all.Close;
  ADOQuery_all.Open;
end;

end.
