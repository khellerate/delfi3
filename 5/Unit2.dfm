object DM1: TDM1
  OldCreateOrder = False
  Left = 266
  Top = 162
  Height = 457
  Width = 381
  object ADOConnection_main: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\de' +
      'lfi\rec\new.mdb;Mode=ReadWrite;Extended Properties="";Persist Se' +
      'curity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registr' +
      'y Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5' +
      ';Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk' +
      ' Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Databa' +
      'se Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:' +
      'Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=Fa' +
      'lse;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP' +
      '=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object ADOTable_Firma: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    MasterFields = 'KOD_F'
    TableName = 'Firma'
    Left = 144
    Top = 8
  end
  object ADOTable_Nalogi: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    MasterFields = 'KOD_F'
    TableName = 'Nalogi'
    Left = 256
    Top = 8
    object atncfldADOTable_NalogiN_PLAT: TAutoIncField
      FieldName = 'N_PLAT'
      ReadOnly = True
    end
    object dtmfldADOTable_NalogiDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object intgrfldADOTable_NalogiKOD_F: TIntegerField
      FieldName = 'KOD_F'
    end
    object intgrfldADOTable_NalogiPLATA: TIntegerField
      FieldName = 'PLATA'
    end
  end
  object DataSource_Firma: TDataSource
    DataSet = ADOTable_Firma
    Left = 144
    Top = 72
  end
  object DataSource_Nalogi: TDataSource
    DataSet = ADOTable_Nalogi
    Left = 256
    Top = 72
  end
  object ADOQuery_Firma1: TADOQuery
    Active = True
    Connection = ADOConnection_main
    CursorLocation = clUseServer
    AfterPost = ADOQuery_Firma1AfterPost
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'SELECT KOD_F,NAME_F,ADRESS,JAN,FEV,MART,(JAN + FEV + MART) as kv' +
        ', ((kv * 13) / 100) as nl'
      'FROM Firma'
      ' ')
    Left = 144
    Top = 200
  end
  object DataSource_Firma1: TDataSource
    DataSet = ADOQuery_Firma1
    Left = 144
    Top = 144
  end
  object ADOQuery_FN: TADOQuery
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT Firma.NAME_F,Nalogi.DATA,Nalogi.PLATA '
      'FROM  Firma,Nalogi'
      'WHERE Firma.KOD_F = Nalogi.KOD_F')
    Left = 256
    Top = 200
    object wdstrngfldADOQuery_FNNAME_F: TWideStringField
      FieldName = 'NAME_F'
    end
    object dtmfldADOQuery_FNDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object intgrfldADOQuery_FNPLATA: TIntegerField
      FieldName = 'PLATA'
    end
  end
  object DataSource_FN: TDataSource
    DataSet = ADOQuery_FN
    Left = 256
    Top = 144
  end
end
