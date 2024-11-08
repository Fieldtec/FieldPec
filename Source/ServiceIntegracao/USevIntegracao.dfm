object srvIntegracao: TsrvIntegracao
  OldCreateOrder = False
  Height = 323
  Width = 566
  object FDConTGC: TFDConnection
    Params.Strings = (
      'Database=F:\FieldPec\Db\TGC\BKP\DB_TGC_GALERINHA_2018.fdb'
      'Password=masterkey'
      'User_Name=SYSDBA'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'F:\FieldPec\fbclient_32.dll'
    Left = 65
    Top = 79
  end
  object LotesField: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      
        'SELECT b.ID,b.CODIGO curral,count(*) qtdCab,avg(a.PESO_ESTIMADO)' +
        ' FROM ANIMAL a'
      'JOIN CURRAIS b ON a.ID_LOCAL=b.ID'
      'WHERE a.status=1 and a.ID_PROPRIEDADE=2'
      'AND b.TIPO=1 AND FLAG_SYNC_TERCEIROS=0'
      'GROUP BY b.ID,b.CODIGO'
      'order by b.CODIGO')
    Left = 272
    Top = 104
    object LotesFieldID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LotesFieldCURRAL: TStringField
      FieldName = 'CURRAL'
      Origin = 'CURRAL'
      Size = 100
    end
    object LotesFieldQTDCAB: TIntegerField
      FieldName = 'QTDCAB'
      Origin = 'QTDCAB'
      Required = True
    end
    object LotesFieldAVG: TFMTBCDField
      FieldName = 'AVG'
      Origin = '"AVG"'
      Precision = 18
      Size = 2
    end
  end
  object LotesTGC: TFDQuery
    Connection = FDConTGC
    SQL.Strings = (
      'SELECT '
      ' B.CC_CODIGO idCurral,'
      ' B.CC_NOME Curral,'
      ' A.CLL_CODNOME Lote,'
      ' A.CLL_QTDECAB QtdCabeca'
      'FROM CAD_LOTE A '
      'JOIN CAD_CURRAL B ON A.CLL_CODCURRAL=B.CC_CODIGO'
      'WHERE CLL_STATUS='#39'A'#39' '
      'ORDER BY B.CC_LINHA,B.CC_NUMERO')
    Left = 272
    Top = 162
    object LotesTGCCURRAL: TStringField
      FieldName = 'CURRAL'
      Origin = 'CURRAL'
      Size = 21
    end
    object LotesTGCLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
    end
    object LotesTGCQTDCABECA: TIntegerField
      FieldName = 'QTDCABECA'
      Origin = 'QTDCABECA'
    end
    object LotesTGCIDCURRAL: TIntegerField
      FieldName = 'IDCURRAL'
      Origin = 'IDCURRAL'
      Required = True
    end
  end
  object CurraisTGC: TFDQuery
    Connection = FDConTGC
    SQL.Strings = (
      'SELECT * FROM CAD_CURRAL'
      'WHERE CC_STATUS='#39'ATIVO'#39)
    Left = 352
    Top = 160
    object CurraisTGCCC_CODIGO: TIntegerField
      FieldName = 'CC_CODIGO'
      Origin = 'CC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CurraisTGCCC_CODCONFINAMENTO: TIntegerField
      FieldName = 'CC_CODCONFINAMENTO'
      Origin = 'CC_CODCONFINAMENTO'
      Required = True
    end
    object CurraisTGCCC_LINHA: TStringField
      FieldName = 'CC_LINHA'
      Origin = 'CC_LINHA'
      Size = 10
    end
    object CurraisTGCCC_NUMERO: TStringField
      FieldName = 'CC_NUMERO'
      Origin = 'CC_NUMERO'
      Size = 10
    end
    object CurraisTGCCC_AREA: TFMTBCDField
      FieldName = 'CC_AREA'
      Origin = 'CC_AREA'
      Precision = 18
      Size = 2
    end
    object CurraisTGCCC_LINHACOCHO: TFMTBCDField
      FieldName = 'CC_LINHACOCHO'
      Origin = 'CC_LINHACOCHO'
      Precision = 18
      Size = 2
    end
    object CurraisTGCCC_LOTAMAX: TIntegerField
      FieldName = 'CC_LOTAMAX'
      Origin = 'CC_LOTAMAX'
    end
    object CurraisTGCCC_LOTAMIN: TIntegerField
      FieldName = 'CC_LOTAMIN'
      Origin = 'CC_LOTAMIN'
    end
    object CurraisTGCCC_VOLUMEAGUA: TIntegerField
      FieldName = 'CC_VOLUMEAGUA'
      Origin = 'CC_VOLUMEAGUA'
    end
    object CurraisTGCCC_OBS: TMemoField
      FieldName = 'CC_OBS'
      Origin = 'CC_OBS'
      BlobType = ftMemo
    end
    object CurraisTGCCC_STATUS: TStringField
      FieldName = 'CC_STATUS'
      Origin = 'CC_STATUS'
      Size = 80
    end
    object CurraisTGCCC_HOSPITAL: TStringField
      FieldName = 'CC_HOSPITAL'
      Origin = 'CC_HOSPITAL'
      FixedChar = True
      Size = 1
    end
    object CurraisTGCCC_TAG: TStringField
      FieldName = 'CC_TAG'
      Origin = 'CC_TAG'
      Size = 100
    end
    object CurraisTGCCC_NOME: TStringField
      FieldName = 'CC_NOME'
      Origin = 'CC_NOME'
      Size = 21
    end
    object CurraisTGCCC_COR: TStringField
      FieldName = 'CC_COR'
      Origin = 'CC_COR'
      Size = 50
    end
    object CurraisTGCCC_ORDEM: TIntegerField
      FieldName = 'CC_ORDEM'
      Origin = 'CC_ORDEM'
    end
    object CurraisTGCCC_AREACAB: TFMTBCDField
      FieldName = 'CC_AREACAB'
      Origin = 'CC_AREACAB'
      Precision = 18
      Size = 2
    end
    object CurraisTGCCC_AREACABCOCHO: TFMTBCDField
      FieldName = 'CC_AREACABCOCHO'
      Origin = 'CC_AREACABCOCHO'
      Precision = 18
      Size = 2
    end
    object CurraisTGCCC_SETOR: TStringField
      FieldName = 'CC_SETOR'
      Origin = 'CC_SETOR'
    end
    object CurraisTGCCC_TIPO: TStringField
      FieldName = 'CC_TIPO'
      Origin = 'CC_TIPO'
    end
    object CurraisTGCCC_PESO_MIN: TFloatField
      FieldName = 'CC_PESO_MIN'
      Origin = 'CC_PESO_MIN'
    end
    object CurraisTGCCC_PESO_MAX: TFloatField
      FieldName = 'CC_PESO_MAX'
      Origin = 'CC_PESO_MAX'
    end
    object CurraisTGCCC_LOTADO: TStringField
      FieldName = 'CC_LOTADO'
      Origin = 'CC_LOTADO'
      FixedChar = True
      Size = 1
    end
    object CurraisTGCCC_TAG_INICIAL: TStringField
      FieldName = 'CC_TAG_INICIAL'
      Origin = 'CC_TAG_INICIAL'
      Size = 100
    end
    object CurraisTGCCC_TAG_FINAL: TStringField
      FieldName = 'CC_TAG_FINAL'
      Origin = 'CC_TAG_FINAL'
      Size = 100
    end
    object CurraisTGCCC_ID_HERANCA: TIntegerField
      FieldName = 'CC_ID_HERANCA'
      Origin = 'CC_ID_HERANCA'
    end
    object CurraisTGCCC_NOME_HERANCA: TStringField
      FieldName = 'CC_NOME_HERANCA'
      Origin = 'CC_NOME_HERANCA'
      Size = 10
    end
    object CurraisTGCCC_FLAG_COCHO_COMP: TIntegerField
      FieldName = 'CC_FLAG_COCHO_COMP'
      Origin = 'CC_FLAG_COCHO_COMP'
    end
    object CurraisTGCSYNC_ECO_DATA: TSQLTimeStampField
      FieldName = 'SYNC_ECO_DATA'
      Origin = 'SYNC_ECO_DATA'
    end
    object CurraisTGCSYNC_ECO: TStringField
      FieldName = 'SYNC_ECO'
      Origin = 'SYNC_ECO'
      FixedChar = True
      Size = 1
    end
  end
  object LoteManejoTGC: TFDQuery
    Connection = FDConTGC
    SQL.Strings = (
      'SELECT * FROM CAD_LOTE '
      'WHERE CLL_STATUS='#39'A'#39)
    Left = 360
    Top = 216
    object LoteManejoTGCCLL_CODNOME: TIntegerField
      FieldName = 'CLL_CODNOME'
      Origin = 'CLL_CODNOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LoteManejoTGCCLL_CODRACA: TIntegerField
      FieldName = 'CLL_CODRACA'
      Origin = 'CLL_CODRACA'
      Required = True
    end
    object LoteManejoTGCCLL_CODCATEGORIA: TIntegerField
      FieldName = 'CLL_CODCATEGORIA'
      Origin = 'CLL_CODCATEGORIA'
      Required = True
    end
    object LoteManejoTGCCLL_CODCURRAL: TIntegerField
      FieldName = 'CLL_CODCURRAL'
      Origin = 'CLL_CODCURRAL'
      Required = True
    end
    object LoteManejoTGCCLL_NUMCONTRATO: TStringField
      FieldName = 'CLL_NUMCONTRATO'
      Origin = 'CLL_NUMCONTRATO'
    end
    object LoteManejoTGCCLL_REBANHO: TStringField
      FieldName = 'CLL_REBANHO'
      Origin = 'CLL_REBANHO'
      Size = 5
    end
    object LoteManejoTGCCLL_DESTINO: TStringField
      FieldName = 'CLL_DESTINO'
      Origin = 'CLL_DESTINO'
    end
    object LoteManejoTGCCLL_TIPO: TStringField
      FieldName = 'CLL_TIPO'
      Origin = 'CLL_TIPO'
    end
    object LoteManejoTGCCLL_STATUS: TStringField
      FieldName = 'CLL_STATUS'
      Origin = 'CLL_STATUS'
      FixedChar = True
      Size = 1
    end
    object LoteManejoTGCCLL_DATAFIM: TDateField
      FieldName = 'CLL_DATAFIM'
      Origin = 'CLL_DATAFIM'
    end
    object LoteManejoTGCCLL_OBS: TMemoField
      FieldName = 'CLL_OBS'
      Origin = 'CLL_OBS'
      BlobType = ftMemo
    end
    object LoteManejoTGCCLL_IMG: TBlobField
      FieldName = 'CLL_IMG'
      Origin = 'CLL_IMG'
    end
    object LoteManejoTGCCLL_PESOABATE: TFMTBCDField
      FieldName = 'CLL_PESOABATE'
      Origin = 'CLL_PESOABATE'
      Precision = 18
      Size = 2
    end
    object LoteManejoTGCCLL_DATAREG: TDateField
      FieldName = 'CLL_DATAREG'
      Origin = 'CLL_DATAREG'
    end
    object LoteManejoTGCCLL_AVISOLEITURA: TMemoField
      FieldName = 'CLL_AVISOLEITURA'
      Origin = 'CLL_AVISOLEITURA'
      BlobType = ftMemo
    end
    object LoteManejoTGCCLL_FRAME: TStringField
      FieldName = 'CLL_FRAME'
      Origin = 'CLL_FRAME'
      Size = 5
    end
    object LoteManejoTGCCLL_QTDECAB: TIntegerField
      FieldName = 'CLL_QTDECAB'
      Origin = 'CLL_QTDECAB'
    end
    object LoteManejoTGCCLL_PESOMIN: TFMTBCDField
      FieldName = 'CLL_PESOMIN'
      Origin = 'CLL_PESOMIN'
      Precision = 18
      Size = 2
    end
    object LoteManejoTGCCLL_PESOMAX: TFMTBCDField
      FieldName = 'CLL_PESOMAX'
      Origin = 'CLL_PESOMAX'
      Precision = 18
      Size = 2
    end
    object LoteManejoTGCCLL_IMS_PV: TFMTBCDField
      FieldName = 'CLL_IMS_PV'
      Origin = 'CLL_IMS_PV'
      Precision = 18
      Size = 2
    end
    object LoteManejoTGCCLL_FLAG_TRATO: TStringField
      FieldName = 'CLL_FLAG_TRATO'
      Origin = 'CLL_FLAG_TRATO'
      FixedChar = True
      Size = 1
    end
    object LoteManejoTGCCLL_CUSTOFIXO: TBCDField
      FieldName = 'CLL_CUSTOFIXO'
      Origin = 'CLL_CUSTOFIXO'
      Precision = 18
    end
    object LoteManejoTGCCLL_DIASCONFINAM: TIntegerField
      FieldName = 'CLL_DIASCONFINAM'
      Origin = 'CLL_DIASCONFINAM'
    end
    object LoteManejoTGCCLL_MEDIALOTE: TFMTBCDField
      FieldName = 'CLL_MEDIALOTE'
      Origin = 'CLL_MEDIALOTE'
      Precision = 18
      Size = 2
    end
    object LoteManejoTGCCLL_CODCONFINAMENTO: TIntegerField
      FieldName = 'CLL_CODCONFINAMENTO'
      Origin = 'CLL_CODCONFINAMENTO'
      Required = True
    end
    object LoteManejoTGCCLL_GIRO: TIntegerField
      FieldName = 'CLL_GIRO'
      Origin = 'CLL_GIRO'
    end
    object LoteManejoTGCCLL_FLAG_CFLOTE: TStringField
      FieldName = 'CLL_FLAG_CFLOTE'
      Origin = 'CLL_FLAG_CFLOTE'
      FixedChar = True
      Size = 1
    end
    object LoteManejoTGCCLL_CARIMBO: TStringField
      FieldName = 'CLL_CARIMBO'
      Origin = 'CLL_CARIMBO'
      Size = 50
    end
    object LoteManejoTGCCLL_ORDEM_ABATE: TIntegerField
      FieldName = 'CLL_ORDEM_ABATE'
      Origin = 'CLL_ORDEM_ABATE'
    end
    object LoteManejoTGCCLL_DT_ABATE: TDateField
      FieldName = 'CLL_DT_ABATE'
      Origin = 'CLL_DT_ABATE'
    end
    object LoteManejoTGCCLL_ANO_GIRO: TSmallintField
      FieldName = 'CLL_ANO_GIRO'
      Origin = 'CLL_ANO_GIRO'
    end
    object LoteManejoTGCCLL_CUSTOPASTO: TBCDField
      FieldName = 'CLL_CUSTOPASTO'
      Origin = 'CLL_CUSTOPASTO'
      Precision = 18
    end
    object LoteManejoTGCCLL_COD_CURVA: TIntegerField
      FieldName = 'CLL_COD_CURVA'
      Origin = 'CLL_COD_CURVA'
    end
    object LoteManejoTGCCLL_DATA_MEDIA_ENT: TDateField
      FieldName = 'CLL_DATA_MEDIA_ENT'
      Origin = 'CLL_DATA_MEDIA_ENT'
    end
    object LoteManejoTGCCLL_TIPO_EXPLORACAO: TStringField
      FieldName = 'CLL_TIPO_EXPLORACAO'
      Origin = 'CLL_TIPO_EXPLORACAO'
    end
    object LoteManejoTGCCLL_FLAG_GERAR_FORNECIMENTO: TStringField
      FieldName = 'CLL_FLAG_GERAR_FORNECIMENTO'
      Origin = 'CLL_FLAG_GERAR_FORNECIMENTO'
      FixedChar = True
      Size = 1
    end
    object LoteManejoTGCCLL_TIPO_LEITURA: TStringField
      FieldName = 'CLL_TIPO_LEITURA'
      Origin = 'CLL_TIPO_LEITURA'
      FixedChar = True
      Size = 1
    end
  end
  object TContratosTGC: TFDQuery
    Connection = FDConTGC
    SQL.Strings = (
      'SELECT * FROM CAD_CONTRATO_CONF')
    Left = 136
    Top = 184
    object TContratosTGCCONTR_CODIGO: TIntegerField
      FieldName = 'CONTR_CODIGO'
      Origin = 'CONTR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TContratosTGCCONTR_CONTRATO: TStringField
      FieldName = 'CONTR_CONTRATO'
      Origin = 'CONTR_CONTRATO'
      Required = True
      Size = 50
    end
    object TContratosTGCCONTR_MODALIDADE: TStringField
      FieldName = 'CONTR_MODALIDADE'
      Origin = 'CONTR_MODALIDADE'
      Required = True
      Size = 40
    end
    object TContratosTGCCONTR_CODFORNECEDOR: TIntegerField
      FieldName = 'CONTR_CODFORNECEDOR'
      Origin = 'CONTR_CODFORNECEDOR'
      Required = True
    end
    object TContratosTGCCONTR_CODCATEGORIA: TIntegerField
      FieldName = 'CONTR_CODCATEGORIA'
      Origin = 'CONTR_CODCATEGORIA'
      Required = True
    end
    object TContratosTGCCONTR_DATA_NEGOCIACAO: TDateField
      FieldName = 'CONTR_DATA_NEGOCIACAO'
      Origin = 'CONTR_DATA_NEGOCIACAO'
    end
    object TContratosTGCCONTR_DATA_ENTRADA_BOIS: TDateField
      FieldName = 'CONTR_DATA_ENTRADA_BOIS'
      Origin = 'CONTR_DATA_ENTRADA_BOIS'
    end
    object TContratosTGCCONTR_DATA_ABATE: TDateField
      FieldName = 'CONTR_DATA_ABATE'
      Origin = 'CONTR_DATA_ABATE'
    end
    object TContratosTGCCONTR_DATA_VENCIMENTO: TDateField
      FieldName = 'CONTR_DATA_VENCIMENTO'
      Origin = 'CONTR_DATA_VENCIMENTO'
    end
    object TContratosTGCCONTR_NUMEROCAB: TBCDField
      FieldName = 'CONTR_NUMEROCAB'
      Origin = 'CONTR_NUMEROCAB'
      Precision = 18
    end
    object TContratosTGCCONTR_PESOABATE: TBCDField
      FieldName = 'CONTR_PESOABATE'
      Origin = 'CONTR_PESOABATE'
      Precision = 18
    end
    object TContratosTGCCONTR_GIRO: TIntegerField
      FieldName = 'CONTR_GIRO'
      Origin = 'CONTR_GIRO'
    end
    object TContratosTGCCONTR_TOTAL_KG_FAZ: TBCDField
      FieldName = 'CONTR_TOTAL_KG_FAZ'
      Origin = 'CONTR_TOTAL_KG_FAZ'
      Precision = 18
    end
    object TContratosTGCCONTR_TOTAL_ARROBA_FAZ: TBCDField
      FieldName = 'CONTR_TOTAL_ARROBA_FAZ'
      Origin = 'CONTR_TOTAL_ARROBA_FAZ'
      Precision = 18
    end
    object TContratosTGCCONTR_TOTAL_ARROBA_CONF: TBCDField
      FieldName = 'CONTR_TOTAL_ARROBA_CONF'
      Origin = 'CONTR_TOTAL_ARROBA_CONF'
      Precision = 18
    end
    object TContratosTGCCONTR_TOTAL_KG_CONF: TBCDField
      FieldName = 'CONTR_TOTAL_KG_CONF'
      Origin = 'CONTR_TOTAL_KG_CONF'
      Precision = 18
    end
    object TContratosTGCCONTR_TOT_QUEBRA_PER: TBCDField
      FieldName = 'CONTR_TOT_QUEBRA_PER'
      Origin = 'CONTR_TOT_QUEBRA_PER'
      Precision = 18
    end
    object TContratosTGCCONTR_STATUS: TStringField
      FieldName = 'CONTR_STATUS'
      Origin = 'CONTR_STATUS'
      FixedChar = True
      Size = 1
    end
    object TContratosTGCCONTR_PAUTA_CAB_FOR: TBCDField
      FieldName = 'CONTR_PAUTA_CAB_FOR'
      Origin = 'CONTR_PAUTA_CAB_FOR'
      Precision = 18
    end
    object TContratosTGCCONTR_PAUTA_CAB_CONF: TBCDField
      FieldName = 'CONTR_PAUTA_CAB_CONF'
      Origin = 'CONTR_PAUTA_CAB_CONF'
      Precision = 18
    end
    object TContratosTGCCONTR_PAUTA_ALIQ_PER_FOR: TBCDField
      FieldName = 'CONTR_PAUTA_ALIQ_PER_FOR'
      Origin = 'CONTR_PAUTA_ALIQ_PER_FOR'
      Precision = 18
    end
    object TContratosTGCCONTR_PAUTA_ALIQ_PER_CONF: TBCDField
      FieldName = 'CONTR_PAUTA_ALIQ_PER_CONF'
      Origin = 'CONTR_PAUTA_ALIQ_PER_CONF'
      Precision = 18
    end
    object TContratosTGCCONTR_PAUTA_ALIQ_CAB_FOR: TBCDField
      FieldName = 'CONTR_PAUTA_ALIQ_CAB_FOR'
      Origin = 'CONTR_PAUTA_ALIQ_CAB_FOR'
      Precision = 18
    end
    object TContratosTGCCONTR_PAUTA_ALIQ_CAB_CONF: TBCDField
      FieldName = 'CONTR_PAUTA_ALIQ_CAB_CONF'
      Origin = 'CONTR_PAUTA_ALIQ_CAB_CONF'
      Precision = 18
    end
    object TContratosTGCCONTR_DIFEPAUTA_CAB: TBCDField
      FieldName = 'CONTR_DIFEPAUTA_CAB'
      Origin = 'CONTR_DIFEPAUTA_CAB'
      Precision = 18
    end
    object TContratosTGCCONTR_FRETE_KM: TBCDField
      FieldName = 'CONTR_FRETE_KM'
      Origin = 'CONTR_FRETE_KM'
      Precision = 18
    end
    object TContratosTGCCONTR_FRETE_VALOR_KM: TBCDField
      FieldName = 'CONTR_FRETE_VALOR_KM'
      Origin = 'CONTR_FRETE_VALOR_KM'
      Precision = 18
    end
    object TContratosTGCCONTR_FRETE_CAB_TRANS: TBCDField
      FieldName = 'CONTR_FRETE_CAB_TRANS'
      Origin = 'CONTR_FRETE_CAB_TRANS'
      Precision = 18
    end
    object TContratosTGCCONTR_FRETE_CAB: TBCDField
      FieldName = 'CONTR_FRETE_CAB'
      Origin = 'CONTR_FRETE_CAB'
      Precision = 18
    end
    object TContratosTGCCONTR_FRETE_ALIQ_PER: TBCDField
      FieldName = 'CONTR_FRETE_ALIQ_PER'
      Origin = 'CONTR_FRETE_ALIQ_PER'
      Precision = 18
    end
    object TContratosTGCCONTR_FRETE_ALIQ_CAB: TBCDField
      FieldName = 'CONTR_FRETE_ALIQ_CAB'
      Origin = 'CONTR_FRETE_ALIQ_CAB'
      Precision = 18
    end
    object TContratosTGCCONTR_VALORCOMPRA_BOIFAZ: TBCDField
      FieldName = 'CONTR_VALORCOMPRA_BOIFAZ'
      Origin = 'CONTR_VALORCOMPRA_BOIFAZ'
      Precision = 18
    end
    object TContratosTGCCONTR_VALORCOMPRA_BOICONF: TBCDField
      FieldName = 'CONTR_VALORCOMPRA_BOICONF'
      Origin = 'CONTR_VALORCOMPRA_BOICONF'
      Precision = 18
    end
    object TContratosTGCCONTR_CODMERCADOFUTURO: TIntegerField
      FieldName = 'CONTR_CODMERCADOFUTURO'
      Origin = 'CONTR_CODMERCADOFUTURO'
    end
    object TContratosTGCCONTR_CODOPBANCO: TIntegerField
      FieldName = 'CONTR_CODOPBANCO'
      Origin = 'CONTR_CODOPBANCO'
    end
    object TContratosTGCCONTR_VALOR_SANIDADE_CAB: TBCDField
      FieldName = 'CONTR_VALOR_SANIDADE_CAB'
      Origin = 'CONTR_VALOR_SANIDADE_CAB'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_SANIDADE_TOT: TBCDField
      FieldName = 'CONTR_VALOR_SANIDADE_TOT'
      Origin = 'CONTR_VALOR_SANIDADE_TOT'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_RAST_BONI: TBCDField
      FieldName = 'CONTR_VALOR_RAST_BONI'
      Origin = 'CONTR_VALOR_RAST_BONI'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_DIARIA_CAB: TBCDField
      FieldName = 'CONTR_VALOR_DIARIA_CAB'
      Origin = 'CONTR_VALOR_DIARIA_CAB'
      Precision = 18
    end
    object TContratosTGCCONTR_RACAOVALORKG: TBCDField
      FieldName = 'CONTR_RACAOVALORKG'
      Origin = 'CONTR_RACAOVALORKG'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_OPE_CAB: TBCDField
      FieldName = 'CONTR_VALOR_OPE_CAB'
      Origin = 'CONTR_VALOR_OPE_CAB'
      Precision = 18
    end
    object TContratosTGCCONTR_JUROS_ANUAL: TBCDField
      FieldName = 'CONTR_JUROS_ANUAL'
      Origin = 'CONTR_JUROS_ANUAL'
      Precision = 18
    end
    object TContratosTGCCONTR_JUROS_PERIODO: TBCDField
      FieldName = 'CONTR_JUROS_PERIODO'
      Origin = 'CONTR_JUROS_PERIODO'
      Precision = 18
    end
    object TContratosTGCCONTR_LIBERADO_WEB: TStringField
      FieldName = 'CONTR_LIBERADO_WEB'
      Origin = 'CONTR_LIBERADO_WEB'
      FixedChar = True
      Size = 1
    end
    object TContratosTGCCONTR_OBS: TMemoField
      FieldName = 'CONTR_OBS'
      Origin = 'CONTR_OBS'
      BlobType = ftMemo
    end
    object TContratosTGCCONTR_DESC_MORTE_REJ: TMemoField
      FieldName = 'CONTR_DESC_MORTE_REJ'
      Origin = 'CONTR_DESC_MORTE_REJ'
      BlobType = ftMemo
    end
    object TContratosTGCCONTR_MORTE_TOT: TBCDField
      FieldName = 'CONTR_MORTE_TOT'
      Origin = 'CONTR_MORTE_TOT'
      Precision = 18
    end
    object TContratosTGCCONTR_ATIVOS_TOT: TBCDField
      FieldName = 'CONTR_ATIVOS_TOT'
      Origin = 'CONTR_ATIVOS_TOT'
      Precision = 18
    end
    object TContratosTGCCONTR_REJEICAO_TOT: TBCDField
      FieldName = 'CONTR_REJEICAO_TOT'
      Origin = 'CONTR_REJEICAO_TOT'
      Precision = 18
    end
    object TContratosTGCCONTR_ABATIDOS_TOT: TBCDField
      FieldName = 'CONTR_ABATIDOS_TOT'
      Origin = 'CONTR_ABATIDOS_TOT'
      Precision = 18
    end
    object TContratosTGCCONTR_DATAREG: TDateField
      FieldName = 'CONTR_DATAREG'
      Origin = 'CONTR_DATAREG'
    end
    object TContratosTGCCONTR_DIAS_CONF: TBCDField
      FieldName = 'CONTR_DIAS_CONF'
      Origin = 'CONTR_DIAS_CONF'
      Precision = 18
    end
    object TContratosTGCCONTR_DIAS_CONF_VENC: TBCDField
      FieldName = 'CONTR_DIAS_CONF_VENC'
      Origin = 'CONTR_DIAS_CONF_VENC'
      Precision = 18
    end
    object TContratosTGCCONTR_DT_ENTRA_FLAG: TStringField
      FieldName = 'CONTR_DT_ENTRA_FLAG'
      Origin = 'CONTR_DT_ENTRA_FLAG'
      FixedChar = True
      Size = 1
    end
    object TContratosTGCCONTR_DT_ALTERACAO: TDateField
      FieldName = 'CONTR_DT_ALTERACAO'
      Origin = 'CONTR_DT_ALTERACAO'
    end
    object TContratosTGCCONTR_USUARIO: TStringField
      FieldName = 'CONTR_USUARIO'
      Origin = 'CONTR_USUARIO'
      Size = 100
    end
    object TContratosTGCCONTR_TOT_QUEBRA_CAB: TBCDField
      FieldName = 'CONTR_TOT_QUEBRA_CAB'
      Origin = 'CONTR_TOT_QUEBRA_CAB'
      Precision = 18
    end
    object TContratosTGCCONTR_VALORCOMPRA_ARR_BOIFAZ: TBCDField
      FieldName = 'CONTR_VALORCOMPRA_ARR_BOIFAZ'
      Origin = 'CONTR_VALORCOMPRA_ARR_BOIFAZ'
      Precision = 18
    end
    object TContratosTGCCONTR_ORDEMCOMPRA: TStringField
      FieldName = 'CONTR_ORDEMCOMPRA'
      Origin = 'CONTR_ORDEMCOMPRA'
      Size = 100
    end
    object TContratosTGCCONTR_VALORCOMPRA_TOT_ANIMAIS: TBCDField
      FieldName = 'CONTR_VALORCOMPRA_TOT_ANIMAIS'
      Origin = 'CONTR_VALORCOMPRA_TOT_ANIMAIS'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_TOT_ICMS_COMPRA: TBCDField
      FieldName = 'CONTR_VALOR_TOT_ICMS_COMPRA'
      Origin = 'CONTR_VALOR_TOT_ICMS_COMPRA'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_TOT_ICMS_RECUP: TBCDField
      FieldName = 'CONTR_VALOR_TOT_ICMS_RECUP'
      Origin = 'CONTR_VALOR_TOT_ICMS_RECUP'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_TOT_ICMS_LIQ: TBCDField
      FieldName = 'CONTR_VALOR_TOT_ICMS_LIQ'
      Origin = 'CONTR_VALOR_TOT_ICMS_LIQ'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_TOT_FRETE: TBCDField
      FieldName = 'CONTR_VALOR_TOT_FRETE'
      Origin = 'CONTR_VALOR_TOT_FRETE'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_TOT_ANIMAIS: TBCDField
      FieldName = 'CONTR_VALOR_TOT_ANIMAIS'
      Origin = 'CONTR_VALOR_TOT_ANIMAIS'
      Precision = 18
    end
    object TContratosTGCCONTR_VALOR_TOT_COMISSAO: TBCDField
      FieldName = 'CONTR_VALOR_TOT_COMISSAO'
      Origin = 'CONTR_VALOR_TOT_COMISSAO'
      Precision = 18
    end
    object TContratosTGCCONTR_CODCONTRATO_ERP: TIntegerField
      FieldName = 'CONTR_CODCONTRATO_ERP'
      Origin = 'CONTR_CODCONTRATO_ERP'
    end
    object TContratosTGCCONTR_TOTAL_KG_ORIGEM: TBCDField
      FieldName = 'CONTR_TOTAL_KG_ORIGEM'
      Origin = 'CONTR_TOTAL_KG_ORIGEM'
      Precision = 18
    end
    object TContratosTGCCONTR_TOTAL_ARROBA_ORIGEM: TBCDField
      FieldName = 'CONTR_TOTAL_ARROBA_ORIGEM'
      Origin = 'CONTR_TOTAL_ARROBA_ORIGEM'
      Precision = 18
    end
    object TContratosTGCCONTR_CODNEGOCIADOR: TIntegerField
      FieldName = 'CONTR_CODNEGOCIADOR'
      Origin = 'CONTR_CODNEGOCIADOR'
    end
    object TContratosTGCCONTR_DIF_PESO_KG: TFloatField
      FieldName = 'CONTR_DIF_PESO_KG'
      Origin = 'CONTR_DIF_PESO_KG'
    end
    object TContratosTGCCONTR_DIF_PESO_ARROBA: TFloatField
      FieldName = 'CONTR_DIF_PESO_ARROBA'
      Origin = 'CONTR_DIF_PESO_ARROBA'
    end
    object TContratosTGCCONTR_QUEBRA_PESO: TFloatField
      FieldName = 'CONTR_QUEBRA_PESO'
      Origin = 'CONTR_QUEBRA_PESO'
    end
    object TContratosTGCCONTR_SCORE_ENTRADA: TStringField
      FieldName = 'CONTR_SCORE_ENTRADA'
      Origin = 'CONTR_SCORE_ENTRADA'
      Size = 50
    end
    object TContratosTGCCONTR_RC_ENTRADA: TFloatField
      FieldName = 'CONTR_RC_ENTRADA'
      Origin = 'CONTR_RC_ENTRADA'
    end
    object TContratosTGCCONTR_PESO_ENT_ESTIMADO: TFloatField
      FieldName = 'CONTR_PESO_ENT_ESTIMADO'
      Origin = 'CONTR_PESO_ENT_ESTIMADO'
    end
    object TContratosTGCCONTR_ORIGEM_ALIMENTAR: TStringField
      FieldName = 'CONTR_ORIGEM_ALIMENTAR'
      Origin = 'CONTR_ORIGEM_ALIMENTAR'
      Size = 100
    end
    object TContratosTGCCONTR_PESAGEM_ORIGEM: TStringField
      FieldName = 'CONTR_PESAGEM_ORIGEM'
      Origin = 'CONTR_PESAGEM_ORIGEM'
      Size = 25
    end
    object TContratosTGCCONTR_VALOR_ARROBA_PROD: TBCDField
      FieldName = 'CONTR_VALOR_ARROBA_PROD'
      Origin = 'CONTR_VALOR_ARROBA_PROD'
      Precision = 18
    end
    object TContratosTGCCONTR_RESP_FRETE_ENTRADA: TStringField
      FieldName = 'CONTR_RESP_FRETE_ENTRADA'
      Origin = 'CONTR_RESP_FRETE_ENTRADA'
      Size = 25
    end
    object TContratosTGCCONTR_RESP_RASTREABILIDADE: TStringField
      FieldName = 'CONTR_RESP_RASTREABILIDADE'
      Origin = 'CONTR_RESP_RASTREABILIDADE'
      Size = 25
    end
    object TContratosTGCCONTR_RESP_SANIDADE: TStringField
      FieldName = 'CONTR_RESP_SANIDADE'
      Origin = 'CONTR_RESP_SANIDADE'
      Size = 25
    end
    object TContratosTGCCONTR_RESP_VENDA_ANIMAIS: TStringField
      FieldName = 'CONTR_RESP_VENDA_ANIMAIS'
      Origin = 'CONTR_RESP_VENDA_ANIMAIS'
      Size = 25
    end
    object TContratosTGCCONTR_VALOR_CAB_RASTREAB: TBCDField
      FieldName = 'CONTR_VALOR_CAB_RASTREAB'
      Origin = 'CONTR_VALOR_CAB_RASTREAB'
      Precision = 18
    end
    object TContratosTGCCONTR_BONUS_FRETE: TBCDField
      FieldName = 'CONTR_BONUS_FRETE'
      Origin = 'CONTR_BONUS_FRETE'
      Precision = 18
    end
    object TContratosTGCCONTR_BONUS_RASTR: TBCDField
      FieldName = 'CONTR_BONUS_RASTR'
      Origin = 'CONTR_BONUS_RASTR'
      Precision = 18
    end
    object TContratosTGCCONTR_BONUS_SANI: TBCDField
      FieldName = 'CONTR_BONUS_SANI'
      Origin = 'CONTR_BONUS_SANI'
      Precision = 18
    end
    object TContratosTGCCONTR_TIPO_VALOR_ENTRADA: TStringField
      FieldName = 'CONTR_TIPO_VALOR_ENTRADA'
      Origin = 'CONTR_TIPO_VALOR_ENTRADA'
    end
    object TContratosTGCCONTR_PESO_BALANCAO_FAZ: TBCDField
      FieldName = 'CONTR_PESO_BALANCAO_FAZ'
      Origin = 'CONTR_PESO_BALANCAO_FAZ'
      Precision = 18
    end
    object TContratosTGCCONTR_QUEBRA_BALANCAO: TFloatField
      FieldName = 'CONTR_QUEBRA_BALANCAO'
      Origin = 'CONTR_QUEBRA_BALANCAO'
    end
  end
  object TRebanhoTGC: TFDQuery
    Connection = FDConTGC
    SQL.Strings = (
      'SELECT * FROM AUX_REBANHO')
    Left = 144
    Top = 240
    object TRebanhoTGCAR_CODALFA: TStringField
      FieldName = 'AR_CODALFA'
      Origin = 'AR_CODALFA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object TRebanhoTGCAR_DESCRICAO: TStringField
      FieldName = 'AR_DESCRICAO'
      Origin = 'AR_DESCRICAO'
      Size = 100
    end
    object TRebanhoTGCAR_FLAG_STATUS: TStringField
      FieldName = 'AR_FLAG_STATUS'
      Origin = 'AR_FLAG_STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object TAnimaisSync: TFDQuery
    Connection = serviceDB.FCon
    SQL.Strings = (
      'SELECT A.*,B.NOME CATEGORIA,C.NOME RACA FROM ANIMAL A'
      'JOIN CATEGORIAS B ON A.ID_CATEGORIA=B.ID'
      'JOIN RACA C ON A.ID_RACA=C.ID'
      'WHERE A.STATUS=1 AND A.FLAG_SYNC_TERCEIROS=0 AND A.ID_LOCAL=1 ')
    Left = 440
    Top = 128
    object TAnimaisSyncID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TAnimaisSyncID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ID_LOCAL'
      Required = True
    end
    object TAnimaisSyncID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      Required = True
    end
    object TAnimaisSyncID_RACA: TIntegerField
      FieldName = 'ID_RACA'
      Origin = 'ID_RACA'
      Required = True
    end
    object TAnimaisSyncIDENTIFICACAO_1: TStringField
      FieldName = 'IDENTIFICACAO_1'
      Origin = 'IDENTIFICACAO_1'
      Size = 25
    end
    object TAnimaisSyncIDENTIFICACAO_2: TStringField
      FieldName = 'IDENTIFICACAO_2'
      Origin = 'IDENTIFICACAO_2'
      Size = 25
    end
    object TAnimaisSyncDATA_PROC: TSQLTimeStampField
      FieldName = 'DATA_PROC'
      Origin = 'DATA_PROC'
      Required = True
    end
    object TAnimaisSyncGTA_ID: TIntegerField
      FieldName = 'GTA_ID'
      Origin = 'GTA_ID'
    end
    object TAnimaisSyncIDADE_MESES: TIntegerField
      FieldName = 'IDADE_MESES'
      Origin = 'IDADE_MESES'
    end
    object TAnimaisSyncPESO_ENTRADA: TFMTBCDField
      FieldName = 'PESO_ENTRADA'
      Origin = 'PESO_ENTRADA'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncULTIMO_PESO: TFMTBCDField
      FieldName = 'ULTIMO_PESO'
      Origin = 'ULTIMO_PESO'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncDATA_ULTIMO_PESO: TDateField
      FieldName = 'DATA_ULTIMO_PESO'
      Origin = 'DATA_ULTIMO_PESO'
    end
    object TAnimaisSyncSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
    object TAnimaisSyncDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      Origin = 'DATAREG'
    end
    object TAnimaisSyncID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object TAnimaisSyncDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object TAnimaisSyncPESO_SAIDA: TFMTBCDField
      FieldName = 'PESO_SAIDA'
      Origin = 'PESO_SAIDA'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object TAnimaisSyncID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
    end
    object TAnimaisSyncULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
    end
    object TAnimaisSyncULTIMO_USUARIO: TIntegerField
      FieldName = 'ULTIMO_USUARIO'
      Origin = 'ULTIMO_USUARIO'
    end
    object TAnimaisSyncID_LOTESAIDA: TIntegerField
      FieldName = 'ID_LOTESAIDA'
      Origin = 'ID_LOTESAIDA'
    end
    object TAnimaisSyncID_VEICULO_SAIDA: TIntegerField
      FieldName = 'ID_VEICULO_SAIDA'
      Origin = 'ID_VEICULO_SAIDA'
    end
    object TAnimaisSyncORIGEM_DADOS: TStringField
      FieldName = 'ORIGEM_DADOS'
      Origin = 'ORIGEM_DADOS'
      Size = 15
    end
    object TAnimaisSyncTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 15
    end
    object TAnimaisSyncID_MOTIVO_MORTE: TIntegerField
      FieldName = 'ID_MOTIVO_MORTE'
      Origin = 'ID_MOTIVO_MORTE'
    end
    object TAnimaisSyncID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object TAnimaisSyncVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncID_PRODUTOR_ORIGEM: TIntegerField
      FieldName = 'ID_PRODUTOR_ORIGEM'
      Origin = 'ID_PRODUTOR_ORIGEM'
    end
    object TAnimaisSyncFLAG_SYNC: TIntegerField
      FieldName = 'FLAG_SYNC'
      Origin = 'FLAG_SYNC'
    end
    object TAnimaisSyncDATA_SYNC: TSQLTimeStampField
      FieldName = 'DATA_SYNC'
      Origin = 'DATA_SYNC'
    end
    object TAnimaisSyncDATA_LIBERACAO: TDateField
      FieldName = 'DATA_LIBERACAO'
      Origin = 'DATA_LIBERACAO'
    end
    object TAnimaisSyncID_ULTIMO_USUARIO_ALTERACAO: TIntegerField
      FieldName = 'ID_ULTIMO_USUARIO_ALTERACAO'
      Origin = 'ID_ULTIMO_USUARIO_ALTERACAO'
    end
    object TAnimaisSyncDATA_ULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DATA_ULTIMA_ALTERACAO'
    end
    object TAnimaisSyncID_CONTRATO_COMPRA: TIntegerField
      FieldName = 'ID_CONTRATO_COMPRA'
      Origin = 'ID_CONTRATO_COMPRA'
    end
    object TAnimaisSyncID_PRODUTOR_DESTINO_SAIDA: TIntegerField
      FieldName = 'ID_PRODUTOR_DESTINO_SAIDA'
      Origin = 'ID_PRODUTOR_DESTINO_SAIDA'
    end
    object TAnimaisSyncIDADE_MORTE: TIntegerField
      FieldName = 'IDADE_MORTE'
      Origin = 'IDADE_MORTE'
    end
    object TAnimaisSyncID_GTA_SAIDA: TIntegerField
      FieldName = 'ID_GTA_SAIDA'
      Origin = 'ID_GTA_SAIDA'
    end
    object TAnimaisSyncOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object TAnimaisSyncTIPO_ENTRADA: TIntegerField
      FieldName = 'TIPO_ENTRADA'
      Origin = 'TIPO_ENTRADA'
      Required = True
    end
    object TAnimaisSyncPESO_ESTIMADO: TFMTBCDField
      FieldName = 'PESO_ESTIMADO'
      Origin = 'PESO_ESTIMADO'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncDATA_PESO_ESTIMADO: TDateField
      FieldName = 'DATA_PESO_ESTIMADO'
      Origin = 'DATA_PESO_ESTIMADO'
    end
    object TAnimaisSyncVALOR_CUSTO_ALIMENTAR: TFMTBCDField
      FieldName = 'VALOR_CUSTO_ALIMENTAR'
      Origin = 'VALOR_CUSTO_ALIMENTAR'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncVALOR_CUSTO_FIXO_ACU: TFMTBCDField
      FieldName = 'VALOR_CUSTO_FIXO_ACU'
      Origin = 'VALOR_CUSTO_FIXO_ACU'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncID_CATEGORIA_ATUAL: TIntegerField
      FieldName = 'ID_CATEGORIA_ATUAL'
      Origin = 'ID_CATEGORIA_ATUAL'
    end
    object TAnimaisSyncCONSUMO_ACU: TFMTBCDField
      FieldName = 'CONSUMO_ACU'
      Origin = 'CONSUMO_ACU'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncID_COMUNICADO_REIDENT: TIntegerField
      FieldName = 'ID_COMUNICADO_REIDENT'
      Origin = 'ID_COMUNICADO_REIDENT'
    end
    object TAnimaisSyncID_COMUNICADO_MORTE: TIntegerField
      FieldName = 'ID_COMUNICADO_MORTE'
      Origin = 'ID_COMUNICADO_MORTE'
    end
    object TAnimaisSyncOBS_MORTE: TStringField
      FieldName = 'OBS_MORTE'
      Origin = 'OBS_MORTE'
      Size = 100
    end
    object TAnimaisSyncTIPO_MORTE: TIntegerField
      FieldName = 'TIPO_MORTE'
      Origin = 'TIPO_MORTE'
    end
    object TAnimaisSyncDATA_REPROCESSAMENTO: TSQLTimeStampField
      FieldName = 'DATA_REPROCESSAMENTO'
      Origin = 'DATA_REPROCESSAMENTO'
    end
    object TAnimaisSyncID_COM_NASCIMENTO: TIntegerField
      FieldName = 'ID_COM_NASCIMENTO'
      Origin = 'ID_COM_NASCIMENTO'
    end
    object TAnimaisSyncIDENTIFICACAO_MAE: TStringField
      FieldName = 'IDENTIFICACAO_MAE'
      Origin = 'IDENTIFICACAO_MAE'
    end
    object TAnimaisSyncCARIMBO_NASCIMENTO: TStringField
      FieldName = 'CARIMBO_NASCIMENTO'
      Origin = 'CARIMBO_NASCIMENTO'
    end
    object TAnimaisSyncOUTRO_ERAS: TIntegerField
      FieldName = 'OUTRO_ERAS'
      Origin = 'OUTRO_ERAS'
    end
    object TAnimaisSyncIMS_PV: TBCDField
      FieldName = 'IMS_PV'
      Origin = 'IMS_PV'
      Precision = 18
    end
    object TAnimaisSyncFLAG_SYNC_TERCEIROS: TIntegerField
      FieldName = 'FLAG_SYNC_TERCEIROS'
      Origin = 'FLAG_SYNC_TERCEIROS'
      Required = True
    end
    object TAnimaisSyncDATA_SYNC_TERCEIROS: TDateField
      FieldName = 'DATA_SYNC_TERCEIROS'
      Origin = 'DATA_SYNC_TERCEIROS'
    end
    object TAnimaisSyncCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TAnimaisSyncRACA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RACA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TAnimaisSyncID_REBANHO: TIntegerField
      FieldName = 'ID_REBANHO'
      Origin = 'ID_REBANHO'
    end
    object TAnimaisSyncPESO_ENTRADA_CONF: TFMTBCDField
      FieldName = 'PESO_ENTRADA_CONF'
      Origin = 'PESO_ENTRADA_CONF'
      Precision = 18
      Size = 2
    end
    object TAnimaisSyncDATA_ENTRADA_CONF: TDateField
      FieldName = 'DATA_ENTRADA_CONF'
      Origin = 'DATA_ENTRADA_CONF'
    end
    object TAnimaisSyncID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
      Required = True
    end
    object TAnimaisSyncID_BASE_CAMPO: TIntegerField
      FieldName = 'ID_BASE_CAMPO'
      Origin = 'ID_BASE_CAMPO'
    end
    object TAnimaisSyncBASE_CAMPO_SYNC: TIntegerField
      FieldName = 'BASE_CAMPO_SYNC'
      Origin = 'BASE_CAMPO_SYNC'
    end
    object TAnimaisSyncBASE_CAMPO_DT_SYNC: TDateField
      FieldName = 'BASE_CAMPO_DT_SYNC'
      Origin = 'BASE_CAMPO_DT_SYNC'
    end
    object TAnimaisSyncBLOQUEIO: TIntegerField
      FieldName = 'BLOQUEIO'
      Origin = 'BLOQUEIO'
      Required = True
    end
    object TAnimaisSyncDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
  end
  object TAnimaisTGC: TFDQuery
    CachedUpdates = True
    OnReconcileError = TAnimaisTGCReconcileError
    Connection = FDConTGC
    SQL.Strings = (
      'SELECT * FROM CAD_ANIMAL'
      'WHERE CA_CODIGO=0')
    Left = 368
    Top = 40
    object TAnimaisTGCCA_CODIGO: TIntegerField
      FieldName = 'CA_CODIGO'
      Origin = 'CA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAnimaisTGCCA_CODLOTE: TIntegerField
      FieldName = 'CA_CODLOTE'
      Origin = 'CA_CODLOTE'
    end
    object TAnimaisTGCCA_CODFORNECEDOR: TIntegerField
      FieldName = 'CA_CODFORNECEDOR'
      Origin = 'CA_CODFORNECEDOR'
    end
    object TAnimaisTGCCA_NUMERONF: TStringField
      FieldName = 'CA_NUMERONF'
      Origin = 'CA_NUMERONF'
    end
    object TAnimaisTGCCA_PELAGEM: TStringField
      FieldName = 'CA_PELAGEM'
      Origin = 'CA_PELAGEM'
      Size = 5
    end
    object TAnimaisTGCCA_NCF: TStringField
      FieldName = 'CA_NCF'
      Origin = 'CA_NCF'
      Size = 50
    end
    object TAnimaisTGCCA_SISBOV: TStringField
      FieldName = 'CA_SISBOV'
      Origin = 'CA_SISBOV'
      Size = 100
    end
    object TAnimaisTGCCA_CHIP: TStringField
      FieldName = 'CA_CHIP'
      Origin = 'CA_CHIP'
      Size = 100
    end
    object TAnimaisTGCCA_IDADE: TIntegerField
      FieldName = 'CA_IDADE'
      Origin = 'CA_IDADE'
    end
    object TAnimaisTGCCA_FOTO: TBlobField
      FieldName = 'CA_FOTO'
      Origin = 'CA_FOTO'
    end
    object TAnimaisTGCCA_OBS: TMemoField
      FieldName = 'CA_OBS'
      Origin = 'CA_OBS'
      BlobType = ftMemo
    end
    object TAnimaisTGCCA_TIPOENTRADA: TStringField
      FieldName = 'CA_TIPOENTRADA'
      Origin = 'CA_TIPOENTRADA'
      Size = 40
    end
    object TAnimaisTGCCA_USUARIO: TStringField
      FieldName = 'CA_USUARIO'
      Origin = 'CA_USUARIO'
      Size = 40
    end
    object TAnimaisTGCCA_DATAREG: TDateField
      FieldName = 'CA_DATAREG'
      Origin = 'CA_DATAREG'
    end
    object TAnimaisTGCCA_TIPOANIMAL: TStringField
      FieldName = 'CA_TIPOANIMAL'
      Origin = 'CA_TIPOANIMAL'
    end
    object TAnimaisTGCCA_DATAENT: TDateField
      FieldName = 'CA_DATAENT'
      Origin = 'CA_DATAENT'
    end
    object TAnimaisTGCCA_CODLOTEORG: TIntegerField
      FieldName = 'CA_CODLOTEORG'
      Origin = 'CA_CODLOTEORG'
    end
    object TAnimaisTGCCA_SAIDA: TStringField
      FieldName = 'CA_SAIDA'
      Origin = 'CA_SAIDA'
    end
    object TAnimaisTGCCA_DATASAIDA: TDateField
      FieldName = 'CA_DATASAIDA'
      Origin = 'CA_DATASAIDA'
    end
    object TAnimaisTGCCA_VALORENT: TFMTBCDField
      FieldName = 'CA_VALORENT'
      Origin = 'CA_VALORENT'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_VALORSAIDA: TFMTBCDField
      FieldName = 'CA_VALORSAIDA'
      Origin = 'CA_VALORSAIDA'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_LOTESAIDA: TIntegerField
      FieldName = 'CA_LOTESAIDA'
      Origin = 'CA_LOTESAIDA'
    end
    object TAnimaisTGCCA_PESO_PROC: TFMTBCDField
      FieldName = 'CA_PESO_PROC'
      Origin = 'CA_PESO_PROC'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_DATA_PROC: TDateField
      FieldName = 'CA_DATA_PROC'
      Origin = 'CA_DATA_PROC'
    end
    object TAnimaisTGCCA_FRETE: TFMTBCDField
      FieldName = 'CA_FRETE'
      Origin = 'CA_FRETE'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_NUMCONTRATO: TStringField
      FieldName = 'CA_NUMCONTRATO'
      Origin = 'CA_NUMCONTRATO'
    end
    object TAnimaisTGCCA_DATALIB_SISBOV: TDateField
      FieldName = 'CA_DATALIB_SISBOV'
      Origin = 'CA_DATALIB_SISBOV'
    end
    object TAnimaisTGCCA_CODCATEGORIA: TIntegerField
      FieldName = 'CA_CODCATEGORIA'
      Origin = 'CA_CODCATEGORIA'
    end
    object TAnimaisTGCCA_CODRACA: TIntegerField
      FieldName = 'CA_CODRACA'
      Origin = 'CA_CODRACA'
    end
    object TAnimaisTGCCA_GTA_ENT_NUM: TStringField
      FieldName = 'CA_GTA_ENT_NUM'
      Origin = 'CA_GTA_ENT_NUM'
    end
    object TAnimaisTGCCA_GTA_SAIDA_NUM: TStringField
      FieldName = 'CA_GTA_SAIDA_NUM'
      Origin = 'CA_GTA_SAIDA_NUM'
    end
    object TAnimaisTGCCA_HORA_PROC: TSQLTimeStampField
      FieldName = 'CA_HORA_PROC'
      Origin = 'CA_HORA_PROC'
    end
    object TAnimaisTGCCA_REBANHO: TStringField
      FieldName = 'CA_REBANHO'
      Origin = 'CA_REBANHO'
      Size = 10
    end
    object TAnimaisTGCCA_ULTIMO_CURRAL: TIntegerField
      FieldName = 'CA_ULTIMO_CURRAL'
      Origin = 'CA_ULTIMO_CURRAL'
    end
    object TAnimaisTGCCA_CAUSAMORTE: TStringField
      FieldName = 'CA_CAUSAMORTE'
      Origin = 'CA_CAUSAMORTE'
      Size = 100
    end
    object TAnimaisTGCCA_PESO_ENT: TFMTBCDField
      FieldName = 'CA_PESO_ENT'
      Origin = 'CA_PESO_ENT'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_PESO_SAIDA: TFMTBCDField
      FieldName = 'CA_PESO_SAIDA'
      Origin = 'CA_PESO_SAIDA'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_PESO_ABATE: TFMTBCDField
      FieldName = 'CA_PESO_ABATE'
      Origin = 'CA_PESO_ABATE'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_DATA_ALIMENT: TDateField
      FieldName = 'CA_DATA_ALIMENT'
      Origin = 'CA_DATA_ALIMENT'
    end
    object TAnimaisTGCCA_DATA_ABATE_PESO: TDateField
      FieldName = 'CA_DATA_ABATE_PESO'
      Origin = 'CA_DATA_ABATE_PESO'
    end
    object TAnimaisTGCCA_DATA_ABATE_DIAS: TDateField
      FieldName = 'CA_DATA_ABATE_DIAS'
      Origin = 'CA_DATA_ABATE_DIAS'
    end
    object TAnimaisTGCCA_DIASCONF: TIntegerField
      FieldName = 'CA_DIASCONF'
      Origin = 'CA_DIASCONF'
    end
    object TAnimaisTGCCA_DIAS_LIB_SISBOV: TIntegerField
      FieldName = 'CA_DIAS_LIB_SISBOV'
      Origin = 'CA_DIAS_LIB_SISBOV'
    end
    object TAnimaisTGCCA_RC_ENTRADA: TFMTBCDField
      FieldName = 'CA_RC_ENTRADA'
      Origin = 'CA_RC_ENTRADA'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_RC_SAIDA_PROJ: TFMTBCDField
      FieldName = 'CA_RC_SAIDA_PROJ'
      Origin = 'CA_RC_SAIDA_PROJ'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_RC_SAIDA: TFMTBCDField
      FieldName = 'CA_RC_SAIDA'
      Origin = 'CA_RC_SAIDA'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_PESO_ARR_ENT: TBCDField
      FieldName = 'CA_PESO_ARR_ENT'
      Origin = 'CA_PESO_ARR_ENT'
      Precision = 18
    end
    object TAnimaisTGCCA_PESO_ARR_SAIDA: TBCDField
      FieldName = 'CA_PESO_ARR_SAIDA'
      Origin = 'CA_PESO_ARR_SAIDA'
      Precision = 18
    end
    object TAnimaisTGCCA_PESO_ARR_ABATE: TBCDField
      FieldName = 'CA_PESO_ARR_ABATE'
      Origin = 'CA_PESO_ARR_ABATE'
      Precision = 18
    end
    object TAnimaisTGCCA_VALOR_ARR_ENT: TFMTBCDField
      FieldName = 'CA_VALOR_ARR_ENT'
      Origin = 'CA_VALOR_ARR_ENT'
      Precision = 18
      Size = 6
    end
    object TAnimaisTGCCA_VALOR_ARR_SAIDA: TFMTBCDField
      FieldName = 'CA_VALOR_ARR_SAIDA'
      Origin = 'CA_VALOR_ARR_SAIDA'
      Precision = 18
      Size = 6
    end
    object TAnimaisTGCCA_GMD_PROJ: TFMTBCDField
      FieldName = 'CA_GMD_PROJ'
      Origin = 'CA_GMD_PROJ'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_PESO_ATUAL: TFMTBCDField
      FieldName = 'CA_PESO_ATUAL'
      Origin = 'CA_PESO_ATUAL'
      Precision = 18
      Size = 2
    end
    object TAnimaisTGCCA_TAG: TStringField
      FieldName = 'CA_TAG'
      Origin = 'CA_TAG'
      FixedChar = True
      Size = 1
    end
    object TAnimaisTGCCA_CODLOTE_ENTRADA: TIntegerField
      FieldName = 'CA_CODLOTE_ENTRADA'
      Origin = 'CA_CODLOTE_ENTRADA'
    end
    object TAnimaisTGCCA_ESCORE: TIntegerField
      FieldName = 'CA_ESCORE'
      Origin = 'CA_ESCORE'
    end
    object TAnimaisTGCCA_VALOR_COMPRA_TGP: TFloatField
      FieldName = 'CA_VALOR_COMPRA_TGP'
      Origin = 'CA_VALOR_COMPRA_TGP'
    end
    object TAnimaisTGCCA_VALOR_CONSUMO_TGP: TFloatField
      FieldName = 'CA_VALOR_CONSUMO_TGP'
      Origin = 'CA_VALOR_CONSUMO_TGP'
    end
    object TAnimaisTGCCA_VALOR_SANIDADE_TGP: TFloatField
      FieldName = 'CA_VALOR_SANIDADE_TGP'
      Origin = 'CA_VALOR_SANIDADE_TGP'
    end
    object TAnimaisTGCCA_VALOR_PASTO_TGP: TFloatField
      FieldName = 'CA_VALOR_PASTO_TGP'
      Origin = 'CA_VALOR_PASTO_TGP'
    end
    object TAnimaisTGCCA_PESO_BALANCAO: TFloatField
      FieldName = 'CA_PESO_BALANCAO'
      Origin = 'CA_PESO_BALANCAO'
    end
    object TAnimaisTGCCA_GTA_ENT_SERIE: TStringField
      FieldName = 'CA_GTA_ENT_SERIE'
      Origin = 'CA_GTA_ENT_SERIE'
      Size = 10
    end
    object TAnimaisTGCCA_DATA_BALANCAO: TDateField
      FieldName = 'CA_DATA_BALANCAO'
      Origin = 'CA_DATA_BALANCAO'
    end
    object TAnimaisTGCCA_ULTIMA_SYNC: TStringField
      FieldName = 'CA_ULTIMA_SYNC'
      Origin = 'CA_ULTIMA_SYNC'
      Size = 100
    end
    object TAnimaisTGCCA_DATA_LIMITE_HILTON: TDateField
      FieldName = 'CA_DATA_LIMITE_HILTON'
      Origin = 'CA_DATA_LIMITE_HILTON'
    end
    object TAnimaisTGCCA_FLAG_HILTON: TStringField
      FieldName = 'CA_FLAG_HILTON'
      Origin = 'CA_FLAG_HILTON'
      FixedChar = True
      Size = 1
    end
    object TAnimaisTGCCA_DATA_INCLUSAO_BND: TDateField
      FieldName = 'CA_DATA_INCLUSAO_BND'
      Origin = 'CA_DATA_INCLUSAO_BND'
    end
    object TAnimaisTGCCA_DN: TDateField
      FieldName = 'CA_DN'
      Origin = 'CA_DN'
    end
    object TAnimaisTGCCA_CODEMBARQUE: TIntegerField
      FieldName = 'CA_CODEMBARQUE'
      Origin = 'CA_CODEMBARQUE'
    end
  end
end
