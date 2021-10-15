object DM: TDM
  OldCreateOrder = False
  Left = 264
  Top = 179
  Height = 348
  Width = 392
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
    Top = 88
  end
  object ADOTable_spets: TADOTable
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    TableName = 'Spets'
    Left = 48
    Top = 144
    object ADOTable_spetsKod_Spec: TIntegerField
      FieldName = 'Kod_Spec'
    end
    object ADOTable_spetsSpec: TWideStringField
      FieldName = 'Spec'
      Size = 25
    end
  end
  object DataSource_kadrs: TDataSource
    DataSet = ADOTable_kadrs
    Left = 152
    Top = 88
  end
  object DataSource_spets: TDataSource
    DataSet = ADOTable_spets
    Left = 152
    Top = 144
  end
  object ADOQuery_all: TADOQuery
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT      Kadrs_drozdov.Tab_N, Kadrs_drozdov.Fam, Spets.Spec, ' +
        'Kadrs_drozdov.B_Data'
      'FROM        Spets, Kadrs_drozdov'
      'WHERE       Spets.Kod_Spec = Kadrs_drozdov.Kod_Spec')
    Left = 48
    Top = 208
  end
  object DataSource_all: TDataSource
    DataSet = ADOQuery_all
    Left = 152
    Top = 208
  end
  object ADOQuery_ff: TADOQuery
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FindName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end>
    SQL.Strings = (
      'SELECT  Fam as FFam'
      'FROM    Kadrs_drozdov'
      'WHERE   Fam like '#39'%'#39' + FindName + '#39'%'#39)
    Left = 256
    Top = 216
    object wdstrngfldADOQuery_ffFam: TWideStringField
      FieldName = 'FFam'
      Size = 15
    end
  end
  object DataSource_ff: TDataSource
    DataSet = ADOQuery_ff
    Left = 320
    Top = 216
  end
  object ADOQuery_FTAB: TADOQuery
    Active = True
    Connection = ADOConnection_main
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TABF'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'TABL'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'TFAM'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'TSPE_K'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'TSPE_N'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'TDATEF'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'TDATEL'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT      Kadrs_drozdov.Tab_N, Kadrs_drozdov.Fam, Spets.Spec, ' +
        'Kadrs_drozdov.B_Data'
      'FROM        Spets, Kadrs_drozdov'
      'WHERE       Spets.Kod_Spec = Kadrs_drozdov.Kod_Spec'
      
        'AND         ((TABF    is null)  OR  (Kadrs_drozdov.Tab_N Between' +
        ' TABF AND TABL))'
      
        'AND         ((TFAM    is null)  OR  (Kadrs_drozdov.Fam like TFAM' +
        '))'
      'AND         ((TSPE_K  is null)  OR  (Spets.Spec = TSPE_K))'
      'AND         ((TSPE_N  is null)  OR  (Spets.Kod_Spec = TSPE_N))'
      
        'AND         ((TDATEF  is null)  OR  (Kadrs_drozdov.B_Data Betwee' +
        'n TDATEF AND TDATEL))')
    Left = 256
    Top = 144
    object intgrfldADOQuery_FTABTab_N: TIntegerField
      FieldName = 'Tab_N'
    end
    object wdstrngfldADOQuery_FTABFam: TWideStringField
      FieldName = 'Fam'
      Size = 15
    end
    object wdstrngfldADOQuery_FTABSpec: TWideStringField
      FieldName = 'Spec'
      Size = 25
    end
    object dtmfldADOQuery_FTABB_Data: TDateTimeField
      FieldName = 'B_Data'
    end
  end
  object DataSource_FTAB: TDataSource
    DataSet = ADOQuery_FTAB
    Left = 320
    Top = 144
  end
end
