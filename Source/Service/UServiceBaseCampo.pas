unit UServiceBaseCampo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,FMX.Dialogs, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, FireDAC.Phys.IBBase;

type
  TDMBaseCampo = class(TDataModule)
    BaseCampo: TFDQuery;
    DetBaseCampoGTA: TFDQuery;
    DetBaseCampoBrincos: TFDQuery;
    BaseCampoID: TIntegerField;
    BaseCampoID_OPERACAO: TIntegerField;
    BaseCampoID_USUARIO: TIntegerField;
    BaseCampoID_PROPRIEDADE: TIntegerField;
    BaseCampoDATA_CRIACAO: TDateField;
    BaseCampoDATA_REG: TSQLTimeStampField;
    BaseCampoSTATUS: TIntegerField;
    BaseCampoDATA_SYNC: TDateField;
    BaseCampoHORA_SYNC: TTimeField;
    DetBaseCampoGTAID: TIntegerField;
    DetBaseCampoGTAID_BASE_CAMPO: TIntegerField;
    DetBaseCampoGTAID_GTA: TIntegerField;
    DetBaseCampoGTASTATUS: TIntegerField;
    DetBaseCampoBrincosID: TIntegerField;
    DetBaseCampoBrincosID_BASE_CAMPO: TIntegerField;
    DetBaseCampoBrincosSISBOV_INICIAL: TStringField;
    DetBaseCampoBrincosSISBOV_FINAL: TStringField;
    DetBaseCampoBrincosSTATUS: TIntegerField;
    qryAuxBaseCampo: TFDQuery;
    BaseCampoSTATUSSTR: TStringField;
    BaseCampoMOVIMENTACAO: TStringField;
    qryAuxBC: TFDQuery;
    SyncAnimais: TFDQuery;
    SyncMoviAnimal: TFDQuery;
    SyncPesoAnimal: TFDQuery;
    SyncSaidaAnimal: TFDQuery;
    SyncMoviAnimalID: TIntegerField;
    SyncMoviAnimalID_USUARIO: TIntegerField;
    SyncMoviAnimalID_ANIMAL: TIntegerField;
    SyncMoviAnimalID_PASTO_ORIGEM: TIntegerField;
    SyncMoviAnimalID_PASTO_DESTINO: TIntegerField;
    SyncMoviAnimalDATA: TDateField;
    SyncMoviAnimalID_MOTIVO: TIntegerField;
    SyncMoviAnimalDATAREG: TSQLTimeStampField;
    SyncMoviAnimalPESO_ENTRADA: TFMTBCDField;
    SyncMoviAnimalPESO_SAIDA_PROJ: TFMTBCDField;
    SyncMoviAnimalDIAS: TIntegerField;
    SyncMoviAnimalORIGEM_DADOS: TIntegerField;
    SyncMoviAnimalTIPO: TIntegerField;
    SyncMoviAnimalID_BASE_CAMPO: TIntegerField;
    SyncMoviAnimalBASE_CAMPO_SYNC: TIntegerField;
    SyncMoviAnimalBASE_CAMPO_DT_SYNC: TDateField;
    SyncPesoAnimalID: TIntegerField;
    SyncPesoAnimalID_ANIMAL: TIntegerField;
    SyncPesoAnimalID_USUARIO: TIntegerField;
    SyncPesoAnimalDATA: TDateField;
    SyncPesoAnimalPESO: TFMTBCDField;
    SyncPesoAnimalTIPO: TStringField;
    SyncPesoAnimalDATAREG: TSQLTimeStampField;
    SyncPesoAnimalSTATUS: TIntegerField;
    SyncPesoAnimalID_PRODUTOR: TIntegerField;
    SyncPesoAnimalLOTE_SAIDA: TIntegerField;
    SyncPesoAnimalULTIMA_PESAGEM: TDateField;
    SyncPesoAnimalULTIMO_PESO: TFMTBCDField;
    SyncPesoAnimalDIAS_ULTIMO_PESO: TIntegerField;
    SyncPesoAnimalGMD: TFMTBCDField;
    SyncPesoAnimalID_LOCAL: TIntegerField;
    SyncPesoAnimalID_BASE_CAMPO: TIntegerField;
    SyncPesoAnimalBASE_CAMPO_SYNC: TIntegerField;
    SyncPesoAnimalBASE_CAMPO_DT_SYNC: TDateField;
    SyncReident: TFDQuery;
    SyncReidentID: TIntegerField;
    SyncReidentID_ANIMAL: TIntegerField;
    SyncReidentTIPO: TIntegerField;
    SyncReidentANTIGA: TStringField;
    SyncReidentNOVA: TStringField;
    SyncReidentID_USUARIO: TIntegerField;
    SyncReidentDATAREG: TSQLTimeStampField;
    SyncReidentID_BASE_CAMPO: TIntegerField;
    SyncReidentBASE_CAMPO_SYNC: TIntegerField;
    SyncReidentBASE_CAMPO_DT_SYNC: TDateField;
    SyncSanidade: TFDQuery;
    SyncSanidadeID: TIntegerField;
    SyncSanidadeID_ANIMAL: TIntegerField;
    SyncSanidadeID_FARMACO: TIntegerField;
    SyncSanidadeID_PROTOCOLO: TIntegerField;
    SyncSanidadeDOSE_ML: TFMTBCDField;
    SyncSanidadeID_PROPRIEDAE: TIntegerField;
    SyncSanidadeID_LOCAL_ATUAL: TIntegerField;
    SyncSanidadeDATA_APLICACAO: TDateField;
    SyncSanidadeTIPO_APLICACAO: TIntegerField;
    SyncSanidadeID_RESPONSAVEL_APLICACAO: TIntegerField;
    SyncSanidadeID_USUARIO: TIntegerField;
    SyncSanidadeDATAREG: TSQLTimeStampField;
    SyncSanidadeSTATUS: TIntegerField;
    SyncSanidadeTIPO_TRATAMENTO: TIntegerField;
    SyncSanidadeID_RESPONSAVEL_APLI_DIREITO: TIntegerField;
    SyncSanidadeCARENCIA_DIAS: TIntegerField;
    SyncSanidadeID_USUARIO_ALTERACAO: TIntegerField;
    SyncSanidadeDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    SyncSanidadeORIGEM_DADOS: TIntegerField;
    SyncSanidadeID_MOTIVO_APLICACAO: TIntegerField;
    SyncSanidadeCARENCIA_DATA: TDateField;
    SyncSanidadeID_BASE_CAMPO: TIntegerField;
    SyncSanidadeBASE_CAMPO_SYNC: TIntegerField;
    SyncSanidadeBASE_CAMPO_DT_SYNC: TDateField;
    SyncGTA: TFDQuery;
    SyncGTAID: TIntegerField;
    SyncGTANUMERO: TStringField;
    SyncGTASERIE: TStringField;
    SyncGTAUF: TStringField;
    SyncGTADATA_EMISSAO: TDateField;
    SyncGTADATA_VALIDADE: TDateField;
    SyncGTAZERO_A_12_FEMEA: TIntegerField;
    SyncGTAZERO_A_12_MACHO: TIntegerField;
    SyncGTATREZE_A_24_FEMEA: TIntegerField;
    SyncGTATREZE_A_24_MACHO: TIntegerField;
    SyncGTAVITE_CINCO_A_36_FEMEA: TIntegerField;
    SyncGTAVITE_CINCO_A_36_MACHO: TIntegerField;
    SyncGTAMAIS_36_FEMEA: TIntegerField;
    SyncGTAMAIS_36_MACHO: TIntegerField;
    SyncGTASTATUS: TIntegerField;
    SyncGTAUSER_ID: TIntegerField;
    SyncGTADATA_REG: TSQLTimeStampField;
    SyncGTATIPO: TStringField;
    SyncGTAID_PROPRIEDADE_ORIGEM: TIntegerField;
    SyncGTAID_PRODUTOR_ORIGEM: TIntegerField;
    SyncGTAID_PROPRIEDADE_DESTINO: TIntegerField;
    SyncGTAID_PRODUTOR_DESTINO: TIntegerField;
    SyncGTATOTAL_BRINCADOS: TIntegerField;
    SyncGTALOTADA: TIntegerField;
    SyncGTAGUID: TStringField;
    SyncGTAZERO_A_12_FEMEA_PROC: TIntegerField;
    SyncGTAZERO_A_12_MACHO_PROC: TIntegerField;
    SyncGTATREZE_A_24_FEMEA_PROC: TIntegerField;
    SyncGTATREZE_A_24_MACHO_PROC: TIntegerField;
    SyncGTAVITE_CINCO_A_36_FEMEA_PROC: TIntegerField;
    SyncGTAVITE_CINCO_A_36_MACHO_PROC: TIntegerField;
    SyncGTAMAIS_36_FEMEA_PROC: TIntegerField;
    SyncGTAMAIS_36_MACHO_PROC: TIntegerField;
    SyncGTAVALOR_CAB: TLargeintField;
    SyncGTAID_COMUNICADO: TIntegerField;
    SyncGTAID_VEICULO_SAIDA: TIntegerField;
    SyncGTARASTREADO: TIntegerField;
    SyncGTAID_USUARIO_ALTERACAO: TIntegerField;
    SyncGTADATA_ALTERACAO: TSQLTimeStampField;
    SyncGTAVALOR_FRETE_CAB: TFMTBCDField;
    SyncGTAVALOR_COMISSAO_CAB: TFMTBCDField;
    SyncGTAPESO_B_ORIGEM: TFMTBCDField;
    SyncGTAPESO_B_DESTINO: TFMTBCDField;
    SyncGTAID_COMPRADOR: TIntegerField;
    SyncGTATOTAL_FEMEAS: TLargeintField;
    SyncGTATOTAL_MACHOS: TLargeintField;
    SyncGTATOTAL_GTA: TLargeintField;
    SyncGTAID_BASE_CAMPO: TIntegerField;
    SyncGTABASE_CAMPO_SYNC: TIntegerField;
    SyncGTABASE_CAMPO_DT_SYNC: TDateField;
    SyncLoteSaida: TFDQuery;
    SyncLoteSaidaID: TIntegerField;
    SyncLoteSaidaDATA_EMBARQUE: TDateField;
    SyncLoteSaidaID_DESTINO: TIntegerField;
    SyncLoteSaidaID_PRODUTOR_DESTINO: TIntegerField;
    SyncLoteSaidaID_ORIGEM: TIntegerField;
    SyncLoteSaidaID_PRODUTOR_ORIGEM: TIntegerField;
    SyncLoteSaidaDATAREG: TSQLTimeStampField;
    SyncLoteSaidaSTATUS: TIntegerField;
    SyncLoteSaidaTOTAL_ANIMAIS_EMBARCADOS: TIntegerField;
    SyncLoteSaidaGUID: TStringField;
    SyncLoteSaidaNOME: TStringField;
    SyncLoteSaidaID_USUARIO: TIntegerField;
    SyncLoteSaidaID_BASE_CAMPO: TIntegerField;
    SyncLoteSaidaBASE_CAMPO_SYNC: TIntegerField;
    SyncLoteSaidaBASE_CAMPO_DT_SYNC: TDateField;
    SyncVeiculoEmbarque: TFDQuery;
    SyncVeiculoEmbarqueID: TIntegerField;
    SyncVeiculoEmbarqueID_LOTESAIDA: TIntegerField;
    SyncVeiculoEmbarquePLACA: TStringField;
    SyncVeiculoEmbarqueDATAREG: TSQLTimeStampField;
    SyncVeiculoEmbarqueSTATUS: TIntegerField;
    SyncVeiculoEmbarqueID_USER: TIntegerField;
    SyncVeiculoEmbarqueCAPACIDADE: TIntegerField;
    SyncVeiculoEmbarqueLOTACAO: TIntegerField;
    SyncVeiculoEmbarqueLOTADO: TIntegerField;
    SyncVeiculoEmbarqueNOME: TStringField;
    SyncVeiculoEmbarqueID_BASE_CAMPO: TIntegerField;
    SyncVeiculoEmbarqueBASE_CAMPO_SYNC: TIntegerField;
    SyncVeiculoEmbarqueBASE_CAMPO_DT_SYNC: TDateField;
    SyncAnimalExist: TFDQuery;
    SyncAnimalExistID: TIntegerField;
    SyncAnimalExistID_LOCAL: TIntegerField;
    SyncAnimalExistID_CATEGORIA: TIntegerField;
    SyncAnimalExistID_RACA: TIntegerField;
    SyncAnimalExistIDENTIFICACAO_1: TStringField;
    SyncAnimalExistIDENTIFICACAO_2: TStringField;
    SyncAnimalExistDATA_PROC: TSQLTimeStampField;
    SyncAnimalExistGTA_ID: TIntegerField;
    SyncAnimalExistIDADE_MESES: TIntegerField;
    SyncAnimalExistPESO_ENTRADA: TFMTBCDField;
    SyncAnimalExistULTIMO_PESO: TFMTBCDField;
    SyncAnimalExistDATA_ULTIMO_PESO: TDateField;
    SyncAnimalExistSTATUS: TIntegerField;
    SyncAnimalExistDATAREG: TSQLTimeStampField;
    SyncAnimalExistID_USUARIO: TIntegerField;
    SyncAnimalExistDATA_SAIDA: TDateField;
    SyncAnimalExistPESO_SAIDA: TFMTBCDField;
    SyncAnimalExistID_PROPRIEDADE: TIntegerField;
    SyncAnimalExistID_PRODUTOR: TIntegerField;
    SyncAnimalExistULTIMA_ALTERACAO: TSQLTimeStampField;
    SyncAnimalExistULTIMO_USUARIO: TIntegerField;
    SyncAnimalExistID_LOTESAIDA: TIntegerField;
    SyncAnimalExistID_VEICULO_SAIDA: TIntegerField;
    SyncAnimalExistORIGEM_DADOS: TStringField;
    SyncAnimalExistTIPO_SAIDA: TStringField;
    SyncAnimalExistID_MOTIVO_MORTE: TIntegerField;
    SyncAnimalExistID_LOTE: TIntegerField;
    SyncAnimalExistVALOR_COMPRA: TFMTBCDField;
    SyncAnimalExistVALOR_VENDA: TFMTBCDField;
    SyncAnimalExistID_PRODUTOR_ORIGEM: TIntegerField;
    SyncAnimalExistFLAG_SYNC: TIntegerField;
    SyncAnimalExistDATA_SYNC: TSQLTimeStampField;
    SyncAnimalExistDATA_LIBERACAO: TDateField;
    SyncAnimalExistID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    SyncAnimalExistDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    SyncAnimalExistID_CONTRATO_COMPRA: TIntegerField;
    SyncAnimalExistID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    SyncAnimalExistIDADE_MORTE: TIntegerField;
    SyncAnimalExistID_GTA_SAIDA: TIntegerField;
    SyncAnimalExistOBSERVACAO: TStringField;
    SyncAnimalExistTIPO_ENTRADA: TIntegerField;
    SyncAnimalExistPESO_ESTIMADO: TFMTBCDField;
    SyncAnimalExistDATA_PESO_ESTIMADO: TDateField;
    SyncAnimalExistVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    SyncAnimalExistVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    SyncAnimalExistID_CATEGORIA_ATUAL: TIntegerField;
    SyncAnimalExistCONSUMO_ACU: TFMTBCDField;
    SyncAnimalExistID_COMUNICADO_REIDENT: TIntegerField;
    SyncAnimalExistID_COMUNICADO_MORTE: TIntegerField;
    SyncAnimalExistOBS_MORTE: TStringField;
    SyncAnimalExistTIPO_MORTE: TIntegerField;
    SyncAnimalExistDATA_REPROCESSAMENTO: TSQLTimeStampField;
    SyncAnimalExistID_COM_NASCIMENTO: TIntegerField;
    SyncAnimalExistIDENTIFICACAO_MAE: TStringField;
    SyncAnimalExistCARIMBO_NASCIMENTO: TStringField;
    SyncAnimalExistOUTRO_ERAS: TIntegerField;
    SyncAnimalExistIMS_PV: TBCDField;
    SyncAnimalExistFLAG_SYNC_TERCEIROS: TIntegerField;
    SyncAnimalExistDATA_SYNC_TERCEIROS: TDateField;
    SyncAnimalExistID_REBANHO: TIntegerField;
    SyncAnimalExistPESO_ENTRADA_CONF: TFMTBCDField;
    SyncAnimalExistDATA_ENTRADA_CONF: TDateField;
    SyncAnimalExistID_CONTRATO: TIntegerField;
    SyncAnimalExistID_BASE_CAMPO: TIntegerField;
    SyncAnimalExistBASE_CAMPO_SYNC: TIntegerField;
    SyncAnimalExistBASE_CAMPO_DT_SYNC: TDateField;
    qryAuxBaseMaster: TFDQuery;
    SyncMoviAnimalIDENTIFICACAO_1: TStringField;
    SyncMoviAnimalIDENTIFICACAO_2: TStringField;
    SyncPesoAnimalIDENTIFICACAO_1: TStringField;
    SyncPesoAnimalIDENTIFICACAO_2: TStringField;
    SyncRefugoSaida: TFDQuery;
    SyncRefugoSaidaID: TIntegerField;
    SyncRefugoSaidaID_ANIMAL: TIntegerField;
    SyncRefugoSaidaID_LOTE_SAIDA: TIntegerField;
    SyncRefugoSaidaIDDENTIFICACAO_1: TStringField;
    SyncRefugoSaidaIDDENTIFICACAO_2: TStringField;
    SyncRefugoSaidaPESO: TFMTBCDField;
    SyncRefugoSaidaDATAREG: TSQLTimeStampField;
    SyncRefugoSaidaID_USUARIO: TIntegerField;
    SyncRefugoSaidaSTATUS: TIntegerField;
    SyncRefugoSaidaID_BASE_CAMPO: TIntegerField;
    SyncRefugoSaidaBASE_CAMPO_SYNC: TIntegerField;
    SyncVeiculoEmbarquePESO_BALANCAO: TFMTBCDField;
    SyncSaidaAnimalID: TIntegerField;
    SyncSaidaAnimalID_LOCAL: TIntegerField;
    SyncSaidaAnimalID_CATEGORIA: TIntegerField;
    SyncSaidaAnimalID_RACA: TIntegerField;
    SyncSaidaAnimalIDENTIFICACAO_1: TStringField;
    SyncSaidaAnimalIDENTIFICACAO_2: TStringField;
    SyncSaidaAnimalDATA_PROC: TSQLTimeStampField;
    SyncSaidaAnimalGTA_ID: TIntegerField;
    SyncSaidaAnimalIDADE_MESES: TIntegerField;
    SyncSaidaAnimalPESO_ENTRADA: TFMTBCDField;
    SyncSaidaAnimalULTIMO_PESO: TFMTBCDField;
    SyncSaidaAnimalDATA_ULTIMO_PESO: TDateField;
    SyncSaidaAnimalSTATUS: TIntegerField;
    SyncSaidaAnimalDATAREG: TSQLTimeStampField;
    SyncSaidaAnimalID_USUARIO: TIntegerField;
    SyncSaidaAnimalDATA_SAIDA: TDateField;
    SyncSaidaAnimalPESO_SAIDA: TFMTBCDField;
    SyncSaidaAnimalID_PROPRIEDADE: TIntegerField;
    SyncSaidaAnimalID_PRODUTOR: TIntegerField;
    SyncSaidaAnimalULTIMA_ALTERACAO: TSQLTimeStampField;
    SyncSaidaAnimalULTIMO_USUARIO: TIntegerField;
    SyncSaidaAnimalID_LOTESAIDA: TIntegerField;
    SyncSaidaAnimalID_VEICULO_SAIDA: TIntegerField;
    SyncSaidaAnimalORIGEM_DADOS: TStringField;
    SyncSaidaAnimalTIPO_SAIDA: TStringField;
    SyncSaidaAnimalID_MOTIVO_MORTE: TIntegerField;
    SyncSaidaAnimalID_LOTE: TIntegerField;
    SyncSaidaAnimalVALOR_COMPRA: TFMTBCDField;
    SyncSaidaAnimalVALOR_VENDA: TFMTBCDField;
    SyncSaidaAnimalID_PRODUTOR_ORIGEM: TIntegerField;
    SyncSaidaAnimalFLAG_SYNC: TIntegerField;
    SyncSaidaAnimalDATA_SYNC: TSQLTimeStampField;
    SyncSaidaAnimalDATA_LIBERACAO: TDateField;
    SyncSaidaAnimalID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    SyncSaidaAnimalDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    SyncSaidaAnimalID_CONTRATO_COMPRA: TIntegerField;
    SyncSaidaAnimalID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    SyncSaidaAnimalIDADE_MORTE: TIntegerField;
    SyncSaidaAnimalID_GTA_SAIDA: TIntegerField;
    SyncSaidaAnimalOBSERVACAO: TStringField;
    SyncSaidaAnimalTIPO_ENTRADA: TIntegerField;
    SyncSaidaAnimalPESO_ESTIMADO: TFMTBCDField;
    SyncSaidaAnimalDATA_PESO_ESTIMADO: TDateField;
    SyncSaidaAnimalVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    SyncSaidaAnimalVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    SyncSaidaAnimalID_CATEGORIA_ATUAL: TIntegerField;
    SyncSaidaAnimalCONSUMO_ACU: TFMTBCDField;
    SyncSaidaAnimalID_COMUNICADO_REIDENT: TIntegerField;
    SyncSaidaAnimalID_COMUNICADO_MORTE: TIntegerField;
    SyncSaidaAnimalOBS_MORTE: TStringField;
    SyncSaidaAnimalTIPO_MORTE: TIntegerField;
    SyncSaidaAnimalDATA_REPROCESSAMENTO: TSQLTimeStampField;
    SyncSaidaAnimalID_COM_NASCIMENTO: TIntegerField;
    SyncSaidaAnimalIDENTIFICACAO_MAE: TStringField;
    SyncSaidaAnimalCARIMBO_NASCIMENTO: TStringField;
    SyncSaidaAnimalOUTRO_ERAS: TIntegerField;
    SyncSaidaAnimalIMS_PV: TBCDField;
    SyncSaidaAnimalFLAG_SYNC_TERCEIROS: TIntegerField;
    SyncSaidaAnimalDATA_SYNC_TERCEIROS: TDateField;
    SyncSaidaAnimalID_REBANHO: TIntegerField;
    SyncSaidaAnimalPESO_ENTRADA_CONF: TFMTBCDField;
    SyncSaidaAnimalDATA_ENTRADA_CONF: TDateField;
    SyncSaidaAnimalID_CONTRATO: TIntegerField;
    SyncSaidaAnimalID_BASE_CAMPO: TIntegerField;
    SyncSaidaAnimalBASE_CAMPO_SYNC: TIntegerField;
    SyncSaidaAnimalBASE_CAMPO_DT_SYNC: TDateField;
    SyncSaidaAnimalBLOQUEIO: TIntegerField;
    SyncSaidaAnimalDATA_NASCIMENTO: TDateField;
    SyncAnimaisID: TIntegerField;
    SyncAnimaisID_LOCAL: TIntegerField;
    SyncAnimaisID_CATEGORIA: TIntegerField;
    SyncAnimaisID_RACA: TIntegerField;
    SyncAnimaisIDENTIFICACAO_1: TStringField;
    SyncAnimaisIDENTIFICACAO_2: TStringField;
    SyncAnimaisDATA_PROC: TSQLTimeStampField;
    SyncAnimaisGTA_ID: TIntegerField;
    SyncAnimaisIDADE_MESES: TIntegerField;
    SyncAnimaisPESO_ENTRADA: TFMTBCDField;
    SyncAnimaisULTIMO_PESO: TFMTBCDField;
    SyncAnimaisDATA_ULTIMO_PESO: TDateField;
    SyncAnimaisSTATUS: TIntegerField;
    SyncAnimaisDATAREG: TSQLTimeStampField;
    SyncAnimaisID_USUARIO: TIntegerField;
    SyncAnimaisDATA_SAIDA: TDateField;
    SyncAnimaisPESO_SAIDA: TFMTBCDField;
    SyncAnimaisID_PROPRIEDADE: TIntegerField;
    SyncAnimaisID_PRODUTOR: TIntegerField;
    SyncAnimaisULTIMA_ALTERACAO: TSQLTimeStampField;
    SyncAnimaisULTIMO_USUARIO: TIntegerField;
    SyncAnimaisID_LOTESAIDA: TIntegerField;
    SyncAnimaisID_VEICULO_SAIDA: TIntegerField;
    SyncAnimaisORIGEM_DADOS: TStringField;
    SyncAnimaisTIPO_SAIDA: TStringField;
    SyncAnimaisID_MOTIVO_MORTE: TIntegerField;
    SyncAnimaisID_LOTE: TIntegerField;
    SyncAnimaisVALOR_COMPRA: TFMTBCDField;
    SyncAnimaisVALOR_VENDA: TFMTBCDField;
    SyncAnimaisID_PRODUTOR_ORIGEM: TIntegerField;
    SyncAnimaisFLAG_SYNC: TIntegerField;
    SyncAnimaisDATA_SYNC: TSQLTimeStampField;
    SyncAnimaisDATA_LIBERACAO: TDateField;
    SyncAnimaisID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    SyncAnimaisDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    SyncAnimaisID_CONTRATO_COMPRA: TIntegerField;
    SyncAnimaisID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    SyncAnimaisIDADE_MORTE: TIntegerField;
    SyncAnimaisID_GTA_SAIDA: TIntegerField;
    SyncAnimaisOBSERVACAO: TStringField;
    SyncAnimaisTIPO_ENTRADA: TIntegerField;
    SyncAnimaisPESO_ESTIMADO: TFMTBCDField;
    SyncAnimaisDATA_PESO_ESTIMADO: TDateField;
    SyncAnimaisVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    SyncAnimaisVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    SyncAnimaisID_CATEGORIA_ATUAL: TIntegerField;
    SyncAnimaisCONSUMO_ACU: TFMTBCDField;
    SyncAnimaisID_COMUNICADO_REIDENT: TIntegerField;
    SyncAnimaisID_COMUNICADO_MORTE: TIntegerField;
    SyncAnimaisOBS_MORTE: TStringField;
    SyncAnimaisTIPO_MORTE: TIntegerField;
    SyncAnimaisDATA_REPROCESSAMENTO: TSQLTimeStampField;
    SyncAnimaisID_COM_NASCIMENTO: TIntegerField;
    SyncAnimaisIDENTIFICACAO_MAE: TStringField;
    SyncAnimaisCARIMBO_NASCIMENTO: TStringField;
    SyncAnimaisOUTRO_ERAS: TIntegerField;
    SyncAnimaisIMS_PV: TBCDField;
    SyncAnimaisFLAG_SYNC_TERCEIROS: TIntegerField;
    SyncAnimaisDATA_SYNC_TERCEIROS: TDateField;
    SyncAnimaisID_REBANHO: TIntegerField;
    SyncAnimaisPESO_ENTRADA_CONF: TFMTBCDField;
    SyncAnimaisDATA_ENTRADA_CONF: TDateField;
    SyncAnimaisID_CONTRATO: TIntegerField;
    SyncAnimaisID_BASE_CAMPO: TIntegerField;
    SyncAnimaisBASE_CAMPO_SYNC: TIntegerField;
    SyncAnimaisBASE_CAMPO_DT_SYNC: TDateField;
    SyncAnimaisBLOQUEIO: TIntegerField;
    SyncAnimaisDATA_NASCIMENTO: TDateField;
    SyncAnimaisPESO_CARCACA: TFMTBCDField;
    SyncAnimaisDATA_IMPORTA_CARACACA: TDateField;
    SyncAnimaisDESTINO: TStringField;
    SyncAnimaisBASE_CAMPO_TIPO_OPERACAO: TIntegerField;
    SyncAnimalExistBLOQUEIO: TIntegerField;
    SyncAnimalExistDATA_NASCIMENTO: TDateField;
    SyncAnimalExistPESO_CARCACA: TFMTBCDField;
    SyncAnimalExistDATA_IMPORTA_CARACACA: TDateField;
    SyncAnimalExistDESTINO: TStringField;
    SyncAnimalExistBASE_CAMPO_TIPO_OPERACAO: TIntegerField;
    SyncVeiculoEmbarqueGTA_ID: TIntegerField;
    SyncVeiculoEmbarquePESO_BALANCAO_PORTO: TFMTBCDField;
    SyncVeiculoEmbarquePLACA_CR: TStringField;
    SyncVeiculoEmbarqueMOTORISTA: TStringField;
    SyncVeiculoEmbarqueTIPO: TStringField;
    SyncVeiculoEmbarqueCLIENTE: TStringField;
    SyncLoteSaidaBLOQUEIO: TIntegerField;
    SyncLoteSaidaPESO_CARCACA_TOTAL: TFloatField;
    SyncLoteSaidaVALOR_TOTAL_FRIGO: TFloatField;
    SyncLoteSaidaPESO_CARCACA_IND: TFloatField;
    SyncLoteSaidaVALOR_IND_FRIGO: TFloatField;
    SyncLoteSaidaPESO_TOTAL: TFloatField;
    SyncLoteSaidaRC: TFloatField;
    SyncGTAESTOQUE_CHIP: TIntegerField;
    procedure BaseCampoReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure DetBaseCampoGTAReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure DetBaseCampoBrincosReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure SyncAnimaisMasterReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
  private
    { Private declarations }
  public
    vTipoMov,vStatusBaseCampo:integer;
    vIdPropriedadeBaseCampo,vIdOperacaoBaseCampo,vNomeProriedade,vIdLoteSaidaSync:string;
    function InsereRetornaLoteSaida(idProdOri, idPropOri, idProdDes, idPropDes,
     sData: string): string;
    procedure AbreBaseCampo(vFiltro:String);
    function  VerificaSequenciaBrinco(IdProdutor,SibovIni,SibovFIm:string):string;
    function  ValidaSisbovEstoque(IdProdutor,Sibov:string):Boolean;
    function  RetornaMaxIdBaseCampo:string;
    procedure AtualizaConfiBaseCampo(idBase,idOperacao,idPropriedade:string);
    procedure AtualizaGTABaseCampo(idBase,idGta:string);
    procedure AtualizaBrincosBaseCampo(SISBOVINI,SISBOVFIM,ID_PRODUTOR,IDBASE:string);
    procedure AbreConfigBaseCampo(idBase:string);
    procedure RetonaDadosCadBaseCampo(idBase:string);

    procedure SyncAnimaisExistentes;
    procedure SyncAnimaisNovos;
    procedure SyncAnimaisMovimentacao;
    procedure SyncAnimaisPeso;
    procedure SyncAnimaisSanidade;
    procedure SyncAnimaisReidente;
    procedure SyncAnimaisGTA;
    procedure SyncAnimaisLoteSaida;
    procedure SyncVeiculosLoteSaida(vIdLoteOld,vIdLoteNew:string);
    procedure SyncAnimaisSaidaVeiculos(vIdVeiculoOld,vIdVeiculoNew,vIdLote,vIdLoteNew:string);
    procedure SyncAnimaisRefugoSaida;

    procedure MudaFlagBaseCampo(ATabela,IDTabela:string);
    procedure FinalizaBaseCampo(ID_BASE:string);
    function  VerificaIdGTAExiste(ID_GTA:string):Boolean;
    function  RetornaMaxIdGTA:string;
    procedure AtualizaNovaGTABaseCampo(vIdOld,vIdNew,vTipo:string);
    procedure AtualizaIdLoteSaidaBaseCampo(vIdOld,vIdNew:string);
    procedure AtualizaIdVeiculoSaidaBaseCampo(vIdOld,vIdNew:string);
  end;

