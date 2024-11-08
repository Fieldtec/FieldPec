object ServiceConf: TServiceConf
  OldCreateOrder = True
  Height = 469
  Width = 948
  object TRacao: TFDQuery
    CachedUpdates = True
    OnReconcileError = TRacaoReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select R.*, '
      ' CASE  '
      '   WHEN TIPO=1 THEN '#39'Adapta'#231#227'o'#39
      '   WHEN TIPO=2 THEN '#39'Crescimento'#39
      '   WHEN TIPO=3 THEN '#39'Termina'#231#227'o'#39
      '   WHEN TIPO=4 THEN '#39'Transi'#231#227'o'#39
      ' END tipo_str,'
      ' CASE  '
      '   WHEN STATUS=1 THEN '#39'Ativa'#39
      '   WHEN TIPO  =2 THEN '#39'Inativa'#39
      ' END Status_STR '
      'from racao R'
      'where r.Status>0')
    Left = 48
    Top = 24
    object TRacaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TRacaoTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object TRacaoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object TRacaoGMD: TFMTBCDField
      FieldName = 'GMD'
      Origin = 'GMD'
      Precision = 18
      Size = 3
    end
    object TRacaoSTATUS: TIntegerField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TRacaoDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
      Origin = 'DATAREGISTRO'
    end
    object TRacaoIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
    end
    object TRacaoDATAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAALTERACAO'
      Origin = 'DATAALTERACAO'
    end
    object TRacaoIDUSUARIOALTERACAO: TIntegerField
      FieldName = 'IDUSUARIOALTERACAO'
      Origin = 'IDUSUARIOALTERACAO'
    end
    object TRacaoVALORKG: TFMTBCDField
      FieldName = 'VALORKG'
      Origin = 'VALORKG'
      Precision = 18
      Size = 3
    end
    object TRacaoDATAFORMULACAO: TDateField
      FieldName = 'DATAFORMULACAO'
      Origin = 'DATAFORMULACAO'
    end
    object TRacaoID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TRacaoTIPO_STR: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'TIPO_STR'
      Origin = 'TIPO_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
    object TRacaoSTATUS_STR: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'STATUS_STR'
      Origin = 'STATUS_STR'
      ProviderFlags = []
      ReadOnly = True
    end
    object TRacaoMATERIASECA: TFMTBCDField
      FieldName = 'MATERIASECA'
      Origin = 'MATERIASECA'
      Precision = 18
      Size = 3
    end
    object TRacaoIMS_PV: TFMTBCDField
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      Precision = 18
      Size = 3
    end
    object TRacaoTEMPO_MISTURA: TIntegerField
      FieldName = 'TEMPO_MISTURA'
      Origin = 'TEMPO_MISTURA'
    end
    object TRacaoGMD_MACHO: TFMTBCDField
      FieldName = 'GMD_MACHO'
      Origin = 'GMD_MACHO'
      Precision = 18
      Size = 3
    end
    object TRacaoGMD_FEMEA: TFMTBCDField
      FieldName = 'GMD_FEMEA'
      Origin = 'GMD_FEMEA'
      Precision = 18
      Size = 3
    end
  end
  object TRacaoInsumos: TFDQuery
    CachedUpdates = True
    OnReconcileError = TRacaoInsumosReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' B.*,'
      ' COALESCE(A.NOME,C.NOME)INSUMO,'
      ' CASE  '
      '   WHEN A.NOME IS NOT NULL THEN '#39'ALIMENTO'#39
      '   WHEN C.NOME IS NOT NULL THEN '#39'PRE-MISTURA'#39
      ' END Tipo  '
      'FROM RACAOINSUMOS B'
      'LEFT JOIN ALIMENTO A ON A.ID=B.IDINSUMOALIMENTO'
      'LEFT JOIN SUPLEMENTO_MINERAL c ON C.ID=B.ID_PREMISTURA'
      'WHERE B.IDINSUMOALIMENTO=1')
    Left = 48
    Top = 80
    object TRacaoInsumosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TRacaoInsumosIDRACAO: TIntegerField
      FieldName = 'IDRACAO'
      Origin = 'IDRACAO'
    end
    object TRacaoInsumosIDINSUMOALIMENTO: TIntegerField
      FieldName = 'IDINSUMOALIMENTO'
      Origin = 'IDINSUMOALIMENTO'
    end
    object TRacaoInsumosPERCENTMATERIASECA: TFMTBCDField
      FieldName = 'PERCENTMATERIASECA'
      Origin = 'PERCENTMATERIASECA'
      Precision = 18
      Size = 3
    end
    object TRacaoInsumosKGMATERIASECA: TFMTBCDField
      FieldName = 'KGMATERIASECA'
      Origin = 'KGMATERIASECA'
      Precision = 18
      Size = 3
    end
    object TRacaoInsumosINCLUSAOMATERIASECA: TFMTBCDField
      FieldName = 'INCLUSAOMATERIASECA'
      Origin = 'INCLUSAOMATERIASECA'
      Precision = 18
      Size = 3
    end
    object TRacaoInsumosINCLUSAOMATERIANATURAL: TFMTBCDField
      FieldName = 'INCLUSAOMATERIANATURAL'
      Origin = 'INCLUSAOMATERIANATURAL'
      Precision = 18
      Size = 3
    end
    object TRacaoInsumosVALORKG: TFMTBCDField
      FieldName = 'VALORKG'
      Origin = 'VALORKG'
      Precision = 18
      Size = 3
    end
    object TRacaoInsumosVALORINCLUSAO: TFMTBCDField
      FieldName = 'VALORINCLUSAO'
      Origin = 'VALORINCLUSAO'
      Precision = 18
      Size = 3
    end
    object TRacaoInsumosSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TRacaoInsumosDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
      Origin = 'DATAREGISTRO'
    end
    object TRacaoInsumosIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
    end
    object TRacaoInsumosDATAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAALTERACAO'
      Origin = 'DATAALTERACAO'
    end
    object TRacaoInsumosIDUSUARIOALTERACAO: TIntegerField
      FieldName = 'IDUSUARIOALTERACAO'
      Origin = 'IDUSUARIOALTERACAO'
    end
    object TRacaoInsumosKGMATERIANATURAL: TFMTBCDField
      FieldName = 'KGMATERIANATURAL'
      Origin = 'KGMATERIANATURAL'
      Precision = 18
      Size = 3
    end
    object TRacaoInsumosORDEM_FABRICACAO: TIntegerField
      FieldName = 'ORDEM_FABRICACAO'
      Origin = 'ORDEM_FABRICACAO'
    end
    object TRacaoInsumosINSUMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSUMO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TRacaoInsumosID_PREMISTURA: TIntegerField
      FieldName = 'ID_PREMISTURA'
      Origin = 'ID_PREMISTURA'
    end
    object TRacaoInsumosTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
    object TRacaoInsumosTOLERANCIA_FAB: TFMTBCDField
      FieldName = 'TOLERANCIA_FAB'
      Origin = 'TOLERANCIA_FAB'
      Precision = 18
      Size = 3
    end
  end
  object PlanNutri: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' A.*,'
      ' CASE '
      '   WHEN A.STATUS=1 THEN '#39'ATIVO'#39' '
      '   WHEN A.STATUS=0 THEN '#39'INATIVO'#39
      ' END STATUS_STR,'
      'CASE '
      '   WHEN A.PADRAO=1 THEN '#39'SIM'#39' '
      '   WHEN A.PADRAO=0 THEN '#39'SIM'#39
      ' END PADRAO_STR,'
      '(SELECT FIRST 1 IMS_PV FROM DET_PLAN_NUTRI_CONFI D '
      ' JOIN RACAO R ON D.IDRACAO=R.ID'
      ' WHERE IDPLAN=A.ID AND ORDEM=1) IMS_PV  '
      'FROM PLAN_NUTRI_CONFI A'
      'WHERE STATUS>-1')
    Left = 128
    Top = 24
    object PlanNutriID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PlanNutriNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object PlanNutriOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object PlanNutriID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object PlanNutriID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object PlanNutriDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object PlanNutriDATAREG: TDateField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object PlanNutriSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object PlanNutriID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object PlanNutriPADRAO: TIntegerField
      FieldName = 'PADRAO'
      Origin = 'PADRAO'
    end
    object PlanNutriSTATUS_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_STR'
      Origin = 'STATUS_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
    object PlanNutriPADRAO_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PADRAO_STR'
      Origin = 'PADRAO_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanNutriIMS_PV: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object DetPlanNutri: TFDQuery
    CachedUpdates = True
    OnReconcileError = DetPlanNutriReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,B.NOME RACAONOME,B.TIPO FROM det_plan_nutri_confi A'
      'JOIN RACAO B ON A.idracao=B.id'
      'where a.idplan=1')
    Left = 128
    Top = 80
    object DetPlanNutriID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DetPlanNutriIDPLAN: TIntegerField
      FieldName = 'IDPLAN'
      Origin = 'IDPLAN'
    end
    object DetPlanNutriIDRACAO: TIntegerField
      FieldName = 'IDRACAO'
      Origin = 'IDRACAO'
    end
    object DetPlanNutriDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object DetPlanNutriIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
    end
    object DetPlanNutriIDUSUARIOALTERACAO: TIntegerField
      FieldName = 'IDUSUARIOALTERACAO'
      Origin = 'IDUSUARIOALTERACAO'
    end
    object DetPlanNutriDATAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAALTERACAO'
      Origin = 'DATAALTERACAO'
    end
    object DetPlanNutriSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object DetPlanNutriTIPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object DetPlanNutriORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      Required = True
    end
    object DetPlanNutriDIAS: TIntegerField
      FieldName = 'DIAS'
      Origin = 'DIAS'
      Required = True
    end
    object DetPlanNutriRACAONOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACAONOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object PlanejamentoTrato: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from PADRAO_TRATO_CONF'
      'where status=1')
    Left = 224
    Top = 16
    object PlanejamentoTratoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PlanejamentoTratoTRATO: TIntegerField
      FieldName = 'TRATO'
      Origin = 'TRATO'
    end
    object PlanejamentoTratoPERCENT: TFMTBCDField
      FieldName = 'PERCENT'
      Origin = '"PERCENT"'
      Precision = 18
      Size = 3
    end
    object PlanejamentoTratoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object PlanejamentoTratoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object PlanejamentoTratoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object PlanejamentoTratoID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object PlanejamentoTratoDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object PlanejamentoTratoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object PlanejamentoTratoID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
  end
  object TLoteNutricional: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      ' SELECT '
      '  A.*,'
      '  B.codigo Curral,'
      '  c.nome planejamento,'
      '  CASE '
      '  '#9'WHEN TIPOLOTE =0 THEN '#39'Confinamento'#39
      '  '#9'WHEN TIPOLOTE =1 THEN '#39'Semi-confinamento'#39
      '  '#9'WHEN TIPOLOTE =2 THEN '#39'Sequestro'#39
      '  END tipoLoteNome '
      ' FROM LOTE_NUTRICIONAL A '
      ' JOIN CURRAIS B ON A.id_local=B.id '
      ' JOIN plan_nutri_confi C ON C.id=A.id_planejameto '
      ' WHERE A.STATUS=1'
      ' ')
    Left = 136
    Top = 160
    object TLoteNutricionalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TLoteNutricionalID_PLANEJAMETO: TIntegerField
      FieldName = 'ID_PLANEJAMETO'
      Origin = 'ID_PLANEJAMETO'
    end
    object TLoteNutricionalID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TLoteNutricionalID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ID_LOCAL'
    end
    object TLoteNutricionalDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_ENTRADA'
    end
    object TLoteNutricionalDATA_PRIMEIRO_TRATO: TDateField
      FieldName = 'DATA_PRIMEIRO_TRATO'
      Origin = 'DATA_PRIMEIRO_TRATO'
    end
    object TLoteNutricionalQTDE_CAB: TIntegerField
      FieldName = 'QTDE_CAB'
      Origin = 'QTDE_CAB'
    end
    object TLoteNutricionalPESO_MEDIO: TFMTBCDField
      FieldName = 'PESO_MEDIO'
      Origin = 'PESO_MEDIO'
      Precision = 18
      Size = 3
    end
    object TLoteNutricionalDIAS_MEDIO: TIntegerField
      FieldName = 'DIAS_MEDIO'
      Origin = 'DIAS_MEDIO'
    end
    object TLoteNutricionalSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TLoteNutricionalID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TLoteNutricionalID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TLoteNutricionalDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object TLoteNutricionalCURRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CURRAL'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TLoteNutricionalPLANEJAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLANEJAMENTO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TLoteNutricionalPESO_ENTRADA: TFMTBCDField
      FieldName = 'PESO_ENTRADA'
      Origin = 'PESO_ENTRADA'
      Precision = 18
      Size = 3
    end
    object TLoteNutricionalTIPOLOTE: TIntegerField
      FieldName = 'TIPOLOTE'
      Origin = 'TIPOLOTE'
    end
    object TLoteNutricionalTIPOLOTENOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOLOTENOME'
      Origin = 'TIPOLOTENOME'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 17
    end
  end
  object qryAux: TFDQuery
    Connection = serviceDB.FCon
    Left = 376
    Top = 32
  end
  object DET_LOTE_TRATOS: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM DET_LOTE_TRATOS')
    Left = 136
    Top = 216
    object DET_LOTE_TRATOSID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DET_LOTE_TRATOSID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object DET_LOTE_TRATOSTRATO: TIntegerField
      FieldName = 'TRATO'
      Origin = 'TRATO'
    end
    object DET_LOTE_TRATOSPERCENT: TFMTBCDField
      FieldName = 'PERCENT'
      Origin = '"PERCENT"'
      Precision = 18
      Size = 2
    end
    object DET_LOTE_TRATOSDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object DET_LOTE_TRATOSID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
  end
  object DET_LOTE_PLANEJAMENTO: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,B.NOME RACAO_NOME,D.CODIGO CURRAL,'
      '   CASE'
      '    WHEN A.UTILIZADO=0 THEN '#39'NAO'#39
      '    WHEN A.UTILIZADO=1 THEN '#39'SIM'#39
      '   END REALIZADO,'
      '   (SELECT FIRST 1 IMS_PV FROM DET_PLAN_NUTRI_CONFI D '
      '   JOIN RACAO R ON D.IDRACAO=R.ID'
      '    WHERE IDPLAN=P.ID AND ORDEM=1) IMS_PV'
      '   FROM DET_LOTE_PLANEJAMENTO A'
      '   JOIN plan_nutri_confi P ON P.id=A.id_planejamento'
      '   JOIN RACAO B ON A.ID_RACAO=B.ID'
      '   JOIN LOTE_NUTRICIONAL C ON C.ID=A.ID_LOTE'
      '   JOIN CURRAIS D ON C.ID_LOCAL=D.ID'
      '   WHERE A.ID_LOTE=1'
      '   order by a.Dia,A.TRATO')
    Left = 136
    Top = 272
    object DET_LOTE_PLANEJAMENTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DET_LOTE_PLANEJAMENTOID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object DET_LOTE_PLANEJAMENTODIA: TIntegerField
      FieldName = 'DIA'
      Origin = 'DIA'
    end
    object DET_LOTE_PLANEJAMENTODATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object DET_LOTE_PLANEJAMENTOID_RACAO: TIntegerField
      FieldName = 'ID_RACAO'
      Origin = 'ID_RACAO'
    end
    object DET_LOTE_PLANEJAMENTOID_PLANEJAMENTO: TIntegerField
      FieldName = 'ID_PLANEJAMENTO'
      Origin = 'ID_PLANEJAMENTO'
    end
    object DET_LOTE_PLANEJAMENTOTRATO: TIntegerField
      FieldName = 'TRATO'
      Origin = 'TRATO'
    end
    object DET_LOTE_PLANEJAMENTOPERCENT: TFMTBCDField
      FieldName = 'PERCENT'
      Origin = '"PERCENT"'
      Precision = 18
      Size = 2
    end
    object DET_LOTE_PLANEJAMENTOUTILIZADO: TIntegerField
      FieldName = 'UTILIZADO'
      Origin = 'UTILIZADO'
    end
    object DET_LOTE_PLANEJAMENTODATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object DET_LOTE_PLANEJAMENTOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object DET_LOTE_PLANEJAMENTORACAO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACAO_NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object DET_LOTE_PLANEJAMENTOCURRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CURRAL'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object DET_LOTE_PLANEJAMENTOID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object DET_LOTE_PLANEJAMENTODATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object DET_LOTE_PLANEJAMENTOREALIZADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REALIZADO'
      Origin = 'REALIZADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object DET_LOTE_PLANEJAMENTOIMS_PV: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object LOTE_ANIMAIS: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' TRUNC(CURRENT_DATE-DATA_ENTRADA_CONF)+1 DIAS,'
      ' CASE '
      '  WHEN A.PESO_ESTIMADO>0 THEN '
      
        '   (COALESCE(A.PESO_ESTIMADO,A.PESO_ENTRADA_CONF,A.PESO_ENTRADA)' +
        '-ULTIMO_PESO)/'
      '    (TRUNC(CURRENT_TIMESTAMP-DATA_PROC)+1)'
      ' END GMD,'
      ' A.*,'
      ' B.CODIGO CURRAL_NOME,'
      ' D.NOME CATEGORI_NOME,'
      ' E.NOME RACA_NOME,'
      ' F.NOME REBANHO_NOME'
      'FROM ANIMAL A '
      'JOIN CATEGORIAS D ON D.ID=A.ID_CATEGORIA'
      'JOIN RACA E ON E.ID=A.ID_RACA'
      'JOIN CURRAIS B ON B.ID=A.ID_LOCAL'
      'JOIN LOTE_NUTRICIONAL C ON C.ID_LOCAL=B.ID'
      'JOIN AUX_REBANHO F ON F.ID=A.ID_REBANHO'
      '')
    Left = 136
    Top = 328
    object LOTE_ANIMAISDIAS: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS'
      Origin = 'DIAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object LOTE_ANIMAISGMD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'GMD'
      Origin = 'GMD'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LOTE_ANIMAISID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ID_LOCAL'
      Required = True
    end
    object LOTE_ANIMAISID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      Required = True
    end
    object LOTE_ANIMAISID_RACA: TIntegerField
      FieldName = 'ID_RACA'
      Origin = 'ID_RACA'
      Required = True
    end
    object LOTE_ANIMAISIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 25
    end
    object LOTE_ANIMAISIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object LOTE_ANIMAISDATA_PROC: TSQLTimeStampField
      FieldName = 'DATA_PROC'
      Origin = 'DATA_PROC'
      Required = True
    end
    object LOTE_ANIMAISGTA_ID: TIntegerField
      FieldName = 'GTA_ID'
      Origin = 'GTA_ID'
    end
    object LOTE_ANIMAISIDADE_MESES: TIntegerField
      FieldName = 'IDADE_MESES'
      Origin = 'IDADE_MESES'
    end
    object LOTE_ANIMAISPESO_ENTRADA: TFMTBCDField
      FieldName = 'PESO_ENTRADA'
      Origin = 'PESO_ENTRADA'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISULTIMO_PESO: TFMTBCDField
      FieldName = 'ULTIMO_PESO'
      Origin = 'ULTIMO_PESO'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISDATA_ULTIMO_PESO: TDateField
      FieldName = 'DATA_ULTIMO_PESO'
      Origin = 'DATA_ULTIMO_PESO'
    end
    object LOTE_ANIMAISSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object LOTE_ANIMAISDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object LOTE_ANIMAISID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object LOTE_ANIMAISDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object LOTE_ANIMAISPESO_SAIDA: TFMTBCDField
      FieldName = 'PESO_SAIDA'
      Origin = 'PESO_SAIDA'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object LOTE_ANIMAISID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
    end
    object LOTE_ANIMAISULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
    end
    object LOTE_ANIMAISULTIMO_USUARIO: TIntegerField
      FieldName = 'ULTIMO_USUARIO'
      Origin = 'ULTIMO_USUARIO'
    end
    object LOTE_ANIMAISID_LOTESAIDA: TIntegerField
      FieldName = 'ID_LOTESAIDA'
      Origin = 'ID_LOTESAIDA'
    end
    object LOTE_ANIMAISID_VEICULO_SAIDA: TIntegerField
      FieldName = 'ID_VEICULO_SAIDA'
      Origin = 'ID_VEICULO_SAIDA'
    end
    object LOTE_ANIMAISORIGEM_DADOS: TStringField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
      Size = 15
    end
    object LOTE_ANIMAISTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 15
    end
    object LOTE_ANIMAISID_MOTIVO_MORTE: TIntegerField
      FieldName = 'ID_MOTIVO_MORTE'
      Origin = 'ID_MOTIVO_MORTE'
    end
    object LOTE_ANIMAISID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object LOTE_ANIMAISVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
    end
    object LOTE_ANIMAISFLAG_SYNC: TIntegerField
      FieldName = 'FLAG_SYNC'
      Origin = 'FLAG_SYNC'
    end
    object LOTE_ANIMAISDATA_SYNC: TSQLTimeStampField
      FieldName = 'DATA_SYNC'
      Origin = 'DATA_SYNC'
    end
    object LOTE_ANIMAISDATA_LIBERACAO: TDateField
      FieldName = 'DATA_LIBERACAO'
      Origin = 'DATA_LIBERACAO'
    end
    object LOTE_ANIMAISID_ULTIMO_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_ULTIMO_USUARIO_ALTERACAO'
      Origin = 'ID_ULTIMO_USUARIO_ALTERACAO'
    end
    object LOTE_ANIMAISDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object LOTE_ANIMAISID_CONTRATO_COMPRA: TIntegerField
      FieldName = 'ID_CONTRATO_COMPRA'
      Origin = 'ID_CONTRATO_COMPRA'
    end
    object LOTE_ANIMAISID_PRODUTOR_DESTINO_SAIDA: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO_SAIDA'
      Origin = 'ID_PRODUTOR_DESTINO_SAIDA'
    end
    object LOTE_ANIMAISIDADE_MORTE: TIntegerField
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
    end
    object LOTE_ANIMAISID_GTA_SAIDA: TIntegerField
      FieldName = 'ID_GTA_SAIDA'
      Origin = 'ID_GTA_SAIDA'
    end
    object LOTE_ANIMAISOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object LOTE_ANIMAISTIPO_ENTRADA: TIntegerField
      FieldName = 'TIPO_ENTRADA'
      Origin = 'TIPO_ENTRADA'
      Required = True
    end
    object LOTE_ANIMAISPESO_ESTIMADO: TFMTBCDField
      FieldName = 'PESO_ESTIMADO'
      Origin = 'PESO_ESTIMADO'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISDATA_PESO_ESTIMADO: TDateField
      FieldName = 'DATA_PESO_ESTIMADO'
      Origin = 'DATA_PESO_ESTIMADO'
    end
    object LOTE_ANIMAISVALOR_CUSTO_ALIMENTAR: TFMTBCDField
      FieldName = 'VALOR_CUSTO_ALIMENTAR'
      Origin = 'VALOR_CUSTO_ALIMENTAR'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISVALOR_CUSTO_FIXO_ACU: TFMTBCDField
      FieldName = 'VALOR_CUSTO_FIXO_ACU'
      Origin = 'VALOR_CUSTO_FIXO_ACU'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISID_CATEGORIA_ATUAL: TIntegerField
      FieldName = 'ID_CATEGORIA_ATUAL'
      Origin = 'ID_CATEGORIA_ATUAL'
    end
    object LOTE_ANIMAISCONSUMO_ACU: TFMTBCDField
      FieldName = 'CONSUMO_ACU'
      Origin = 'CONSUMO_ACU'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISIMS_PV: TBCDField
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      Precision = 18
    end
    object LOTE_ANIMAISID_COMUNICADO_REIDENT: TIntegerField
      FieldName = 'ID_COMUNICADO_REIDENT'
      Origin = 'ID_COMUNICADO_REIDENT'
    end
    object LOTE_ANIMAISID_COMUNICADO_MORTE: TIntegerField
      FieldName = 'ID_COMUNICADO_MORTE'
      Origin = 'ID_COMUNICADO_MORTE'
    end
    object LOTE_ANIMAISOBS_MORTE: TStringField
      FieldName = 'OBS_MORTE'
      Origin = 'OBS_MORTE'
      Size = 100
    end
    object LOTE_ANIMAISTIPO_MORTE: TIntegerField
      FieldName = 'TIPO_MORTE'
      Origin = 'TIPO_MORTE'
    end
    object LOTE_ANIMAISDATA_REPROCESSAMENTO: TSQLTimeStampField
      FieldName = 'DATA_REPROCESSAMENTO'
      Origin = 'DATA_REPROCESSAMENTO'
    end
    object LOTE_ANIMAISID_COM_NASCIMENTO: TIntegerField
      FieldName = 'ID_COM_NASCIMENTO'
      Origin = 'ID_COM_NASCIMENTO'
    end
    object LOTE_ANIMAISIDENTIFICACAO_MAE: TStringField
      FieldName = 'IDENTIFICACAO_MAE'
      Origin = 'IDENTIFICACAO_MAE'
    end
    object LOTE_ANIMAISCARIMBO_NASCIMENTO: TStringField
      FieldName = 'CARIMBO_NASCIMENTO'
      Origin = 'CARIMBO_NASCIMENTO'
    end
    object LOTE_ANIMAISOUTRO_ERAS: TIntegerField
      FieldName = 'OUTRO_ERAS'
      Origin = 'OUTRO_ERAS'
    end
    object LOTE_ANIMAISFLAG_SYNC_TERCEIROS: TIntegerField
      FieldName = 'FLAG_SYNC_TERCEIROS'
      Origin = 'FLAG_SYNC_TERCEIROS'
      Required = True
    end
    object LOTE_ANIMAISDATA_SYNC_TERCEIROS: TDateField
      FieldName = 'DATA_SYNC_TERCEIROS'
      Origin = 'DATA_SYNC_TERCEIROS'
    end
    object LOTE_ANIMAISID_REBANHO: TIntegerField
      FieldName = 'ID_REBANHO'
      Origin = 'ID_REBANHO'
    end
    object LOTE_ANIMAISPESO_ENTRADA_CONF: TFMTBCDField
      FieldName = 'PESO_ENTRADA_CONF'
      Origin = 'PESO_ENTRADA_CONF'
      Precision = 18
      Size = 2
    end
    object LOTE_ANIMAISDATA_ENTRADA_CONF: TDateField
      FieldName = 'DATA_ENTRADA_CONF'
      Origin = 'DATA_ENTRADA_CONF'
    end
    object LOTE_ANIMAISID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
      Required = True
    end
    object LOTE_ANIMAISID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object LOTE_ANIMAISBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object LOTE_ANIMAISBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object LOTE_ANIMAISBLOQUEIO: TIntegerField
      FieldName = 'BLOQUEIO'
      Origin = 'BLOQUEIO'
      Required = True
    end
    object LOTE_ANIMAISDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object LOTE_ANIMAISCURRAL_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CURRAL_NOME'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LOTE_ANIMAISCATEGORI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORI_NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LOTE_ANIMAISRACA_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACA_NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object LOTE_ANIMAISREBANHO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REBANHO_NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object PlanejamentoPadrao: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' A.*,'
      ' (SELECT FIRST 1 IMS_PV FROM DET_PLAN_NUTRI_CONFI D '
      ' JOIN RACAO R ON D.IDRACAO=R.ID'
      ' WHERE IDPLAN=A.ID AND ORDEM=1) IMS_PV'
      'FROM PLAN_NUTRI_CONFI A'
      'WHERE STATUS=1 AND PADRAO=1'
      ''
      ''
      '')
    Left = 48
    Top = 136
    object PlanejamentoPadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PlanejamentoPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object PlanejamentoPadraoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object PlanejamentoPadraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object PlanejamentoPadraoID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object PlanejamentoPadraoDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object PlanejamentoPadraoDATAREG: TDateField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object PlanejamentoPadraoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object PlanejamentoPadraoID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
      Required = True
    end
    object PlanejamentoPadraoPADRAO: TIntegerField
      FieldName = 'PADRAO'
      Origin = 'PADRAO'
      Required = True
    end
    object PlanejamentoPadraoIMS_PV: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object qrySimulaPrimeiroTrato: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' B.TRATO,'
      ' A.QTDE_CAB,'
      ' A.PESO_MEDIO,'
      
        ' CAST((A.QTDE_CAB*A.PESO_MEDIO)*(CAST(:IMSPV AS DOUBLE PRECISION' +
        ')/100)AS DOUBLE PRECISION)*'
      ' (SELECT COUNT(*) FROM DET_LOTE_TRATOS WHERE ID_LOTE=A.ID)*'
      ' CAST(B.PERCENT AS DOUBLE PRECISION)/100 mnTrato,'
      ' PERCENT'
      'FROM LOTE_NUTRICIONAL A '
      'JOIN DET_LOTE_TRATOS B ON A.ID=B.ID_LOTE'
      'WHERE A.ID=1')
    Left = 248
    Top = 160
    ParamData = <
      item
        Name = 'IMSPV'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
        Value = Null
      end>
    object qrySimulaPrimeiroTratoTRATO: TIntegerField
      FieldName = 'TRATO'
      Origin = 'TRATO'
      Required = True
    end
    object qrySimulaPrimeiroTratoQTDE_CAB: TIntegerField
      FieldName = 'QTDE_CAB'
      Origin = 'QTDE_CAB'
    end
    object qrySimulaPrimeiroTratoPESO_MEDIO: TFMTBCDField
      FieldName = 'PESO_MEDIO'
      Origin = 'PESO_MEDIO'
      Precision = 18
      Size = 3
    end
    object qrySimulaPrimeiroTratoMNTRATO: TFloatField
      FieldName = 'MNTRATO'
      Origin = 'MNTRATO'
    end
    object qrySimulaPrimeiroTratoPERCENT: TFMTBCDField
      FieldName = 'PERCENT'
      Origin = '"PERCENT"'
      Precision = 18
      Size = 2
    end
  end
  object TFornecimentoRacao: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' A.*,'
      ' C.CODIGO CURRAL,'
      ' D.NOME RACAO,'
      ' E.NAME MOTORISTA'
      'FROM FORNECIMENTO_CONF A '
      'JOIN LOTE_NUTRICIONAL B ON A.ID_LOTE=B.ID'
      'JOIN CURRAIS C ON C.ID=A.ID_LOCAL'
      'JOIN RACAO D ON D.ID=A.ID_RACAO'
      'LEFT JOIN USERS E ON E.ID=A.ID_MOTORISTA')
    Left = 248
    Top = 216
    object TFornecimentoRacaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TFornecimentoRacaoID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object TFornecimentoRacaoID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ID_LOCAL'
    end
    object TFornecimentoRacaoQTD_CAB: TIntegerField
      FieldName = 'QTD_CAB'
      Origin = 'QTD_CAB'
    end
    object TFornecimentoRacaoMEDIA_PESO: TFMTBCDField
      FieldName = 'MEDIA_PESO'
      Origin = 'MEDIA_PESO'
      Precision = 18
      Size = 2
    end
    object TFornecimentoRacaoDATA_FORN: TDateField
      FieldName = 'DATA_FORN'
      Origin = 'DATA_FORN'
    end
    object TFornecimentoRacaoHORA_FORN: TTimeField
      FieldName = 'HORA_FORN'
      Origin = 'HORA_FORN'
    end
    object TFornecimentoRacaoTRATO: TIntegerField
      FieldName = 'TRATO'
      Origin = 'TRATO'
    end
    object TFornecimentoRacaoID_RACAO: TIntegerField
      FieldName = 'ID_RACAO'
      Origin = 'ID_RACAO'
    end
    object TFornecimentoRacaoMS_RACAO: TFMTBCDField
      FieldName = 'MS_RACAO'
      Origin = 'MS_RACAO'
      Precision = 18
      Size = 2
    end
    object TFornecimentoRacaoVALOR_KG_RACAO: TFMTBCDField
      FieldName = 'VALOR_KG_RACAO'
      Origin = 'VALOR_KG_RACAO'
      Precision = 18
      Size = 2
    end
    object TFornecimentoRacaoPREVISTO_MN_KG: TIntegerField
      FieldName = 'PREVISTO_MN_KG'
      Origin = 'PREVISTO_MN_KG'
    end
    object TFornecimentoRacaoREALIZADO_MN_KG: TIntegerField
      FieldName = 'REALIZADO_MN_KG'
      Origin = 'REALIZADO_MN_KG'
    end
    object TFornecimentoRacaoCUSTO_TOTAL_TRATO: TFMTBCDField
      FieldName = 'CUSTO_TOTAL_TRATO'
      Origin = 'CUSTO_TOTAL_TRATO'
      Precision = 18
      Size = 2
    end
    object TFornecimentoRacaoID_MOTORISTA: TIntegerField
      FieldName = 'ID_MOTORISTA'
      Origin = 'ID_MOTORISTA'
    end
    object TFornecimentoRacaoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TFornecimentoRacaoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TFornecimentoRacaoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TFornecimentoRacaoLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Origin = 'LOTE_FABRICACAO'
    end
    object TFornecimentoRacaoCURRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CURRAL'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TFornecimentoRacaoRACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACAO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TFornecimentoRacaoMOTORISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTORISTA'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object TListaCurraisForn: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT'
      ' A.ID, '
      ' B.CODIGO, '
      ' CASE '
      '  WHEN A.QTD_CAB=0 THEN L.QTDE_CAB'
      ' END QTDE_CAB,'
      ' CASE '
      '  WHEN A.MEDIA_PESO=0 THEN L.PESO_MEDIO'
      ' END MEDIA_PESO,'
      ' L.DIAS_MEDIO,'
      ' L.DATA_ENTRADA,'
      ' COALESCE(REALIZADO_MN_KG,0)Realizado,'
      ' b.id idCurral,'
      ' a.ID_LOTE idlote,'
      ' a.PREVISTO_MN_KG'
      'FROM FORNECIMENTO_CONF A '
      'JOIN LOTE_NUTRICIONAL L ON A.ID_LOTE=L.ID'
      'JOIN CURRAIS B ON B.ID=A.ID_LOCAL'
      'WHERE DATA_FORN='#39'2021-02-05'#39
      'AND TRATO=1'
      'AND ID_RACAO=1')
    Left = 376
    Top = 80
    object TListaCurraisFornID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TListaCurraisFornCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 100
    end
    object TListaCurraisFornQTDE_CAB: TIntegerField
      FieldName = 'QTDE_CAB'
      Origin = 'QTDE_CAB'
    end
    object TListaCurraisFornMEDIA_PESO: TFMTBCDField
      FieldName = 'MEDIA_PESO'
      Origin = 'MEDIA_PESO'
      Precision = 18
      Size = 3
    end
    object TListaCurraisFornDIAS_MEDIO: TIntegerField
      FieldName = 'DIAS_MEDIO'
      Origin = 'DIAS_MEDIO'
    end
    object TListaCurraisFornDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_ENTRADA'
      Required = True
    end
    object TListaCurraisFornREALIZADO: TIntegerField
      FieldName = 'REALIZADO'
      Origin = 'REALIZADO'
    end
    object TListaCurraisFornIDCURRAL: TIntegerField
      FieldName = 'IDCURRAL'
      Origin = 'IDCURRAL'
      Required = True
    end
    object TListaCurraisFornIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
      Origin = 'IDLOTE'
      Required = True
    end
    object TListaCurraisFornPREVISTO_MN_KG: TIntegerField
      FieldName = 'PREVISTO_MN_KG'
      Origin = 'PREVISTO_MN_KG'
      Required = True
    end
  end
  object TAuxNotaCocho: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from AUX_NOTAS_LEITURA'
      'where status=1')
    Left = 376
    Top = 144
    object TAuxNotaCochoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxNotaCochoAJUSTE: TFMTBCDField
      FieldName = 'AJUSTE'
      Origin = 'AJUSTE'
      Precision = 18
      Size = 2
    end
    object TAuxNotaCochoID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TAuxNotaCochoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TAuxNotaCochoID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TAuxNotaCochoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TAuxNotaCochoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TAuxNotaCochoDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TAuxNotaCochoNOTA: TFMTBCDField
      FieldName = 'NOTA'
      Origin = 'NOTA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object TLeituraCocho: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,B.CODIGO CURRAL FROM LEITURA_COCHO A'
      'JOIN CURRAIS B ON (A.ID_CURRAL=B.ID)'
      'WHERE A.STATUS=1 AND B.ID_PROPRIEDADE=90001  ')
    Left = 376
    Top = 200
    object TLeituraCochoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TLeituraCochoID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object TLeituraCochoID_CURRAL: TIntegerField
      FieldName = 'ID_CURRAL'
      Origin = 'ID_CURRAL'
    end
    object TLeituraCochoDATA_LEITURA: TDateField
      FieldName = 'DATA_LEITURA'
      Origin = 'DATA_LEITURA'
    end
    object TLeituraCochoAJUSTE: TFMTBCDField
      FieldName = 'AJUSTE'
      Origin = 'AJUSTE'
      Precision = 18
      Size = 2
    end
    object TLeituraCochoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TLeituraCochoID_USUARIO_ALTERCAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERCAO'
      Origin = 'ID_USUARIO_ALTERCAO'
    end
    object TLeituraCochoDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TLeituraCochoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TLeituraCochoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TLeituraCochoCURRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CURRAL'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TLeituraCochoNOTA: TFMTBCDField
      FieldName = 'NOTA'
      Origin = 'NOTA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object TListaLeitura: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT X.*, '
      '(SELECT '
      '  NOTA'
      ' FROM LEITURA_COCHO'
      ' WHERE STATUS=1 and ID_LOTE=x.IdLote'
      ' AND ID_CURRAL=x.IdCurral'
      ' AND DATA_LEITURA='#39'02/03/2021'#39' '
      ')'
      'FROM'
      
        '(SELECT b.id IdCurral,   B.CODIGO,   l.ID IdLote,   l.QTDE_CAB, ' +
        '  l.PESO_MEDIO,'
      '(SELECT '
      '  MAX(DATA_LEITURA) '
      ' FROM LEITURA_COCHO'
      ' WHERE ID_LOTE=L.ID'
      ' AND ID_CURRAL=B.ID'
      ')UltimaLeitura,ORDERM_FORN'
      'FROM FORNECIMENTO_CONF A  '
      'JOIN CURRAIS B ON A.ID_LOCAL=B.ID  '
      'JOIN LOTE_NUTRICIONAL L ON B.ID=L.ID_LOCAL  '
      'WHERE DATA_FORN='#39'02/03/2021'#39'  '
      
        'GROUP BY b.id,B.CODIGO,l.ID,l.QTDE_CAB,l.PESO_MEDIO,ORDERM_FORN)' +
        'X'
      
        'ORDER BY SUBSTRING(codigo FROM 1 FOR (POSITION('#39'-'#39'IN codigo)-1))' +
        ',ORDERM_FORN')
    Left = 488
    Top = 200
    object TListaLeituraIDCURRAL: TIntegerField
      FieldName = 'IDCURRAL'
      Origin = 'IDCURRAL'
    end
    object TListaLeituraCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 100
    end
    object TListaLeituraIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
      Origin = 'IDLOTE'
    end
    object TListaLeituraQTDE_CAB: TIntegerField
      FieldName = 'QTDE_CAB'
      Origin = 'QTDE_CAB'
    end
    object TListaLeituraPESO_MEDIO: TFMTBCDField
      FieldName = 'PESO_MEDIO'
      Origin = 'PESO_MEDIO'
      Precision = 18
      Size = 3
    end
    object TListaLeituraULTIMALEITURA: TDateField
      FieldName = 'ULTIMALEITURA'
      Origin = 'ULTIMALEITURA'
    end
    object TListaLeituraNOTA: TFMTBCDField
      FieldName = 'NOTA'
      Origin = 'NOTA'
      Precision = 18
      Size = 2
    end
    object TListaLeituraORDERM_FORN: TIntegerField
      FieldName = 'ORDERM_FORN'
      Origin = 'ORDERM_FORN'
    end
  end
  object TAuxCentroCusto: TFDQuery
    CachedUpdates = True
    OnReconcileError = TAuxCentroCustoReconcileError
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select * from AUX_CENTRO_CUSTO'
      'where status=1')
    Left = 480
    Top = 144
    object TAuxCentroCustoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxCentroCustoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object TAuxCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 1000
    end
    object TAuxCentroCustoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TAuxCentroCustoID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TAuxCentroCustoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TAuxCentroCustoID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TAuxCentroCustoDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TAuxCentroCustoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object TFabricacao: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select '
      ' f.*,'
      ' CASE '
      '  WHEN f.TIPO_BAIXA=1 then '#39'CONSUMO'#39
      '  WHEN f.TIPO_BAIXA=2 then '#39'ACERTO'#39
      '  WHEN f.TIPO_BAIXA=3 then '#39'TRANSFERENCIA'#39
      ' END TIPO_BAIXA_STR,'
      ' COALESCE(r.nome,S.NOME) Racao,'
      ' u.NAME Operador,'
      ' a.NOME CentroCusto'
      'from FABRICACAO f  '
      'left JOIN RACAO r ON f.IDRACAO=r.ID'
      'left JOIN SUPLEMENTO_MINERAL S ON f.ID_PREMISTURA=S.ID'
      'JOIN users u ON u.ID=f.ID_OPERADOR'
      'JOIN AUX_CENTRO_CUSTO a ON a.ID=f.ID_CENTROCUSTO')
    Left = 328
    Top = 272
    object TFabricacaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TFabricacaoIDRACAO: TIntegerField
      FieldName = 'IDRACAO'
      Origin = 'IDRACAO'
      Required = True
    end
    object TFabricacaoDATA_FAB: TDateField
      FieldName = 'DATA_FAB'
      Origin = 'DATA_FAB'
    end
    object TFabricacaoKG_PREVISTO: TBCDField
      FieldName = 'KG_PREVISTO'
      Origin = 'KG_PREVISTO'
      Precision = 18
    end
    object TFabricacaoKG_REALIZADO: TBCDField
      FieldName = 'KG_REALIZADO'
      Origin = 'KG_REALIZADO'
      Precision = 18
    end
    object TFabricacaoCUSTO_TOTAL: TBCDField
      FieldName = 'CUSTO_TOTAL'
      Origin = 'CUSTO_TOTAL'
      Precision = 18
    end
    object TFabricacaoHORA_INICIO: TTimeField
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
    end
    object TFabricacaoHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
      Origin = 'HORA_FIM'
    end
    object TFabricacaoDATAREG: TDateField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TFabricacaoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TFabricacaoTIPO_BAIXA: TIntegerField
      FieldName = 'TIPO_BAIXA'
      Origin = 'TIPO_BAIXA'
    end
    object TFabricacaoID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Origin = 'ID_CENTROCUSTO'
    end
    object TFabricacaoLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Origin = 'LOTE_FABRICACAO'
      Size = 100
    end
    object TFabricacaoID_OPERADOR: TIntegerField
      FieldName = 'ID_OPERADOR'
      Origin = 'ID_OPERADOR'
    end
    object TFabricacaoORIGEM_DADOS: TIntegerField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
    end
    object TFabricacaoDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TFabricacaoID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TFabricacaoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TFabricacaoID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TFabricacaoID_PREMISTURA: TIntegerField
      FieldName = 'ID_PREMISTURA'
      Origin = 'ID_PREMISTURA'
    end
    object TFabricacaoTIPO_BAIXA_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_BAIXA_STR'
      Origin = 'TIPO_BAIXA_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 13
    end
    object TFabricacaoRACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACAO'
      Origin = 'RACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TFabricacaoOPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TFabricacaoCENTROCUSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CENTROCUSTO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object TFabricacaoInsumo: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select'
      '    A.*, '
      '    COALESCE(B.NOME,C.NOME) INSUMO_NOME, '
      '    CASE '
      '      WHEN B.NOME IS NOT NULL THEN '#39'ALIMENTO'#39' '
      '      WHEN C.NOME IS NOT NULL THEN '#39'PRE-MISTURA'#39' '
      '    END TIPO '
      '    from FABRICACAO_INSUMOS A '
      '    LEFT JOIN ALIMENTO B ON A.ID_ALIMENTO=B.ID '
      '    LEFT JOIN SUPLEMENTO_MINERAL C ON A.ID_CONCENTRADO=C.ID '
      '    WHERE A.STATUS=1 AND ID_FABRICACAO=3')
    Left = 328
    Top = 320
    object TFabricacaoInsumoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TFabricacaoInsumoID_FABRICACAO: TIntegerField
      FieldName = 'ID_FABRICACAO'
      Origin = 'ID_FABRICACAO'
    end
    object TFabricacaoInsumoID_ALIMENTO: TIntegerField
      FieldName = 'ID_ALIMENTO'
      Origin = 'ID_ALIMENTO'
    end
    object TFabricacaoInsumoID_CONCENTRADO: TIntegerField
      FieldName = 'ID_CONCENTRADO'
      Origin = 'ID_CONCENTRADO'
    end
    object TFabricacaoInsumoDATA_FAB: TDateField
      FieldName = 'DATA_FAB'
      Origin = 'DATA_FAB'
    end
    object TFabricacaoInsumoHORA_INI: TTimeField
      FieldName = 'HORA_INI'
      Origin = 'HORA_INI'
    end
    object TFabricacaoInsumoHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
      Origin = 'HORA_FIM'
    end
    object TFabricacaoInsumoMS_INSUMO: TFMTBCDField
      FieldName = 'MS_INSUMO'
      Origin = 'MS_INSUMO'
      Precision = 18
      Size = 3
    end
    object TFabricacaoInsumoKG_PREVISTO: TBCDField
      FieldName = 'KG_PREVISTO'
      Origin = 'KG_PREVISTO'
      Precision = 18
    end
    object TFabricacaoInsumoKG_FABRICADO: TBCDField
      FieldName = 'KG_FABRICADO'
      Origin = 'KG_FABRICADO'
      Precision = 18
    end
    object TFabricacaoInsumoDATAREG: TDateField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TFabricacaoInsumoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TFabricacaoInsumoID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TFabricacaoInsumoDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TFabricacaoInsumoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TFabricacaoInsumoVALOR_KG: TFMTBCDField
      FieldName = 'VALOR_KG'
      Origin = 'VALOR_KG'
      Precision = 18
      Size = 3
    end
    object TFabricacaoInsumoCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      Precision = 18
      Size = 7
    end
    object TFabricacaoInsumoINSUMO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSUMO_NOME'
      Origin = 'INSUMO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TFabricacaoInsumoTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
  end
  object TFabricacaoInsert: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM FABRICACAO')
    Left = 480
    Top = 288
    object TFabricacaoInsertID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TFabricacaoInsertIDRACAO: TIntegerField
      FieldName = 'IDRACAO'
      Origin = 'IDRACAO'
    end
    object TFabricacaoInsertDATA_FAB: TDateField
      FieldName = 'DATA_FAB'
      Origin = 'DATA_FAB'
    end
    object TFabricacaoInsertKG_PREVISTO: TBCDField
      FieldName = 'KG_PREVISTO'
      Origin = 'KG_PREVISTO'
      Precision = 18
    end
    object TFabricacaoInsertKG_REALIZADO: TBCDField
      FieldName = 'KG_REALIZADO'
      Origin = 'KG_REALIZADO'
      Precision = 18
    end
    object TFabricacaoInsertCUSTO_TOTAL: TBCDField
      FieldName = 'CUSTO_TOTAL'
      Origin = 'CUSTO_TOTAL'
      Precision = 18
    end
    object TFabricacaoInsertHORA_INICIO: TTimeField
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
    end
    object TFabricacaoInsertHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
      Origin = 'HORA_FIM'
    end
    object TFabricacaoInsertDATAREG: TDateField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TFabricacaoInsertID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TFabricacaoInsertTIPO_BAIXA: TIntegerField
      FieldName = 'TIPO_BAIXA'
      Origin = 'TIPO_BAIXA'
    end
    object TFabricacaoInsertID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Origin = 'ID_CENTROCUSTO'
    end
    object TFabricacaoInsertLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Origin = 'LOTE_FABRICACAO'
      Size = 100
    end
    object TFabricacaoInsertID_OPERADOR: TIntegerField
      FieldName = 'ID_OPERADOR'
      Origin = 'ID_OPERADOR'
    end
    object TFabricacaoInsertORIGEM_DADOS: TIntegerField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
    end
    object TFabricacaoInsertDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TFabricacaoInsertID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TFabricacaoInsertSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TFabricacaoInsertID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TFabricacaoInsertID_PREMISTURA: TIntegerField
      FieldName = 'ID_PREMISTURA'
      Origin = 'ID_PREMISTURA'
    end
  end
  object TDetFabricacaoInsert: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT * FROM FABRICACAO_INSUMOS')
    Left = 480
    Top = 336
    object TDetFabricacaoInsertID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TDetFabricacaoInsertID_FABRICACAO: TIntegerField
      FieldName = 'ID_FABRICACAO'
      Origin = 'ID_FABRICACAO'
    end
    object TDetFabricacaoInsertID_ALIMENTO: TIntegerField
      FieldName = 'ID_ALIMENTO'
      Origin = 'ID_ALIMENTO'
    end
    object TDetFabricacaoInsertID_CONCENTRADO: TIntegerField
      FieldName = 'ID_CONCENTRADO'
      Origin = 'ID_CONCENTRADO'
    end
    object TDetFabricacaoInsertDATA_FAB: TDateField
      FieldName = 'DATA_FAB'
      Origin = 'DATA_FAB'
    end
    object TDetFabricacaoInsertHORA_INI: TTimeField
      FieldName = 'HORA_INI'
      Origin = 'HORA_INI'
    end
    object TDetFabricacaoInsertHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
      Origin = 'HORA_FIM'
    end
    object TDetFabricacaoInsertMS_INSUMO: TFMTBCDField
      FieldName = 'MS_INSUMO'
      Origin = 'MS_INSUMO'
      Precision = 18
      Size = 3
    end
    object TDetFabricacaoInsertKG_PREVISTO: TBCDField
      FieldName = 'KG_PREVISTO'
      Origin = 'KG_PREVISTO'
      Precision = 18
    end
    object TDetFabricacaoInsertKG_FABRICADO: TBCDField
      FieldName = 'KG_FABRICADO'
      Origin = 'KG_FABRICADO'
      Precision = 18
    end
    object TDetFabricacaoInsertDATAREG: TDateField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TDetFabricacaoInsertID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TDetFabricacaoInsertID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TDetFabricacaoInsertDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TDetFabricacaoInsertSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TDetFabricacaoInsertVALOR_KG: TFMTBCDField
      FieldName = 'VALOR_KG'
      Origin = 'VALOR_KG'
      Precision = 18
      Size = 3
    end
    object TDetFabricacaoInsertCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      Precision = 18
      Size = 7
    end
  end
  object LOTE_RACAO_PLAN: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT B.ID,B.NOME,COUNT(DISTINCT("DATA")),A.GMD '
      'FROM DET_LOTE_PLANEJAMENTO A '
      'JOIN RACAO B ON B.ID=A.ID_RACAO'
      'WHERE A.ID_LOTE=4'
      'GROUP BY B.ID,B.NOME,GMD ')
    Left = 136
    Top = 384
    object LOTE_RACAO_PLANNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object LOTE_RACAO_PLANCOUNT: TIntegerField
      FieldName = 'COUNT'
      Origin = '"COUNT"'
      Required = True
    end
    object LOTE_RACAO_PLANGMD: TFMTBCDField
      FieldName = 'GMD'
      Origin = 'GMD'
      Precision = 18
      Size = 2
    end
    object LOTE_RACAO_PLANID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TBaixaEstoque: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,'
      ' CASE '
      '  WHEN a.TIPO_BAIXA=1 then '#39'CONSUMO'#39
      '  WHEN a.TIPO_BAIXA=2 then '#39'ACERTO'#39
      '  WHEN a.TIPO_BAIXA=3 then '#39'TRANSFERENCIA'#39
      ' END TIPO_BAIXA_STR,'
      ' COALESCE(B.NOME,C.NOME)Insumo,'
      ' d.NOME CentroCusto '
      'FROM BAIXA_ESTOQUE_INSUMO_IND A '
      'LEFT JOIN SUPLEMENTO_MINERAL B ON A.ID_PRODUTO=B.ID'
      'LEFT JOIN ALIMENTO C ON A.ID_ALIMENTO=C.ID'
      'JOIN AUX_CENTRO_CUSTO D ON D.ID=A.ID_CENTRO_CUSTO'
      'WHERE A.STATUS=1 AND A.ID_PROPRIEDADE=1')
    Left = 664
    Top = 160
    object TBaixaEstoqueID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBaixaEstoqueID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object TBaixaEstoqueID_ALIMENTO: TIntegerField
      FieldName = 'ID_ALIMENTO'
      Origin = 'ID_ALIMENTO'
    end
    object TBaixaEstoqueDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object TBaixaEstoqueQTD_KG: TFMTBCDField
      FieldName = 'QTD_KG'
      Origin = 'QTD_KG'
      Precision = 18
      Size = 2
    end
    object TBaixaEstoqueTIPO_BAIXA: TIntegerField
      FieldName = 'TIPO_BAIXA'
      Origin = 'TIPO_BAIXA'
    end
    object TBaixaEstoqueID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TBaixaEstoqueDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TBaixaEstoqueSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TBaixaEstoqueID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
      Origin = 'ID_CENTRO_CUSTO'
    end
    object TBaixaEstoqueID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TBaixaEstoqueID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TBaixaEstoqueDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object TBaixaEstoqueTIPO_BAIXA_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_BAIXA_STR'
      Origin = 'TIPO_BAIXA_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 13
    end
    object TBaixaEstoqueINSUMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSUMO'
      Origin = 'INSUMO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TBaixaEstoqueCENTROCUSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CENTROCUSTO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TBaixaEstoqueVALOR_KG: TFMTBCDField
      FieldName = 'VALOR_KG'
      Origin = 'VALOR_KG'
      Precision = 18
      Size = 3
    end
    object TBaixaEstoqueCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Origin = 'CUSTO_TOTAL'
      Precision = 18
      Size = 5
    end
    object TBaixaEstoqueOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
  end
  object PlanRegraTransicao: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_PLANEJAMENTO'
    MasterSource = dsPlan
    MasterFields = 'ID'
    DetailFields = 'ID_PLANEJAMENTO'
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select a.*,b.nome RacaoNomeAtual,'
      'd.nome RacaoNomeTransicao,'
      'case '
      '  WHEN trato1=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr1,'
      'case '
      '  WHEN trato2=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr2,'
      'case '
      '  WHEN trato3=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr3,'
      'case '
      '  WHEN trato4=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr4,'
      'case '
      '  WHEN trato5=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr5,'
      'case '
      '  WHEN trato6=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr6,'
      'case '
      '  WHEN trato7=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr7,'
      'case '
      '  WHEN trato8=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr8,'
      'case '
      '  WHEN trato9=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr9,'
      'case '
      '  WHEN trato10=1 then '#39'SIM'#39
      ' ELSE'
      '  '#39'NAO'#39
      'END TratoStr10'
      'from DET_PLAN_REGRA_TRANSICAO a '
      'join racao b on (a.ID_RACAO_ATUAL=b.id)'
      'join racao d on (a.ID_RACAO_TRANSICAO=d.id)'
      'where a.status=1 and id_planejamento=:id')
    Left = 48
    Top = 192
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object PlanRegraTransicaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PlanRegraTransicaoID_PLANEJAMENTO: TIntegerField
      FieldName = 'ID_PLANEJAMENTO'
      Origin = 'ID_PLANEJAMENTO'
    end
    object PlanRegraTransicaoORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
    object PlanRegraTransicaoDIA: TIntegerField
      FieldName = 'DIA'
      Origin = 'DIA'
    end
    object PlanRegraTransicaoDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object PlanRegraTransicaoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object PlanRegraTransicaoID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object PlanRegraTransicaoTRATO1: TIntegerField
      FieldName = 'TRATO1'
      Origin = 'TRATO1'
    end
    object PlanRegraTransicaoTRATO2: TIntegerField
      FieldName = 'TRATO2'
      Origin = 'TRATO2'
    end
    object PlanRegraTransicaoTRATO3: TIntegerField
      FieldName = 'TRATO3'
      Origin = 'TRATO3'
    end
    object PlanRegraTransicaoTRATO4: TIntegerField
      FieldName = 'TRATO4'
      Origin = 'TRATO4'
    end
    object PlanRegraTransicaoTRATO5: TIntegerField
      FieldName = 'TRATO5'
      Origin = 'TRATO5'
    end
    object PlanRegraTransicaoTRATO6: TIntegerField
      FieldName = 'TRATO6'
      Origin = 'TRATO6'
    end
    object PlanRegraTransicaoTRATO7: TIntegerField
      FieldName = 'TRATO7'
      Origin = 'TRATO7'
    end
    object PlanRegraTransicaoTRATO8: TIntegerField
      FieldName = 'TRATO8'
      Origin = 'TRATO8'
    end
    object PlanRegraTransicaoTRATO9: TIntegerField
      FieldName = 'TRATO9'
      Origin = 'TRATO9'
    end
    object PlanRegraTransicaoTRATO10: TIntegerField
      FieldName = 'TRATO10'
      Origin = 'TRATO10'
    end
    object PlanRegraTransicaoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object PlanRegraTransicaoTRATOSTR1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR1'
      Origin = 'TRATOSTR1'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR2'
      Origin = 'TRATOSTR2'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR3'
      Origin = 'TRATOSTR3'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR4'
      Origin = 'TRATOSTR4'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR5'
      Origin = 'TRATOSTR5'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR6: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR6'
      Origin = 'TRATOSTR6'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR7'
      Origin = 'TRATOSTR7'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR8: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR8'
      Origin = 'TRATOSTR8'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR9: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR9'
      Origin = 'TRATOSTR9'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoTRATOSTR10: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRATOSTR10'
      Origin = 'TRATOSTR10'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object PlanRegraTransicaoID_RACAO_ATUAL: TIntegerField
      FieldName = 'ID_RACAO_ATUAL'
      Origin = 'ID_RACAO_ATUAL'
      Required = True
    end
    object PlanRegraTransicaoID_RACAO_TRANSICAO: TIntegerField
      FieldName = 'ID_RACAO_TRANSICAO'
      Origin = 'ID_RACAO_TRANSICAO'
      Required = True
    end
    object PlanRegraTransicaoRACAONOMEATUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACAONOMEATUAL'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object PlanRegraTransicaoRACAONOMETRANSICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACAONOMETRANSICAO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object PlanRegraTransicaoDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object PlanRegraTransicaoDIA_INICIO: TIntegerField
      FieldName = 'DIA_INICIO'
      Origin = 'DIA_INICIO'
    end
    object PlanRegraTransicaoDIA_FIM: TIntegerField
      FieldName = 'DIA_FIM'
      Origin = 'DIA_FIM'
    end
  end
  object dsPlan: TDataSource
    DataSet = PlanNutri
    Left = 40
    Top = 248
  end
  object TContratoCompra: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select y.*,w.qtd totalanimais,w.peso totalpeso,'
      'VALOR_TOTAL VALOR_CABECA'
      'from'
      '(SELECT'
      ' C.*,'
      ' CASE '
      '   WHEN C.TIPO_CONTRATO=0 THEN '#39'Compra'#39
      '   WHEN C.TIPO_CONTRATO=1 THEN '#39'Parceria'#39
      '   WHEN C.TIPO_CONTRATO=2 THEN '#39'Boitel'#39
      ' END TIPO_CONTRATO_STR,'
      ' CASE'
      '  WHEN C.STATUS=1 THEN '#39'Aberto'#39
      '  WHEN C.STATUS=2 THEN '#39'Finalizado'#39
      ' END STATUS_str,'
      ' CASE'
      '  WHEN C.TIPO_VALOR=0 THEN '#39'Por @'#39
      '  WHEN C.TIPO_VALOR=1 THEN '#39'Por Cabe'#231'a'#39
      '  WHEN C.TIPO_VALOR=2 THEN '#39'Rateio por Peso'#39
      ' END TIPO_VALOR_STR,'
      ' PO.NOME PRODUTOR_ORIGEM,'
      ' PRO.NOME PROPRIEDADE_ORIGEM,'
      ' PD.NOME PRODUTOR_DESTINO,'
      ' PRD.NOME PROPRIEDADE_DESTINO'
      'FROM CONTRATO_COMPRA_ANIMAL C'
      'JOIN PRODUTORES PO ON PO.ID=C.ID_PRODUTOR_ORIGEM'
      'JOIN PROPRIEDADES PRO ON PRO.ID=PO.ID_PROPRIEDADE'
      'JOIN PRODUTORES PD ON PD.ID=C.ID_PRODUTOR_DESTINO'
      'JOIN PROPRIEDADES PRD ON PRD.ID=PD.ID_PROPRIEDADE'
      'WHERE C.STATUS>0)y'
      'left join'
      '(select id_contrato,count(*)qtd,sum(peso_entrada) peso'
      'from animal where status>-1'
      'and id_contrato is not null'
      'group by id_contrato)w'
      'on y.id=w.id_contrato')
    Left = 536
    Top = 72
    object TContratoCompraID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TContratoCompraID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
    end
    object TContratoCompraID_PRODUTOR_DESTINO: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO'
      Origin = 'ID_PRODUTOR_DESTINO'
    end
    object TContratoCompraTOTAL_ANIMAIS: TIntegerField
      FieldName = 'TOTAL_ANIMAIS'
      Origin = 'TOTAL_ANIMAIS'
    end
    object TContratoCompraTIPO_VALOR: TIntegerField
      FieldName = 'TIPO_VALOR'
      Origin = 'TIPO_VALOR'
    end
    object TContratoCompraVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object TContratoCompraTIPO_CONTRATO: TIntegerField
      FieldName = 'TIPO_CONTRATO'
      Origin = 'TIPO_CONTRATO'
    end
    object TContratoCompraDATA_INICIO_CONTRATO: TDateField
      FieldName = 'DATA_INICIO_CONTRATO'
      Origin = 'DATA_INICIO_CONTRATO'
    end
    object TContratoCompraDATA_FIM_CONTRATO: TDateField
      FieldName = 'DATA_FIM_CONTRATO'
      Origin = 'DATA_FIM_CONTRATO'
    end
    object TContratoCompraSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TContratoCompraID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TContratoCompraDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TContratoCompraID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TContratoCompraDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object TContratoCompraTIPO_CONTRATO_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_CONTRATO_STR'
      Origin = 'TIPO_CONTRATO_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object TContratoCompraSTATUS_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_STR'
      Origin = 'STATUS_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object TContratoCompraNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object TContratoCompraPRODUTOR_ORIGEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOR_ORIGEM'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TContratoCompraPROPRIEDADE_ORIGEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIEDADE_ORIGEM'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TContratoCompraPRODUTOR_DESTINO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOR_DESTINO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TContratoCompraPROPRIEDADE_DESTINO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIEDADE_DESTINO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TContratoCompraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TContratoCompraPESO_TOTAL_ORIGEM: TFMTBCDField
      FieldName = 'PESO_TOTAL_ORIGEM'
      Origin = 'PESO_TOTAL_ORIGEM'
      Precision = 18
      Size = 2
    end
    object TContratoCompraNAVIO: TStringField
      FieldName = 'NAVIO'
      Origin = 'NAVIO'
      Size = 100
    end
    object TContratoCompraTOTALANIMAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALANIMAIS'
      Origin = 'TOTALANIMAIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object TContratoCompraTOTALPESO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALPESO'
      Origin = 'TOTALPESO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object TContratoCompraCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Origin = 'COMPRADOR'
      Size = 100
    end
    object TContratoCompraCOMISSAO_TOTAL: TFMTBCDField
      FieldName = 'COMISSAO_TOTAL'
      Origin = 'COMISSAO_TOTAL'
      Precision = 18
      Size = 2
    end
    object TContratoCompraFRETE_TOTAL: TFMTBCDField
      FieldName = 'FRETE_TOTAL'
      Origin = 'FRETE_TOTAL'
      Precision = 18
      Size = 2
    end
    object TContratoCompraRENDIMENTO_COMPRA: TFMTBCDField
      FieldName = 'RENDIMENTO_COMPRA'
      Origin = 'RENDIMENTO_COMPRA'
      Precision = 18
      Size = 2
    end
    object TContratoCompraPESO_BALANCAO_DESTINO: TFMTBCDField
      FieldName = 'PESO_BALANCAO_DESTINO'
      Origin = 'PESO_BALANCAO_DESTINO'
      Precision = 18
      Size = 2
    end
    object TContratoCompraKM_RODADO: TFMTBCDField
      FieldName = 'KM_RODADO'
      Origin = 'KM_RODADO'
      Precision = 18
      Size = 2
    end
    object TContratoCompraVALOR_CABECA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_CABECA'
      Origin = 'VALOR_CABECA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object TContratoCompraTIPO_VALOR_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_VALOR_STR'
      Origin = 'TIPO_VALOR_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
  end
  object ExportaFabricacao: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select '
      '     f.DATA_FAB FabricadaEm,'
      '     f.ID CodigoBatida,'
      '     f.HORA_INICIO,'
      '     f.HORA_FIM,'
      '     f.IDRACAO CodRacao,'
      '     COALESCE(r.nome,S.NOME) NomeRacao,'
      '     f.KG_PREVISTO PrevistoBatida,'
      '     f.KG_REALIZADO RealizadoBatida,'
      '     COALESCE(al.NOME,sm.NOME) INSUMO_NOME, '
      '     CASE '
      '      WHEN al.NOME IS NOT NULL THEN '#39'ALIMENTO'#39' '
      '      WHEN sm.NOME IS NOT NULL THEN '#39'PRE-MISTURA'#39' '
      '     END TIPO,'
      '     fi.KG_PREVISTO Previsto,'
      '     fi.KG_FABRICADO Realizado,'
      #9' fi.KG_PREVISTO - fi.KG_FABRICADO DifKG,'
      
        #9' (((fi.KG_PREVISTO - fi.KG_FABRICADO)*100)/fi.KG_PREVISTO)DifPe' +
        'rcent,'
      #9' fi.VALOR_KG,'
      #9' fi.CUSTO,'
      #9' u.NAME Operador,'
      #9' acc.nome CentroCusto'
      '    from FABRICACAO f '
      '    LEFT JOIN AUX_CENTRO_CUSTO acc ON acc.id=f.ID_CENTROCUSTO '
      '    left JOIN RACAO r ON f.IDRACAO=r.ID '
      '    left JOIN SUPLEMENTO_MINERAL S ON f.ID_PREMISTURA=S.ID '
      '    JOIN users u ON u.ID=f.ID_OPERADOR '
      '    left JOIN AUX_CENTRO_CUSTO a ON a.ID=f.ID_CENTROCUSTO '
      '    JOIN FABRICACAO_INSUMOS fi ON fi.ID_FABRICACAO=f.ID '
      '    LEFT JOIN ALIMENTO AL ON fi.ID_ALIMENTO=AL.ID '
      '    LEFT JOIN SUPLEMENTO_MINERAL SM ON fi.ID_CONCENTRADO=SM.ID '
      '    WHERE F.STATUS>0 '
      '    order by f.id DESC')
    Left = 328
    Top = 376
    object ExportaFabricacaoFABRICADAEM: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'FABRICADAEM'
      Origin = 'DATA_FAB'
    end
    object ExportaFabricacaoCODIGOBATIDA: TIntegerField
      DisplayLabel = 'CODIGO BATIDA'
      FieldName = 'CODIGOBATIDA'
      Origin = 'ID'
      Required = True
    end
    object ExportaFabricacaoHORA_INICIO: TTimeField
      DisplayLabel = 'HORA INICIO'
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
    end
    object ExportaFabricacaoHORA_FIM: TTimeField
      DisplayLabel = 'HORA FIM'
      FieldName = 'HORA_FIM'
      Origin = 'HORA_FIM'
    end
    object ExportaFabricacaoCODRACAO: TIntegerField
      DisplayLabel = 'CODIGO RACAO'
      FieldName = 'CODRACAO'
      Origin = 'IDRACAO'
      Required = True
    end
    object ExportaFabricacaoNOMERACAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RACAO'
      FieldName = 'NOMERACAO'
      Origin = 'NOMERACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object ExportaFabricacaoPREVISTOBATIDA: TBCDField
      DisplayLabel = 'PREVISTO BATIDA (KG)'
      FieldName = 'PREVISTOBATIDA'
      Origin = 'KG_PREVISTO'
      Precision = 18
    end
    object ExportaFabricacaoREALIZADOBATIDA: TBCDField
      DisplayLabel = 'REALIZADO BATIDA (KG)'
      FieldName = 'REALIZADOBATIDA'
      Origin = 'KG_REALIZADO'
      Precision = 18
    end
    object ExportaFabricacaoINSUMO_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'INSUMO'
      FieldName = 'INSUMO_NOME'
      Origin = 'INSUMO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object ExportaFabricacaoTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
    object ExportaFabricacaoPREVISTO: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'PREVISTO (KG)'
      FieldName = 'PREVISTO'
      Origin = 'KG_PREVISTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object ExportaFabricacaoREALIZADO: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'REALIZADO (KG)'
      FieldName = 'REALIZADO'
      Origin = 'KG_FABRICADO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object ExportaFabricacaoDIFKG: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DIFEREN'#199'A (KG)'
      FieldName = 'DIFKG'
      Origin = 'DIFKG'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object ExportaFabricacaoDIFPERCENT: TFMTBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DIFEREN'#199'A (%)'
      FieldName = 'DIFPERCENT'
      Origin = 'DIFPERCENT'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object ExportaFabricacaoVALOR_KG: TFMTBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VALOR (KG)'
      FieldName = 'VALOR_KG'
      Origin = 'VALOR_KG'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ExportaFabricacaoCUSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CUSTO '
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 7
    end
    object ExportaFabricacaoOPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object ExportaFabricacaoCENTROCUSTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CENTRO DE CUSTO'
      FieldName = 'CENTROCUSTO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object TImportaCarcaca: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' T.*,'
      ' CASE'
      '   WHEN T.CODIGO_ANIMAL IS NOT NULL THEN '#39'ENCONTRADO'#39
      '   WHEN T.CODIGO_ANIMAL IS NULL THEN '#39'N'#195'O ENCONTRADO'#39
      ' END LOG_IMPORTACAO'
      'FROM TMP_IMPORTA_CARCACA T')
    Left = 664
    Top = 248
    object TImportaCarcacaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TImportaCarcacaIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Origin = 'IDENTIFICACAO'
      Size = 30
    end
    object TImportaCarcacaPESO_CARCACA: TFMTBCDField
      FieldName = 'PESO_CARCACA'
      Origin = 'PESO_CARCACA'
      Precision = 18
      Size = 2
    end
    object TImportaCarcacaDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TImportaCarcacaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object TImportaCarcacaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object TImportaCarcacaTIPO_IDENTIFICACAO: TIntegerField
      FieldName = 'TIPO_IDENTIFICACAO'
      Origin = 'TIPO_IDENTIFICACAO'
    end
    object TImportaCarcacaCODIGO_ANIMAL: TIntegerField
      FieldName = 'CODIGO_ANIMAL'
      Origin = 'CODIGO_ANIMAL'
    end
    object TImportaCarcacaLOG_IMPORTACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOG_IMPORTACAO'
      Origin = 'LOG_IMPORTACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 14
    end
  end
  object TMP_ATUALIZA_CAR: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select a.codigo_animal,sum(a.peso_carcaca) CARCACA'
      'from tmp_importa_carcaca a'
      'where a.codigo_animal is not null'
      'group by codigo_animal')
    Left = 672
    Top = 312
    object TMP_ATUALIZA_CARCODIGO_ANIMAL: TIntegerField
      FieldName = 'CODIGO_ANIMAL'
      Origin = 'CODIGO_ANIMAL'
    end
    object TMP_ATUALIZA_CARCARCACA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CARCACA'
      Origin = 'CARCACA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object dsEstoqueAtual: TDataSource
    DataSet = TBaixaEstoque
    Left = 768
    Top = 40
  end
  object ppRepEstoqueAtual: TppReport
    AutoStop = False
    DataPipeline = ppDBEstoqueAtual
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 768
    Top = 144
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstoqueAtual'
    object ppHeaderBand19: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppImage21: TppImage
        DesignLayer = ppDesignLayer19
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000002DE0000
          028C0806000000DCD2BFA300000006624B474400FF00FF00FFA0BDA793000000
          097048597300000EC400000EC401952B0E1B0000805B4944415478DAECDD05B8
          2665F9C7F1019658BABB63175850407AE9960E49A511FE201D222A7850504252
          40059114960E4149099746A4BB53BA77895DF8FF6E67D0C3F1C4BCCFC43DF1FD
          5CD77D3DC499799E67DE79DFF99D39F3CE8CF3E5975F46000000008A350EC11B
          000000281EC11B0000002801C11B0000002801C11B0000002801C11B00000028
          01C11B0000002801C11B0000002801C11B0000002801C11B0000002801C11B00
          00002801C11B0000002801C11BC8D138E38C33B59A3954B3AAEC9FA7544DA49A
          40F579521FA9DE51BDA17A5EF58ADE8763BCC78E72695FB17D6309D5BCAAA992
          FFFCAEEA69D53DDA27DEF31E2300205F046F202305280BDADBA9B6540D0D58C5
          C7AA2B547F525DA3F7E417DE734271B4BF8CA3E640D5A151FC0B596F3E551DA2
          7DE128EFF10200F243F00602293F2DA8E627AACD5483725AED632A0B5BE7E8BD
          39D67B8EC89FF69B63D4EC9BF2C77FADFDE000EF310300F241F0063AA4E034B9
          9A2ED5EEAAF10BEAE63ED51E7A7FDEEE3D5FE447FBCE466A2EED70B10DB51F5C
          E13D76004076046FA0030A4E4BAA395F357709DDD92527BF541DCA35E0F5975C
          62627FD1E8F472245B66D8977C580340ED11BC8194949B7652734A54DC59EEBE
          DCACDA882FDBD59BF69F6FA9B93770F1C5F4FAFFD37B0E00806C08DE400A0A4D
          762DF72FEC1F9D86F0B06A2DBD5F5FF1DE1608A37D681735BF0B5C7C67BDF6A7
          79CF0100900DC11BE887C2D2366ACE8CFC02774F77A956D4FBF653EF81A033DA
          97BAD4FC2C7071BBDCA8CB7B0E00806C08DE401F1494168EE2A03BD87B2C3D9C
          AAF7ED2EDE83406708DE00008237D00B85A409A3F8CE220B7A8FA50FABEABDFB
          37EF41203D82370080E00DF422B9A6FB30EF71F4E349D537B8E4A43E08DE0000
          8237D08302D2CC511C6C27F11ECB007EA4F7EF91DE83403A046F0000C11BE841
          01E96835FB7B8F2305BBBDE02C7A0F8FF21E080646F0060010BC816E148E2653
          F3B26A72EFB1A4B49DDEC367790F02032378030008DE40370A47DB46F1ED03B3
          B2A74E5EACBA248AEF8CF27A1487F9B954DF56D9C37866C9A19F3BF41E5ED665
          63A123046F0000C11BE846E1E81A356B665CCD3F54DBEABDF5483FFDD82D0A0F
          541DAC1A37637F43D5D793A56E28748CE0FDEF6D30B11AFB457139D502AAA1AA
          A9559346F1BDF247ABDE573DAD7A3C8A7F69BD59737FCB7BEC00900782379050
          289848CDBBAA8932ACE66AD5A67A5F8D4ED9E706517C667C50863E79AA610DB4
          35786BDEE3AB5947657F4DB2BFF64CD8E12AEC207587EA1CD5086D87F7BCE704
          00A108DE404201610535B76458853DD67D19BDA73EEAB0DF3DD59C90A1DFB3D4
          E776C56F2164D1B6E09DDC0B7F47D501AA39735AED07AA5354C76A7BBCE93D47
          00E814C11B482828ECADE6B80CAB5849EFA78E83BBFAB53FB1DFA3FA5660BFCF
          A8DF794BD844C8A04DC15B735D5DCDC9AAF90AEAC2CE7ADBBDF67FAFED32D67B
          BE009016C11B48282C9CA4E607818BDFAEF7D2F00C7D6FAAE6C2C0C5ED8B9CE3
          ABFF2F0ADE44C8A00DC13BB95CEB78D52E2575F977D556DA362F7BCF1D00D220
          78030985862BD5AC17B878A687D924B731B42F904D10B88A69D5FFDB056F2264
          D0F4E0ADF9CDAAE6CFAA454AEEDADE379B68FBDCEABD0D006020046F20A1E070
          939A9502175F47EFA5BF64ECDFEEE2303470F1F9D5FF13056E1E64D4E4E0ADB9
          D97E7BAD6A0EA7217C12C567BE2FF3DE1600D01F8237905078B853CD52818BDB
          972AEFCCD8FF6D517CABB5104BAAFF7B8ADC3EC8A6A9C15BF3B27BD38F54CDEC
          3C9431AA0DB59DAEF6DE2600D0178237905080B859CD8A818BAFADF7D25F33F6
          FF989AF90317E75EDE15D7C4E0AD394D13C5B7FA2BEA4B949D1AA55A45DBEA2E
          EF8100406F08DE404221C2AE4F5D3770F1FDF55E3A2643DFF66011BB463BF41E
          E25CE35D714D0BDEC9DD78EC7B11A1EF99A2BCA85A54DBEB1DEF8100404F046F
          20A11C61F707DE3570F15BF45E5A2943DFF6209DCB0317E7AE2635D0C0E0BD87
          9A13BDC7D1874BB4BDBEE33D0800E889E00D241424F655137AD6DADE48CB84FE
          893BE3F5DD4FA9DF21256C2264D0A4E0ADB9D8F5DC7669D4E4DE63E9C7BA5CEF
          0DA06A08DE4042616265357FCBB08A7B55CBEB3DF54987FDDAD3FDFE90A1DF33
          D5E7F6256C2264D0B0E07D969A6DBCC73180A7550B68BB8DF11E08007C85E00D
          2414260647F113F142EFA56D46A8B6D1FBEAF3947DAEA2C66E433861863E7756
          7FA795B6A110A429C15BF3985B8DDDBA7290F75852B0F7E239DE830080AF10BC
          816E142A6E50B36AC6D5D8833CEC80FF423FFD5868D95D75946AFC8CFD714793
          1A6850F0FE4D14EFBB75F0B0B6DBC2DE830080AF10BC816E142A765293C7D9E3
          CF5467A82E51DDA5F7D9075AB7056CBBE7F1DA51FC25CE3CAECBBE53EB5EC66B
          7B21BD26046FCDC1FE32F3AA6AEA1C5667BF2C9EADBA5EF55214BF6766520D57
          6D1985DFDAB3A725B4EDEE2D7F6B01C0FF227803DD28584C15C52160929C576D
          F7179EB88021EFA0F7F019856F1864D690E0BD919A4B33AEE653D5FEAADFF577
          FDB5FA5A43CDE9AA5933F677BCFAD9A7D40D05007D2078033DE8807F829A3DBD
          C791C2FBAA59F41EFED87B201858438277965B6E9A0F556B6A2E77A4ECCFCE80
          5FA75A28439F8FAABF61E56D2500E81BC11BE84107FBD9A3F8CB63A10FB3298B
          7D81730BBD87B39E8144091A12BCB33C5DD50E361B681E7FEEB0CF39A3F88E41
          D364E87766F5FBAF92361300F489E00DF44207FB5FA8F9A9F7385218ABFA9EDE
          C723BC0782FED53D782777FDF948356EE02A2ED01CB608ECFB076A4ECA30FCB5
          D4F7B5056F22001810C11BE845F208F70755F3788F2505CE7CD7400382F737D5
          DC9F61158B690EFF0CECDBBE986C5FEA9C36B0EFBDD5F709056F22001810C11B
          E8830EF64BA8191965BBAF775908DF15D780E0BD9E9A2B03177F41E39F3363FF
          67AAD93670F163D5FF7EC56D1D004887E00DF44307FBDDD49CEC3D8E9408DF15
          D680E06DB7F83B2F70F1AB34FEF532F66FC1F9D7818B9FA6FE772E72FB00401A
          046F60003AE0FF52CD41DEE34889F05D510D08DE59EE717FA6C6BF7DC6FEB78E
          E2FB7E87384FFD7FB7C8ED03006910BC8101E8803F8E9AA35575F95335E1BB82
          1A10BCB304DF2B34FE0D33F6BFB79AE302173F43FDEF50E4F601803408DE404A
          C99FBAED11EFA177752813E1BB621A10BCB33C3CE7098D3FF436845FF5FF3B35
          BB042E7EA2FADFABC8ED03006910BC810EE8E0BF8A9A73A3F8D1D65547F8AE90
          0604EFC5D5DC9361154335872703FBB6BF3AD913656709ECFB00F51D7A7D3800
          E486E00D744819603A35BF52D935AB553FFB4DF8AE880604EFA9D4BC1585EFF3
          A76A0E4167ACD5F7566AFE9461F81BAAEF2B0ADE440030208237102839037888
          6A5DFBD79C56FB5C1487E521390E95F05D01750FDEC91C1E50F38DC0C5C7A896
          D73CEEECB04FBB77F73F54B307F66B07B9E9D5EF5BA56D2800E803C11BC848C1
          60989A1D559B45617F0A1FADBA318AEF187155143F24C4FE7DA11C8749F876D6
          90E07DA29A3D32ACC21EDBBE82E6F254CAFE268DE2F7C48A19FA7C48FD85FEB2
          0000B9227803395148B03FC12FAA5A41B5946A3ED51CAA69BAFDD807AAB7558F
          A81E56DDAEBA51EFC3513DD6357D44F86E948604EF4DD45C9C7135EFA8B6D77C
          FA7D184FF20BADDD373C6B683E497D65F96501007243F0064A909CB9FBF8CB0E
          DE7084EF666948F0B6FDF865D51439ACEE66D51F55D7696EAF775BFFF2AA2D54
          76DFEDF172E8C72E6F19E9B2C100A0078237506184EFE66842F04EE671BC9ABC
          6FCDF74914EF9793E5BCDEFBB5DD162D65C300400A046FA0E292BBA858F85E38
          C7D58E557D4FEFFF11DEF36B8B0605EF79D53C1155FF8E3E66476DB73F7A0F02
          00BE42F0066A8033DFF5D794E09DCCE512351B7B8F630076DF6FBB77F868EF81
          00C05708DE404D70E6BBDE1A16BC6753F3A86A52EFB1F463636DB3CBBC070100
          DD11BC811A217CD757938277329FFDD454F569907FD5F65ADB7B1000D013C11B
          A899022F3BD99C3384C56960F01EA4E616D5B2DE63E9C11E94F32D6DAF17BD07
          02003D11BC811AE2CC77FD342D782773B2873DDDA19AD77B2C89CF546B695BDD
          E43D1000E80DC11BA829C277BD34317827F39A3F8A1F043595F350EC60B68DB6
          D3B9DEDB0400FA42F0066A8CCB4EEAA3A9C13B999B3DA9D59E4439BDD310C6A8
          76D3363ACD7B5B00407F08DE40CD71E6BB1E9A1CBC93F9CDA5E66AD5022577FD
          5114DF16F36AEF6D0000032178030DC099EFEA6B7AF04EE668979B9CA55AAFA4
          2E1F516DA96DF390F7DC01200D8237D0109CF9AEB63604EF6E73B5E07D926AF6
          82BAB087E21CA5FA95B6CBA7DEF30580B408DE408370E6BBBADA14BC93F94EAE
          E640D5CEAA69735AAD85EC0B543FD7F678C67B8E00D0298237D03084EF6A6A5B
          F0EE36EF89D46CA5DA57352C7035766FEE1355A76A3BBCEE3D27000845F0061A
          88CB4EAAA7ADC1BBDBFCB7557366E0E26769FEDB79CF0100B22278030D45F8AE
          168237C11B0008DE408311BEAB83E04DF006008237D07084EF6A207813BC0180
          E00DB400E1DB1FC19BE00D00046FA02508DFBE08DE046F002078032D42F8F643
          F026780300C11B689982C237F7F91E00C19BE00D00046FA08508DFE5237813BC
          0180E00DB414E1BB5C046F82370010BC8116237C9787E04DF006008237D07284
          EF7210BC09DE0040F00640F82E01C19BE00D00046F00FF46F82E16C19BE00D00
          046F00FF41F82E0EC19BE00D00046F005F43F82E06C19BE00D00046F00FF83F0
          9D3F8237C11B0008DE007A45F8CE17C19BE00D00046F007D227CE787E04DF006
          008237807E11BEF341F026780300C11BC08008DFD911BC09DE0040F006908A82
          D3F4511CBE17CA71B516BE37D6E7D055DEF32B1AC19BE00D00046F00A91574E6
          7BB46A0D7D168DF49E5F9108DE046F00207803E8484167BEDF510DD7E7D1E3DE
          F32B0AC19BE00D00046F001D2BE8CCF723AA25F59934CA7B7E45207813BC0180
          E00D204841E1FB347D26EDEC3DB72210BC09DE0040F00610ACA0CB4ED62BE3CB
          961AFBA46AB650ADA19A55F585EA39D5D5AA4B3586CF72EEAF2BAA50F0D67826
          50B3896A6DD55CAA71552FA9AE535DA0FE3ECAB93F823780D6237803C8A480F0
          FDACAD4B9F4DA30B1CB305EE1354D3F7F123CFA8BEAF31DC94639F5D514582B7
          C6B28A9AD35473F7F123AFABF6549F17E6D827C11B40EB11BC01645640F8EED2
          67D3A1058D757F3547D93F0EF0A376ABC3EF6A1C17E5D46F575481E0AD716CAE
          E65CD5A0017ED40E0EFBABDF6373EA97E00DA0F508DE00729173F8FE4035873E
          9FDECB798C6BAAF94B145F5691869D755F5CE3783487BEBB22E7E0AD31D86B73
          8F6AA2948BD8E53776ABC71B73E89BE00DA0F508DE00729373F83E589F4F87E5
          38363BC3FD906A58878B5EA9716C9043FF5D917FF0B66BE7D7E970B107558B7C
          99F16041F006008237809CE518BEDF54CDA6CFA84F731AD7926AEE0A5874AC6A
          268DE3CD8CFD77458EC15BFDCFA0E6D528FDD9FEEEECACFF3F32F64FF006D07A
          046F00B953C89A49CD6D517CB78C2C36D167D4A5398D695F35C7042EBEA1C671
          45C6FEBB22DFE0BDB19A4B0217DF47FD1F9FB17F823780D6237803288482D602
          517C3DF124195663B7F5DB24A7F11CAD66FFC0C577D3387E9BB1FFAEC83778EF
          A6E6E4C0C58F52FF0766EC9FE00DA0F508DE000AA3B0F57D35A76658855D6632
          6D1EF794D658EC8CED5E818BEFAD319C90B1FFAEC83778EFADE6B8C0C58F57FF
          FB64EC9FE08D4AD33E6A270996557D533544359B6AE2283E79609F41F654DD17
          544FA9EE53DD55E46D4FD14C046F008549BED068979C2C9361356BE973EADA1C
          C642F02678035FA3FD726A359BAAB68CE2D03D7E078BDB89815B55E745F15FE7
          3EF09E0FAA8FE00DA0503AB0ADAAE6860CAB38429F5307E5300E8237C11BF837
          ED8F7346F1A5673BA806E7B0CA0F55BF571DAB7DF535EFF9A1BA08DE000AA783
          DCFD51FCE7DB1023F539B57C0E63207813BCD172DA0FEDD2919FAAF6534D5040
          177639CAE1AA63F2BA23139A85E00DA0703AD81D10C54F8B0CF1A63EA7A60F5C
          B6FB1808DE046FB458724BD11151F6BB2DA5610FDDDA5CFBEDC3DEF346B510BC
          01142E7962E243195631B53EABDECD38068237C11B2DA5FD6F7735C7469D5DC3
          9D957DF17217EDBBE778CF1FD541F00650B8E44B96EFA8A60C5CC512FAACBA37
          E31808DE046FB44CF2D963977E64FE9E48200B593FD2FE1BFA173F340CC11B40
          2974FCBB53CD52818BAFA6CFAA1B33F64FF02678A365B4DFFD3A8AAFE7F6F613
          EDC3BFF41E04FC11BC01944207C0CBD46C18B8F846FAACBA3C63FF046F82375A
          24E3774BF266616B27EDC77FF41E087C11BC0194420741BBCEF17B818B6FADCF
          AA7333F64FF02678A325B4BFADA6C6EEFF3FAEF758BAF94C353CEB6573A83782
          378052E84078A69A6D0317DF4E9F556765EC9FE04DF0460B685FB3BB203DA89A
          C17B2CBD7856B588F6E70FBD07021F046F00A5207813BC2382374AA07DCD3E2B
          B6F11E473FEC1EDFFB7B0F023E08DE004A41F0267847046F144CFB993DF67DA4
          FDA3F758FAF1B9EA9BDAA71FF31E08CA47F006500A8237C13B2278A360DACFAE
          51B3A6F73852F893F6E9D0EFBCA0C608DE004A41F0267847046F1448FBD8226A
          FEE93D8E94C6A88668BF7ECE7B202817C11B402908DE04EF88E08D02691F3B51
          CD1E39ACCA82D12DAA2B554FA8DE52D9173617546DA05A36A7217769BF3ED461
          53C111C11B402908DE04EF88E08D8268FF1AA4E695280EC859DCADDA5DFBDB3D
          FDF4B5A29A93540B65ECEB29F533A4D40D0577046F00A5207813BC2382370AA2
          FD6B693577645CCD08D5F6DAD73E49D1DFA4C9CFAF93B1CF59D5DF2BE56C2554
          01C11B402908DE04EF88E08D8268FF3A484D9647B2FF5DB59AF6B3CF3AE87370
          145F92B244867ED7559F5797B3955005046F00A5207813BC2382370AA2FDEB12
          351B072E6E67B8ED8B8E2F05F46B979BDCAF1A2FB0EFFDD5EF31E56C255401C1
          1B402908DE04EF88E08D8268FF7A280ABFE6FA14ED5F3FC8D0B75D72B279E0E2
          27A8EFBD8BDE3EA80E8237805210BC09DE11C11B05D1FEF5919A4902175F55FB
          D7DF32F4BDA99A0B0317BF407D6F51F4F6417510BC019482E04DF08E08DE2880
          F62DBBCCC39E0619FAB4CAC9B57F7D98A1FF39D43C1FB8F855EA7BBD62B710AA
          84E00DA014046F827744F04601B46F4DA6E683C0C54769DF0A3D53FE55FF13A9
          191DB8F88DEA7FB522B70FAA85E00DA014046F827744F04601B46F4DA0E6D3C0
          C5BF504DA4FDEBF30CFD4FA7E68DC0C5AF51DFDF2E7813A14208DE004A41F026
          7847046F1444FBD728358303179F4FFBD7D319FA5E4ACD9D818B5FA6BE43EFC6
          821A2278032805C19BE01D11BC5110ED5F762BC0590317DF53FBD76F32F4DD15
          85BFB74F57DF3B15BC795021046F00A5207813BC2382370AA2FDEB3A35AB072E
          FE846A21ED636302FAB5EBBB9F54CD16D87797FA3DB49CAD842A2078032805C1
          9BE01D11BC5110ED5FF6109A7D33AC620FED632705F4DB1585BFAF4DE6CF36D4
          0BC11B402908DE04EF88E08D8264BC97B6B147C5AFA5FDECA60EFADC40CDA5AA
          7133F4BBA8FABCBF9CAD842A2078032805C19BE01D11BC5110ED5F53A8795335
          7E86D5D8A3E377D5BE76E6007DD9FDC2F750D959F64119FAB32F844EA5FE3E2B
          776BC113C11B402908DE04EF88E08D02691FBB41CDAA39AC6AA4EA28D50DDAEF
          FE737F6EAD7F52356BA97EA4FA560EFD8CD0FAB7F4D856F043F006F06F3AA84C
          A9667ED50251FC45A11954767FDA895513E6D0C530D54C81CB3EA27A2D63FF43
          A3F02F40D997AF5ECAD8FFDC49857836A92C66570D095CF6C528FE025916F6DA
          0F0B5CD65EFB4732F66FDE53D9A3C53F8EE2FB2E3F91CCEB091D0B47E5B07E38
          D267D8E66A46E4B84A0BDDCFA9DE554D13C5EFDF09725CFF7ADAEFAE2A6F0BA1
          0A08DE404B25DFC65F5F650F6F58268A8329D04676207C5C75535237EBD8F896
          F7A0D0197DA6D96526169467F11E4B0AF64BDF82DACFBEF01E08CA45F0065A48
          07A82DD4D8A51733788F05A8203B30DEAA3A5B75B18E93A18F234789F4B936BD
          9ADB54F37A8F2585ED07BA961CCD44F0065A460727BBCEB8CB7B1C404DD8E506
          97A88ED6F1F241EFC1A07749E8BE51B590F75852B84FB5A4F6A7B1DE0341F908
          DE408BE8E0F41D3517798F03A8213B58FE5975B88E9B777B0F06FF55B3D06D97
          962CA77DE80EEF81C007C11B68091D9CEC4B41CF44E18F550610B35F5EF7D5F1
          F365EF81B45DCD42B7394CFBCDC1DE83801F8237D0129CED0672657747E9529D
          A8E3E8E7DE8369A31A866EFBE2EEEA5C62D26E046FA0257490B2FB50EFE93D0E
          A061EE516DAE63E973DE0369931A86EE87542B683F79CF7B20F045F0065A4207
          AA0BD46CE63D0EA0812C4CEDA0E3E965DE0369831A86EEC7A2F84CF72BDE0381
          3F8237D0123A58D9ADD1B6F61E07D0507630B5A71D1EF42507D6C2D43074DB97
          28ED41396F7B0F04D540F0065A4207AC03D51CE13D0EA0E1CE52EDA463EB18EF
          81344D0D43F749AAFDB52F7CEA3D105407C11B68091DB4E68BE2A7A58DE33D16
          A0E1EC31E09BE9F83ADA7B204D51B3D0FD826A0FBDFE7FF61E08AA87E00DB488
          0E5E17AAD9D47B1C400B58F8DE8833DFD91514BAED4E349FA926C9719DEFAAEC
          4BECF6B0A551E56D21D409C11B68111DC0665273A76A76EFB1002D7066147FE9
          92036DA00243F7E6517C7BBF1D55FF17657BCCBCDDB1C42E313A552FF5874E9B
          0A3541F0065A26B9E4C4EEBE30CC7B2C400BFC4AC7D91F7B0FA28E8A0CDD3DEF
          40A3BEECF3705DD50A497FFD9D9C784975BFEA66D5755AD7C3DEDB0AF541F006
          5A480799C1517C4FEF5D5573F4F8DF763F623BA83CA87A358A6F9566F585F7B8
          818CA68AE24B0BE6560D552DA21A52709F7690DD58C7DACBBD275F276586EE3E
          FA9F42CD74AA29927A3F8A1F9AF4129791200B8237D0723AC0CCA56646955D8B
          FAA43E13DEF71E135016EDFFB3AA5943F55DD54AAA710BE8C6AEFD5D4CEFADE7
          BDE75B07DEA11B2812C11B0080E8DF81CF2E2FD847B5B36AE29C577FB76A385F
          B6EC1FA11B4D47F00600A01B853FBBC4E0F028FEE25D9E67C0F7D331F758EFF9
          5515A11B6D40F00600A0170A82CB44F1DD2AE6CB699576C78B057874F8FF2274
          A32D08DE0000F44181707235A746F1EDE7F270A18EBB79ADAB1108DD68138237
          00000350383C50CD1139AD6E491D7BEFF19E53152497F558E85E38C7D512BA51
          59046F0000525048DC4FCDAF7358D5E53AF66EE43D1F6F9CE9461B11BC010048
          4961D1BE7499F5813876E0FDA68EBF0F79CFC70B67BAD156046FA0C274709A40
          CD7AAAE12ABBDFB03DB8E151D5A57AEF3EED3D3EA06DF49E1C47CD08D5661957
          758EDEC3DB78CFC70367BAD166046FA0A27470DA44CDF1511CB87B73A16A2FBD
          87FFE53D56A04DF4DE9C54CDBD51FCF4CB50F64BF48C7AFF7EE83D9F3271A61B
          6D47F0062A4807A743D41C9AE2475F50ADC6D96FA05C7A8F2EAB66A4FD6386D5
          6CAFF7EE99DE73290B67BA01823750393A38D9ADC64674B0C8C3517C9784D1DE
          6307DA44EFD5D3D5EC9061157FD3FB7655EF79948133DD408CE00D54880E4E13
          A9794E3563878BFE50EFE5A3BDC70FB489DEAF3344F1FB7570E02ABE504DA7F7
          EE3BDE73291267BA81FF22780315A203947D61EB8280459FD37B796EEFF1036D
          A3F7EC896AF6C8B08A4DF4DEBDD47B1E45E14C37F075046FA04274903A43CD76
          818BCFA5F7F3F3DE73C838FF419AC318EF71201F7A3DC7D7EBF9B9F7380A9EE3
          9C6A9E518D1BB88A93B58D76F79E471138D30DFC2F823750213A503DA16648E0
          E2CBE8FD7CA7F71C32CEFF34CDE1FBDEE3403EF47A9EA5D7735BEF719430CF9B
          D4AC14B8F8A3DA46C3BCE790374237D03B823750113A504DA9C6AEF50CBD4BC2
          127A3FDFEB3D8F0CF3B74B6C4670506D8EE4D2A9EFE835CD7ACFEB4AD33CED97
          C5530317B7EBBC276DD297A309DD40DF08DE4045E860B58C9ADB0317B737F254
          7A3FBFEF3D8FC0B92FAAE63ED5849AC367DEE3413EF4BADA970EED7ED58BE875
          7DC07B3C05CE73F628BEB567287B8AE583DEF3C8695B704D37D00F823750113A
          606DAFE68F818B3FAFF7F25CDE73089CB73D9DF353FB67CD21CB3D9151417A7D
          BF3AC834FA972ACDD3EEA53F4FE0E2162A2FF49E430EDB8033DDC00008DE4045
          E8A0D5A5E667818BDB23E437F19E43E0BCAF57B39AFD33C1BB79BA05EF6BF5FA
          AEE53D9E02E779919AEF042E7EB0B6CD61DE73C8387F42379002C11BA8081DB8
          7EABE6FF0217FF99DECB3FF79E43C09CEDE97FB725FFFA9EE63095F798902FBD
          C61FA99924F9D7A5F51ADFE53DA682E679B89A1F072E7E82B6CBDEDE73C83077
          2E2F01522278031591F18CD92E7A2F877EB9CB6BBEE345F1C1F5ABB3DC37680E
          AB7B8F0BF9D2EB7CB39A15937FB5038EDD32F20BEF711530CF1DD5FC2170F133
          B44DB23C01D37BEE0F459CE9065221780315A183D7556AD6095CBC76D7886ABE
          37A8E9FEB8EC5F690EA1670C51517A9DED89AAFB77FB4F8DFC054BF3DC544DE8
          7BF0626D934DBDE710386F3BDBFD468EAB2474A3D108DE404574BFD639C05A7A
          2F5FEB3D870EE6FA4D35F7F7F8CF5B6A0E23BCC7867CE9B5FEAE9A737BFCE761
          7AAD1FF51E5BCEF35C53CD35818BD7F2FAF702AEEB2674A3F108DEF81FFA309D
          598D05A3F955B345F1F59976EDED87517C6BB097544FA9466AFF79D37BBC4DA1
          ED6E07B05502175F55AFC5DFBCE790729E83A2F800DBD38A9AC3ADDEE343BEF4
          7AAFACA6B77DD32E3919EB3DBE1CE7697FBDB92170F11BB52D427FE9F69A6FDE
          D77513BAD10A046FFC9B3E4497566367A6EC4FC043532E663B8F9DB5BA4575A1
          F6A55BBCE751672D0ADEF6A09CDE1EA832547378D27B7CC8975EEF05A2F873A2
          A7F3F57A6FE53DBE1CE7D99AE04DE806C211BC5B4C1F9EE34771D83E40B5600E
          ABB407409CAC3A57FBD528EFF9D54D1B82B7E6386B14FFC5A43793690E1F798F
          11F94A9EC8FA6E1FFF7B56BDE6AF788F31A779B6227813BA816C08DE2DA50FCF
          F5D51CAF2AE2A12B7620DD53FBD6A5DEF3AC9396046F7B80CAF8BDFCAF311AFF
          F89DAE0FF5A0D77D8C9AF17AF95F9FE9759FD07B7C39CDB1F1C19BD00D6447F0
          6E197D704E13C5B7BCDAB084EEEC2E1DBB6B1FCBF228E5D6687AF0D6FC7EA8E6
          C83EFEF7C71AFFA4DE634431F4DA7FAC66E23EFEF7FE7AED8FF11E630E736C74
          F0267403F92078B7883E38975163D7D7CE5662B76FA936D27E36D27BFE55D7E4
          E09D3C16FE93E8BFF7ECEEE95D8D7F6AEF71A2187AFDED529329FBF8DF76109A
          A8EE8F936F72F0267403F92178B7843E38D78DE2D03D71D67505B003EA4EDAD7
          CEF1DE0E55D6F0E06D635BB99F1F795DE39FD17B9C28865EFFD7D54CDFCF8F5C
          AFD77F0DEF71669C63238337A11BC817C1BB05F4C1B9711487EE418EC3B01D6D
          57ED6FBFF7DE1E55D5D4E0AD79CDA3E6E9017EEC258D7F76EFB1A218DA07EC0B
          B5B30EF063736B1F78CE7BAC19E6D8B8E04DE806F247F06EB8E41EBA7F514DE4
          3D16B12F58ADAF7DEEAFDE03A9A206076FBB45E07C03FCD8D31AFF403F839AD2
          3E60817ACE017EEC09ED03F37B8F35C31C1B15BC09DD403108DE0DA60F4EBB96
          FB9FAA69BCC7D28D3D846779ED770F780FA46A9A18BC35277BA2DD43297EF456
          8D7F45EFF1A218DA0FEE56B3448A1F5D50FBC163DEE30D9C63638237A11B280E
          C1BBA1F4C169B7EEB207DA0CF71E4B2FECC0BA48DDBF4C95B78606EFBE6E23D7
          D3088D7F4BEFF1A218DA0F2C70A5B993D258ED079E97C4659963238237A11B28
          16C1BBA1F4E1B9A79A13BCC7D18F83B5EF1DE63D882A695AF0D67CF653F3EB94
          3F7E9AC6BFB3F798510CED0B67ABD93AE58FEFAD7DA1CA9F5D7DCDB1F6C15B73
          9849CD75AA85725AA585EE2D78A603F05F04EF06D287E70C6A9E504DE13D967E
          D8ADE5BEA1FDEF29EF815445938277F21717BBAC6870CA454ED4F8F7F21E378A
          A1FDC1BE549DF617ABD1AA49B53F7CE13DEE0EE758EBE0ADF1DBD38BEDD90B79
          3D548DD00DF482E0DD40FA003D2A8A1F035F75F668F9B467C11AAF61C17B6F35
          C775B0C8111AFF41DEE34631B43FD8BEB077078BECA6FDE1B7DEE3EE708EB50C
          DE1AB7DD5B7FA7287EBF4E92D36A09DD401F08DE0DA3CFD0A9D4D8932227F31E
          4B0A9FAAE6D03EF8BAF740AAA061C1BBD30F965F6BFC75F8651101B43F9CA866
          8F4E96D1FE304E273FEFAD8EC15B63B63E7FA15A3AC7D512BA817E10BC1B461F
          A4BBAA3925A7D5BDA9BA5AF560143F81D29E2C3854650FE3C9EBE99787681FFC
          45D9DBA98A9A12BC358F9FA8E9F4FAFD9335FEDDBDC78E62689F385DCD0E1D2E
          7690F68923BCC7DEC11C2B1FBC93B3DBC354DF567D4FF58D9CBB207403032078
          378C3E57EF88B29FBDB0907DB0EA74ED1F9FF7D2877D786FAEB283E21C19FBB2
          70CFB7DD63F60BCDCC81CB5622786BD71857CD28D5841D2E7A86C6DF6930434D
          68BF384F4DA777ADB1EF814C52976BBD3306EF57A2F8244711EC7B1693AA6651
          0D514D59503F846E200582778324B781B2CB36B2FC89D6EEB9BC9EF68B1752F4
          67F707BF58B592F7DC5199E06D4F49BD2460D16B34FE6F7B8F1FC5D07E61FBE6
          CA018B6EA0FDE24AEFF1A79C6396E05D77DC32104889E0DD20FAE0DF54CD8519
          56F1AA6A49ED13AF74D0A79D4DF9BBEA5BDEF36FB9AA04EFB16AC60D58F4518D
          7F98F7F8510CED174FAB992760D12FB45FA4B90FBCBB9607EF8D09DD403A04EF
          06D107BFDD3379BF0CAB5843FBC3F501FDDA6DA8EC3AF05A1C201BCA3D786B3F
          5853CD35818BBFA4F1CFEE397E1447FBC64B6A660D5C7C75ED1B950FB42D0EDE
          9FEBF599C07B10405D10BC1B441FFC7F8EE2EB8443DCAC7D21E44FC15FF57D96
          9A6DBCB7418B552178FF53CD22818BBFA1F1CFE0397E1447FBC61B6AA60B5CFC
          5EED1B691E37EF3DC736066F2E31013A44F06E107DF0DBA3D8E70F5CFCFFB42F
          FC3E43DF6BA9F9ABF7366831D7E0ADD7DF1EF3FD7986557CA0F157F9814FC840
          FBC70751B65B9C8EAFFD638CF73C069863DB8237A11B0840F06E107DF0DB35DA
          33052EBEB0F6858733F46DDF9AFFD07B1BB49877F03E53CDB619563146E31FDF
          6BFC2896F60F0BCD592E453B4DFB47DA275F7ACDB14DC1DBEE5C64A1FB2AEF81
          007543F06E908C6795A6D1BEF04EC6FEDF5733B9F7766829EFE09DC707C9F49A
          C39B5E734031B46FD8C98057B3AEA7EA0FD46951F07E57B5BE5E8F91DE0301EA
          88E0DD20FAE07F4F4DE89FEB67D2BEF0AF0C7DDB41D1CE824CE4BD1D5ACA2D78
          EBA55F51CDCD39AC6AB8E670BBC71C501CED1F2BA8B92587552DA7FDE336EFF9
          F433CF36046FBBDDECA67A1D9EF01E08505704EF06C978E780A5B42FDC9DA16F
          FB625C707047669EC1FB0A35EBE7B0AABD3487133DE680E268FFD85FCDD139AC
          EA52ED1F9B78CFA79F79363D789F13C5DF051AE53D10A0CE08DE0D92F1AE1207
          6B5FE8F431DFDDFBDE5ACDD9DEDBA0C55C8277F2978EBC9E2C7893E6B04AD973
          40B1B48BD859EA65735ADDB85F56F4A0D5E0E0FD4C14FF525CD4933581562178
          37883EF82F50B359E0E24FA986F5F688F8947DDFAC6645EF6DD0625EC17B6A35
          6FE7B5BEAA5FC78BCEE574FDFF57A6D43EF2BEF79CFA9867D382B77D67C89E0D
          71B4B6F927DE83019A82E0DD20FAE0EF52F3B30CAB08FA53BFFADD500DB794F2
          E515BC2F5693E79FFF07691E63CB9E078A91C36D267B3A5FFBC756DEF3EA63AE
          4D09DE6FA94E569DA06DFDAEF76080A6217837480E1FFC9F4671804BFD0526F5
          3944CD9DAAA9BCE7DF725EC13BEF0F9013358FBDCA9E078AA1FDE35435DFCF73
          9D55FDAB48CD83B77DF6DB538B2F525DCC75DC407108DE0DA20FFEC1517CABA7
          0933ACE623D5D6DA2F2E4FD1DF703597A878E2A0BFD283B75E7FBBEFF66739AF
          F63DCD835FE21A22E39D96FA52C987E9D42C78DB6D3B1F57D92D01ED8E33B769
          9B7EE43D28A00D08DE0DA30FFF4BD56C947135B653D8A523BFD4FEF18F5EFAB0
          A763DA9D0AB68BB23D14C33CAA3AA1FC2D5549FBAA86062EEB11BCBFADE62F05
          AC7A31CDE59F65CE05F9D3FEB1B89A7B0A58F51ADA3FAEF79E5F2FF3CD12BCED
          F67CC71634B4D1517C42C51E7066CF6A788E4B48003F04EF8629E07A6BBB45E1
          83AA3754D346F123E9E7CB71FD3B681F3CA3BC2D545D7AED6E54137A570F8FE0
          7D4C14FFB290B7BB3497A5CB9C0BF2A7FDC37E695FAC8055FF5AFBC701DEF3EB
          65BE5982F7DF34A755BDE700A07804EF8649FEFC6F674FE6F21E4B0AF6259ED9
          F8C67CAC86C1DBFE4C3DBCA0D5CFA1F9BC58E67C901FED1BF6F9F36C41ABBF55
          FB46E5EEA044F0069006C1BB817400F83F35BFF51E470A8769FF3BD87B105551
          C3E06D7FC22EEA49A5F6A7F0E9B8C349FD68BFB0CBCFEC97EA290BEA6294F68B
          49BCE7D9CBBC09DE000644F06E201D002688E2CB4342AF172EC3CBAA05B5FF7D
          E83D90AAA861F02EFAC3E31CCD699B32E784ECB45F9CAF668B22FBA8E29D4D08
          DE00D2207837940E02F6A7D89BEC1FBDC7D2878DB5EF71EFEF6EEA14BC737E62
          657F0ED5BCBACA9A17B2D16EF14B350795D055E59E6049F0069006C1BBC17420
          B08720ECE63D8E5E5CAEFD2EEB9D571A87E0DDA7EB35B735CA9A5BC0B6B0DB1F
          DA178FED299ED327FF3C4DF2CF53776B27570D4ACAFE2A65B7621C93943D25D0
          EE38F146B7D69E08FA56B7FFF65695EF46A1ED60FBDFCA257547F006504B04EF
          06D381C0AEBFB587E1147167815076FBC0E1DAEFDEF31E48D510BCFB65E1D46E
          61690FF778A5C758EC0BC5B6AF0F4EDA9EFFDCBDECBA630BCA766FE9A99376CA
          A4A6E856139738B7A2D84350DEEF56EF2565FFFC4ED2BE9BFC37FB82B35DB3FF
          698FF6936EFFEF136DFBAF3D8552DB7E56359BAA8E8EB2DF5AB413046F00B544
          F06E381D0C668EE2F03DA7F758A2F8ECDD32DAE79EF61E481511BC53B3F0675F
          BA1C2FA9719DC6D146F69A8F8DFEBBFDC7771A07C11B402D11BC5B400704FB92
          A585B2991D876167D6D6D2FE76B7F7F6A82A8237901AC11B402D11BC5B420785
          39D45C1BF9DCE9C4EEE7BBAEF6B5C7BCB7439511BC81D408DE006A89E0DD22C9
          97C0EC29911B94D8AD5DE6B291F6B337BDE75F75750ADEC978F9F0800B6E2708
          A0AE08DE2D939CA9DC5565B7FD9AA2C0AEECFEDC87A84ED23E36C67BDE7550C3
          E06DAF6B995FA803CCE7DAD727F01E444F046F006910BC5B4A078919D51CAEDA
          3ACAF70B5276F9C1C5AA7D7BDE7D02FDAB61F0B6FBC4AF54669F80DCA07D7D75
          EF41F444F0069006C1BBE574B09853CD3EAAEF46F1BD8743D92DC9FEA83A45FB
          D433DEF3AAA31A06EF7DD51C53669F80ECA57DFD44EF41F444F0069006C11BFF
          963C667E4D953DA8C4C2DFFC51FFB769B333DBF658FA5B92BA4EFBD2C7DEF3A8
          B31A06EFE9A2F8E12E4099A6D5BEFEB6F7207A2278034883E08D5EE920326114
          DF016536D5A4517C3DB83D90C3AEDD7E49F52C0FC1C957DD82773266AEF34699
          C66A3F1FE43D88DE10BC01A441F0466B255F345D5CB55C143FD6DBFB4E095BA8
          E6085CD62B787F4BCDBD65F78BD65A44FBF903DE83E84DC6E0FD826A84F3142C
          0CBCAE1AA9FA47D56ED7083405C11BADA483A45D5273AC6A98F75872E212BC8D
          B6A53D9134CBF7038034DED63E3EADF720FA92317857CD4351FC05F9A6CC07A8
          0C82375A4707C8FDD51C1935EB51E39EC17B78149F25038AB49CF6F1DBBC07D1
          9786056F63DFE33940DBFC58EF81004D42F046ABE8E06897739C17F95F569237
          B7E06D325E9F0E0CA492B710ECAE81C1DB5840D85CDBFE22EF81004D41F0466B
          E8C0685F127D5A3583F7580AE01DBCED17992755F37A6F0834CE53AAA155BFE6
          B8A1C1DBD89D8BE6D5E6FFD07B20401310BCD11A3A307E5FCDA9DEE328886BF0
          36DABE767713BBCD5B914F4445BB7CA09A5AFBF658EF810CA4C1C1DBECA0D7E0
          0CEF41004D40F0466BE8C078A19A4DBDC75110F7E06DB48DED566FCF46F16D28
          812C5E8CE233AD9F7B0F248D8607EF117A1DB6F41E04D004046FB4860E8C77A8
          59DA7B1C05A944F0FE8AB6B50510EE4B8C50B5BBAF75C383F71D7A3D96F51E04
          D004046FB4860E8C76E78DE1DEE32848A582B7D1F65E594DA5C6845A58BD8EB7
          B16B78F0BE55AFC98ADE83009A80E08DD6D081F11C35DFF31E47412A17BC8DB6
          B9DDB2F10FAAEDBDC782CA3B53B5A3F6E32FBC0712A2E1C1FB2CBD2EDB790F02
          680282375A23B995E0F9DEE328482583F757B4ED2751F343D521DE6341E51CA3
          FA99F6DF8FBD079245C383F766DC5210C807C11BADA103E3F86A1E8D9A79CBBB
          4A07EFEEF43A6CA6668F28BEECA769F753473AF7A88E6E52986B70F0B6DB842E
          54972FB9025547F046AB24D71D5FAB1ADF7B2C39AB4DF0FE8A5E8B09D44CAFFA
          BD6A6DEFF1A07077A9B652BDAC7DF533EFC1E4ADA1C1DBC2F66A7ABD6EF51E08
          D014046FB44E72C6F54CD560EFB1E4A876C1BBA7E47AF0E555ABA916537D5335
          8BF7B8D0B157550FA8EE8BE2207A6B5DAFDBEE440383F728D5B67AED2EF61E08
          D024046FB4920E920BAA3952F56DD578DEE3C941ED83776F9227628E9B94DD23
          DC02F937544354439376AEE4FFA35876B0B07B6B3F1EC5971F583D14C5978DD8
          99510BD75F54FD0993456950F0B687155DADFA915ECAC7BC0703340DC11BADA6
          83A55DEAB04C143FF06512E7E1D89335E7095CB691C13B2BBDBEF6D08FF3BCC7
          51233CA13050C6E0FD8CEA34E729D8975B5F52DDAE7DE04DE7B1008D45F0062A
          4207EE1BD5AC12B838C1BB17DAA64BA8B9DB7B1C35B2ACF6A33BBC0751471983
          77ED1E1804200CC11BA8088277FEB44D4F51B3ABF7386AE46CED47DB7A0FA28E
          08DE00D22078031541F0CE9FB6291F701DD27EC42D1E0310BC01A441F0062A82
          E09D2F6D4FBB75DD9FBCC75143BB685F3AD57B107543F0069006C11BA8088277
          7E92BBA1BCA69AC17B2C35F4966AFAB6DE9D2414C11B401A046FA02208DEF9D1
          B65C41CD2DDEE3A8B1B5B43F5DEB3D883A2178034883E00D5404C13B3FDA96A3
          D54CE43D8E1A1BA3FDA9694F772D14C11B401A046FA02208DEF9D0765C430D67
          6BB3DB58FBD465DE83A80B8237803408DE404510BCB34BAEED7E5935B3F7581A
          E075D54C5CEB9D0EC11B401A046FA02208DED9691B0E5733D27B1C0DB2BAF6AB
          263C06BD70046F006910BC818A207867A76D384ACD60EF713408D77AA744F006
          9006C11BA808827736DA7E1BA8B9DC7B1C0DF45DED5BE7790FA2EA08DE00D220
          78031541F00E975CDBFD8A6A26EFB134D09BAA19B57F7DE13D902A2378034883
          E00D5404C13B9CB6DD126AEEF61E4783ADA0FDEBEFDE83A8328237803408DE40
          4510BCC369DBBDA7660AEF7134D828ED5F93780FA2CA08DE00D22078031541F0
          0EA3ED364CCDC3DEE3688125B58FDDE33D88AA2278034883E05D61C975AB8BA9
          16574DE93D1E14EEFBAA7902976D73F07E40CD37BCC7D1028F691F5BD07B1055
          9531783FA33ACD7B0E28D4BBAA7BF51EBACF7B20F045F0AE287D886FA4E657AA
          A1DE63412DB43278EB7D32839A7F798FA34566D17EF6AAF720AA2863F0467B3C
          AE3A48EF23EEC0D45204EF8A49CE721FADDACF7B2CA895B606EF53D4ECEA3D8E
          16395BFBD9B6DE83A82282373A74B4DE4B3FF41E04CA47F0AE187D781FA8E608
          EF71A076DA1ABCF9002B99F6B371BCC75045046F043840EFA75F7B0F02E52278
          57883EB8E78CE23F434DE83D16D44EEB82B7DE2FABA9B9DE7B1C2DB4117F26FF
          5F046F04F84435A7DE4FAF7B0F04E5217857883EB8ED1293FDBDC7815A6A63F0
          BE4BCD92DEE368A1FBB5AF2DEA3D88AA217823D02E7A3F9DEA3D089487E05D21
          FAE07E48CD42DEE3402DB52A78EBBD32819A8F5583BCC7D242F604CB49B4BF7D
          E23D902A217823D0E97A2FEDE43D089487E05D21FAE0FE50CDA4DEE3402DB52D
          78DB2FA80F798FA3C516D5FE76BFF720AA84E08D4057EBBDB4AEF720501E8277
          8510BC9141DB82379765F9FA9DF637EE26D30DC11B8108DE2D43F0AE102E3541
          066D0BDE7699C9C4DEE368B1B1DADFB8CCA71B82370271A949CB10BC2B441FDC
          47A939C07B1CA8A5B6056F3EB89C715BC1AF237823D0CE7A2FF1D4D216217857
          883EB8E750F344C4ED04D13982374A45F0FE3A823702D81794E7D07BE90DEF81
          A03C04EF8AD187B73DC9EA48EF71A07608DE2815C1FBEB08DE08B09FDE47C77A
          0F02E5227857105F1C430082374A45F0FE3A82373A7494DE43077A0F02E52378
          57943EC43788E247C7CFEF3D16D402C11BA522787F1DC11B293DAAFA91DE3F7F
          F61E087C10BC2B4E1FE68BA9F9966A16D544DEE341A1B650CD11B86CDB82B73D
          C485E0E788E0FD751983F70BAA11DE73406146AB5E55DDABF7CD3FBD07035F04
          6FA02274E0BE51CD2A818BB72D78DB5F83F833AD9F93B5BFEDEE3D882AC918BC
          6FD4F65CCD7B0E008A47F0062A82E09D9EB6D5D46ADE8A38EBEDC10E1A33687F
          7BD37B205542F0069006C11BA808827767B4BDCE8FE2CB7350AECBB5AF6DE43D
          88AA2178034883E00D5404C1BB73DA66EFA999C27B1C2DF2B1F6B349BD075145
          046F006910BC818A2078778E4B4E4A37030FFBE81DC11B401A046FA02208DE61
          B4DD1688E25B74A1584B681FBBD77B107ABDED2F1CEBABE649FED3C2AA655433
          25FF3E567588C6FACB92C745F00630208237501104EF70DA76B3AA7931E2CC77
          11EC20318FF6AFE7CAEA50AFE72035E34571B87E48356EC06A7EA531FFB8C431
          13BC010C88E00D5404C13B1B6DBF19D43CA39AC47B2C0DF2A96A88F6AD178BEC
          44AFDD4A6AD6557D5BB5605EEB2DF35EE3046F006910BC818A207867A76D6867
          461F57CDE73D9606B0B03DB7F6ABB179AE54AF913D08CCBEA0F9B06A86222740
          F0065035046FA02208DEF9D1B63C54CD21DEE3A8B123B53FFD28AF95E9F5985F
          CDBEAA6D5513943509823780AA2178031541F0CE97B6E75C517C567562EFB1D4
          C827AAA5B42F3D986525C935DA4354F665CCC15E93217803A81A8237501104EF
          FC699B4EA8E652D5DADE63A981BFABD6D27E342A7405DADEBBA9D95AB5B4F764
          0CC11B40D510BC818A20781747DB762D3557AAC6F71E4B058D517D57FBCF8521
          0B6BDB4EABE6ACA882BFDC10BC01540DC11BA8088277B192FB3F8F542DE43D96
          0AB15B042EAE7DE79D4E17D4F69C318A7F9959C27B127D217803A81A82375011
          04EF72683B1FA1E640EF7154C009DA67F6EE74216DBF99D5DC17157C47921C8C
          D2FC4ABBB524C11B401A046FA02208DEE5D1B6B6A71DFE236AE7A527767BC065
          B5BFDCDDE982DA6E7F89E27B6DD7C1519A6369BF6011BC01A441F046AB250F5D
          5956354BE4FFE095EF47FF7D0C76A708DE1D4AEEBCF17254FD33B7797A4B35BB
          F695D19D2CA46D658F64BFDD7BF01DDA5FF33CA6ACCE3206EFA7557F286BAC7D
          F858F58AEA366DB7379CC7023416C11BADA483A45DE77BA4CABE7417F238EAAA
          21780748EE7AF2AA6A6AEFB194E003D58C01A1DBDE237FF51E7C80EF6BAEA585
          D98CC1BB4ABE50D95F367EA4EDF788F76080A62178A3757480DC5CCD99AA89BC
          C79223827720ED0FF605BC8FA266DFEFDBEECF3D89F6912F3A59489B66533541
          773BC9995D1E335E270B94F9C54AD3A0E0FD15FB056D5B6DC78BBC07023409C1
          1BADA283A35D437DAD6A90F7587246F0CE40FBC5926AEEF21E478196D7FE31B2
          9305B44D965273A7F7C0E559D5DC1D2EA3E97E59EA5FB21A18BCCDE7AA35B42D
          6FF61E08D014046FB4860E8CF6A8EA47A3F0EBA8AB8CE09D91F60FBBDE7B16EF
          7114E05FDA3766EA705B58681DEB3D70D9290ABBF6B9D43B9A9886066F63BFF8
          2CA0EDF999F74080262078A3357460DC52CD79DEE32808C13B23ED1F3F8CE2EB
          FE9BE630ED1B0777B82D9E88E247BE7BB25F90ED4B8721978C7CA4394F56E660
          1B1CBCCDE6A10F5802F075046FB4860E8CE7A8F99EF7380A42F0CE28B9D6BBA3
          6BA06B6202ED1B9F77B01DEC2E3FB7398ED71E593F4D145F631C6A69CDB9D44B
          871A1EBCCFD2F6DCCE7B10401310BCD11A3A305A9858D67B1C052178E740FB48
          E33E103BFD926105B6817DFF624C9973CE43C383F7DFB54D57F01E04D004046F
          B4860E8C77A859DA7B1C052178E740FB88DDAB7A19EF71E4E87EED178B7630FF
          7DD41CEB34D6BB34D6A53506BBB63CD3172309DEB9BB5DDB74B8F72080262078
          A3357460BC40CD66DEE32808C13B07DA477EAAE617DEE3C85147D7776BFE76AF
          EF52AF8D4E7CA89A328A6F7B98F569A25F68CE1DDD7A300F0D0FDEE76B9B6EE5
          3D08A00908DE680D1D18778CFC9F0E571482770EB48FACA3E62AEF71E46843ED
          1757A49CFB50358F3B8CF1088DF120F56F0F6B593087F5FD54EB3BBCEC49343C
          786FA76D7A96F72080262078A33574609C54CD53AA19BDC7520082770EB48FD8
          6519F7798F23474B6ABFB827E5DCF7547342C9E39B5BE37B4E7DBF1DE5F7F4D0
          1DB4CE334A9E479383F76BAAF9B44D3FF61E08D004046FB48A0E8E76A9C98828
          EC16655546F0CE81F68FB9A2F8BEC54D3144FBC55329E75EF6C1E0DF0FF551BF
          F6609FDCAE1FF6B8BEDB343478DB3EB1A9B6E925DE03019A82E08DD6D101725F
          35474719BFC0553104EF1C68DF9856CD9BDEE3C8D14CDA2FFE9572EE651D0C3E
          4BC6F58EFA7C5EFF3C479EEBD67A272C691E5FD3C0E06DB7D6DC4FDBF378EF81
          004D42F0462B2507C9E3540B7B8F252704EF1C68BFB0CB1DDEF61E478EA6D77E
          31E02F129AB785D54F4A1AD3541AD37BEAF38FFAE7ED735EF7635A771ED78977
          AC61C1FB01D5BE7CA600F92378A3B59207A62CA65A2E8AAFFBF6BEFC648B28FC
          EC1FC13B07DA25A652F38EF73872349DF68BB752CC7B373527173C96B7359669
          93FE7656F3FBBC3BF0BACC24995396E0FD42145F02E7C9C280FD75C4EED9DDA4
          EF39009542F0062A4207EE1BD5AC12B838C13B077A0D6656F38AF7387234BBF6
          8B9752CCFB1A356B16388EFF3CC25D7DADABE6CF457452E3E07DA3C6BE9AD7D8
          9B26F9057A5ED52C517C7BCCC12ABB55A67D41F445D593DADE599E8C0A042378
          031541F0F6A7D7603E354F7A8F23470B68BF18F016810507EFFF3C6E5CFD2CA1
          E6EE82FA794FFD4C55D0BA0744F0F693DCB16A2D953D5D7325D54251FF7FC1B4
          EBD79F50DDA4BA4EF5576DFFCFBCE781762078031541F0F6A7D7C09E6C7A87F7
          3872B49CF68BDB52CCBBA8E0BD95FA3F3FE9C382E5F505CEF527EAEB9705AEBF
          5F04EFF225F79EB7CBA4B6534D9E61557679D99F54C7D9ED2DBDE78566237803
          1541F0F6A7D7607D35A91E3853131B69BFB83CC5BC8B08DE3F54DF4727EB5F40
          CDA305CF757CF537A6E03EFA44F02E8FB6F5EC517CCFF90DA27CBF9BF3B9EA5C
          D58FD3DE0D08E814C11BA80882B7BF063E32FEE7DA2F7E9662DE76B62FCF4782
          2FA17EEF4DD63D7D145F373FA8C0798E557F45AE7F4004EFE2691BDB6BBCB7AA
          4B3549815DBDAFFAB1EAB75F1292903382375011046F7F7A0DFE1AC5D78A36C5
          DFB45FAC9A62DE8BAB49F584CB14FE7DBBC064BD7636F28B12E669D7E8AE5D42
          3F7D2278174BDB770635F6D79BA54BECD6FAB327A1BEEB3D7F3407C11BA80882
          B73FBD06F605ABF1BDC791A3D467827378808E2D3F51F72FA995B53D3DEF66D2
          6DAE04EF8268DB0E5373956A4E87EE9F51ADA9D7E719EFED80662078031541F0
          F6E7F0D8F4C2A50DA519E7FE82FA99B3C7FA3E5533410953FC587D4F5A423FFD
          22781743DB7559357F514DE1380CBB546A15BD464DBAE3119C10BC818A2078FB
          D2F61F57CD58EF71146002ED1B9FA798BF5D121272E6F8EFAA95D4C717DDD665
          7F9A9FB2A4F9D917E17E55525F7D2278E74FDB74EE28BECBD0F4DE6311BB1FFE
          F034F7C507FA43F0062A82E0ED4BDB7F1735BFF31E4701F6D0BE71528AF9DB99
          C5016F3DD8C3395AF7363DD673A79AA5CA9A5C152E3349E64DF0CE91B6E7346A
          6E570DF11E4B37FF88E2F0FDA9F740505F046FA02208DEBEB4FDED76770B788F
          A3004F68DF983FC5FC3BFD22E4695AEFCE3DD6F150143FBCA42CAF690C3397D8
          5F9F08DEF9D2F6B46BBAD7F11E472F4ED66BB5BBF720505F046FA02208DEBEB4
          FDED91D293798FA300FF795C7B8A6D60FBD0CA297E7473ADF3C21ECB8EB0FF5E
          E6C4AA72B63B993FC13B27DA96B61F8DF01E473FF8BC453082375011046F3FDA
          F676D6F415EF71146836ED1F2FA7DC16031D1426D6BA46F758C66E45B878C973
          FA8DC6B167C97DF689E09D0F6D47FB12E563AA99BCC7D20F1BDF223C661E2108
          DE404510BCFD68DB6FA8E632EF7114E83BDA3F2E49B92D4E51B36B2FFFCB2E43
          99A5E713FDF4F347A939C0614E93692C1F39F4DB2B82773EB41D8F5073A0F738
          52D859AFD969DE8340FD10BC818A2078FBD1B6BF56CD1ADEE32850AA07E974DB
          1EF6E8F5F1BAFDA7515A7E925E7ECE1E337F8DC37C5ED478E670E8B74F04EFEC
          B40D0747F1DD43A6F11E4B0ACFAA86EA751BE33D10D40BC11BA80882B79F26DE
          BFBBA74EAE87D6F6F87614DF3BD93CA51AD6F39684FA197B82E01D559F4B5908
          DED9691BEEA8E60F39AEF27195DD7BFB6DD574AA855579FEC2B6BE5EB73F97B7
          85D004046FA01FC92DADE6514D1EC50F70985835B8A0EEF6550D0D5C96E01D48
          AFB13DE4A50DB7071BAC7DE493B43F9CDC1670562D336B2FFFCFFE9BD7FD8C77
          D498FEE8D4779F32066F0B88C779CFA102F6522D98711D7606FA74D5B1BD3DF0
          46AFD3626A7EACDA380ABB6F7D7717A98FCD3C3614EA8BE00D24F4816C777E58
          5EB5A26A3995DD826D6AEF71A544F00EA4D7FD176A7EEA3D8E121CA97DE44759
          57A2ED65B70B7C30CA1E5A425CAE396CE4D0EF8032066FE4E335D546DA47EE1A
          E807F57A6DA0E65C5596A79EDA978CA7E2BEDEE804C11BADA60FDF09A3F8DADE
          4D55DF898A3B9B5D34827720ED03CFA999D37B1C25F89FC7BA774ADB6A5A356F
          3A8DFF758D7F46A7BE0744F0766797932CAD7DE4E9B40BE835B3132C7689DF04
          19FA5D597DDEEC3D79D407C11BADA40F5CBB7464FB28FEF67C956F5B9516C13B
          80F683416AECF28BF1B2AEAB06C646F1E526033E3EBE37DA56F608F85723A75F
          4EAB785D7777046F77EB6A1FB9BAD385F4BAEDA3E6D80CFD1EA27E7FE13D79D4
          07C11BAD927C6BFE20957DD866F91363D510BC03687FB07B4FDFE33D8E122D9D
          E6CFF03D25F7397F4135C861CC2335E6E51DFAED08C1DB554777EDE94EAFDBF8
          517C5FEE7902FB3E5F7D6FE5BD01501F046FB446724DDFF151332F2B207807D0
          3EF17335077B8FA344BFD47EF2934E16D0369A41CD8B51B63FC7875A4DE3BDD1
          A1DF8E11BC5D7D4FFBC99F4217D66BF733355D818BDFA7BEBFE5BD01501F046F
          345E7296DB1ECA5099A7DC1580E01D40FB865D3AD1844B8DD27A43FBC90C697F
          58DBC7B6CDAB3DFEB37D91EC2AD526058EF35A8D732D87ED138CE0ED6A7AED2F
          C1DF3DD06BB78C9ADB0317AFDC3DE5516D046F349A3E50EDD6541745D96F5155
          7504EF006DB87F774F69AF95D6B6994DCD33AAF17BFCAF9F6A1D8727DF93B854
          15F427FE3ED8653076ADEE5BDEDBA953046F37BD3EDCA9137DFC8299D6BBEABF
          2E77BF420510BCD158FA305D4A8D7DD9A60E4F41CB8AE0DD21ED1F764FF68FBD
          C7E16052ED2BFDCE5BDB661735BFEBE57FFD4ACBFEB8979FFF5514DF8A7378C0
          782C6CDFD8E925305543F076F3BEF69D29B3AC20795E43E82F7B1FA8FF29BC37
          02EA83E08D46D207E97A6A2E88EA7B7BC04E11BC3BA47D643B3567788FC3C14E
          DA574EEFED7F689BCCAB66A4AAB7CB517EA4E58E1C68E55AC7EC517C96DCEE8D
          BE6DF4BFF7FB3E258ABF6B315AEB7BD97B63E485E0ED6AC05F26FBA3D7EE1B6A
          1E085CFC95DE1E3205F485E08DC6D187A83D916C44F4BF7F226F32827787B49F
          5CA66643EF7138B842FBCA86C9369848CDB251FCC0A843FB59A6924F8BAC1282
          B7ABB5B47F5E1BBAB05EBB1FA8392970F147D4F742DE1B00F541F046A3B43474
          1B827787B4AF3CAA6601EF7138B0FB79DBBDCBEDE151696E0F38AFF6AD67BC07
          5D75046F57676A1FDD3E7461BD767F8FE25F3E43FCE71759200D82371AA3C5A1
          DB10BC3BA4FDE5593573798FA3C22E54ED90E54FF86D42F0763546F50DEDAB8F
          75BAA05EB7B5A3F8BB40A18E52BF077A6F00D407C11B8DD0F2D06D08DE1DD23E
          630F8499DD7B1C15747714DF3FFB43EF81D409C1DB9D5DA33DBC935F1493BB99
          D8FE9EE51AED8DD4E7E5DE93477D10BC517B84EE7F23787748FBCDD351F8D3EA
          9AC4BE4C799FEA62ED437FF71E4C5D11BC2BE166D577B41FBF3DD00FEAF59A5B
          CD95AA6119FAB3CBB6A6537FEF7A4F1CF541F046AD9514BAED43F50995DD8161
          7452455847354BE0B204EF0E69DFB147C52FEE3D0E07FFD4BEB298F7209A2663
          F07E25CA76B943536CA49A2EE33AEC29AB3F528DF8B29780933C22DE6E97695F
          26CE7AFFED5BD5C58A1E1B0AF545F0466D151CBAEF579DABFAABDE238F96341F
          3B68873E8C84E0DD216D6FFB32561BEFD4B1B3F695D3BC07D1341983B7DDC77C
          35EF3978CBF8E8F69EEC4489FD3263D77DBF13C5817E11955DD39DD7B31DBEAF
          D7ED0F256F26D41CC11BB55460E8B6C706DB93F96E729813C1BB643CB9127921
          7867A76D38A31AFBEEC504DE6349E17DD5EC7ADD3EF01E08EA85E08DDA292874
          7FA4DA5BF5C72F9DDE1404EFF2699BDB359EEB798FA3447FD67EB2BEF7209A88
          E09D0F6D47FB4BE377BDC791C2617ACD0EF61E04EA87E08D5A292874DB6DE5D6
          D17BE171E7B911BC4BA66D3EA91AFB22561DCEB065F5B96A6AED271F790FA489
          08DEF9D0769C4FCD83AA89BCC7D20FBB7465489A2F71023D11BC511B0585EE87
          556BE87DF05A05E647F076A0ED3E548DEB2F5D2559C0FB97CB262378E747DBF2
          90A8FF27A97ADB45AFD7A9DE83403D11BC510B05856E0B212BEB3DF02FEFF925
          7324783B49EEE76BBF8465BDCB4115D95D798655E197CB262378E747DBD2FE02
          655F70AFE293656F8EE2CFDB2FBC07827A2278A3F2DA10BA937912BC9DE935D8
          53CD71AA71BDC79203FB70DF4775A2D7F716DA84E09D2F6DCF6FAAB1FBCA4FE6
          3D966EDE502DAAD7EA55EF81A0BE08DEA8B4B684EE64AE04EF8AD06BF13D353F
          8FEAF948F96754C7687FF8ADF740DA84E09DBFE471EE57A806798F258A9FDF60
          97258EF41E08EA8DE08DCA6A53E84EE64BF0AE18BD2676B66D61D50EAA6DA36A
          0480DEFC5E75A2EA69ED079F790FA68D08DEC5D076FD3F35A7D83F3A0EC3BE98
          BCA95EA32BBCB707EA8FE08D4A6A5BE84EE64CF0AE38BD469BA89958B5826A43
          D5B425766F81FA25D5F3AA93F47A5FEEBD3DF05F04EFE268DB6EA6E6ACC8E74E
          271FAB36D3EBF317EFED80662078A372DA18BA937913BC6B4AAFDDE46AA68AE2
          A7E3ADACB2C7480F574D19B03AFB93B6BD96F610A75B556FAADEE1411DD546F0
          2E96B6EFF26A2E8BF27BEA641ACF47F199EE7BBDE78FE62078A352DA1ABA93B9
          13BC1B4EAFF16C6A86A8EC16864F47F1F5D8CFF2E5C7FA2378174FDB780E3527
          ABD629A1BB0BA3F8B681EF79CF1BCD42F04665B4397427F32778033545F02E4F
          72C9D709AA590A58FD93AABDF47A5CE33D4F3413C11B95D0F6D09D6C03823750
          5304EF72697BDB772DECD1F23F507D3387553EA43A4A75BE5E8BB1DEF3437311
          BCE18ED0FD9FED40F0066A8AE0ED47DBDEBEECBCA96A25D5B028FD1D501E515D
          AB3A4FDBFF1FDEF3403B10BCE18AD0FDB56D41F0066A8AE05D0D7A1DEC4E43F6
          C5E6F954B347F15D88ECB6A076ADF687AA17554FA81EA8DB3102CD40F0869B82
          42B73DF6DB42E81BDEF30BD81E764DE19A818BAFA9395FE73D07A0ADF4FE5D4B
          CD5F0317BF4EEFDFD0F73E801A2178C30567BA7BDD2617ABD92470F14D34EF4B
          BDE700B495DEBF5BAA392F70F12BF5FEDDC07B0E008A47F046E938D3DD3B6D97
          33D46C17B8F80E9AFB19DE7300DA2A79C2E26F0317BF40EFDF2DBCE700A07804
          6F948A33DD7DD3B6F98D9ADD0317FFB9E6FF33EF39006DA5F76F979AD0F7A03D
          89740FEF3900281EC11BA5E14C77FFB47D0E517368E0E29C31031CE9FD7BB99A
          D0CB457EAAF7EFE1DE7300503C82374A41E81E98B6D1E651BC8D423CA5ED30C4
          7B0E405BE9FDFB9C9A390317DF56EFDFB3BDE700A078046F148ECB4BD2D1765A
          44CD3F33AC62366D8F97BDE701B48DDEBB53A879374A7FFFE89E96D47BF71EEF
          7900281EC11B85E24C777AC993D83E8AC20FDE3B6A9BFCD17B1E40DBE8BDBBA4
          9ABB0217FF4235A5DEBB1F7ACF0340F108DE280CA1BB73DA668FA9993F70711E
          C20138D0FBD61ED8323270F147F5BE1DE63D0700E52078A31084EE30DA6EA7A8
          D93570713B733697B6CF8BDEF300DA44EFDBB9D43C1BB8F8197ACFEEE03D0700
          E5207823775CD31D4EDB6E5335176658C5F1DA46FB78CF03681BBD775F88E247
          94776A73BD67B3BCE701D408C11BB9E24C7736DA7ED3AA795D356EE02A4645F1
          59EFC66F2BA04AF4DEFDA19A233B5CEC15D57C7ABF8EF61E3F807210BC911BCE
          74E743DBF166352B6658C5A9DA5EBB78CF036813BD6F07ABB95BB550078B6DA6
          F7EA45DE6307501E823772C199EEFC685BDAF59EA76758855DEB3D5CDBED4EEF
          B9006DA2F7EE3C6A6E88D2DDCFFB277A8FFED27BCC00CA45F046669CE9CE97B6
          E7E46A5E534D9C61354FABBEA5EDF781F77C8036D1FB770635C7ABEC8158BDDD
          1AF425D55E7A6F5EE63D5600E523782313CE741743DBF51C35DFCBB81A7B5DB6
          FA923739503ABD87E756B3916A5ED554517C3DF7ADAABFE82DF9B9F7F800F820
          78231867BA8BA36D6BF7F57D300AFF92E5570ED7B6FCA9F77C000000C11B8138
          D35D3C6DE32BD4AC9FC3AAF6D3363DD67B3E0000B41DC11B1DE34C7739323E86
          BA27BBCDD9415C760200801F82373AC299EE72697BDB833536CD697517A876E6
          0B970000F8207823354277F9B4CD6755F3986AD29C56F9946A3B6DEFDBBDE706
          0040DB10BC910AA1DB8FB6FD7E6A7E9DE32AED4DFFC728BE8FF0EBDEF30300A0
          2D08DE1810A1DB97B6BF6DF7DB544BE4BC6A7BBCFC69AAE3F43ABCE03D4F0000
          9A8EE08D7E11BAAB41AFC35C6AEE534D59C0EAED4997B7A8FEA4BA5EAFCB8BDE
          F305CAA2F7D6146A8646F167DC6BDAFF9FF51E1380E6227837980E28765DF06C
          51FC04440B6CEFA9DE57BDA5D7FDBD14CB13BA2B44AF873D8CE392A8F7A7E1E5
          C99E7AF94FD5932A0B211FAADEF59E3F90D17851FC39680FB39959B5B06A91E8
          7F1FEF6EBF789EACFA8D3EA7467B0F1A40B310BC1B44C1CC0E22ABAB56542D1A
          C50797BED8C1E591283ED379B5F683877BAC8BD05D417A5D8E5073A0F7388016
          B0CFC70DF579F5B4F740003407C1BBE6923F93EEA2DA56B5608655D9C1E577AA
          D355AB4484EE4AD2EB6D67BBCF88E2D71B40B19E572DC3F30500E485E05D53C9
          652407A976574D9EE3AA3F564D1011BA2B4BAFFD203597A9D6F51E0BD00217E8
          B36B0BEF4100680682770D2597819CA89AC57B2C2910BA0BA07D60B01A7BB80E
          E11B28961D248770C909803C10BC6B24095BC7AB76F61E4B4A84EE022567BEED
          7680DB798F0568B803F5397694F72000D41FC1BB2614B2A65573B56A49EFB1A4
          44E82E4172CDF7E1AA1F45C5DFED0468ABB3F459B69DF72000D41FC1BB0694AD
          EC92921B54F37B8F25254277C9B48F6C18C54FA39CCA7B2C40039DAFCFB3ADBC
          0701A0FE08DE15A74035B59A5B55C3BCC79212A1DB89F69539D55C10D5E7AF22
          405DD8D35DF7F51E0480FA23785758720DEFDF54CB7B8F252542B7B3649FD953
          D5A59ACC7B3C40436CA0CFB52BBD0701A0FE08DE1556B387A510BA2B24B93CE9
          58D566DE63016ACE1E3636AF3EDB3EF71E0880FA2378579482939DE5BE5935AE
          F7585220745794F6A3C5D5FC44B541C4972F814ED90172637DB65DEE3D1000CD
          40F0AEA0E47281FB540B7B8F250542770D689FB27DE900D526AA89BDC703D4C4
          8FF5D9F62BEF4100680E82770529247D5FCDA9DEE348C11E28319CD05D1FDAB7
          ECBA6F0BDFDBA8568CEAF11715A06CAFAAF6D267DBC5DE0301D02C04EF8A5130
          1A4FCD63AAF9BCC792C22BAAB9B8F6B19E923BE6ACA45A45B57214DFAE92208E
          36B203E1E3AABB547F515DA9CFB54FBD0705A07908DE15A330B4BE9A2B725CE5
          27AAE7546FAB2C68CD19E57BA9C116DA872E286D03A130C9935187243554359D
          6AD228BE3BCA9451F66BC4ED969833052EFB88EAB58CFDDBBC660F5CF6C928FE
          925D16732715E2D9A4B2983DD906215E4CB6411633AB160C5CD65EFB4732F66F
          4627F54652362F3BD1F1B83EC73EC861FD00D02F8277C528FC5CA4E63B39ACEA
          6ED591AA6BF41A8FEAB67E0B57AB46F1F5BE2BE4D0CF0D5AFFEA1EDB0AF5A27D
          EF4C35DB062EBE9DF6B3B332F67F9C9ABD0317DF47FD1F9FB1FF2E353F0B5CFC
          50F5DF95B17F9BFB71818B1FAFFEF7C9D8FF766ACE085C9C2747026804827785
          E8C06467A2EDCCF444195663977DD801F6B75F0EF0E2AA3F0B41BFCBD8DF67AA
          E9385B848110BC09DE11C11B40CB11BC2B4407A6D5D45C9F611563A3F8D657A9
          1FF4A03EEDDADE6B55E367E87753BE84848110BC09DE11C11B40CB11BC2B4407
          A69FAB3938C32A0ED6EB795840BFF6A4C31332F47B8CFADDBFE8ED837A237813
          BC2382378096237857880E4C97A8D93870F117544343BE899FDC49E5C128FC8B
          4FD7A9DF35CBD94AA82B8237C13B2278036839827785E8C0F4909A8502173F44
          AFE52F32F4BD979AD060F1B2FA9EADE8ED837A237813BC238237809623785788
          0E4C767BABE902175F42AFE5BD19FAB6DB8C3D11B8F868F5CDD310D12F8237C1
          3B2278036839827785E8C064B7FD1B1CB8F8347A2DDFC9D0B77DB9D2EEF91DFA
          009509D5FF67056F22D418C19BE01D11BC01B41CC1BB427460B25B010E0A5C7C
          A2AC4F5A53FFF66089D05B0B4EAEFE3F2C72FBA0DE08DE04EF88E00DA0E508DE
          15A203D37B6AA6085C7C0EBD96C14FD653DFF664C2770317B79D6890FAFFA2E0
          4D841A237813BC2382378096237857880E4C169C43BFA498E95EDAEA7B8D28BE
          9F77880FD477E82F0C68098237C13B2278036839827785E8C0744B14FE18F711
          7A2DB7CCD0F7EFD5EC1CB8F803EA7B91A2B70FEA8DE04DF08E08DE005A8EE05D
          213A309DA666A7C0C5EDA995DFD4EBF94840BF73AA795C356160DF17A9DFCDCA
          D846A82F8237C13B2278036839827785E8C0B48B9ADF6558C53F55CBE9351DD5
          419F763793EB542B65E8F787EAF3E85236126A8BE04DF08E08DE005A8EE05D21
          19EFA5FD95AB555BE875FD28457F76079333559B67EC7349F5774F291B09B545
          F0267847046F002D47F0AE181D9C9E52336FC6D5D8E526BBEBB5BDB99F7E9651
          73926AB18C7DFD4B35ABFA1A5BE67642FD10BC09DE11C11B40CB11BC2B26E3C1
          B9A73B5557A81E56BDA99A56B5806ABD28FC4B9C3D653E20A31D08DE04EF88E0
          0DA0E508DE15A383D35C6A9E8CC21FA45326DB7916D13EF4A0F740507D046F82
          7744F006D07204EF0AD201EA3C35C1B7062CD155DA7FD6F31E04EA81E04DF08E
          08DE005A8EE05D413A400D53737F54EDB3DEF694CAA5F95225D2227813BC2382
          378096237857940E52C7AAA9F2B5D3A76BDF09BDE7385A88E04DF08E08DE005A
          8EE05D513A484D1EC5F7E59EDB7B2CBD784DF50DED3B6F790F04F541F0267847
          046F002D47F0AE301DA8965033523581F758BAB1DB06AEAEFDE626EF81A05E08
          DEAD0FDE5BAB393B70F173D5FFD659FA07802A2078579C0E563BAAB147C98FE3
          3D96C4BEDA67420FDE68318277EB83F7C66A2E095CFC32F5BF7196FE01A00A08
          DE35A003D64FD41CE63D0EF9B5F69703BC07817A2278B73E78AFA1E6DAC0C5EF
          50FFCB66E91F00AA80E05D133A68FD50CD1191DF99EFC355077FC90E834004EF
          D607EF25D5DC15B8F8BBAA69F8FC01507704EF1AD181EB7B6A4E550D2EB1DB4F
          557B693FF9BDF7FC516F04EFD6076F7B72EE9B1956B190C6F048963100803782
          77CDE8E0B5909A0B540B96D0DDD3AA2DB48FFCC37BDEA83F8277BB83773286B7
          D54C1DB8F8011AC3AFB38E01003C11BC6B4807AF09D5ECA7B26BBF272EA08B4F
          5447A98ED0FE31DA7BBE68068237C15B63B84D4DE8B5DA0F680C8B641D030078
          2278D7980E6233A9D957B58B6AB21C56392A8AEFA0728CF68B97BCE787662178
          13BC358623D5FC30C32A56D538FE96751C00E085E0DD00C9C37636526DA55A41
          3551078BDB35DC7616EA7CD525DA1FDEF59E0F9A89E04DF0D618D65673758655
          D867D5F27CC912405D11BC1B4607360BDD76F780C5544354B3AB2689E233E21F
          256567B39F52DD1FC5B7E9E27212148EE04DF04E4E12D8172CB33C146C278DE5
          F4AC6301000F046F00A5A840F0B6EF2D84DE877E37F5FFDB8CFD7745BEC17B37
          3527072E7E94FA3F304BFFDDC671999A0D33ACC24E1E2CA1F13C9EC77800A04C
          046F00A5A840F0B633B6C7062EBE91FABF3C63FF5D916FF0B6CBD12E0D5C3CF3
          19FF6EE3F88E9A8B32AEE659D5721AD36B798C0900CA42F006508A0A04EFC5D5
          DC13B0E858D54CEA3FCB3DA8AB10BC6750F3AA6ADC80C517CFEBB6A2C9E57076
          B9DBB41957F570147FD9F28D3CC605006520780328450582B73DF5F501D5C21D
          2E7AA5FADE2087F977458EC13B19C39FD5ACDBE162B6CD16CDF30B8D1AC7C16A
          7E9EC3AA08DF006A85E00DA014DEC13B19C36A6AAE8DD29FF5B55B6CDAD9DEC7
          72E8BB2BF20FDEC3A2F8AC7FDAA7DF7EA15A3DEF5BF8691CF6109DE7A37C6E83
          4AF806501B046F00A5A842F04EC661F7BEB727208E33C08F7EAEDA4AFD5E9C53
          BF5D9173F04EC6B1999A7355E30FF0A37670D837AF6BBB7B19C7A16A0EC96975
          846F00B540F006508AAA04EF642C9BAA395135631F3F62B7DBFCBEFABC25C73E
          BBA20A04EF642C2BA9F9836A9E3E7EC4BEB4B8675EBF74F431063BEBFEA86ACE
          9C5649F8065079046F00A5A852F04EC663F7B7B7B3BF6B44F1FDEEEDB28AA755
          7F515DAEFE3ECFB9BFAEA822C13B198FDD4BDBEE74620FB5993B8A2FBF795175
          9DEA42F5F7719EFDF53186F5D55C91E32A09DF002A8DE00DA014550BDE0EF3EF
          8A2A14BCAB42DBC51E86B3438EABB4FB7BAFC2AD06015411C11B402908DE04EF
          DE24B717BC53F5CD1C574BF8065049046F00A5207813BCFBA26DB3809A91AAA9
          735C2D979D00A81C8237805210BC09DEFDD1F6594ACD8DAA49725C2D67BE0154
          0AC11B402908DE04EF81681BADA7E69268E05B1D768233DF002A83E00DA01404
          6F82771ADA4EEB4471F89E30C7D572E61B402510BC019482E04DF04E8BF00DA0
          A908DE004A41F026787782F00DA08908DE004A41F02678778AF00DA06908DE00
          4A41F0267887207C0368128237805210BC09DEA108DF009A82E00DA014046F82
          7716846F004D40F006500A8237C13B2BC23780BA2378032805C19BE09D07C237
          803A2378032805C19BE09D17C23780BA2278032805C19BE09D27C237803A2278
          032805C19BE09D37C23780BA2178032805C19BE05D04C237803A2178032805C1
          9BE05D9402C3F7CADAEEFFF29E1F80E62078032805C19BE05D24C237803A2078
          032805C19BE05D34C23780AA2378032805C19BE05D06C237802A2378032805C1
          9BE05D16C23780AA2278032805C19BE05D26C237802A2278032805C19BE05D36
          C23780AA2178032805C19BE0ED81F00DA04A08DE000AA5E033A39A5D54BBABA6
          0D5CCD23AAE354E7E9336BB4F79C02B7435744F076A16DBFB19A11AAF1735CED
          C3AA55F5BABCE13D3F00F541F0065008859D216ABA549BA826C869B56FAB4E55
          1DA9CFAEF7BDE7D8E1F6B06D41F07642F8065005046F00B952C0B160B36F1487
          EE890AEAC6FEC47FA03EBFCEF69E6F07DBC5B607C1DB11979D00F046F006901B
          059B45D59CAF1A5A529757A9B6D5E7D83BDE731F08C1BB1A38F30DC013C11B40
          2E1468D65473A16AF292BB7E5AB58E3ECB9EF4DE06FD2178570767BE01782178
          03C84C41E6076A4E508DE734843755EBEBF3EC4EEF6DD1178277B570E61B8007
          8237804C1460B650739EFDA3F3503E500DD767DAC3DEDBA43704EFEAE1CC3780
          B211BC01045370595ECDF551BEC1258BE7554BEB73ED75EF81F444F0AE26C237
          803211BC010451609953CDBDAA69BCC7D2C3EDAA15F5D936C67B20DD11BCAB8B
          CB4E009485E00D2088C2CA9FD5ACEB3D8E3EECA7CFB663BD07D11DC1BBDA38F3
          0DA00C046F001D5348D9348AEF605255A354C3F4F9F6BCF740BE42F0AE3EC237
          80A211BC017444E164123576EBBE99BDC732804BF4F9F61DEF417C85E05D0F05
          5E76B28A5EC337BDE707C017C11B4047144C7655738AF73852B00FB7F9AB727F
          6F82777D70E61B405108DE003AA250F2909A85725EED87AA41AAC139AFF7787D
          C6ED53CA861900C1BB5E38F30DA008046F00A9298CACA4E6A61C5665771C3937
          8A1F2F7F9B3E873E4ED63FBD9AD5553BAA56CEA19FF754B37EB57E4F04EFFAA9
          52F8D65826D0329F796F1300D910BC01A4A683BF5D62B26BC6D5DCAFDA529F3D
          8F0FD0D77A6ACE544D9DB1BF4DD4D7A5A56DA4BEE7D31511BC6BA7CCF09D7C7F
          6249D572AA6555B345F1ED3AA749FAB75F20DF8AE227B53EAA1A99D4E35F7230
          076A81E00D2035058347D42C98611576B67CBDB467A0D5DF7C6A6E55CD98A1CF
          13D5DF5EE56DA53EE7D21511BC6BA9C8F0AD7A5BB5AA6A17D5FA817DBCA2FAA3
          EA34ED272FF96E2D00FD2178034825B90CC4BE1816FA68F8E755DFD267CE3B1D
          F66B67FE2C7C8F17D8EF03EA7391B2B6533FF3E88A08DEB55550F8B62FFEDA7E
          3D4F4EEB1BABBA5AF553ED2F0F95BB8500A441F006908A82C7466AB25CB2B185
          3E6F2E08ECFB34353B05F6FB856A6AF5FD7EC19B68A039744504EF5A2B287C17
          C1BE43F11B5597F69B0FBC0703E0BF08DE005251E83850CD11818BDB9FBFE708
          BD0E557DCFAFE6B10CC35F5C5DFFA3E04D34D01CBA228277EDD5287C9B5755DB
          69DFB9DE7B200062046F00A92870D819B4DD0317FFAD3E6B76CBD8FF136A8604
          2EBEA1FABFA2C8ED9362FC5D11C1BB116A16BEEDF29383B4FF1CED3D1000046F
          0029296C9CA166BBC0C5F7D267CD8919FBB7E0BC7EE0E25BABFF730BDC3C69C6
          DF1511BC1BA366E1DB1CABDA9FBB9F00BE08DE005251D0F8939AAD0217DF469F
          35E764EC3F4BF0DF49FD9F5EE0E64933FEAE88E0DD28350CDFBFD47EF413EF41
          006D46F006904AC62F38EEA7CF9A6333F66F776B583B7071BB6FF88822B74F8A
          F1774504EFC6A961F8DE4DFBD26FBD0701B415C11B402A0A18169C431FBF7EA6
          3E6BB6CFD0B7DDC2F085287EA0488875D5FFD5056FA281E6D01511BC1BA966E1
          DB9E7E395CFBD3BDDE0301DA88E00D2015858BBDD51C17B8B83D696F167DDE7C
          1ED8F7E26AEEC930FC85D5F7C3056FA281E6D01511BC1BAB66E1FB69D537B44F
          8DF61E08D036046F00A928587C5BCD5F32ACE207FABC3925B0EFCBD46C18D8AF
          DDC77B12F5FD49C19B68A039744504EF46D36BBC8E9A4B54137A8F2505F629C0
          01C11B402A0A153345F17D8143BDA55A429F39CF77D86FD607F73CA23E172A7E
          0B0D388FAE88E0DD78353AF36D67BB8768BF7AD97B20409B10BC01A4A650610F
          B1993FC32AEC31D66BEA73E7B594FD2DA7E6AFAA4933F4F91BF5B767795BA9CF
          B9744504EFC6D3EB3C899A575453788F2585E3B45FEDEB3D08A04D08DE005253
          A838414DD6106B67D8ECF67ED7F6D38F9D2DB487F5D8933227C8D89FFB172B93
          39754504EFC6D3EBBCA39A3FE4BC5A3B50DB19EA89735EEF47AA59B56FBD5FC6
          B60140F006D001858A25D5DC95D3EA6E8DE23FC98F54D919700BDB73A8D6506D
          A39A27873E327DA9334F04EF76D0EB7CB79A25725895FD75C96EFB677FF1795E
          AFFF18AD7B32FDF352AA4D547697A03CAE25DF41EB3EC36B7B016D43F006D011
          1DFCEDEE20C3BCC791D209FA8CDBDB7B1086E0DD7C7A8D1754F348C6D5D8EDFE
          F6579DA2D77C6C3F7DD92FA967AB56C8D8DF75EA67CD523714D062046F001DD1
          01DFCE469FE53D8E14EC2CF77CFA8C7BC17B2086E0DD7C7A8DFF2F8ACF5287B2
          3BEF7C5BAFF5CD29FBB3BF12D9136137CFD8E754DE77FD01DA82E00DA0233AD8
          0F52F37894CFA520453A4D9F6F3B7B0FE22B04EFE6D36B6C21F87B1956B19D5E
          E78E7EA9559F83D5FC5DF5AD0CFDAEA47E6F29611301AD47F006D0B1E47EC557
          798FA31FEFAAE6D7E7DB1BDE03F90AC1BBF9F41A3FAB66AEC0C56FD56BBC6260
          BFCBA8B93DC3D0F756DF2714BD7D0010BC0104D2C1FEE228FE925715FD9F3EDB
          7EEF3D88EE08DECD96FC25C8AECF1E277015EBE9350EFE6556FDDB9795970F5C
          FC64F5BD7BC19B084044F006104807FAA9D5DC17C57722A9924BF5B956B95F08
          08DECDA6D7770635FF0A5C7C946ADA2C8F7057FF07A8392A70F12BD5F706056F
          220011C11B4006C9ED056F8AF2BFBF7028BB05DBB2FA5C7BCF7B203D11BC9B2D
          E31D4D323F5D35E3E55F37A9FF558ADC3E0062046F0099E880BFB69ACB23FF47
          64DB837986EB33ED45EF6DD21B8277B365BCCE7AA45EDFD0CB44F2E8FF4EF5BF
          4C91DB07408CE00D20331DF4375473BE6A22A7213C17C58FA27FCA7B5BF485E0
          DD6C19CF783FA6D777C18CFDAFA7E6CAC0C5FFA6FE572D72FB008811BC01E442
          077E7B90877DE172BA92BBBE47B5813ECB5EF3DE06FD2178379B5EDFE9D5BC1E
          B8F8A7AA69F41A7F9CA1FF9FA8392C70F1CBD5F746056F220011C11B408E74F0
          9F45CD7951F6A7E9A5611F5EBF511DA0CFB1CFBCE73E108277B3E57057934DF4
          1A5F9AA1FFBBD42C19B8F889EA7BAF8237118088E00D20670A00E3AAD94575B8
          6AAA82BAB13FE9FFA04E0FFD2078375FC6FB78DB5F6E96FA32E0A0AC7EED3291
          1B320C7D0F757B52099B08683D82378042280C4CAB661F95DD1F78F29C56FB8C
          EA57AAB3F5D9F5B9F71C3BDC1E5D11C1BBD1F41A9FAD66EB0CABD853AFF36F3A
          EC73323576B67B810CFDDA9792B33C8007404A046F008552309842CD66AA6D54
          CBAAC6ED7015768F63BB4D9A3D8EFB1A7D668DF19E53E076E88A08DE8DA6D7D8
          FED2F3BB0CABB07DDB2E3949F52549F567B7F1BC48B576863EEDFD35551D2ED7
          029A80E00DA034C94377ECB1D84BAB86AA86A8EC8CDD24C98FBCAF7A47F584EA
          51D5DFA3F856679F7A8F3D87B9774504EF46FBFFF6CE2F4496EC2CE0A7FAC64D
          82CA5E0366EF207227A21014DD992C2A3EEDF8A42FBA93DC090851B6F360105F
          7616258A1A184D10D4C84E100415D9D90745706E7616451FD3C9531E74BB1350
          1F026E4709773748763688647677AAFC4E57CDDEBE73BBBAEB747DE79CAAD3BF
          1F9CADFD73B7EA9C53A7BB7F75EA3BDF917BFC4153E6926F432EE5D352FE68D9
          863A72AD9F90C30B52765A5EEF1FE53ABF10B4A3003618C41B00200088F76620
          F7F9CB72F86985537D43CA5F4BF9272953533E946E55E7B63BB37EC4B8BF3D5A
          C4C7646CFD6D94CE02D840106F00800020DE9B81DCE7A11C9E8F5D8F86BC2EE5
          07DBA431040037106F00800020DE9B81DCE7F79A7217D5F7C5AE4B033E23E3EA
          53B12B01B04920DE00000140BC3707B9D7BF6DCAEC3B5DE6DB527E44C6D53763
          5704609340BC01000280786F0E72AF1F91C3C4B44BF1E79BDF9431F5A7B12B01
          B06920DE00000140BC370B854D6D7CF255293F490A4180F020DE00000140BC37
          0FB9E77F29875F8D5D8F6BD8859456BADBA63D04803540BC01000280786F1E72
          CFDF23872F4AF9A9D875A9B03FF8BF4CFA40807820DE0000011009FB3D536E8C
          B20E9F92EFEACFC46E03B823F7FDFBE5F025291F8C5D17E193328EFE24762500
          3619C41B00200022609F90C35FACF9BF7F42BEABFF2A761B603DE4DEFF801CFE
          59CA8F47AA82FDA1FF5D19435DCFB402903C883700400044BE9E90C3BFACF9BF
          7F48BEABC7B1DB00EB23F7FFA61C5E94B217F8D217527E4DC6CF49EC3E0000C4
          1B002008225E991CFEDDB8871CFC877C4FFF68ECFA437B6408BCCB9471FEBF63
          74B67B5FC5D7A4FC928C9F9763B71D004A106F0080408878ED9B72D6D3855F94
          EFE97F885D77D043C6C1CFC8E1CFA43CE1E912364DE0B1944FCBD8F9DFD8ED05
          80FB20DE00000111E9FAAC1C7EA3E11FFF63F98EFEADD875067D641CD819EF5F
          91F249295A6F34DE92F23752FE50C6CDD762B711001E06F10600088C489795AD
          3F90F2EE9A3FF21D536632F96CECBA825F2A01FF39291F93F29494EF59E334FF
          26E5EFA4BC2063E6BF63B70900EA41BC01002220C2755B0EBF2EE5E7A5FC50F5
          AFFFD394D92FFE5CBE9BFF2B761D212C55DE6F9BF3FB49293F26E587A56C9952
          C6DF2BC5868DFC8F143B36EC8CF697A57C49C6CA2BB1EB0E00CD40BC01002220
          926567BB6D9AB9F749794FF5AFED4CF7B7A47C43BE9B2F62D711C252CD7E7FAF
          149B01E5BB4D29DB8F48B961CAC59897A60C27B163E3FFA47C5BCA1B3256BE13
          BBEE00D00CC41B0000000020008837000000004000106F00000000800020DE00
          000000000140BC012AAA2C13DB4AA73B97CFD65762B709000000BA03E29D2822
          918F9B72653C3CC854C6FCD717FD07E933BB95F391D27546729D9F8DDDD83EA3
          3C866BEF7B2A487F3D2A871DC5534EA4CFDEB8FA87ADBB2FDF36836C3B763B5D
          B9783B9F7CEBA34FBCD1FE4C0000ED41BC13457E84BF2087BDD8F5E8204732E6
          7F7FD17F40BCBB85F218AEBDEFA920FD65733F8F144FB9277DF6C5AB7FD8BA3B
          96CF477614BB9DAD288AA9C9CCB4FC7B33CD8D397BED60F7A5D8D50280CD01F1
          4E14C4BB16C4BB2720DE6E20DEEB216D3CCF44C09170000801E29D2888772D88
          774F40BCDD40BCDB7325E1F2CB7874EFCE87920E4D02803820DE898278D78278
          F704C4DB0DC45B8F998067E6F822CF8F890F07004D10EF4441BC6B41BC7B02E2
          ED06E2ED011B132E63E7DEC1EE0BB1AB0200698078270AE25D0BE2DD13106F37
          106F9F14A38B3CDF67F61B00DA8278270AE25D0BE2DD13106F37106FBF485F4C
          DE2CF23DE41B00DA8078270AE25D0BE2DD13106F37106FFF20DF00D016C43B51
          10EF5A10EF9E8078BB81788701F906803620DE898278D78278F704C4DB0DC43B
          1CC83700AC0BE29D2888772D88774F40BCDD40BC43538CEEDDD9E5330E004E20
          DE898278D78278F704C4DB0DC43B02453124D52000B88078270AE25D0BE2DD13
          106F3710EFF0D88D76DE2CF26D424E00A0298877A220DEB520DE3D01F17603F1
          8E44519CDC3BD8FD78EC6A00403F40BC1305F1AE05F1EE0988B71B88774406C5
          DEBD0FEF7EB1FD8900207510EF4441BC6B41BC7B02E2ED06E21D13165A024033
          10EF4441BC6B5926DE4FCB61A8749D895CE7D9D88DED3388B71B88776498F506
          800620DE89E241BC27520E63B74B81A98CF9AFC7AE04AC06F176A397E2AD2CAB
          5B2F8E9FBCFAFBFCD2DCCCA40D596676A4DE7BAAF55E08B3DE00B01AC43B513C
          8837A1131014C4DB0DC47B395BA7E3A7E5D7EE50FA69C7DB4598F506801520DE
          89827843DF41BCDD40BC9B6167C58B4B7326FD7553FFECCC7A03C07210EF4441
          BCA1EF20DE6E20DECD79DFDFFFEBA38F6483919FD9EF7CFBDE9D0F11CE06000B
          41BC1305F186BE8378BB8178BBB3753A7E5E3A6EA87A5276B304802520DE8982
          7843DF41BCDD40BCD7E3D6E9F845E9BB7DB513B2A10E002C01F14E14C41BAE23
          63E2B61CB697FC914E657C4951BC2B39BECEB9D4ED2B4AE71E29567723C45B3D
          ECA428A622DE1F88D9A6F9EC2E8B88DDE731D9BAFBF26D33C8B69BFCD94DEE27
          F007E29D2888F7E622F7FE2953DE7B3B8BB7DDE2543685E448CAD9BC80056C47
          2FC5BB7AC0D9AF8A65DB34BF0FE752CEA41CBBCA38E2BD3EEFFFFCF8F11B4536
          D13BA3FF386F2B90B9C9F6B3C2A64C5C7FC65EEEB11D73A3CC8EBBCC2E0E4D23
          3EFDB1D3F15303F90C8AE1ECB75B485B8C6CFF9881197561AC42FF41BC1305F1
          76A712973DA5D3D9D9E320719E73A2B767EECB9E36B31F67534AE128C4CC789F
          C45BEAFAA8B92FDB5AF7C08AE0B1291F7CDE685007C4BB05AAEDF314E76D6572
          969BDC8EB12CDBF6D10F72CF670FDCD90D73D6957BD304FBE6E2DDD96026DA66
          96BFDD47D69A590F8D72F94CBE95E727DFFAE8132B3F9700D741BC1305F176A7
          6F5BC6573B6DDAFA6E7BED989AF64939F1F970D107F1963A3E6ECA8DA5EC8FBD
          A71FFAD943CF49D586DA1F7AC4BB1D33711BDC38D7395B7174EFCEAECA789B85
          4614D2EFDA8B409BB4A29C0D3FC9B2E2B8AB33E1F66DC5203747AA71FA0D91FE
          3913833A79ED60F7A5D8FD00FD01F14E14C4DB9D3E88F7DCCCAAADE776A8BE59
          82FD61B642F8390F6DEDB4782B8F9726D899C8615D080AE2DD9E5BA7E3B14AAC
          B7C202CB98C25DD3A89194615704BC7C501A1CAA8FC975288A699E99E3D7EEEC
          AA7F0F427A20DE898278BBD365F1AE84FBB02ABE66565BB5D7D878CA0621110E
          6DEEA47857B3DC2752FCED80584FED830EE2DD1EBD36AEBF914EF7847BAE5545
          719EC97750EC7489B3C5A397F219F4146EB33EDD7A38816E8278270AE2ED4E57
          C5BB12BD91E9A670CF63A5704F234347D5EECE89778459EE3A6CACFD70FE4107
          F16ECF6C415E969DB53FD37AE26DB7B5971B7912BB1F56372F4ECAC42A03CD49
          8CB092A6D88713B1AA21E1275007E29D2888B73B5D14EF1E49F7156AF2DD25F1
          AEDE388C4C9C59EE3A1E186388777BD4B29BAC9152B037D27DBF8D41E5DBCE72
          1797E6CCDFA2495D6CFCF79B453E6401265C07F14E14C4DB9DAE89779516F0C4
          F447BAAF5091EF8E89F7F372186A75902236EDE0B3551D116F05B6EE4E547E14
          EFDDD9C99A5FD343DF8620907C3F7677FCCCC064C7B19BEB8ACD1023F2BD877C
          C33C8877A220DEEE7449BCAB8C2527B1FBA405ADE5BB2BE22DF578C69469FDBA
          8A0D397901F16ECF2C7638CF461AE76A2ADE5EB6AD0F8967F9BE753A7E4EC6F6
          61EC66AE0BF20DD741BC1305F176A72BE29D80745FD14ABEBB20DED55B078598
          5FEFD81018FB6664A478CECD136FAD708F86A126BD97EEFBEDF522DF9A0F4231
          41BE611EC43B51106F77BA20DE1E662D6363E57B679D0D77628B77CFE2EB6D3F
          0F8DEE43C2268AB79208AF5E5CD9DBF092BA1617C5F1AB07BBCF6A9DAFDA1067
          D2BDCC25EB817CC3158877A220DEEEC416EF6A074ABBB0AB0FA2E782DD68C779
          362CA67877743165683651BC5FD111BDE5E2AD973DA56BE4DB5AA9F4FA1E62B2
          08BBE0521E4E3E1CBB1E1017C43B51106F77628AF70688DE0312D784C8E2DD95
          B48131D928F19EE5CF3683A9CAC996845E543B2D8EFA929DC3B1E16BE72F9F27
          95109345E445B14FAAC1CD06F14E14C4DB9DC8E2FDA22977A44C9589F4C7AECB
          FF104BBCAB1093F629E5FACF4689F7ADD3F18B7AF9A1176F199F5AF8C422DA8A
          65F27D5414D38B22DF21E4647341BC1305F1762796786FD0ECEA2CFB46D33F1C
          51BCB53F3B7D6563C45B3BF4A34E3EA50F656C657BB1DBEB95357298CF93CC82
          D32568C7C343BF40BC13C5833C4C4DBF326D8CD6086D082EDE555CF734407FD8
          6B8C4CB9F8EEFCDA7FDB36E558B1B37D3E5F7FDBEB6E37DD563E8678F7207560
          483642BC6D8849516413CDD08F8BFCF2E6F519CD701BE414A35C3EE783C1C36F
          6DF2DCEC0C669F73DFF2BF78C67F15A162DFEDEE9259B6E8AD56C087A20E8C7D
          8803E29D28CCDAAD95C5228678FBDE986596ED42EAD2E8D56F804D7B62CD3CAF
          BC6E15673FF5D8F6EBD81FFE5592611F8662C5FD6F8478DF3A1D8FE5DEABF5B1
          CD5EF1EAC1EE4361557A0B376BAFDB78A744DF5BAF5BB195BA6CBB845354759A
          FA8C7DAF84FBF822CF8FEBEA6663F0B3DC6C67F29DA1392E16D48585961B0AE2
          9D288877F7C53B80E88DA4EC379D619EAB979D85B742E8E347E75CEAF37D0DEB
          115ABC43CC768F4CF960336A9A62B11A275690868AFDD184A4C5DB977C2E0A23
          F0B958702693C61CDE3BD86D1CC67585CF1D2173531CBE7667F7735DA84BD54F
          C7F23070E4F23060EB94153301F7F41DAD970506FA03E29D2888772FC4DBD746
          39E755FB1BFFE805E88F79F69BCCC04710EFB1F137BBAC754FECC3C19109332B
          9FAC78DB900691D5131F42B528BEDB5FDC723192326C236F55969513EDD9DDBA
          99FF3ABCBD11288AA9B96186EB8EB3EA01EDC8476A43D787134803C43B5110EF
          5E88F72BA68CAFD6A4F556EDD7EA6837F4B1B3DF9A827226F55BF98A35A4787B
          8EB5B72125FBEB6C22B4A4AEBEDE48CC939C789729036D9CB5BF58DEEBF1DDAA
          690AE751DC2DB2CA2472ACFD707099153BDFFCC8EECAEF222BFF378A4C3D9390
          4BF8CD2A7CC4E8BB3E9C401A20DE898278775BBC3DED50A92ADD7375F5915E6F
          7B958806166F9F6F1F1A2F286D4AA05D3593126FFF610366A10C7BE9374F5BB4
          EBA6546C5E4F1F6F04D689335F858F7098A60F27900E8877A220DE9D176F1F79
          BB77B4A57BAEBEDA62DA24F423A478FBB81F5E1E84E6EAECE3E16D9EDE8AB78D
          A9CE2FCDCD4CDA9065F6CD40A86C150FC7EC8ACCBEAE2BFB3A9BD42CA20AAB18
          69859D34955FFD3EF217C6A11F12B35E0618E82F8877A220DE9D17EFD78DEE6C
          E55ADBB2BBA02CA753A9EFD25CBFA1C4BB5ABC78EE78BE2638E52D5F07CF39E0
          FD8B774A2C98DDF51242E1F92D817A9D8B62B86CE1A79F348BFE1E4EF4EBEBAF
          AED04D10EF4441BCBB2BDEB14237DA52C516DB7A6B3D302CDD463EA078DB148A
          DAB9839D77EA5C07CF9971106F271E9EEDD60F4D082369B74EC7CFE92D265C5E
          67F5F096197EB38568CED0DBB702AF1EEC36CAF404698078270AE2DD69F1D64E
          5BD768B1A206CA7D742CF5AEDDBD2DA0783F2707ED8C054B1F2A34F138EB8D78
          37A52696595B2A4365C1D0CEA9BD6843A1B93E520D3309B12BA4764CFAB2FE81
          F440BC1305F1EEB4786BC7131FB64D53D714E5D9FA55E138A1C45BFBB31264B6
          7BAEFEBE66BD11EF06949BB2143B8B6658B5A532E4423CD587869AF018ED8C2F
          3E16542E427D87CD0E6C2405E140BC1305F1EEB4786BC7777B5B54E9B9FE4B37
          D30928DEDA5F82CE63AF2D9E764045BC1BB178719C76AC74E89004CD3099BA99
          7A7581F594ED6511BA0F552CB0DC2410EF4441BCBB29DE1EE2BB1BEF04A985F2
          D8BA59976A2F84787BCA0C12F441A86A878F3875C47B05CBF2306BC77787DE62
          5CF3C1A12EFC437B4C85DC90A6ACBBDAF7D308F1DE1C10EF4441BC3B2BDEBD8D
          EF9E6B83663FD5C64207126FEDFBB1325B8B0F3C656641BC57B12444A0AFF1DD
          D7DAA034ABBB7881A58CA92F68A67A242736F401C43B5110EFCE8AB7F642B860
          F1DD736DD09C5DADAD7F20F1D68EB70FFE2034D716EDCF3CE2BD84558BF85290
          4AAD8787BA3019ED18F87B7776B290FD03B00E8877A220DE9D156FED0C1A31C2
          1A34B757AFCD6C1248BCB53F27C1E3BBE7DAA23DB610EF1A9ACC3E8B548E3537
          A28991724E335CE67AE60E1F0B2B49CB077D00F14E14C4BBB3E2BDE9F7E53ACB
          16A1F651BCF7E53A2F697752133C84CD20DED798653091879B651BC25CB17577
          C28FEB3CD7C272ECEEA226CF467A1760231AE8078877A2207888774FA85D1CDA
          53F10EFE0662AE2DDA0B4511EF39AC74E703B3D734DC03F17E90EB6F09106FD8
          5410EF44F120144B732EA700E21D07E9A785719981C47B2C07957080656D0981
          87059688F73B14A38B3CDF77C90F8D785FE7C194791EB2BE78DF38074003C43B
          51106F770289B7AAE825C2C2948281C45BF50B30A6787B680FE25D1453F9EB51
          93D09279ECCE8FEF1EDCD0CE32D36BAE8BB1FE78221736F403C43B51106F7702
          89371FB88759985210F17647DAF38A1CB6954EB7B1E25DEE46698E2FF2FC789D
          5D10F5C32852E0C150903EE7F0066803E29D2888B73B8877345211EFA05BC52F
          42B9CF364FBCCB19EE91FC321E2DDA02BE2988F722FC8A37DBAE435F40BC1305
          F17607F18E462AE21DFD338278AF4331CA6DFEF5CC8CB4F26423DE8BB826DEA7
          E3E765C00ED54E8F78434F40BC1305F17607F18EC6C24D74106F77A43DCFCB61
          A874BA64C4BB0A1DB9DAFE7C64FF921766F256918FD609255905E2FD30D7F36C
          6B6F309417C5FE6B07BB51527902B88078270AE2ED0E8B2BA31122D55FDD3534
          63A2A37F4694C7B07FF14E749692C5958B99DF59525BBC595C097D01F14E14C4
          DB1DD2094623A6786B5E23FA6704F1EE0EA4137C18C41B00F14E16C4DB1DC43B
          1A0BB78DEFA178D76E06148ADEC57823DE1BC5FCB6F1EA31DE8837F404C43B51
          106F7710EF6884E8AB203B5776209D20E2DD1110EF05CCDD6FEDF12463F5ECD5
          83DD0FC76E22C02A10EF4441BCDD0924DE2FCA615FE91A875226ADCF129FF345
          DBAC07126FCD7BDE05F1EE571EEF84C5FBD6E9F875B91F37554E26FD14BB3D1A
          5CBC9D4FDE99F1D6DF40872DE3A11720DE898278BB1348BC35AF31946B38EDA8
          D727FA28DEC2CEA2878850F46EE7CA84C55B378639DF6E9357BC8B20DEB0A920
          DE898278BBD343F15E2893A9D053F15E981A3104D296C78DEE1B10C4BB05AAE2
          9D603F6D9D8E9F96417BA2753E19AB93570F76A36E6005D004C43B51106F7702
          89F7D3723851BAC6895CE3E3617A273C81C45BF37E58A2DD1369CB537238533C
          25E2DD02D5C5834531BC77B09BD4DB2D1FB9CEE7B3A6007415C43B51106F7702
          89B7E6AC64D2F72490783F69AA0D559498CA753EE0BF771EC6C3EC3DE2DD82C7
          EE8E9F1998EC58E76CE965ECF021DEF3595300BA0AE29D2888B73B21C4BBBACE
          EB72D0597425E791EB24F9431348BCB5C3332CDB72ADE0F1B8CA0B772D88770B
          DEFFF9F1E3378A4C656CA51A46A19DF925E4EE95E51B0D9D85CCA261F6FE3EDB
          FE4CD00710EF4441BCDD0928DE9AF726D9059621C4BBBA8EE6839065615E729F
          481B1E95C354B91D88774B74C532BD0596B74EC76319BB6A3BF9CA783D0E21B0
          FA3B93A6F74603EA41BC1305F17627A0786B5EE74CAE9364EEDA80E2FDBC1C86
          8A550FBE918E8730130BE2DD12CD0596B9290E5FBBB31B65E1AE2FB437D109F5
          66E0B1D3F153832CD35B4F91F8E7001E04F14E14C4DB9D80E2ADBD082E4A6883
          6F028AB7F6FDB0047B13E169B6DB8278B7E4D6E9F839B93F872A272B8AE9BD83
          DD28EB077CA19DD9A4C4FF9B01ED070616856E168877A220DEEE04146F2B4A8A
          AF29D3CC6E1250BCB5EF87656ACA9CDEDEE3EF3DCD765B10EF96A8CF8C2696DD
          44330EFE1D8AE244FAC8EBF7A188F72BF2C1DB56AA30F9C7370CC43B51106F77
          428977752DCD1D062DC166BDAB457C5AB3ABE775A132A1C47BAE4D9A0B132DDE
          63BD3DCE765B10EF966CDD7DF9B63472AA76C280B3DEE54383D199AD3776E1A3
          395EB4F0517B816575356FB3DEFAD95888EFDE3410EF4441BCDD092CDEDA71C5
          4162BDA5DECFC8412945DA8C6533D121C55BBB5D573C20AFDA787A60585877C4
          7B3D746747C3C47ACF160F66838956BD651C9DBF59E4DB8B52FDE9EEF0F9CE05
          BDCC7A6BF78BE5322B76BEF991DD68BBDD427810EF4441BCDD092CDE3ED2D879
          DD3551EA7CBBAAB3E6EC6A6D3AC4C0E26DDB36556CD715F69C5E424E3CE420BF
          0EE2AD806E3EEF12DFB2A61A9B6E96671BF113E7EDA78FB41F12524D1309CB41
          BC1305F17627A47857D71BCB412D9556C5BE5CD74B1E5B0FB3AB4B63D3438A77
          753D1FF7C332916BABFEB8560B424F8C9F10932B106F05F453CF9533C89988A5
          8F700A2F71D74B423F6CFF3C920DA632A655C7B295DA378B7C4F6B431DED0595
          5525938AD9876620DE898278BB1341BCB5B72BB7D81FF8A1B67C7B088DB12C8D
          4B8F20DECFC9416D96EF1A6A0B603D2EA6BC0EE2AD840F69D3164B8B95EE416E
          46AA12DC20ECC38BD456D7BE28F2C3B67DE4E3ADC5B2F01B481BC43B51106F77
          428B77754DEDCD5BAEB09914866D431CAAC57B23A33F13BC52442388B7AF7093
          2BEC2CA2BD276BBDFEAEC2934E8C9F59F94520DE4AF8994536B3C5969703B3AF
          1152E145BA67AC5EE8E8AD7F4CF9809265C5FE3A6F07CA7AD9B51FCA31E826DC
          663FD03D10EF4441BCDD8924DE3E6759EDECF7D13A71DF9570EF5775F3217A2B
          B3B08416EFEA9A3E66F61FAA8B291F3C1A8940F54030346166B9E741BC15D1DE
          A5F18A32ECC4CA6171B28E5CDACC2BB9C9F6B3C21CA94BB7C322475FFD73D547
          45668E06A6386BD247D522CA632FB3F0EF90DE4EA4D00CC43B51106F772289B7
          EF59D6595D4C39037ED640766DECF07E557CC50F370ABB8824DEBE172CCE63AF
          7362CAFB3FB97A3B513DF4EC546568C2CD705F07F156C4D722C20710D195BF8E
          2E8AFC6C5908432596FBF2EBBF2FE3CD57561CE3229741FA67D645C5993CA84C
          CC40FAE9ED7C72D54F577D62ECB82FFBC5DBFA0966BB371BC43B51106F776288
          77755D9FB3DED79956C5BED6BD5AF0752579DB81EAD028E7780CF1F670DD3E83
          782BE37356F73A6588C5EC333E9AFBD7724FCD8E4FA99CAB80734ABF90FD138D
          A298CA83D10EB1DD9B0BE29D2888B73B11C5DB571C751769BCC830A278FB48F5
          D847106F65FCC5517711F7508A4DE81FF27603E29D2888B73BB1C4BBBAF626C8
          9E6DDF5ED3059FB1C4BBBA76A8CC215D06F1F6808F0C195DA3CD263F69F70FBB
          5402E29D2C88B73B31C5DBC3F5BB867DE5BDE792D123A67857D7F795D7BB2F20
          DE9EF0B25B635750D83532C5FE61B31CB802F14E14C4DB9DD8E25DD521C5F862
          67E9F6D017EB88B77D0B31327E37A9D1E65CB1BE88B7277C6D1A131BADDCE2C9
          F50F71DD3007E29D2888B73B1D116F1FDBB2C7C6E6AE76DE9D2DB6785775E893
          7CDB05BAB3AC0C4AE743BC3DF2D8E9F8A941969DC5AE8716DA1BC2A4D23FB65F
          F281D923AE1BAE40BC1305F176A70BE25DD5C3CAB7FDC14921CC612DE9AEFA21
          BA7857F5E8837CCF16AD2AF719E2ED99AD17C74F1697E6ACEF33BBBEE432548A
          415F20DDB008C43B51106F77BA22DE555D6CA6132BDF7BB1FBA5056B4B77D507
          9D10EFAA2E5D966F9B037CB7AA27E2DD3366BB23E6F259CFB2EDD8755907DF72
          D96BF92E8AE1BD83DDB5BF03214D10EF4441BCDDE99278CFD529C44E8ADAAC15
          D3BDA0ED9D11EFAA3E5D4CFB38B5F599DB7C07F1EE21554CF3A86F39ACB562BA
          57D13BF92E8AA9B961868C6D5804E29D2888B73B5D14EFAA5ECFC8A12FE9B5A6
          52F6DB4A77D5EE4E89F75CBDBAF230F4D0030EE2DD5FC26C53AE4931BAC8F3FD
          500B06FB23DFC591F4CB310B29A10EC43B51106F77BA2ADE55DD6E57751B06EF
          986658093C6C135AB2A0CD9D14EFAA6E4F9BF2612856E8C9C29CE88877FFB171
          DF26B79FF56EA6D39BED8879C31CC6B86FDDEE9B622465E8BA69106C1E8877A2
          20DEEE7459BCE7EAD83501B7C26D05F4B8E9C6380E6DEDAC7857F5B3A1273693
          C891E6791B60FBFAD99A3A21DE89D039C9B4E11332D6BB10B33C9BFDB69FBB2E
          C4C577A85FA01F20DE898278BBD307F19EAB6B6C019F9A52B84FB4857BAE8D9D
          16EFB97A86BA172BDF2A20DEE9115FC08B9129CC4917C5D2EE729915E6284E56
          18E997810837E3171C41BC1345BE889E33BA8BC02675B36CA950850F0C954E17
          A4BF2AE9DB33E5BDBE3AFAC4665AB1B2FD5280B6698EE113CD30989AFADA19F0
          A12967C1B7154F3DB5F5AFDAB0F435B6729F1DCEC78F9731B6BA0F1797993924
          D55A336CF61391CCBD41517DD63DCEF6DA4C25997CD62F07E6B8EBF7C7C6C67F
          D760301CCC72D8077838298A933EF40B7417C41B20212AF9DB33F7457CAFC5E9
          A655199932A678B24AFCA044EEC393E67EFFEFAD710A3BBB6D1F728E3516AA42
          7A6CDD7DF9B629B2BDA2FAACB7C98862E3B6E530CD32F99C0FCCE8E2ED7CD2C7
          C5813309CF067B56C2A55FF63566C2ABBE196537CC19B3DBA001E20DB0215432
          68B13F468B7EA4A755B14C7C85906C22551EF03D53F6FDA2FE1FCD1FE7433C00
          5C98654779D7A01C5F9766DB640FBF7DC90B3319DC983DDC999465729623BD98
          EDE62A9F2973531E2C76AABFDF7958CAEDE2C8D97F9BC89F3BB77DF456918FFA
          F80002DD06F106000000000800E20D000000001000C41B000000002000883700
          0000004000106F00000000800020DE00000000000140BC010000000002807803
          000000000400F106000000000800E20D000000001000C41B0000000020008837
          000000004000106F00000000800020DE00000000000140BC0100000000028078
          03000000000400F106000000000800E20D000000001000C41B00000000200088
          37000000004000106F000000008000FC3F4323FF21702A0ECB0000000049454E
          44AE426082}
        mmHeight = 29894
        mmLeft = 529
        mmTop = 528
        mmWidth = 39688
        BandType = 0
        LayerName = BandLayer19
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer19
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 528
        mmLeft = 1312
        mmTop = 30954
        mmWidth = 196353
        BandType = 0
        LayerName = BandLayer19
      end
      object ppLabel215: TppLabel
        DesignLayer = ppDesignLayer19
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Sa'#237'da de Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 41744
        mmTop = 24871
        mmWidth = 46162
        BandType = 0
        LayerName = BandLayer19
      end
      object ppShape244: TppShape
        DesignLayer = ppDesignLayer19
        UserName = 'Shape244'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5284
        mmLeft = 794
        mmTop = 32052
        mmWidth = 71707
        BandType = 0
        LayerName = BandLayer19
      end
      object ppLabel263: TppLabel
        DesignLayer = ppDesignLayer19
        UserName = 'Label263'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Alimento'
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
        mmLeft = 529
        mmTop = 32317
        mmWidth = 71710
        BandType = 0
        LayerName = BandLayer19
      end
      object ppShape223: TppShape
        DesignLayer = ppDesignLayer19
        UserName = 'Shape223'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5284
        mmLeft = 73300
        mmTop = 32015
        mmWidth = 19806
        BandType = 0
        LayerName = BandLayer19
      end
      object ppLabel234: TppLabel
        DesignLayer = ppDesignLayer19
        UserName = 'Label234'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data'
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
        mmLeft = 73035
        mmTop = 32279
        mmWidth = 19541
        BandType = 0
        LayerName = BandLayer19
      end
      object ppShape224: TppShape
        DesignLayer = ppDesignLayer19
        UserName = 'Shape224'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5284
        mmLeft = 93669
        mmTop = 32015
        mmWidth = 40123
        BandType = 0
        LayerName = BandLayer19
      end
      object ppLabel264: TppLabel
        DesignLayer = ppDesignLayer19
        UserName = 'Label264'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Centro de Custo'
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
        mmLeft = 93405
        mmTop = 32279
        mmWidth = 39858
        BandType = 0
        LayerName = BandLayer19
      end
      object ppShape225: TppShape
        DesignLayer = ppDesignLayer19
        UserName = 'Shape225'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5284
        mmLeft = 134228
        mmTop = 32015
        mmWidth = 37913
        BandType = 0
        LayerName = BandLayer19
      end
      object ppLabel265: TppLabel
        DesignLayer = ppDesignLayer19
        UserName = 'Label265'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Tipo de Baixa'
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
        mmLeft = 133963
        mmTop = 32279
        mmWidth = 37648
        BandType = 0
        LayerName = BandLayer19
      end
      object ppShape226: TppShape
        DesignLayer = ppDesignLayer19
        UserName = 'Shape226'
        Brush.Color = clMenu
        Pen.Style = psClear
        mmHeight = 5284
        mmLeft = 172491
        mmTop = 32015
        mmWidth = 24653
        BandType = 0
        LayerName = BandLayer19
      end
      object ppLabel266: TppLabel
        DesignLayer = ppDesignLayer19
        UserName = 'Label266'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Qtde. Baixada'
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
        mmLeft = 172226
        mmTop = 32279
        mmWidth = 24388
        BandType = 0
        LayerName = BandLayer19
      end
    end
    object ppDetailBand19: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      ColumnBalancing = True
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBText144: TppDBText
        DesignLayer = ppDesignLayer19
        UserName = 'DBText144'
        Border.mmPadding = 0
        DataField = 'INSUMO'
        DataPipeline = ppDBEstoqueAtual
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBEstoqueAtual'
        mmHeight = 4763
        mmLeft = 597
        mmTop = 44
        mmWidth = 71845
        BandType = 4
        LayerName = BandLayer19
      end
      object ppDBText145: TppDBText
        DesignLayer = ppDesignLayer19
        UserName = 'DBText145'
        Border.mmPadding = 0
        DataField = 'DATA'
        DataPipeline = ppDBEstoqueAtual
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBEstoqueAtual'
        mmHeight = 4763
        mmLeft = 73233
        mmTop = 45
        mmWidth = 19794
        BandType = 4
        LayerName = BandLayer19
      end
      object ppDBText173: TppDBText
        DesignLayer = ppDesignLayer19
        UserName = 'DBText173'
        Border.mmPadding = 0
        DataField = 'CENTROCUSTO'
        DataPipeline = ppDBEstoqueAtual
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBEstoqueAtual'
        mmHeight = 4763
        mmLeft = 93799
        mmTop = 45
        mmWidth = 39733
        BandType = 4
        LayerName = BandLayer19
      end
      object ppDBText174: TppDBText
        DesignLayer = ppDesignLayer19
        UserName = 'DBText174'
        Border.mmPadding = 0
        DataField = 'TIPO_BAIXA_STR'
        DataPipeline = ppDBEstoqueAtual
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBEstoqueAtual'
        mmHeight = 4763
        mmLeft = 134195
        mmTop = 265
        mmWidth = 37282
        BandType = 4
        LayerName = BandLayer19
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer19
        UserName = 'Line43'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1203
        mmLeft = 529
        mmTop = 5413
        mmWidth = 197238
        BandType = 4
        LayerName = BandLayer19
      end
      object ppDBText178: TppDBText
        DesignLayer = ppDesignLayer19
        UserName = 'DBText178'
        Border.mmPadding = 0
        DataField = 'QTD_KG'
        DataPipeline = ppDBEstoqueAtual
        DisplayFormat = '####,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBEstoqueAtual'
        mmHeight = 4763
        mmLeft = 172426
        mmTop = 265
        mmWidth = 24022
        BandType = 4
        LayerName = BandLayer19
      end
    end
    object ppFooterBand19: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppLabel233: TppLabel
        DesignLayer = ppDesignLayer19
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'comercial@fieldtec.agr.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 794
        mmWidth = 32809
        BandType = 8
        LayerName = BandLayer19
      end
      object ppSystemVariable37: TppSystemVariable
        DesignLayer = ppDesignLayer19
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 159544
        mmTop = 529
        mmWidth = 17463
        BandType = 8
        LayerName = BandLayer19
      end
      object ppSystemVariable38: TppSystemVariable
        DesignLayer = ppDesignLayer19
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = BandLayer19
      end
    end
    object ppSummaryBand14: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppShape237: TppShape
        DesignLayer = ppDesignLayer19
        UserName = 'Shape237'
        mmHeight = 5821
        mmLeft = 172466
        mmTop = 0
        mmWidth = 24753
        BandType = 7
        LayerName = BandLayer19
      end
      object ppDBCalc60: TppDBCalc
        DesignLayer = ppDesignLayer19
        UserName = 'DBCalc60'
        Border.mmPadding = 0
        DataField = 'QTD_KG'
        DataPipeline = ppDBEstoqueAtual
        DisplayFormat = '####,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEstoqueAtual'
        mmHeight = 4940
        mmLeft = 172731
        mmTop = 529
        mmWidth = 24133
        BandType = 7
        LayerName = BandLayer19
      end
    end
    object ppDesignLayers19: TppDesignLayers
      object ppDesignLayer19: TppDesignLayer
        UserName = 'BandLayer19'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList19: TppParameterList
    end
  end
  object ppDBEstoqueAtual: TppDBPipeline
    DataSource = dsEstoqueAtual
    UserName = 'ppDBEstoqueAtual'
    Left = 768
    Top = 88
    object ppDBEstoqueAtualppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField2: TppField
      FieldAlias = 'ID_PRODUTO'
      FieldName = 'ID_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField3: TppField
      FieldAlias = 'ID_ALIMENTO'
      FieldName = 'ID_ALIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField4: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField5: TppField
      FieldAlias = 'QTD_KG'
      FieldName = 'QTD_KG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField6: TppField
      FieldAlias = 'TIPO_BAIXA'
      FieldName = 'TIPO_BAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField7: TppField
      FieldAlias = 'ID_USUARIO'
      FieldName = 'ID_USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField8: TppField
      FieldAlias = 'DATAREG'
      FieldName = 'DATAREG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField9: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField10: TppField
      FieldAlias = 'ID_CENTRO_CUSTO'
      FieldName = 'ID_CENTRO_CUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField11: TppField
      FieldAlias = 'ID_PROPRIEDADE'
      FieldName = 'ID_PROPRIEDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField12: TppField
      FieldAlias = 'ID_USUARIO_ALTERACAO'
      FieldName = 'ID_USUARIO_ALTERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField13: TppField
      FieldAlias = 'DATA_ALTERACAO'
      FieldName = 'DATA_ALTERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField14: TppField
      FieldAlias = 'TIPO_BAIXA_STR'
      FieldName = 'TIPO_BAIXA_STR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField15: TppField
      FieldAlias = 'INSUMO'
      FieldName = 'INSUMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField16: TppField
      FieldAlias = 'CENTROCUSTO'
      FieldName = 'CENTROCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField17: TppField
      FieldAlias = 'VALOR_KG'
      FieldName = 'VALOR_KG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField18: TppField
      FieldAlias = 'CUSTO_TOTAL'
      FieldName = 'CUSTO_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueAtualppField19: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object ResumoContrato: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT '
      ' TOTAL_ANIMAIS,'
      
        ' (SELECT count(*) FROM ANIMAL  WHERE STATUS >-1 AND ID_CONTRATO ' +
        '=:id) ANIMAI_VINCULADOS'
      'FROM CONTRATO_COMPRA_ANIMAL'
      'WHERE id=:id')
    Left = 616
    Top = 392
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object TContratoAtualizaValores: TFDQuery
    CachedUpdates = True
    Connection = serviceDB.FCon
    SQL.Strings = (
      'select y.*,w.qtd totalanimais,w.peso totalpeso,'
      'VALOR_TOTAL VALOR_CABECA'
      'from'
      '(SELECT'
      ' C.*,'
      ' CASE '
      '   WHEN C.TIPO_CONTRATO=0 THEN '#39'Compra'#39
      '   WHEN C.TIPO_CONTRATO=1 THEN '#39'Parceria'#39
      '   WHEN C.TIPO_CONTRATO=2 THEN '#39'Boitel'#39
      ' END TIPO_CONTRATO_STR,'
      ' CASE'
      '  WHEN C.STATUS=1 THEN '#39'Aberto'#39
      '  WHEN C.STATUS=2 THEN '#39'Finalizado'#39
      ' END STATUS_str,'
      ' CASE'
      '  WHEN C.TIPO_VALOR=0 THEN '#39'Por @'#39
      '  WHEN C.TIPO_VALOR=1 THEN '#39'Por Cabe'#231'a'#39
      '  WHEN C.TIPO_VALOR=2 THEN '#39'Rateio por Peso'#39
      ' END TIPO_VALOR_STR,'
      ' PO.NOME PRODUTOR_ORIGEM,'
      ' PRO.NOME PROPRIEDADE_ORIGEM,'
      ' PD.NOME PRODUTOR_DESTINO,'
      ' PRD.NOME PROPRIEDADE_DESTINO'
      'FROM CONTRATO_COMPRA_ANIMAL C'
      'JOIN PRODUTORES PO ON PO.ID=C.ID_PRODUTOR_ORIGEM'
      'JOIN PROPRIEDADES PRO ON PRO.ID=PO.ID_PROPRIEDADE'
      'JOIN PRODUTORES PD ON PD.ID=C.ID_PRODUTOR_DESTINO'
      'JOIN PROPRIEDADES PRD ON PRD.ID=PD.ID_PROPRIEDADE'
      'WHERE C.ID=:ID)y'
      'left join'
      '(select id_contrato,count(*)qtd,sum(peso_entrada) peso'
      'from animal where status>-1'
      'and id_contrato is not null'
      'group by id_contrato)w'
      'on y.id=w.id_contrato')
    Left = 656
    Top = 72
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object TContratoAtualizaValoresID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TContratoAtualizaValoresNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object TContratoAtualizaValoresID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
      Required = True
    end
    object TContratoAtualizaValoresID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
      Required = True
    end
    object TContratoAtualizaValoresID_PRODUTOR_DESTINO: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO'
      Origin = 'ID_PRODUTOR_DESTINO'
      Required = True
    end
    object TContratoAtualizaValoresTOTAL_ANIMAIS: TIntegerField
      FieldName = 'TOTAL_ANIMAIS'
      Origin = 'TOTAL_ANIMAIS'
      Required = True
    end
    object TContratoAtualizaValoresTIPO_VALOR: TIntegerField
      FieldName = 'TIPO_VALOR'
      Origin = 'TIPO_VALOR'
      Required = True
    end
    object TContratoAtualizaValoresVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object TContratoAtualizaValoresTIPO_CONTRATO: TIntegerField
      FieldName = 'TIPO_CONTRATO'
      Origin = 'TIPO_CONTRATO'
      Required = True
    end
    object TContratoAtualizaValoresDATA_INICIO_CONTRATO: TDateField
      FieldName = 'DATA_INICIO_CONTRATO'
      Origin = 'DATA_INICIO_CONTRATO'
      Required = True
    end
    object TContratoAtualizaValoresDATA_FIM_CONTRATO: TDateField
      FieldName = 'DATA_FIM_CONTRATO'
      Origin = 'DATA_FIM_CONTRATO'
    end
    object TContratoAtualizaValoresSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object TContratoAtualizaValoresID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object TContratoAtualizaValoresDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
      Required = True
    end
    object TContratoAtualizaValoresID_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_USUARIO_ALTERACAO'
      Origin = 'ID_USUARIO_ALTERACAO'
    end
    object TContratoAtualizaValoresDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object TContratoAtualizaValoresPESO_TOTAL_ORIGEM: TFMTBCDField
      FieldName = 'PESO_TOTAL_ORIGEM'
      Origin = 'PESO_TOTAL_ORIGEM'
      Precision = 18
      Size = 2
    end
    object TContratoAtualizaValoresNAVIO: TStringField
      FieldName = 'NAVIO'
      Origin = 'NAVIO'
      Size = 100
    end
    object TContratoAtualizaValoresCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Origin = 'COMPRADOR'
      Size = 100
    end
    object TContratoAtualizaValoresCOMISSAO_TOTAL: TFMTBCDField
      FieldName = 'COMISSAO_TOTAL'
      Origin = 'COMISSAO_TOTAL'
      Precision = 18
      Size = 2
    end
    object TContratoAtualizaValoresFRETE_TOTAL: TFMTBCDField
      FieldName = 'FRETE_TOTAL'
      Origin = 'FRETE_TOTAL'
      Precision = 18
      Size = 2
    end
    object TContratoAtualizaValoresRENDIMENTO_COMPRA: TFMTBCDField
      FieldName = 'RENDIMENTO_COMPRA'
      Origin = 'RENDIMENTO_COMPRA'
      Precision = 18
      Size = 2
    end
    object TContratoAtualizaValoresPESO_BALANCAO_DESTINO: TFMTBCDField
      FieldName = 'PESO_BALANCAO_DESTINO'
      Origin = 'PESO_BALANCAO_DESTINO'
      Precision = 18
      Size = 2
    end
    object TContratoAtualizaValoresKM_RODADO: TFMTBCDField
      FieldName = 'KM_RODADO'
      Origin = 'KM_RODADO'
      Precision = 18
      Size = 2
    end
    object TContratoAtualizaValoresTIPO_CONTRATO_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_CONTRATO_STR'
      Origin = 'TIPO_CONTRATO_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object TContratoAtualizaValoresSTATUS_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_STR'
      Origin = 'STATUS_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object TContratoAtualizaValoresTIPO_VALOR_STR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_VALOR_STR'
      Origin = 'TIPO_VALOR_STR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object TContratoAtualizaValoresPRODUTOR_ORIGEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOR_ORIGEM'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TContratoAtualizaValoresPROPRIEDADE_ORIGEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIEDADE_ORIGEM'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TContratoAtualizaValoresPRODUTOR_DESTINO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOR_DESTINO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TContratoAtualizaValoresPROPRIEDADE_DESTINO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIEDADE_DESTINO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TContratoAtualizaValoresTOTALANIMAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALANIMAIS'
      Origin = 'TOTALANIMAIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object TContratoAtualizaValoresTOTALPESO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALPESO'
      Origin = 'TOTALPESO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object TContratoAtualizaValoresVALOR_CABECA: TFMTBCDField
      FieldName = 'VALOR_CABECA'
      Origin = 'VALOR_TOTAL'
      ProviderFlags = []
      Required = True
      Precision = 18
      Size = 2
    end
  end
end
