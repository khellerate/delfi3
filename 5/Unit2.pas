unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB ;

type
  TDM1 = class(TDataModule)
    ADOConnection_main: TADOConnection;
    ADOTable_Firma: TADOTable;
    ADOTable_Nalogi: TADOTable;
    DataSource_Firma: TDataSource;
    DataSource_Nalogi: TDataSource;
    ADOQuery_Firma1: TADOQuery;
    DataSource_Firma1: TDataSource;
    ADOQuery_FN: TADOQuery;
    DataSource_FN: TDataSource;
    atncfldADOTable_NalogiN_PLAT: TAutoIncField;
    dtmfldADOTable_NalogiDATA: TDateTimeField;
    intgrfldADOTable_NalogiKOD_F: TIntegerField;
    intgrfldADOTable_NalogiPLATA: TIntegerField;
    wdstrngfldADOQuery_FNNAME_F: TWideStringField;
    dtmfldADOQuery_FNDATA: TDateTimeField;
    intgrfldADOQuery_FNPLATA: TIntegerField;
    procedure ADOQuery_Firma1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

uses Unit1;

{$R *.dfm}

procedure TDM1.ADOQuery_Firma1AfterPost(DataSet: TDataSet);
begin
  ADOQuery_Firma1.Close;
  ADOQuery_Firma1.Open;
end;

end.