var
  DMBaseCampo: TDMBaseCampo;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UServiceDB, UPrincipal, USeviceConfinamento;

{$R *.dfm}

{ TDMBaseCampo }



procedure TDMBaseCampo.AbreBaseCampo(vFiltro:String);
begin
 with BaseCampo,BaseCampo.SQL do
 begin
   Clear;
   Add('select');
   Add('a.*,');
   Add('case');
   Add(' when a.status=1 then ''Aberta''');
   Add(' when a.status=2 then ''Finalizada''');
   Add('end statusStr,');
   Add('case');
   Add(' when a.id_operacao=1 then ''Movimentação / Pesagem''');
   Add(' when a.id_operacao=2 then ''Novos Animais''');
   Add(' when a.id_operacao=3 then ''Saída Venda / Abate''');
   Add(' when a.id_operacao=4 then ''Multitarefas''');
   Add('end Movimentacao');
   Add('from base_campo a');
   Add('where status>-1 and id_propriedade='+serviceDB.vIdPropriedade);
   Add(vFiltro);
   Add('order by id desc');
   Open;
 end;
end;

procedure TDMBaseCampo.AbreConfigBaseCampo(idBase:string);
begin
 with qryAuxBC,qryAuxBC.SQL do
 begin
   Clear;
   Add('select * from config');
   Add('where ID_BASE_CAMPO='+idBase);
   Open;
   vIdPropriedadeBaseCampo := FieldByName('ID_PROPRIEDADE').AsString;
   vIdOperacaoBaseCampo    := FieldByName('TIPO_OPERACAO_BC').AsString;
   vStatusBaseCampo        := FieldByName('BASE_CAMPO_STATUS').AsInteger;
 end;
