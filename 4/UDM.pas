unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection_main: TADOConnection;
    ADOTable_kadrs: TADOTable;
    ADOTable_spets: TADOTable;
    DataSource_kadrs: TDataSource;
    DataSource_spets: TDataSource;
    ADOQuery_all: TADOQuery;
    DataSource_all: TDataSource;
    ADOQuery_ff: TADOQuery;
    DataSource_ff: TDataSource;
    wdstrngfldADOQuery_ffFam: TWideStringField;
    ADOTable_spetsKod_Spec: TIntegerField;
    ADOTable_spetsSpec: TWideStringField;
    ADOQuery_FTAB: TADOQuery;
    DataSource_FTAB: TDataSource;
    intgrfldADOQuery_FTABTab_N: TIntegerField;
    wdstrngfldADOQuery_FTABFam: TWideStringField;
    wdstrngfldADOQuery_FTABSpec: TWideStringField;
    dtmfldADOQuery_FTABB_Data: TDateTimeField;
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
