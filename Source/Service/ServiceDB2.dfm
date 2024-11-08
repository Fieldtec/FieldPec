object serviceDBN: TserviceDBN
  OldCreateOrder = False
  Height = 654
  Width = 1117
  object DET_FASE_PLAN: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_PLANEJAMENTO'
    MasterFields = 'ID'
    DetailFields = 'ID_PLANEJAMENTO'
    OnReconcileError = DET_FASE_PLANReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' d.*,'
      ' CASE '
      '  WHEN ID_FASE=1  THEN '#39'JANEIRO'#39
      '  WHEN ID_FASE=2  THEN '#39'FEVEREIRO'#39
      '  WHEN ID_FASE=3  THEN '#39'MARCO'#39
      '  WHEN ID_FASE=4  THEN '#39'ABRIL'#39
      '  WHEN ID_FASE=5  THEN '#39'MAIO'#39
      '  WHEN ID_FASE=6  THEN '#39'JUNHO'#39
      '  WHEN ID_FASE=7  THEN '#39'JULHO'#39
      '  WHEN ID_FASE=8  THEN '#39'AGOSTO'#39
      '  WHEN ID_FASE=9  THEN '#39'SETEMBRO'#39
      '  WHEN ID_FASE=10 THEN '#39'OUTUBRO'#39
      '  WHEN ID_FASE=11 THEN '#39'NOVEMBRO'#39
      '  WHEN ID_FASE=12 THEN '#39'DEZEMBRO'#39
      ' END MES_STR '
      'FROM DET_FASE_PLAN d '
      'WHERE ID_PLANEJAMENTO=-1')
    Left = 56
    Top = 56
    object DET_FASE_PLANID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DET_FASE_PLANID_PLANEJAMENTO: TIntegerField
      FieldName = 'ID_PLANEJAMENTO'
      Origin = 'ID_PLANEJAMENTO'
    end
    object DET_FASE_PLANID_FASE: TIntegerField
      FieldName = 'ID_FASE'
      Origin = 'ID_FASE'
    end
    object DET_FASE_PLANCONSUMO_PV: TFMTBCDField
      FieldName = 'CONSUMO_PV'
      Origin = 'CONSUMO_PV'
      Precision = 18
      Size = 5
    end
    object DET_FASE_PLANGMD: TFMTBCDField
      FieldName = 'GMD'
      Origin = 'GMD'
      Precision = 18
      Size = 2
    end
    object DET_FASE_PLANDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object DET_FASE_PLANID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object DET_FASE_PLANID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object DET_FASE_PLANDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object DET_FASE_PLANSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object DET_FASE_PLANMES_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MES_STR'
      Origin = 'MES_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
  end
  object PlanejamentoNutricional: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' A.*, '
      ' B.Nome Categoria,'
      ' C.Nome Raca,'
      ' sm.Nome suplemento '
      'FROM PLAN_NUTRI A'
      'JOIN CATEGORIAS B ON A.ID_CATEGORIA=B.ID'
      'JOIN RACA C ON A.ID_RACA=C.ID'
      'join SUPLEMENTO_MINERAL sm on sm.id=a.ID_MINERAL'
      'where a.status=1')
    Left = 56
    Top = 8
    object PlanejamentoNutricionalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object PlanejamentoNutricionalID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object PlanejamentoNutricionalDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object PlanejamentoNutricionalID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      Required = True
    end
    object PlanejamentoNutricionalIDADE_MIN: TIntegerField
      FieldName = 'IDADE_MIN'
      Origin = 'IDADE_MIN'
    end
    object PlanejamentoNutricionalIDADE_MAX: TIntegerField
      FieldName = 'IDADE_MAX'
      Origin = 'IDADE_MAX'
    end
    object PlanejamentoNutricionalGMD: TFMTBCDField
      FieldName = 'GMD'
      Origin = 'GMD'
      Precision = 18
      Size = 3
    end
    object PlanejamentoNutricionalSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object PlanejamentoNutricionalCONSUMO_ESTIMADO: TFMTBCDField
      FieldName = 'CONSUMO_ESTIMADO'
      Origin = 'CONSUMO_ESTIMADO'
      Precision = 18
      Size = 3
    end
    object PlanejamentoNutricionalID_RACA: TIntegerField
      FieldName = 'ID_RACA'
      Origin = 'ID_RACA'
    end
    object PlanejamentoNutricionalPESO_ABATE: TFMTBCDField
      FieldName = 'PESO_ABATE'
      Origin = 'PESO_ABATE'
      Precision = 18
      Size = 3
    end
    object PlanejamentoNutricionalID_FASE: TIntegerField
      FieldName = 'ID_FASE'
      Origin = 'ID_FASE'
    end
    object PlanejamentoNutricionalID_MINERAL: TIntegerField
      FieldName = 'ID_MINERAL'
      Origin = 'ID_MINERAL'
    end
    object PlanejamentoNutricionalCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object PlanejamentoNutricionalRACA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object PlanejamentoNutricionalSUPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUPLEMENTO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object PlanejamentoNutricionalINGESTAO_PV: TFMTBCDField
      FieldName = 'INGESTAO_PV'
      Origin = 'INGESTAO_PV'
      Precision = 18
      Size = 5
    end
  end
  object GMD_ANUAL_FAZENDA: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select A.*,'
      ' CASE '
      '  WHEN MES=1  THEN '#39'JANEIRO'#39
      '  WHEN MES=2  THEN '#39'FEVEREIRO'#39
      '  WHEN MES=3  THEN '#39'MARCO'#39
      '  WHEN MES=4  THEN '#39'ABRIL'#39
      '  WHEN MES=5  THEN '#39'MAIO'#39
      '  WHEN MES=6  THEN '#39'JUNHO'#39
      '  WHEN MES=7  THEN '#39'JULHO'#39
      '  WHEN MES=8  THEN '#39'AGOSTO'#39
      '  WHEN MES=9  THEN '#39'SETEMBRO'#39
      '  WHEN MES=10 THEN '#39'OUTUBRO'#39
      '  WHEN MES=11 THEN '#39'NOVEMBRO'#39
      '  WHEN MES=12 THEN '#39'DEZEMBRO'#39
      ' END MES_STR '
      'from GMD_ANUAL_FAZENDA A ')
    Left = 56
    Top = 112
    object GMD_ANUAL_FAZENDAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object GMD_ANUAL_FAZENDAID_FAZENDA: TIntegerField
      FieldName = 'ID_FAZENDA'
      Origin = 'ID_FAZENDA'
    end
    object GMD_ANUAL_FAZENDAANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object GMD_ANUAL_FAZENDAMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object GMD_ANUAL_FAZENDAGMD: TFMTBCDField
      FieldName = 'GMD'
      Origin = 'GMD'
      Precision = 18
      Size = 2
    end
    object GMD_ANUAL_FAZENDAMES_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MES_STR'
      Origin = 'MES_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object GMD_ANUAL_FAZENDADATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object GMD_ANUAL_FAZENDAID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object GMD_ANUAL_FAZENDAID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object GMD_ANUAL_FAZENDADATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object GMD_ANUAL_FAZENDASTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object LOG_REIDENTIFICACAO: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' A.*,'
      ' CASE TIPO '
      '  WHEN 1 THEN '#39'CHIP'#39
      '  WHEN 2 THEN '#39'NCF'#39
      ' END TIPOS'
      'FROM LOG_REIDENTIFICACAO A'
      'WHERE CAST(DATAREG AS DATE)='#39'10/21/2020'#39)
    Left = 192
    Top = 8
    object LOG_REIDENTIFICACAOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LOG_REIDENTIFICACAOID_ANIMAL: TIntegerField
      DisplayLabel = 'ID Animal'
      FieldName = 'ID_ANIMAL'
      Origin = 'ID_ANIMAL'
      Required = True
    end
    object LOG_REIDENTIFICACAOTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object LOG_REIDENTIFICACAOANTIGA: TStringField
      DisplayLabel = 'Identifica'#231#227'o Antiga'
      FieldName = 'ANTIGA'
      Origin = 'ANTIGA'
      Required = True
    end
    object LOG_REIDENTIFICACAONOVA: TStringField
      DisplayLabel = 'Identifica'#231#227'o Nova'
      FieldName = 'NOVA'
      Origin = 'NOVA'
      Required = True
    end
    object LOG_REIDENTIFICACAOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object LOG_REIDENTIFICACAODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object LOG_REIDENTIFICACAOTIPOS: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Identifica'#231#227'o'
      FieldName = 'TIPOS'
      Origin = 'TIPOS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
  end
  object PLUVIOMETRO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM PLUVIOMETRO'
      'WHERE STATUS=1')
    Left = 192
    Top = 64
    object PLUVIOMETROID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PLUVIOMETROID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object PLUVIOMETRONOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object PLUVIOMETRODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object PLUVIOMETROID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object PLUVIOMETROSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object PLUVIOMETRODATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object PLUVIOMETROID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
  end
  object PLUVIOMETRIA: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,B.NOME PLUVIOMETRO FROM PLUVIOMETRIA A'
      'JOIN PLUVIOMETRO B ON A.ID_PLUVIOMETRO=B.ID'
      'WHERE A.STATUS=1')
    Left = 192
    Top = 120
    object PLUVIOMETRIAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PLUVIOMETRIADATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object PLUVIOMETRIATEMP_MIN: TFMTBCDField
      FieldName = 'TEMP_MIN'
      Origin = 'TEMP_MIN'
      Precision = 18
      Size = 2
    end
    object PLUVIOMETRIATEMP_MAX: TFMTBCDField
      FieldName = 'TEMP_MAX'
      Origin = 'TEMP_MAX'
      Precision = 18
      Size = 2
    end
    object PLUVIOMETRIAMM_CHUVA: TFMTBCDField
      FieldName = 'MM_CHUVA'
      Origin = 'MM_CHUVA'
      Precision = 18
      Size = 2
    end
    object PLUVIOMETRIAID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object PLUVIOMETRIADATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object PLUVIOMETRIASTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object PLUVIOMETRIAID_PLUVIOMETRO: TIntegerField
      FieldName = 'ID_PLUVIOMETRO'
      Origin = 'ID_PLUVIOMETRO'
    end
    object PLUVIOMETRIAID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object PLUVIOMETRIADATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object PLUVIOMETRIAPLUVIOMETRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLUVIOMETRO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object BEBEDOURO: TFDQuery
    CachedUpdates = True
    OnReconcileError = BEBEDOUROReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,B.CODIGO PASTO FROM BEBEDOURO A '
      'JOIN CURRAIS B ON A.ID_PASTO=B.ID'
      'WHERE A.STATUS=1')
    Left = 192
    Top = 176
    object BEBEDOUROID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BEBEDOUROID_PASTO: TIntegerField
      FieldName = 'ID_PASTO'
      Origin = 'ID_PASTO'
    end
    object BEBEDOUROIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Origin = 'IDENTIFICACAO'
    end
    object BEBEDOUROVOLUME: TFMTBCDField
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
      Precision = 18
      Size = 2
    end
    object BEBEDOUROVAZAO: TFMTBCDField
      FieldName = 'VAZAO'
      Origin = 'VAZAO'
      Precision = 18
      Size = 2
    end
    object BEBEDOUROFREQ_LIMPEZA: TIntegerField
      FieldName = 'FREQ_LIMPEZA'
      Origin = 'FREQ_LIMPEZA'
    end
    object BEBEDOUROULTIMA_LIMPEZA: TDateField
      FieldName = 'ULTIMA_LIMPEZA'
      Origin = 'ULTIMA_LIMPEZA'
    end
    object BEBEDOURODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object BEBEDOUROID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object BEBEDOURODATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object BEBEDOUROID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object BEBEDOUROSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object BEBEDOUROPASTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qrySelectCurralBebedouro: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select a.id,a.codigo,b.nome,'#39'false'#39' as checar from currais a'
      'left join retiro b on b.id=a.id_retiro'
      'where a.status=1')
    Left = 336
    Top = 8
    object qrySelectCurralBebedouroID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySelectCurralBebedouroCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 100
    end
    object qrySelectCurralBebedouroNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qrySelectCurralBebedouroCHECAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECAR'
      Origin = 'CHECAR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
  end
  object QRYLIMPEZABEBEDOURO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT'
      ' A.*,'
      ' C.codigo Pasto,'
      ' d.name Responsavel'
      'FROM limpezabebedouro A'
      'JOIN bebedouro B ON A.id_bebedouro=B.id'
      'JOIN currais C ON C.id=B.id_pasto'
      'JOIN USERS D ON D.id=A.id_respopnsavel'
      'where a.status=1')
    Left = 336
    Top = 64
    object QRYLIMPEZABEBEDOUROID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYLIMPEZABEBEDOUROID_BEBEDOURO: TIntegerField
      FieldName = 'ID_BEBEDOURO'
      Origin = 'ID_BEBEDOURO'
      Required = True
    end
    object QRYLIMPEZABEBEDOUROID_RESPOPNSAVEL: TIntegerField
      FieldName = 'ID_RESPOPNSAVEL'
      Origin = 'ID_RESPOPNSAVEL'
      Required = True
    end
    object QRYLIMPEZABEBEDOURODATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object QRYLIMPEZABEBEDOUROOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object QRYLIMPEZABEBEDOURODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object QRYLIMPEZABEBEDOUROSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object QRYLIMPEZABEBEDOUROID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object QRYLIMPEZABEBEDOUROHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object QRYLIMPEZABEBEDOUROPASTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QRYLIMPEZABEBEDOURORESPONSAVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESPONSAVEL'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object LIMPEZABEBEDOURO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT'
      ' *'
      'FROM limpezabebedouro '
      'where status=1')
    Left = 192
    Top = 232
    object LIMPEZABEBEDOUROID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object LIMPEZABEBEDOUROID_BEBEDOURO: TIntegerField
      FieldName = 'ID_BEBEDOURO'
      Origin = 'ID_BEBEDOURO'
    end
    object LIMPEZABEBEDOUROID_RESPOPNSAVEL: TIntegerField
      FieldName = 'ID_RESPOPNSAVEL'
      Origin = 'ID_RESPOPNSAVEL'
    end
    object LIMPEZABEBEDOURODATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object LIMPEZABEBEDOUROOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object LIMPEZABEBEDOURODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object LIMPEZABEBEDOUROSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object LIMPEZABEBEDOUROID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object LIMPEZABEBEDOUROHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
  end
  object SCOREPASTO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,B.CODIGO PASTO FROM SCOREPASTO A '
      'JOIN CURRAIS B ON A.ID_PASTO=B.ID')
    Left = 480
    Top = 16
    object SCOREPASTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SCOREPASTOID_PASTO: TIntegerField
      FieldName = 'ID_PASTO'
      Origin = 'ID_PASTO'
    end
    object SCOREPASTODATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object SCOREPASTOSCORE: TIntegerField
      FieldName = 'SCORE'
      Origin = 'SCORE'
    end
    object SCOREPASTOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object SCOREPASTODATA_REG: TSQLTimeStampField
      FieldName = 'DATA_REG'
      Origin = 'DATA_REG'
    end
    object SCOREPASTOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object SCOREPASTOPASTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object ALIMENTOS: TFDQuery
    CachedUpdates = True
    OnReconcileError = ALIMENTOSReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM ALIMENTO'
      'WHERE STATUS=1')
    Left = 56
    Top = 176
    object ALIMENTOSNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object ALIMENTOSCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object ALIMENTOSUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
    end
    object ALIMENTOSPESO_EMBALAGEM: TFMTBCDField
      FieldName = 'PESO_EMBALAGEM'
      Origin = 'PESO_EMBALAGEM'
      Precision = 18
      Size = 2
    end
    object ALIMENTOSPERCENT_TOLERANCIA: TIntegerField
      FieldName = 'PERCENT_TOLERANCIA'
      Origin = 'PERCENT_TOLERANCIA'
    end
    object ALIMENTOSMS: TFMTBCDField
      FieldName = 'MS'
      Origin = 'MS'
      Precision = 18
      Size = 2
    end
    object ALIMENTOSDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object ALIMENTOSID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object ALIMENTOSSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object ALIMENTOSID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ALIMENTOSSALDO_ATUAL: TFMTBCDField
      FieldName = 'SALDO_ATUAL'
      Origin = 'SALDO_ATUAL'
      Precision = 18
      Size = 3
    end
    object ALIMENTOSDATA_CUSTO_MEDIO: TDateField
      FieldName = 'DATA_CUSTO_MEDIO'
      Origin = 'DATA_CUSTO_MEDIO'
    end
  end
  object TAuxRebanho: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM AUX_REBANHO'
      'WHERE STATUS=1')
    Left = 488
    Top = 88
    object TAuxRebanhoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxRebanhoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
    end
    object TAuxRebanhoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object TAuxRebanhoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TAuxRebanhoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TAuxRebanhoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TAuxRebanhoDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TAuxRebanhoID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
  end
  object TAuxCargo: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from aux_cargo'
      'where status=1')
    Left = 312
    Top = 128
    object TAuxCargoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxCargoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object TAuxCargoPADRAO: TIntegerField
      FieldName = 'PADRAO'
      Origin = 'PADRAO'
    end
    object TAuxCargoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TAuxCargoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TAuxCargoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
  end
  object HIST_MS_ALIMENTO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select a.*,b.nome from HIST_MS_ALIMENTO a'
      'join alimento b on a.id_alimento=b.id'
      'where a.status=1 and a.id_alimento=1')
    Left = 56
    Top = 232
    object HIST_MS_ALIMENTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object HIST_MS_ALIMENTOID_ALIMENTO: TIntegerField
      FieldName = 'ID_ALIMENTO'
      Origin = 'ID_ALIMENTO'
    end
    object HIST_MS_ALIMENTOMS_OLD: TFMTBCDField
      FieldName = 'MS_OLD'
      Origin = 'MS_OLD'
      Precision = 18
      Size = 2
    end
    object HIST_MS_ALIMENTOMS_NEW: TFMTBCDField
      FieldName = 'MS_NEW'
      Origin = 'MS_NEW'
      Precision = 18
      Size = 2
    end
    object HIST_MS_ALIMENTODATA_ATUALIZACAO: TDateField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object HIST_MS_ALIMENTOHORA_ATUALIZACAO: TTimeField
      FieldName = 'HORA_ATUALIZACAO'
      Origin = 'HORA_ATUALIZACAO'
    end
    object HIST_MS_ALIMENTOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object HIST_MS_ALIMENTOID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object HIST_MS_ALIMENTOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object HIST_MS_ALIMENTONOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object ppReportComunicado: TppReport
    AutoStop = False
    Columns = 5
    ColumnPositions.Strings = (
      '6350'
      '45809'
      '85268'
      '124727'
      '164186')
    DataPipeline = ppDBReportNasci
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 538
    Top = 262
    Version = '21.02'
    mmColumnWidth = 39460
    DataPipelineName = 'ppDBReportNasci'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 42069
      mmPrintPosition = 0
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape13'
        mmHeight = 6879
        mmLeft = 265
        mmTop = 34925
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape14'
        mmHeight = 22203
        mmLeft = 265
        mmTop = 5292
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label62'
        Border.mmPadding = 0
        Caption = 'FORMUL'#193'RIO PARA COMUNICADO DE NASCIMENTO DE ANIMAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 44186
        mmTop = 794
        mmWidth = 108743
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText41'
        Border.mmPadding = 0
        DataField = 'NUMCOMUNIADO'
        DataPipeline = ppDBReportNasci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBReportNasci'
        mmHeight = 4763
        mmLeft = 188119
        mmTop = 794
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label69'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Propriedade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 6085
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText42'
        Border.mmPadding = 0
        DataField = 'PROPRIEDADE'
        DataPipeline = ppDBReportNasci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBReportNasci'
        mmHeight = 4763
        mmLeft = 32015
        mmTop = 6085
        mmWidth = 161925
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label70'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Produtor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 11377
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText43'
        Border.mmPadding = 0
        DataField = 'PRODUTOR'
        DataPipeline = ppDBReportNasci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBReportNasci'
        mmHeight = 4763
        mmLeft = 32015
        mmTop = 11377
        mmWidth = 161925
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label71'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ/CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 16933
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText44'
        Border.mmPadding = 0
        DataField = 'CNPJ_CPF'
        DataPipeline = ppDBReportNasci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBReportNasci'
        mmHeight = 4763
        mmLeft = 32015
        mmTop = 16933
        mmWidth = 161925
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label72'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Munic'#237'pio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 22225
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText45'
        Border.mmPadding = 0
        DataField = 'CIDADE'
        DataPipeline = ppDBReportNasci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBReportNasci'
        mmHeight = 4763
        mmLeft = 32015
        mmTop = 22225
        mmWidth = 62706
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 101865
        mmTop = 22225
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText46'
        Border.mmPadding = 0
        DataField = 'UF'
        DataPipeline = ppDBReportNasci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBReportNasci'
        mmHeight = 4763
        mmLeft = 111654
        mmTop = 22225
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label74'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6353
        mmLeft = 265
        mmTop = 35454
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'OBSERVACAO'
        DataPipeline = ppDBReportNasci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBReportNasci'
        mmHeight = 6615
        mmLeft = 32015
        mmTop = 35454
        mmWidth = 164307
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape15'
        mmHeight = 6879
        mmLeft = 265
        mmTop = 28046
        mmWidth = 197647
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label75'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL DE ANIMAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 529
        mmTop = 29369
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground2
      end
      object ppLBLTotalAnimais: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBLTotalAnimais1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 32015
        mmTop = 29369
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label77'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 30427
        mmTop = 6085
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label78'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 30427
        mmTop = 11377
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label79'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 30427
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label80'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 30427
        mmTop = 22225
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label81'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 30427
        mmTop = 29369
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label82'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 30427
        mmTop = 35454
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppColumnHeaderBand2: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape16'
        Brush.Color = clSilver
        mmHeight = 5821
        mmLeft = 265
        mmTop = 0
        mmWidth = 38623
        BandType = 2
        LayerName = Foreground2
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label83'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SISBOV '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 265
        mmTop = 529
        mmWidth = 38093
        BandType = 2
        LayerName = Foreground2
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape17'
        Brush.Style = bsClear
        mmHeight = 5821
        mmLeft = 265
        mmTop = 264
        mmWidth = 38623
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText48'
        Border.mmPadding = 0
        DataField = 'IDENTIFICACAO_2'
        DataPipeline = ppDBReportNasci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBReportNasci'
        mmHeight = 4763
        mmLeft = 265
        mmTop = 794
        mmWidth = 38093
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 188384
        mmTop = 794
        mmWidth = 7408
        BandType = 8
        LayerName = Foreground2
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line10'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 524
        mmLeft = 265
        mmTop = 0
        mmWidth = 196850
        BandType = 8
        LayerName = Foreground2
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label84'
        Border.mmPadding = 0
        Caption = 'Assinatura do Produtor'#13#10'       ou'#13#10'Assinatura Respons'#225'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11113
        mmLeft = 4498
        mmTop = 2117
        mmWidth = 69850
        BandType = 8
        LayerName = Foreground2
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line11'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1054
        mmLeft = 4233
        mmTop = 9525
        mmWidth = 70115
        BandType = 8
        LayerName = Foreground2
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line12'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 87577
        mmTop = 9260
        mmWidth = 14288
        BandType = 8
        LayerName = Foreground2
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line13'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 102394
        mmTop = 9260
        mmWidth = 14288
        BandType = 8
        LayerName = Foreground2
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line14'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 116946
        mmTop = 9260
        mmWidth = 14288
        BandType = 8
        LayerName = Foreground2
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label85'
        Border.mmPadding = 0
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 101865
        mmTop = 6879
        mmWidth = 1587
        BandType = 8
        LayerName = Foreground2
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 116681
        mmTop = 6879
        mmWidth = 1587
        BandType = 8
        LayerName = Foreground2
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object qryComNasci: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      'AN.IDENTIFICACAO_2, '
      'P.NOME PRODUTOR,'
      'P.CPF_CNPJ CNPJ_CPF,'
      'PP.IE,'
      'PP.NOME PROPRIEDADE,'
      'PP.COD_ERAS_BND,'
      'PP.CIDADE,'
      'PP.UF,'
      'PP.NIRF,'
      'PP.INCRA,'
      'CN."DATA",'
      'CN.OBSERVACAO'
      'FROM ANIMAL AN '
      'JOIN PRODUTORES P ON P.ID=AN.ID_PRODUTOR'
      'JOIN PROPRIEDADES PP ON PP.ID=P.ID_PROPRIEDADE'
      'JOIN COMUNICADO_NASCIMENTO CN ON CN.ID=AN.ID_COM_NASCIMENTO'
      'WHERE AN.STATUS>0 AND AN.ID_COM_NASCIMENTO=3')
    Left = 417
    Top = 199
    object qryComNasciIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object qryComNasciPRODUTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryComNasciCNPJ_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ_CPF'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryComNasciIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE'
      Origin = 'IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryComNasciPROPRIEDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIEDADE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryComNasciCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryComNasciUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object qryComNasciNIRF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIRF'
      Origin = 'NIRF'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryComNasciINCRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INCRA'
      Origin = 'INCRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryComNasciDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryComNasciOBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryComNasciCOD_ERAS_BND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ERAS_BND'
      Origin = 'COD_ERAS_BND'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsComNasci: TDataSource
    DataSet = qryComNasci
    Left = 504
    Top = 200
  end
  object ppDBReportNasci: TppDBPipeline
    DataSource = dsComNasci
    UserName = 'DBReportNasci'
    Left = 416
    Top = 264
  end
  object RATEIO_OUTROS_CUSTOS: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT a.*, '
      'CASE '
      '  WHEN a.STATUS =1 THEN '#39'N'#195'O RATEADO'#39#9
      '  WHEN a.STATUS =2 THEN '#39'RATEADO'#39
      'END StatusStr'
      'FROM RATEIO_OUTROS_CUSTOS a'
      'WHERE STATUS=1 AND ID_PROPRIEDADE=-1')
    Left = 728
    Top = 24
    object RATEIO_OUTROS_CUSTOSID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RATEIO_OUTROS_CUSTOSSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object RATEIO_OUTROS_CUSTOSID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object RATEIO_OUTROS_CUSTOSID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object RATEIO_OUTROS_CUSTOSDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object RATEIO_OUTROS_CUSTOSDATA_BASE: TDateField
      FieldName = 'DATA_BASE'
      Origin = 'DATA_BASE'
    end
    object RATEIO_OUTROS_CUSTOSVALOR_TOTAL_CABECA: TFMTBCDField
      FieldName = 'VALOR_TOTAL_CABECA'
      Origin = 'VALOR_TOTAL_CABECA'
      Precision = 18
      Size = 2
    end
    object RATEIO_OUTROS_CUSTOSSTATUSSTR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUSSTR'
      Origin = 'STATUSSTR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
  end
  object DET_RATEIO_OUTROS_CUSTOS: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_OUTROS_CUSTOS'
    MasterSource = dsOutrosCustos
    MasterFields = 'ID'
    DetailFields = 'ID_OUTROS_CUSTOS'
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from DET_RATEIO_OUTROS_CUSTOS'
      'where STATUS=1 and ID_OUTROS_CUSTOS=:id')
    Left = 728
    Top = 152
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object DET_RATEIO_OUTROS_CUSTOSID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DET_RATEIO_OUTROS_CUSTOSSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object DET_RATEIO_OUTROS_CUSTOSID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object DET_RATEIO_OUTROS_CUSTOSDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object DET_RATEIO_OUTROS_CUSTOSID_OUTROS_CUSTOS: TIntegerField
      FieldName = 'ID_OUTROS_CUSTOS'
      Origin = 'ID_OUTROS_CUSTOS'
    end
    object DET_RATEIO_OUTROS_CUSTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object DET_RATEIO_OUTROS_CUSTOSVALOR_CABECA: TFMTBCDField
      FieldName = 'VALOR_CABECA'
      Origin = 'VALOR_CABECA'
      Precision = 18
      Size = 2
    end
  end
  object dsOutrosCustos: TDataSource
    DataSet = RATEIO_OUTROS_CUSTOS
    Left = 728
    Top = 80
  end
  object DET_RATEIO_OUTROS_CUSTOS_I: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from DET_RATEIO_OUTROS_CUSTOS'
      'where STATUS=1 ')
    Left = 728
    Top = 240
    object DET_RATEIO_OUTROS_CUSTOS_IID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DET_RATEIO_OUTROS_CUSTOS_ISTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object DET_RATEIO_OUTROS_CUSTOS_IID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object DET_RATEIO_OUTROS_CUSTOS_IDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object DET_RATEIO_OUTROS_CUSTOS_IID_OUTROS_CUSTOS: TIntegerField
      FieldName = 'ID_OUTROS_CUSTOS'
      Origin = 'ID_OUTROS_CUSTOS'
    end
    object DET_RATEIO_OUTROS_CUSTOS_IDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object DET_RATEIO_OUTROS_CUSTOS_IVALOR_CABECA: TFMTBCDField
      FieldName = 'VALOR_CABECA'
      Origin = 'VALOR_CABECA'
      Precision = 18
      Size = 2
    end
  end
  object HistValorInsumo: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT FIRST 10 * FROM HIST_VALOR_INSUMOS'
      'WHERE ID_ALIMENTO =:ID '
      'ORDER BY ULTIMA_ENTRADA DESC ')
    Left = 48
    Top = 360
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object HistValorInsumoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object HistValorInsumoID_ALIMENTO: TIntegerField
      FieldName = 'ID_ALIMENTO'
      Origin = 'ID_ALIMENTO'
      Required = True
    end
    object HistValorInsumoID_PRODUTO_ACABADO: TIntegerField
      FieldName = 'ID_PRODUTO_ACABADO'
      Origin = 'ID_PRODUTO_ACABADO'
      Required = True
    end
    object HistValorInsumoID_ULTIMA_NF_ENTRADA: TIntegerField
      FieldName = 'ID_ULTIMA_NF_ENTRADA'
      Origin = 'ID_ULTIMA_NF_ENTRADA'
      Required = True
    end
    object HistValorInsumoULTIMA_ENTRADA: TDateField
      FieldName = 'ULTIMA_ENTRADA'
      Origin = 'ULTIMA_ENTRADA'
      Required = True
    end
    object HistValorInsumoSALDO_ATUAL: TFMTBCDField
      FieldName = 'SALDO_ATUAL'
      Origin = 'SALDO_ATUAL'
      Precision = 18
      Size = 3
    end
    object HistValorInsumoVALOR_MEDIO: TFMTBCDField
      FieldName = 'VALOR_MEDIO'
      Origin = 'VALOR_MEDIO'
      Precision = 18
      Size = 3
    end
    object HistValorInsumoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object HistValorInsumoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object HistValorInsumoID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
      Required = True
    end
  end
  object tmpNaoEncontradas: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM TMP_ANIMAL ta '
      
        'WHERE IDENTIFICACAO_1 NOT IN (SELECT IDENTIFICACAO_1 FROM ANIMAL' +
        ' a'
      'WHERE status=1)')
    Left = 344
    Top = 352
    object tmpNaoEncontradasIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 30
    end
    object tmpNaoEncontradasIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 30
    end
  end
  object VAGAO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM VAGAO'
      'where status=1')
    Left = 96
    Top = 456
    object VAGAOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VAGAONOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object VAGAOCAPACIDADE: TFMTBCDField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Precision = 18
      Size = 3
    end
    object VAGAOID_INTEGRACAO: TIntegerField
      FieldName = 'ID_INTEGRACAO'
      Origin = 'ID_INTEGRACAO'
    end
    object VAGAODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object VAGAOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object VAGAOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object VAGAOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object VAGAOTEMPO_MISTURA: TIntegerField
      FieldName = 'TEMPO_MISTURA'
      Origin = 'TEMPO_MISTURA'
    end
    object VAGAOVOLUME: TIntegerField
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
    end
    object VAGAODISTRIBUIDOR: TStringField
      FieldName = 'DISTRIBUIDOR'
      Origin = 'DISTRIBUIDOR'
      FixedChar = True
      Size = 1
    end
    object VAGAOMIX: TStringField
      FieldName = 'MIX'
      Origin = 'MIX'
      FixedChar = True
      Size = 1
    end
  end
  object DsVagao: TDataSource
    DataSet = VAGAO
    Left = 160
    Top = 456
  end
  object VagaoRacao: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_VAGAO'
    MasterSource = DsVagao
    MasterFields = 'ID'
    DetailFields = 'ID_VAGAO'
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,B.NOME ,B.TIPO  FROM VAGAO_RACAO A'
      'JOIN RACAO B ON A.ID_RECEITA=B.ID '
      'WHERE A.STATUS=1 AND ID_VAGAO=:ID')
    Left = 96
    Top = 520
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object VagaoRacaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VagaoRacaoID_VAGAO: TIntegerField
      FieldName = 'ID_VAGAO'
      Origin = 'ID_VAGAO'
    end
    object VagaoRacaoID_RECEITA: TIntegerField
      FieldName = 'ID_RECEITA'
      Origin = 'ID_RECEITA'
    end
    object VagaoRacaoBATIDA: TFMTBCDField
      FieldName = 'BATIDA'
      Origin = 'BATIDA'
      Precision = 18
      Size = 3
    end
    object VagaoRacaoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object VagaoRacaoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object VagaoRacaoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object VagaoRacaoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object VagaoRacaoTIPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryPrevistro: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' b.id idAlimento,'
      ' S.id idConsentrado,'
      'A.PERCENTMATERIASECA,'
      ' COALESCE(b.NOME,s.NOME) alimento,'
      ' CAST(1000 AS DOUBLE PRECISION)*'
      
        ' (CAST(a.INCLUSAOMATERIANATURAL AS DOUBLE PRECISION)/CAST(100 AS' +
        ' DOUBLE PRECISION)) Previsto, '
      
        ' (CAST(a.INCLUSAOMATERIANATURAL AS DOUBLE PRECISION)/CAST(100 AS' +
        ' DOUBLE PRECISION)) Realizado,'
      ' b.custo_medio VALORKG'
      'FROM RACAOINSUMOS a '
      'LEFT JOIN ALIMENTO b ON a.IDINSUMOALIMENTO=b.ID'
      'LEFT JOIN SUPLEMENTO_MINERAL s ON a.ID_PREMISTURA=s.ID'
      'WHERE a.STATUS=1 and IDRACAO=1')
    Left = 520
    Top = 500
    object qryPrevistroALIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIMENTO'
      Origin = 'ALIMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPrevistroPREVISTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PREVISTO'
      Origin = 'PREVISTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPrevistroIDALIMENTO: TIntegerField
      FieldName = 'IDALIMENTO'
      Origin = 'IDALIMENTO'
    end
    object qryPrevistroIDCONSENTRADO: TIntegerField
      FieldName = 'IDCONSENTRADO'
      Origin = 'IDCONSENTRADO'
    end
    object qryPrevistroPERCENTMATERIASECA: TFMTBCDField
      FieldName = 'PERCENTMATERIASECA'
      Origin = 'PERCENTMATERIASECA'
      Required = True
      Precision = 18
      Size = 3
    end
    object qryPrevistroVALORKG: TFMTBCDField
      FieldName = 'VALORKG'
      Origin = 'VALORKG'
      Required = True
      Precision = 18
      Size = 3
    end
    object qryPrevistroREALIZADO: TFloatField
      FieldName = 'REALIZADO'
      Origin = 'REALIZADO'
    end
  end
  object VAGAO_RACAO_ALIMENTOS: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from VAGAO_RACAO_ALIMENTOS')
    Left = 592
    Top = 400
  end
  object qryAux: TFDQuery
    Connection = serviceDB.FCon
    Left = 624
    Top = 472
  end
  object VagaoRacaoAlim: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from VAGAO_RACAO_ALIMENTOS'
      'where status=1')
    Left = 176
    Top = 544
    object VagaoRacaoAlimID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VagaoRacaoAlimID_VAGAO: TIntegerField
      FieldName = 'ID_VAGAO'
      Origin = 'ID_VAGAO'
    end
    object VagaoRacaoAlimID_RECEITA: TIntegerField
      FieldName = 'ID_RECEITA'
      Origin = 'ID_RECEITA'
    end
    object VagaoRacaoAlimID_ALIMENTO: TIntegerField
      FieldName = 'ID_ALIMENTO'
      Origin = 'ID_ALIMENTO'
    end
    object VagaoRacaoAlimPREFIXO_ALIMENTO: TStringField
      FieldName = 'PREFIXO_ALIMENTO'
      Origin = 'PREFIXO_ALIMENTO'
      Size = 6
    end
    object VagaoRacaoAlimQTDE_MN: TFMTBCDField
      FieldName = 'QTDE_MN'
      Origin = 'QTDE_MN'
      Precision = 18
      Size = 3
    end
    object VagaoRacaoAlimDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object VagaoRacaoAlimID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object VagaoRacaoAlimSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
end