end;

procedure TDMBaseCampo.AtualizaBrincosBaseCampo(SISBOVINI, SISBOVFIM,ID_PRODUTOR,IDBASE: string);
var
 vManejoIni,vManejoFim:string;
 qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCon;
 vManejoIni := (copy(SISBOVINI,9,6));
 vManejoFim := (copy(SISBOVFIM,9,6));

 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('update estoque_brincos s set s.id_base_campo='+IDBASE);
   Add('where s.usado=0 and s.manejo between '+vManejoIni+' and '+vManejoFim);
   Add('and s.id_pedido in(select p.id from pedido_brincos p');
   Add('where p.status=1 and p.id_produtor='+ID_PRODUTOR+')');
   try
    qryAux.ExecSQL;
   except
     on E : Exception do
      ShowMessage('Erro ao atualizar Estoque Brinco Base Campo : '+E.Message);
   end;
 end;
 qryAux.Free;
end;

procedure TDMBaseCampo.AtualizaConfiBaseCampo(idBase,idOperacao,idPropriedade:string);
begin
  serviceDB.ConectaBDCAMPO;
  qryAuxBC.Connection :=  serviceDB.FCBaseCampo;
  with qryAuxBC,qryAuxBC.SQL do
  begin
    Clear;
    Add('update config set ID_BASE_CAMPO='+idBase);
    Add(',TIPO_OPERACAO_BC='+idOperacao);
    Add('where ID_PROPRIEDADE='+idPropriedade);
    try
     ExecSQL;
    except
     on E : Exception do
      ShowMessage('Erro ao atualizar base campo : '+E.Message);
    end;
  end;
