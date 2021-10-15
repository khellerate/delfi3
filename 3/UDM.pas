unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMM = class(TDataModule)
    ADOConnection_main: TADOConnection;
    ADOTable_kadrs: TADOTable;
    ADOTable_spets: TADOTable;
    DataSource_kadrs: TDataSource;
    DataSource_spets: TDataSource;
    ADOQuery_counter: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMM: TDMM;

implementation

{$R *.dfm}

end.
