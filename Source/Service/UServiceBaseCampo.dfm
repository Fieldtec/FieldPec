object DMBaseCampo: TDMBaseCampo
  OldCreateOrder = True
  Height = 381
  Width = 814
  object BaseCampo: TFDQuery
    CachedUpdates = True
    OnReconcileError = BaseCampoReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select '
      ' a.*,'
      ' case'
      '  when a.status=1 then '#39'Aberta'#39
      '  when a.status=2 then '#39'Finalizada'#39
      ' end statusStr,'
      ' case'
      '  when a.id_operacao=1 then '#39'Movimenta'#231#227'o / Pesagem'#39
      '  when a.id_operacao=2 then '#39'Novos Animais'#39
      '  when a.id_operacao=3 then '#39'Animais Rastreados'#39
      '  when a.id_operacao=4 then '#39'Sa'#237'da Venda / Abate'#39
      ' end Movimentacao'
      'from base_campo a')
    Left = 64
    Top = 16
    object BaseCampoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BaseCampoID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
      Origin = 'ID_OPERACAO'
    end
    object BaseCampoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object BaseCampoID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object BaseCampoDATA_CRIACAO: TDateField
      FieldName = 'DATA_CRIACAO'
      Origin = 'DATA_CRIACAO'
    end
    object BaseCampoDATA_REG: TSQLTimeStampField
      FieldName = 'DATA_REG'
      Origin = 'DATA_REG'
    end
    object BaseCampoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object BaseCampoDATA_SYNC: TDateField
      FieldName = 'DATA_SYNC'
      Origin = 'DATA_SYNC'
    end
    object BaseCampoHORA_SYNC: TTimeField
      FieldName = 'HORA_SYNC'
      Origin = 'HORA_SYNC'
    end
    object BaseCampoSTATUSSTR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUSSTR'
      Origin = 'STATUSSTR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object BaseCampoMOVIMENTACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOVIMENTACAO'
      Origin = 'MOVIMENTACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 22
    end
  end
  object DetBaseCampoGTA: TFDQuery
    CachedUpdates = True
    OnReconcileError = DetBaseCampoGTAReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from det_base_campo_gta')
    Left = 56
    Top = 72
    object DetBaseCampoGTAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object DetBaseCampoGTAID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object DetBaseCampoGTAID_GTA: TIntegerField
      FieldName = 'ID_GTA'
      Origin = 'ID_GTA'
    end
    object DetBaseCampoGTASTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object DetBaseCampoBrincos: TFDQuery
    CachedUpdates = True
    OnReconcileError = DetBaseCampoBrincosReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from det_base_campo_brincos')
    Left = 56
    Top = 128
    object DetBaseCampoBrincosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DetBaseCampoBrincosID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object DetBaseCampoBrincosSISBOV_INICIAL: TStringField
      FieldName = 'SISBOV_INICIAL'
      Origin = 'SISBOV_INICIAL'
    end
    object DetBaseCampoBrincosSISBOV_FINAL: TStringField
      FieldName = 'SISBOV_FINAL'
      Origin = 'SISBOV_FINAL'
    end
    object DetBaseCampoBrincosSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object qryAuxBaseCampo: TFDQuery
    Connection = serviceDB.FCBaseCampo
    Left = 584
    Top = 32
  end
  object qryAuxBC: TFDQuery
    Connection = serviceDB.FCBaseCampo
    Left = 56
    Top = 192
  end
  object SyncAnimais: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT * FROM ANIMAL A'
      'WHERE ID_BASE_CAMPO=13 AND base_campo_sync=0'
      'AND BASE_CAMPO_TIPO_OPERACAO=1')
    Left = 304
    Top = 96
    object SyncAnimaisID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SyncAnimaisID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ID_LOCAL'
      Required = True
    end
    object SyncAnimaisID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      Required = True
    end
    object SyncAnimaisID_RACA: TIntegerField
      FieldName = 'ID_RACA'
      Origin = 'ID_RACA'
      Required = True
    end
    object SyncAnimaisIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 25
    end
    object SyncAnimaisIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object SyncAnimaisDATA_PROC: TSQLTimeStampField
      FieldName = 'DATA_PROC'
      Origin = 'DATA_PROC'
      Required = True
    end
    object SyncAnimaisGTA_ID: TIntegerField
      FieldName = 'GTA_ID'
      Origin = 'GTA_ID'
    end
    object SyncAnimaisIDADE_MESES: TIntegerField
      FieldName = 'IDADE_MESES'
      Origin = 'IDADE_MESES'
    end
    object SyncAnimaisPESO_ENTRADA: TFMTBCDField
      FieldName = 'PESO_ENTRADA'
      Origin = 'PESO_ENTRADA'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisULTIMO_PESO: TFMTBCDField
      FieldName = 'ULTIMO_PESO'
      Origin = 'ULTIMO_PESO'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisDATA_ULTIMO_PESO: TDateField
      FieldName = 'DATA_ULTIMO_PESO'
      Origin = 'DATA_ULTIMO_PESO'
    end
    object SyncAnimaisSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object SyncAnimaisDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object SyncAnimaisID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object SyncAnimaisDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object SyncAnimaisPESO_SAIDA: TFMTBCDField
      FieldName = 'PESO_SAIDA'
      Origin = 'PESO_SAIDA'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object SyncAnimaisID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
    end
    object SyncAnimaisULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
    end
    object SyncAnimaisULTIMO_USUARIO: TIntegerField
      FieldName = 'ULTIMO_USUARIO'
      Origin = 'ULTIMO_USUARIO'
    end
    object SyncAnimaisID_LOTESAIDA: TIntegerField
      FieldName = 'ID_LOTESAIDA'
      Origin = 'ID_LOTESAIDA'
    end
    object SyncAnimaisID_VEICULO_SAIDA: TIntegerField
      FieldName = 'ID_VEICULO_SAIDA'
      Origin = 'ID_VEICULO_SAIDA'
    end
    object SyncAnimaisORIGEM_DADOS: TStringField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
      Size = 15
    end
    object SyncAnimaisTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 15
    end
    object SyncAnimaisID_MOTIVO_MORTE: TIntegerField
      FieldName = 'ID_MOTIVO_MORTE'
      Origin = 'ID_MOTIVO_MORTE'
    end
    object SyncAnimaisID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object SyncAnimaisVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
    end
    object SyncAnimaisFLAG_SYNC: TIntegerField
      FieldName = 'FLAG_SYNC'
      Origin = 'FLAG_SYNC'
    end
    object SyncAnimaisDATA_SYNC: TSQLTimeStampField
      FieldName = 'DATA_SYNC'
      Origin = 'DATA_SYNC'
    end
    object SyncAnimaisDATA_LIBERACAO: TDateField
      FieldName = 'DATA_LIBERACAO'
      Origin = 'DATA_LIBERACAO'
    end
    object SyncAnimaisID_ULTIMO_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_ULTIMO_USUARIO_ALTERACAO'
      Origin = 'ID_ULTIMO_USUARIO_ALTERACAO'
    end
    object SyncAnimaisDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object SyncAnimaisID_CONTRATO_COMPRA: TIntegerField
      FieldName = 'ID_CONTRATO_COMPRA'
      Origin = 'ID_CONTRATO_COMPRA'
    end
    object SyncAnimaisID_PRODUTOR_DESTINO_SAIDA: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO_SAIDA'
      Origin = 'ID_PRODUTOR_DESTINO_SAIDA'
    end
    object SyncAnimaisIDADE_MORTE: TIntegerField
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
    end
    object SyncAnimaisID_GTA_SAIDA: TIntegerField
      FieldName = 'ID_GTA_SAIDA'
      Origin = 'ID_GTA_SAIDA'
    end
    object SyncAnimaisOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object SyncAnimaisTIPO_ENTRADA: TIntegerField
      FieldName = 'TIPO_ENTRADA'
      Origin = 'TIPO_ENTRADA'
      Required = True
    end
    object SyncAnimaisPESO_ESTIMADO: TFMTBCDField
      FieldName = 'PESO_ESTIMADO'
      Origin = 'PESO_ESTIMADO'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisDATA_PESO_ESTIMADO: TDateField
      FieldName = 'DATA_PESO_ESTIMADO'
      Origin = 'DATA_PESO_ESTIMADO'
    end
    object SyncAnimaisVALOR_CUSTO_ALIMENTAR: TFMTBCDField
      FieldName = 'VALOR_CUSTO_ALIMENTAR'
      Origin = 'VALOR_CUSTO_ALIMENTAR'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisVALOR_CUSTO_FIXO_ACU: TFMTBCDField
      FieldName = 'VALOR_CUSTO_FIXO_ACU'
      Origin = 'VALOR_CUSTO_FIXO_ACU'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisID_CATEGORIA_ATUAL: TIntegerField
      FieldName = 'ID_CATEGORIA_ATUAL'
      Origin = 'ID_CATEGORIA_ATUAL'
    end
    object SyncAnimaisCONSUMO_ACU: TFMTBCDField
      FieldName = 'CONSUMO_ACU'
      Origin = 'CONSUMO_ACU'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisID_COMUNICADO_REIDENT: TIntegerField
      FieldName = 'ID_COMUNICADO_REIDENT'
      Origin = 'ID_COMUNICADO_REIDENT'
    end
    object SyncAnimaisID_COMUNICADO_MORTE: TIntegerField
      FieldName = 'ID_COMUNICADO_MORTE'
      Origin = 'ID_COMUNICADO_MORTE'
    end
    object SyncAnimaisOBS_MORTE: TStringField
      FieldName = 'OBS_MORTE'
      Origin = 'OBS_MORTE'
      Size = 100
    end
    object SyncAnimaisTIPO_MORTE: TIntegerField
      FieldName = 'TIPO_MORTE'
      Origin = 'TIPO_MORTE'
    end
    object SyncAnimaisDATA_REPROCESSAMENTO: TSQLTimeStampField
      FieldName = 'DATA_REPROCESSAMENTO'
      Origin = 'DATA_REPROCESSAMENTO'
    end
    object SyncAnimaisID_COM_NASCIMENTO: TIntegerField
      FieldName = 'ID_COM_NASCIMENTO'
      Origin = 'ID_COM_NASCIMENTO'
    end
    object SyncAnimaisIDENTIFICACAO_MAE: TStringField
      FieldName = 'IDENTIFICACAO_MAE'
      Origin = 'IDENTIFICACAO_MAE'
    end
    object SyncAnimaisCARIMBO_NASCIMENTO: TStringField
      FieldName = 'CARIMBO_NASCIMENTO'
      Origin = 'CARIMBO_NASCIMENTO'
    end
    object SyncAnimaisOUTRO_ERAS: TIntegerField
      FieldName = 'OUTRO_ERAS'
      Origin = 'OUTRO_ERAS'
    end
    object SyncAnimaisIMS_PV: TBCDField
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      Precision = 18
    end
    object SyncAnimaisFLAG_SYNC_TERCEIROS: TIntegerField
      FieldName = 'FLAG_SYNC_TERCEIROS'
      Origin = 'FLAG_SYNC_TERCEIROS'
      Required = True
    end
    object SyncAnimaisDATA_SYNC_TERCEIROS: TDateField
      FieldName = 'DATA_SYNC_TERCEIROS'
      Origin = 'DATA_SYNC_TERCEIROS'
    end
    object SyncAnimaisID_REBANHO: TIntegerField
      FieldName = 'ID_REBANHO'
      Origin = 'ID_REBANHO'
    end
    object SyncAnimaisPESO_ENTRADA_CONF: TFMTBCDField
      FieldName = 'PESO_ENTRADA_CONF'
      Origin = 'PESO_ENTRADA_CONF'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisDATA_ENTRADA_CONF: TDateField
      FieldName = 'DATA_ENTRADA_CONF'
      Origin = 'DATA_ENTRADA_CONF'
    end
    object SyncAnimaisID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
      Required = True
    end
    object SyncAnimaisID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncAnimaisBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncAnimaisBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object SyncAnimaisBLOQUEIO: TIntegerField
      FieldName = 'BLOQUEIO'
      Origin = 'BLOQUEIO'
      Required = True
    end
    object SyncAnimaisDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object SyncAnimaisPESO_CARCACA: TFMTBCDField
      FieldName = 'PESO_CARCACA'
      Origin = 'PESO_CARCACA'
      Precision = 18
      Size = 2
    end
    object SyncAnimaisDATA_IMPORTA_CARACACA: TDateField
      FieldName = 'DATA_IMPORTA_CARACACA'
      Origin = 'DATA_IMPORTA_CARACACA'
    end
    object SyncAnimaisDESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Size = 30
    end
    object SyncAnimaisBASE_CAMPO_TIPO_OPERACAO: TIntegerField
      FieldName = 'BASE_CAMPO_TIPO_OPERACAO'
      Origin = 'BASE_CAMPO_TIPO_OPERACAO'
      Required = True
    end
  end
  object SyncMoviAnimal: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      
        'SELECT a.*,IDENTIFICACAO_1,IDENTIFICACAO_2 FROM movimentacao_ani' +
        'mal A'
      'JOIN ANIMAL B ON A.id_animal=B.ID'
      'WHERE a.id_base_campo=46'
      'AND A.base_campo_sync=0')
    Left = 304
    Top = 200
    object SyncMoviAnimalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SyncMoviAnimalID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object SyncMoviAnimalID_ANIMAL: TIntegerField
      FieldName = 'ID_ANIMAL'
      Origin = 'ID_ANIMAL'
      Required = True
    end
    object SyncMoviAnimalID_PASTO_ORIGEM: TIntegerField
      FieldName = 'ID_PASTO_ORIGEM'
      Origin = 'ID_PASTO_ORIGEM'
      Required = True
    end
    object SyncMoviAnimalID_PASTO_DESTINO: TIntegerField
      FieldName = 'ID_PASTO_DESTINO'
      Origin = 'ID_PASTO_DESTINO'
      Required = True
    end
    object SyncMoviAnimalDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object SyncMoviAnimalID_MOTIVO: TIntegerField
      FieldName = 'ID_MOTIVO'
      Origin = 'ID_MOTIVO'
      Required = True
    end
    object SyncMoviAnimalDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object SyncMoviAnimalPESO_ENTRADA: TFMTBCDField
      FieldName = 'PESO_ENTRADA'
      Origin = 'PESO_ENTRADA'
      Precision = 18
      Size = 2
    end
    object SyncMoviAnimalPESO_SAIDA_PROJ: TFMTBCDField
      FieldName = 'PESO_SAIDA_PROJ'
      Origin = 'PESO_SAIDA_PROJ'
      Precision = 18
      Size = 2
    end
    object SyncMoviAnimalDIAS: TIntegerField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object SyncMoviAnimalORIGEM_DADOS: TIntegerField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
    end
    object SyncMoviAnimalTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object SyncMoviAnimalID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncMoviAnimalBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncMoviAnimalBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object SyncMoviAnimalIDENTIFICACAO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object SyncMoviAnimalIDENTIFICACAO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object SyncPesoAnimal: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT '
      ' A.*,IDENTIFICACAO_1,IDENTIFICACAO_2 '
      'FROM animal_peso A'
      'JOIN ANIMAL B ON A.id_animal=B.ID'
      'WHERE A.id_base_campo= 46 AND A.base_campo_sync=0')
    Left = 304
    Top = 248
    object SyncPesoAnimalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SyncPesoAnimalID_ANIMAL: TIntegerField
      FieldName = 'ID_ANIMAL'
      Origin = 'ID_ANIMAL'
      Required = True
    end
    object SyncPesoAnimalID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object SyncPesoAnimalDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object SyncPesoAnimalPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Required = True
      Precision = 18
      Size = 2
    end
    object SyncPesoAnimalTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object SyncPesoAnimalDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object SyncPesoAnimalSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object SyncPesoAnimalID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
    end
    object SyncPesoAnimalLOTE_SAIDA: TIntegerField
      FieldName = 'LOTE_SAIDA'
      Origin = 'LOTE_SAIDA'
    end
    object SyncPesoAnimalULTIMA_PESAGEM: TDateField
      FieldName = 'ULTIMA_PESAGEM'
      Origin = 'ULTIMA_PESAGEM'
    end
    object SyncPesoAnimalULTIMO_PESO: TFMTBCDField
      FieldName = 'ULTIMO_PESO'
      Origin = 'ULTIMO_PESO'
      Precision = 18
      Size = 2
    end
    object SyncPesoAnimalDIAS_ULTIMO_PESO: TIntegerField
      FieldName = 'DIAS_ULTIMO_PESO'
      Origin = 'DIAS_ULTIMO_PESO'
    end
    object SyncPesoAnimalGMD: TFMTBCDField
      FieldName = 'GMD'
      Origin = 'GMD'
      Precision = 18
      Size = 2
    end
    object SyncPesoAnimalID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ID_LOCAL'
    end
    object SyncPesoAnimalID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncPesoAnimalBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncPesoAnimalBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object SyncPesoAnimalIDENTIFICACAO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object SyncPesoAnimalIDENTIFICACAO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object SyncSaidaAnimal: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT *  FROM animal A'
      'WHERE id_base_campo=46'
      'AND A.base_campo_sync is null'
      'and status=2')
    Left = 304
    Top = 304
    object SyncSaidaAnimalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SyncSaidaAnimalID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ID_LOCAL'
    end
    object SyncSaidaAnimalID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object SyncSaidaAnimalID_RACA: TIntegerField
      FieldName = 'ID_RACA'
      Origin = 'ID_RACA'
    end
    object SyncSaidaAnimalIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 25
    end
    object SyncSaidaAnimalIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object SyncSaidaAnimalDATA_PROC: TSQLTimeStampField
      FieldName = 'DATA_PROC'
      Origin = 'DATA_PROC'
    end
    object SyncSaidaAnimalGTA_ID: TIntegerField
      FieldName = 'GTA_ID'
      Origin = 'GTA_ID'
    end
    object SyncSaidaAnimalIDADE_MESES: TIntegerField
      FieldName = 'IDADE_MESES'
      Origin = 'IDADE_MESES'
    end
    object SyncSaidaAnimalPESO_ENTRADA: TFMTBCDField
      FieldName = 'PESO_ENTRADA'
      Origin = 'PESO_ENTRADA'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalULTIMO_PESO: TFMTBCDField
      FieldName = 'ULTIMO_PESO'
      Origin = 'ULTIMO_PESO'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalDATA_ULTIMO_PESO: TDateField
      FieldName = 'DATA_ULTIMO_PESO'
      Origin = 'DATA_ULTIMO_PESO'
    end
    object SyncSaidaAnimalSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object SyncSaidaAnimalDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object SyncSaidaAnimalID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object SyncSaidaAnimalDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object SyncSaidaAnimalPESO_SAIDA: TFMTBCDField
      FieldName = 'PESO_SAIDA'
      Origin = 'PESO_SAIDA'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object SyncSaidaAnimalID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
    end
    object SyncSaidaAnimalULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
    end
    object SyncSaidaAnimalULTIMO_USUARIO: TIntegerField
      FieldName = 'ULTIMO_USUARIO'
      Origin = 'ULTIMO_USUARIO'
    end
    object SyncSaidaAnimalID_LOTESAIDA: TIntegerField
      FieldName = 'ID_LOTESAIDA'
      Origin = 'ID_LOTESAIDA'
    end
    object SyncSaidaAnimalID_VEICULO_SAIDA: TIntegerField
      FieldName = 'ID_VEICULO_SAIDA'
      Origin = 'ID_VEICULO_SAIDA'
    end
    object SyncSaidaAnimalORIGEM_DADOS: TStringField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
      Size = 15
    end
    object SyncSaidaAnimalTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 15
    end
    object SyncSaidaAnimalID_MOTIVO_MORTE: TIntegerField
      FieldName = 'ID_MOTIVO_MORTE'
      Origin = 'ID_MOTIVO_MORTE'
    end
    object SyncSaidaAnimalID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object SyncSaidaAnimalVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
    end
    object SyncSaidaAnimalFLAG_SYNC: TIntegerField
      FieldName = 'FLAG_SYNC'
      Origin = 'FLAG_SYNC'
    end
    object SyncSaidaAnimalDATA_SYNC: TSQLTimeStampField
      FieldName = 'DATA_SYNC'
      Origin = 'DATA_SYNC'
    end
    object SyncSaidaAnimalDATA_LIBERACAO: TDateField
      FieldName = 'DATA_LIBERACAO'
      Origin = 'DATA_LIBERACAO'
    end
    object SyncSaidaAnimalID_ULTIMO_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_ULTIMO_USUARIO_ALTERACAO'
      Origin = 'ID_ULTIMO_USUARIO_ALTERACAO'
    end
    object SyncSaidaAnimalDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object SyncSaidaAnimalID_CONTRATO_COMPRA: TIntegerField
      FieldName = 'ID_CONTRATO_COMPRA'
      Origin = 'ID_CONTRATO_COMPRA'
    end
    object SyncSaidaAnimalID_PRODUTOR_DESTINO_SAIDA: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO_SAIDA'
      Origin = 'ID_PRODUTOR_DESTINO_SAIDA'
    end
    object SyncSaidaAnimalIDADE_MORTE: TIntegerField
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
    end
    object SyncSaidaAnimalID_GTA_SAIDA: TIntegerField
      FieldName = 'ID_GTA_SAIDA'
      Origin = 'ID_GTA_SAIDA'
    end
    object SyncSaidaAnimalOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object SyncSaidaAnimalTIPO_ENTRADA: TIntegerField
      FieldName = 'TIPO_ENTRADA'
      Origin = 'TIPO_ENTRADA'
    end
    object SyncSaidaAnimalPESO_ESTIMADO: TFMTBCDField
      FieldName = 'PESO_ESTIMADO'
      Origin = 'PESO_ESTIMADO'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalDATA_PESO_ESTIMADO: TDateField
      FieldName = 'DATA_PESO_ESTIMADO'
      Origin = 'DATA_PESO_ESTIMADO'
    end
    object SyncSaidaAnimalVALOR_CUSTO_ALIMENTAR: TFMTBCDField
      FieldName = 'VALOR_CUSTO_ALIMENTAR'
      Origin = 'VALOR_CUSTO_ALIMENTAR'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalVALOR_CUSTO_FIXO_ACU: TFMTBCDField
      FieldName = 'VALOR_CUSTO_FIXO_ACU'
      Origin = 'VALOR_CUSTO_FIXO_ACU'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalID_CATEGORIA_ATUAL: TIntegerField
      FieldName = 'ID_CATEGORIA_ATUAL'
      Origin = 'ID_CATEGORIA_ATUAL'
    end
    object SyncSaidaAnimalCONSUMO_ACU: TFMTBCDField
      FieldName = 'CONSUMO_ACU'
      Origin = 'CONSUMO_ACU'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalID_COMUNICADO_REIDENT: TIntegerField
      FieldName = 'ID_COMUNICADO_REIDENT'
      Origin = 'ID_COMUNICADO_REIDENT'
    end
    object SyncSaidaAnimalID_COMUNICADO_MORTE: TIntegerField
      FieldName = 'ID_COMUNICADO_MORTE'
      Origin = 'ID_COMUNICADO_MORTE'
    end
    object SyncSaidaAnimalOBS_MORTE: TStringField
      FieldName = 'OBS_MORTE'
      Origin = 'OBS_MORTE'
      Size = 100
    end
    object SyncSaidaAnimalTIPO_MORTE: TIntegerField
      FieldName = 'TIPO_MORTE'
      Origin = 'TIPO_MORTE'
    end
    object SyncSaidaAnimalDATA_REPROCESSAMENTO: TSQLTimeStampField
      FieldName = 'DATA_REPROCESSAMENTO'
      Origin = 'DATA_REPROCESSAMENTO'
    end
    object SyncSaidaAnimalID_COM_NASCIMENTO: TIntegerField
      FieldName = 'ID_COM_NASCIMENTO'
      Origin = 'ID_COM_NASCIMENTO'
    end
    object SyncSaidaAnimalIDENTIFICACAO_MAE: TStringField
      FieldName = 'IDENTIFICACAO_MAE'
      Origin = 'IDENTIFICACAO_MAE'
    end
    object SyncSaidaAnimalCARIMBO_NASCIMENTO: TStringField
      FieldName = 'CARIMBO_NASCIMENTO'
      Origin = 'CARIMBO_NASCIMENTO'
    end
    object SyncSaidaAnimalOUTRO_ERAS: TIntegerField
      FieldName = 'OUTRO_ERAS'
      Origin = 'OUTRO_ERAS'
    end
    object SyncSaidaAnimalIMS_PV: TBCDField
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      Precision = 18
    end
    object SyncSaidaAnimalFLAG_SYNC_TERCEIROS: TIntegerField
      FieldName = 'FLAG_SYNC_TERCEIROS'
      Origin = 'FLAG_SYNC_TERCEIROS'
    end
    object SyncSaidaAnimalDATA_SYNC_TERCEIROS: TDateField
      FieldName = 'DATA_SYNC_TERCEIROS'
      Origin = 'DATA_SYNC_TERCEIROS'
    end
    object SyncSaidaAnimalID_REBANHO: TIntegerField
      FieldName = 'ID_REBANHO'
      Origin = 'ID_REBANHO'
    end
    object SyncSaidaAnimalPESO_ENTRADA_CONF: TFMTBCDField
      FieldName = 'PESO_ENTRADA_CONF'
      Origin = 'PESO_ENTRADA_CONF'
      Precision = 18
      Size = 2
    end
    object SyncSaidaAnimalDATA_ENTRADA_CONF: TDateField
      FieldName = 'DATA_ENTRADA_CONF'
      Origin = 'DATA_ENTRADA_CONF'
    end
    object SyncSaidaAnimalID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object SyncSaidaAnimalID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncSaidaAnimalBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncSaidaAnimalBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object SyncSaidaAnimalBLOQUEIO: TIntegerField
      FieldName = 'BLOQUEIO'
      Origin = 'BLOQUEIO'
    end
    object SyncSaidaAnimalDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
  end
  object SyncReident: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT * FROM LOG_REIDENTIFICACAO'
      'WHERE ID_BASE_CAMPO=46'
      'AND base_campo_sync=0'
      '')
    Left = 304
    Top = 40
    object SyncReidentID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SyncReidentID_ANIMAL: TIntegerField
      FieldName = 'ID_ANIMAL'
      Origin = 'ID_ANIMAL'
      Required = True
    end
    object SyncReidentTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object SyncReidentANTIGA: TStringField
      FieldName = 'ANTIGA'
      Origin = 'ANTIGA'
      Required = True
    end
    object SyncReidentNOVA: TStringField
      FieldName = 'NOVA'
      Origin = 'NOVA'
      Required = True
    end
    object SyncReidentID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object SyncReidentDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object SyncReidentID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncReidentBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncReidentBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
  end
  object SyncSanidade: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT *  FROM ANIMAL_SANIDADE A'
      'WHERE id_base_campo=46'
      'AND A.base_campo_sync is null or A.base_campo_sync=0')
    Left = 408
    Top = 40
    object SyncSanidadeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SyncSanidadeID_ANIMAL: TIntegerField
      FieldName = 'ID_ANIMAL'
      Origin = 'ID_ANIMAL'
      Required = True
    end
    object SyncSanidadeID_FARMACO: TIntegerField
      FieldName = 'ID_FARMACO'
      Origin = 'ID_FARMACO'
      Required = True
    end
    object SyncSanidadeID_PROTOCOLO: TIntegerField
      FieldName = 'ID_PROTOCOLO'
      Origin = 'ID_PROTOCOLO'
    end
    object SyncSanidadeDOSE_ML: TFMTBCDField
      FieldName = 'DOSE_ML'
      Origin = 'DOSE_ML'
      Required = True
      Precision = 18
      Size = 2
    end
    object SyncSanidadeID_PROPRIEDAE: TIntegerField
      FieldName = 'ID_PROPRIEDAE'
      Origin = 'ID_PROPRIEDAE'
      Required = True
    end
    object SyncSanidadeID_LOCAL_ATUAL: TIntegerField
      FieldName = 'ID_LOCAL_ATUAL'
      Origin = 'ID_LOCAL_ATUAL'
      Required = True
    end
    object SyncSanidadeDATA_APLICACAO: TDateField
      FieldName = 'DATA_APLICACAO'
      Origin = 'DATA_APLICACAO'
      Required = True
    end
    object SyncSanidadeTIPO_APLICACAO: TIntegerField
      FieldName = 'TIPO_APLICACAO'
      Origin = 'TIPO_APLICACAO'
      Required = True
    end
    object SyncSanidadeID_RESPONSAVEL_APLICACAO: TIntegerField
      FieldName = 'ID_RESPONSAVEL_APLICACAO'
      Origin = 'ID_RESPONSAVEL_APLICACAO'
    end
    object SyncSanidadeID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object SyncSanidadeDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object SyncSanidadeSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object SyncSanidadeTIPO_TRATAMENTO: TIntegerField
      FieldName = 'TIPO_TRATAMENTO'
      Origin = 'TIPO_TRATAMENTO'
      Required = True
    end
    object SyncSanidadeID_RESPONSAVEL_APLI_DIREITO: TIntegerField
      FieldName = 'ID_RESPONSAVEL_APLI_DIREITO'
      Origin = 'ID_RESPONSAVEL_APLI_DIREITO'
    end
    object SyncSanidadeCARENCIA_DIAS: TIntegerField
      FieldName = 'CARENCIA_DIAS'
      Origin = 'CARENCIA_DIAS'
      Required = True
    end
    object SyncSanidadeID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object SyncSanidadeDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object SyncSanidadeORIGEM_DADOS: TIntegerField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
    end
    object SyncSanidadeID_MOTIVO_APLICACAO: TIntegerField
      FieldName = 'ID_MOTIVO_APLICACAO'
      Origin = 'ID_MOTIVO_APLICACAO'
    end
    object SyncSanidadeCARENCIA_DATA: TDateField
      FieldName = 'CARENCIA_DATA'
      Origin = 'CARENCIA_DATA'
    end
    object SyncSanidadeID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncSanidadeBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncSanidadeBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
  end
  object SyncGTA: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT *  FROM GTA A'
      'WHERE id_base_campo=46'
      'AND A.base_campo_sync is null or A.base_campo_sync=0')
    Left = 408
    Top = 96
    object SyncGTAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SyncGTANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object SyncGTASERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SyncGTAUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SyncGTADATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      Required = True
    end
    object SyncGTADATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DATA_VALIDADE'
      Required = True
    end
    object SyncGTAZERO_A_12_FEMEA: TIntegerField
      FieldName = 'ZERO_A_12_FEMEA'
      Origin = 'ZERO_A_12_FEMEA'
      Required = True
    end
    object SyncGTAZERO_A_12_MACHO: TIntegerField
      FieldName = 'ZERO_A_12_MACHO'
      Origin = 'ZERO_A_12_MACHO'
      Required = True
    end
    object SyncGTATREZE_A_24_FEMEA: TIntegerField
      FieldName = 'TREZE_A_24_FEMEA'
      Origin = 'TREZE_A_24_FEMEA'
      Required = True
    end
    object SyncGTATREZE_A_24_MACHO: TIntegerField
      FieldName = 'TREZE_A_24_MACHO'
      Origin = 'TREZE_A_24_MACHO'
      Required = True
    end
    object SyncGTAVITE_CINCO_A_36_FEMEA: TIntegerField
      FieldName = 'VITE_CINCO_A_36_FEMEA'
      Origin = 'VITE_CINCO_A_36_FEMEA'
      Required = True
    end
    object SyncGTAVITE_CINCO_A_36_MACHO: TIntegerField
      FieldName = 'VITE_CINCO_A_36_MACHO'
      Origin = 'VITE_CINCO_A_36_MACHO'
      Required = True
    end
    object SyncGTAMAIS_36_FEMEA: TIntegerField
      FieldName = 'MAIS_36_FEMEA'
      Origin = 'MAIS_36_FEMEA'
      Required = True
    end
    object SyncGTAMAIS_36_MACHO: TIntegerField
      FieldName = 'MAIS_36_MACHO'
      Origin = 'MAIS_36_MACHO'
      Required = True
    end
    object SyncGTASTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object SyncGTAUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object SyncGTADATA_REG: TSQLTimeStampField
      FieldName = 'DATA_REG'
      Origin = 'DATA_REG'
      Required = True
    end
    object SyncGTATIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SyncGTAID_PROPRIEDADE_ORIGEM: TIntegerField
      FieldName = 'ID_PROPRIEDADE_ORIGEM'
      Origin = 'ID_PROPRIEDADE_ORIGEM'
      Required = True
    end
    object SyncGTAID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
      Required = True
    end
    object SyncGTAID_PROPRIEDADE_DESTINO: TIntegerField
      FieldName = 'ID_PROPRIEDADE_DESTINO'
      Origin = 'ID_PROPRIEDADE_DESTINO'
      Required = True
    end
    object SyncGTAID_PRODUTOR_DESTINO: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO'
      Origin = 'ID_PRODUTOR_DESTINO'
      Required = True
    end
    object SyncGTATOTAL_BRINCADOS: TIntegerField
      FieldName = 'TOTAL_BRINCADOS'
      Origin = 'TOTAL_BRINCADOS'
    end
    object SyncGTALOTADA: TIntegerField
      FieldName = 'LOTADA'
      Origin = 'LOTADA'
    end
    object SyncGTAGUID: TStringField
      FieldName = 'GUID'
      Origin = 'GUID'
      FixedChar = True
      Size = 40
    end
    object SyncGTAZERO_A_12_FEMEA_PROC: TIntegerField
      FieldName = 'ZERO_A_12_FEMEA_PROC'
      Origin = 'ZERO_A_12_FEMEA_PROC'
      Required = True
    end
    object SyncGTAZERO_A_12_MACHO_PROC: TIntegerField
      FieldName = 'ZERO_A_12_MACHO_PROC'
      Origin = 'ZERO_A_12_MACHO_PROC'
      Required = True
    end
    object SyncGTATREZE_A_24_FEMEA_PROC: TIntegerField
      FieldName = 'TREZE_A_24_FEMEA_PROC'
      Origin = 'TREZE_A_24_FEMEA_PROC'
      Required = True
    end
    object SyncGTATREZE_A_24_MACHO_PROC: TIntegerField
      FieldName = 'TREZE_A_24_MACHO_PROC'
      Origin = 'TREZE_A_24_MACHO_PROC'
      Required = True
    end
    object SyncGTAVITE_CINCO_A_36_FEMEA_PROC: TIntegerField
      FieldName = 'VITE_CINCO_A_36_FEMEA_PROC'
      Origin = 'VITE_CINCO_A_36_FEMEA_PROC'
      Required = True
    end
    object SyncGTAVITE_CINCO_A_36_MACHO_PROC: TIntegerField
      FieldName = 'VITE_CINCO_A_36_MACHO_PROC'
      Origin = 'VITE_CINCO_A_36_MACHO_PROC'
      Required = True
    end
    object SyncGTAMAIS_36_FEMEA_PROC: TIntegerField
      FieldName = 'MAIS_36_FEMEA_PROC'
      Origin = 'MAIS_36_FEMEA_PROC'
      Required = True
    end
    object SyncGTAMAIS_36_MACHO_PROC: TIntegerField
      FieldName = 'MAIS_36_MACHO_PROC'
      Origin = 'MAIS_36_MACHO_PROC'
      Required = True
    end
    object SyncGTAVALOR_CAB: TLargeintField
      FieldName = 'VALOR_CAB'
      Origin = 'VALOR_CAB'
    end
    object SyncGTAID_COMUNICADO: TIntegerField
      FieldName = 'ID_COMUNICADO'
      Origin = 'ID_COMUNICADO'
    end
    object SyncGTAID_VEICULO_SAIDA: TIntegerField
      FieldName = 'ID_VEICULO_SAIDA'
      Origin = 'ID_VEICULO_SAIDA'
    end
    object SyncGTARASTREADO: TIntegerField
      FieldName = 'RASTREADO'
      Origin = 'RASTREADO'
      Required = True
    end
    object SyncGTAID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object SyncGTADATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object SyncGTAVALOR_FRETE_CAB: TFMTBCDField
      FieldName = 'VALOR_FRETE_CAB'
      Origin = 'VALOR_FRETE_CAB'
      Precision = 18
      Size = 2
    end
    object SyncGTAVALOR_COMISSAO_CAB: TFMTBCDField
      FieldName = 'VALOR_COMISSAO_CAB'
      Origin = 'VALOR_COMISSAO_CAB'
      Precision = 18
      Size = 2
    end
    object SyncGTAPESO_B_ORIGEM: TFMTBCDField
      FieldName = 'PESO_B_ORIGEM'
      Origin = 'PESO_B_ORIGEM'
      Precision = 18
      Size = 2
    end
    object SyncGTAPESO_B_DESTINO: TFMTBCDField
      FieldName = 'PESO_B_DESTINO'
      Origin = 'PESO_B_DESTINO'
      Precision = 18
      Size = 2
    end
    object SyncGTAID_COMPRADOR: TIntegerField
      FieldName = 'ID_COMPRADOR'
      Origin = 'ID_COMPRADOR'
    end
    object SyncGTATOTAL_FEMEAS: TLargeintField
      FieldName = 'TOTAL_FEMEAS'
      Origin = 'TOTAL_FEMEAS'
    end
    object SyncGTATOTAL_MACHOS: TLargeintField
      FieldName = 'TOTAL_MACHOS'
      Origin = 'TOTAL_MACHOS'
    end
    object SyncGTATOTAL_GTA: TLargeintField
      FieldName = 'TOTAL_GTA'
      Origin = 'TOTAL_GTA'
    end
    object SyncGTAID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncGTABASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncGTABASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object SyncGTAESTOQUE_CHIP: TIntegerField
      FieldName = 'ESTOQUE_CHIP'
      Origin = 'ESTOQUE_CHIP'
    end
  end
  object SyncLoteSaida: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'select * from lote_saida'
      'where id in('
      'SELECT  distinct(a.id)  FROM lote_saida A'
      'join animal c on c.id_lotesaida=a.id'
      'WHERE a.id_base_campo=10'
      'AND A.base_campo_sync is null or A.base_campo_sync=0'
      ')')
    Left = 408
    Top = 160
    object SyncLoteSaidaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object SyncLoteSaidaDATA_EMBARQUE: TDateField
      FieldName = 'DATA_EMBARQUE'
      Origin = 'DATA_EMBARQUE'
      Required = True
    end
    object SyncLoteSaidaID_DESTINO: TIntegerField
      FieldName = 'ID_DESTINO'
      Origin = 'ID_DESTINO'
      Required = True
    end
    object SyncLoteSaidaID_PRODUTOR_DESTINO: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO'
      Origin = 'ID_PRODUTOR_DESTINO'
      Required = True
    end
    object SyncLoteSaidaID_ORIGEM: TIntegerField
      FieldName = 'ID_ORIGEM'
      Origin = 'ID_ORIGEM'
      Required = True
    end
    object SyncLoteSaidaID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
      Required = True
    end
    object SyncLoteSaidaDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object SyncLoteSaidaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object SyncLoteSaidaTOTAL_ANIMAIS_EMBARCADOS: TIntegerField
      FieldName = 'TOTAL_ANIMAIS_EMBARCADOS'
      Origin = 'TOTAL_ANIMAIS_EMBARCADOS'
    end
    object SyncLoteSaidaGUID: TStringField
      FieldName = 'GUID'
      Origin = 'GUID'
      FixedChar = True
      Size = 40
    end
    object SyncLoteSaidaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object SyncLoteSaidaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object SyncLoteSaidaID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncLoteSaidaBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncLoteSaidaBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object SyncLoteSaidaBLOQUEIO: TIntegerField
      FieldName = 'BLOQUEIO'
      Origin = 'BLOQUEIO'
    end
    object SyncLoteSaidaPESO_CARCACA_TOTAL: TFloatField
      FieldName = 'PESO_CARCACA_TOTAL'
      Origin = 'PESO_CARCACA_TOTAL'
    end
    object SyncLoteSaidaVALOR_TOTAL_FRIGO: TFloatField
      FieldName = 'VALOR_TOTAL_FRIGO'
      Origin = 'VALOR_TOTAL_FRIGO'
    end
    object SyncLoteSaidaPESO_CARCACA_IND: TFloatField
      FieldName = 'PESO_CARCACA_IND'
      Origin = 'PESO_CARCACA_IND'
    end
    object SyncLoteSaidaVALOR_IND_FRIGO: TFloatField
      FieldName = 'VALOR_IND_FRIGO'
      Origin = 'VALOR_IND_FRIGO'
    end
    object SyncLoteSaidaPESO_TOTAL: TFloatField
      FieldName = 'PESO_TOTAL'
      Origin = 'PESO_TOTAL'
    end
    object SyncLoteSaidaRC: TFloatField
      FieldName = 'RC'
      Origin = 'RC'
    end
  end
  object SyncVeiculoEmbarque: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT  *  FROM veiculos_embarque A'
      'WHERE a.id_base_campo=10'
      'AND A.base_campo_sync is null or A.base_campo_sync=0')
    Left = 408
    Top = 224
    object SyncVeiculoEmbarqueID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object SyncVeiculoEmbarqueID_LOTESAIDA: TIntegerField
      FieldName = 'ID_LOTESAIDA'
      Origin = 'ID_LOTESAIDA'
      Required = True
    end
    object SyncVeiculoEmbarquePLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 15
    end
    object SyncVeiculoEmbarqueDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object SyncVeiculoEmbarqueSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object SyncVeiculoEmbarqueID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
      Required = True
    end
    object SyncVeiculoEmbarqueCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Required = True
    end
    object SyncVeiculoEmbarqueLOTACAO: TIntegerField
      FieldName = 'LOTACAO'
      Origin = 'LOTACAO'
    end
    object SyncVeiculoEmbarqueLOTADO: TIntegerField
      FieldName = 'LOTADO'
      Origin = 'LOTADO'
      Required = True
    end
    object SyncVeiculoEmbarqueNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 15
    end
    object SyncVeiculoEmbarqueID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncVeiculoEmbarqueBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncVeiculoEmbarqueBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object SyncVeiculoEmbarquePESO_BALANCAO: TFMTBCDField
      FieldName = 'PESO_BALANCAO'
      Origin = 'PESO_BALANCAO'
      Precision = 18
      Size = 3
    end
    object SyncVeiculoEmbarqueGTA_ID: TIntegerField
      FieldName = 'GTA_ID'
      Origin = 'GTA_ID'
    end
    object SyncVeiculoEmbarquePESO_BALANCAO_PORTO: TFMTBCDField
      FieldName = 'PESO_BALANCAO_PORTO'
      Origin = 'PESO_BALANCAO_PORTO'
      Precision = 18
      Size = 3
    end
    object SyncVeiculoEmbarquePLACA_CR: TStringField
      FieldName = 'PLACA_CR'
      Origin = 'PLACA_CR'
      Size = 15
    end
    object SyncVeiculoEmbarqueMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Origin = 'MOTORISTA'
      Size = 100
    end
    object SyncVeiculoEmbarqueTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 15
    end
    object SyncVeiculoEmbarqueCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 200
    end
  end
  object SyncAnimalExist: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT * FROM ANIMAL A'
      'WHERE ID_BASE_CAMPO=13 AND base_campo_sync=0'
      'AND BASE_CAMPO_TIPO_OPERACAO=1')
    Left = 304
    Top = 152
    object SyncAnimalExistID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object SyncAnimalExistID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ID_LOCAL'
    end
    object SyncAnimalExistID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object SyncAnimalExistID_RACA: TIntegerField
      FieldName = 'ID_RACA'
      Origin = 'ID_RACA'
    end
    object SyncAnimalExistIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 25
    end
    object SyncAnimalExistIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object SyncAnimalExistDATA_PROC: TSQLTimeStampField
      FieldName = 'DATA_PROC'
      Origin = 'DATA_PROC'
    end
    object SyncAnimalExistGTA_ID: TIntegerField
      FieldName = 'GTA_ID'
      Origin = 'GTA_ID'
    end
    object SyncAnimalExistIDADE_MESES: TIntegerField
      FieldName = 'IDADE_MESES'
      Origin = 'IDADE_MESES'
    end
    object SyncAnimalExistPESO_ENTRADA: TFMTBCDField
      FieldName = 'PESO_ENTRADA'
      Origin = 'PESO_ENTRADA'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistULTIMO_PESO: TFMTBCDField
      FieldName = 'ULTIMO_PESO'
      Origin = 'ULTIMO_PESO'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistDATA_ULTIMO_PESO: TDateField
      FieldName = 'DATA_ULTIMO_PESO'
      Origin = 'DATA_ULTIMO_PESO'
    end
    object SyncAnimalExistSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object SyncAnimalExistDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object SyncAnimalExistID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object SyncAnimalExistDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object SyncAnimalExistPESO_SAIDA: TFMTBCDField
      FieldName = 'PESO_SAIDA'
      Origin = 'PESO_SAIDA'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object SyncAnimalExistID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
    end
    object SyncAnimalExistULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
    end
    object SyncAnimalExistULTIMO_USUARIO: TIntegerField
      FieldName = 'ULTIMO_USUARIO'
      Origin = 'ULTIMO_USUARIO'
    end
    object SyncAnimalExistID_LOTESAIDA: TIntegerField
      FieldName = 'ID_LOTESAIDA'
      Origin = 'ID_LOTESAIDA'
    end
    object SyncAnimalExistID_VEICULO_SAIDA: TIntegerField
      FieldName = 'ID_VEICULO_SAIDA'
      Origin = 'ID_VEICULO_SAIDA'
    end
    object SyncAnimalExistORIGEM_DADOS: TStringField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
      Size = 15
    end
    object SyncAnimalExistTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 15
    end
    object SyncAnimalExistID_MOTIVO_MORTE: TIntegerField
      FieldName = 'ID_MOTIVO_MORTE'
      Origin = 'ID_MOTIVO_MORTE'
    end
    object SyncAnimalExistID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object SyncAnimalExistVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
    end
    object SyncAnimalExistFLAG_SYNC: TIntegerField
      FieldName = 'FLAG_SYNC'
      Origin = 'FLAG_SYNC'
    end
    object SyncAnimalExistDATA_SYNC: TSQLTimeStampField
      FieldName = 'DATA_SYNC'
      Origin = 'DATA_SYNC'
    end
    object SyncAnimalExistDATA_LIBERACAO: TDateField
      FieldName = 'DATA_LIBERACAO'
      Origin = 'DATA_LIBERACAO'
    end
    object SyncAnimalExistID_ULTIMO_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_ULTIMO_USUARIO_ALTERACAO'
      Origin = 'ID_ULTIMO_USUARIO_ALTERACAO'
    end
    object SyncAnimalExistDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object SyncAnimalExistID_CONTRATO_COMPRA: TIntegerField
      FieldName = 'ID_CONTRATO_COMPRA'
      Origin = 'ID_CONTRATO_COMPRA'
    end
    object SyncAnimalExistID_PRODUTOR_DESTINO_SAIDA: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO_SAIDA'
      Origin = 'ID_PRODUTOR_DESTINO_SAIDA'
    end
    object SyncAnimalExistIDADE_MORTE: TIntegerField
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
    end
    object SyncAnimalExistID_GTA_SAIDA: TIntegerField
      FieldName = 'ID_GTA_SAIDA'
      Origin = 'ID_GTA_SAIDA'
    end
    object SyncAnimalExistOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object SyncAnimalExistTIPO_ENTRADA: TIntegerField
      FieldName = 'TIPO_ENTRADA'
      Origin = 'TIPO_ENTRADA'
    end
    object SyncAnimalExistPESO_ESTIMADO: TFMTBCDField
      FieldName = 'PESO_ESTIMADO'
      Origin = 'PESO_ESTIMADO'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistDATA_PESO_ESTIMADO: TDateField
      FieldName = 'DATA_PESO_ESTIMADO'
      Origin = 'DATA_PESO_ESTIMADO'
    end
    object SyncAnimalExistVALOR_CUSTO_ALIMENTAR: TFMTBCDField
      FieldName = 'VALOR_CUSTO_ALIMENTAR'
      Origin = 'VALOR_CUSTO_ALIMENTAR'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistVALOR_CUSTO_FIXO_ACU: TFMTBCDField
      FieldName = 'VALOR_CUSTO_FIXO_ACU'
      Origin = 'VALOR_CUSTO_FIXO_ACU'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistID_CATEGORIA_ATUAL: TIntegerField
      FieldName = 'ID_CATEGORIA_ATUAL'
      Origin = 'ID_CATEGORIA_ATUAL'
    end
    object SyncAnimalExistCONSUMO_ACU: TFMTBCDField
      FieldName = 'CONSUMO_ACU'
      Origin = 'CONSUMO_ACU'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistID_COMUNICADO_REIDENT: TIntegerField
      FieldName = 'ID_COMUNICADO_REIDENT'
      Origin = 'ID_COMUNICADO_REIDENT'
    end
    object SyncAnimalExistID_COMUNICADO_MORTE: TIntegerField
      FieldName = 'ID_COMUNICADO_MORTE'
      Origin = 'ID_COMUNICADO_MORTE'
    end
    object SyncAnimalExistOBS_MORTE: TStringField
      FieldName = 'OBS_MORTE'
      Origin = 'OBS_MORTE'
      Size = 100
    end
    object SyncAnimalExistTIPO_MORTE: TIntegerField
      FieldName = 'TIPO_MORTE'
      Origin = 'TIPO_MORTE'
    end
    object SyncAnimalExistDATA_REPROCESSAMENTO: TSQLTimeStampField
      FieldName = 'DATA_REPROCESSAMENTO'
      Origin = 'DATA_REPROCESSAMENTO'
    end
    object SyncAnimalExistID_COM_NASCIMENTO: TIntegerField
      FieldName = 'ID_COM_NASCIMENTO'
      Origin = 'ID_COM_NASCIMENTO'
    end
    object SyncAnimalExistIDENTIFICACAO_MAE: TStringField
      FieldName = 'IDENTIFICACAO_MAE'
      Origin = 'IDENTIFICACAO_MAE'
    end
    object SyncAnimalExistCARIMBO_NASCIMENTO: TStringField
      FieldName = 'CARIMBO_NASCIMENTO'
      Origin = 'CARIMBO_NASCIMENTO'
    end
    object SyncAnimalExistOUTRO_ERAS: TIntegerField
      FieldName = 'OUTRO_ERAS'
      Origin = 'OUTRO_ERAS'
    end
    object SyncAnimalExistIMS_PV: TBCDField
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      Precision = 18
    end
    object SyncAnimalExistFLAG_SYNC_TERCEIROS: TIntegerField
      FieldName = 'FLAG_SYNC_TERCEIROS'
      Origin = 'FLAG_SYNC_TERCEIROS'
    end
    object SyncAnimalExistDATA_SYNC_TERCEIROS: TDateField
      FieldName = 'DATA_SYNC_TERCEIROS'
      Origin = 'DATA_SYNC_TERCEIROS'
    end
    object SyncAnimalExistID_REBANHO: TIntegerField
      FieldName = 'ID_REBANHO'
      Origin = 'ID_REBANHO'
    end
    object SyncAnimalExistPESO_ENTRADA_CONF: TFMTBCDField
      FieldName = 'PESO_ENTRADA_CONF'
      Origin = 'PESO_ENTRADA_CONF'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistDATA_ENTRADA_CONF: TDateField
      FieldName = 'DATA_ENTRADA_CONF'
      Origin = 'DATA_ENTRADA_CONF'
    end
    object SyncAnimalExistID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object SyncAnimalExistID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncAnimalExistBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object SyncAnimalExistBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object SyncAnimalExistBLOQUEIO: TIntegerField
      FieldName = 'BLOQUEIO'
      Origin = 'BLOQUEIO'
      Required = True
    end
    object SyncAnimalExistDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object SyncAnimalExistPESO_CARCACA: TFMTBCDField
      FieldName = 'PESO_CARCACA'
      Origin = 'PESO_CARCACA'
      Precision = 18
      Size = 2
    end
    object SyncAnimalExistDATA_IMPORTA_CARACACA: TDateField
      FieldName = 'DATA_IMPORTA_CARACACA'
      Origin = 'DATA_IMPORTA_CARACACA'
    end
    object SyncAnimalExistDESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Size = 30
    end
    object SyncAnimalExistBASE_CAMPO_TIPO_OPERACAO: TIntegerField
      FieldName = 'BASE_CAMPO_TIPO_OPERACAO'
      Origin = 'BASE_CAMPO_TIPO_OPERACAO'
      Required = True
    end
  end
  object qryAuxBaseMaster: TFDQuery
    Connection = serviceDB.FCon
    Left = 512
    Top = 144
  end
  object SyncRefugoSaida: TFDQuery
    Connection = serviceDB.FCBaseCampo
    SQL.Strings = (
      'SELECT * FROM REFUGO_SAIDA rs '
      'WHERE BASE_CAMPO_SYNC=0')
    Left = 416
    Top = 296
    object SyncRefugoSaidaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SyncRefugoSaidaID_ANIMAL: TIntegerField
      FieldName = 'ID_ANIMAL'
      Origin = 'ID_ANIMAL'
      Required = True
    end
    object SyncRefugoSaidaID_LOTE_SAIDA: TIntegerField
      FieldName = 'ID_LOTE_SAIDA'
      Origin = 'ID_LOTE_SAIDA'
      Required = True
    end
    object SyncRefugoSaidaIDDENTIFICACAO_1: TStringField
      FieldName = 'IDDENTIFICACAO_1'
      Origin = 'IDDENTIFICACAO_1'
    end
    object SyncRefugoSaidaIDDENTIFICACAO_2: TStringField
      FieldName = 'IDDENTIFICACAO_2'
      Origin = 'IDDENTIFICACAO_2'
    end
    object SyncRefugoSaidaPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object SyncRefugoSaidaDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object SyncRefugoSaidaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object SyncRefugoSaidaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object SyncRefugoSaidaID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object SyncRefugoSaidaBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
  end
end