end;

procedure TDMBaseCampo.AtualizaGTABaseCampo(idBase, idGta: string);
var
 qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCon;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('update gta g set id_base_campo=:idBaseCampo');
   Add('where g.id=:gtaInd');
   ParamByName('idBaseCampo').AsInteger := strToInt(IDBASE);
   ParamByName('gtaInd').AsInteger      := strToInt(idGta);
   try
    qryAux.ExecSQL;
   except
     on E : Exception do
      ShowMessage('Erro ao atualizar GTA Base Campo : '+E.Message);
   end;
 end;
 qryAux.Free;
end;

procedure TDMBaseCampo.AtualizaIdLoteSaidaBaseCampo(vIdOld, vIdNew: string);
var
 qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCBaseCampo;
 vIdLoteSaidaSync  := vIdNew;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('update lote_saida set id='+vIdNew);
   Add('where id='+vIdOld);
   try
    qryAux.ExecSQL;
   except
     on E : Exception do
      ShowMessage('Erro ao atualizar Lote de Saida : '+E.Message);
   end;

   Clear;
   Add('update veiculos_embarque set id_lotesaida='+vIdNew);
   Add('where id_lotesaida='+vIdOld);
   try
    qryAux.ExecSQL;
   except
     on E : Exception do
      ShowMessage('Erro ao atualizar Lote de Saida : '+E.Message);
   end;

   Clear;
   Add('update animal set id_lotesaida='+vIdNew);
   Add('where id_lotesaida='+vIdOld);
   try
    qryAux.ExecSQL;
   except
     on E : Exception do
      ShowMessage('Erro ao atualizar Lote de Saida : '+E.Message);
   end;

 end;
 qryAux.Free;
end;

procedure TDMBaseCampo.AtualizaIdVeiculoSaidaBaseCampo(vIdOld, vIdNew: string);
var
 qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCBaseCampo;
 with qryAux,qryAux.SQL do
 begin
//   Clear;
//   Add('update veiculos_embarque set id='+vIdNew);
//   Add('where id='+vIdOld);
//   try
//    qryAux.ExecSQL;
//   except
//     on E : Exception do
//      ShowMessage('Erro ao atualizar Lote de Saida : '+E.Message);
//   end;

   Clear;
   Add('update animal set id_veiculo_saida='+vIdNew);
   Add('where id_veiculo_saida='+vIdOld);
   Add('and id_lotesaida='+vIdLoteSaidaSync);
   try
    qryAux.ExecSQL;
   except
     on E : Exception do
      ShowMessage('Erro ao atualizar Lote de Saida : '+E.Message);
   end;

 end;
 qryAux.Free;
end;

procedure TDMBaseCampo.AtualizaNovaGTABaseCampo(vIdOld, vIdNew,vTipo: string);
var
 vQryAuxB:TFDQuery;
begin
 vQryAuxB:=TFDQuery.Create(nil);
 vQryAuxB.Connection := serviceDB.FCBaseCampo;
 with vQryAuxB,vQryAuxB.SQL do
 begin
   Clear;
   Add('update GTA set ID='+vIdNew);
   Add('WHERE ID='+vIdOld);
   ExecSQL;

   Clear;
   Add('update ANIMAL set ');
   if vTipo='E' then
    Add('GTA_ID='+vIdNew);
   if vTipo='S' then
    Add('ID_GTA_SAIDA='+vIdNew);
   Add('WHERE GTA_ID='+vIdOld);
   ExecSQL;
 end;
 vQryAuxB.Free;
end;

procedure TDMBaseCampo.BaseCampoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TDMBaseCampo.DetBaseCampoBrincosReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TDMBaseCampo.DetBaseCampoGTAReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TDMBaseCampo.FinalizaBaseCampo(ID_BASE: string);
var
 vQryAux,vQryAuxB:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;

 vQryAuxB:=TFDQuery.Create(nil);
 vQryAuxB.Connection := serviceDB.FCBaseCampo;

 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('update base_campo set ');
   Add('status=2,');
   Add('data_sync=current_date,');
   Add('hora_sync=current_time');
   Add('where id='+ID_BASE);
   ExecSQL;

   Clear;
   Add('UPDATE ESTOQUE_BRINCOS SET ID_BASE_CAMPO=0');
   Add('WHERE ID_BASE_CAMPO='+ID_BASE);
   ExecSQL;

   Clear;
   Add('UPDATE GTA SET ID_BASE_CAMPO=0');
   Add('WHERE ID_BASE_CAMPO='+ID_BASE);
   ExecSQL;

 end;

 with vQryAuxB,vQryAuxB.SQL do
 begin
   Clear;
   Add('update Config set ');
   Add('BASE_CAMPO_STATUS=2');
   ExecSQL;
 end;
 vQryAux.Free;
 vQryAuxB.Free;
