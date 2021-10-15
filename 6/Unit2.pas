unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection_main: TADOConnection;
    ADOTable_Firma: TADOTable;
    ADOTable_Postavki: TADOTable;
    DataSource_Firma: TDataSource;
    DataSource_Postavki: TDataSource;
    ADOQuery_all: TADOQuery;
    DataSource_all: TDataSource;
    wdstrngfldADOQuery_allName_F: TWideStringField;
    atncfldADOQuery_allN_Nakladnoi: TAutoIncField;
    dtmfldADOQuery_allData_postavki: TDateTimeField;
    intgrfldADOQuery_allSumma: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
