object DMM: TDMM
  OldCreateOrder = False
  Left = 331
  Top = 303
  Height = 367
  Width = 487
  object ADOConnection_main: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\delf' +
      'i\Firma_drozdov1.mdb;Mode=ReadWrite;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 16
  end
  object ADOTable_kadrs: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    TableName = 'Kadrs_drozdov'
    Left = 48
    Top = 168
  end
  object ADOTable_spets: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    TableName = 'Spets'
    Left = 48
    Top = 224
  end
  object DataSource_kadrs: TDataSource
    DataSet = ADOTable_kadrs
    Left = 152
    Top = 168
  end
  object DataSource_spets: TDataSource
    DataSet = ADOTable_spets
    Left = 152
    Top = 224
  end
  object ADOQuery_counter: TADOQuery
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select MAX(Tab_N) + 1 '
      'from Kadrs_drozdov')
    Left = 312
    Top = 168
  end
end