end;

procedure TDMBaseCampo.MudaFlagBaseCampo(ATabela,IDTabela: string);
var
 qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCBaseCampo;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('UPDATE '+ATabela+' SET');
   Add('BASE_CAMPO_SYNC=1,');
   Add('BASE_CAMPO_DT_SYNC=CURRENT_DATE');
   Add('WHERE ID='+IDTabela);
   ExecSQL;
 end;
 qryAux.Free;
end;

procedure TDMBaseCampo.RetonaDadosCadBaseCampo(idBase: string);
begin
 with qryAuxBaseCampo,qryAuxBaseCampo.SQL do
 begin
   Clear;
   Add('select');
   Add(' A.*,');
   Add(' CASE STATUS');
   Add(' WHEN 1 THEN ''ABERTA''');
   Add('  WHEN 2 THEN ''FINALIZADA''');
   Add(' END STATUS_STR,');
   Add(' CASE id_operacao');
   Add('  WHEN 1 THEN ''Movimentação / Pesagem''');
   Add('  WHEN 2 THEN ''Novos Animais''');
   Add('  WHEN 3 THEN ''Saída Venda / Abate''');
   Add('  WHEN 4 THEN ''Multitarefas''');
   Add(' END MOV_STR');
   Add('from base_campo  A');
   Add('where id='+idBase);
   Open;
   vTipoMov                           := FieldByName('ID_OPERACAO').AsInteger;
   frmPrincipal.edtIdBaseCampo.Text   := idBase;
   frmPrincipal.edtDataBaseCampo.Text := FieldByName('DATA_CRIACAO').AsString;
   frmPrincipal.edtMovBaseCampo.Text  := FieldByName('MOV_STR').AsString;

   Clear;
   Add('SELECT count(*) qtd  FROM animal_peso A');
   Add('WHERE id_base_campo='+idBase);
   Add('and (base_campo_sync is null or base_campo_sync=0)');
   Open;
   frmPrincipal.edtPesagens.Text   := FieldByName('qtd').AsString;


   Clear;
   Add('SELECT count(*) qtd   FROM movimentacao_animal A');
   Add('WHERE id_base_campo='+idBase);
   Add('and (base_campo_sync is null or base_campo_sync=0)');
   Open;
   frmPrincipal.edtMovimentacao.Text   := FieldByName('qtd').AsString;

   Clear;
   Add('SELECT count(*) qtd    FROM animal A');
   Add('WHERE id_base_campo='+idBase);
   Add('and a.status=2');
   Add('and (base_campo_sync is null or base_campo_sync=0)');
   Open;
   frmPrincipal.edtSaida.Text   := FieldByName('qtd').AsString;

   Clear;
   Add('SELECT count(*) qtd  FROM LOG_REIDENTIFICACAO');
   Add('WHERE id_base_campo='+idBase);
   Add('and (base_campo_sync is null or base_campo_sync=0)');
   Open;
   frmPrincipal.edtReidentificacao.Text   := FieldByName('qtd').AsString;


   Clear;
   Add('SELECT count(*) qtd  FROM ANIMAL_SANIDADE');
   Add('WHERE id_base_campo='+idBase);
   Add('AND (base_campo_sync is null or base_campo_sync=0)');
   Open;
   frmPrincipal.edtSanidade.Text   := FieldByName('qtd').AsString;;

   if serviceDB.vRastreada='0' then
   begin
    Clear;
    Add('SELECT count(*) qtd  FROM GTA');
    Add('WHERE id_base_campo='+idBase);
    Add('AND (base_campo_sync is null or base_campo_sync=0)');
    Open;
    frmPrincipal.edtGTA.Text   := FieldByName('qtd').AsString;
   end
   else
    frmPrincipal.edtGTA.Text   :='0';

   Clear;
   Add('select count(*) qtd from lote_saida');
   Add('where id in(');
   Add('SELECT  distinct(a.id)  FROM lote_saida A');
   Add('join animal c on c.id_lotesaida=a.id');
   Add('WHERE a.id_base_campo='+idBase);
   Add('AND (A.base_campo_sync is null or A.base_campo_sync=0))');
   Open;
   frmPrincipal.edtLoteSaidaBC.Text   := FieldByName('qtd').AsString;;

   Clear;
   Add('SELECT  count(*) qtd  FROM veiculos_embarque A');
   Add('WHERE a.status=1 and a.id_base_campo='+idBase);
   Add('and a.lotacao>0 AND (A.base_campo_sync is null or A.base_campo_sync=0)');
   Open;
   frmPrincipal.edtVeiculosEmbarque.Text   := FieldByName('qtd').AsString;

   Clear;
   Add('SELECT count(*) qtd FROM PROC_VERIFICA_NOVOS_ANIMAIS(');
   Add(QuotedStr(serviceDB.vPathBDMaster)+','+frmPrincipal.vIdBaseCampo+')');
   Open;
   frmPrincipal.edtBaseAnimais.Text   := FieldByName('qtd').AsString;

   Clear;
   Add('SELECT count(*) qtd FROM PROC_VERIFICA_ANIMAIS_EXIST(');
   Add(QuotedStr(serviceDB.vPathBDMaster)+','+frmPrincipal.vIdBaseCampo+')');
   Open;
   frmPrincipal.edtAnimalExist.Text   := FieldByName('qtd').AsString;

   Clear;
   Add('SELECT  count(*) qtd  FROM REFUGO_SAIDA A');
   Add('WHERE a.id_base_campo='+frmPrincipal.vIdBaseCampo);
   Add('AND A.base_campo_sync=0');
   Open;
   frmPrincipal.edtRefugo.Text   := FieldByName('qtd').AsString;


 end;
end;

function TDMBaseCampo.RetornaMaxIdBaseCampo: string;
var
qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCon;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT max(id) maxiD FROM base_campo');
   Add('where id_propriedade='+serviceDB.vIdPropriedade);
   Open;
   Result := qryAux.FieldByName('maxiD').AsString;
 end;
 qryAux.Free;
end;

function TDMBaseCampo.RetornaMaxIdGTA: string;
var
qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCon;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT max(id) maxiD FROM GTA');
   Add('where id_base_campo='+frmPrincipal.vIdBaseCampo);
   Open;
   Result := qryAux.FieldByName('maxiD').AsString;
 end;
 qryAux.Free;
end;

procedure TDMBaseCampo.SyncAnimaisExistentes;
var
 x,i:integer;
 vField,vDataReProc :string;
begin
 TThread.Synchronize(nil, procedure
 begin
  frmPrincipal.mlogSync.Lines.Add('Sincronizando Animais');
 end);
 SyncAnimalExist.Connection := serviceDB.FCBaseCampo;
 with SyncAnimalExist,SyncAnimalExist.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL A');
   Add('WHERE ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Add('AND base_campo_sync=0');
   Add('AND BASE_CAMPO_TIPO_OPERACAO>0');
   Open;
   I:=1;
   SyncAnimalExist.First;
   while not SyncAnimalExist.Eof do
   begin
     TThread.Synchronize(nil, procedure
     begin
      frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtAnimalExist.Text);
     end);
     vDataReProc := SyncAnimalExistDATA_REPROCESSAMENTO.AsString;
     if vDataReProc.Length=0 then
      vDataReProc := SyncAnimalExistDATAREG.AsString;


     serviceDB.UpdateAnimalBaseCampo(
     SyncAnimalExistID.AsString,
     SyncAnimalExistID_LOCAL.AsString,
     SyncAnimalExistID_CATEGORIA.AsString,
     SyncAnimalExistID_Raca.AsString,
     SyncAnimalExistIDENTIFICACAO_1.AsString,
     SyncAnimalExistIdentificacao_2.AsString,
     SyncAnimalExistDATA_PROC.AsString,
     SyncAnimalExistPESO_ENTRADA.AsString,
     SyncAnimalExistULTIMO_PESO.AsString,
     SyncAnimalExistDATA_ULTIMO_PESO.AsString,
     SyncAnimalExistOBSERVACAO.AsString,
     SyncAnimalExistID_REBANHO.AsString,
     SyncAnimalExistID_LOTE.AsString,
     SyncAnimalExistID_CONTRATO_COMPRA.AsString,
     SyncAnimalExistPESO_ENTRADA_CONF.AsString,
     SyncAnimalExistDATA_ENTRADA_CONF.AsString,
     frmPrincipal.vIdBaseCampo,
     vDataReProc);
     DMBaseCampo.MudaFlagBaseCampo('animal',SyncAnimalExistID.AsString);
     inc(i);
     SyncAnimalExist.Next;
   end;
 end;
end;

procedure TDMBaseCampo.SyncAnimaisGTA;
var
 i:integer;
 vMaxIdGTAMaster:string;
