object DM: TDM
  OldCreateOrder = False
  Left = 253
  Top = 421
  Height = 294
  Width = 547
  object ADOConnection_main: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\delf' +
      'i\news.mdb;Mode=ReadWrite;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 24
  end
  object ADOTable_Firma: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    IndexFieldNames = 'KOD_F'
    TableName = 'Firma'
    Left = 144
    Top = 24
  end
  object ADOTable_Postavki: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    IndexFieldNames = 'Kod_F'
    MasterFields = 'KOD_F'
    MasterSource = DataSource_Firma
    TableName = 'Postavki'
    Left = 144
    Top = 104
  end
  object DataSource_Firma: TDataSource
    DataSet = ADOTable_Firma
    Left = 256
    Top = 24
  end
  object DataSource_Postavki: TDataSource
    DataSet = ADOTable_Postavki
    Left = 256
    Top = 104
  end
  object ADOQuery_all: TADOQuery
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Firma.Name_F, Postavki.N_Nakladnoi, Postavki.Data_postavk' +
        'i, Postavki.Summa'
      'FROM Firma,Postavki WHERE firma.Kod_F=Postavki.Kod_F')
    Left = 424
    Top = 104
    object wdstrngfldADOQuery_allName_F: TWideStringField
      FieldName = 'Name_F'
    end
    object atncfldADOQuery_allN_Nakladnoi: TAutoIncField
      FieldName = 'N_Nakladnoi'
      ReadOnly = True
    end
    object dtmfldADOQuery_allData_postavki: TDateTimeField
      FieldName = 'Data_postavki'
    end
    object intgrfldADOQuery_allSumma: TIntegerField
      FieldName = 'Summa'
    end
  end
  object DataSource_all: TDataSource
    DataSet = ADOQuery_all
    Left = 424
    Top = 24
  end
end
