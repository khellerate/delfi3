unit U4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ADODB;

type
  TForm4 = class(TForm)
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TDataSource;
    dbnvgr1: TDBNavigator;
    dbedtTab_N: TDBEdit;
    dbedtFam: TDBEdit;
    dbedtNames: TDBEdit;
    dbedtOtch: TDBEdit;
    dbedtAdres: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
begin
  edt1.Text:= DateToStr(tbl1.FieldByName('B_Data').AsDateTime);
  edt2.Text:= IntToStr(tbl1.FieldByName('Kod_Spec').AsInteger);
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  edt1.Text:= DateToStr(tbl1.FieldByName('B_Data').AsDateTime);
  edt2.Text:= IntToStr(tbl1.FieldByName('Kod_Spec').AsInteger);
end;

end.