begin
 with SyncGTA,SyncGTA.SQL do
 begin
   Clear;
   Add('SELECT * FROM GTA A');
   Add('WHERE id_base_campo='+frmPrincipal.vIdBaseCampo);
   Add('and (A.base_campo_sync is null or A.base_campo_sync=0)');
   Open;
   i:=0;

   TThread.Synchronize(nil, procedure
   begin
    frmPrincipal.mlogSync.Lines.Add('Sincronizando GTA');
   end);
   while not SyncGTA.eof do
   begin
     TThread.Synchronize(nil, procedure
     begin
      frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtGTA.Text);
     end);

     IF serviceDB.VerificaGTAExiste(SyncGTANumero.AsString,
      SyncGTASerie.AsString,SyncGTATIPO.AsString) then
     begin
      try
       serviceDB.InsereGta(
        SyncGTANumero.AsString.QuotedString,
        SyncGTASerie.AsString.QuotedString,
        SyncGTAUF.AsString.QuotedString,
        FormatDateTime('mm/dd/yyyy',SyncGTADATA_EMISSAO.AsDateTime).QuotedString,
        FormatDateTime('mm/dd/yyyy',SyncGTADATA_VALIDADE.AsDateTime).QuotedString,
        SyncGTAZERO_A_12_FEMEA.AsString,
        SyncGTAZERO_A_12_MACHO.AsString,
        SyncGTATREZE_A_24_FEMEA.AsString,
        SyncGTATREZE_A_24_MACHO.AsString,
        SyncGTAVITE_CINCO_A_36_FEMEA.AsString,
        SyncGTAVITE_CINCO_A_36_MACHO.AsString,
        SyncGTAMAIS_36_FEMEA.AsString,
        SyncGTAMAIS_36_MACHO.AsString,
        SyncGTAUSER_ID.AsString,
        SyncGTATIPO.AsString.QuotedString,
        SyncGTAID_PROPRIEDADE_ORIGEM.AsString,
        SyncGTAID_PRODUTOR_ORIGEM.AsString,
        SyncGTAID_PROPRIEDADE_DESTINO.AsString,
        SyncGTAID_PRODUTOR_DESTINO.AsString,
        StringReplace(SyncGTAVALOR_CAB.AsString,',','.',[rfReplaceAll]),
        SyncGTARASTREADO.AsString,
        SyncGTAVALOR_FRETE_CAB.AsString,
        SyncGTAVALOR_COMISSAO_CAB.AsString,
        SyncGTAPESO_B_ORIGEM.AsString,
        SyncGTAPESO_B_DESTINO.AsString,
        SyncGTAID_COMPRADOR.AsString,
        SyncGTAID_VEICULO_SAIDA.AsString,
        SyncGTAESTOQUE_CHIP.AsString);
        vMaxIdGTAMaster := DMBaseCampo.RetornaMaxIdGTA;
        if vMaxIdGTAMaster<>SyncGTAID.AsString then
        begin
          AtualizaNovaGTABaseCampo(SyncGTAID.AsString,vMaxIdGTAMaster,SyncGTATIPO.AsString);
          DMBaseCampo.MudaFlagBaseCampo('GTA',vMaxIdGTAMaster);
        end
        else
         DMBaseCampo.MudaFlagBaseCampo('GTA',SyncGTAID.AsString);
        inc(i);
       SyncGTA.Next;
      except
        on E : Exception do
         frmPrincipal.MyShowMessage('Erro ao sincronizar GTA'+E.Message,false);
      end;
     end
     else
     begin
      try
       serviceDB.UpdateGta(
        SyncGTAID.AsString,
        SyncGTANumero.AsString.QuotedString,
        SyncGTASerie.AsString.QuotedString,
        SyncGTAUF.AsString.QuotedString,
        FormatDateTime('mm/dd/yyyy',SyncGTADATA_EMISSAO.AsDateTime).QuotedString,
        FormatDateTime('mm/dd/yyyy',SyncGTADATA_VALIDADE.AsDateTime).QuotedString,
        SyncGTAZERO_A_12_FEMEA.AsString,
        SyncGTAZERO_A_12_MACHO.AsString,
        SyncGTATREZE_A_24_FEMEA.AsString,
        SyncGTATREZE_A_24_MACHO.AsString,
        SyncGTAVITE_CINCO_A_36_FEMEA.AsString,
        SyncGTAVITE_CINCO_A_36_MACHO.AsString,
        SyncGTAMAIS_36_FEMEA.AsString,
        SyncGTAMAIS_36_MACHO.AsString,
        serviceDB.vIdUserLogado,
        SyncGTATIPO.AsString,
        SyncGTAID_PROPRIEDADE_ORIGEM.AsString,
        SyncGTAID_PRODUTOR_ORIGEM.AsString,
        SyncGTAID_PROPRIEDADE_DESTINO.AsString,
        SyncGTAID_PRODUTOR_DESTINO.AsString,
        StringReplace(SyncGTAVALOR_CAB.AsString,',','.',[rfReplaceAll]),
        SyncGTARASTREADO.AsString,
        SyncGTAVALOR_FRETE_CAB.AsString,
        SyncGTAVALOR_COMISSAO_CAB.AsString,
        StringReplace(SyncGTAPESO_B_ORIGEM.AsString,',','.',[rfReplaceAll]),
        StringReplace(SyncGTAPESO_B_DESTINO.AsString,',','.',[rfReplaceAll]),
        SyncGTAID_COMPRADOR.AsString,
        SyncGTAID_VEICULO_SAIDA.AsString,
        SyncGTAID_VEICULO_SAIDA.AsString);
        DMBaseCampo.MudaFlagBaseCampo('GTA',SyncGTAID.AsString);
        inc(i);
       SyncGTA.Next;
      except
        on E : Exception do
         frmPrincipal.MyShowMessage('Erro ao sincronizar GTA'+E.Message,false);
      end;
     end;
   end;
 end;
end;

procedure TDMBaseCampo.SyncAnimaisMasterReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TDMBaseCampo.SyncAnimaisMovimentacao;
var
 i:integer;
begin
 with SyncMoviAnimal,SyncMoviAnimal.SQL do
 begin
   Clear;
   Add('SELECT A.*,IDENTIFICACAO_1,IDENTIFICACAO_2 FROM movimentacao_animal A');
   Add('JOIN ANIMAL B ON A.id_animal=B.ID');
   Add('WHERE a.id_base_campo='+frmPrincipal.vIdBaseCampo);
   Add('and (A.base_campo_sync is null or A.base_campo_sync=0)');
   Open;
   i:=1;
   TThread.Synchronize(nil, procedure
   begin
    frmPrincipal.mlogSync.Lines.Add('Sincronizando Movimentação');
   end);
   while not SyncMoviAnimal.eof do
   begin
     TThread.Synchronize(nil, procedure
     begin
      frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtMovimentacao.Text);
     end);
     serviceDB.InsereMovimentacaobc(
      SyncMoviAnimalIDENTIFICACAO_1.AsString,
      SyncMoviAnimalIDENTIFICACAO_2.AsString,
      '9000',
      FormatDateTime('mm/dd/yyyy',SyncMoviAnimalDATA.AsDateTime),
      SyncMoviAnimalID_PASTO_ORIGEM.AsString,
      SyncMoviAnimalID_PASTO_DESTINO.AsString,
      frmPrincipal.vIdBaseCampo);
      DMBaseCampo.MudaFlagBaseCampo('movimentacao_animal',SyncMoviAnimalID.AsString);
     SyncMoviAnimal.Next;
     inc(I);
   end;
 end;

end;

procedure TDMBaseCampo.SyncAnimaisNovos;
var
 i,vTipoCurral:integer;
 vIdLote:string;
begin
 with SyncAnimais,SyncAnimais.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL A');
   Add('WHERE ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Add('AND base_campo_sync=0');
   Add('AND BASE_CAMPO_TIPO_OPERACAO=0');
   Open;
 end;
  TThread.Synchronize(nil, procedure
  begin
   frmPrincipal.mlogSync.Lines.Add('Sincronizando Animais');
  end);
  I:=1;
  while not SyncAnimais.Eof do
  begin
   vTipoCurral := strToInt(ServiceConf.RetornaTipoCurral(SyncAnimaisID_LOCAL.AsString));
   if vTipoCurral=1 then
   begin
   if ServiceConf.VerificaLoteAtivo(SyncAnimaisID_LOCAL.AsString) then
    begin
      frmPrincipal.MyShowMessage('Curral não posso lote nutricional, deseja criar?',true);
      case frmPrincipal.vConfirma of
        1:
        begin
            try
             ServiceConf.CriarLoteNutricional(SyncAnimaisID_LOCAL.AsString,FormatDateTime('mm/dd/yyyy',SyncAnimaisDATA_PROC.AsDateTime),'0');
            except
            on E : Exception do
             begin
               frmPrincipal.MyShowMessage('Exception class name = '+E.ClassName,false);
               frmPrincipal.MyShowMessage('Exception message = '+E.Message,false);
             end;
            end;
        end;
        2:
         begin
           frmPrincipal.MyShowMessage('Operação Abortada',false);
         end;
      end;
    end
   end;
   vIdLote := ServiceConf.RetornaLoteLocal(SyncAnimaisID_LOCAL.AsString);
   TThread.Synchronize(nil, procedure
   begin
     frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtBaseAnimais.Text);
   end);
   serviceDB.InsereAnimalBaseCampo(
    SyncAnimaisID_LOCAL.AsString,
    SyncAnimaisID_CATEGORIA.AsString,
    SyncAnimaisID_Raca.AsString,
    FormatDateTime('mm/dd/yyyy',SyncAnimaisDATA_PROC.AsDateTime),
    SyncAnimaisIDADE_MESES.AsString,
    StringReplace(SyncAnimaisPESO_ENTRADA.AsString,',','.',[rfReplaceAll]),
    SyncAnimaisID_PRODUTOR.AsString,
    SyncAnimaisID_PRODUTOR_ORIGEM.AsString,
    SyncAnimaisGTA_ID.AsString,
    SyncAnimaisOBSERVACAO.AsString,
    SyncAnimaisIDENTIFICACAO_1.AsString,
    SyncAnimaisIDENTIFICACAO_2.AsString,
    SyncAnimaisVALOR_COMPRA.AsString,
    '1',
    'COMPRA',
    SyncAnimaisID_REBANHO.AsString,
    vIdLote,
    SyncAnimaisID_CONTRATO.AsString,
    intToStr(vTipoCurral),
    SyncAnimaisDATAREG.AsString);
    DMBaseCampo.MudaFlagBaseCampo('animal',SyncAnimaisID.AsString);
    inc(i);
    SyncAnimais.Next;
  end;
end;

procedure TDMBaseCampo.SyncAnimaisPeso;
var
 I:integer;
begin
 with SyncPesoAnimal,SyncPesoAnimal.SQL do
 begin
   Clear;
   Add('SELECT A.*,IDENTIFICACAO_1,IDENTIFICACAO_2 FROM animal_peso A');
   Add('JOIN ANIMAL B ON A.id_animal=B.ID');
   Add('WHERE A.id_base_campo='+frmPrincipal.vIdBaseCampo);
   Add('AND A.base_campo_sync=0');
   Open;
    TThread.Synchronize(nil, procedure
    begin
     frmPrincipal.mlogSync.Lines.Add('Sincronizando Pesagens');
    end);
   I :=1;
   while not SyncPesoAnimal.eof do
   begin
      TThread.Synchronize(nil, procedure
      begin
       frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtPesagens.Text);
      end);
      serviceDB.InserePesoBC(
       SyncPesoAnimalIDENTIFICACAO_1.AsString,
       SyncPesoAnimalIDENTIFICACAO_2.AsString,
       serviceDB.vIdUserLogado,
       StringReplace(SyncPesoAnimalPESO.AsString,',','.',[rfReplaceAll]) ,
       SyncPesoAnimalTIPO.AsString,
       SyncPesoAnimalID_Produtor.AsString,
       '0',
       SyncPesoAnimalID_Local.AsString,
       FormatDateTime('mm/dd/yyyy',SyncPesoAnimalDATA.AsDateTime).QuotedString,
       frmPrincipal.vIdBaseCampo);
       DMBaseCampo.MudaFlagBaseCampo('animal_peso',SyncPesoAnimalID.AsString);
       inc(i);
     SyncPesoAnimal.Next;
   end;
 end;
end;

procedure TDMBaseCampo.SyncAnimaisRefugoSaida;
var
 I:Integer;
begin
 with SyncRefugoSaida,SyncRefugoSaida.SQL do
 begin
   Clear;
   Add('SELECT * FROM REFUGO_SAIDA A');
   Add('WHERE A.id_base_campo='+frmPrincipal.vIdBaseCampo);
   Add('AND A.base_campo_sync=0');
   Open;
    TThread.Synchronize(nil, procedure
    begin
     frmPrincipal.mlogSync.Lines.Add('Sincronizando Refugos');
    end);
   I :=1;
   while not SyncRefugoSaida.eof do
   begin
      TThread.Synchronize(nil, procedure
      begin
       frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtRefugo.Text);
      end);
      serviceDB.InsereRefugoSaidaBC(
       SyncRefugoSaidaID_ANIMAL.AsString,
       SyncRefugoSaidaID_LOTE_SAIDA.AsString,
       SyncRefugoSaidaIDDENTIFICACAO_1.AsString,
       SyncRefugoSaidaIDDENTIFICACAO_2.AsString,
       SyncRefugoSaidaPESO.AsString,
       frmPrincipal.vIdBaseCampo,
       SyncRefugoSaidaDATAREG.AsString);
       DMBaseCampo.MudaFlagBaseCampo('REFUGO_SAIDA',SyncRefugoSaidaID.AsString);
       inc(i);
     SyncRefugoSaida.Next;
   end;
 end;
end;

procedure TDMBaseCampo.SyncAnimaisReidente;
var
 I:integer;
begin
  with SyncReident,SyncReident.SQL do
  begin
   Clear;
   Add('SELECT *  FROM LOG_REIDENTIFICACAO');
   Add('WHERE id_base_campo='+frmPrincipal.vIdBaseCampo);
   Add('and base_campo_sync is null or base_campo_sync=0');
   Open;
   TThread.Synchronize(nil, procedure
   begin
    frmPrincipal.mlogSync.Lines.Add('Sincronizando Reidentificação');
   end);
   I :=1;
   while not SyncReident.eof do
   begin
      TThread.Synchronize(nil, procedure
      begin
       frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtSanidade.Text);
      end);
      serviceDB.InsereReidentificacaoMovimentacao(
       SyncReidentid_Animal.AsString,
       '1',
       SyncReidentANTIGA.AsString,
       SyncReidentNOVA.AsString,
       frmPrincipal.vIdBaseCampo);
       DMBaseCampo.MudaFlagBaseCampo('LOG_REIDENTIFICACAO',SyncReidentID.AsString);
       inc(i);
     SyncReident.Next;
   end;
 end;
end;

procedure TDMBaseCampo.SyncAnimaisLoteSaida;
var
 I:integer;
 vLoteSaida:string;
begin
   with SyncLoteSaida,SyncLoteSaida.SQL do
   begin
     Clear;
     Add('select * from lote_saida');
     Add('where id in(');
     Add('SELECT  distinct(a.id)  FROM lote_saida A');
     Add('join animal c on c.id_lotesaida=a.id');
     Add('WHERE a.id_base_campo='+frmPrincipal.vIdBaseCampo);
     Add('AND (A.base_campo_sync is null or A.base_campo_sync=0))');
     Open;
     TThread.Synchronize(nil, procedure
     begin
      frmPrincipal.mlogSync.Lines.Add('Sincronizando Saídas');
     end);
     I :=1;
     while not SyncLoteSaida.eof do
     begin
        TThread.Synchronize(nil, procedure
        begin
         frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtLoteSaidaBC.Text);
        end);
        try
          vLoteSaida := InsereRetornaLoteSaida(
          SyncLoteSaidaID_PRODUTOR_ORIGEM.AsString,
          SyncLoteSaidaID_ORIGEM.AsString,
          SyncLoteSaidaID_PRODUTOR_DESTINO.AsString,
          SyncLoteSaidaID_DESTINO.AsString,
          dateToStr(SyncLoteSaidaDATA_EMBARQUE.AsDateTime));
          DMBaseCampo.MudaFlagBaseCampo('lote_saida',SyncLoteSaidaID.AsSTring);
          inc(i);
        except
         on E : Exception do
          ShowMessage('Erro Sincronizar lote saida : '+E.Message);
        end;
        DMBaseCampo.SyncVeiculosLoteSaida(SyncLoteSaidaID.AsSTring,vLoteSaida);
        SyncLoteSaida.Next;
     end;
 end;
end;

function TDMBaseCampo.InsereRetornaLoteSaida(idProdOri, idPropOri, idProdDes, idPropDes,
  sData: string): string;
var
 vQryAux :TFDQuery;
 vMax,vIdLoteCampo:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO LOTE_SAIDA(ID_PRODUTOR_ORIGEM,ID_ORIGEM,ID_PRODUTOR_DESTINO,ID_DESTINO,DATA_EMBARQUE,ID_BASE_CAMPO)');
   Add('values(:ID_PRODUTOR_ORIGEM,:ID_ORIGEM,:ID_PRODUTOR_DESTINO,:ID_DESTINO,:DATA_EMBARQUE,:ID_BASE_CAMPO)');
   ParamByName('ID_PRODUTOR_ORIGEM').AsString  :=idProdOri;
   ParamByName('ID_ORIGEM').AsString           :=idPropOri;
   ParamByName('ID_PRODUTOR_DESTINO').AsString :=idProdDes;
   ParamByName('ID_DESTINO').AsString          :=idPropDes;
   ParamByName('DATA_EMBARQUE').AsDate         :=strToDate(sData);
   ParamByName('ID_BASE_CAMPO').AsString       :=frmPrincipal.vIdBaseCampo;
   try
     ExecSQL;
     Clear;
     Add('SELECT MAX(ID) MAXID FROM LOTE_SAIDA WHERE ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
     Open;
     Result := FieldByName('MAXID').AsString;
   except
     on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;


procedure TDMBaseCampo.SyncAnimaisSaidaVeiculos(vIdVeiculoOld,vIdVeiculoNew,vIdLote,vIdLoteNew: string);
var
 I:integer;
begin
  with SyncSaidaAnimal,SyncSaidaAnimal.SQL do
   begin
     Clear;
     Add('SELECT *  FROM animal A');
     Add('WHERE id_base_campo='+frmPrincipal.vIdBaseCampo);
     Add('and a.status=2 and ID_VEICULO_SAIDA='+vIdVeiculoOld);
     Add('and (base_campo_sync is null or base_campo_sync=0)');
     Add('and id_lotesaida='+vIdLote);
     Open;
     TThread.Synchronize(nil, procedure
     begin
      frmPrincipal.mlogSync.Lines.Add('Sincronizando Animais Saida');
     end);
     I :=1;
     while not SyncSaidaAnimal.eof do
     begin
       TThread.Synchronize(nil, procedure
       begin
         frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtSaida.Text);
       end);
        try
          serviceDB.UpdateAnimalSaidaBaseCampo(
           SyncSaidaAnimalId.AsString,
           serviceDB.vIdUserLogado,
           vIdVeiculoNew,
           SyncSaidaAnimalPESO_SAIDA.AsString,
           vIdLoteNew,
           SyncSaidaAnimalID_PRODUTOR.AsString,
           SyncSaidaAnimalID_LOCAL.AsString,
           SyncSaidaAnimalOBSERVACAO.AsString,
           SyncSaidaAnimalDATA_ULTIMA_ALTERACAO.AsString,
           SyncSaidaAnimalID_ULTIMO_USUARIO_ALTERACAO.AsString,
           SyncSaidaAnimalDATA_SAIDA.AsString);

          inc(i);
        except
         on E : Exception do
          ShowMessage('Erro Sincronizar Animal Saida : '+E.Message);
        end;
        DMBaseCampo.MudaFlagBaseCampo('animal',SyncSaidaAnimalID.AsString);
        SyncSaidaAnimal.Next;
     end;
 end;
end;

procedure TDMBaseCampo.SyncAnimaisSanidade;
var
 I:integer;
 vQryAux : TFDQuery;
 vId,IDENTIFICACAO_1,IDENTIFICACAO_2,vIdAnimal:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;
 with SyncSanidade,SyncSanidade.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL_SANIDADE A');
   Add('JOIN ANIMAL B ON A.id_animal=B.ID');
   Add('WHERE a.id_base_campo='+frmPrincipal.vIdBaseCampo);
   Add('and a.base_campo_sync=0');
   Open;
   TThread.Synchronize(nil, procedure
   begin
    frmPrincipal.mlogSync.Lines.Add('Sincronizando Sanidade');
   end);
   I :=1;
   while not SyncSanidade.eof do
   begin
      vid := SyncSanidade.FieldByName('id').AsString;

      TThread.Synchronize(nil, procedure
      begin
        frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtSanidade.Text);
      end);
      with vQryAux,vQryAux.SQL do
      begin
       Clear;
       Add('select MAX(ID)MAX_ID from animal');
       Add('where status<>-1');
       if IDENTIFICACAO_1.Length>0 then
        Add('and identificacao_1='+IDENTIFICACAO_1.QuotedString);
       if IDENTIFICACAO_2.Length>0 then
        Add('and identificacao_2='+IDENTIFICACAO_2.QuotedString);
       Open;
       vIdAnimal := FieldByName('MAX_ID').AsString;
       if vIdAnimal.LENGTH>0 then
       begin
         Clear;
         Add('INSERT INTO ANIMAL_SANIDADE');
         Add('(ID_ANIMAL, ID_FARMACO, ID_PROTOCOLO, DOSE_ML, ID_PROPRIEDAE,');
         Add('ID_LOCAL_ATUAL, DATA_APLICACAO, TIPO_APLICACAO, ID_RESPONSAVEL_APLICACAO, ID_USUARIO,TIPO_TRATAMENTO,CARENCIA_DIAS');
         Add(',ID_RESPONSAVEL_APLI_DIREITO,ID_BASE_CAMPO');
         Add(')values(');
         Add(':ID_ANIMAL, :ID_FARMACO, :ID_PROTOCOLO, :DOSE_ML, :ID_PROPRIEDAE, :ID_LOCAL_ATUAL,');
         Add(':DATA_APLICACAO, :TIPO_APLICACAO, :ID_RESPONSAVEL_APLICACAO, :ID_USUARIO,:TIPO_TRATAMENTO,:CARENCIA_DIAS');
         Add(',:ID_RESPONSAVEL_APLI_DIREITO,:ID_BASE_CAMPO');
         Add(')');
         ParamByName('ID_ANIMAL').AsString                     :=SyncSanidadeid_Animal.AsString;
         ParamByName('ID_FARMACO').AsString                    :=SyncSanidadeID_FARMACO.AsString;
         ParamByName('ID_PROTOCOLO').AsString                  :=SyncSanidadeID_PROTOCOLO.AsString;
         ParamByName('DOSE_ML').AsFloat                        :=SyncSanidadeDOSE_ML.AsFloat;
         ParamByName('ID_PROPRIEDAE').AsString                 :=SyncSanidadeID_PROPRIEDAE.AsString;
         ParamByName('ID_LOCAL_ATUAL').AsString                :=SyncSanidadeID_LOCAL_ATUAL.AsString;
         ParamByName('DATA_APLICACAO').AsDateTime              :=SyncSanidadeDATA_APLICACAO.AsDateTime;
         ParamByName('TIPO_APLICACAO').AsString                :=SyncSanidadeTIPO_APLICACAO.AsString;
         ParamByName('ID_RESPONSAVEL_APLICACAO').AsString      :=SyncSanidadeID_RESPONSAVEL_APLICACAO.AsString;
         ParamByName('ID_USUARIO').AsString                    :=SyncSanidadeID_USUARIO.AsString;
         ParamByName('TIPO_TRATAMENTO').AsInteger              :=SyncSanidadeTIPO_TRATAMENTO.AsInteger;
         ParamByName('CARENCIA_DIAS').AsInteger                :=SyncSanidadeCARENCIA_DIAS.AsInteger;
         ParamByName('ID_RESPONSAVEL_APLI_DIREITO').AsString   :=SyncSanidadeID_RESPONSAVEL_APLI_DIREITO.AsString;
         ParamByName('ID_BASE_CAMPO').AsString                 :=frmPrincipal.vIdBaseCampo;
         try
            ExecSQL;
            DMBaseCampo.MudaFlagBaseCampo('ANIMAL_SANIDADE',vid);
            inc(i);
            SyncSanidade.Next;
         except
         on E : Exception do
          begin
              ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
              SyncSanidade.Next;
          end;
         end;
       end
       else
        frmPrincipal.mlogSync.Lines.Add('Animal nao encontrado Chip:'+IDENTIFICACAO_1+
         ' SISBOV/NFC:'+IDENTIFICACAO_2)
      end;
   end;
 end;
 vQryAux.Free;
end;


procedure TDMBaseCampo.SyncVeiculosLoteSaida(vIdLoteOld,vIdLoteNew:String);
var
 I:integer;
 vIdVeiculo:string;
begin
   with SyncVeiculoEmbarque,SyncVeiculoEmbarque.SQL do
   begin
     Clear;
     Add('SELECT  *  FROM veiculos_embarque A');
     Add('WHERE a.status=1 and a.id_base_campo='+frmPrincipal.vIdBaseCampo);
     Add('and a.lotacao>0 AND (A.base_campo_sync is null or A.base_campo_sync=0)');
     Add('and ID_LOTESAIDA='+vIdLoteOld);
     Open;
     TThread.Synchronize(nil, procedure
     begin
      frmPrincipal.mlogSync.Lines.Add('Sincronizando Veiculos');
     end);
     I :=1;
     while not SyncVeiculoEmbarque.eof do
     begin
        TThread.Synchronize(nil, procedure
        begin
         frmPrincipal.mlogSync.Lines.Add(IntToStr(I)+' de '+frmPrincipal.edtLoteSaidaBC.Text);
        end);
        try
          serviceDB.qryVeiculos.Close;
          serviceDB.qryVeiculos.Open;
          serviceDB.qryVeiculos.Insert;
          serviceDB.qryVeiculos.FieldByName('ID_LOTESAIDA').AsString        := vIdLoteNEW;
          serviceDB.qryVeiculos.FieldByName('CAPACIDADE').AsString          := SyncVeiculoEmbarqueCAPACIDADE.AsString;
          serviceDB.qryVeiculos.FieldByName('ID_USER').AsString             := serviceDB.vIdUserLogado;
          serviceDB.qryVeiculos.FieldByName('LOTADO').AsString              := SyncVeiculoEmbarqueLOTADO.AsString;
          serviceDB.qryVeiculos.FieldByName('LOTACAO').AsString             := SyncVeiculoEmbarqueLOTACAO.AsString;
          serviceDB.qryVeiculos.FieldByName('NOME').AsString                := SyncVeiculoEmbarqueNome.AsString;
          serviceDB.qryVeiculos.FieldByName('PESO_BALANCAO_PORTO').AsString := SyncVeiculoEmbarquePESO_BALANCAO_PORTO.AsString;
          serviceDB.qryVeiculos.FieldByName('PLACA_CR').AsString            := SyncVeiculoEmbarquePLACA_CR.AsString;
          serviceDB.qryVeiculos.FieldByName('MOTORISTA').AsString           := SyncVeiculoEmbarqueMOTORISTA.AsString;
          serviceDB.qryVeiculos.FieldByName('TIPO').AsString                := SyncVeiculoEmbarqueTIPO.AsString;
          serviceDB.qryVeiculos.FieldByName('CLIENTE').AsString             := SyncVeiculoEmbarqueCLIENTE.AsString;
          serviceDB.qryVeiculos.FieldByName('ID_BASE_CAMPO').AsString       := frmPrincipal.vIdBaseCampo;
          serviceDB.qryVeiculos.FieldByName('PESO_BALANCAO').AsString       := SyncVeiculoEmbarquePESO_BALANCAO.AsString;
          serviceDB.qryVeiculos.ApplyUpdates(-1);
          vIdVeiculo := serviceDB.RetornaMaxIdTruckBC;
          DMBaseCampo.SyncAnimaisSaidaVeiculos(SyncVeiculoEmbarqueID.AsString,vIdVeiculo,vIdLoteOld,vIdLoteNew);
          inc(i);
        except
          on E : Exception do
           ShowMessage('Erro ao sincronizar Veiculos Embarque Base Campo : '+E.Message);
        end;
        DMBaseCampo.MudaFlagBaseCampo('veiculos_embarque',SyncVeiculoEmbarqueID.AsString);
        SyncVeiculoEmbarque.Next;
     end;
 end;
end;


function TDMBaseCampo.ValidaSisbovEstoque(IdProdutor, Sibov: string): Boolean;
var
 qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCon;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM ESTOQUE_BRINCOS A');
   Add('JOIN PEDIDO_BRINCOS P ON P.ID=A.ID_PEDIDO');
   Add('WHERE P.ID_PRODUTOR='+IdProdutor+' AND USADO =0');
   Add('AND SISBOV='+Sibov.QuotedString);
   Open;
   Result := qryAux.IsEmpty;
 end;
 qryAux.Free;
end;

function TDMBaseCampo.VerificaIdGTAExiste(ID_GTA: string):Boolean;
var
qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCon;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM GTA A');
   Add('WHERE ID='+ID_GTA);
   Open;
   Result := qryAux.IsEmpty;
 end;
 qryAux.Free;
end;

function TDMBaseCampo.VerificaSequenciaBrinco(IdProdutor,SibovIni,
  SibovFIm: string): string;
var
qryAux :TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection :=serviceDB.FCon;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT COUNT(*) QTD FROM ESTOQUE_BRINCOS A');
   Add('JOIN PEDIDO_BRINCOS P ON P.ID=A.ID_PEDIDO');
   Add('WHERE P.ID_PRODUTOR='+IdProdutor+' AND USADO =0');
   Add('AND MANEJO  BETWEEN '+SibovIni.QuotedString+' AND '+SibovFIm);
   Open;
   Result := FieldByName('QTD').AsString;
 end;
 qryAux.Free;
end;

end.
