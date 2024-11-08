unit UServiceDB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,FMX.Dialogs,IniFiles, ppDB, ppParameter,
  ppDesignLayer, ppCtrls, ppVar, ppBands, Vcl.Imaging.pngimage, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,System.Variants,
  MidasLib,System.Math, FireDAC.Phys.IBBase,FMX.Forms,System.UITypes,
  FireDAC.VCLUI.Wait, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script;

type
  TserviceDB = class(TDataModule)
    TableDestino: TFDQuery;
    TableProdutores: TFDQuery;
    TableDestinoID: TIntegerField;
    TableDestinoNOME: TStringField;
    TableDestinoCIDADE: TStringField;
    TableDestinoUF: TStringField;
    TableDestinoENDERECO: TStringField;
    TableDestinoSTATUS: TIntegerField;
    TableDestinoUSRER_ID: TSmallintField;
    TableDestinoDATA_REG: TSQLTimeStampField;
    TableProdutoresID: TIntegerField;
    TableProdutoresID_PROPRIEDADE: TIntegerField;
    TableProdutoresNOME: TStringField;
    TableProdutoresCPF_CNPJ: TStringField;
    TableProdutoresSTATUS: TIntegerField;
    TableProdutoresUSER_ID: TIntegerField;
    TableProdutoresDATAREG: TSQLTimeStampField;
    dsProdProp: TDataSource;
    TableDestinoCOD_ESTAB_GTA: TStringField;
    TableDestinoIE: TStringField;
    TableCategorias: TFDQuery;
    TableCategoriasID: TIntegerField;
    TableCategoriasNOME: TStringField;
    TableCategoriasSEXO: TStringField;
    TableCategoriasSTATUS: TIntegerField;
    TableCategoriasDATAREG: TSQLTimeStampField;
    TableCategoriasUSER_ID: TIntegerField;
    TableRacas: TFDQuery;
    TableRacasID: TIntegerField;
    TableRacasNOME: TStringField;
    TableRacasSTATUS: TIntegerField;
    TableRacasDATAREG: TSQLTimeStampField;
    TableRacasID_USER: TIntegerField;
    TableGTA: TFDQuery;
    TableGTAID: TIntegerField;
    TableGTANUMERO: TStringField;
    TableGTASERIE: TStringField;
    TableGTAUF: TStringField;
    TableGTADATA_EMISSAO: TDateField;
    TableGTADATA_VALIDADE: TDateField;
    TableGTAZERO_A_12_FEMEA: TIntegerField;
    TableGTAZERO_A_12_MACHO: TIntegerField;
    TableGTATREZE_A_24_FEMEA: TIntegerField;
    TableGTATREZE_A_24_MACHO: TIntegerField;
    TableGTAVITE_CINCO_A_36_FEMEA: TIntegerField;
    TableGTAVITE_CINCO_A_36_MACHO: TIntegerField;
    TableGTAMAIS_36_FEMEA: TIntegerField;
    TableGTAMAIS_36_MACHO: TIntegerField;
    TableGTATOTAL_FEMEAS: TLargeintField;
    TableGTATOTAL_MACHOS: TLargeintField;
    TableGTATOTAL_GTA: TLargeintField;
    TableGTASTATUS: TIntegerField;
    TableGTAUSER_ID: TIntegerField;
    TableGTADATA_REG: TSQLTimeStampField;
    TableGTATIPO: TStringField;
    TableGTAID_PROPRIEDADE_ORIGEM: TIntegerField;
    TableGTAID_PRODUTOR_ORIGEM: TIntegerField;
    TableGTAID_PROPRIEDADE_DESTINO: TIntegerField;
    TableGTAID_PRODUTOR_DESTINO: TIntegerField;
    TableGTANOME: TStringField;
    TableGTANOME_1: TStringField;
    TableGTANOME_2: TStringField;
    TableGTANOME_3: TStringField;
    qryAnimal: TFDQuery;
    qryConfig: TFDQuery;
    qryConfigID: TIntegerField;
    qryConfigPORTA_COM_BALANCA: TStringField;
    qryConfigPORTA_COM_BASTAO: TStringField;
    qryConfigPORTA_COM_RFID: TStringField;
    qryConfigMODELO_BALANCA: TStringField;
    qryConfigMODELO_BASTAO: TStringField;
    qryConfigMODELO_RFID: TStringField;
    qryCurraisApartacao: TFDQuery;
    qryApartacao: TFDQuery;
    qryApartacaoID: TIntegerField;
    qryApartacaoID_PROPRIEDADE: TIntegerField;
    qryApartacaoID_CURRAL_PASTO: TIntegerField;
    qryApartacaoCURRAL_PASTO: TStringField;
    qryApartacaoPESO_MINIMO: TIntegerField;
    qryApartacaoPESO_MAXIMO: TIntegerField;
    qryApartacaoSTATUS: TIntegerField;
    qryApartacaoID_USUARIO: TIntegerField;
    qryApartacaoDATA_REG: TSQLTimeStampField;
    qryGriAniProc: TFDQuery;
    TableGTATOTAL_BRINCADOS: TIntegerField;
    TableGTALOTADA: TIntegerField;
    qryGtaProc: TFDQuery;
    qryGtaProcID: TIntegerField;
    qryGtaProcNUMERO: TStringField;
    qryGtaProcSERIE: TStringField;
    qryGtaProcUF: TStringField;
    qryGtaProcDATA_EMISSAO: TDateField;
    qryGtaProcDATA_VALIDADE: TDateField;
    qryGtaProcZERO_A_12_FEMEA: TIntegerField;
    qryGtaProcZERO_A_12_MACHO: TIntegerField;
    qryGtaProcTREZE_A_24_FEMEA: TIntegerField;
    qryGtaProcTREZE_A_24_MACHO: TIntegerField;
    qryGtaProcVITE_CINCO_A_36_FEMEA: TIntegerField;
    qryGtaProcVITE_CINCO_A_36_MACHO: TIntegerField;
    qryGtaProcMAIS_36_FEMEA: TIntegerField;
    qryGtaProcMAIS_36_MACHO: TIntegerField;
    qryGtaProcTOTAL_FEMEAS: TLargeintField;
    qryGtaProcTOTAL_MACHOS: TLargeintField;
    qryGtaProcTOTAL_GTA: TLargeintField;
    qryGtaProcSTATUS: TIntegerField;
    qryGtaProcUSER_ID: TIntegerField;
    qryGtaProcDATA_REG: TSQLTimeStampField;
    qryGtaProcTIPO: TStringField;
    qryGtaProcID_PROPRIEDADE_ORIGEM: TIntegerField;
    qryGtaProcID_PRODUTOR_ORIGEM: TIntegerField;
    qryGtaProcID_PROPRIEDADE_DESTINO: TIntegerField;
    qryGtaProcID_PRODUTOR_DESTINO: TIntegerField;
    qryGtaProcTOTAL_BRINCADOS: TIntegerField;
    qryGtaProcLOTADA: TIntegerField;
    qryGtaProcP_ORIGEM_ID: TIntegerField;
    qryGtaProcP_ORIGEM: TStringField;
    qryGtaProcP_DESTINO_ID: TIntegerField;
    qryGtaProcP_DESTINO: TStringField;
    qryGtaProcPRO_ID: TIntegerField;
    qryGtaProcPRD_ID: TIntegerField;
    qryGtaProcPRO_NOME: TStringField;
    qryGtaProcPRD_NOME: TStringField;
    qryProdutorDestino: TFDQuery;
    qryProdutorDestinoID: TIntegerField;
    qryProdutorDestinoID_PROPRIEDADE: TIntegerField;
    qryProdutorDestinoNOME: TStringField;
    qryProdutorDestinoCPF_CNPJ: TStringField;
    qryProdutorDestinoSTATUS: TIntegerField;
    qryProdutorDestinoUSER_ID: TIntegerField;
    qryProdutorDestinoDATAREG: TSQLTimeStampField;
    qryPropriedadeOrigem: TFDQuery;
    qryPropriedadeOrigemID: TIntegerField;
    qryPropriedadeOrigemNOME: TStringField;
    qryPropriedadeOrigemCIDADE: TStringField;
    qryPropriedadeOrigemUF: TStringField;
    qryPropriedadeOrigemENDERECO: TStringField;
    qryPropriedadeOrigemSTATUS: TIntegerField;
    qryPropriedadeOrigemUSRER_ID: TSmallintField;
    qryPropriedadeOrigemDATA_REG: TSQLTimeStampField;
    qryPropriedadeOrigemPROPRIA: TIntegerField;
    qryPropriedadeOrigemCOD_ESTAB_GTA: TStringField;
    qryPropriedadeOrigemIE: TStringField;
    qryProdutorOrigem: TFDQuery;
    dsPropOrigem: TDataSource;
    qryProdutorOrigemID: TIntegerField;
    qryProdutorOrigemID_PROPRIEDADE: TIntegerField;
    qryProdutorOrigemNOME: TStringField;
    qryProdutorOrigemCPF_CNPJ: TStringField;
    qryProdutorOrigemSTATUS: TIntegerField;
    qryProdutorOrigemUSER_ID: TIntegerField;
    qryProdutorOrigemDATAREG: TSQLTimeStampField;
    GtaTable: TFDQuery;
    GtaTableID: TIntegerField;
    GtaTableNUMERO: TStringField;
    GtaTableSERIE: TStringField;
    GtaTableUF: TStringField;
    GtaTableDATA_EMISSAO: TDateField;
    GtaTableDATA_VALIDADE: TDateField;
    GtaTableZERO_A_12_FEMEA: TIntegerField;
    GtaTableZERO_A_12_MACHO: TIntegerField;
    GtaTableTREZE_A_24_FEMEA: TIntegerField;
    GtaTableTREZE_A_24_MACHO: TIntegerField;
    GtaTableVITE_CINCO_A_36_FEMEA: TIntegerField;
    GtaTableVITE_CINCO_A_36_MACHO: TIntegerField;
    GtaTableMAIS_36_FEMEA: TIntegerField;
    GtaTableMAIS_36_MACHO: TIntegerField;
    GtaTableTOTAL_FEMEAS: TLargeintField;
    GtaTableTOTAL_MACHOS: TLargeintField;
    GtaTableTOTAL_GTA: TLargeintField;
    GtaTableSTATUS: TIntegerField;
    GtaTableUSER_ID: TIntegerField;
    GtaTableDATA_REG: TSQLTimeStampField;
    GtaTableTIPO: TStringField;
    GtaTableID_PROPRIEDADE_ORIGEM: TIntegerField;
    GtaTableID_PRODUTOR_ORIGEM: TIntegerField;
    GtaTableID_PROPRIEDADE_DESTINO: TIntegerField;
    GtaTableID_PRODUTOR_DESTINO: TIntegerField;
    GtaTableTOTAL_BRINCADOS: TIntegerField;
    GtaTableLOTADA: TIntegerField;
    qryAnimalPeso: TFDQuery;
    qryAnimalPesoID: TIntegerField;
    qryAnimalPesoID_ANIMAL: TIntegerField;
    qryAnimalPesoID_USUARIO: TIntegerField;
    qryAnimalPesoDATA: TDateField;
    qryAnimalPesoPESO: TFMTBCDField;
    qryAnimalPesoTIPO: TStringField;
    qryAnimalPesoSTATUS: TIntegerField;
    qryAnimalPesoDATAREG: TSQLTimeStampField;
    qryStatitica: TFDQuery;
    qryStatiticaTOTAL_ANI: TIntegerField;
    qryStatiticaMEDIA: TFMTBCDField;
    qryStatiticaMINIMO: TFMTBCDField;
    qryStatiticaMAXIMO: TFMTBCDField;
    qryStatiticaMIN_HORA: TStringField;
    qryStatiticaMAX_HORA: TStringField;
    qryConfigQTD_IDENTIFICACAO: TIntegerField;
    qryConfigTAMANHO_IDENTIFICACAO_1: TIntegerField;
    qryConfigTAMANHO_IDENTIFICACAO_2: TIntegerField;
    qryConfigPROCESSAMENTO_AUTO: TIntegerField;
    qryAnimalExistente: TFDQuery;
    qryLoteSaida: TFDQuery;
    qryVeiculos: TFDQuery;
    qryVeiculosEmbarque: TFDQuery;
    qryVeiculosEmbarqueID: TIntegerField;
    qryVeiculosEmbarqueID_LOTESAIDA: TIntegerField;
    qryVeiculosEmbarquePLACA: TStringField;
    qryVeiculosEmbarqueDATAREG: TSQLTimeStampField;
    qryVeiculosEmbarqueSTATUS: TIntegerField;
    qryVeiculosEmbarqueID_USER: TIntegerField;
    qryVeiculosEmbarqueCAPACIDADE: TIntegerField;
    qryVeiculosEmbarqueLOTACAO: TIntegerField;
    qryVeiculosEmbarqueLOTADO: TIntegerField;
    qryVeiculosEmbarqueNOME: TStringField;
    TableUsers: TFDQuery;
    TableCategoriasFAIXA_ETARIA: TStringField;
    FornecedorSupleMineral: TFDQuery;
    SuplementoMineral: TFDQuery;
    FornecedorSupleMineralID: TIntegerField;
    FornecedorSupleMineralCNPJ: TStringField;
    FornecedorSupleMineralCIDADE: TStringField;
    FornecedorSupleMineralUF: TStringField;
    FornecedorSupleMineralPESSOA_CONTATO: TStringField;
    FornecedorSupleMineralTELEFONE_CONTATO: TStringField;
    FornecedorSupleMineralEMAIL_CONTATO: TStringField;
    FornecedorSupleMineralSTATUS: TIntegerField;
    FornecedorSupleMineralDATAREG: TSQLTimeStampField;
    FornecedorSupleMineralID_USUARIO: TSmallintField;
    FornecedorSupleMineralRAZAO_SOCIAL: TStringField;
    PrevisaoFornecimento: TFDQuery;
    dsPrev: TDataSource;
    PrevisaoFornecimentoID: TIntegerField;
    PrevisaoFornecimentoDATA: TDateField;
    PrevisaoFornecimentoPASTO: TStringField;
    PrevisaoFornecimentoQTD_CAB: TIntegerField;
    PrevisaoFornecimentoCONSUMO_CAB: TFMTBCDField;
    PrevisaoFornecimentoID_USUARIO: TIntegerField;
    PrevisaoFornecimentoDATAREG: TSQLTimeStampField;
    PrevisaoFornecimentoRACA: TStringField;
    PrevisaoFornecimentoID_RACA: TIntegerField;
    PrevisaoFornecimentoCATEGORIA_ENTRADA: TStringField;
    PrevisaoFornecimentoID_CATEGORIA_ENTRADA: TIntegerField;
    PrevisaoFornecimentoCATEGORIA_ATUAL: TStringField;
    PrevisaoFornecimentoID_CATEGORIA_ATUAL: TIntegerField;
    PrevisaoFornecimentoIDADE_ATUAL: TIntegerField;
    PrevisaoFornecimentoPESO_ESTIMADO: TFMTBCDField;
    qryPrevGrid: TFDQuery;
    TableCategoriasGMD: TFMTBCDField;
    qryAuxMotivoMorte: TFDQuery;
    qryAuxMotivoMorteID: TIntegerField;
    qryAuxMotivoMorteNOME: TStringField;
    qryAuxMotivoMorteDATAREG: TSQLTimeStampField;
    qryAuxMotivoMorteID_USER: TIntegerField;
    qryAuxMotivoMorteSTATUS: TIntegerField;
    MotivoMovimentacao: TFDQuery;
    MotivoMovimentacaoID: TIntegerField;
    MotivoMovimentacaoNOME: TStringField;
    MotivoMovimentacaoID_USUARIO: TIntegerField;
    MotivoMovimentacaoDATAREG: TSQLTimeStampField;
    FornecimentoMineral: TFDQuery;
    FornecimentoMineralID: TIntegerField;
    FornecimentoMineralID_PASTO: TIntegerField;
    FornecimentoMineralID_PRODUTO: TIntegerField;
    FornecimentoMineralDATA_FORNECIMENTO: TDateField;
    FornecimentoMineralPREVISAO_KG: TFMTBCDField;
    FornecimentoMineralPREVISTO_SACO: TFMTBCDField;
    FornecimentoMineralREALIZADO_COCHO_KG: TFMTBCDField;
    FornecimentoMineralREALIZADO_COCHO_SACO: TFMTBCDField;
    FornecimentoMineralREALIZADO_ESTOQUE_KG: TFMTBCDField;
    FornecimentoMineralREALIZADO_ESTOQUE_SACO: TFMTBCDField;
    FornecimentoMineralID_USUARIO: TIntegerField;
    FornecimentoMineralDATA_REG: TSQLTimeStampField;
    FornecimentoMineralSTATUS: TIntegerField;
    FornecimentoMineralTIPO_FORNE: TStringField;
    FornecimentoMineralTAG_COCHO: TStringField;
    FornecimentoMineralLATITUDE: TStringField;
    FornecimentoMineralLONGITUDE: TStringField;
    FornecimentoMineralSOBRA_KG: TFMTBCDField;
    FornecimentoMineralNOME: TStringField;
    TableCocho: TFDQuery;
    TableCochoID: TIntegerField;
    TableCochoID_PASTO: TIntegerField;
    TableCochoTAG: TStringField;
    TableCochoID_USUARIO: TIntegerField;
    TableCochoDATAREG: TSQLTimeStampField;
    TableCochoSTATUS: TIntegerField;
    TableCochoNOME: TStringField;
    TableCochoID_MINERAL: TIntegerField;
    TableCochoNOME_1: TStringField;
    TableCochoCODIGO: TStringField;
    dsCocho: TDataSource;
    DSPastos: TDataSource;
    FornecimentoMineralID_RESPONSAVEL: TIntegerField;
    FornecimentoMineralID_COCHO: TIntegerField;
    FornecimentoMineralCODIGO: TStringField;
    FornecimentoMineralQTD_ANIMAIS: TIntegerField;
    FornecimentoMineralPREVISAO_DIAS: TIntegerField;
    FornecimentoMineralCONSUMO_ESTIMADO_CAB_DIA: TFMTBCDField;
    FornecimentoMineralCONSUMO_ESTIMADO_TOTAL_DIA: TFMTBCDField;
    FornecimentoMineralVALOR_KG: TFMTBCDField;
    FornecimentoMineralVALOR_TOTAL_FORN: TBCDField;
    FornecimentoMineralVALOR_CAB_DIA: TBCDField;
    FornecimentoMineralVALOR_TOTAL_CAB: TBCDField;
    EntradaEstoqueMineral: TFDQuery;
    qryGridEntradaAnimais: TFDQuery;
    qryGridEntradaAnimaisDATA_ENTRADA: TDateField;
    qryGridEntradaAnimaisUSUARIO_RESPONSAVEL: TStringField;
    qryGridEntradaAnimaisPASTO: TStringField;
    qryGridEntradaAnimaisQTD: TIntegerField;
    qryGridEntradaAnimaisPESO_ENT: TFMTBCDField;
    qryGridEntradaAnimaisVALOR_COMPRA: TFMTBCDField;
    dsEntradasAnimal: TDataSource;
    qryGridEntradaAnimaisID_PASTO: TIntegerField;
    qryGridSaidaAnimais: TFDQuery;
    dsGridSaida: TDataSource;
    qryGridMov: TFDQuery;
    dsMovAnimais: TDataSource;
    dsEstoqueEnt: TDataSource;
    FornecimentoMineralESTOQUE_ORIGEM: TIntegerField;
    qryConfigPadrao: TFDQuery;
    qryConfigPadraoID: TIntegerField;
    qryConfigPadraoCUSTO_FIXO_PADRAO: TFMTBCDField;
    qryConfigPadraoTIPO_MEDIA_VALOR_KG: TIntegerField;
    AuxOcorrencia: TFDQuery;
    AuxOcorrenciaID: TIntegerField;
    AuxOcorrenciaOCORRENCIA: TStringField;
    AuxOcorrenciaSTATUS: TIntegerField;
    Calendario: TFDQuery;
    CalendarioID: TIntegerField;
    CalendarioDATA: TDateField;
    CalendarioTIPO_EVENTO: TIntegerField;
    CalendarioDESCRICAO_EVENTO: TStringField;
    CalendarioID_OCORRENCIA: TIntegerField;
    CalendarioDATAREG: TSQLTimeStampField;
    CalendarioID_USUARIO: TIntegerField;
    CalendarioSTATUS: TIntegerField;
    CalendarioHORA: TTimeField;
    CalendarioTIPOEVENDOSTR: TStringField;
    CalendarioOCORRENCIA: TStringField;
    qryRelResumoAtivo: TFDQuery;
    dsRelResumoAtivos: TDataSource;
    TablePropriedades: TFDQuery;
    TablePropriedadesID: TIntegerField;
    TablePropriedadesNOME: TStringField;
    TablePropriedadesCIDADE: TStringField;
    TablePropriedadesUF: TStringField;
    TablePropriedadesENDERECO: TStringField;
    TablePropriedadesSTATUS: TIntegerField;
    TablePropriedadesUSRER_ID: TIntegerField;
    TablePropriedadesDATA_REG: TSQLTimeStampField;
    TablePropriedadesPROPRIA: TIntegerField;
    TablePropriedadesCOD_ESTAB_GTA: TStringField;
    TablePropriedadesIE: TStringField;
    TablePropriedadesGUID: TStringField;
    PropriedadePropria: TFDQuery;
    PropriedadePropriaID: TIntegerField;
    PropriedadePropriaNOME: TStringField;
    PropriedadePropriaCIDADE: TStringField;
    PropriedadePropriaUF: TStringField;
    PropriedadePropriaENDERECO: TStringField;
    PropriedadePropriaSTATUS: TIntegerField;
    PropriedadePropriaUSRER_ID: TIntegerField;
    PropriedadePropriaDATA_REG: TSQLTimeStampField;
    PropriedadePropriaPROPRIA: TIntegerField;
    PropriedadePropriaCOD_ESTAB_GTA: TStringField;
    PropriedadePropriaIE: TStringField;
    PropriedadePropriaGUID: TStringField;
    qryGtaProcZERO_A_12_FEMEA_PROC: TIntegerField;
    qryGtaProcZERO_A_12_MACHO_PROC: TIntegerField;
    qryGtaProcTREZE_A_24_FEMEA_PROC: TIntegerField;
    qryGtaProcTREZE_A_24_MACHO_PROC: TIntegerField;
    qryGtaProcVITE_CINCO_A_36_FEMEA_PROC: TIntegerField;
    qryGtaProcVITE_CINCO_A_36_MACHO_PROC: TIntegerField;
    qryGtaProcMAIS_36_FEMEA_PROC: TIntegerField;
    qryGtaProcMAIS_36_MACHO_PROC: TIntegerField;
    qryApartacaoCAPACIDADE: TIntegerField;
    qryApartacaoLOTACAO: TIntegerField;
    TableConfigManejo: TFDQuery;
    TableConfigManejoID: TIntegerField;
    TableConfigManejoPORTA_COM_BALANCA: TStringField;
    TableConfigManejoPORTA_COM_BASTAO: TStringField;
    TableConfigManejoPORTA_COM_RFID: TStringField;
    TableConfigManejoMODELO_BALANCA: TStringField;
    TableConfigManejoMODELO_BASTAO: TStringField;
    TableConfigManejoMODELO_RFID: TStringField;
    TableConfigManejoQTD_IDENTIFICACAO: TIntegerField;
    TableConfigManejoTIPO_IDENTIFICACAO: TIntegerField;
    TableConfigManejoIP_SERVIDOR: TStringField;
    qryGtaProcVALOR_CAB: TLargeintField;
    TableCustoFixo: TFDQuery;
    TableCustoFixoID: TIntegerField;
    TableCustoFixoANO: TFMTBCDField;
    TableCustoFixoJANEIRO: TFMTBCDField;
    TableCustoFixoFEVEREIRO: TFMTBCDField;
    TableCustoFixoABRIL: TFMTBCDField;
    TableCustoFixoMAIO: TFMTBCDField;
    TableCustoFixoJUNHO: TFMTBCDField;
    TableCustoFixoJULHO: TFMTBCDField;
    TableCustoFixoAGOSTO: TFMTBCDField;
    TableCustoFixoSETEMBRO: TFMTBCDField;
    TableCustoFixoNOVEMBRO: TFMTBCDField;
    TableCustoFixoDEZEMBRO: TFMTBCDField;
    TableCustoFixoDATA_REG: TSQLTimeStampField;
    TableCustoFixoID_USUARIO: TIntegerField;
    TableCustoFixoULTIMA_ALTERACAO: TSQLTimeStampField;
    TableCustoFixoUSER_ULTIMA_ALTERACAO: TIntegerField;
    TableCustoFixoSTATUS: TIntegerField;
    TableCustoFixoID_PROPRIEDADE: TIntegerField;
    TableCustoFixoMARCO: TFMTBCDField;
    TableCustoFixoOUTUBRO: TFMTBCDField;
    TableGTAVALOR_CAB: TLargeintField;
    TableCurrais: TFDQuery;
    TableCurraisID: TIntegerField;
    TableCurraisID_PROPRIEDADE: TIntegerField;
    TableCurraisCODIGO: TStringField;
    TableCurraisTIPO: TIntegerField;
    TableCurraisUSER_ID: TIntegerField;
    TableCurraisDATAREG: TSQLTimeStampField;
    TableCurraisSTATUS: TIntegerField;
    TableCurraisPESO_MINIMO: TIntegerField;
    TableCurraisPESO_MAXIMO: TIntegerField;
    TableCurraisCAPACIDADE: TIntegerField;
    TableCurraisLOTACAO: TIntegerField;
    TableCurraisSTATUS_LOTACAO: TStringField;
    TableCurraisQRCODE: TStringField;
    TableCurraisLATITUDE: TStringField;
    TableCurraisLONGITUDE: TStringField;
    TableCurraisCUSTO_FIXO_DIA: TFMTBCDField;
    TableCurraisAREA_HECTARES: TFMTBCDField;
    LogReprocessamento: TFDQuery;
    LogReprocessamentoID: TIntegerField;
    LogReprocessamentoID_USUARIO: TIntegerField;
    LogReprocessamentoID_ANIMAL: TIntegerField;
    qryGriAniReProc: TFDQuery;
    LogReprocessamentoDATA_REGISTRO: TSQLTimeStampField;
    LogReprocessamentoID_PROPRIEDADE: TIntegerField;
    Acess: TFDQuery;
    AcessID: TIntegerField;
    AcessID_USUARIO: TIntegerField;
    AcessNOME: TStringField;
    AcessDATA_REGISTRO: TSQLTimeStampField;
    qryGrid: TFDQuery;
    qryGridANIMAL_ID: TIntegerField;
    qryGridCURRAL: TStringField;
    qryGridIDENT_1: TStringField;
    qryGridIDENT_2: TStringField;
    qryGridRACA: TStringField;
    qryGridCATEGORIA: TStringField;
    qryGridDATA_ENT: TSQLTimeStampField;
    qryGridPESO_ENT: TFMTBCDField;
    qryGridDT_ULTIMO_PESO: TDateField;
    qryGridULTIMO_PESO: TFMTBCDField;
    qryGridGTA: TStringField;
    qryGridDIAS: TLargeintField;
    qryGridIDADEATUAL: TLargeintField;
    qryGridDATA_SAIDA: TDateField;
    qryGridPESO_SAIDA: TFMTBCDField;
    qryGridPESOATUAL: TFMTBCDField;
    qryGridCUSTOFIXOACUMULADO: TFMTBCDField;
    qryGridGTP: TFMTBCDField;
    qryGridGMD: TFMTBCDField;
    qryGridCUSTOFIXODIA: TFMTBCDField;
    qryGridCUSTOALIMENTAR: TFMTBCDField;
    qryGridGTA_SAIDA: TStringField;
    qryGridPRODUTORORIGEM: TStringField;
    qryGridPRODUTORDESTINOSAIDA: TStringField;
    qryGridSEXO: TStringField;
    qryGridCUSTOALIMDIA: TFMTBCDField;
    qryGridFAIXAIDADE: TStringField;
    qryGridCATEGORIAATUAL: TStringField;
    qryGridGTP_SAIDA: TFMTBCDField;
    qryGridGMD_SAIDA: TFMTBCDField;
    qryGridIDADE_ENTRADA: TIntegerField;
    qryGridPROPRIEDADEORIGEM: TStringField;
    qryGridVALOR_COMPRA: TFMTBCDField;
    qryGridVALOR_VENDA: TFMTBCDField;
    qryGridCUSTOTOTAL: TFMTBCDField;
    qryGridCUSTOTOTALMAISCOMPRA: TFMTBCDField;
    qryGridNASCIMENTO: TDateField;
    qryVeiculosEmbarqueSTATUSLOTACAO: TStringField;
    qryGridSaidaAnimaisID_LOTESAIDA: TIntegerField;
    qryGridSaidaAnimaisNOME_DESTINO: TStringField;
    qryGridSaidaAnimaisID_DESTINO: TIntegerField;
    qryGridSaidaAnimaisQTD: TIntegerField;
    qryGridSaidaAnimaisPESO_SAIDA: TFMTBCDField;
    qryGridSaidaAnimaisVALOR_VENDA: TFMTBCDField;
    qryGridSaidaAnimaisGTP: TFMTBCDField;
    qryGridSaidaAnimaisDIAS: TLargeintField;
    qryGridSaidaAnimaisTIPOSAIDA: TStringField;
    qryGridSaidaAnimaisGMD: TFMTBCDField;
    qryGridSaidaAnimaisDATA_SAIDA: TDateField;
    qryRelResumoAtivoPASTO: TStringField;
    qryRelResumoAtivoRACA: TStringField;
    qryRelResumoAtivoCATEGORIAATUAL: TStringField;
    qryRelResumoAtivoQTD_CAB: TIntegerField;
    qryRelResumoAtivoDIAS_MEDIO: TLargeintField;
    qryRelResumoAtivoDATA_ENTRADA_MEDIA: TDateField;
    qryRelResumoAtivoPESO_ENT: TFMTBCDField;
    qryRelResumoAtivoARR_ENTRADA: TFMTBCDField;
    qryRelResumoAtivoPESO_ATUAL: TFMTBCDField;
    qryRelResumoAtivoARR_ATUAL: TFMTBCDField;
    qryRelResumoAtivoARR_PRODUZIDA: TFMTBCDField;
    qryRelResumoAtivoCONSUMO_ACUMULADO: TFMTBCDField;
    qryRelResumoAtivoCONSUMO_CAB_DIA: TFMTBCDField;
    qryRelResumoAtivoCUSTO_ALIMENTAR: TFMTBCDField;
    qryRelResumoAtivoCUSTOFIXOACUMULADO: TFMTBCDField;
    qryRelResumoAtivoCUSTO_ALIMENTAR_CAB: TFMTBCDField;
    qryRelResumoAtivoCUSTO_FIXO_CAB_DIA: TFMTBCDField;
    qryRelResumoAtivoCUSTOTOTALMAISCOMPRA: TFMTBCDField;
    qryRelResumoAtivoIMS_PV: TBCDField;
    qryRelResumoAtivoGTP: TFMTBCDField;
    qryRelResumoAtivoGMD: TFMTBCDField;
    qryRelResumoAtivoCUSTOTOTAL: TFMTBCDField;
    qryRelResumoAtivoCUSTO_ARR_PROD: TStringField;
    qryRelResumoGeral: TFDQuery;
    dsRelResumoGeral: TDataSource;
    qryGridLoteSaida: TFDQuery;
    qryLoteSaidaID: TIntegerField;
    qryLoteSaidaDATA_EMBARQUE: TDateField;
    qryLoteSaidaID_DESTINO: TIntegerField;
    qryLoteSaidaID_PRODUTOR_DESTINO: TIntegerField;
    qryLoteSaidaID_ORIGEM: TIntegerField;
    qryLoteSaidaID_PRODUTOR_ORIGEM: TIntegerField;
    qryLoteSaidaDATAREG: TSQLTimeStampField;
    qryLoteSaidaSTATUS: TIntegerField;
    qryLoteSaidaTOTAL_ANIMAIS_EMBARCADOS: TIntegerField;
    qryLoteSaidaGUID: TStringField;
    qryLoteSaidaNOME: TStringField;
    qryLoteSaidaID_USUARIO: TIntegerField;
    qryGridLoteSaidaID: TIntegerField;
    qryGridLoteSaidaDATA_EMBARQUE: TDateField;
    qryGridLoteSaidaID_DESTINO: TIntegerField;
    qryGridLoteSaidaID_PRODUTOR_DESTINO: TIntegerField;
    qryGridLoteSaidaID_ORIGEM: TIntegerField;
    qryGridLoteSaidaID_PRODUTOR_ORIGEM: TIntegerField;
    qryGridLoteSaidaDATAREG: TSQLTimeStampField;
    qryGridLoteSaidaSTATUS: TIntegerField;
    qryGridLoteSaidaTOTAL_ANIMAIS_EMBARCADOS: TIntegerField;
    qryGridLoteSaidaGUID: TStringField;
    qryGridLoteSaidaNOME: TStringField;
    qryGridLoteSaidaID_USUARIO: TIntegerField;
    qryGridLoteSaidaPROPRIEDADEORIGEM: TStringField;
    qryGridLoteSaidaPROPRIEDADEDESTINO: TStringField;
    qryGridLoteSaidaPRODUTORORIGEM: TStringField;
    qryGridLoteSaidaPRODUTORDESTINO: TStringField;
    qryGridLoteSaidaTOTALANIMAIS: TIntegerField;
    qryGridLoteSaidaMEDIAPESO: TFMTBCDField;
    TableCurraisID_RETIRO: TIntegerField;
    TableRetiro: TFDQuery;
    TableRetiroID: TIntegerField;
    TableRetiroNOME: TStringField;
    TableRetiroID_PROPRIEDADE: TIntegerField;
    TableRetiroDATAREG: TSQLTimeStampField;
    TableRetiroID_USUARIO: TIntegerField;
    TableRetiroSTATUS: TIntegerField;
    TableCurraisRETIRO: TStringField;
    FCon: TFDConnection;
    qryGridLoteSaidaSTATUS_STR: TStringField;
    qryRelResumoAtivoID_PROPRIEDADE: TIntegerField;
    qryConfigPadraoID_PROPRIEDADE: TIntegerField;
    FAIXA_ETATIA: TFDQuery;
    FAIXA_ETATIAID: TIntegerField;
    FAIXA_ETATIAIDADE_MINIMA: TIntegerField;
    FAIXA_ETATIAIDADE_MAXIMA: TIntegerField;
    FAIXA_ETATIASTATUS: TIntegerField;
    FAIXA_ETATIADATAREG: TSQLTimeStampField;
    FAIXA_ETATIAID_USUARIO: TIntegerField;
    FAIXA_ETATIAFAIXA: TStringField;
    FASES: TFDQuery;
    FASESID: TIntegerField;
    FASESNOME: TStringField;
    FASESMES_INICIO: TIntegerField;
    FASESMES_FIM: TIntegerField;
    FASESSTATUS: TIntegerField;
    FASESDATARE: TSQLTimeStampField;
    FASESID_USUARIO: TIntegerField;
    FASESMES_INI_STR: TStringField;
    FASESMES_FIM_STR: TStringField;
    TableCategoriasID_FAIXA: TIntegerField;
    PrevisaoFornecimentoPERCENT_PV: TFMTBCDField;
    PrevisaoFornecimentoINGESTAO_PV_CAB: TBCDField;
    PrevisaoFornecimentoINGESTAO_PV_CAB_TOTAL: TBCDField;
    qryPrevGridDATA: TDateField;
    qryPrevGridPASTO: TStringField;
    qryPrevGridQTDCAB: TLargeintField;
    qryPrevGridCONSUMOCAB: TFMTBCDField;
    qryPrevGridCONSUMOTOTAL: TFMTBCDField;
    qryPrevGridPERCENT_PV: TFMTBCDField;
    qryPrevGridINGESTAO_PV_CAB: TBCDField;
    qryPrevGridINGESTAO_PV_CAB_TOTAL: TBCDField;
    PrevisaoFornecimentoCONSUMO_TOTAL: TFMTBCDField;
    qryPrevGridPESO_ESTIMADO: TFMTBCDField;
    TableRCertificadora: TFDQuery;
    TableRCertificadoraID: TIntegerField;
    TableRCertificadoraNOME_FANTASIA: TStringField;
    TableRCertificadoraCNPJ: TStringField;
    TableRCertificadoraSTATUS: TIntegerField;
    TableRCertificadoraDATAREG: TSQLTimeStampField;
    TableRCertificadoraID_USUARIO: TIntegerField;
    TableRCertificadoraCONTATO: TStringField;
    TableRCertificadoraCIDADE: TStringField;
    TableRCertificadoraUF: TStringField;
    TableRCertificadoraTELEFONE: TStringField;
    TableRCertificadoraENDERECO: TStringField;
    TableRFornecedorBrincos: TFDQuery;
    TableRFornecedorBrincosID: TIntegerField;
    TableRFornecedorBrincosNOME_FANTASIA: TStringField;
    TableRFornecedorBrincosCNPJ: TStringField;
    TableRFornecedorBrincosSTATUS: TIntegerField;
    TableRFornecedorBrincosDATAREG: TSQLTimeStampField;
    TableRFornecedorBrincosID_USUARIO: TIntegerField;
    TableRFornecedorBrincosCONTATO: TStringField;
    TableRFornecedorBrincosCIDADE: TStringField;
    TableRFornecedorBrincosUF: TStringField;
    TableRFornecedorBrincosTELEFONE: TStringField;
    TableRFornecedorBrincosENDERECO: TStringField;
    BND: TFDQuery;
    TMP_BND: TFDQuery;
    TMP_BNDID: TIntegerField;
    TMP_BNDID_PRODUTOR: TIntegerField;
    TMP_BNDSISBOV: TStringField;
    TMP_BNDNASCIMENTO: TDateField;
    TMP_BNDRACA: TStringField;
    TMP_BNDSEXO: TStringField;
    TMP_BNDINCLUSAO: TDateField;
    TMP_BNDINVENTARIO: TStringField;
    BNDID: TIntegerField;
    BNDID_PRODUTOR: TIntegerField;
    BNDSISBOV: TStringField;
    BNDNASCIMENTO: TDateField;
    BNDRACA: TStringField;
    BNDSEXO: TStringField;
    BNDINCLUSAO: TDateField;
    BNDINVENTARIO: TStringField;
    BNDID_USUARIO: TIntegerField;
    BNDSTATUS: TIntegerField;
    BNDDATAREG: TSQLTimeStampField;
    BNDPRODUTOR: TStringField;
    qryProdutorProprio: TFDQuery;
    qryProdutorProprioID: TIntegerField;
    qryProdutorProprioID_PROPRIEDADE: TIntegerField;
    qryProdutorProprioNOME: TStringField;
    qryProdutorProprioCPF_CNPJ: TStringField;
    qryProdutorProprioSTATUS: TIntegerField;
    qryProdutorProprioDATAREG: TSQLTimeStampField;
    qryProdutorProprioGUID: TStringField;
    qryProdutorProprioUSER_ID: TIntegerField;
    TablePedidoBrinco: TFDQuery;
    TablePedidoBrincoID: TIntegerField;
    TablePedidoBrincoID_FORNECEDOR_BRINCO: TIntegerField;
    TablePedidoBrincoID_CERTIFICADORA: TIntegerField;
    TablePedidoBrincoID_PRODUTOR: TIntegerField;
    TablePedidoBrincoDATA_SOLICITACAO: TDateField;
    TablePedidoBrincoDATA_ENTRADA: TDateField;
    TablePedidoBrincoNUMERO_INICIAL: TStringField;
    TablePedidoBrincoNUMERO_FINAL: TStringField;
    TablePedidoBrincoNUMERO_NF: TIntegerField;
    TablePedidoBrincoQTD_REG_PAGINA: TIntegerField;
    TablePedidoBrincoSTATUS: TIntegerField;
    TablePedidoBrincoID_USUARIO: TIntegerField;
    TablePedidoBrincoDATAREG: TSQLTimeStampField;
    TablePedidoBrincoFORNECEDOR: TStringField;
    TablePedidoBrincoCERTIFICADORA: TStringField;
    TablePedidoBrincoPRODUTOR: TStringField;
    TablePedidoNumeros: TFDQuery;
    TablePedidoNumerosID: TIntegerField;
    TablePedidoNumerosID_PEDIDO: TIntegerField;
    TablePedidoNumerosSISBOV: TStringField;
    TablePedidoNumerosMANEJO: TStringField;
    TablePedidoNumerosDG: TIntegerField;
    TablePedidoNumerosCAIXA: TIntegerField;
    TablePedidoNumerosUSADO: TIntegerField;
    TablePedidoNumerosSTATUS: TIntegerField;
    TablePedidoNumerosDATAREG: TSQLTimeStampField;
    TablePedidoNumerosSTATUS_USO: TStringField;
    insereEstoque: TFDQuery;
    insereEstoqueID: TIntegerField;
    insereEstoqueID_PEDIDO: TIntegerField;
    insereEstoqueSISBOV: TStringField;
    insereEstoqueMANEJO: TStringField;
    insereEstoqueDG: TIntegerField;
    insereEstoqueCAIXA: TIntegerField;
    insereEstoqueUSADO: TIntegerField;
    insereEstoqueSTATUS: TIntegerField;
    insereEstoqueDATAREG: TSQLTimeStampField;
    dsEstoque: TDataSource;
    PropriedadePropriaRASTREADA: TIntegerField;
    PropriedadePropriaCOD_ERAS_BND: TStringField;
    PropriedadePropriaCIF: TStringField;
    qryPropriedadeOrigemGUID: TStringField;
    qryPropriedadeOrigemRASTREADA: TIntegerField;
    qryPropriedadeOrigemCOD_ERAS_BND: TStringField;
    qryPropriedadeOrigemCIF: TStringField;
    TablePropriedadesRASTREADA: TIntegerField;
    TablePropriedadesCOD_ERAS_BND: TStringField;
    TablePropriedadesCIF: TStringField;
    AnexoIXReident: TFDQuery;
    AnexoIXReidentID_COMUNICADO_REIDENT: TIntegerField;
    AnexoIXReidentPRODUTOR: TStringField;
    AnexoIXReidentPROPRIEDADES: TStringField;
    AnexoIXReidentCPF_CNPJ: TStringField;
    AnexoIXReidentCIDADEUF: TStringField;
    AnexoIXReidentENDERECO: TStringField;
    AnexoIXReidentFABRICANTE: TStringField;
    AnexoIXReidentSISBOV: TStringField;
    AnexoIXReidentMANEJO: TStringField;
    AnexoIXReidentDN: TDateField;
    AnexoIXReidentIDADE_MESES: TIntegerField;
    AnexoIXReidentSEXO: TStringField;
    AnexoIXReidentMOTIVO: TStringField;
    AnexoIXReidentDATA_BRINCAGEM: TDateField;
    AnexoIXReidentIDPEDIDO: TIntegerField;
    AnexoIXReidentCAIXA: TIntegerField;
    AnexoIXReidentQTD_REG_PAGINA: TIntegerField;
    dsComReident: TDataSource;
    DeclaracaoReident: TFDQuery;
    DeclaracaoReidentID: TIntegerField;
    DeclaracaoReidentNUMERO: TIntegerField;
    DeclaracaoReidentDATA: TDateField;
    DeclaracaoReidentSISBOV_NEW: TStringField;
    DeclaracaoReidentSISBOV_OLD: TStringField;
    DeclaracaoReidentPRODUTOR: TStringField;
    DeclaracaoReidentCPF_CNPJ: TStringField;
    DeclaracaoReidentPROPRIEDADE: TStringField;
    DeclaracaoReidentCIDADE: TStringField;
    DeclaracaoReidentUF: TStringField;
    DeclaracaoReidentCOD_ERAS_BND: TStringField;
    TableComunicadoReident: TFDQuery;
    TableComunicadoReidentID: TIntegerField;
    TableComunicadoReidentNUMERO: TIntegerField;
    TableComunicadoReidentDATA: TDateField;
    TableComunicadoReidentID_PRODUTOR: TIntegerField;
    TableComunicadoReidentSTATUS: TIntegerField;
    TableComunicadoReidentDATAREG: TSQLTimeStampField;
    TableComunicadoReidentID_USUARIO: TIntegerField;
    TableDetComReident: TFDQuery;
    TableDetComReidentID: TIntegerField;
    TableDetComReidentSISBOV_OLD: TStringField;
    TableDetComReidentSISBOV_NEW: TStringField;
    TableDetComReidentID_COMUNICADO: TIntegerField;
    TableDetComReidentDATA: TDateField;
    TableComunicadoMorte: TFDQuery;
    TableComunicadoMorteID: TIntegerField;
    TableComunicadoMorteNUMERO: TIntegerField;
    TableComunicadoMorteID_PRODUTOR: TIntegerField;
    TableComunicadoMorteDATA: TDateField;
    TableComunicadoMorteDATAREG: TSQLTimeStampField;
    TableComunicadoMorteID_USUARIO: TIntegerField;
    TableComunicadoMorteSTATUS: TIntegerField;
    TableComunicadoMortePRODUTOR: TStringField;
    DetComunicadoMorte: TFDQuery;
    DetComunicadoMorteID: TIntegerField;
    DetComunicadoMorteID_LOCAL: TIntegerField;
    DetComunicadoMorteID_CATEGORIA: TIntegerField;
    DetComunicadoMorteID_RACA: TIntegerField;
    DetComunicadoMorteIDENTIFICACAO_1: TStringField;
    DetComunicadoMorteIDENTIFICACAO_2: TStringField;
    DetComunicadoMorteDATA_PROC: TSQLTimeStampField;
    DetComunicadoMorteGTA_ID: TIntegerField;
    DetComunicadoMorteIDADE_MESES: TIntegerField;
    DetComunicadoMortePESO_ENTRADA: TFMTBCDField;
    DetComunicadoMorteULTIMO_PESO: TFMTBCDField;
    DetComunicadoMorteDATA_ULTIMO_PESO: TDateField;
    DetComunicadoMorteSTATUS: TIntegerField;
    DetComunicadoMorteDATAREG: TSQLTimeStampField;
    DetComunicadoMorteID_USUARIO: TIntegerField;
    DetComunicadoMorteDATA_SAIDA: TDateField;
    DetComunicadoMortePESO_SAIDA: TFMTBCDField;
    DetComunicadoMorteID_PROPRIEDADE: TIntegerField;
    DetComunicadoMorteID_PRODUTOR: TIntegerField;
    DetComunicadoMorteULTIMA_ALTERACAO: TSQLTimeStampField;
    DetComunicadoMorteULTIMO_USUARIO: TIntegerField;
    DetComunicadoMorteID_LOTESAIDA: TIntegerField;
    DetComunicadoMorteID_VEICULO_SAIDA: TIntegerField;
    DetComunicadoMorteORIGEM_DADOS: TStringField;
    DetComunicadoMorteTIPO_SAIDA: TStringField;
    DetComunicadoMorteID_MOTIVO_MORTE: TIntegerField;
    DetComunicadoMorteID_LOTE: TIntegerField;
    DetComunicadoMorteVALOR_COMPRA: TFMTBCDField;
    DetComunicadoMorteVALOR_VENDA: TFMTBCDField;
    DetComunicadoMorteID_PRODUTOR_ORIGEM: TIntegerField;
    DetComunicadoMorteFLAG_SYNC: TIntegerField;
    DetComunicadoMorteDATA_SYNC: TSQLTimeStampField;
    DetComunicadoMorteDATA_LIBERACAO: TDateField;
    DetComunicadoMorteID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    DetComunicadoMorteDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    DetComunicadoMorteID_CONTRATO_COMPRA: TIntegerField;
    DetComunicadoMorteID_COMUNICADO_REIDENT: TIntegerField;
    DetComunicadoMorteID_COMUNICADO_MORTE: TIntegerField;
    DetComunicadoMorteRACA: TStringField;
    DetComunicadoMorteCATEGORIA: TStringField;
    DetComunicadoMorteULTIMO_LOCAL: TStringField;
    DetComunicadoMorteMOTIVO: TStringField;
    DetComunicadoMorteOBS_MORTE: TStringField;
    DetComunicadoMorteTIPO_MORTE: TIntegerField;
    dsComMorte: TDataSource;
    qryAuxMorte: TFDQuery;
    qryAuxMorteID: TIntegerField;
    qryAuxMorteNOME: TStringField;
    qryAuxMorteDATAREG: TSQLTimeStampField;
    qryAuxMorteID_USER: TIntegerField;
    AnexoVIII: TFDQuery;
    AnexoVIIINUMCOMUNIADO: TIntegerField;
    AnexoVIIIPRODUTOR: TStringField;
    AnexoVIIICPF_CNPJ: TStringField;
    AnexoVIIIPROPRIEDADE: TStringField;
    AnexoVIIICIDADE: TStringField;
    AnexoVIIIUF: TStringField;
    AnexoVIIIIDENTIFICACAO_2: TStringField;
    AnexoVIIITIPOMORTE: TStringField;
    AnexoVIIICAUSAMORTE: TStringField;
    AnexoVIIIDATA_SAIDA: TDateField;
    GtasAnexoV: TFDQuery;
    GtasAnexoVGTAS: TStringField;
    GtasAnexoVID_COMUNICADO: TIntegerField;
    AnexoIX: TFDQuery;
    AnimaisAnexoV: TFDQuery;
    CabecalhoAnexoV: TFDQuery;
    CabecalhoAnexoVID: TIntegerField;
    CabecalhoAnexoVNUMERO: TIntegerField;
    CabecalhoAnexoVID_PRODUTOR_ORIGEM: TIntegerField;
    CabecalhoAnexoVID_PRODUTOR_DESTINO: TIntegerField;
    CabecalhoAnexoVDATA_ENTRADA: TDateField;
    CabecalhoAnexoVSTATUS: TIntegerField;
    CabecalhoAnexoVDATAREG: TSQLTimeStampField;
    CabecalhoAnexoVSTATUS_COMUNICADO: TIntegerField;
    CabecalhoAnexoVPROPRIEDAORIGEM: TStringField;
    CabecalhoAnexoVPRODUTORORIGEM: TStringField;
    CabecalhoAnexoVCPFCNPJORIGEM: TStringField;
    CabecalhoAnexoVCIDADEORIGEM: TStringField;
    CabecalhoAnexoVUFORIGEM: TStringField;
    CabecalhoAnexoVPROPRIEDADESTINO: TStringField;
    CabecalhoAnexoVPRODUTORDESTINO: TStringField;
    CabecalhoAnexoVCPFCNPJDESTINO: TStringField;
    CabecalhoAnexoVCIDADEDESTINO: TStringField;
    CabecalhoAnexoVUFDESTINO: TStringField;
    TableTMP_GTA_COM_ENT: TFDQuery;
    TableTMP_GTA_COM_ENTID: TIntegerField;
    TableTMP_GTA_COM_ENTID_GTA: TIntegerField;
    TableTMP_GTA_COM_ENTNUM_GTA: TStringField;
    TableTMP_GTA_COM_ENTTOTAL_ANIMAIS: TIntegerField;
    TableComunicadoEntrada: TFDQuery;
    TableComunicadoEntradaID: TIntegerField;
    TableComunicadoEntradaNUMERO: TIntegerField;
    TableComunicadoEntradaID_PRODUTOR_ORIGEM: TIntegerField;
    TableComunicadoEntradaID_PRODUTOR_DESTINO: TIntegerField;
    TableComunicadoEntradaDATA_ENTRADA: TDateField;
    TableComunicadoEntradaSTATUS: TIntegerField;
    TableComunicadoEntradaDATAREG: TSQLTimeStampField;
    TableComunicadoEntradaSTATUS_COMUNICADO: TIntegerField;
    TableComunicadoEntradaPRODUTOR_ORIGEM: TStringField;
    TableComunicadoEntradaPRODUTOR_DESTINO: TStringField;
    TableComunicadoEntradaSTATUS_STR: TStringField;
    dsGtasComEnt: TDataSource;
    qryGtasComunicadoEnt: TFDQuery;
    qryGtasComunicadoEntID: TIntegerField;
    qryGtasComunicadoEntNUMERO: TStringField;
    qryGtasComunicadoEntSERIE: TStringField;
    qryGtasComunicadoEntUF: TStringField;
    qryGtasComunicadoEntDATA_EMISSAO: TDateField;
    qryGtasComunicadoEntDATA_VALIDADE: TDateField;
    qryGtasComunicadoEntZERO_A_12_FEMEA: TIntegerField;
    qryGtasComunicadoEntZERO_A_12_MACHO: TIntegerField;
    qryGtasComunicadoEntTREZE_A_24_FEMEA: TIntegerField;
    qryGtasComunicadoEntTREZE_A_24_MACHO: TIntegerField;
    qryGtasComunicadoEntVITE_CINCO_A_36_FEMEA: TIntegerField;
    qryGtasComunicadoEntVITE_CINCO_A_36_MACHO: TIntegerField;
    qryGtasComunicadoEntMAIS_36_FEMEA: TIntegerField;
    qryGtasComunicadoEntMAIS_36_MACHO: TIntegerField;
    qryGtasComunicadoEntTOTAL_FEMEAS: TLargeintField;
    qryGtasComunicadoEntTOTAL_MACHOS: TLargeintField;
    qryGtasComunicadoEntTOTAL_GTA: TLargeintField;
    qryGtasComunicadoEntSTATUS: TIntegerField;
    qryGtasComunicadoEntUSER_ID: TIntegerField;
    qryGtasComunicadoEntDATA_REG: TSQLTimeStampField;
    qryGtasComunicadoEntTIPO: TStringField;
    qryGtasComunicadoEntID_PROPRIEDADE_ORIGEM: TIntegerField;
    qryGtasComunicadoEntID_PRODUTOR_ORIGEM: TIntegerField;
    qryGtasComunicadoEntID_PROPRIEDADE_DESTINO: TIntegerField;
    qryGtasComunicadoEntID_PRODUTOR_DESTINO: TIntegerField;
    qryGtasComunicadoEntTOTAL_BRINCADOS: TIntegerField;
    qryGtasComunicadoEntLOTADA: TIntegerField;
    qryGtasComunicadoEntGUID: TStringField;
    qryGtasComunicadoEntID_COMUNICADO: TIntegerField;
    CabecalhoAnexoVCOD_ERAS_BND_ORIGEM: TStringField;
    CabecalhoAnexoVCOD_ERAS_BND_DESTINO: TStringField;
    CabecalhoAnexoVNIRFORIGEM: TStringField;
    CabecalhoAnexoVINCRAORIGEM: TStringField;
    CabecalhoAnexoVNIRFDESTINO: TStringField;
    CabecalhoAnexoVINCRADESTINO: TStringField;
    TablePropriedadesNIRF: TStringField;
    TablePropriedadesINCRA: TStringField;
    TablePedidoBrincoTIPO: TStringField;
    DeclaracaoReidentNIRF: TStringField;
    DeclaracaoReidentINCRA: TStringField;
    AnexoIXReidentDATA_SOLICITACAO: TDateField;
    AnexoIXReidentTIPO: TStringField;
    AnexoIXReidentCERTIFICADORA_NOME: TStringField;
    AnexoIXReidentNIRFINCRA: TStringField;
    AnexoVIIINIRF: TStringField;
    AnexoVIIIINCRA: TStringField;
    AnexoVIIISEXO: TStringField;
    AnexoVIIIOBS: TStringField;
    AnexoVIIIDESTINO: TStringField;
    TableComunicadoMorteOBS: TStringField;
    TableComunicadoMorteDESTINO: TStringField;
    qryGridMovPASTO: TStringField;
    qryGridMovQTD: TIntegerField;
    qryGridMovMEDIAPESO: TFMTBCDField;
    qryGridMovDATA_REPROCESSAMENTO: TDateField;
    CabecalhoAnexoVIEO: TStringField;
    CabecalhoAnexoVIED: TStringField;
    DeclaracaoReidentIE: TStringField;
    AnexoIXReidentIE: TStringField;
    TableComunicadoNascimento: TFDQuery;
    qryGridAniNascimento: TFDQuery;
    qryGridAniNascimentoDATA_PROC: TSQLTimeStampField;
    qryGridAniNascimentoLOCAL_ATUAL: TStringField;
    qryGridAniNascimentoRACA: TStringField;
    qryGridAniNascimentoCATEGORIA: TStringField;
    qryGridAniNascimentoPESO_ENTRADA: TFMTBCDField;
    qryGridAniNascimentoCARIMBO_NASCIMENTO: TStringField;
    qryGridAniNascimentoCHIP: TStringField;
    qryGridAniNascimentoSISBOV: TStringField;
    qryGridAniNascimentoIDENTIFICACAO_MAE: TStringField;
    qryGridAniNascimentoIDADE_MESES: TIntegerField;
    qryGridAniNascimentoID_COM_NASCIMENTO: TIntegerField;
    qryGridAniNascimentoID_RACA: TIntegerField;
    qryGridAniNascimentoID_CATEGORIA: TIntegerField;
    qryGridAniNascimentoID_LOCAL: TIntegerField;
    qryGridAniNascimentoID: TIntegerField;
    dsGridNasci: TDataSource;
    TableComunicadoReidentPRODUTOR: TStringField;
    qryVeiculosLotados: TFDQuery;
    qryVeiculosLotadosID: TIntegerField;
    qryVeiculosLotadosID_LOTESAIDA: TIntegerField;
    qryVeiculosLotadosPLACA: TStringField;
    qryVeiculosLotadosDATAREG: TSQLTimeStampField;
    qryVeiculosLotadosSTATUS: TIntegerField;
    qryVeiculosLotadosID_USER: TIntegerField;
    qryVeiculosLotadosCAPACIDADE: TIntegerField;
    qryVeiculosLotadosLOTACAO: TIntegerField;
    qryVeiculosLotadosLOTADO: TIntegerField;
    qryVeiculosLotadosNOME: TStringField;
    qryVeiculosLotadosGTA: TStringField;
    qryVeiculosLotadosDATA_EMISSAO: TDateField;
    qryVeiculosLotadosDATA_VALIDADE: TDateField;
    qryVeiculosLotadosTOTAL_GTA: TLargeintField;
    GTAAnexoVI_VII: TFDQuery;
    GTAAnexoVI_VIINUM_GTA: TStringField;
    AnexoVI_VII: TFDQuery;
    AnexoVI_VIIPROPRIEDADE_ORIGEM: TStringField;
    AnexoVI_VIICOD_ERAS_BND: TStringField;
    AnexoVI_VIICOD_ESTAB_GTA: TStringField;
    AnexoVI_VIIPRODUTOR_ORIGEM: TStringField;
    AnexoVI_VIICPF_CNPJ: TStringField;
    AnexoVI_VIICIDADE: TStringField;
    AnexoVI_VIIUF: TStringField;
    AnexoVI_VIIPROPRIEDADE_DESTINO: TStringField;
    AnexoVI_VIICOD_ERAS_BND_DESTINO: TStringField;
    AnexoVI_VIICOD_ESTAB_GTA_DESTINO: TStringField;
    AnexoVI_VIIPRODUTOR_DESTINO: TStringField;
    AnexoVI_VIICPF_CNPJ_DESTINO: TStringField;
    AnexoVI_VIICIDADE_DESTINO: TStringField;
    AnexoVI_VIIUF_DESTINO: TStringField;
    AnexoVI_VIISISBOV: TStringField;
    AnexoVI_VIIDATA_EMBARQUE: TDateField;
    AnexoVI_VIISIF: TStringField;
    AnexoVI_VIINIRFO: TStringField;
    AnexoVI_VIIINCRAO: TStringField;
    AnexoVI_VIINIRFD: TStringField;
    AnexoVI_VIIINCRAD: TStringField;
    AnexoVI_VIIIEO: TStringField;
    AnexoVI_VIIIED: TStringField;
    TableFornecedorFarmaco: TFDQuery;
    TableFornecedorFarmacoID: TIntegerField;
    TableFornecedorFarmacoNOME_FANTASIA: TStringField;
    TableFornecedorFarmacoCNPJ: TStringField;
    TableFornecedorFarmacoSTATUS: TIntegerField;
    TableFornecedorFarmacoDATAREG: TSQLTimeStampField;
    TableFornecedorFarmacoID_USUARIO: TIntegerField;
    TableFornecedorFarmacoCONTATO: TStringField;
    TableFornecedorFarmacoCIDADE: TStringField;
    TableFornecedorFarmacoUF: TStringField;
    TableFornecedorFarmacoTELEFONE: TStringField;
    TableFornecedorFarmacoENDERECO: TStringField;
    TableFarmacos: TFDQuery;
    TableFarmacosID: TIntegerField;
    TableFarmacosNOME: TStringField;
    TableFarmacosPRINCIPIO_ATIVO: TStringField;
    TableFarmacosID_FABRICANTE: TIntegerField;
    TableFarmacosTIPO_APICACAO: TIntegerField;
    TableFarmacosML_DOSE_FIXA: TFMTBCDField;
    TableFarmacosML_DOSE_PV: TFMTBCDField;
    TableFarmacosKG_DOSE_PV: TFMTBCDField;
    TableFarmacosDATA_REG: TSQLTimeStampField;
    TableFarmacosID_USUARIO: TIntegerField;
    TableFarmacosSTATUS: TIntegerField;
    TableFarmacosFABRICANTE: TStringField;
    TableFarmacosTIPO_APLICACAO_STR: TStringField;
    TableAuxIndicacaoFarmaco: TFDQuery;
    TableAuxIndicacaoFarmacoID: TIntegerField;
    TableAuxIndicacaoFarmacoNOME: TStringField;
    TableAuxIndicacaoFarmacoDATAREG: TSQLTimeStampField;
    TableAuxIndicacaoFarmacoID_USUARIO: TIntegerField;
    TableAuxIndicacaoFarmacoSTATUS: TIntegerField;
    TableFarmacosID_INDICACAO: TIntegerField;
    TableFarmacosINDICACAO: TStringField;
    TableProtocolo: TFDQuery;
    TableProtocoloID: TIntegerField;
    TableProtocoloNOME: TStringField;
    TableProtocoloDATAREG: TSQLTimeStampField;
    TableProtocoloID_USUARIO: TIntegerField;
    TableProtocoloSTATUS: TIntegerField;
    TableProtocoloFarmacos: TFDQuery;
    TableProtocoloFarmacosID: TIntegerField;
    TableProtocoloFarmacosID_FARMACO: TIntegerField;
    TableProtocoloFarmacosTIPO_DOSAGEM: TIntegerField;
    TableProtocoloFarmacosID_USUARIO: TIntegerField;
    TableProtocoloFarmacosDOSE_FIXA_ML: TFMTBCDField;
    TableProtocoloFarmacosDOSE_PESO_ML: TFMTBCDField;
    TableProtocoloFarmacosDOSE_PESO_KG: TFMTBCDField;
    TableProtocoloFarmacosSTATUS: TIntegerField;
    TableProtocoloFarmacosID_PROTOCOLO: TIntegerField;
    dsProtocolo: TDataSource;
    TableProtocoloFarmacosFARMACO: TStringField;
    TableProtocoloFarmacosTIPO_APLICACAO_STR: TStringField;
    TableEstoqueFarmaco: TFDQuery;
    TableEstoqueFarmacoID: TIntegerField;
    TableEstoqueFarmacoDATA_ENTRADA: TDateField;
    TableEstoqueFarmacoID_FARMACO: TIntegerField;
    TableEstoqueFarmacoTIPO_EMBALAGEM: TIntegerField;
    TableEstoqueFarmacoML_EMBALAGEM: TFMTBCDField;
    TableEstoqueFarmacoTOTAL_UNIDADE: TIntegerField;
    TableEstoqueFarmacoTOTAL_ML: TFMTBCDField;
    TableEstoqueFarmacoNUMERO_NF: TIntegerField;
    TableEstoqueFarmacoVALOR_NF: TFMTBCDField;
    TableEstoqueFarmacoID_PROPRIEDADE: TIntegerField;
    TableEstoqueFarmacoVALOR_UNIDADE: TFMTBCDField;
    TableEstoqueFarmacoVALOR_ML: TFMTBCDField;
    TableEstoqueFarmacoPARTIDA: TStringField;
    TableEstoqueFarmacoDATAREG: TSQLTimeStampField;
    TableEstoqueFarmacoID_USUARIO: TIntegerField;
    TableEstoqueFarmacoSTATUS: TIntegerField;
    TableEstoqueFarmacoFARMACOS: TStringField;
    TableEstoqueFarmacoTIPO_ENTRADA: TStringField;
    TableEstoqueFarmacoID_USUARIO_ALTERACAO: TIntegerField;
    TableEstoqueFarmacoDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TableAnimalSanidade: TFDQuery;
    TableAnimaisTratamento: TFDQuery;
    TableUsuarioFaz: TFDQuery;
    TableUsuarioFazID: TIntegerField;
    TableUsuarioFazDT_REGISTER: TSQLTimeStampField;
    TableUsuarioFazSTATUS: TIntegerField;
    TableUsuarioFazLOGIN: TStringField;
    TableUsuarioFazPASSWORD: TStringField;
    TableUsuarioFazNAME: TStringField;
    TableUsuarioFazTIPO: TIntegerField;
    TableUsuarioFazID_PROPRIEDADE: TIntegerField;
    TableTratamentosInsert: TFDQuery;
    TableTratamentosInsertID: TIntegerField;
    TableTratamentosInsertID_ANIMAL: TIntegerField;
    TableTratamentosInsertID_FARMACO: TIntegerField;
    TableTratamentosInsertID_PROTOCOLO: TIntegerField;
    TableTratamentosInsertDOSE_ML: TFMTBCDField;
    TableTratamentosInsertID_PROPRIEDAE: TIntegerField;
    TableTratamentosInsertID_LOCAL_ATUAL: TIntegerField;
    TableTratamentosInsertDATA_APLICACAO: TDateField;
    TableTratamentosInsertTIPO_APLICACAO: TIntegerField;
    TableTratamentosInsertID_RESPONSAVEL_APLICACAO: TIntegerField;
    TableTratamentosInsertID_USUARIO: TIntegerField;
    TableTratamentosInsertDATAREG: TSQLTimeStampField;
    TableTratamentosInsertSTATUS: TIntegerField;
    TableTratamentosInsertTIPO_TRATAMENTO: TIntegerField;
    TableProtocoloTelaProc: TFDQuery;
    TableProtocoloFarmacoProc: TFDQuery;
    TableProtocoloFarmacoProcID: TIntegerField;
    TableProtocoloFarmacoProcID_FARMACO: TIntegerField;
    TableProtocoloFarmacoProcTIPO_DOSAGEM: TIntegerField;
    TableProtocoloFarmacoProcID_USUARIO: TIntegerField;
    TableProtocoloFarmacoProcDOSE_FIXA_ML: TFMTBCDField;
    TableProtocoloFarmacoProcDOSE_PESO_ML: TFMTBCDField;
    TableProtocoloFarmacoProcDOSE_PESO_KG: TFMTBCDField;
    TableProtocoloFarmacoProcSTATUS: TIntegerField;
    TableProtocoloFarmacoProcID_PROTOCOLO: TIntegerField;
    TableProtocoloFarmacoProcFARMACONOME: TStringField;
    TableProtocoloTelaProcID: TIntegerField;
    TableProtocoloTelaProcNOME: TStringField;
    TableProtocoloTelaProcDATAREG: TSQLTimeStampField;
    TableProtocoloTelaProcID_USUARIO: TIntegerField;
    TableProtocoloTelaProcSTATUS: TIntegerField;
    TableProtocoloFarmacoProcTIPO_APICACAO_STR: TStringField;
    TableProtocoloTelaProcTIPO: TIntegerField;
    TableProtocoloTIPO: TIntegerField;
    TableProtocoloTIPO_STR: TStringField;
    TableFarmacosCARENCIA_DIA: TIntegerField;
    TableProtocoloFarmacosCARENCIA_DIAS: TIntegerField;
    TableTratamentosInsertID_RESPONSAVEL_APLI_DIREITO: TIntegerField;
    TableTratamentosInsertCARENCIA_DIAS: TIntegerField;
    TableTratamentosInsertCARENCIA_DATA: TDateField;
    TableProtocoloFarmacoProcCARENCIA_DIAS: TIntegerField;
    TableProtocoloFarmacoProcTIPO_APICACAO: TIntegerField;
    TablePropriedadesTIPO: TStringField;
    TableCategoriaPadrao: TFDQuery;
    TableCategoriaPadraoID: TIntegerField;
    TableCategoriaPadraoNOME: TStringField;
    TableCategoriaPadraoSEXO: TStringField;
    TableCategoriaPadraoIDADE_MINIMA: TIntegerField;
    TableCategoriaPadraoIDADE_MAXIMA: TIntegerField;
    TableCategoriaPadraoGMD: TFMTBCDField;
    TableCategoriasID_CATEGORIA_PADRAO: TIntegerField;
    TableCategoriasCATPADRAO: TStringField;
    TableRacasCODIGO_BND: TStringField;
    AnexoIXReidentCODIGO_BND: TStringField;
    TableTTA: TFDQuery;
    TableTTAID: TIntegerField;
    TableTTANUMERO: TIntegerField;
    TableTTAID_PRODUTOR_ORIGEM: TIntegerField;
    TableTTAID_PRODUTOR_DESTINO: TIntegerField;
    TableTTADATA_TRANFERENCIA: TDateField;
    TableTTADATAREG: TSQLTimeStampField;
    TableTTAID_USUARIO: TIntegerField;
    TableTTASTATUS: TIntegerField;
    TableTTAPROPRIEDADES: TStringField;
    TableTTAPRODUTORDESTINO: TStringField;
    TableTTAPRODUTORORIGEM: TStringField;
    TableTTAAnimais: TFDQuery;
    TableTTAAnimaisID: TIntegerField;
    TableTTAAnimaisID_TTA: TIntegerField;
    TableTTAAnimaisID_ANIMAL: TIntegerField;
    TableTTAAnimaisDATAREG: TSQLTimeStampField;
    TableTTAAnimaisID_USUARIO: TIntegerField;
    TableTTAAnimaisSTATUS: TIntegerField;
    TableTTAAnimaisCHIP: TStringField;
    TableTTAAnimaisSISBOV: TStringField;
    TableTTAAnimaisPESO_ENTRADA: TFMTBCDField;
    TableTTAAnimaisCATEGORIA: TStringField;
    dsTTA: TDataSource;
    TableTTADATA_ALTERACAO: TSQLTimeStampField;
    TableTTAID_ALTERACAO: TIntegerField;
    TableTTATTA_NUM: TStringField;
    TableTTASERIE: TStringField;
    TableTTAAnimaisRACA: TStringField;
    TableTTAAnimaisDATA_ENT: TSQLTimeStampField;
    TableTTAID_PROPRIEDADE: TIntegerField;
    TableTTAOBSERVACAO: TStringField;
    TableTTATOTAL_ANIMAIS: TIntegerField;
    TableTTAAnimaisInsert: TFDQuery;
    TableTTAAnimaisInsertID: TIntegerField;
    TableTTAAnimaisInsertID_TTA: TIntegerField;
    TableTTAAnimaisInsertID_ANIMAL: TIntegerField;
    TableTTAAnimaisInsertDATAREG: TSQLTimeStampField;
    TableTTAAnimaisInsertID_USUARIO: TIntegerField;
    TableTTAAnimaisInsertSTATUS: TIntegerField;
    TableTTAUF: TStringField;
    TableTTASTATUS_STR: TStringField;
    TableTTAAnimaisPRODUTOR_O: TStringField;
    TableTTAAnimaisCNPJ_O: TStringField;
    TableTTAAnimaisPRODUTOR_D: TStringField;
    TableTTAAnimaisCNPJ_D: TStringField;
    TableTTAAnimaisCOD_ESTAB_GTA: TStringField;
    TableTTAAnimaisPROPRIEDADE: TStringField;
    TableTTAAnimaisIE: TStringField;
    TableTTAAnimaisNIRF: TStringField;
    TableTTAAnimaisINCRA: TStringField;
    TableTTAAnimaisCIDADE: TStringField;
    TableTTAAnimaisUF: TStringField;
    dsComTTA: TDataSource;
    TableTTAAnimaisCOD_ERAS_BND: TStringField;
    TableTTAAnimaisDATA_TRANFERENCIA: TDateField;
    TableTTAAnimaisTOTAL_ANIMAIS: TIntegerField;
    TableTTAAnimaisTTA_NUMERO: TStringField;
    TableTTAAnimaisCOD_COMUNICADO: TIntegerField;
    TableGTARASTREADO: TIntegerField;
    TableConfigManejoUSA_CHIP: TIntegerField;
    TableConfigManejoUSA_BALANCA: TIntegerField;
    TableConfigManejoUSA_RFID: TIntegerField;
    TableConfigManejoCHECA_BND_ORIGEM: TIntegerField;
    TableComunicadoEntradaOUTRO_ERAS: TIntegerField;
    TableHistMov: TFDQuery;
    TableHistMovDATA: TDateField;
    TableHistMovPASTO_ORIGEM: TStringField;
    TableHistMovPASTO_DESTINO: TStringField;
    TableHistMovMOTIVO: TStringField;
    RelHistMov: TFDQuery;
    RelHistMovDATA: TDateField;
    RelHistMovPASTO_ORIGEM: TStringField;
    RelHistMovPASTO_DESTINO: TStringField;
    RelHistMovQTD: TIntegerField;
    PrevisaoFornecimentoDIASEMANA: TStringField;
    qryPrevGridDIASEMANA: TStringField;
    TableTMPProjPrev: TFDQuery;
    qryAuxDelete: TFDQuery;
    TableTMPProjPrevID: TIntegerField;
    TableTMPProjPrevID_PASTO: TIntegerField;
    TableTMPProjPrevDATA: TDateField;
    TableTMPProjPrevPESO_PROJ: TFMTBCDField;
    TableTMPProjPrevID_RACA: TIntegerField;
    TableTMPProjPrevID_CATEGORIA: TIntegerField;
    TableGridPrevResumo: TFDQuery;
    dsGridPrevResumo: TDataSource;
    PrevisaoFornecimentoID_PRODUTO: TIntegerField;
    PrevisaoFornecimentoPESO_EMBALAGEM: TFMTBCDField;
    PrevisaoFornecimentoQTDSACO: TFMTBCDField;
    PrevisaoFornecimentoQTDSACOPV: TFMTBCDField;
    TableTratamentosInsertID_USUARIO_ALTERACAO: TIntegerField;
    TableTratamentosInsertDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TableTratamentosInsertORIGEM_DADOS: TIntegerField;
    TableAnimalSanidadeID: TIntegerField;
    TableAnimalSanidadeID_ANIMAL: TIntegerField;
    TableAnimalSanidadeID_FARMACO: TIntegerField;
    TableAnimalSanidadeID_PROTOCOLO: TIntegerField;
    TableAnimalSanidadeDOSE_ML: TFMTBCDField;
    TableAnimalSanidadeID_PROPRIEDAE: TIntegerField;
    TableAnimalSanidadeID_LOCAL_ATUAL: TIntegerField;
    TableAnimalSanidadeDATA_APLICACAO: TDateField;
    TableAnimalSanidadeTIPO_APLICACAO: TIntegerField;
    TableAnimalSanidadeID_RESPONSAVEL_APLICACAO: TIntegerField;
    TableAnimalSanidadeID_USUARIO: TIntegerField;
    TableAnimalSanidadeDATAREG: TSQLTimeStampField;
    TableAnimalSanidadeSTATUS: TIntegerField;
    TableAnimalSanidadeTIPO_TRATAMENTO: TIntegerField;
    TableAnimalSanidadeID_RESPONSAVEL_APLI_DIREITO: TIntegerField;
    TableAnimalSanidadeCARENCIA_DIAS: TIntegerField;
    TableAnimalSanidadeCARENCIA_DATA: TDateField;
    TableAnimalSanidadeID_USUARIO_ALTERACAO: TIntegerField;
    TableAnimalSanidadeDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TableAnimalSanidadeORIGEM_DADOS: TIntegerField;
    TableAnimalSanidadeFARMACONOME: TStringField;
    TableAnimalSanidadePROTOCOLONOME: TStringField;
    TableAnimalSanidadeLOCALATUALNOME: TStringField;
    TableAnimalSanidadeRESPONSAVELAPLICACAO: TStringField;
    TableAnimalSanidadeIDENTIFICACAO_1: TStringField;
    TableAnimalSanidadeIDENTIFICACAO_2: TStringField;
    TableAnimalSanidadeTIPO_TRATAMENTO_STR: TStringField;
    TableAnimaisMorte: TFDQuery;
    TableAnimaisNasimento: TFDQuery;
    TableComprador: TFDQuery;
    TableCompradorID: TIntegerField;
    TableCompradorNOME: TStringField;
    TableCompradorTELEFONE: TStringField;
    TableCompradorEMAIL: TStringField;
    TableCompradorID_USUARIO: TIntegerField;
    TableCompradorSTATUS: TIntegerField;
    qryGtaProcGUID: TStringField;
    qryGtaProcID_COMUNICADO: TIntegerField;
    qryGtaProcID_VEICULO_SAIDA: TIntegerField;
    qryGtaProcRASTREADO: TIntegerField;
    qryGtaProcID_USUARIO_ALTERACAO: TIntegerField;
    qryGtaProcDATA_ALTERACAO: TSQLTimeStampField;
    qryGtaProcVALOR_FRETE_CAB: TFMTBCDField;
    qryGtaProcVALOR_COMISSAO_CAB: TFMTBCDField;
    qryGtaProcPESO_B_ORIGEM: TFMTBCDField;
    qryGtaProcPESO_B_DESTINO: TFMTBCDField;
    qryGtaProcID_COMPRADOR: TIntegerField;
    qryGtasComunicadoEntZERO_A_12_FEMEA_PROC: TIntegerField;
    qryGtasComunicadoEntZERO_A_12_MACHO_PROC: TIntegerField;
    qryGtasComunicadoEntTREZE_A_24_FEMEA_PROC: TIntegerField;
    qryGtasComunicadoEntTREZE_A_24_MACHO_PROC: TIntegerField;
    qryGtasComunicadoEntVITE_CINCO_A_36_FEMEA_PROC: TIntegerField;
    qryGtasComunicadoEntVITE_CINCO_A_36_MACHO_PROC: TIntegerField;
    qryGtasComunicadoEntMAIS_36_FEMEA_PROC: TIntegerField;
    qryGtasComunicadoEntMAIS_36_MACHO_PROC: TIntegerField;
    qryGtasComunicadoEntVALOR_CAB: TLargeintField;
    qryGtasComunicadoEntID_VEICULO_SAIDA: TIntegerField;
    qryGtasComunicadoEntRASTREADO: TIntegerField;
    qryGtasComunicadoEntID_USUARIO_ALTERACAO: TIntegerField;
    qryGtasComunicadoEntDATA_ALTERACAO: TSQLTimeStampField;
    qryGtasComunicadoEntVALOR_FRETE_CAB: TFMTBCDField;
    qryGtasComunicadoEntVALOR_COMISSAO_CAB: TFMTBCDField;
    qryGtasComunicadoEntPESO_B_ORIGEM: TFMTBCDField;
    qryGtasComunicadoEntPESO_B_DESTINO: TFMTBCDField;
    qryGtasComunicadoEntID_COMPRADOR: TIntegerField;
    TableGTAGUID: TStringField;
    TableGTAZERO_A_12_FEMEA_PROC: TIntegerField;
    TableGTAZERO_A_12_MACHO_PROC: TIntegerField;
    TableGTATREZE_A_24_FEMEA_PROC: TIntegerField;
    TableGTATREZE_A_24_MACHO_PROC: TIntegerField;
    TableGTAVITE_CINCO_A_36_FEMEA_PROC: TIntegerField;
    TableGTAVITE_CINCO_A_36_MACHO_PROC: TIntegerField;
    TableGTAMAIS_36_FEMEA_PROC: TIntegerField;
    TableGTAMAIS_36_MACHO_PROC: TIntegerField;
    TableGTAID_COMUNICADO: TIntegerField;
    TableGTAID_VEICULO_SAIDA: TIntegerField;
    TableGTAID_USUARIO_ALTERACAO: TIntegerField;
    TableGTADATA_ALTERACAO: TSQLTimeStampField;
    TableGTAVALOR_FRETE_CAB: TFMTBCDField;
    TableGTAVALOR_COMISSAO_CAB: TFMTBCDField;
    TableGTAPESO_B_ORIGEM: TFMTBCDField;
    TableGTAPESO_B_DESTINO: TFMTBCDField;
    TableGTAID_COMPRADOR: TIntegerField;
    TableGTANOME_4: TStringField;
    TableRetiroAREA_HECTARES: TFMTBCDField;
    TableConfigManejoATUALIZA_DT_ENTRADA: TIntegerField;
    TableConfigManejoATUALIZA_PESO_ENTRADA: TIntegerField;
    Tablekey: TFDQuery;
    TablekeyKEY: TStringField;
    TablekeyDATAREG: TSQLTimeStampField;
    TablekeyID: TIntegerField;
    TablekeySTATUS: TIntegerField;
    qryRelResumoGeralPASTO: TStringField;
    qryRelResumoGeralRACA: TStringField;
    qryRelResumoGeralCATEGORIAATUAL: TStringField;
    qryRelResumoGeralQTD_CAB: TIntegerField;
    qryRelResumoGeralDIAS_MEDIO: TLargeintField;
    qryRelResumoGeralPESO_ENT: TFMTBCDField;
    qryRelResumoGeralARR_ENTRADA: TFMTBCDField;
    qryRelResumoGeralPESO_ATUAL: TFMTBCDField;
    qryRelResumoGeralARR_ATUAL: TFMTBCDField;
    qryRelResumoGeralCONSUMO_ACUMULADO: TFMTBCDField;
    qryRelResumoGeralCUSTO_ALIMENTAR: TFMTBCDField;
    qryRelResumoGeralCUSTOFIXOACUMULADO: TFMTBCDField;
    qryRelResumoGeralCUSTOTOTALMAISCOMPRA: TFMTBCDField;
    qryRelResumoGeralCUSTOTOTAL: TFMTBCDField;
    qryRelResumoGeralIMS_PV: TBCDField;
    qryRelResumoGeralID_PROPRIEDADE: TIntegerField;
    qryRelResumoGeralCUSTO_ARR_PROD: TFMTBCDField;
    qryRelResumoGeralDATA_ENTRADA_MEDIA: TDateField;
    qryRelResumoGeralARR_PRODUZIDA: TFMTBCDField;
    qryRelResumoGeralCUSTO_ALIMENTAR_CAB: TFMTBCDField;
    qryRelResumoGeralCUSTO_FIXO_CAB_DIA: TFMTBCDField;
    qryRelResumoGeralGTP: TFMTBCDField;
    qryRelResumoGeralGMD: TFMTBCDField;
    qryRelResumoGeralCONSUMO_CAB_DIA: TFMTBCDField;
    TableCochoMETRAGEM: TFMTBCDField;
    TableCochoCREEPFEED: TIntegerField;
    TableCochoCREEPFEED_STR: TStringField;
    FornecimentoMineralRESPONSAVEL: TStringField;
    PrevisaoFornecimentoCONSUMO_CAB_GR: TFMTBCDField;
    TableAuxMotivoAplicacao: TFDQuery;
    TableAuxMotivoAplicacaoID: TIntegerField;
    TableAuxMotivoAplicacaoMOTIVO: TStringField;
    TableAuxMotivoAplicacaoSTATUS: TIntegerField;
    TableAuxMotivoAplicacaoDATAREG: TSQLTimeStampField;
    TableAuxMotivoAplicacaoID_USUARIO: TIntegerField;
    TableAnimalSanidadeID_MOTIVO_APLICACAO: TIntegerField;
    TableAnimalSanidadeMOTIVO: TStringField;
    TableTratamentosInsertID_MOTIVO_APLICACAO: TIntegerField;
    MotivoMovimentacaoSTATUS: TIntegerField;
    TablePlanUsoMineral: TFDQuery;
    TablePlanUsoMineralID: TIntegerField;
    TablePlanUsoMineralID_COCHO: TIntegerField;
    TablePlanUsoMineralID_MINERAL: TIntegerField;
    TablePlanUsoMineralDATA: TDateField;
    TablePlanUsoMineralID_USUARIO: TIntegerField;
    TablePlanUsoMineralDATA_REG: TSQLTimeStampField;
    TablePlanUsoMineralSTATUS: TIntegerField;
    TablePlanUsoMineralPASTO: TStringField;
    TablePlanUsoMineralCOCHO: TStringField;
    TablePlanUsoMineralSUPLEMENTO: TStringField;
    TablePlanUsoMineralCONSUMO_ESPERADO: TFMTBCDField;
    TablePlanUsoMineralRETIRO: TStringField;
    qryVerificaPrevisao: TFDQuery;
    qryConfigPadraoLOGO: TMemoField;
    qryConfigPadraoGMD: TIntegerField;
    qryConfigPadraoDATA_DIARIAS: TDateField;
    TInsereLog: TFDQuery;
    qryConfigPadraoGMD_PADRAO: TFMTBCDField;
    qryConfigPadraoCONSUMO_PV_PADRAO: TFMTBCDField;
    TableGridPrevResumoDATA: TDateField;
    TableGridPrevResumoDIASEMANA: TStringField;
    TableGridPrevResumoPASTO: TStringField;
    TableGridPrevResumoQTD_CAB: TIntegerField;
    TableGridPrevResumoCONSUMO_CAB: TFMTBCDField;
    TableGridPrevResumoCONSUMO_TOTAL: TFMTBCDField;
    TableGridPrevResumoPESO_ESTIMADO: TFMTBCDField;
    TableGridPrevResumoPESOSACO: TFMTBCDField;
    TableGridPrevResumoTOTALSACO: TFMTBCDField;
    qryVerificaPrevisaoDATA: TDateField;
    qryVerificaPrevisaoDIASEMANA: TStringField;
    qryVerificaPrevisaoPASTO: TStringField;
    qryVerificaPrevisaoQTD_CAB: TIntegerField;
    qryVerificaPrevisaoCONSUMO_CAB: TFMTBCDField;
    qryVerificaPrevisaoCONSUMO_TOTAL: TFMTBCDField;
    qryVerificaPrevisaoPESO_ESTIMADO: TFMTBCDField;
    qryVerificaPrevisaoPESOSACO: TFMTBCDField;
    qryVerificaPrevisaoTOTALSACO: TFMTBCDField;
    qryConfigPadraoFREQ_LIMPA_BEBEDOURO: TIntegerField;
    FornecimentoMineralOBSERVACAO: TStringField;
    TableComunicadoNascimentoID: TIntegerField;
    TableComunicadoNascimentoID_PRODUTOR: TIntegerField;
    TableComunicadoNascimentoNUMERO: TIntegerField;
    TableComunicadoNascimentoDATA: TDateField;
    TableComunicadoNascimentoSTATUS: TIntegerField;
    TableComunicadoNascimentoOBSERVACAO: TStringField;
    TableComunicadoNascimentoDATAREG: TSQLTimeStampField;
    TableComunicadoNascimentoID_USUARIO: TIntegerField;
    TableComunicadoNascimentoPRODUTOR: TStringField;
    AnexoIXSISBOV: TStringField;
    AnexoIXMANEJO: TStringField;
    AnexoIXCAIXA: TIntegerField;
    AnexoIXPRODUTOR: TStringField;
    AnexoIXPROPRIEDADES: TStringField;
    AnexoIXCPF_CNPJ: TStringField;
    AnexoIXCIDADEUF: TStringField;
    AnexoIXENDERECO: TStringField;
    AnexoIXQTD_REG_PAGINA: TIntegerField;
    AnexoIXFABRICANTE: TStringField;
    AnexoIXIDPEDIDO: TIntegerField;
    AnexoIXDATA_SOLICITACAO: TDateField;
    AnexoIXTIPO: TStringField;
    AnexoIXCERTIFICADORA_NOME: TStringField;
    AnexoIXNIRFINCRA: TStringField;
    AnexoIXIE: TStringField;
    AnexoIXID_COMUNICADO: TIntegerField;
    AnexoIXIDENTIFICACAO_2: TStringField;
    AnexoIXIDADE_MESES: TIntegerField;
    AnexoIXSEXO: TStringField;
    AnexoIXCODIGO_BND: TStringField;
    AnexoIXMOTIVO: TStringField;
    AnexoIXDATA_BRINCAGEM: TDateField;
    AnexoIXDN: TDateField;
    AnexoVIIIOBS_MORTE: TStringField;
    AnexoVIIITIPOINT: TIntegerField;
    SuplementoFormulacao: TFDQuery;
    dsMineralFormula: TDataSource;
    SuplementoFormulacaoID_MINERAL: TIntegerField;
    SuplementoFormulacaoID_ALIMENTO: TIntegerField;
    SuplementoFormulacaoMN_INCLUSAO_PERCENT: TFMTBCDField;
    SuplementoFormulacaoORDEM: TIntegerField;
    SuplementoFormulacaoVALOR_KG: TFMTBCDField;
    SuplementoFormulacaoDATAREG: TSQLTimeStampField;
    SuplementoFormulacaoID_USUARIO: TIntegerField;
    SuplementoFormulacaoSTATUS: TIntegerField;
    SuplementoFormulacaoALIMENTO: TStringField;
    qryAnimalUp: TFDQuery;
    TTMP_ANIMAIS: TFDQuery;
    qryAux: TFDQuery;
    TableUsersID: TIntegerField;
    TableUsersDT_REGISTER: TSQLTimeStampField;
    TableUsersSTATUS: TIntegerField;
    TableUsersLOGIN: TStringField;
    TableUsersPASSWORD: TStringField;
    TableUsersNAME: TStringField;
    TableUsersTIPO: TIntegerField;
    TableUsersID_PROPRIEDADE: TIntegerField;
    TableUsersID_CARGO: TIntegerField;
    TableUsersCARGO: TStringField;
    TableCurraisORDERM_FORN: TIntegerField;
    SuplementoFormulacaoID: TIntegerField;
    SuplementoFormulacaoMS: TFMTBCDField;
    qryAnexolXNasci: TFDQuery;
    qryAnexolXNasciSISBOV: TStringField;
    qryAnexolXNasciMANEJO: TStringField;
    qryAnexolXNasciCAIXA: TIntegerField;
    qryAnexolXNasciPRODUTOR: TStringField;
    qryAnexolXNasciPROPRIEDADES: TStringField;
    qryAnexolXNasciCPF_CNPJ: TStringField;
    qryAnexolXNasciCIDADEUF: TStringField;
    qryAnexolXNasciENDERECO: TStringField;
    qryAnexolXNasciIE: TStringField;
    qryAnexolXNasciQTD_REG_PAGINA: TIntegerField;
    qryAnexolXNasciFABRICANTE: TStringField;
    qryAnexolXNasciIDPEDIDO: TIntegerField;
    qryAnexolXNasciNUMERO_PEDIDO: TIntegerField;
    qryAnexolXNasciDATA_SOLICITACAO: TDateField;
    qryAnexolXNasciTIPO: TStringField;
    qryAnexolXNasciCERTIFICADORA_NOME: TStringField;
    qryAnexolXNasciNIRFINCRA: TStringField;
    qryAnexolXNasciID_COMUNICADO: TIntegerField;
    qryAnexolXNasciIDENTIFICACAO_2: TStringField;
    qryAnexolXNasciIDADE_MESES: TIntegerField;
    qryAnexolXNasciSEXO: TStringField;
    qryAnexolXNasciCODIGO_BND: TStringField;
    qryAnexolXNasciMOTIVO: TStringField;
    qryAnexolXNasciDATA_BRINCAGEM: TDateField;
    qryAnexolXNasciDN: TDateField;
    TablePedidoBrincoNUMERO_PEDIDO: TStringField;
    TableConfigManejoTIPO_MOV: TIntegerField;
    AnexoIXNUMERO_PEDIDO: TStringField;
    AnexoIXReidentNUMERO_PEDIDO: TStringField;
    AnexoIXReidentIDENTIFICACAO_2: TStringField;
    EntradaEstoqueMineralID: TIntegerField;
    EntradaEstoqueMineralID_MINERAL: TIntegerField;
    EntradaEstoqueMineralID_USUARIO: TIntegerField;
    EntradaEstoqueMineralDATA_REG: TSQLTimeStampField;
    EntradaEstoqueMineralSTATUS: TIntegerField;
    EntradaEstoqueMineralDATA_ENTRADA: TDateField;
    EntradaEstoqueMineralNUMERO_NF: TStringField;
    EntradaEstoqueMineralEMISSAO_NF: TDateField;
    EntradaEstoqueMineralVALOR_TOTRAL_NF: TFMTBCDField;
    EntradaEstoqueMineralPESO_TOTAL_NF: TFMTBCDField;
    EntradaEstoqueMineralPESO_FAZENDA: TFMTBCDField;
    EntradaEstoqueMineralTIPO_EMBALAGEM: TStringField;
    EntradaEstoqueMineralPESO_EMBALAGEM: TFMTBCDField;
    EntradaEstoqueMineralID_FORNECEDOR: TIntegerField;
    EntradaEstoqueMineralID_PROPRIEDADE: TIntegerField;
    EntradaEstoqueMineralID_ALIMENTO: TStringField;
    EntradaEstoqueMineralVALOR_KG_NF: TFloatField;
    EntradaEstoqueMineralQUEBRA_KG: TFMTBCDField;
    EntradaEstoqueMineralINSUMO: TStringField;
    EntradaEstoqueMineralUSUARIO: TStringField;
    EntradaEstoqueMineralRAZAO_SOCIAL: TStringField;
    TableCurraisTAG_INICIO: TStringField;
    TableCurraisTAG_FIM: TStringField;
    qryVeiculosEmbarqueID_BASE_CAMPO: TIntegerField;
    qryVeiculosEmbarqueBASE_CAMPO_SYNC: TIntegerField;
    qryVeiculosEmbarqueBASE_CAMPO_DT_SYNC: TDateField;
    qryGriAniReProcLS: TFDQuery;
    TableConfigManejoSAIDA_SEM_PESO: TIntegerField;
    TableConfigManejoSO_CHIP: TIntegerField;
    qryGridLoteSaidaID_BASE_CAMPO: TIntegerField;
    qryGridLoteSaidaBASE_CAMPO_SYNC: TIntegerField;
    qryGridLoteSaidaBASE_CAMPO_DT_SYNC: TDateField;
    qryGridLoteSaidaBLOQUEIO: TIntegerField;
    qryGridLoteSaidaTOTALPESO: TFMTBCDField;
    qryVeiculosEmbarquePESO_BALANCAO: TFMTBCDField;
    qryVeiculosLotadosID_BASE_CAMPO: TIntegerField;
    qryVeiculosLotadosBASE_CAMPO_SYNC: TIntegerField;
    qryVeiculosLotadosBASE_CAMPO_DT_SYNC: TDateField;
    qryVeiculosLotadosPESO_BALANCAO: TFMTBCDField;
    qryVeiculoGTASaida: TFDQuery;
    qryVeiculoGTASaidaNUMEROGTA: TStringField;
    qryVeiculoGTASaidaDATA_EMISSAO: TDateField;
    qryVeiculoGTASaidaDATA_VALIDADE: TDateField;
    qryVeiculoGTASaidaPROPRIEDADEORIGEM: TStringField;
    qryVeiculoGTASaidaPRODUTORORIGEM: TStringField;
    qryVeiculoGTASaidaPROPRIEDADEDETINO: TStringField;
    qryVeiculoGTASaidaPRODUTORDESTINO: TStringField;
    qryVeiculoGTASaidaTOTALANIMAIS: TLargeintField;
    qryVeiculosID: TIntegerField;
    qryVeiculosID_LOTESAIDA: TIntegerField;
    qryVeiculosPLACA: TStringField;
    qryVeiculosDATAREG: TSQLTimeStampField;
    qryVeiculosSTATUS: TIntegerField;
    qryVeiculosID_USER: TIntegerField;
    qryVeiculosCAPACIDADE: TIntegerField;
    qryVeiculosLOTACAO: TIntegerField;
    qryVeiculosLOTADO: TIntegerField;
    qryVeiculosNOME: TStringField;
    qryVeiculosID_BASE_CAMPO: TIntegerField;
    qryVeiculosBASE_CAMPO_SYNC: TIntegerField;
    qryVeiculosBASE_CAMPO_DT_SYNC: TDateField;
    qryVeiculosPESO_BALANCAO: TFMTBCDField;
    qryVeiculosSTATUSLOTACAO: TStringField;
    qryVeiculoGTASaidaGTAID: TIntegerField;
    DetComunicadoMorteDATA_NASCIMENTO: TDateField;
    qryAnimalID: TIntegerField;
    qryAnimalID_LOCAL: TIntegerField;
    qryAnimalID_CATEGORIA: TIntegerField;
    qryAnimalID_RACA: TIntegerField;
    qryAnimalIDENTIFICACAO_1: TStringField;
    qryAnimalIDENTIFICACAO_2: TStringField;
    qryAnimalDATA_PROC: TSQLTimeStampField;
    qryAnimalGTA_ID: TIntegerField;
    qryAnimalIDADE_MESES: TIntegerField;
    qryAnimalPESO_ENTRADA: TFMTBCDField;
    qryAnimalULTIMO_PESO: TFMTBCDField;
    qryAnimalDATA_ULTIMO_PESO: TDateField;
    qryAnimalSTATUS: TIntegerField;
    qryAnimalDATAREG: TSQLTimeStampField;
    qryAnimalID_USUARIO: TIntegerField;
    qryAnimalDATA_SAIDA: TDateField;
    qryAnimalPESO_SAIDA: TFMTBCDField;
    qryAnimalID_PROPRIEDADE: TIntegerField;
    qryAnimalID_PRODUTOR: TIntegerField;
    qryAnimalULTIMA_ALTERACAO: TSQLTimeStampField;
    qryAnimalULTIMO_USUARIO: TIntegerField;
    qryAnimalID_LOTESAIDA: TIntegerField;
    qryAnimalID_VEICULO_SAIDA: TIntegerField;
    qryAnimalORIGEM_DADOS: TStringField;
    qryAnimalTIPO_SAIDA: TStringField;
    qryAnimalID_MOTIVO_MORTE: TIntegerField;
    qryAnimalID_LOTE: TIntegerField;
    qryAnimalVALOR_COMPRA: TFMTBCDField;
    qryAnimalVALOR_VENDA: TFMTBCDField;
    qryAnimalID_PRODUTOR_ORIGEM: TIntegerField;
    qryAnimalFLAG_SYNC: TIntegerField;
    qryAnimalDATA_SYNC: TSQLTimeStampField;
    qryAnimalDATA_LIBERACAO: TDateField;
    qryAnimalID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    qryAnimalDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    qryAnimalID_CONTRATO_COMPRA: TIntegerField;
    qryAnimalID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    qryAnimalIDADE_MORTE: TIntegerField;
    qryAnimalID_GTA_SAIDA: TIntegerField;
    qryAnimalOBSERVACAO: TStringField;
    qryAnimalTIPO_ENTRADA: TIntegerField;
    qryAnimalPESO_ESTIMADO: TFMTBCDField;
    qryAnimalDATA_PESO_ESTIMADO: TDateField;
    qryAnimalVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    qryAnimalVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    qryAnimalID_CATEGORIA_ATUAL: TIntegerField;
    qryAnimalCONSUMO_ACU: TFMTBCDField;
    qryAnimalIMS_PV: TBCDField;
    qryAnimalID_COMUNICADO_REIDENT: TIntegerField;
    qryAnimalID_COMUNICADO_MORTE: TIntegerField;
    qryAnimalOBS_MORTE: TStringField;
    qryAnimalTIPO_MORTE: TIntegerField;
    qryAnimalDATA_REPROCESSAMENTO: TSQLTimeStampField;
    qryAnimalID_COM_NASCIMENTO: TIntegerField;
    qryAnimalIDENTIFICACAO_MAE: TStringField;
    qryAnimalCARIMBO_NASCIMENTO: TStringField;
    qryAnimalOUTRO_ERAS: TIntegerField;
    qryAnimalFLAG_SYNC_TERCEIROS: TIntegerField;
    qryAnimalDATA_SYNC_TERCEIROS: TDateField;
    qryAnimalID_REBANHO: TIntegerField;
    qryAnimalPESO_ENTRADA_CONF: TFMTBCDField;
    qryAnimalDATA_ENTRADA_CONF: TDateField;
    qryAnimalID_CONTRATO: TIntegerField;
    qryAnimalID_BASE_CAMPO: TIntegerField;
    qryAnimalBASE_CAMPO_SYNC: TIntegerField;
    qryAnimalBASE_CAMPO_DT_SYNC: TDateField;
    qryAnimalBLOQUEIO: TIntegerField;
    qryAnimalDATA_NASCIMENTO: TDateField;
    qryAnimalExistenteID: TIntegerField;
    qryAnimalExistenteID_LOCAL: TIntegerField;
    qryAnimalExistenteID_CATEGORIA: TIntegerField;
    qryAnimalExistenteID_RACA: TIntegerField;
    qryAnimalExistenteIDENTIFICACAO_1: TStringField;
    qryAnimalExistenteIDENTIFICACAO_2: TStringField;
    qryAnimalExistenteDATA_PROC: TSQLTimeStampField;
    qryAnimalExistenteGTA_ID: TIntegerField;
    qryAnimalExistenteIDADE_MESES: TIntegerField;
    qryAnimalExistentePESO_ENTRADA: TFMTBCDField;
    qryAnimalExistenteULTIMO_PESO: TFMTBCDField;
    qryAnimalExistenteDATA_ULTIMO_PESO: TDateField;
    qryAnimalExistenteSTATUS: TIntegerField;
    qryAnimalExistenteDATAREG: TSQLTimeStampField;
    qryAnimalExistenteID_USUARIO: TIntegerField;
    qryAnimalExistenteDATA_SAIDA: TDateField;
    qryAnimalExistentePESO_SAIDA: TFMTBCDField;
    qryAnimalExistenteID_PROPRIEDADE: TIntegerField;
    qryAnimalExistenteID_PRODUTOR: TIntegerField;
    qryAnimalExistenteULTIMA_ALTERACAO: TSQLTimeStampField;
    qryAnimalExistenteULTIMO_USUARIO: TIntegerField;
    qryAnimalExistenteID_LOTESAIDA: TIntegerField;
    qryAnimalExistenteID_VEICULO_SAIDA: TIntegerField;
    qryAnimalExistenteORIGEM_DADOS: TStringField;
    qryAnimalExistenteTIPO_SAIDA: TStringField;
    qryAnimalExistenteID_MOTIVO_MORTE: TIntegerField;
    qryAnimalExistenteID_LOTE: TIntegerField;
    qryAnimalExistenteVALOR_COMPRA: TFMTBCDField;
    qryAnimalExistenteVALOR_VENDA: TFMTBCDField;
    qryAnimalExistenteID_PRODUTOR_ORIGEM: TIntegerField;
    qryAnimalExistenteFLAG_SYNC: TIntegerField;
    qryAnimalExistenteDATA_SYNC: TSQLTimeStampField;
    qryAnimalExistenteDATA_LIBERACAO: TDateField;
    qryAnimalExistenteID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    qryAnimalExistenteDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    qryAnimalExistenteID_CONTRATO_COMPRA: TIntegerField;
    qryAnimalExistenteID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    qryAnimalExistenteIDADE_MORTE: TIntegerField;
    qryAnimalExistenteID_GTA_SAIDA: TIntegerField;
    qryAnimalExistenteOBSERVACAO: TStringField;
    qryAnimalExistenteTIPO_ENTRADA: TIntegerField;
    qryAnimalExistentePESO_ESTIMADO: TFMTBCDField;
    qryAnimalExistenteDATA_PESO_ESTIMADO: TDateField;
    qryAnimalExistenteVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    qryAnimalExistenteVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    qryAnimalExistenteID_CATEGORIA_ATUAL: TIntegerField;
    qryAnimalExistenteCONSUMO_ACU: TFMTBCDField;
    qryAnimalExistenteIMS_PV: TBCDField;
    qryAnimalExistenteID_COMUNICADO_REIDENT: TIntegerField;
    qryAnimalExistenteID_COMUNICADO_MORTE: TIntegerField;
    qryAnimalExistenteOBS_MORTE: TStringField;
    qryAnimalExistenteTIPO_MORTE: TIntegerField;
    qryAnimalExistenteDATA_REPROCESSAMENTO: TSQLTimeStampField;
    qryAnimalExistenteID_COM_NASCIMENTO: TIntegerField;
    qryAnimalExistenteIDENTIFICACAO_MAE: TStringField;
    qryAnimalExistenteCARIMBO_NASCIMENTO: TStringField;
    qryAnimalExistenteOUTRO_ERAS: TIntegerField;
    qryAnimalExistenteFLAG_SYNC_TERCEIROS: TIntegerField;
    qryAnimalExistenteDATA_SYNC_TERCEIROS: TDateField;
    qryAnimalExistenteID_REBANHO: TIntegerField;
    qryAnimalExistentePESO_ENTRADA_CONF: TFMTBCDField;
    qryAnimalExistenteDATA_ENTRADA_CONF: TDateField;
    qryAnimalExistenteID_CONTRATO: TIntegerField;
    qryAnimalExistenteID_BASE_CAMPO: TIntegerField;
    qryAnimalExistenteBASE_CAMPO_SYNC: TIntegerField;
    qryAnimalExistenteBASE_CAMPO_DT_SYNC: TDateField;
    qryAnimalExistenteBLOQUEIO: TIntegerField;
    qryAnimalExistenteDATA_NASCIMENTO: TDateField;
    qryAnimalExistenteID_1: TIntegerField;
    qryAnimalExistenteCURRAL_PASTO: TStringField;
    qryAnimalExistenteRACA_NOME: TStringField;
    qryAnimalExistenteCATEGORIA_NOME: TStringField;
    qryAnimalExistenteUSUSARIO: TStringField;
    qryAnimalExistenteGTA: TStringField;
    qryCurraisApartacaoID: TIntegerField;
    qryCurraisApartacaoID_PROPRIEDADE: TIntegerField;
    qryCurraisApartacaoTIPO: TIntegerField;
    qryCurraisApartacaoUSER_ID: TIntegerField;
    qryCurraisApartacaoDATAREG: TSQLTimeStampField;
    qryCurraisApartacaoSTATUS: TIntegerField;
    qryCurraisApartacaoPESO_MINIMO: TIntegerField;
    qryCurraisApartacaoPESO_MAXIMO: TIntegerField;
    qryCurraisApartacaoCAPACIDADE: TIntegerField;
    qryCurraisApartacaoLOTACAO: TIntegerField;
    qryCurraisApartacaoSTATUS_LOTACAO: TStringField;
    qryCurraisApartacaoQRCODE: TStringField;
    qryCurraisApartacaoLATITUDE: TStringField;
    qryCurraisApartacaoLONGITUDE: TStringField;
    qryCurraisApartacaoCUSTO_FIXO_DIA: TFMTBCDField;
    qryCurraisApartacaoAREA_HECTARES: TFMTBCDField;
    qryCurraisApartacaoCODIGO: TStringField;
    qryCurraisApartacaoID_RETIRO: TIntegerField;
    qryCurraisApartacaoORDERM_FORN: TIntegerField;
    qryCurraisApartacaoTAG_INICIO: TStringField;
    qryCurraisApartacaoTAG_FIM: TStringField;
    qryGriAniProcID: TIntegerField;
    qryGriAniProcID_LOCAL: TIntegerField;
    qryGriAniProcID_CATEGORIA: TIntegerField;
    qryGriAniProcID_RACA: TIntegerField;
    qryGriAniProcIDENTIFICACAO_1: TStringField;
    qryGriAniProcIDENTIFICACAO_2: TStringField;
    qryGriAniProcDATA_PROC: TSQLTimeStampField;
    qryGriAniProcGTA_ID: TIntegerField;
    qryGriAniProcIDADE_MESES: TIntegerField;
    qryGriAniProcPESO_ENTRADA: TFMTBCDField;
    qryGriAniProcULTIMO_PESO: TFMTBCDField;
    qryGriAniProcDATA_ULTIMO_PESO: TDateField;
    qryGriAniProcSTATUS: TIntegerField;
    qryGriAniProcDATAREG: TSQLTimeStampField;
    qryGriAniProcID_USUARIO: TIntegerField;
    qryGriAniProcDATA_SAIDA: TDateField;
    qryGriAniProcPESO_SAIDA: TFMTBCDField;
    qryGriAniProcID_PROPRIEDADE: TIntegerField;
    qryGriAniProcID_PRODUTOR: TIntegerField;
    qryGriAniProcULTIMA_ALTERACAO: TSQLTimeStampField;
    qryGriAniProcULTIMO_USUARIO: TIntegerField;
    qryGriAniProcID_LOTESAIDA: TIntegerField;
    qryGriAniProcID_VEICULO_SAIDA: TIntegerField;
    qryGriAniProcORIGEM_DADOS: TStringField;
    qryGriAniProcTIPO_SAIDA: TStringField;
    qryGriAniProcID_MOTIVO_MORTE: TIntegerField;
    qryGriAniProcID_LOTE: TIntegerField;
    qryGriAniProcVALOR_COMPRA: TFMTBCDField;
    qryGriAniProcVALOR_VENDA: TFMTBCDField;
    qryGriAniProcID_PRODUTOR_ORIGEM: TIntegerField;
    qryGriAniProcFLAG_SYNC: TIntegerField;
    qryGriAniProcDATA_SYNC: TSQLTimeStampField;
    qryGriAniProcDATA_LIBERACAO: TDateField;
    qryGriAniProcID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    qryGriAniProcDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    qryGriAniProcID_CONTRATO_COMPRA: TIntegerField;
    qryGriAniProcID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    qryGriAniProcIDADE_MORTE: TIntegerField;
    qryGriAniProcID_GTA_SAIDA: TIntegerField;
    qryGriAniProcOBSERVACAO: TStringField;
    qryGriAniProcTIPO_ENTRADA: TIntegerField;
    qryGriAniProcPESO_ESTIMADO: TFMTBCDField;
    qryGriAniProcDATA_PESO_ESTIMADO: TDateField;
    qryGriAniProcVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    qryGriAniProcVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    qryGriAniProcID_CATEGORIA_ATUAL: TIntegerField;
    qryGriAniProcCONSUMO_ACU: TFMTBCDField;
    qryGriAniProcIMS_PV: TBCDField;
    qryGriAniProcID_COMUNICADO_REIDENT: TIntegerField;
    qryGriAniProcID_COMUNICADO_MORTE: TIntegerField;
    qryGriAniProcOBS_MORTE: TStringField;
    qryGriAniProcTIPO_MORTE: TIntegerField;
    qryGriAniProcDATA_REPROCESSAMENTO: TSQLTimeStampField;
    qryGriAniProcID_COM_NASCIMENTO: TIntegerField;
    qryGriAniProcIDENTIFICACAO_MAE: TStringField;
    qryGriAniProcCARIMBO_NASCIMENTO: TStringField;
    qryGriAniProcOUTRO_ERAS: TIntegerField;
    qryGriAniProcFLAG_SYNC_TERCEIROS: TIntegerField;
    qryGriAniProcDATA_SYNC_TERCEIROS: TDateField;
    qryGriAniProcID_REBANHO: TIntegerField;
    qryGriAniProcPESO_ENTRADA_CONF: TFMTBCDField;
    qryGriAniProcDATA_ENTRADA_CONF: TDateField;
    qryGriAniProcID_CONTRATO: TIntegerField;
    qryGriAniProcID_BASE_CAMPO: TIntegerField;
    qryGriAniProcBASE_CAMPO_SYNC: TIntegerField;
    qryGriAniProcBASE_CAMPO_DT_SYNC: TDateField;
    qryGriAniProcBLOQUEIO: TIntegerField;
    qryGriAniProcDATA_NASCIMENTO: TDateField;
    qryGriAniProcID_1: TIntegerField;
    qryGriAniProcCURRAL_PASTO: TStringField;
    qryGriAniProcRACA_NOME: TStringField;
    qryGriAniProcCATEGORIA_NOME: TStringField;
    qryGriAniProcUSUSARIO: TStringField;
    qryGriAniProcGTA: TStringField;
    qryGriAniProcREBANHO: TStringField;
    qryGriAniProcCONTRATO: TStringField;
    qryGriAniReProcID: TIntegerField;
    qryGriAniReProcID_LOCAL: TIntegerField;
    qryGriAniReProcID_CATEGORIA: TIntegerField;
    qryGriAniReProcID_RACA: TIntegerField;
    qryGriAniReProcIDENTIFICACAO_1: TStringField;
    qryGriAniReProcIDENTIFICACAO_2: TStringField;
    qryGriAniReProcDATA_PROC: TSQLTimeStampField;
    qryGriAniReProcGTA_ID: TIntegerField;
    qryGriAniReProcIDADE_MESES: TIntegerField;
    qryGriAniReProcPESO_ENTRADA: TFMTBCDField;
    qryGriAniReProcULTIMO_PESO: TFMTBCDField;
    qryGriAniReProcDATA_ULTIMO_PESO: TDateField;
    qryGriAniReProcSTATUS: TIntegerField;
    qryGriAniReProcDATAREG: TSQLTimeStampField;
    qryGriAniReProcID_USUARIO: TIntegerField;
    qryGriAniReProcDATA_SAIDA: TDateField;
    qryGriAniReProcPESO_SAIDA: TFMTBCDField;
    qryGriAniReProcID_PROPRIEDADE: TIntegerField;
    qryGriAniReProcID_PRODUTOR: TIntegerField;
    qryGriAniReProcULTIMA_ALTERACAO: TSQLTimeStampField;
    qryGriAniReProcULTIMO_USUARIO: TIntegerField;
    qryGriAniReProcID_LOTESAIDA: TIntegerField;
    qryGriAniReProcID_VEICULO_SAIDA: TIntegerField;
    qryGriAniReProcORIGEM_DADOS: TStringField;
    qryGriAniReProcTIPO_SAIDA: TStringField;
    qryGriAniReProcID_MOTIVO_MORTE: TIntegerField;
    qryGriAniReProcID_LOTE: TIntegerField;
    qryGriAniReProcVALOR_COMPRA: TFMTBCDField;
    qryGriAniReProcVALOR_VENDA: TFMTBCDField;
    qryGriAniReProcID_PRODUTOR_ORIGEM: TIntegerField;
    qryGriAniReProcFLAG_SYNC: TIntegerField;
    qryGriAniReProcDATA_SYNC: TSQLTimeStampField;
    qryGriAniReProcDATA_LIBERACAO: TDateField;
    qryGriAniReProcID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    qryGriAniReProcDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    qryGriAniReProcID_CONTRATO_COMPRA: TIntegerField;
    qryGriAniReProcID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    qryGriAniReProcIDADE_MORTE: TIntegerField;
    qryGriAniReProcID_GTA_SAIDA: TIntegerField;
    qryGriAniReProcOBSERVACAO: TStringField;
    qryGriAniReProcTIPO_ENTRADA: TIntegerField;
    qryGriAniReProcPESO_ESTIMADO: TFMTBCDField;
    qryGriAniReProcDATA_PESO_ESTIMADO: TDateField;
    qryGriAniReProcVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    qryGriAniReProcVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    qryGriAniReProcID_CATEGORIA_ATUAL: TIntegerField;
    qryGriAniReProcCONSUMO_ACU: TFMTBCDField;
    qryGriAniReProcIMS_PV: TBCDField;
    qryGriAniReProcID_COMUNICADO_REIDENT: TIntegerField;
    qryGriAniReProcID_COMUNICADO_MORTE: TIntegerField;
    qryGriAniReProcOBS_MORTE: TStringField;
    qryGriAniReProcTIPO_MORTE: TIntegerField;
    qryGriAniReProcDATA_REPROCESSAMENTO: TSQLTimeStampField;
    qryGriAniReProcID_COM_NASCIMENTO: TIntegerField;
    qryGriAniReProcIDENTIFICACAO_MAE: TStringField;
    qryGriAniReProcCARIMBO_NASCIMENTO: TStringField;
    qryGriAniReProcOUTRO_ERAS: TIntegerField;
    qryGriAniReProcFLAG_SYNC_TERCEIROS: TIntegerField;
    qryGriAniReProcDATA_SYNC_TERCEIROS: TDateField;
    qryGriAniReProcID_REBANHO: TIntegerField;
    qryGriAniReProcPESO_ENTRADA_CONF: TFMTBCDField;
    qryGriAniReProcDATA_ENTRADA_CONF: TDateField;
    qryGriAniReProcID_CONTRATO: TIntegerField;
    qryGriAniReProcID_BASE_CAMPO: TIntegerField;
    qryGriAniReProcBASE_CAMPO_SYNC: TIntegerField;
    qryGriAniReProcBASE_CAMPO_DT_SYNC: TDateField;
    qryGriAniReProcBLOQUEIO: TIntegerField;
    qryGriAniReProcDATA_NASCIMENTO: TDateField;
    qryGriAniReProcCATEGORIA: TStringField;
    qryGriAniReProcRACA: TStringField;
    qryGriAniReProcLOCAL: TStringField;
    qryGriAniReProcERA_ATUAL: TLargeintField;
    qryGriAniReProcDIAS: TLargeintField;
    qryGriAniReProcPESO_PROJ: TFMTBCDField;
    qryGriAniReProcGTP: TFMTBCDField;
    qryGriAniReProcGMD: TFMTBCDField;
    qryGriAniReProcREBANHO: TStringField;
    qryGriAniReProcCONTRATO: TStringField;
    qryGriAniReProcIDPESO: TIntegerField;
    qryGriAniReProcLSID: TIntegerField;
    qryGriAniReProcLSID_LOCAL: TIntegerField;
    qryGriAniReProcLSID_CATEGORIA: TIntegerField;
    qryGriAniReProcLSID_RACA: TIntegerField;
    qryGriAniReProcLSIDENTIFICACAO_1: TStringField;
    qryGriAniReProcLSIDENTIFICACAO_2: TStringField;
    qryGriAniReProcLSDATA_PROC: TSQLTimeStampField;
    qryGriAniReProcLSGTA_ID: TIntegerField;
    qryGriAniReProcLSIDADE_MESES: TIntegerField;
    qryGriAniReProcLSPESO_ENTRADA: TFMTBCDField;
    qryGriAniReProcLSULTIMO_PESO: TFMTBCDField;
    qryGriAniReProcLSDATA_ULTIMO_PESO: TDateField;
    qryGriAniReProcLSSTATUS: TIntegerField;
    qryGriAniReProcLSDATAREG: TSQLTimeStampField;
    qryGriAniReProcLSID_USUARIO: TIntegerField;
    qryGriAniReProcLSDATA_SAIDA: TDateField;
    qryGriAniReProcLSPESO_SAIDA: TFMTBCDField;
    qryGriAniReProcLSID_PROPRIEDADE: TIntegerField;
    qryGriAniReProcLSID_PRODUTOR: TIntegerField;
    qryGriAniReProcLSULTIMA_ALTERACAO: TSQLTimeStampField;
    qryGriAniReProcLSULTIMO_USUARIO: TIntegerField;
    qryGriAniReProcLSID_LOTESAIDA: TIntegerField;
    qryGriAniReProcLSID_VEICULO_SAIDA: TIntegerField;
    qryGriAniReProcLSORIGEM_DADOS: TStringField;
    qryGriAniReProcLSTIPO_SAIDA: TStringField;
    qryGriAniReProcLSID_MOTIVO_MORTE: TIntegerField;
    qryGriAniReProcLSID_LOTE: TIntegerField;
    qryGriAniReProcLSVALOR_COMPRA: TFMTBCDField;
    qryGriAniReProcLSVALOR_VENDA: TFMTBCDField;
    qryGriAniReProcLSID_PRODUTOR_ORIGEM: TIntegerField;
    qryGriAniReProcLSFLAG_SYNC: TIntegerField;
    qryGriAniReProcLSDATA_SYNC: TSQLTimeStampField;
    qryGriAniReProcLSDATA_LIBERACAO: TDateField;
    qryGriAniReProcLSID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    qryGriAniReProcLSDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    qryGriAniReProcLSID_CONTRATO_COMPRA: TIntegerField;
    qryGriAniReProcLSID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    qryGriAniReProcLSIDADE_MORTE: TIntegerField;
    qryGriAniReProcLSID_GTA_SAIDA: TIntegerField;
    qryGriAniReProcLSOBSERVACAO: TStringField;
    qryGriAniReProcLSTIPO_ENTRADA: TIntegerField;
    qryGriAniReProcLSPESO_ESTIMADO: TFMTBCDField;
    qryGriAniReProcLSDATA_PESO_ESTIMADO: TDateField;
    qryGriAniReProcLSVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    qryGriAniReProcLSVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    qryGriAniReProcLSID_CATEGORIA_ATUAL: TIntegerField;
    qryGriAniReProcLSCONSUMO_ACU: TFMTBCDField;
    qryGriAniReProcLSIMS_PV: TBCDField;
    qryGriAniReProcLSID_COMUNICADO_REIDENT: TIntegerField;
    qryGriAniReProcLSID_COMUNICADO_MORTE: TIntegerField;
    qryGriAniReProcLSOBS_MORTE: TStringField;
    qryGriAniReProcLSTIPO_MORTE: TIntegerField;
    qryGriAniReProcLSDATA_REPROCESSAMENTO: TSQLTimeStampField;
    qryGriAniReProcLSID_COM_NASCIMENTO: TIntegerField;
    qryGriAniReProcLSIDENTIFICACAO_MAE: TStringField;
    qryGriAniReProcLSCARIMBO_NASCIMENTO: TStringField;
    qryGriAniReProcLSOUTRO_ERAS: TIntegerField;
    qryGriAniReProcLSFLAG_SYNC_TERCEIROS: TIntegerField;
    qryGriAniReProcLSDATA_SYNC_TERCEIROS: TDateField;
    qryGriAniReProcLSID_REBANHO: TIntegerField;
    qryGriAniReProcLSPESO_ENTRADA_CONF: TFMTBCDField;
    qryGriAniReProcLSDATA_ENTRADA_CONF: TDateField;
    qryGriAniReProcLSID_CONTRATO: TIntegerField;
    qryGriAniReProcLSID_BASE_CAMPO: TIntegerField;
    qryGriAniReProcLSBASE_CAMPO_SYNC: TIntegerField;
    qryGriAniReProcLSBASE_CAMPO_DT_SYNC: TDateField;
    qryGriAniReProcLSBLOQUEIO: TIntegerField;
    qryGriAniReProcLSDATA_NASCIMENTO: TDateField;
    qryGriAniReProcLSCATEGORIA: TStringField;
    qryGriAniReProcLSRACA: TStringField;
    qryGriAniReProcLSLOCAL: TStringField;
    qryGriAniReProcLSERA_ATUAL: TLargeintField;
    qryGriAniReProcLSDIAS: TLargeintField;
    qryGriAniReProcLSPESO_PROJ: TFMTBCDField;
    qryGriAniReProcLSGTP: TFMTBCDField;
    qryGriAniReProcLSGMD: TFMTBCDField;
    qryGriAniReProcLSREBANHO: TStringField;
    qryGriAniReProcLSCONTRATO: TStringField;
    SuplementoMineralID: TIntegerField;
    SuplementoMineralNOME: TStringField;
    SuplementoMineralID_FORNECEDOR: TIntegerField;
    SuplementoMineralGANHO_ESPERADO: TFMTBCDField;
    SuplementoMineralESTOQUE_MINIMO: TFMTBCDField;
    SuplementoMineralPESO_EMBALAGEM: TFMTBCDField;
    SuplementoMineralSTATUS: TIntegerField;
    SuplementoMineralDATAREG: TSQLTimeStampField;
    SuplementoMineralID_USUARIO: TSmallintField;
    SuplementoMineralCONSUMO_ESPERADO: TFMTBCDField;
    SuplementoMineralVALOR_KG: TFMTBCDField;
    SuplementoMineralESTOQUE_MINIMO_DIAS: TIntegerField;
    SuplementoMineralCM_COCHO_INDICADO: TFMTBCDField;
    SuplementoMineralINGESTAO_PERCENT_PV: TFMTBCDField;
    SuplementoMineralPADRAO: TIntegerField;
    SuplementoMineralID_USUARIO_ALTERACAO: TIntegerField;
    SuplementoMineralDATA_ALTERACAO: TSQLTimeStampField;
    SuplementoMineralFORMULADO: TIntegerField;
    SuplementoMineralPRE_MISTURA: TIntegerField;
    SuplementoMineralMS_TOTAL: TFMTBCDField;
    SuplementoMineralSALDO_ATUAL: TFMTBCDField;
    SuplementoMineralDATA_CUSTO_MEDIO: TDateField;
    SuplementoMineralPADRAOSTR: TStringField;
    TableAnimaisMorteID: TIntegerField;
    TableAnimaisMorteID_LOCAL: TIntegerField;
    TableAnimaisMorteID_CATEGORIA: TIntegerField;
    TableAnimaisMorteID_RACA: TIntegerField;
    TableAnimaisMorteIDENTIFICACAO_1: TStringField;
    TableAnimaisMorteIDENTIFICACAO_2: TStringField;
    TableAnimaisMorteDATA_PROC: TSQLTimeStampField;
    TableAnimaisMorteGTA_ID: TIntegerField;
    TableAnimaisMorteIDADE_MESES: TIntegerField;
    TableAnimaisMortePESO_ENTRADA: TFMTBCDField;
    TableAnimaisMorteULTIMO_PESO: TFMTBCDField;
    TableAnimaisMorteDATA_ULTIMO_PESO: TDateField;
    TableAnimaisMorteSTATUS: TIntegerField;
    TableAnimaisMorteDATAREG: TSQLTimeStampField;
    TableAnimaisMorteID_USUARIO: TIntegerField;
    TableAnimaisMorteDATA_SAIDA: TDateField;
    TableAnimaisMortePESO_SAIDA: TFMTBCDField;
    TableAnimaisMorteID_PROPRIEDADE: TIntegerField;
    TableAnimaisMorteID_PRODUTOR: TIntegerField;
    TableAnimaisMorteULTIMA_ALTERACAO: TSQLTimeStampField;
    TableAnimaisMorteULTIMO_USUARIO: TIntegerField;
    TableAnimaisMorteID_LOTESAIDA: TIntegerField;
    TableAnimaisMorteID_VEICULO_SAIDA: TIntegerField;
    TableAnimaisMorteORIGEM_DADOS: TStringField;
    TableAnimaisMorteTIPO_SAIDA: TStringField;
    TableAnimaisMorteID_MOTIVO_MORTE: TIntegerField;
    TableAnimaisMorteID_LOTE: TIntegerField;
    TableAnimaisMorteVALOR_COMPRA: TFMTBCDField;
    TableAnimaisMorteVALOR_VENDA: TFMTBCDField;
    TableAnimaisMorteID_PRODUTOR_ORIGEM: TIntegerField;
    TableAnimaisMorteFLAG_SYNC: TIntegerField;
    TableAnimaisMorteDATA_SYNC: TSQLTimeStampField;
    TableAnimaisMorteDATA_LIBERACAO: TDateField;
    TableAnimaisMorteID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    TableAnimaisMorteDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TableAnimaisMorteID_CONTRATO_COMPRA: TIntegerField;
    TableAnimaisMorteID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    TableAnimaisMorteIDADE_MORTE: TIntegerField;
    TableAnimaisMorteID_GTA_SAIDA: TIntegerField;
    TableAnimaisMorteOBSERVACAO: TStringField;
    TableAnimaisMorteTIPO_ENTRADA: TIntegerField;
    TableAnimaisMortePESO_ESTIMADO: TFMTBCDField;
    TableAnimaisMorteDATA_PESO_ESTIMADO: TDateField;
    TableAnimaisMorteVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    TableAnimaisMorteVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    TableAnimaisMorteID_CATEGORIA_ATUAL: TIntegerField;
    TableAnimaisMorteCONSUMO_ACU: TFMTBCDField;
    TableAnimaisMorteIMS_PV: TBCDField;
    TableAnimaisMorteID_COMUNICADO_REIDENT: TIntegerField;
    TableAnimaisMorteID_COMUNICADO_MORTE: TIntegerField;
    TableAnimaisMorteOBS_MORTE: TStringField;
    TableAnimaisMorteTIPO_MORTE: TIntegerField;
    TableAnimaisMorteDATA_REPROCESSAMENTO: TSQLTimeStampField;
    TableAnimaisMorteID_COM_NASCIMENTO: TIntegerField;
    TableAnimaisMorteIDENTIFICACAO_MAE: TStringField;
    TableAnimaisMorteCARIMBO_NASCIMENTO: TStringField;
    TableAnimaisMorteOUTRO_ERAS: TIntegerField;
    TableAnimaisMorteFLAG_SYNC_TERCEIROS: TIntegerField;
    TableAnimaisMorteDATA_SYNC_TERCEIROS: TDateField;
    TableAnimaisMorteID_REBANHO: TIntegerField;
    TableAnimaisMortePESO_ENTRADA_CONF: TFMTBCDField;
    TableAnimaisMorteDATA_ENTRADA_CONF: TDateField;
    TableAnimaisMorteID_CONTRATO: TIntegerField;
    TableAnimaisMorteID_BASE_CAMPO: TIntegerField;
    TableAnimaisMorteBASE_CAMPO_SYNC: TIntegerField;
    TableAnimaisMorteBASE_CAMPO_DT_SYNC: TDateField;
    TableAnimaisMorteBLOQUEIO: TIntegerField;
    TableAnimaisMorteDATA_NASCIMENTO: TDateField;
    TableAnimaisMorteRACA: TStringField;
    TableAnimaisMorteCATEGORIA: TStringField;
    TableAnimaisMorteULTIMO_LOCAL: TStringField;
    TableAnimaisMorteMOTIVO: TStringField;
    TableAnimaisNasimentoID: TIntegerField;
    TableAnimaisNasimentoID_LOCAL: TIntegerField;
    TableAnimaisNasimentoID_CATEGORIA: TIntegerField;
    TableAnimaisNasimentoID_RACA: TIntegerField;
    TableAnimaisNasimentoIDENTIFICACAO_1: TStringField;
    TableAnimaisNasimentoIDENTIFICACAO_2: TStringField;
    TableAnimaisNasimentoDATA_PROC: TSQLTimeStampField;
    TableAnimaisNasimentoGTA_ID: TIntegerField;
    TableAnimaisNasimentoIDADE_MESES: TIntegerField;
    TableAnimaisNasimentoPESO_ENTRADA: TFMTBCDField;
    TableAnimaisNasimentoULTIMO_PESO: TFMTBCDField;
    TableAnimaisNasimentoDATA_ULTIMO_PESO: TDateField;
    TableAnimaisNasimentoSTATUS: TIntegerField;
    TableAnimaisNasimentoDATAREG: TSQLTimeStampField;
    TableAnimaisNasimentoID_USUARIO: TIntegerField;
    TableAnimaisNasimentoDATA_SAIDA: TDateField;
    TableAnimaisNasimentoPESO_SAIDA: TFMTBCDField;
    TableAnimaisNasimentoID_PROPRIEDADE: TIntegerField;
    TableAnimaisNasimentoID_PRODUTOR: TIntegerField;
    TableAnimaisNasimentoULTIMA_ALTERACAO: TSQLTimeStampField;
    TableAnimaisNasimentoULTIMO_USUARIO: TIntegerField;
    TableAnimaisNasimentoID_LOTESAIDA: TIntegerField;
    TableAnimaisNasimentoID_VEICULO_SAIDA: TIntegerField;
    TableAnimaisNasimentoORIGEM_DADOS: TStringField;
    TableAnimaisNasimentoTIPO_SAIDA: TStringField;
    TableAnimaisNasimentoID_MOTIVO_MORTE: TIntegerField;
    TableAnimaisNasimentoID_LOTE: TIntegerField;
    TableAnimaisNasimentoVALOR_COMPRA: TFMTBCDField;
    TableAnimaisNasimentoVALOR_VENDA: TFMTBCDField;
    TableAnimaisNasimentoID_PRODUTOR_ORIGEM: TIntegerField;
    TableAnimaisNasimentoFLAG_SYNC: TIntegerField;
    TableAnimaisNasimentoDATA_SYNC: TSQLTimeStampField;
    TableAnimaisNasimentoDATA_LIBERACAO: TDateField;
    TableAnimaisNasimentoID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    TableAnimaisNasimentoDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TableAnimaisNasimentoID_CONTRATO_COMPRA: TIntegerField;
    TableAnimaisNasimentoID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    TableAnimaisNasimentoIDADE_MORTE: TIntegerField;
    TableAnimaisNasimentoID_GTA_SAIDA: TIntegerField;
    TableAnimaisNasimentoOBSERVACAO: TStringField;
    TableAnimaisNasimentoTIPO_ENTRADA: TIntegerField;
    TableAnimaisNasimentoPESO_ESTIMADO: TFMTBCDField;
    TableAnimaisNasimentoDATA_PESO_ESTIMADO: TDateField;
    TableAnimaisNasimentoVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    TableAnimaisNasimentoVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    TableAnimaisNasimentoID_CATEGORIA_ATUAL: TIntegerField;
    TableAnimaisNasimentoCONSUMO_ACU: TFMTBCDField;
    TableAnimaisNasimentoIMS_PV: TBCDField;
    TableAnimaisNasimentoID_COMUNICADO_REIDENT: TIntegerField;
    TableAnimaisNasimentoID_COMUNICADO_MORTE: TIntegerField;
    TableAnimaisNasimentoOBS_MORTE: TStringField;
    TableAnimaisNasimentoTIPO_MORTE: TIntegerField;
    TableAnimaisNasimentoDATA_REPROCESSAMENTO: TSQLTimeStampField;
    TableAnimaisNasimentoID_COM_NASCIMENTO: TIntegerField;
    TableAnimaisNasimentoIDENTIFICACAO_MAE: TStringField;
    TableAnimaisNasimentoCARIMBO_NASCIMENTO: TStringField;
    TableAnimaisNasimentoOUTRO_ERAS: TIntegerField;
    TableAnimaisNasimentoFLAG_SYNC_TERCEIROS: TIntegerField;
    TableAnimaisNasimentoDATA_SYNC_TERCEIROS: TDateField;
    TableAnimaisNasimentoID_REBANHO: TIntegerField;
    TableAnimaisNasimentoPESO_ENTRADA_CONF: TFMTBCDField;
    TableAnimaisNasimentoDATA_ENTRADA_CONF: TDateField;
    TableAnimaisNasimentoID_CONTRATO: TIntegerField;
    TableAnimaisNasimentoID_BASE_CAMPO: TIntegerField;
    TableAnimaisNasimentoBASE_CAMPO_SYNC: TIntegerField;
    TableAnimaisNasimentoBASE_CAMPO_DT_SYNC: TDateField;
    TableAnimaisNasimentoBLOQUEIO: TIntegerField;
    TableAnimaisNasimentoDATA_NASCIMENTO: TDateField;
    TableAnimaisNasimentoRACA: TStringField;
    TableAnimaisNasimentoCATEGORIA: TStringField;
    TableAnimaisNasimentoLOCAL: TStringField;
    TableAnimaisNasimentoPRODUTOR: TStringField;
    TableAnimaisTratamentoID: TIntegerField;
    TableAnimaisTratamentoID_LOCAL: TIntegerField;
    TableAnimaisTratamentoID_CATEGORIA: TIntegerField;
    TableAnimaisTratamentoID_RACA: TIntegerField;
    TableAnimaisTratamentoIDENTIFICACAO_1: TStringField;
    TableAnimaisTratamentoIDENTIFICACAO_2: TStringField;
    TableAnimaisTratamentoDATA_PROC: TSQLTimeStampField;
    TableAnimaisTratamentoGTA_ID: TIntegerField;
    TableAnimaisTratamentoIDADE_MESES: TIntegerField;
    TableAnimaisTratamentoPESO_ENTRADA: TFMTBCDField;
    TableAnimaisTratamentoDATA_ULTIMO_PESO: TDateField;
    TableAnimaisTratamentoSTATUS: TIntegerField;
    TableAnimaisTratamentoDATAREG: TSQLTimeStampField;
    TableAnimaisTratamentoID_USUARIO: TIntegerField;
    TableAnimaisTratamentoDATA_SAIDA: TDateField;
    TableAnimaisTratamentoPESO_SAIDA: TFMTBCDField;
    TableAnimaisTratamentoID_PROPRIEDADE: TIntegerField;
    TableAnimaisTratamentoID_PRODUTOR: TIntegerField;
    TableAnimaisTratamentoULTIMA_ALTERACAO: TSQLTimeStampField;
    TableAnimaisTratamentoULTIMO_USUARIO: TIntegerField;
    TableAnimaisTratamentoID_LOTESAIDA: TIntegerField;
    TableAnimaisTratamentoID_VEICULO_SAIDA: TIntegerField;
    TableAnimaisTratamentoORIGEM_DADOS: TStringField;
    TableAnimaisTratamentoTIPO_SAIDA: TStringField;
    TableAnimaisTratamentoID_MOTIVO_MORTE: TIntegerField;
    TableAnimaisTratamentoID_LOTE: TIntegerField;
    TableAnimaisTratamentoVALOR_COMPRA: TFMTBCDField;
    TableAnimaisTratamentoVALOR_VENDA: TFMTBCDField;
    TableAnimaisTratamentoID_PRODUTOR_ORIGEM: TIntegerField;
    TableAnimaisTratamentoFLAG_SYNC: TIntegerField;
    TableAnimaisTratamentoDATA_SYNC: TSQLTimeStampField;
    TableAnimaisTratamentoDATA_LIBERACAO: TDateField;
    TableAnimaisTratamentoID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    TableAnimaisTratamentoDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TableAnimaisTratamentoID_CONTRATO_COMPRA: TIntegerField;
    TableAnimaisTratamentoID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    TableAnimaisTratamentoIDADE_MORTE: TIntegerField;
    TableAnimaisTratamentoID_GTA_SAIDA: TIntegerField;
    TableAnimaisTratamentoOBSERVACAO: TStringField;
    TableAnimaisTratamentoTIPO_ENTRADA: TIntegerField;
    TableAnimaisTratamentoPESO_ESTIMADO: TFMTBCDField;
    TableAnimaisTratamentoDATA_PESO_ESTIMADO: TDateField;
    TableAnimaisTratamentoVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    TableAnimaisTratamentoVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    TableAnimaisTratamentoID_CATEGORIA_ATUAL: TIntegerField;
    TableAnimaisTratamentoCONSUMO_ACU: TFMTBCDField;
    TableAnimaisTratamentoIMS_PV: TBCDField;
    TableAnimaisTratamentoID_COMUNICADO_REIDENT: TIntegerField;
    TableAnimaisTratamentoID_COMUNICADO_MORTE: TIntegerField;
    TableAnimaisTratamentoOBS_MORTE: TStringField;
    TableAnimaisTratamentoTIPO_MORTE: TIntegerField;
    TableAnimaisTratamentoDATA_REPROCESSAMENTO: TSQLTimeStampField;
    TableAnimaisTratamentoID_COM_NASCIMENTO: TIntegerField;
    TableAnimaisTratamentoIDENTIFICACAO_MAE: TStringField;
    TableAnimaisTratamentoCARIMBO_NASCIMENTO: TStringField;
    TableAnimaisTratamentoOUTRO_ERAS: TIntegerField;
    TableAnimaisTratamentoFLAG_SYNC_TERCEIROS: TIntegerField;
    TableAnimaisTratamentoDATA_SYNC_TERCEIROS: TDateField;
    TableAnimaisTratamentoID_REBANHO: TIntegerField;
    TableAnimaisTratamentoPESO_ENTRADA_CONF: TFMTBCDField;
    TableAnimaisTratamentoDATA_ENTRADA_CONF: TDateField;
    TableAnimaisTratamentoID_CONTRATO: TIntegerField;
    TableAnimaisTratamentoID_BASE_CAMPO: TIntegerField;
    TableAnimaisTratamentoBASE_CAMPO_SYNC: TIntegerField;
    TableAnimaisTratamentoBASE_CAMPO_DT_SYNC: TDateField;
    TableAnimaisTratamentoBLOQUEIO: TIntegerField;
    TableAnimaisTratamentoDATA_NASCIMENTO: TDateField;
    TableAnimaisTratamentoRACANOME: TStringField;
    TableAnimaisTratamentoCATEGORIANOME: TStringField;
    TableAnimaisTratamentoLOCALATUAL: TStringField;
    TTMP_ANIMAISID: TIntegerField;
    TTMP_ANIMAISIDENTIFICACAO_1: TStringField;
    TTMP_ANIMAISIDENTIFICACAO_2: TStringField;
    TTMP_ANIMAISPESO_ENTRADA: TFMTBCDField;
    TTMP_ANIMAISIDADE_MESES: TIntegerField;
    TTMP_ANIMAISDATAREG: TSQLTimeStampField;
    TTMP_ANIMAISID_USUARIO: TIntegerField;
    TTMP_ANIMAISSTATUS: TIntegerField;
    TTMP_ANIMAISREBANHO: TStringField;
    TTMP_ANIMAISPASTO: TStringField;
    TTMP_ANIMAISCATEGORIA: TStringField;
    TTMP_ANIMAISDATA_ENTRADA: TDateField;
    TTMP_ANIMAISRACA: TStringField;
    SuplementoMineralRAZAO_SOCIAL: TStringField;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    TableFarmacosVALOR_ML: TFloatField;
    BAIXA_MANUAL_FARMACO: TFDQuery;
    BAIXA_MANUAL_FARMACOID: TIntegerField;
    BAIXA_MANUAL_FARMACODATA_SAIDA: TDateField;
    BAIXA_MANUAL_FARMACOID_FARMACO: TIntegerField;
    BAIXA_MANUAL_FARMACOTIPO_EMBALAGEM: TIntegerField;
    BAIXA_MANUAL_FARMACOML_EMBALAGEM: TFMTBCDField;
    BAIXA_MANUAL_FARMACOTOTAL_UNIDADE: TIntegerField;
    BAIXA_MANUAL_FARMACOTOTAL_ML: TFMTBCDField;
    BAIXA_MANUAL_FARMACOID_PROPRIEDADE: TIntegerField;
    BAIXA_MANUAL_FARMACODATAREG: TSQLTimeStampField;
    BAIXA_MANUAL_FARMACOID_USUARIO: TIntegerField;
    BAIXA_MANUAL_FARMACOSTATUS: TIntegerField;
    BAIXA_MANUAL_FARMACOID_USUARIO_ALTERACAO: TIntegerField;
    BAIXA_MANUAL_FARMACODATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    BAIXA_MANUAL_FARMACOFARMACONOME: TStringField;
    BAIXA_MANUAL_FARMACOEMBALAGEM: TStringField;
    qryGriAniProcDESTINO: TStringField;
    qryGriAniReProcDESTINO: TStringField;
    qryGriAniReProcLSDESTINO: TStringField;
    qryVeiculosPESO_BALANCAO_PORTO: TFMTBCDField;
    qryAnimalReprocSemIdent: TFDQuery;
    qryAnimalReprocSemIdentID: TIntegerField;
    qryAnimalReprocSemIdentID_LOCAL: TIntegerField;
    qryAnimalReprocSemIdentID_CATEGORIA: TIntegerField;
    qryAnimalReprocSemIdentID_RACA: TIntegerField;
    qryAnimalReprocSemIdentIDENTIFICACAO_1: TStringField;
    qryAnimalReprocSemIdentIDENTIFICACAO_2: TStringField;
    qryAnimalReprocSemIdentDATA_PROC: TSQLTimeStampField;
    qryAnimalReprocSemIdentGTA_ID: TIntegerField;
    qryAnimalReprocSemIdentIDADE_MESES: TIntegerField;
    qryAnimalReprocSemIdentPESO_ENTRADA: TFMTBCDField;
    qryAnimalReprocSemIdentULTIMO_PESO: TFMTBCDField;
    qryAnimalReprocSemIdentDATA_ULTIMO_PESO: TDateField;
    qryAnimalReprocSemIdentSTATUS: TIntegerField;
    qryAnimalReprocSemIdentDATAREG: TSQLTimeStampField;
    qryAnimalReprocSemIdentID_USUARIO: TIntegerField;
    qryAnimalReprocSemIdentDATA_SAIDA: TDateField;
    qryAnimalReprocSemIdentPESO_SAIDA: TFMTBCDField;
    qryAnimalReprocSemIdentID_PROPRIEDADE: TIntegerField;
    qryAnimalReprocSemIdentID_PRODUTOR: TIntegerField;
    qryAnimalReprocSemIdentULTIMA_ALTERACAO: TSQLTimeStampField;
    qryAnimalReprocSemIdentULTIMO_USUARIO: TIntegerField;
    qryAnimalReprocSemIdentID_LOTESAIDA: TIntegerField;
    qryAnimalReprocSemIdentID_VEICULO_SAIDA: TIntegerField;
    qryAnimalReprocSemIdentORIGEM_DADOS: TStringField;
    qryAnimalReprocSemIdentTIPO_SAIDA: TStringField;
    qryAnimalReprocSemIdentID_MOTIVO_MORTE: TIntegerField;
    qryAnimalReprocSemIdentID_LOTE: TIntegerField;
    qryAnimalReprocSemIdentVALOR_COMPRA: TFMTBCDField;
    qryAnimalReprocSemIdentVALOR_VENDA: TFMTBCDField;
    qryAnimalReprocSemIdentID_PRODUTOR_ORIGEM: TIntegerField;
    qryAnimalReprocSemIdentFLAG_SYNC: TIntegerField;
    qryAnimalReprocSemIdentDATA_SYNC: TSQLTimeStampField;
    qryAnimalReprocSemIdentDATA_LIBERACAO: TDateField;
    qryAnimalReprocSemIdentID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    qryAnimalReprocSemIdentDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    qryAnimalReprocSemIdentID_CONTRATO_COMPRA: TIntegerField;
    qryAnimalReprocSemIdentID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    qryAnimalReprocSemIdentIDADE_MORTE: TIntegerField;
    qryAnimalReprocSemIdentID_GTA_SAIDA: TIntegerField;
    qryAnimalReprocSemIdentOBSERVACAO: TStringField;
    qryAnimalReprocSemIdentTIPO_ENTRADA: TIntegerField;
    qryAnimalReprocSemIdentPESO_ESTIMADO: TFMTBCDField;
    qryAnimalReprocSemIdentDATA_PESO_ESTIMADO: TDateField;
    qryAnimalReprocSemIdentVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    qryAnimalReprocSemIdentVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    qryAnimalReprocSemIdentID_CATEGORIA_ATUAL: TIntegerField;
    qryAnimalReprocSemIdentCONSUMO_ACU: TFMTBCDField;
    qryAnimalReprocSemIdentID_COMUNICADO_REIDENT: TIntegerField;
    qryAnimalReprocSemIdentID_COMUNICADO_MORTE: TIntegerField;
    qryAnimalReprocSemIdentOBS_MORTE: TStringField;
    qryAnimalReprocSemIdentTIPO_MORTE: TIntegerField;
    qryAnimalReprocSemIdentDATA_REPROCESSAMENTO: TSQLTimeStampField;
    qryAnimalReprocSemIdentID_COM_NASCIMENTO: TIntegerField;
    qryAnimalReprocSemIdentIDENTIFICACAO_MAE: TStringField;
    qryAnimalReprocSemIdentCARIMBO_NASCIMENTO: TStringField;
    qryAnimalReprocSemIdentOUTRO_ERAS: TIntegerField;
    qryAnimalReprocSemIdentIMS_PV: TBCDField;
    qryAnimalReprocSemIdentFLAG_SYNC_TERCEIROS: TIntegerField;
    qryAnimalReprocSemIdentDATA_SYNC_TERCEIROS: TDateField;
    qryAnimalReprocSemIdentID_REBANHO: TIntegerField;
    qryAnimalReprocSemIdentPESO_ENTRADA_CONF: TFMTBCDField;
    qryAnimalReprocSemIdentDATA_ENTRADA_CONF: TDateField;
    qryAnimalReprocSemIdentID_CONTRATO: TIntegerField;
    qryAnimalReprocSemIdentID_BASE_CAMPO: TIntegerField;
    qryAnimalReprocSemIdentBASE_CAMPO_SYNC: TIntegerField;
    qryAnimalReprocSemIdentBASE_CAMPO_DT_SYNC: TDateField;
    qryAnimalReprocSemIdentBLOQUEIO: TIntegerField;
    qryAnimalReprocSemIdentDATA_NASCIMENTO: TDateField;
    qryAnimalReprocSemIdentPESO_CARCACA: TFMTBCDField;
    qryAnimalReprocSemIdentDATA_IMPORTA_CARACACA: TDateField;
    qryAnimalReprocSemIdentDESTINO: TStringField;
    qryAnimalReprocSemIdentID_1: TIntegerField;
    qryAnimalReprocSemIdentCURRAL_PASTO: TStringField;
    qryAnimalReprocSemIdentRACA_NOME: TStringField;
    qryAnimalReprocSemIdentCATEGORIA_NOME: TStringField;
    qryAnimalReprocSemIdentUSUSARIO: TStringField;
    qryAnimalReprocSemIdentGTA: TStringField;
    qryGridLoteSaidaIDPROPRIEDADEORIGEM: TIntegerField;
    qryGridLoteSaidaIDPROPRIEDADEDESTINO: TIntegerField;
    TableProtocoloFarmacoProcTIPO: TIntegerField;
    qryGridLoteSaidaPESO_CARCACA_TOTAL: TFloatField;
    qryGridLoteSaidaVALOR_TOTAL_FRIGO: TFloatField;
    qryGridLoteSaidaPESO_CARCACA_IND: TFloatField;
    qryGridLoteSaidaVALOR_IND_FRIGO: TFloatField;
    qryGridLoteSaidaPESO_TOTAL: TFloatField;
    qryGridLoteSaidaRC: TFloatField;
    qryVeiculosGTA_ID: TIntegerField;
    qryVeiculosPLACA_CR: TStringField;
    qryVeiculosMOTORISTA: TStringField;
    qryVeiculosTIPO: TStringField;
    qryVeiculosEmbarqueGTA_ID: TIntegerField;
    qryVeiculosEmbarquePESO_BALANCAO_PORTO: TFMTBCDField;
    qryVeiculosEmbarquePLACA_CR: TStringField;
    qryVeiculosEmbarqueMOTORISTA: TStringField;
    qryVeiculosEmbarqueTIPO: TStringField;
    qryVeiculosLotadosGTA_ID: TIntegerField;
    qryVeiculosLotadosPESO_BALANCAO_PORTO: TFMTBCDField;
    qryVeiculosLotadosPLACA_CR: TStringField;
    qryVeiculosLotadosMOTORISTA: TStringField;
    qryVeiculosLotadosTIPO: TStringField;
    qryVeiculosCLIENTE: TStringField;
    qryVeiculosEmbarqueCLIENTE: TStringField;
    qryVeiculosLotadosCLIENTE: TStringField;
    ScriptV20230220: TFDScript;
    qryApartacaoTIPO_PESAGEM: TStringField;
    ScriptV20230220_1: TFDScript;
    TTMP_ANIMAISSTATUS_STR: TStringField;
    AtualizaProcs: TFDScript;
    EntradaEstoqueMineralOBSERVACAO: TStringField;
    TableAnimaisMorteCONTRATO: TStringField;
    PedioChip: TFDQuery;
    EstoqueChip: TFDQuery;
    PedioChipID: TIntegerField;
    PedioChipID_FORNECEDOR_BRINCO: TIntegerField;
    PedioChipID_FAZENDA: TIntegerField;
    PedioChipDATA_SOLICITACAO: TDateField;
    PedioChipDATA_ENTRADA: TDateField;
    PedioChipNUMERO_INICIAL: TStringField;
    PedioChipNUMERO_FINAL: TStringField;
    PedioChipNUMERO_NF: TIntegerField;
    PedioChipSTATUS: TIntegerField;
    PedioChipID_USUARIO: TIntegerField;
    PedioChipDATAREG: TSQLTimeStampField;
    PedioChipNUMERO_PEDIDO: TStringField;
    PedioChipFORNECEDOR: TStringField;
    EstoqueChipID: TIntegerField;
    EstoqueChipID_PEDIDO: TIntegerField;
    EstoqueChipCHIP: TStringField;
    EstoqueChipUSADO: TIntegerField;
    EstoqueChipSTATUS: TIntegerField;
    EstoqueChipDATAREG: TSQLTimeStampField;
    InsereChip: TFDQuery;
    InsereChipID: TIntegerField;
    InsereChipID_PEDIDO: TIntegerField;
    InsereChipSISBOV: TStringField;
    InsereChipMANEJO: TStringField;
    InsereChipDG: TIntegerField;
    InsereChipCAIXA: TIntegerField;
    InsereChipUSADO: TIntegerField;
    InsereChipSTATUS: TIntegerField;
    InsereChipDATAREG: TSQLTimeStampField;
    InsereChipID_BASE_CAMPO: TIntegerField;
    InsereChipBASE_CAMPO_SYNC: TIntegerField;
    InsereChipBASE_CAMPO_DT_SYNC: TDateField;
    EstoqueChipSTATUS_STR: TStringField;
    qryConfigPadraoESTOQUE_CHIP: TIntegerField;
    GtaTableESTOQUE_CHIP: TIntegerField;
    TableAnimaisTratamentoULTIMO_PESO_C: TFMTBCDField;
    PedioChipQTD_REG_PAGINA: TIntegerField;
    EstoqueChipCAIXA: TIntegerField;
    RertiradaChip: TFDQuery;
    RertiradaChipID: TIntegerField;
    RertiradaChipID_PEDIDO: TIntegerField;
    RertiradaChipCAIXA_INI: TIntegerField;
    RertiradaChipCAIXA_FIM: TIntegerField;
    RertiradaChipNUMERO_INI: TStringField;
    RertiradaChipNUMERO_FIM: TStringField;
    RertiradaChipDESTINADO: TStringField;
    RertiradaChipSTATUS: TIntegerField;
    RertiradaChipID_REPONSAVEL: TIntegerField;
    RertiradaChipID_USUARIO_ALTERACAO: TIntegerField;
    RertiradaChipDATA_ALTERACAO: TSQLTimeStampField;
    RertiradaChipDATAREG: TSQLTimeStampField;
    RertiradaChipNUMERO_PEDIDO: TStringField;
    RertiradaChipRESPONAVEL: TStringField;
    RertiradaChipQTDE_TOTAL: TIntegerField;
    RertiradaChipID_COMPRADOR: TIntegerField;
    RertiradaChipDATA_SAIDA: TDateField;
    ppDBFicha: TppDBPipeline;
    dsRetirada: TDataSource;
    ppRepFicha: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppImage1: TppImage;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppShape2: TppShape;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    TableAnimaisMortePRODUTOR: TStringField;
    qryConfigPadraoID_BASE_CAMPO: TIntegerField;
    qryConfigPadraoTIPO_OPERACAO_BC: TIntegerField;
    qryConfigPadraoBASE_CAMPO_STATUS: TIntegerField;
    qryConfigPadraoFORNE_RETRO: TIntegerField;
    qryConfigPadraoNOME_CLIENTE: TStringField;
    qryConfigPadraoCIDADE: TStringField;
    qryConfigPadraoUF: TStringField;
    qryConfigPadraoCEP: TStringField;
    qryConfigPadraoFONE: TStringField;
    qryConfigPadraoCNPJ: TStringField;
    qryConfigPadraoENDERECO: TStringField;
    qryConfigPadraoLOGO_2: TMemoField;
    TableAnimalSanidadeRep: TFDQuery;
    RertiradaChipUSADOS: TIntegerField;
    RertiradaChipNAOUSADOS: TIntegerField;
    RertiradaResumo: TFDQuery;
    RertiradaResumoTOTALRETIRADO: TLargeintField;
    RertiradaResumoTOTALUSADO: TLargeintField;
    RertiradaResumoTOTALNAOUSADO: TLargeintField;
    TableHistMovCHIP: TStringField;
    TableHistMovNCF_SISBOV: TStringField;
    FCBaseCampo: TFDConnection;
    SistemasClientes: TFDQuery;
    SistemasClientesID: TIntegerField;
    SistemasClientesSTATUS: TIntegerField;
    SistemasClientesDATAREG: TSQLTimeStampField;
    SistemasClientesDATAALTERACAO: TSQLTimeStampField;
    SistemasClientesID_SISTEMA: TIntegerField;
    SistemasClientesID_CLIENTE: TIntegerField;
    SistemasClientesNUMVERSAO: TStringField;
    SistemasClientesDATA_ATUALIZACAO: TDateField;
    SistemasClientesCHAVE_KEY: TStringField;
    SistemasClientesSTATUS_LICENCA: TIntegerField;
    SistemasClientesMSGCLIENTE: TStringField;
    SistemasClientesVENCIMENTO: TDateField;
    SistemasClientesULTIMAVALIDACAO: TSQLTimeStampField;
    TableUsersID_INTEGRACAO: TIntegerField;
    TableCurraisID_INTEGRACAO: TIntegerField;
    procedure TableRacasReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure qryProdutorOrigemReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableGTAReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure qryAnimalReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure qryLoteSaidaReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure CalendarioReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TableConfigManejoReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure PropriedadePropriaReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableCurraisReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure PlanejamentoNutricionalReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TablePedidoBrincoReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableProdutoresReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableFarmacosReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TableAuxIndicacaoFarmacoReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableTratamentosInsertReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableCategoriasReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure qryGtasComunicadoEntReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableComunicadoEntradaReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableCompradorReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure SuplementoFormulacaoReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure BAIXA_MANUAL_FARMACOReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TableUsersReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure AtualizaProcsError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure FConAfterConnect(Sender: TObject);
    procedure ScriptV20230220_1Error(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure RertiradaChipReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
  private
    { Private declarations }
  public
    var vTipoLote,vDataBaseCampo,vPathBD,vPathBDMaster,vNomeBase,vIdUserLogado,
    vNomeUserLogado,vTipoUser,vDataBase,vServer,vIdPropriedade,vNomePropriedade,
    vPainelAnimais,vPainelEstoque,vPainelFinanceiro,
    vRastreada,vRacaBndOutroEras,vSexoBndOutroEras,vDnBndOutroEras,
    vLic,vSenhaUserLogado,vNomeProdutorEmbarque,vTotalAnimais,vTipoPesagem,
    vPathBaseCampo :string;
    vCadPedido,vGeraAnexoSaida,vCadGTA,vSyncBC: integer;
    vConsumoCab :double;
    function  VerificaFornecimentoIrregular:Boolean;
    function  ValidaLogin(Usuario,Senha:String):Boolean;
    function  ValidaLoginDisponivel(Usuario,idPropriedade:string):Boolean;
    function  VerificaCochoExiste(Nome,IdPasto : string):Boolean;
    function  VerificaCurralExiste(Nome: string):string;
    function  VerificaCurralExisteEdiit(Nome,Id,IdFazenda : string):string;
    function  VerificaStatusCurral(Id : string):string;
    function  VerificaRacaExisteEdit(Nome,Id : string):string;
    function  VerificaRacaExiste(Nome : string):string;
    function  VerificaCompradorExiste(Nome:string): Boolean;
    function  VerificaSuplementoExiste(Nome : string):Boolean;
    function  VerificaCausaMorteExiste(Nome : string):Boolean;
    function  VerificaMotivoAplicacaoExiste(Nome: string): Boolean;
    function  VerificaTipoOcorrenciaExiste(Nome: string): Boolean;
    function  VerificaStatusRaca(Id : string):string;
    function  VerificaCategoriaExiste(Nome : string):string;
    function  VerificaCategoriaExisteEdit(Nome,Id : string):string;
    function  VerificaAlimentoExiste(Nome: string): Boolean;
    function  VerificaStatusCategoria(Id : string):string;
    function  VerificaIdentificacaoExit(vIdenti:string):Boolean;
    function  VerificaAnimalExiste(vIdenti1,vIdenti2:string):Boolean;
    function  VerificaAnimalExisteDestino(vIdenti1,vIdenti2,vIdPropriedade:string):Boolean;
    function  VerificaIdentificacaoExitReproc(vIdAnimal,vIdenti: string): Boolean;
    function RetornaMaxIDComReident: string;
    function VerificaMineralPadrao: string;

    function  VerificaIdentificacaoExistente(vTipo,vIdenti,IdFazenda:string):integer;
    function  RestornaIdUltimoAnimalInsert:string;
    function  VerificaGTALotada(ID:STRING):string;
    function  VerificaGTAExiste(Numero,Serie,Tipo:string):Boolean;
    function  VerificaNomeFaseExiste(Nome:STRING): Boolean;

    function  LerIni(Diretorio,Chave1, Chave2: String; ValorPadrao: String = ''): String;
    function  RetornaMaxTruck(IdLoteSaida: string):string;
    function  RetornaMaxIdTruck:string;
    function  RetornaMaxIdTruckBC:string;
    function  RetornaNomeFornecedor(Id: string):string;

    procedure AbreQryAnimaisProcEmbarque(IdLoteSaida: string);
    procedure AtualizaLotacaoVeiculo(IdVeiculoSaida:string);
    procedure AtualizaStatiticaEmbarque(idLoteSaida:string);
    procedure AbreQryLoteSaida(IdProdutor,IdDestino,DateDe,DataAte:string);
    procedure AbreLoteSaidaPorID(vID:STRING);
    procedure AbreQryLS(IdLote:string);
    procedure AbreQryVeiculos(IdLoteSaida:string);
    procedure AbreQryUsuario(IdPropriedade:string);
    procedure AbreQryPropriedades(Tipo:string);
    procedure AbreQryPropriedadesRastreadas(Tipo:string);
    procedure AbreQryCurrais(IdPropriedade,Tipo:string);
    procedure AbreQryCurraisComAnimais(IdPropriedade: string);
    procedure AbreQryCurraisAparte(IdPropriedade:string);
    procedure AbrirApartacao(idPropriedade:String);
    procedure AbreQryGTA(IdPropriedade:string);
    procedure AbreQryGTAProc(Tipo,IdPropriedade:string);
    procedure AbreQryGTAReProc(Tipo, IdPropriedade: string);
    procedure AbreQryGTAProcEdit(IdGTA:string);
    procedure AtualizaGTAProc(id_gta:string);
    procedure AtualizaGTAReProc(id_gta: string);
    procedure AtualizaGTAStatus(id_gta:string);
    procedure AbreGTAEntradaGrupo(idPropriedade:string);
    procedure AbreGTASaidaGrupo(idPropriedade: string);
    procedure AbreQryVeiculosEmbarque(Id: string);
    procedure ReativarCurral(Id:string);
    procedure ReativarRaca(Id:string);
    procedure ReativarCategoria(Id:string);
    procedure DeletaApartacao(id:string);
    procedure AtualizaPesoParte(id,pesoMin,pesoMaxim,Capacidade,idCurral:string);
    procedure AtualizaLotacao(id:string);
    procedure AtualizaLotacaoGeral(IdPropriedade: String);
    procedure AbreQryAnimaisProc(IdPropriedade,Tipo:string);
    procedure CarregaProdutorDestino(IdPropriedade: String);
    procedure DeletaApartacaoGeral(IdPropriedade: String);
    procedure InativaAnimal(id:string);
    procedure InativaRetiro(id: string);
    procedure EstornarAnimal(id,idLs:string);
    function AbreQryAnimaisExixtentes(Tipo,Numero,idPropriedade:string):Boolean;
    function RetornaProdutor(ID:String):string;
    function RetornaPropriedade(ID:String):string;
    procedure LimpaGTAAnimalID(IDAnimal:string);
    procedure LimpaDadosAnimalExistente(IDAnimal:string);
    procedure AtualizaPLacaVeiculo(Id,Placa,Capacidade,PlacaCr,Motorista:string);

    procedure InsereGta(NUMERO, SERIE, UF, DATA_EMISSAO, DATA_VALIDADE,
    ZERO_A_12_FEMEA, ZERO_A_12_MACHO, TREZE_A_24_FEMEA, TREZE_A_24_MACHO,
    VITE_CINCO_A_36_FEMEA, VITE_CINCO_A_36_MACHO, MAIS_36_FEMEA, MAIS_36_MACHO,
    USER_ID,TIPO, ID_PROPRIEDADE_ORIGEM, ID_PRODUTOR_ORIGEM,
    ID_PROPRIEDADE_DESTINO, ID_PRODUTOR_DESTINO,VALOR_CAB,RASTREADOS,
    VALOR_FRETE_CAB,VALOR_COMISSAO_CAB,PESO_B_ORIGEM,PESO_B_DESTINO,ID_COMPRADOR,
    ID_VEICULO_SAIDA,CHECA_ESTOQUE_CHIP:string);

    procedure UpdateGta(ID,NUMERO, SERIE, UF, DATA_EMISSAO, DATA_VALIDADE,
    ZERO_A_12_FEMEA, ZERO_A_12_MACHO, TREZE_A_24_FEMEA, TREZE_A_24_MACHO,
    VITE_CINCO_A_36_FEMEA, VITE_CINCO_A_36_MACHO, MAIS_36_FEMEA, MAIS_36_MACHO,
    USER_ID,TIPO, ID_PROPRIEDADE_ORIGEM, ID_PRODUTOR_ORIGEM,
    ID_PROPRIEDADE_DESTINO, ID_PRODUTOR_DESTINO,VALOR_CAB,RASTREADOS,VALOR_FRETE_CAB,
    VALOR_COMISSAO_CAB,PESO_B_ORIGEM,PESO_B_DESTINO,ID_COMPRADOR,ID_VEICULO_SAIDA,
    CHECA_ESTOQUE_CHIP:string);

    procedure InsereAnimal(ID_LOCAL, ID_CATEGORIA, ID_RACA,DATA_PROC,IDADE_MESES,
    PESO_ENTRADA,ID_PRODUTOR,ID_PRODUTOR_ORIGEM,IDGTA,OBS,IDENTIFICACAO_1,IDENTIFICACAO_2,vValorCompra,
    TIPO_ENTRADA,ORIGEM_DADOS,ID_REBANHO,ID_LOTE,ID_CONTRATO,TIPO_CURRAL,DESTINO,TIPO_APARTACAO:string);

    procedure InsereAnimalBaseCampo(ID_LOCAL, ID_CATEGORIA, ID_RACA,DATA_PROC,IDADE_MESES,
    PESO_ENTRADA,ID_PRODUTOR,ID_PRODUTOR_ORIGEM,IDGTA,OBS,IDENTIFICACAO_1,IDENTIFICACAO_2,vValorCompra,
    TIPO_ENTRADA,ORIGEM_DADOS,ID_REBANHO,ID_LOTE,ID_CONTRATO,TIPO_CURRAL,
    DATA_REG:string);


    procedure InsereAnimalTransferencia(ID_ANIMAL,ID_LOCAL,DATA_PROC,IDADE_MESES,PESO_ENTRADA,
    ID_PRODUTOR_O,ID_PROPRIEDADE_O,ID_PRODUTOR_D,ID_PROPRIEDADE_D,ID_REBANHO,VALOR_COMPRA:string);

    procedure UpdateAnimal(ID_ANIMAL,ID_LOCAL, ID_CATEGORIA, ID_RACA,
    IDENTIFICACAO_1, IDENTIFICACAO_2, DATA_PROC, GTA_ID, IDADE_MESES,
    PESO_ENTRADA,ID_USUARIO,
    ID_PRODUTOR,ID_PRODUTOR_ORIGEM,vValorCompra,vIdRebanho,ID_LOTE,ID_CONTRATO,DESTINO:string);

    procedure UpdateAnimalReproc(ID_ANIMAL,ID_LOCAL, ID_CATEGORIA, ID_RACA,
    IDENTIFICACAO_1, IDENTIFICACAO_2,DATA_ENTRADA,PESO_ENTRADA,OBSERVACAO,ID_REBANHO,
    ID_LOTE,ID_CONTRATO,TIPO_CURRAL,TIPO_MOV,IdBase,DATA_PROC,BLOQUEIO,DESTINO,
    ATUALIZA_PESO_ENT, ATUALIZA_DATA_ENT:string);

    procedure UpdateAnimalBaseCampo(ID_ANIMAL, ID_LOCAL, ID_CATEGORIA,
    ID_RACA, IDENTIFICACAO_1, IDENTIFICACAO_2,DATA_ENTRADA,PESO_ENTRADA,ULTIMO_PESO,
    DATA_ULTIMO_PESO,OBSERVACAO,ID_REBANHO,
    ID_LOTE,ID_CONTRATO,PESO_ENT_CONF,DATA_ENT_CONF,IdBase,DATA_PROC: string);

    procedure UpdateAnimalSaida(ID_ANIMAL,ID_USUARIO,IdVeiculo,PesoSaida,IdLoteSaida,ID_PRODUTOR
    ,ID_LOCAL,OBSERVACAO:string);

     procedure UpdateAnimalSaidaBaseCampo(ID_ANIMAL,ID_USUARIO,IdVeiculo,PesoSaida,IdLoteSaida,ID_PRODUTOR
    ,ID_LOCAL,OBSERVACAO,DATA_ULTIMA_ALTERACAO,ID_USUARIO_ALTERACAO,DATA_SAIDA:string);


    procedure InserePeso(ID_ANIMAL, ID_USUARIO, PESO, TIPO,ID_PRODUTOR,ID_LS,ID_LOCAL,DATA_PESAGEM,
    IDBASE:string);
    procedure InserePesoBC(IDENTIFICACAO_1,IDENTIFICACAO_2, ID_USUARIO, PESO, TIPO,ID_PRODUTOR,ID_LS,ID_LOCAL,DATA_PESAGEM,
    IDBASE:string);
    procedure AtualizaPesoEntrada(ID_ANIMAL, ID_USUARIO, PESO,ID_PRODUTOR,
     TIPO_CURRAL,TIPO_MOV:string);
    procedure AtualizaStatitica(idPropriedade,Tipo:String);
    procedure ConectaBD(vTipoBase:integer);
    function  ConectaBDCAMPO:Boolean;
    function  ConectaBDDEMO:Boolean;
    function  RetornaUltimaEntradaPasto(vIdPasto:string):string;
    function  RetornaIDUltimoFornecimento():string;
    procedure GeraPrevisao(Adata:TDate;IdProduto:string;DiasFornTotal,Dias:integer);
    procedure DeletaPrevisao(Adata:TDate);
    procedure AbrirPrevGrid(vAdata,vDataFim:TDate;vPasto,Suplemento:string);
    procedure AbrirEntradaAnimalGrid(vAdata,vDataFim: TDate;vPasto:string);
    procedure AbrirMovAnimalGrid(vAdata,vDataFim: TDate;vPastoO,vPastoD,vMotivo:string);
    procedure AbrirGridEstoque(vDataIni,vDataFim: TDate;vProduto,vNumNF,
     vIdPropriedade,vTipoAlimento:String);
    function  RetornaIdProdutorLS(LS:string):string;
    function  RetornaProdutorPropLs(LS: string): string;
    function  RetornaProdutorPropLsDestino(LS: string): string;
    function  RetornaBloqueioAnimai(LS: string): integer;

    function BaixaAnimalSaidaTipo(Tipo,IdAnimal,DataSaida,QtdAnimais,PesoSaida,ValorSaida,IdProdutorDestino,
     IdCausaMorte,IdadeMorte,IdGTASaida,idLoteSaida,idProdutor,idLocal:string):integer;

    function MovimentaAnimal(IdLocalOrigem,IdLocalDestino,DataMov,QtdAnimais,
     IdMotivo,IdUsuario: string):integer;

    function MovimentaAnimalInd(idAnimal,IdLocalOrigem,IdLocalDestino,DataMov,
     IdMotivo,ID_LOTE,DESTINO: string):integer;

    function MovimentaAnimalIndEntradaConf(idAnimal,IdLocalOrigem,IdLocalDestino,DataMov,
     IdMotivo,ID_LOTE,TipoPeso,Peso,destino: string):integer;

    function MovimentaAnimalRebanho(idAnimal,idRebanhoOrigem,IdRebanhoDestino,DataMov,vPeso: string):integer;
    function MovimentaAnimalCONTRATO(idAnimal,idCONTRATOOrigem,IdCONTRATODestino,DataMov: string):integer;
    function MovimentaAnimalProdutor(idAnimal, idProdrigem,IdProdDestino, DataMov: string): integer;
    function BloqueiaAnimaisGrupo(idAnimal,Observacao,Status: string): integer;

    function MovimentaAnimalRebanhoReproc(idAnimal,idRebanhoOrigem,IdRebanhoDestino,DataMov,
    IDBASE: string):integer;

    function RetornaPrevisaoFornecimento(AidPasto,AData:string):string;

    procedure InserePlanNutri(ID_USUARIO,ID_CATEGORIA, ID_RACA,CONSUMO_ESTIMADO,INGESTAO_PV,GMD,PESO_aBATE,
     ID_FASE,idMineral:string);

    procedure UpdatePlanNutri(ID,ID_USUARIO, ID_CATEGORIA, ID_RACA,
     CONSUMO_ESTIMADO,INGESTAO_PV,GMD,PESO_aBATE,ID_FASE,idMineral: string);

    procedure UpdatePlanNutriGrid(ID,CONSUMO_ESTIMADO,INGESTAO_PV,GMD,PESO_ABATE: string);

    procedure DeletaEntradaAnimais(DtaEntrada,IdUsuario,IdPasto:string);

    procedure AlteraRacaAnimal(IdAnimal,IdUsuario,vIdRaca:string);
    procedure AlteraCategoriaAnimal(IdAnimal,IdUsuario,vIdCategoria:string);

    procedure AlteraEntradaAnimais(IdAnimal,IdUsuario,vTipoAlteracao,ValorAlteracao,vTipoCurral:string);
    procedure AlteraSaidaAnimais(DtaEntrada,  IdlS,
    vTipoAlteracao, ValorAlteracao: string);
    procedure AlteraPesoSaidaTelaProc(IdlS,
    idAnimal,Peso: string);
    procedure LogAlteraEntradaAnimais(DATA_ENTRADA,PASTO_DESTINO,ID_PASTO_DESTINO,QTD_ANIMAIS,TIPO_ALTERACAO,ID_USUARIO: string);
    procedure LogAlteraSaidaAnimais(DATA_ENTRADA,PASTO_DESTINO,ID_PASTO_DESTINO,QTD_ANIMAIS,TIPO_ALTERACAO,ID_USUARIO,PASTO_ORIGEM,ID_PASTO_ORIGEM: string);
    procedure AbrirSaidaAnimalGrid(vAdata,vDataFim: TDate;vPasto,vDestino,vTipo:string);
    procedure DeletaSaidaAnimais(LoteSaida: string);
    procedure DeletaPesoSaidaAnimais(idAnimal,idLoteSaida: string);
    procedure FinalizaSaidaAnimais(LoteSaida:string);

    procedure InsereEntradaEstoque(ID_MINERAL,ID_USUARIO,DATA_ENTRADA,NUMERO_NF,EMISSAO_NF,VALOR_TOTRAL_NF,PESO_TOTAL_NF,VALOR_KG_NF,PESO_FAZENDA,
     QUEBRA_KG,TIPO_EMBALAGEM,PESO_EMBALAGEM,ID_FORNECEDOR,vTipo,vObs:string);

    function VerificaNFCadastrada(NumNF,IdProdutor:string):Boolean;
    function VerificaPlanNutriCadastrada(IdRaca,IdCat,IdFase:string):Boolean;
    procedure InsereLogEntradaEstoquePeso(ID_USUARIO,NUM_NF,ACAO:string);
    procedure InativaNF(IdEntrada:string);
    procedure InativaFornecimento(Id:string);
    procedure InsereLogFornecimento(ID_USUARIO, ID_FORN,
     ACAO: string);
    procedure InsereFornecimentoCab(VDATA,ID_PASTO,ID_FORN,ID_MINERAL,QTD_FORN_TOTAL,VALOR_KG,QTD_CAB: string);
    function  RetornaQtdOcorrencia(Dta :TDate):integer;
    function  RetornaQtdAgendamentos(Dta :TDate):integer;
    procedure AbreCalendario(Dta: TDate);
    function  CarregaCurralApartacao(vPeso:string):string;
    procedure AbreQryGTAProcID(IdGTA: string);
    function  RetornaSexoCat(IdCat: string):string;
    function  RetornaIDCatPadrao(NomeCat: string):string;
    function  RetornaSexoCatPadrao(IdCat: string): integer;
    function  AbrirCustoFixoAno(Ano:string):Boolean;
    procedure AtualizaCustoFixo(Ano,Mes,Valor:string);
    function  RetornaValorCabGTA(IdGTA: string):string;
    procedure AbreqryGriAniReProc;
    procedure AbreqryGriAniReProcLS(Ls:string);
    procedure InsereMovimentacao(id_animai,id_motivo,vdata,id_local_origem,id_local_destino,IDBASE:string);
    procedure InsereMovimentacaoBC(identificacao1,identificacao2,id_motivo,vdata,id_local_origem,id_local_destino,IDBASE:string);
    function  RetornaUltimoAcesso:string;
    procedure RelatorioDiarioLotes(Adada:string);
    function  RetornaLoteSaida(idProdOri,idPropOri,idProdDes,idPropDes,sData:string):string;
    function  InsereRetornaLoteSaida(idProdOri, idPropOri, idProdDes, idPropDes,
     sData,Bloqueio: string): string;
    procedure EditaRetornaLoteSaida(idLote,idProdOri, idPropOri, idProdDes, idPropDes,
     sData,Bloqueio: string);
    procedure DeletaAnimalTMP;
    procedure InsereAnimalTMP(IDENTIFICACAO_1, IDENTIFICACAO_2,
     IDADE_MESES,PESO_ENTRADA,RACA,REBANHO,CATEGORIA,PASTO,DATA_ENT,ID_CONTRATO,ID_GTA: string);
    procedure AbrirGridLoteSaida(idLs:string);
    procedure AbrirRetirosPropriedade;
    function VerificaRetiroExiste(NomeRetiro:string):Boolean;
    function  RetornaMaxIDAnimal: string;
    procedure InsereLogAnimal(idAnimal,idUsuario:string);
    procedure AnimaisUpdate;
    function  RetornaMesMaxFase:integer;

    function VerificaFaixaExiste(IdadeMin,IdadeMax:integer):Boolean;

    procedure GeraPlanejamentoTodasFases(idCat,idRaca,ConsumoGR,GMD,PercentPV,Meta,idMineral:string);
    function  VerificaFaixaUsada(idFaixa:string):Boolean;

    function  ConsultaSisbovBndProdutor(Sisbov,IdProdutor:string):string;
    procedure AbreBNDProdutor(idProdutor,SISBOV:string);
    function  VerificaNumeroPedido(Numero: string): Boolean;
    function  ValidaDGSisbov(NUMERO:STRING):Boolean;
    procedure FiltraEstoqueBrincos(idPedido,vFiltro:string);
    procedure FiltraEstoqueBrincosChip(idPedido,vFiltro:string);
    procedure FiltraPedidoBrincos(vFiltro:string);
    function  VerificaEstoqueGerado(idPedido:string):Boolean;
    function  VerificaEstoqueGeradoChip(idPedido:string):Boolean;
    function  GeraNumeracaoEstoque(SisbovIni,SisbovFim,QtdPagina,idPedido:string):string;
    function  RetornaDGSisbov(NUMERO: STRING): integer;
    function  VerificaPedidoUsado(idPedido:string):Boolean;
    function  ChecaBrincoEstoque(sisbov,idProdutor:string):Boolean;
    function  ChecaTMPReident(sisbov,tipo:string):Boolean;
    function  RetornaNumeroComReident:string;
    procedure ReidentificaAnimal(IDComunicado,SISBOVOld,SISBOVNew,DataReident,IdadeAtual:string);
    procedure DeletaTmpReident;
    procedure AbreAnexoIXComunicadoReident(idComunicado:string);
    procedure MorteAnimalComunicado(idComunicado,idAnimal, IdCausaMorte, DataMorte,
    TipoMorte: string);
    procedure MorteAnimal(idAnimal,IdCausaMorte, DataMorte,
    TipoMorte: string);
    function VerificaCausaExite(ACausa: string): Boolean;
    function RetornaNumeroComMorte(idPropriedade: string): string;
    function RetornaNumeroComTTA(idPropriedade: string): string;
    procedure AbreAnexoVIIIComunicadoMorte(idComunicado:string);
    function AbreQryAnimaisExixtentesProdutor(idProdutor,Tipo,Numero,idPropriedade:string):Boolean;
    function AbreQryAnimaisExixtentesMorte(Tipo,Numero,idPropriedade:string):Boolean;
    function VerificaRastreada(idPropriedade:string):string;
    function RetornaNumeroComEnt(idPropriedade: string): string;
    procedure AtualizaGTAIdComunicado(idGTA,idComunicado:string);
    function  RetornaMaxIDComEnt: string;
    procedure DeleteTMP_GTA;
    procedure AbreAnexoIXComunicadoEntrada(idComunicado:string);
    procedure AbreAnexoIXComunicadoEntradaSemCod(idComunicado: string);
    procedure InsereAnimalNascimento(ID_LOCAL, ID_CATEGORIA, ID_RACA,
     IDENTIFICACAO_1, IDENTIFICACAO_2, DATA_PROC,IDADE_MESES,
     PESO_ENTRADA, ULTIMO_PESO, DATA_ULTIMO_PESO,ID_USUARIO,
     ID_PROPRIEDADE, ID_PRODUTOR,ORIGEM_DADOS,idComunincadoNasci,IDENTIFICACAO_MAE,CARIMBO_NASCIMENTO: string);
    procedure UPDATEAnimalNascimento(ID_ANIMAL,ID_LOCAL, ID_CATEGORIA, ID_RACA,
    IDENTIFICACAO_1, IDENTIFICACAO_2, DATA_PROC,IDADE_MESES,
    PESO_ENTRADA, ULTIMO_PESO, DATA_ULTIMO_PESO,ID_USUARIO,
    ID_PROPRIEDADE, ID_PRODUTOR,ORIGEM_DADOS,IDENTIFICACAO_MAE,CARIMBO_NASCIMENTO: string);
    function  RetornaNumeroComNasci(idPropriedade: string): string;
    procedure AbreProdutorProprio;

    procedure AbreComunicadoEntrada(vFiltro:string);
    procedure AbreComunicadoNascimento(vFiltro:string);
    procedure AbreComunicadoMorte(vFiltro:string);
    procedure AbreComunicadoReident(vFiltro: string);
    procedure AbreQryVeiculosAnexos(IdLS: string);
    procedure AbreQryGTASaida(IdProdutor,IdProdutorDestino: string);
    procedure AtualizaVeiculosSaida(IdVeiculo,idGTA,QTD_ANIMAIS: string);
    function  ChecaBndProdutor(vIdProdutor, vSisbov: string): Boolean;
    function  ChecaBndProdutorOutroEras(vIdProdutor, vSisbov: string): Boolean;
    procedure GeraAnexoVIEVII(idLs, idVeiculo: string);
    procedure DesvinculaGTAVeiculo(IdVeiculo,idGTA: string);

    function VerificaFarmacoExiste(Anome,AidFabricante:string):Boolean;
    function VerificaFabrincanteFarmaco(Anome:string):Boolean;
    function VerificaIndicacaoFarmaco(Anome:string):Boolean;
    function VerificaProtocoloFarmaco(Anome:string):Boolean;
    function VerificaProtocoloFarmacoExiste(AidProduto,AidProtocolo: string): Boolean;

    procedure AbreEstoqueFarmacoFazenda(vFiltro:string);
    procedure InsereFarmacoProtocolo(IdProtocolo,IdFarmaco,TipoDosagem,
     DoseFixaML,DosePesoML,DosePesoKG,CarenciDias:String);

    procedure AbreAnimalSanidade(vFiltro:string);
    procedure AbreAnimalSanidadeTratamento(vFiltro,vImportacao: string);
    procedure AbreUsuariosFazenda;
    procedure AplicaProtocolo(idProtocolo,idAnimal,DataAplicacao,idLocal,TipoAplicacao,idResponsavelEsquerda,
    idResponsavelDireita,IDBASE:string);

    procedure AplicaProtocoloNew(idProtocolo, idAnimal, DataAplicacao,
     idLocal, TipoAplicacao, idResponsavelEsquerda, idResponsavelDireita,IDBASE,
     vTipoTratamento,vIdFarmaco,vTipoDose,vDiasCarencia,vDoseFixa: string);

    procedure AplicaTratamentoExtra(idProduto,idAnimal,DataAplicacao,idLocal,TipoAplicacao,idResponsavelEsquerda,
     idResponsavelDireita,TipoDosagem,DoseFixaML,DosePesoML,DosePesoKG,CarenciaDias,IDBASE:string);
    function  RetornaPesoAtualAnimal(idAnimal:String):Double;
    procedure AbreQryProtocoloFarmacoProc(idProtocolo:string);
    procedure ExcluirTratamentos(vID:string);
    procedure AlterarTratamentos(vID,vIdProduto,vDoseAplicada: string);
    function  VerificaCarenciaMedicamento(idAnimal,vData:string):string;
    procedure AbrirPlanejamento(Afiltro:String);
    procedure AbreTTA(Filtro:string);
    procedure FechaTTA(idTTA:String);
    function  RetornaUltimaBND(iDProdutor:string):string;
    function  RetornaTotalAnimaisBND(iDProdutor: string): string;
    function  RetornaLotacaoCurral(idCurral : string):integer;
    procedure AbreHistMovimentacao(vFiltro:string);
    procedure AbreAnimaisMorte(idPropriedade,vFiltro:String);
    procedure AbreAnimaisNascimento(idPropriedade,vFiltro:String);
    procedure DeletaMorteAnimais(IdAnimal: string);
    function  RetornaSaldoGTA(IdGTA:String):Integer;
    procedure InativaKey;
    function  ValidaLicencaJaUsada(Chave: String): Boolean;
    procedure AbrePlanUsoMinralFazenda(idFazenda,vFiltro:string);
    procedure AlteraUsoMineral(idCocho,idMineral,dataAlteracao:string);
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
    function  RetornaInPVSuplemento(idSuplemento:string):string;
    function  RetonaNomeFase(idFase:string):string;
    procedure MovimentaAnimalGTA(IdAnimal,IdGTADestino,Tipo:string);
    function  VerificaPrevisaoDia(Pasto,DataPrev,IDProduto:string):Boolean;

    function  RetornaIdPastp(Anome: string):string;
    function  RetornaIdRaca(Anome: string): string;
    function  RetornaIdCategoria(Anome: string): string;
    function  RetornaIdRebanho(Anome: string): string;
    function  RetornaIdContrato(Numero: string): string;
    function  RetornaIdGTA(Numero: string): string;

    function  RetornaUltimaForn(iDPasto: string): string;
    procedure AtualizaPlaUsoMineralGeral(idFaz: string);
    procedure VerificaAtualizaPlaUsoMineral(idLocalDestino:string);
    function  RetornaIDCocho(iDPasto: string): string;
//    function
    procedure AtualizaAnimaisFazenda;
    function  RetornaIMSPV(IdMineral,IdPasto,Data:string):string;
    procedure InsereReidentificacaoMovimentacao(idAnimal,Tipo,Nova,Antiga,IdBase:string);
    function  VerificaExisteGenerico(Tabela,Campo,Valor:string):Boolean;
    function  VerificaExisteGenericoGeral(Tabela,Campo,Valor:string):Boolean;
    procedure CorrijeFornecimentoIrregular(idFornecimento,DataForn,
     vIdPasto,vIdMineral,vRealizado,vValorKG,vQtdAnimais:string);
    function RetornaCaixaComunicadoEntrada(idComu,IdPedido:string):string;
    procedure AbreSuplementoMineral;
    procedure AtualizaEstoqueReproc;
    procedure DeletaGtaTMP;
    function RetornaDataEntradAnimalGTA(IDgta:string):string;
    procedure AtualizaEstoqueBrinco;
    procedure AtualizaEstoqueBrincoChip;
    procedure AbreConfigFazenda(idFazenda:string);
    procedure AtualizaSaldoGTA(Id:String);

    procedure AtualizaVersaoBanco(IdVersao:String);
    procedure AtualizaValorContratoAnimais(vIdContrato :integer; vValor,vPesoTotal :double; vTipoValor:Integer);

    procedure InativaReprocessamento(idAnimal,idPesagem,DataReproc,idLocalAtual:string);
    procedure InsereRefugoSaida(idAnimal,IdLoteSaida,Ident_1,ident_2,peso:string);
    procedure InsereRefugoSaidaBC(idAnimal,IdLoteSaida,Ident_1,ident_2,peso,idBaseCampo,dataReg:string);

    procedure AtualizaPesoBalancaoAnimais(idVeiculo,pesoMedio:string);
    procedure AbreGtaVeiculoSaida(idVeiculo:string);
    function  RetornaTotalAnimaisGTAVeiculoSaida(idVeiculo:string):integer;
    function  RetornaValorKgMineral(idMineral:string):string;
    procedure AbreBaixaManualFarmaco(idPropriedade,vFiltro:string);
    procedure TrocaRacao(vIdRacaoOrigem,vIdRacaoDestino:string);
    function  RetornaIdAnimalReprocSemIdentificacao(idLocal:string):string;
    function  VerificaTabelaExiste(vTable:string):Integer;
    function  VerificaIndexExiste(vIndex:string):Integer;
    function  VerificaCampoExiste(vTable,vCampo:string):Integer;
    function  VerificaTriggerExiste(vIndex:string):Integer;
    procedure AtualizaDB(vVersao:string);
    procedure AtualizaPesoTotalLoteSaida(IdLote:string);
    procedure RecalculaCustoFixo(Mes,Ano:Integer);
    procedure AtualizaStatusTMP_ANIMAL(vID,vStatus:string);
    procedure AtualizaIdentificacao(vTipo,vIdenteNew,vIdenteOld:string);
    procedure AbreTMPAnimal(vFiltro:string);
    procedure AtualizaAnimal(vId,vPropriedaedDest,vProdutorDest,vPesoEnt,
     vCurralPastoDest,vDataMov,vRebanho:string);
    function VerificaPedidoChipUsado(idPedido: string): Boolean;
    function VerificaNumeroPedidoChip(Numero: string): Boolean;
    function GeraNumeracaoEstoqueChip(ChipIni, ChipFim,idPedido,qtdCx: string): string;
    function ChecarEstoqueChipGTA(vIdGTA:String):integer;
    function ChecarEstoqueChip(vChip:string):Boolean;
    procedure AbreRetiradaChip(vFiltro:string);
    function RetornaQtdTotalChip(vIdPedido,CaixaIni,CaixaFim:string):string;
    function RetornaInicialCaixa(vIdPedido,CaixaIni:string):string;
    function RetornaFinalCaixa(vIdPedido,CaixaFinal:string):string;
    function VerificaNumeroUsarioEntreCaixas(vIdPedido,CaixaIni,CaixaFim:string):Boolean;
    procedure MudaStatusChipRetirada(vIdPedido,CaixaIni,CaixaFim:string);
    procedure RetornaChipRetirada(vIdPedido,CaixaIni,CaixaFim:string);
    function RetornaMaxID(tabela:string):STring;
    function VerificaGTAUsada(vId:string):integer;
    function VerificaGTAMesmoNumero(vNumero:string):Boolean;

    function VerificaProdutorContratoGTA(vIdGTA,vIdContrato:string):string;
    function VerificaLaudoAnimal(vTipo,idmorte:string):Boolean;
    procedure DeletaAnimalLicenca;
    function MovimentaAnimalIndEntradaConfRefugo(idAnimal, IdLocalOrigem,
      IdLocalDestino, DataMov, IdMotivo: string): integer;

    function RetornaValorContrado(vValor,vTipo,vPeso,vPesoTotal:Double):Double;

  end;

var
  serviceDB: TserviceDB;
implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UPrincipal, UEntradaGrupo, UFornecimentoMineral, UMsgDlg, ServiceDB2,
  UComunicadoEntrada, UComunicadoReidentificacao, UBaseCampo, UServiceBaseCampo,
  ServiceRel;

{$R *.dfm}

{ TserviceDB }

procedure TserviceDB.GeraAnexoVIEVII(idLs, idVeiculo: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('COUNT(*)QTD');
   Add('FROM ANIMAL AN');
   Add('JOIN LOTE_SAIDA LS ON LS.ID=AN.ID_LOTESAIDA');
   Add('JOIN VEICULOS_EMBARQUE V ON AN.ID_VEICULO_SAIDA=V.ID');
   Add('JOIN PRODUTORES PO ON LS.ID_PRODUTOR_ORIGEM  = PO.ID');
   Add('JOIN PRODUTORES PD ON LS.ID_PRODUTOR_DESTINO = PD.ID');
   Add('JOIN PROPRIEDADES  PPO ON PO.ID_PROPRIEDADE   = PPO.ID');
   Add('JOIN PROPRIEDADES  PPD ON PD.ID_PROPRIEDADE   = PPD.ID');
   Add('WHERE LS.ID='+idLs);
   if idVeiculo.Length>0 then
    Add('AND V.ID='+idVeiculo);
   Open;
   vTotalAnimais := FieldByName('QTD').AsString;
 end;
 with AnexoVI_VII,AnexoVI_VII.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('PPO.NOME PROPRIEDADE_ORIGEM,');
   Add('PPO.COD_ERAS_BND,');
   Add('PPO.COD_ESTAB_GTA,');
   Add('PO.NOME PRODUTOR_ORIGEM,');
   Add('PO.CPF_CNPJ,');
   Add('PPO.CIDADE,');
   Add('PPO.UF,');
   Add('PPO.IE IEO,');
   Add('PPO.NIRF NIRFO,');
   Add('PPO.INCRA INCRAO,');
   Add('PPD.NOME PROPRIEDADE_DESTINO,');
   Add('PPD.COD_ERAS_BND COD_ERAS_BND_DESTINO,');
   Add('PPD.COD_ESTAB_GTA COD_ESTAB_GTA_DESTINO,');
   Add('PD.NOME PRODUTOR_DESTINO,');
   Add('PD.CPF_CNPJ CPF_CNPJ_DESTINO,');
   Add('PPD.CIDADE CIDADE_DESTINO,');
   Add('PPD.UF UF_DESTINO,');
   Add('PPD.CIF SIF,');
   Add('PPD.IE IED,');
   Add('PPD.NIRF NIRFD,');
   Add('PPD.INCRA INCRAD,');
   Add('AN.IDENTIFICACAO_2 SISBOV,');
   Add('LS.DATA_EMBARQUE');
   Add('FROM ANIMAL AN');
   Add('JOIN LOTE_SAIDA LS ON LS.ID=AN.ID_LOTESAIDA');
   Add('JOIN VEICULOS_EMBARQUE V ON AN.ID_VEICULO_SAIDA=V.ID');
   Add('JOIN PRODUTORES PO ON LS.ID_PRODUTOR_ORIGEM  = PO.ID');
   Add('JOIN PRODUTORES PD ON LS.ID_PRODUTOR_DESTINO = PD.ID');
   Add('JOIN PROPRIEDADES  PPO ON PO.ID_PROPRIEDADE   = PPO.ID');
   Add('JOIN PROPRIEDADES  PPD ON PD.ID_PROPRIEDADE   = PPD.ID');
   Add('WHERE LS.ID='+idLs);
   if idVeiculo.Length>0 then
    Add('AND V.ID='+idVeiculo);
   Open;
 end;
 with GTAAnexoVI_VII,GTAAnexoVI_VII.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('DISTINCT GT.NUMERO||''-''||GT.SERIE||''-''||GT.UF NUM_GTA');
   Add('FROM ANIMAL AN');
   Add('JOIN LOTE_SAIDA LS ON LS.ID=AN.ID_LOTESAIDA');
   Add('JOIN VEICULOS_EMBARQUE V ON AN.ID_VEICULO_SAIDA=V.ID');
   Add('JOIN GTA GT ON GT.ID_VEICULO_SAIDA=V.ID');
   Add('JOIN PRODUTORES PO ON LS.ID_PRODUTOR_ORIGEM  = PO.ID');
   Add('JOIN PRODUTORES PD ON LS.ID_PRODUTOR_DESTINO = PD.ID');
   Add('JOIN PROPRIEDADES  PPO ON PO.ID_PROPRIEDADE   = PPO.ID');
   Add('JOIN PROPRIEDADES  PPD ON PD.ID_PROPRIEDADE   = PPD.ID');
   Add('WHERE LS.ID='+idLs);
   if idVeiculo.Length>0 then
    Add('AND V.ID='+idVeiculo);
   Open;
 end;
end;

function TserviceDB.ChecaBndProdutor(vIdProdutor, vSisbov: string): Boolean;
var
  vQry : TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM BND ');
   Add('WHERE SISBOV= '+vsisbov);
   Add('AND STATUS=1');
   Add('AND ID_PRODUTOR='+vidProdutor);
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TserviceDB.ChecaBndProdutorOutroEras(vIdProdutor,
  vSisbov: string): Boolean;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 vRacaBndOutroEras :='';
 vSexoBndOutroEras :='';
 vDnBndOutroEras   :='';
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM TMP_BND_OUTRO_ERAS ');
   Add('WHERE SISBOV= '+vsisbov);
   Add('AND ID_PRODUTOR='+vidProdutor);
   Open;
   vRacaBndOutroEras :=FieldByName('RACA').AsString;
   vSexoBndOutroEras :=FieldByName('SEXO').AsString;
   vDnBndOutroEras   :=FieldByName('NASCIMENTO').AsString;

   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

procedure TserviceDB.AbreQryGTASaida(IdProdutor,IdProdutorDestino: string);
begin
 with TableGTA,TableGTA.SQL do
 begin
   Clear;
   Add('SELECT * FROM GTA G');
   Add('JOIN propriedades O ON G.id_propriedade_origem=O.id');
   Add('JOIN propriedades D ON G.id_propriedade_destino=D.id');
   Add('JOIN produtores   PO ON G.id_produtor_origem =PO.id');
   Add('JOIN produtores   PD ON G.id_produtor_destino=PD.id');
   Add('LEFT JOIN COMPRADOR CP  ON CP.ID=G.ID_COMPRADOR');
   Add('WHERE TIPO=''S'' AND G.STATUS=1 AND PD.ID='+IdProdutorDestino);
   Add('AND PO.ID='+IdProdutor);
   Add('AND (ID_VEICULO_SAIDA=0 or ID_VEICULO_SAIDA IS NULL)');
   Open;
 end;
end;

procedure TserviceDB.AbreQryVeiculosAnexos(IdLS: string);
begin
 with qryVeiculosLotados,qryVeiculosLotados.SQL do
 begin
   Clear;
   Add('SELECT V.*,G.NUMERO||''-''||G.SERIE GTA,G.DATA_EMISSAO,G.DATA_VALIDADE,G.TOTAL_GTA FROM VEICULOS_EMBARQUE V');
   Add('LEFT JOIN GTA G ON G.TIPO=''S'' AND G.ID_VEICULO_SAIDA=V.ID');
   Add('WHERE V.STATUS=1 AND V.LOTADO=1 AND V.ID_LOTESAIDA='+IdLS);
   Open;
 end;
end;

procedure TserviceDB.AbreComunicadoReident(vFiltro: string);
begin
 with TableComunicadoReident,TableComunicadoReident.SQL do
 begin
   Clear;
   Add('select c.*,p.nome produtor from COMUNICADO_REIDENTificacao c');
   Add('join produtores p on p.id=c.id_produtor');
   Add('where c.status=1');
   Add('AND P.ID_PROPRIEDADE='+vIdPropriedade);
   if vFiltro.Length>0 then
    Add(vFiltro);
   Add('order by c.ID desc');
   Open;
 end;
end;

procedure TserviceDB.AbreConfigFazenda(idFazenda: string);
begin
 with qryConfigPadrao,qryConfigPadrao.SQL do
 begin
   Clear;
   Add('select * from config');
   Add('where ID_PROPRIEDADE='+idFazenda);
   Open;
   if qryConfigPadrao.IsEmpty then
   begin
    serviceDB.qryConfigPadrao.Insert;
    serviceDB.qryConfigPadraoCUSTO_FIXO_PADRAO.AsFloat :=1.5;
    serviceDB.qryConfigPadraoID_PROPRIEDADE.AsString   :=serviceDB.vIdPropriedade;
    serviceDB.qryConfigPadraoGMD.AsInteger             :=0;
    serviceDB.qryConfigPadrao.ApplyUpdates(-1);

    Clear;
    Add('select * from config');
    Add('where ID_PROPRIEDADE='+idFazenda);
    Open;
   end;
 end;
end;

procedure TserviceDB.AbreEstoqueFarmacoFazenda(vFiltro:string);
begin
 with TableEstoqueFarmaco,TableEstoqueFarmaco.SQL do
 begin
   Clear;
   Add('SELECT EF.*,F.nome FARMACOS,');
   Add('CASE');
   Add(' WHEN EF.tipo_embalagem=0 then ''ML''');
   Add(' WHEN EF.tipo_embalagem=1 then ''UNIDADE''');
   Add('END TIPO_ENTRADA');
   Add('FROM ESTOQUE_FARMACO EF');
   Add('JOIN FARMACO F ON F.id=EF.id_farmaco');
   Add('WHERE EF.STATUS=1 and EF.ID_PROPRIEDADE='+vIdPropriedade);
   if vFiltro.Length>0 then
    Add(vFiltro);
   Open;
 end;
end;

function TserviceDB.VerificaCausaExite(ACausa: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from AUX_MOTIVO_MORTE');
   Add('where NOME='+ACausa.QuotedString);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereAnimalTMP(IDENTIFICACAO_1, IDENTIFICACAO_2,
 IDADE_MESES,PESO_ENTRADA,RACA,REBANHO,CATEGORIA,PASTO,DATA_ENT,ID_CONTRATO,ID_GTA: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO TMP_ANIMAL');
   Add('(IDENTIFICACAO_1,IDENTIFICACAO_2,IDADE_MESES, PESO_ENTRADA,ID_USUARIO');
   Add(',RACA,REBANHO,CATEGORIA,PASTO,DATA_ENTRADA,NUMERO_CONTRATO,NUMERO_GTA)');
   Add('VALUES');
   Add('(:IDENTIFICACAO_1,:IDENTIFICACAO_2,:IDADE_MESES,:PESO_ENTRADA,:ID_USUARIO');
   Add(',:RACA,:REBANHO,:CATEGORIA,:PASTO,:DATA_ENT,:NUMERO_CONTRATO,:NUMERO_GTA)');
   ParamByName('IDENTIFICACAO_1').AsString := IDENTIFICACAO_1;
   ParamByName('IDENTIFICACAO_2').AsString := IDENTIFICACAO_2;
   ParamByName('IDADE_MESES').AsString     := IDADE_MESES;
   ParamByName('PESO_ENTRADA').AsString    := PESO_ENTRADA;
   ParamByName('ID_USUARIO').AsString      := vIdUserLogado;
   ParamByName('RACA').AsString            := RACA;
   ParamByName('REBANHO').AsString         := REBANHO;
   ParamByName('CATEGORIA').AsString       := CATEGORIA;
   ParamByName('PASTO').AsString           := PASTO;
   ParamByName('DATA_ENT').AsDate          := StrToDate(DATA_ENT);
   ParamByName('NUMERO_CONTRATO').AsString := ID_CONTRATO;
   ParamByName('NUMERO_GTA').AsString      := ID_GTA;
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereAnimalTransferencia(ID_ANIMAL,ID_LOCAL,DATA_PROC,IDADE_MESES,PESO_ENTRADA,
    ID_PRODUTOR_O,ID_PROPRIEDADE_O,ID_PRODUTOR_D,ID_PROPRIEDADE_D,ID_REBANHO,
    VALOR_COMPRA: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 try
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('INSERT INTO ANIMAL');
     Add('(ID_LOCAL,');
     Add('ID_CATEGORIA,');
     Add('ID_RACA,');
     Add('IDENTIFICACAO_1,');
     Add('IDENTIFICACAO_2,');
     Add('DATA_PROC,');
     Add('IDADE_MESES,');
     Add('PESO_ENTRADA,');
     Add('ULTIMO_PESO,');
     Add('DATA_ULTIMO_PESO,');
     Add('ID_USUARIO,');
     Add('ID_PROPRIEDADE,');
     Add('ID_PRODUTOR,');
     Add('ULTIMA_ALTERACAO,');
     Add('ULTIMO_USUARIO,');
     Add('ORIGEM_DADOS,');
     Add('ID_LOTE,');
     Add('VALOR_COMPRA,');
     Add('ID_PRODUTOR_ORIGEM,');
     Add('DATA_LIBERACAO,');
     Add('ID_ULTIMO_USUARIO_ALTERACAO,');
     Add('DATA_ULTIMA_ALTERACAO,');
     Add('ID_CONTRATO_COMPRA,');
     Add('OBSERVACAO,');
     Add('TIPO_ENTRADA,');
     Add('PESO_ESTIMADO,');
     Add('ID_CATEGORIA_ATUAL,');
     Add('DATA_REPROCESSAMENTO,');
     Add('ID_REBANHO,');
     Add('ID_CONTRATO');
     Add(')');
     Add('SELECT');
     Add(ID_LOCAL+',');
      Add('ID_CATEGORIA,');
      Add('ID_RACA,');
      Add('IDENTIFICACAO_1,');
      Add('IDENTIFICACAO_2,');
      Add(DATA_PROC+',');
      Add(IDADE_MESES+',');
      Add(PESO_ENTRADA+',');
      Add(PESO_ENTRADA+',');
      Add('DATA_ULTIMO_PESO,');
      Add(vIdUserLogado+',');
      Add(ID_PROPRIEDADE_D+',');
      Add(ID_PRODUTOR_D+',');
      Add('ULTIMA_ALTERACAO,');
      Add('ULTIMO_USUARIO,');
      Add(QuotedStr('TRANSF. GRUPO')+',');
      Add('ID_LOTE,');
      Add(VALOR_COMPRA+',');
      Add(ID_PRODUTOR_O+',');
      Add('DATA_LIBERACAO,');
      Add('ID_ULTIMO_USUARIO_ALTERACAO,');
      Add('DATA_ULTIMA_ALTERACAO,');
      Add('ID_CONTRATO_COMPRA,');
      Add('OBSERVACAO,');
      Add('5,');
      Add('PESO_ESTIMADO,');
      Add('ID_CATEGORIA_ATUAL,');
      Add('DATA_REPROCESSAMENTO,');
      Add(ID_REBANHO+',');
      Add('ID_CONTRATO');
      Add('FROM ANIMAL');
      Add('WHERE ID='+ID_ANIMAL);
     vQryAux.SQL.Text;
     try
      ExecSQL;
      InsereLogAnimal(RetornaMaxIDAnimal(),vIdUserLogado);
     EXCEPT
      on E : Exception do
      TThread.Synchronize(nil,procedure
      begin
       ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end);
     end;
   end;
 except
 on E : Exception do
  TThread.Synchronize(nil,procedure
  begin
   ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end);
 end;
 vQryAux.Free;
end;

procedure TserviceDB.DeletaAnimalTMP;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM TMP_ANIMAL');
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.DeletaAnimalLicenca;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM sistemasclientes');
   ExecSQL;
 end;
 vQryAux.Free;
end;


procedure TserviceDB.AbreAnexoIXComunicadoEntrada(idComunicado: string);
var
  vCaixas,vIdPedido:string;
  vQryAux :TFDQuery;
begin
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection := fCon;
   with vQryAux,vQryAux.sql do
   begin
     Clear;
     Add('SELECT DISTINCT ES.ID_PEDIDO FROM ANIMAL CR');
     Add('JOIN GTA GT ON CR.GTA_ID=GT.ID');
     Add('JOIN ESTOQUE_BRINCOS ES ON CR.IDENTIFICACAO_2=ES.SISBOV');
     Add('WHERE CR.STATUS>-1 AND GT.ID_COMUNICADO='+idComunicado);
     Add('ORDER BY ES.ID_PEDIDO');
     Open;
     while not vQryAux.eof do
     begin
       vIdPedido := vQryAux.FieldByName('ID_PEDIDO').AsString;
       vCaixas   := serviceDB.RetornaCaixaComunicadoEntrada(idComunicado,vIdPedido);
       with AnexoIX,AnexoIX.Sql do
       begin
         Clear;
         Add('select * from');
         Add('(select');
         Add(' p.SISBOV,');
         Add(' p.MANEJO,');
         Add(' p.CAIXA,');
         Add(' po.NOME PRODUTOR,');
         Add(' ppo.nome propriedades,');
         Add(' PO.cpf_cnpj,');
         Add(' PPO.cidade||''-''||PPO.uf CidadeUF,');
         Add(' PPO.endereco,');
         Add(' PPO.IE,');
         Add(' pb.QTD_REG_PAGINA,');
         Add(' FO.NOME_FANTASIA FABRICANTE,');
         Add(' P.ID_PEDIDO IDPedido,');
         Add(' PB.numero_pedido,');
         Add(' PB.data_solicitacao,');
         Add(' PB.tipo,');
         Add(' CE.nome_fantasia CERTIFICADORA_NOME,');
         Add(' coalesce(PPO.nirf,ppo.incra)NirfIncra');
         Add('FROM ESTOQUE_BRINCOS P');
         Add('JOIN PEDIDO_BRINCOS PB ON PB.ID=P.ID_PEDIDO');
         Add('JOIN FORNECEDOR_BRINCOS FO ON FO.ID=PB.ID_FORNECEDOR_BRINCO');
         Add('JOIN PRODUTORES PO ON PO.ID=PB.ID_PRODUTOR');
         Add('JOIN PROPRIEDADES PPO ON PPO.ID=PO.ID_PROPRIEDADE');
         Add('JOIN CERTIFICADORA CE ON CE.id=PB.id_certificadora');
         Add('where p.status=1 and p.caixa in('+vCaixas+')');
         Add('AND PB.ID='+vIdPedido);
         Add('order by p.manejo');
         Add(')y');
         Add('LEFT JOIN');
         Add('(');
         Add('SELECT');
         Add(' g.ID_COMUNICADO,');
         Add(' a.IDENTIFICACAO_2,');
         Add(' a.IDADE_MESES,');
         Add(' c.SEXO,');
         Add(' r.CODIGO_BND,');
         Add(QuotedStr('E')+'Motivo,');
         Add(' CAST(a.data_proc AS DATE)DATA_BRINCAGEM,');
         Add(' CAST(a.DATA_NASCIMENTO AS DATE)DN');
         Add('FROM ANIMAL a');
         Add('JOIN GTA g ON g.ID=a.GTA_ID');
         Add('JOIN categorias C ON C.id=A.id_categoria');
         Add('JOIN RACA R ON R.id=A.id_raca');
         Add('WHERE a.status>-1 and g.ID_COMUNICADO='+idComunicado);
         Add(')x');
         Add('ON y.sisbov=x.IDENTIFICACAO_2');
         AnexoIX.Sql.Text;
         Open;
       end;
       frmCadComunicadoEnt.ppDetailBand2.PrintCount := AnexoIXQTD_REG_PAGINA.AsInteger;
       frmCadComunicadoEnt.ppReportAnexoX.Print;
       vQryAux.Next;
     end;
   end;
   vQryAux.Free;
end;
procedure TserviceDB.AbreAnexoIXComunicadoEntradaSemCod(idComunicado: string);
var
  vCaixas,vIdPedido:string;
  vQryAux :TFDQuery;
begin
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection := fCon;
   with vQryAux,vQryAux.sql do
   begin
     Clear;
     Add('SELECT DISTINCT ES.ID_PEDIDO FROM ANIMAL CR');
     Add('JOIN GTA GT ON CR.GTA_ID=GT.ID');
     Add('JOIN ESTOQUE_BRINCOS ES ON CR.IDENTIFICACAO_2=ES.SISBOV');
     Add('WHERE CR.STATUS=1 AND GT.ID_COMUNICADO='+idComunicado);
     Add('ORDER BY ES.ID_PEDIDO');
     Open;
     while not vQryAux.eof do
     begin
       vIdPedido := vQryAux.FieldByName('ID_PEDIDO').AsString;
       vCaixas   := serviceDB.RetornaCaixaComunicadoEntrada(idComunicado,vIdPedido);
       with AnexoIX,AnexoIX.Sql do
       begin
         Clear;
         Add('select * from');
         Add('(select');
         Add(' p.SISBOV,');
         Add(' p.MANEJO,');
         Add(' p.CAIXA,');
         Add(' po.NOME PRODUTOR,');
         Add(' ppo.nome propriedades,');
         Add(' PO.cpf_cnpj,');
         Add(' PPO.cidade||''-''||PPO.uf CidadeUF,');
         Add(' PPO.endereco,');
         Add(' PPO.IE,');
         Add(' pb.QTD_REG_PAGINA,');
         Add(' FO.NOME_FANTASIA FABRICANTE,');
         Add(' P.ID_PEDIDO IDPedido,');
         Add(' PB.numero_pedido,');
         Add(' PB.data_solicitacao,');
         Add(' PB.tipo,');
         Add(' CE.nome_fantasia CERTIFICADORA_NOME,');
         Add(' coalesce(PPO.nirf,ppo.incra)NirfIncra');
         Add('FROM ESTOQUE_BRINCOS P');
         Add('JOIN PEDIDO_BRINCOS PB ON PB.ID=P.ID_PEDIDO');
         Add('JOIN FORNECEDOR_BRINCOS FO ON FO.ID=PB.ID_FORNECEDOR_BRINCO');
         Add('JOIN PRODUTORES PO ON PO.ID=PB.ID_PRODUTOR');
         Add('JOIN PROPRIEDADES PPO ON PPO.ID=PO.ID_PROPRIEDADE');
         Add('JOIN CERTIFICADORA CE ON CE.id=PB.id_certificadora');
         Add('where p.status=1 and p.caixa in('+vCaixas+')');
         Add('AND PB.ID='+vIdPedido);
         Add('order by p.manejo');
         Add(')y');
         Add('LEFT JOIN');
         Add('(');
         Add('SELECT');
         Add(' g.ID_COMUNICADO,');
         Add(' a.IDENTIFICACAO_2,');
         Add(' a.IDADE_MESES,');
         Add(' c.SEXO,');
         Add(' r.CODIGO_BND,');
         Add(QuotedStr('E')+'Motivo,');
         Add(' CAST(a.data_proc AS DATE)DATA_BRINCAGEM,');
         Add(' CAST(a.DATA_NASCIMENTO AS DATE)DN');
         Add('FROM ANIMAL a');
         Add('JOIN GTA g ON g.ID=a.GTA_ID');
         Add('JOIN categorias C ON C.id=A.id_categoria');
         Add('JOIN RACA R ON R.id=A.id_raca');
         Add('WHERE a.status=1 and g.ID_COMUNICADO='+idComunicado);
         Add(')x');
         Add('ON y.sisbov=x.IDENTIFICACAO_2');
         AnexoIX.Sql.Text;
         Open;
       end;
       frmCadComunicadoEnt.ppDetailBand3.PrintCount := AnexoIXQTD_REG_PAGINA.AsInteger;
       frmCadComunicadoEnt.ppReportAnexoXSemCod.Print;
       vQryAux.Next;
     end;
   end;
   vQryAux.Free;
end;

procedure TserviceDB.AbreAnexoIXComunicadoReident(idComunicado: string);
begin
 with AnexoIXReident,AnexoIXReident.SQL do
 begin
   Clear;
   Add('SELECT * FROM');
   Add('(SELECT');
   Add('p.SISBOV,');
   Add('p.MANEJO,');
   Add('p.CAIXA,');
   Add('po.NOME PRODUTOR,');
   Add('ppo.nome propriedades,');
   Add('PO.cpf_cnpj,');
   Add('PPO.cidade||''-''||PPO.uf CidadeUF,');
   Add('PPO.endereco,');
   Add('PPO.IE,');
   Add('pb.QTD_REG_PAGINA,');
   Add('FO.NOME_FANTASIA FABRICANTE,');
   Add('P.ID_PEDIDO IDPEDIDO,');
   Add(' PB.numero_pedido,');
   Add(' PB.data_solicitacao,');
   Add(' PB.tipo,');
   Add(' CE.nome_fantasia CERTIFICADORA_NOME,');
   Add(' coalesce(PPO.nirf,ppo.incra)NirfIncra');
   Add('FROM ESTOQUE_BRINCOS P');
   Add('JOIN PEDIDO_BRINCOS PB ON PB.ID=P.ID_PEDIDO');
   Add('JOIN FORNECEDOR_BRINCOS FO ON FO.ID=PB.ID_FORNECEDOR_BRINCO');
   Add('JOIN PRODUTORES PO ON PO.ID=PB.ID_PRODUTOR');
   Add('JOIN PROPRIEDADES PPO ON PPO.ID=PO.ID_PROPRIEDADE');
   Add('JOIN CERTIFICADORA CE ON CE.id=PB.id_certificadora)y');
   Add('JOIN');
   Add('(SELECT');
   Add('a.ID_COMUNICADO_REIDENT,');
   Add('a.IDENTIFICACAO_2,');
   Add('a.IDADE_MESES,');
   Add('c.SEXO,');
   Add('r.CODIGO_BND,');
   Add(QuotedStr('R')+' Motivo,');
   Add('CAST(a.data_proc AS DATE)DATA_BRINCAGEM,');
   Add(' CAST(a.DATA_NASCIMENTO AS DATE)DN,');
   Add(' crn.SISBOV_NEW');
   Add('FROM ANIMAL a');
   Add('JOIN COMUNICADO_REIDENT_NUMEROS crn ON a.IDENTIFICACAO_2=crn.SISBOV_OLD');
   Add('JOIN categorias C ON C.id=A.id_categoria');
   Add('JOIN RACA R ON R.id=A.id_raca');
   Add('WHERE ID_COMUNICADO_REIDENT=:idCom)x');
   Add('ON y.sisbov=x.SISBOV_NEW');
   ParamByName('idCom').AsString :=idComunicado;
   AnexoIXReident.SQL.Text;
   Open
 end;
end;

function TserviceDB.AbreQryAnimaisExixtentesMorte(Tipo,Numero,idPropriedade:string):Boolean;
begin
 with qryAnimalExistente,qryAnimalExistente.SQL do
 begin
   Clear;
   Add('select');
   Add('a.*,');
   Add('c.id,');
   Add('c.codigo curral_pasto,');
   Add('r.nome raca_nome,');
   Add('ca.nome categoria_nome,');
   Add('u.name ususario,');
   Add('g.serie||g.uf||g.numero gta,');
   Add('((coalesce(cast(data_saida as date),current_date)-cast(data_proc as date))) dias');
   Add('from animal a');
   Add('join currais c on c.id=a.id_local');
   Add('join raca  r on a.id_raca=r.id');
   Add('join categorias ca on ca.id=a.id_categoria');
   Add('left join gta g on a.gta_id=g.id');
   Add('join users u on a.id_usuario=u.id');
   Add('where a.status=1 AND a.id_propriedade='+IdPropriedade);
   if Tipo='1' then
    Add('AND IDENTIFICACAO_1=:IDENTIFICACAO_1');
   if Tipo='2' then
    Add('AND IDENTIFICACAO_2=:IDENTIFICACAO_1');
    ParamByName('IDENTIFICACAO_1').AsString:=Numero;
   Open;
   Result := qryAnimalExistente.IsEmpty;
 end;
end;

function TserviceDB.AbreQryAnimaisExixtentesProdutor(idProdutor,Tipo,Numero,idPropriedade:string):Boolean;
begin
 with qryAnimalExistente,qryAnimalExistente.SQL do
 begin
   Clear;
   Add('select');
   Add('a.*,');
   Add('c.id,');
   Add('c.codigo curral_pasto,');
   Add('r.nome raca_nome,');
   Add('ca.nome categoria_nome,');
   Add('u.name ususario,');
   Add('g.serie||g.uf||g.numero gta,');
   Add('((coalesce(cast(data_saida as date),current_date)-cast(data_proc as date))) dias');
   Add('from animal a');
   Add('join currais c on c.id=a.id_local');
   Add('join raca  r on a.id_raca=r.id');
   Add('join categorias ca on ca.id=a.id_categoria');
   Add('left join gta g on a.gta_id=g.id');
   Add('join users u on a.id_usuario=u.id');
   Add('where a.status=1 AND a.id_propriedade='+IdPropriedade);
   Add('AND ID_PRODUTOR='+idProdutor);
   if Tipo='1' then
    Add('AND IDENTIFICACAO_1=:IDENTIFICACAO_1');
   if Tipo='2' then
    Add('AND IDENTIFICACAO_2=:IDENTIFICACAO_1');
    ParamByName('IDENTIFICACAO_1').AsString:=Numero;
   Open;
   Result := qryAnimalExistente.IsEmpty;
 end;
end;

procedure TserviceDB.AbreAnexoVIIIComunicadoMorte(idComunicado: string);
begin
 with AnexoVIII,AnexoVIII.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('c.NUMERO NUMCOMUNIADO,');
   Add('po.NOME Produtor,');
   Add('po.CPF_CNPJ,');
   Add('ppo.NOME Propriedade,');
   Add('ppo.CIDADE,');
   Add('ppo.UF,');
   Add('A.IDENTIFICACAO_2,');
   Add('CASE');
   Add('WHEN A.TIPO_MORTE=0 THEN ''NATURAL''');
   Add(' WHEN A.TIPO_MORTE=1 THEN ''ACIDENTAL''');
   Add(' WHEN A.TIPO_MORTE=2 THEN ''SACRIFICIO''');
   Add('END TipoMorte,');
   Add('AX.NOME CausaMorte,');
   Add('a.DATA_SAIDA,');
   Add('a.OBS_MORTE,');
   Add('C.DESTINO,');
   Add('PPO.NIRF,');
   Add('PPO.INCRA,');
   Add('CA.SEXO,');
   Add('C.OBS,');
   Add('C.DESTINO,');
   Add('TIPO_MORTE TipoInt');
   Add('FROM ANIMAL A');
   Add('JOIN CATEGORIAS CA ON A.ID_cATEGORIA=CA.ID');
   Add('JOIN AUX_MOTIVO_MORTE AX ON AX.ID=A.ID_MOTIVO_MORTE');
   Add('JOIN COMUNICADO_MORTE C ON A.ID_COMUNICADO_MORTE=C.ID');
   Add('JOIN PRODUTORES PO ON PO.ID=C.ID_PRODUTOR');
   Add('JOIN PROPRIEDADES PPO ON PPO.ID=PO.ID_PROPRIEDADE');
   Add('WHERE A.ID_COMUNICADO_MORTE='+idComunicado);
   Open;
 end;
end;

procedure TserviceDB.AbreAnimaisMorte(idPropriedade,vFiltro: String);
begin
 with TableAnimaisMorte,TableAnimaisMorte.SQL do
 begin
   Clear;
   Add('SELECT P.nome Produtor,A.*,cca.NUMERO CONTRATO,R.NOME RACA ,C.NOME CATEGORIA,CU.CODIGO ULTIMO_LOCAL,ax.NOME MOTIVO');
   Add('FROM ANIMAL A');
   Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL cca ON cca.id=a.id_contrato');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('JOIN AUX_MOTIVO_MORTE ax ON ax.ID=a.ID_MOTIVO_MORTE');
   Add('JOIN PRODUTORES P ON P.ID= A.ID_PRODUTOR');
   Add('WHERE A.STATUS=3');
   Add('AND A.ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('ID_PROPRIEDADE').AsString :=idPropriedade;
   if vFiltro.Length>0 then
    Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.AbreAnimaisNascimento(idPropriedade, vFiltro: String);
begin
 with TableAnimaisNasimento,TableAnimaisNasimento.SQL do
 begin
   Clear;
   Add('SELECT A.*,R.NOME RACA ,C.NOME CATEGORIA,CU.CODIGO LOCAL,P.NOME PRODUTOR FROM ANIMAL A');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('JOIN PRODUTORES P ON P.ID=A.ID_PRODUTOR');
   Add('WHERE A.STATUS<>-1 AND A.ORIGEM_DADOS=''NASCIMENTO''');
   Add('AND A.ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('ID_PROPRIEDADE').AsString :=idPropriedade;
   if vFiltro.Length>0 then
    Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.AbreAnimalSanidade(vFiltro: string);
begin
 with TableAnimalSanidade,TableAnimalSanidade.SQL do
 begin
   Clear;
   Add('select');
   Add('an.*,');
   Add('fa.nome FarmacoNome,');
   Add('pr.nome ProtocoloNome,');
   Add('cu.codigo LocalAtualNome,');
   Add('us.name ResponsavelAplicacao,');
   Add('a.identificacao_1,');
   Add('a.identificacao_2,');
   Add('case an.tipo_tratamento');
   Add('when 1 then ''PREVENTIVO''');
   Add('when 2 then ''TRATAMENTO''');
   Add('end tipo_tratamento_str,');
   Add('axm.MOTIVO');
   Add('from animal_sanidade an');
   Add('join animal a on a.id=an.id_animal and a.id_propriedade=an.id_propriedae');
   Add('join farmaco fa on fa.id=an.id_farmaco');
   Add('left join protocolo_sanitario pr on pr.id=an.id_protocolo');
   Add('join currais cu on cu.id=an.id_local_atual');
   Add('join users us on us.id=an.id_responsavel_aplicacao');
   Add('left join AUX_MOTIVO_APLICACAO axm on axm.id=an.ID_MOTIVO_APLICACAO');
   Add('where an.status=1');
   Add('and an.id_propriedae='+vIdPropriedade);
   if vFiltro.Length>0 then
   Add(vFiltro);
   Add('order by an.id desc');
   Open;
 end;

 with TableAnimalSanidadeRep,TableAnimalSanidadeRep.SQL do
 begin
   Clear;
   Add('select');
   Add('an.*,');
   Add('fa.nome FarmacoNome,');
   Add('pr.nome ProtocoloNome,');
   Add('cu.codigo LocalAtualNome,');
   Add('us.name ResponsavelAplicacao,');
   Add('a.identificacao_1,');
   Add('a.identificacao_2,');
   Add('case an.tipo_tratamento');
   Add('when 1 then ''PREVENTIVO''');
   Add('when 2 then ''TRATAMENTO''');
   Add('end tipo_tratamento_str,');
   Add('axm.MOTIVO');
   Add('from animal_sanidade an');
   Add('join animal a on a.id=an.id_animal and a.id_propriedade=an.id_propriedae');
   Add('join farmaco fa on fa.id=an.id_farmaco');
   Add('left join protocolo_sanitario pr on pr.id=an.id_protocolo');
   Add('join currais cu on cu.id=an.id_local_atual');
   Add('join users us on us.id=an.id_responsavel_aplicacao');
   Add('left join AUX_MOTIVO_APLICACAO axm on axm.id=an.ID_MOTIVO_APLICACAO');
   Add('where an.status=1');
   Add('and an.id_propriedae='+vIdPropriedade);
   if vFiltro.Length>0 then
   Add(vFiltro);
   Add('order by an.id desc');
   Open;
 end;
end;

procedure TserviceDB.AbreAnimalSanidadeTratamento(vFiltro,vImportacao: string);
begin
 with TableAnimaisTratamento,TableAnimaisTratamento.SQL do
 begin
   Clear;
   Add('select');
   Add('a.*,');
   Add('r.nome RacaNome,');
   Add('c.nome CategoriaNome,');
   Add('cu.codigo LocalAtual,');
   Add('COALESCE(a.ULTIMO_PESO,a.PESO_ENTRADA_CONF,a.PESO_ENTRADA) ULTIMO_PESO_C');
   Add('from animal a');
   Add('join raca r on a.id_raca=r.id');
   Add('join categorias c on c.id=a.id_categoria');
   Add('join currais cu on cu.id=a.id_local');
   if vImportacao='S' then
    Add('JOIN TMP_ANIMAL ta ON (ta.IDENTIFICACAO_1 =a.IDENTIFICACAO_1) OR (ta.IDENTIFICACAO_2 = a.IDENTIFICACAO_2)');
   Add('where a.status=1');
   Add('and a.id_propriedade='+vIdPropriedade);
   if vFiltro.Length>0 then
   Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.AbreBaixaManualFarmaco(idPropriedade, vFiltro: string);
begin
 with BAIXA_MANUAL_FARMACO,BAIXA_MANUAL_FARMACO.SQL do
 begin
  Clear;
  Add('select');
  Add(' a.*,');
  Add(' f.nome FarmacoNome,');
  Add(' CASE');
  Add('  WHEN A.tipo_embalagem=0 THEN ''FRASCO''');
  Add('  WHEN A.tipo_embalagem=0 THEN ''UNIDADE''');
  Add(' END Embalagem');
  Add('from BAIXA_MANUAL_FARMACO a');
  Add('join farmaco f on a.id_farmaco= f.id');
  Add('where a.status=1  and a.id_propriedade='+vIdPropriedade);
  Add(vFiltro);
  Open;
 end;
end;

procedure TserviceDB.AbreBNDProdutor(idProdutor, SISBOV: string);
begin
 with bnd,bnd.SQL do
 begin
   Clear;
   Add('SELECT B.*,P.NOME PRODUTOR FROM BND B');
   Add('JOIN PRODUTORES  P ON P.ID=B.ID_PRODUTOR');
   Add('WHERE B.STATUS=1 AND B.ID_PRODUTOR=:ID_PRODUTOR');
   if SISBOV.Length>0 then
     Add('AND SISBOV=:SISBOV');

   ParamByName('ID_PRODUTOR').AsString := idProdutor;

   if SISBOV.Length>0 then
    ParamByName('SISBOV').AsString := SISBOV;

   Open;
 end;
end;

procedure TserviceDB.AbreCalendario(Dta: TDate);
begin
 with Calendario,Calendario.SQL do
 begin
   Clear;
   Add('SELECT A.*,');
   Add(' CASE');
   Add('  when tipo_evento=0 then ''OCORRENCIA''');
   Add('  when tipo_evento=1 then ''Agendamento''');
   Add(' end TipoEvendoStr,');
   Add(' S.ocorrencia');
   Add('FROM CALENDARIO A');
   Add('LEFT JOIN AUX_TIPO_OCORRENCIA S ON S.id=A.id_ocorrencia');
   Add('WHERE A.STATUS=1');
   Add('AND data=:data');
   ParamByName('data').AsDate :=Dta;
   Open;
 end;
end;


procedure TserviceDB.AbreComunicadoEntrada(vFiltro: string);
begin
 with TableComunicadoEntrada,TableComunicadoEntrada.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('CE.*,');
   Add('PO.NOME PRODUTOR_ORIGEM,');
   Add('PD.NOME PRODUTOR_DESTINO,');
   Add('CASE');
   Add('WHEN CE.STATUS_COMUNICADO=0 THEN ''ABERTO''');
   Add('WHEN CE.STATUS_COMUNICADO=1 THEN ''FECHADO''');
   Add('END STATUS_STR');
   Add('FROM COMUNICADO_ENTRADA CE');
   Add('JOIN PRODUTORES PO ON CE.ID_PRODUTOR_ORIGEM=PO.ID');
   Add('JOIN PRODUTORES PD ON CE.ID_PRODUTOR_DESTINO=PD.ID');
   Add('WHERE CE.STATUS=1');
   Add('AND PD.ID_PROPRIEDADE='+vIdPropriedade);
   if vFiltro.Length>0 then
    Add(vFiltro);
   Add('ORDER BY CE.NUMERO DESC ');
   Open;
 end;
end;

procedure TserviceDB.AbreComunicadoMorte(vFiltro: string);
begin
 with TableComunicadoMorte,TableComunicadoMorte.SQL do
 begin
   Clear;
   Add('select m.*,p.nome produtor from comunicado_morte m');
   Add('join produtores p on p.id=m.id_produtor');
   Add('where m.status=1');
   Add('AND P.ID_PROPRIEDADE='+vIdPropriedade);
   if vFiltro.Length>0 then
    Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.AbreComunicadoNascimento(vFiltro:string);
begin
  with TableComunicadoNascimento,TableComunicadoNascimento.SQL do
  begin
    Clear;
    Add('select C.*,P.NOME PRODUTOR from comunicado_nascimento C');
    Add('JOIN PRODUTORES P ON P.ID=C.ID_PRODUTOR');
    Add('where c.status=1');
    Add('AND P.ID_PROPRIEDADE='+vIdPropriedade);
    Add(vFiltro);
    Open;
  end;
end;

procedure TserviceDB.InsereLogFornecimento(ID_USUARIO, ID_FORN,
  ACAO: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO LOG_FORNECIMENTO (ID_USUARIO,ID_FORN,ACAO) VALUES (:ID_USUARIO,:ID_FORN,:ACAO)');
   ParamByName('ID_USUARIO').AsString := ID_USUARIO;
   ParamByName('ID_FORN').AsString    := ID_FORN;
   ParamByName('ACAO').AsString       := ACAO;
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereMovimentacao(id_animai, id_motivo, vdata,
  id_local_origem, id_local_destino,IDBASE: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO MOVIMENTACAO_ANIMAL(');
   Add('ID_USUARIO,');
   Add('ID_ANIMAL,');
   Add('ID_PASTO_ORIGEM,');
   Add('ID_PASTO_DESTINO,');
   Add('DATA,');
   Add('ID_MOTIVO,');
   Add('ID_BASE_CAMPO)');
   Add('VALUES(');
   Add(':ID_USUARIO,');
   Add(':ID_ANIMAL,');
   Add(':ID_PASTO_ORIGEM,');
   Add(':ID_PASTO_DESTINO,');
   Add(':DATA,');
   Add(':ID_MOTIVO,');
   Add(':ID_BASE_CAMPO)');
   ParamByName('ID_USUARIO').AsString       := vIdUserLogado;
   ParamByName('ID_ANIMAL').AsString        := id_animai;
   ParamByName('ID_PASTO_ORIGEM').AsString  := id_local_origem;
   ParamByName('ID_PASTO_DESTINO').AsString := id_local_destino;
   ParamByName('DATA').AsString             := vdata;
   ParamByName('ID_MOTIVO').AsString        := id_motivo;
   ParamByName('ID_BASE_CAMPO').AsString    := IDBASE;
   try
    ExecSQL;
   except
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereMovimentacaoBC(identificacao1,identificacao2,id_motivo,
vdata,id_local_origem,id_local_destino,IDBASE:string);
var
 vQryAux :TFDQuery;
 vIdAnimal:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select MAX(ID) MAX_ID from animal');
   Add('where status=1');
   if identificacao1.Length>0 then
    Add('and identificacao_1='+identificacao1.QuotedString);
   if identificacao2.Length>0 then
    Add('and identificacao_2='+identificacao2.QuotedString);
   Open;
   vIdAnimal := FieldByName('MAX_ID').AsString;
   if vIdAnimal.Length>0 then
   begin
     Clear;
     Add('INSERT INTO MOVIMENTACAO_ANIMAL(');
     Add('ID_USUARIO,');
     Add('ID_ANIMAL,');
     Add('ID_PASTO_ORIGEM,');
     Add('ID_PASTO_DESTINO,');
     Add('DATA,');
     Add('ID_MOTIVO,');
     Add('ID_BASE_CAMPO)');
     Add('VALUES(');
     Add(':ID_USUARIO,');
     Add(':ID_ANIMAL,');
     Add(':ID_PASTO_ORIGEM,');
     Add(':ID_PASTO_DESTINO,');
     Add(':DATA,');
     Add(':ID_MOTIVO,');
     Add(':ID_BASE_CAMPO)');
     ParamByName('ID_USUARIO').AsString       := vIdUserLogado;
     ParamByName('ID_ANIMAL').AsString        := vIdAnimal;
     ParamByName('ID_PASTO_ORIGEM').AsString  := id_local_origem;
     ParamByName('ID_PASTO_DESTINO').AsString := id_local_destino;
     ParamByName('DATA').AsString             := vdata;
     ParamByName('ID_MOTIVO').AsString        := id_motivo;
     ParamByName('ID_BASE_CAMPO').AsString    := IDBASE;
     try
      ExecSQL;
     except
     on E : Exception do
      begin
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
     end;
   end
   else
    frmPrincipal.mlogSync.Lines.Add('Animal nao encontrado Chip:'+identificacao1+
    ' SISBOV/NFC:'+identificacao2)
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AbrirSaidaAnimalGrid(vAdata,vDataFim: TDate;vPasto,vDestino,vTipo:string);
begin
 with qryGridSaidaAnimais,qryGridSaidaAnimais.SQL do
 begin
  Clear;
  Add('SELECT X.*,');
  Add('CASE');
  Add('WHEN X.GTP >0 AND X.DIAS>0 THEN X.GTP/X.DIAS');
  Add('ELSE');
  Add(' 0');
  Add(' END GMD');
  Add('FROM');
  Add(' (');
  Add('SELECT');
  Add('  ID_LOTESAIDA,');
  Add('  D.NOME NOME_DESTINO,');
  Add('  D.ID ID_DESTINO,');
  Add('  COUNT(A.ID) AS QTD,');
  Add('  AVG(PESO_SAIDA) AS PESO_SAIDA,');
  Add('  AVG(VALOR_VENDA) AS VALOR_VENDA,');
  Add('  AVG(PESO_SAIDA)-AVG(PESO_ENTRADA) GTP,');
  Add('MIN(CAST(A.DATA_SAIDA AS DATE))-MIN(CAST(A.DATA_PROC AS DATE))+1 DIAS,');
  Add('MIN(A.DATA_SAIDA) DATA_SAIDA,');
  Add('CASE');
  Add('WHEN A.STATUS=2 THEN ''VENDA''');
  Add('WHEN A.STATUS=3 THEN ''MORTE''');
  Add('END TIPOSAIDA');
  Add('FROM ANIMAL A');
  Add('JOIN CURRAIS X ON X.ID=A.ID_LOCAL');
  Add('JOIN USERS U ON U.ID=A.ID_USUARIO');
  Add('LEFT JOIN produtores D ON D.ID=A.ID_PRODUTOR_DESTINO_SAIDA');
  Add('WHERE CAST(DATA_SAIDA AS DATE) BETWEEN '+FormatDateTime('yyyy-mm-dd',vDataFim).QuotedString);
  Add(' and '+FormatDateTime('yyyy-mm-dd',vAdata).QuotedString);
  if vDestino<>'Todos' then
   Add('and U.NAME='+vDestino.QuotedString);
   if vTipo='VENDA' then
   Add('AND A.STATUS=2');
  if vTipo='MORTE' then
   Add('AND A.STATUS=3');
  if vTipo='TODAS' then
   Add('AND A.STATUS IN(2,3)');
  Add('GROUP BY  A.ID_LOTESAIDA,A.STATUS,D.ID,D.NOME) X');
   Open;
 end;
end;

procedure TserviceDB.LogAlteraEntradaAnimais(DATA_ENTRADA,PASTO_DESTINO,ID_PASTO_DESTINO,QTD_ANIMAIS,TIPO_ALTERACAO,ID_USUARIO: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO LOG_ALTERACAO_ENTRADA (');
	 Add('DATA_ENTRADA,PASTO_DESTINO,ID_PASTO_DESTINO,QTD_ANIMAIS,TIPO_ALTERACAO,ID_USUARIO)');
   Add('values(');
   Add(DATA_ENTRADA+',');
   Add(PASTO_DESTINO+',');
   Add(ID_PASTO_DESTINO+',');
   Add(QTD_ANIMAIS+',');
   Add(TIPO_ALTERACAO.QuotedString+',');
   Add(ID_USUARIO+')');
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.LogAlteraSaidaAnimais(DATA_ENTRADA, PASTO_DESTINO,
  ID_PASTO_DESTINO, QTD_ANIMAIS, TIPO_ALTERACAO, ID_USUARIO,PASTO_ORIGEM,ID_PASTO_ORIGEM: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO LOG_ALTERACAO_SAIDA (');
	 Add('DATA_SAIDA,DESTINO,ID_DESTINO,QTD_ANIMAIS,TIPO_ALTERACAO,ID_USUARIO,PASTO_ORIGEM,ID_PASTO_ORIGEM)');
   Add('values(');
   Add(DATA_ENTRADA+',');
   Add(PASTO_DESTINO+',');
   Add(ID_PASTO_DESTINO+',');
   Add(QTD_ANIMAIS+',');
   Add(TIPO_ALTERACAO.QuotedString+',');
   Add(ID_USUARIO+',');
   Add(PASTO_ORIGEM+',');
   Add(ID_PASTO_ORIGEM+')');
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.MorteAnimal(idAnimal, IdCausaMorte, DataMorte,
  TipoMorte: string);
var
 vQryAux :TFDQuery;
 vCustoTotalMorte:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add(' SELECT * FROM RETORNA_CUSTO_TOTAL_ANIMAL('+idAnimal+')');
   Open;
   vCustoTotalMorte:= FieldbyName('CUSTO_TOTAL').AsString;
   vCustoTotalMorte:= StringReplace(vCustoTotalMorte,',','.',[rfReplaceAll]);
 end;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET TIPO_SAIDA=''MORTE''');
   Add(',ID_MOTIVO_MORTE='+IdCausaMorte);
   Add(',STATUS=3');
   Add(',DATA_SAIDA='+FormatDateTime('mm/dd/yyyy',strToDate(DataMorte)).QuotedString);
   Add(',TIPO_MORTE='+TipoMorte);
   Add(',ULTIMA_ALTERACAO='+FormatDateTime('mm/dd/yyyy',date).QuotedString);
   Add(',ULTIMO_USUARIO='+vIdUserLogado);
   Add(',VALOR_VENDA='+vCustoTotalMorte);
   Add('WHERE ID='+idAnimal);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.MorteAnimalComunicado(idComunicado, idAnimal, IdCausaMorte,
  DataMorte, TipoMorte: string);
var
 vQryAux :TFDQuery;
 vCustoTotalMorte:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add(' SELECT * FROM RETORNA_CUSTO_TOTAL_ANIMAL('+idAnimal+')');
   Open;
   vCustoTotalMorte:= FieldbyName('CUSTO_TOTAL').AsString;
   vCustoTotalMorte:= StringReplace(vCustoTotalMorte,',','.',[rfReplaceAll]);

   Clear;
   Add('UPDATE ANIMAL SET TIPO_SAIDA=''MORTE''');
   Add(',ID_MOTIVO_MORTE='+IdCausaMorte);
   Add(',STATUS=3');
   Add(',ID_COMUNICADO_MORTE='+idComunicado);
   Add(',DATA_SAIDA='+FormatDateTime('mm/dd/yyyy',strToDate(DataMorte)).QuotedString);
   Add(',TIPO_MORTE='+TipoMorte);
   Add(',VALOR_VENDA='+vCustoTotalMorte);
   Add('WHERE ID='+idAnimal);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.MovimentaAnimal(IdLocalOrigem,IdLocalDestino,DataMov,QtdAnimais,
 IdMotivo,IdUsuario: string):integer;
var
 vResult:integer;
 vQryAux,vQryAux1 :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;

 vQryAux1 := TFDQuery.Create(nil);
 vQryAux1.Connection := fCon;
  with vQryAux1,vQryAux1.sql do
  begin
   Clear;
   Add('select FIRST '+QtdAnimais+'  ID from ANIMAL');
   Add('WHERE STATUS=1 AND ID_LOCAL='+IdLocalOrigem);
   Open;
   while not vQryAux1.eof do
   begin
     with vQryAux,vQryAux.SQL do
     begin
       Clear;
       Add('UPDATE ANIMAL A SET');
       Add('A.ID_LOCAL='+IdLocalDestino+',');
       Add('A.ULTIMA_ALTERACAO=CURRENT_TIMESTAMP'+',');
       Add('A.ULTIMO_USUARIO='+IdUsuario);
       Add('WHERE ID ='+vQryAux1.FieldByName('id').AsString);
       try
        ExecSQL;
        InsereLogAnimal(vQryAux1.FieldByName('id').AsString,vIdUserLogado);
        vResult :=1;
       EXCEPT
       on E : Exception do
        begin
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
          vResult :=0;
        end;
       end;

       Clear;
       Add('INSERT INTO MOVIMENTACAO_ANIMAL(');
       Add('ID_USUARIO,');
       Add('ID_ANIMAL,');
       Add('ID_PASTO_ORIGEM,');
       Add('ID_PASTO_DESTINO,');
       Add('DATA,');
       Add('ID_MOTIVO)');
       Add('VALUES(');
       Add(IdUsuario+',');
       Add(vQryAux1.FieldByName('id').AsString+',');
       Add(IdLocalOrigem+',');
       Add(IdLocalDestino+',');
       Add(DataMov+',');
       Add(IdMotivo+')');
       try
        ExecSQL;
        vResult :=1;
       EXCEPT
       on E : Exception do
        begin
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
          vResult :=0;
        end;
       end;
     end;
     vQryAux1.Next;
   end;
    Result := vResult;
  end;
  vQryAux.Free;
end;


function TserviceDB.MovimentaAnimalCONTRATO(idAnimal, idCONTRATOOrigem,
  IdCONTRATODestino, DataMov: string): integer;
var
  vQryAux : TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL A SET');
   Add('A.ID_CONTRATO='+IdCONTRATODestino+',');
   Add('A.ULTIMA_ALTERACAO=CURRENT_TIMESTAMP'+',');
   Add('A.ULTIMO_USUARIO='+vIdUserLogado);
   Add('WHERE ID ='+idAnimal);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
   Clear;
   Add('INSERT INTO HIST_MOV_CONTRATO(');
   Add('ID_USUARIO,');
   Add('ID_ANIMAL,');
   Add('ID_CONTRATO_ORIGEM,');
   Add('ID_CONTRATO_DESTINO,');
   Add('DATA)');
   Add('VALUES(');
   Add(vIdUserLogado+',');
   Add(idAnimal+',');
   Add(idCONTRATOOrigem+',');
   Add(IdCONTRATODestino+',');
   Add(DataMov+')');
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.MovimentaAnimalProdutor(idAnimal, idProdrigem,
  IdProdDestino, DataMov: string): integer;
var
  vQryAux : TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL A SET');
   Add('A.ID_PRODUTOR='+IdProdDestino+',');
   Add('A.ULTIMA_ALTERACAO=CURRENT_TIMESTAMP'+',');
   Add('A.ULTIMO_USUARIO='+vIdUserLogado);
   Add('WHERE ID ='+idAnimal);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
   Clear;
   Add('INSERT INTO HIST_MOV_PRODUTOR(');
   Add('ID_USUARIO,');
   Add('ID_ANIMAL,');
   Add('ID_PRODUTOR_ORIGEM,');
   Add('ID_PRODUTOR_DESTINO,');
   Add('DATA)');
   Add('VALUES(');
   Add(vIdUserLogado+',');
   Add(idAnimal+',');
   Add(idProdrigem+',');
   Add(IdProdDestino+',');
   Add(DataMov+')');
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.MovimentaAnimalGTA(IdAnimal, IdGTADestino,Tipo: string);
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL A SET ');
   if tipo='E' then
    Add('GTA_ID=:GTA_ID')
   else
    Add('ID_GTA_SAIDA=:GTA_ID');
   Add('WHERE ID=:ID');
   ParamByName('GTA_ID').AsString :=IdGTADestino;
   ParamByName('ID').AsString :=IdAnimal;
   ExecSQL;
 end;
  vQryAux.Free;
end;

function TserviceDB.MovimentaAnimalInd(idAnimal,IdLocalOrigem, IdLocalDestino, DataMov,IdMotivo,
ID_LOTE,DESTINO: string): integer;
var
 vResult:integer;
 vQryAux,vQryAux1 :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL A SET');
   Add('A.ID_LOCAL='+IdLocalDestino+',');
   Add('A.ULTIMA_ALTERACAO=CURRENT_TIMESTAMP'+',');
   Add('A.ULTIMO_USUARIO='+vIdUserLogado+',');
   Add('A.DATA_REPROCESSAMENTO='+DataMov);
   if ID_LOTE.Length>0 then
    Add(',ID_LOTE='+ID_LOTE);
   if DESTINO.Length>0 then
    Add(' ,DESTINO='+DESTINO.QuotedString)
   else
    Add(' ,DESTINO=null');
   Add('WHERE ID ='+idAnimal);
   try
    ExecSQL;
    InsereLogAnimal(idAnimal,vIdUserLogado);
    vResult :=1;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      vResult :=0;
    end;
   end;
   Clear;
   Add('INSERT INTO MOVIMENTACAO_ANIMAL(');
   Add('ID_USUARIO,');
   Add('ID_ANIMAL,');
   Add('ID_PASTO_ORIGEM,');
   Add('ID_PASTO_DESTINO,');
   Add('DATA,');
   Add('ID_MOTIVO)');
   Add('VALUES(');
   Add(vIdUserLogado+',');
   Add(idAnimal+',');
   Add(IdLocalOrigem+',');
   Add(IdLocalDestino+',');
   Add(DataMov+',');
   Add(IdMotivo+')');
   try
    ExecSQL;
    vResult :=1;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      vResult :=0;
    end;
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.MovimentaAnimalIndEntradaConf(idAnimal, IdLocalOrigem,
  IdLocalDestino, DataMov, IdMotivo, ID_LOTE,TipoPeso,peso,destino: string): integer;
var
 vResult:integer;
 vQryAux,vQryAux1 :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL A SET');
   Add('A.ID_LOCAL='+IdLocalDestino+',');
   Add('A.ULTIMA_ALTERACAO=CURRENT_TIMESTAMP'+',');
   Add('A.ULTIMO_USUARIO='+vIdUserLogado+',');
   Add('A.DATA_REPROCESSAMENTO='+DataMov);
   Add(',A.DATA_ENTRADA_CONF='+DataMov);
   if TipoPeso='1' then
    Add(',A.PESO_ENTRADA_CONF='+StringReplace(peso,',','.',[rfReplaceAll]))
   else
    Add(',A.PESO_ENTRADA_CONF=coalesce(a.ultimo_peso,a.peso_entrada)');
   Add(',ID_LOTE='+ID_LOTE);
   if DESTINO.Length>0 then
    Add(' ,DESTINO='+DESTINO.QuotedString)
   else
    Add(' ,DESTINO=null');
   Add(',A.ULTIMO_PESO='+StringReplace(peso,',','.',[rfReplaceAll]));
   Add(',A.DATA_ULTIMO_PESO='+DataMov);
   Add('WHERE ID ='+idAnimal);
   try
    ExecSQL;
//    InsereLogAnimal(idAnimal,vIdUserLogado);
    vResult :=1;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      vResult :=0;
    end;
   end;
   Clear;
   Add('INSERT INTO MOVIMENTACAO_ANIMAL(');
   Add('ID_USUARIO,');
   Add('ID_ANIMAL,');
   Add('ID_PASTO_ORIGEM,');
   Add('ID_PASTO_DESTINO,');
   Add('DATA,');
   Add('ID_MOTIVO)');
   Add('VALUES(');
   Add(vIdUserLogado+',');
   Add(idAnimal+',');
   Add(IdLocalOrigem+',');
   Add(IdLocalDestino+',');
   Add(DataMov+',');
   Add(IdMotivo+')');
   try
    ExecSQL;
    vResult :=1;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      vResult :=0;
    end;
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.MovimentaAnimalIndEntradaConfRefugo(idAnimal, IdLocalOrigem,
  IdLocalDestino, DataMov, IdMotivo: string): integer;
var
 vResult:integer;
 vQryAux,vQryAux1 :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL A SET STATUS=4,');
   Add('A.ID_LOCAL='+IdLocalDestino+',');
   Add('A.ULTIMA_ALTERACAO=CURRENT_TIMESTAMP'+',');
   Add('A.ULTIMO_USUARIO='+vIdUserLogado+',');
   Add('A.DATA_REPROCESSAMENTO='+DataMov);
   Add(',A.DATA_SAIDA='+DataMov);
   Add('WHERE ID ='+idAnimal);
   try
    ExecSQL;
//    InsereLogAnimal(idAnimal,vIdUserLogado);
    vResult :=1;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      vResult :=0;
    end;
   end;
   Clear;
   Add('INSERT INTO MOVIMENTACAO_ANIMAL(');
   Add('ID_USUARIO,');
   Add('ID_ANIMAL,');
   Add('ID_PASTO_ORIGEM,');
   Add('ID_PASTO_DESTINO,');
   Add('DATA,');
   Add('ID_MOTIVO)');
   Add('VALUES(');
   Add(vIdUserLogado+',');
   Add(idAnimal+',');
   Add(IdLocalOrigem+',');
   Add(IdLocalDestino+',');
   Add(DataMov+',');
   Add(IdMotivo+')');
   try
    ExecSQL;
    vResult :=1;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      vResult :=0;
    end;
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.MovimentaAnimalRebanho(idAnimal,idRebanhoOrigem, IdRebanhoDestino,
  DataMov,vPeso: string): integer;
var
  vQryAux : TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL A SET');
   Add('ID_REBANHO='+IdRebanhoDestino+',');
   Add('ULTIMA_ALTERACAO=CURRENT_TIMESTAMP'+',');
   Add('A.ULTIMO_USUARIO='+vIdUserLogado);
   if vPeso<>'0' then
   begin
    Add(',A.ULTIMO_PESO ='+vPeso);
    Add(',A.DATA_ULTIMO_PESO ='+DataMov);
   end;
   Add('WHERE ID ='+idAnimal);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.MovimentaAnimalRebanhoReproc(idAnimal, idRebanhoOrigem,
  IdRebanhoDestino, DataMov,IDBASE: string): integer;
var
  vQryAux : TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO HIST_MOV_REBANHO(');
   Add('ID_USUARIO,');
   Add('ID_ANIMAL,');
   Add('ID_REBANHO_ORIGEM,');
   Add('ID_REBANHO_DESTINO,');
   Add('DATA,');
   Add('ID_BASE_CAMPO)');
   Add('VALUES(');
   Add(vIdUserLogado+',');
   Add(idAnimal+',');
   Add(idRebanhoOrigem+',');
   Add(IdRebanhoDestino+',');
   Add(DataMov.QuotedString+',');
   Add(IDBASE+')');
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.MudaStatusChipRetirada(vIdPedido, CaixaIni,
  CaixaFim: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ESTOQUE_CHIP SET USADO= 2');
   Add('WHERE ID_PEDIDO ='+vIdPedido);
   Add('AND CAIXA BETWEEN '+CaixaIni+' AND '+CaixaFim);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.MyShowMessage(msg: string; btnCancel: Boolean);
var
 dlg :TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TserviceDB.PlanejamentoNutricionalReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TserviceDB.PropriedadePropriaReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.AbreGTAEntradaGrupo(idPropriedade: string);
begin
 with TableGTA,TableGTA.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('*');
   Add('FROM GTA A');
   Add('JOIN produtores PO ON PO.id=A.id_produtor_origem');
   Add('JOIN produtores PD ON PD.id=A.id_produtor_destino');
   Add('JOIN propriedades PRO ON PRO.id=A.id_propriedade_origem');
   Add('JOIN propriedades PRD ON PRD.id=A.id_propriedade_destino');
   Add('LEFT JOIN COMPRADOR CP  ON CP.ID=A.ID_COMPRADOR');
   Add('WHERE A.STATUS=1 AND A.ID_PROPRIEDADE_DESTINO='+IdPropriedade);
   Add('AND A.TIPO=''E'' AND A.LOTADA=0 AND A.ID_BASE_CAMPO=0');
   Open;
 end;
end;

procedure TserviceDB.AbreGTASaidaGrupo(idPropriedade: string);
begin
 with TableGTA,TableGTA.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('*');
   Add('FROM GTA A');
   Add('JOIN produtores PO ON PO.id=A.id_produtor_origem');
   Add('JOIN produtores PD ON PD.id=A.id_produtor_destino');
   Add('JOIN propriedades PRO ON PRO.id=A.id_propriedade_origem');
   Add('JOIN propriedades PRD ON PRD.id=A.id_propriedade_destino');
   Add('LEFT JOIN COMPRADOR CP  ON CP.ID=A.ID_COMPRADOR');
   Add('WHERE A.STATUS=1 AND A.ID_PROPRIEDADE_ORIGEM='+IdPropriedade);
   Add('AND A.TIPO=''S'' AND A.LOTADA=0');
   Open;
 end;
end;


procedure TserviceDB.AbreGtaVeiculoSaida(idVeiculo: string);
begin
 if idVeiculo.Length>0 then
 begin
   with qryVeiculoGTASaida,qryVeiculoGTASaida.SQL do
   begin
     Clear;
     Add('SELECT');
     Add('g.id gtaId,');
     Add('g.numero||''-''||g.serie||''-''||g.uf numerogta,');
     Add('g.total_gta totalAnimais,');
     Add('g.data_emissao,');
     Add('g.data_validade,');
     Add('o.nome PropriedadeOrigem,');
     Add('po.nome ProdutorOrigem,');
     Add('d.nome PropriedadeDetino,');
     Add('pd.nome ProdutorDestino');
     Add('FROM GTA G');
     Add('JOIN propriedades O ON G.id_propriedade_origem=O.id');
     Add('JOIN propriedades D ON G.id_propriedade_destino=D.id');
     Add('JOIN produtores PO ON G.id_produtor_origem =PO.id');
     Add('JOIN produtores PD ON G.id_produtor_destino=PD.id');
     Add('LEFT JOIN COMPRADOR CP  ON CP.ID=G.ID_COMPRADOR');
     Add('WHERE G.STATUS=1');
     Add('AND ID_VEICULO_SAIDA='+idVeiculo);
     Add('ORDER BY G.ID DESC');
     try
      Open;
     except
      on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end;
 end;
end;

procedure TserviceDB.AbreHistMovimentacao(vFiltro: string);
begin
 with TableHistMov,TableHistMov.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('MA."DATA",');
   Add('A.IDENTIFICACAO_2 NCF_SISBOV,');
   Add('A.IDENTIFICACAO_1 CHIP,');
   Add('PO.CODIGO AS PASTO_ORIGEM,');
   Add('PD.CODIGO AS PASTO_DESTINO,');
   Add('COALESCE(AX.NOME,''APRTACAO'') MOTIVO');
   Add('FROM MOVIMENTACAO_ANIMAL MA');
   Add('LEFT JOIN AUX_MOTIVO_MOVIMENTACAO AX ON AX.ID=MA.ID_MOTIVO');
   Add('JOIN ANIMAL A ON A.ID=MA.ID_ANIMAL');
   Add('JOIN CURRAIS PO ON PO.ID=MA.ID_PASTO_ORIGEM');
   Add('JOIN CURRAIS PD ON PD.ID=MA.ID_PASTO_DESTINO');
   Add('WHERE A.STATUS>0 AND A.ID_PROPRIEDADE='+vIdPropriedade);
   Add(vFiltro);
   Open;
 end;

 with RelHistMov,RelHistMov.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('MA."DATA",');
   Add('PO.CODIGO AS PASTO_ORIGEM,');
   Add('PD.CODIGO AS PASTO_DESTINO,');
   Add('count(*) qtd');
   Add('FROM MOVIMENTACAO_ANIMAL MA');
   Add('LEFT JOIN AUX_MOTIVO_MOVIMENTACAO AX ON AX.ID=MA.ID');
   Add('JOIN ANIMAL A ON A.ID=MA.ID_ANIMAL');
   Add('JOIN CURRAIS PO ON PO.ID=MA.ID_PASTO_ORIGEM');
   Add('JOIN CURRAIS PD ON PD.ID=MA.ID_PASTO_DESTINO');
   Add('WHERE A.STATUS>0 AND A.ID_PROPRIEDADE='+vIdPropriedade);
   Add(vFiltro);
   Add('GROUP BY MA."DATA",PO.CODIGO,PD.CODIGO');
   Open;
 end;
end;

procedure TserviceDB.AbreLoteSaidaPorID(vID: STRING);
begin
 with qryGridLoteSaida,qryGridLoteSaida.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('LS.*,');
   Add('case ');
   Add('when ls.status=2 then ''Finalizado''');
   Add('else ''Aberto''');
   Add('END status_str,');
   Add('PRO.ID   IDPropriedadeOrigem,');
   Add('PRO.nome PropriedadeOrigem,');
   Add('PRD.ID   IDPropriedadeDestino,');
   Add('PRD.nome PropriedadeDestino,');
   Add('PPO.nome ProdutorOrigem,');
   Add('PPD.nome ProdutorDestino,');
   Add('(select count(*) from animal a where id_lotesaida=ls.id and status=2) TotalAnimais,');
   Add('(select sum(PESO_SAIDA) from animal a where id_lotesaida=ls.id and status=2) TotalPeso,');
   Add('coalesce((select avg(a.peso_saida) from animal a where id_lotesaida=ls.id and status=2),0) MediaPeso');
   Add('FROM lote_saida   LS');
   Add('JOIN propriedades PRO ON PRO.ID=LS.id_origem');
   Add('JOIN produtores   PPO ON PPO.id=LS.id_produtor_origem');
   Add('JOIN propriedades PRD ON PRD.id=ls.id_destino');
   Add('JOIN produtores   PPD ON PPD.iD=LS.id_produtor_destino');
   Add('WHERE LS.status in(1,2) and LS.id='+vId);
   qryGridLoteSaida.SQL.Text;
   Open;
 end;
end;


procedure TserviceDB.AbrePlanUsoMinralFazenda(idFazenda,vFiltro: string);
begin
 with TablePlanUsoMineral,TablePlanUsoMineral.SQL do
 begin
   Clear;
   Add('select');
   Add('a.*,');
   Add('c.codigo Pasto,');
   Add('b.nome Cocho,');
   Add('d.nome suplemento,');
   Add('d.consumo_esperado,');
   Add('r.nome Retiro');
   Add('from plan_uso_mineral a');
   Add('join cocho b on a.id_cocho=b.id');
   Add('join currais c on c.id=b.id_pasto');
   Add('left join retiro r on r.id=c.id_retiro');
   Add('left join suplemento_mineral d on d.id=a.id_mineral');
   Add('where a.status=1');
   Add('and c.id_propriedade='+idFazenda);
   if vFiltro.Length>0 then
    Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.AbreProdutorProprio;
begin
 with qryProdutorProprio,qryProdutorProprio.sql do
 begin
   Clear;
   Add('SELECT * FROM PRODUTORES WHERE STATUS>-1 AND ID_PROPRIEDADE='+vIdPropriedade);
   Open;
 end;
 qryProdutorProprio.First;
end;

function TserviceDB.AbreQryAnimaisExixtentes(Tipo,Numero,idPropriedade:string):Boolean;
begin
 with qryAnimalExistente,qryAnimalExistente.SQL do
 begin
   Clear;
   Add('select');
   Add('a.*,');
   Add('c.id,');
   Add('c.codigo curral_pasto,');
   Add('r.nome raca_nome,');
   Add('ca.nome categoria_nome,');
   Add('u.nome ususario,');
   Add('g.serie||g.uf||g.numero gta');
   Add('from animal a');
   Add('join currais c on c.id_propriedade=a.id_propriedade and  c.id=a.id_local');
   Add('join raca  r on a.id_raca=r.id');
   Add('join categorias ca on ca.id=a.id_categoria');
   Add('left join gta g on g.id_propriedade_destino=a.id_propriedade and a.gta_id=g.id');
   Add('join users u on a.id_usuario=u.id');
   Add('where a.status=1 AND a.id_propriedade='+IdPropriedade);
   if Tipo='1' then
    Add('AND IDENTIFICACAO_1='+Numero);
   if Tipo='2' then
    Add('AND IDENTIFICACAO_2='+Numero);
   Open;
   Result := qryAnimalExistente.IsEmpty;
 end;
end;


procedure TserviceDB.AbreQryAnimaisProc(IdPropriedade,Tipo: string);
begin
 fCon.Commit;
 with qryGriAniProc,qryGriAniProc.SQL do
 begin
    if Tipo='NOVO' then
    begin
     Clear;
     Add('select');
     Add('a.*,');
     Add('c.id,');
     Add('c.codigo curral_pasto,');
     Add('r.nome raca_nome,');
     Add('ca.nome categoria_nome,');
     Add('u.name ususario,');
     Add('g.numero gta');
     Add(',AXR.NOME REBANHO');
     Add(',CO.numero||''-''||PCO.nome Contrato');
     Add('from animal a');
     Add('join currais c on c.id_propriedade=a.id_propriedade and  c.id=a.id_local');
     Add('join raca  r on a.id_raca=r.id');
     Add('join categorias ca on ca.id=a.id_categoria');
     Add('left join gta g on g.id_propriedade_destino=a.id_propriedade and a.gta_id=g.id');
     Add('join users u on a.id_usuario=u.id');
     Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
     Add('LEFT JOIN contrato_compra_animal CO ON A.id_contrato=CO.id');
     Add('LEFT JOIN produtores PCO ON PCO.ID=CO.id_produtor_origem');
     Add('where a.status=1 AND a.id_propriedade='+IdPropriedade);
     Add('AND A.ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
     Add('and a.DATA_PROC=CURRENT_DATE ');
     Add('and A.ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
     Add('order by a.id desc');
     Open;
   end;
   if Tipo='EXITE' then
   begin
     Clear;
     Add('select');
     Add('a.*,');
     Add('c.id,');
     Add('c.codigo curral_pasto,');
     Add('r.nome raca_nome,');
     Add('ca.nome categoria_nome,');
     Add('u.name ususario,');
     Add('g.serie||g.uf||g.numero gta');
     Add(',AXR.NOME REBANHO');
     Add(',CO.numero||''-''||PCO.nome Contrato');
     Add('from animal a');
     Add('join currais c on c.id_propriedade=a.id_propriedade and  c.id=a.id_local');
     Add('join raca  r on a.id_raca=r.id');
     Add('join categorias ca on ca.id=a.id_categoria');
     Add('left join gta g on g.id_propriedade_destino=a.id_propriedade and a.gta_id=g.id');
     Add('join users u on a.id_usuario=u.id AND U.id_propriedade=A.id_propriedade');
     Add('join LOG_REPROCESAMENTO lr on lr.ID_ANIMAL=A.ID');
     Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
     Add('LEFT JOIN contrato_compra_animal CO ON A.id_contrato=CO.id');
     Add('LEFT JOIN produtores PCO ON PCO.ID=CO.id_produtor_origem');
     Add('where a.status=1 AND a.id_propriedade='+IdPropriedade);
     Add('and CAST(LR.DATA_REGISTRO AS DATE)=CURRENT_DATE');
     Add('AND A.ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
     Add('order by LR.id desc');
     Open;
   end;
 end;
end;

procedure TserviceDB.AbreQryAnimaisProcEmbarque(IdLoteSaida: string);
begin
 with qryGriAniProc,qryGriAniProc.SQL do
 begin
     Clear;
     Add('select');
     Add('a.*,');
     Add('c.id,');
     Add('c.codigo curral_pasto,');
     Add('r.nome raca_nome,');
     Add('ca.nome categoria_nome,');
     Add('u.nome ususario,');
     Add('g.serie||g.uf||g.numero gta');
     Add('from animal a');
     Add('join currais c on c.id_propriedade=a.id_propriedade and  c.id=a.id_local');
     Add('join raca  r on a.id_raca=r.id');
     Add('join categorias ca on ca.id=a.id_categoria');
     Add('left join gta g on g.id_propriedade_destino=a.id_propriedade and a.gta_id=g.id');
     Add('join users u on a.id_usuario=u.id');
     Add('where a.status=2');
     Add('and a.DATA_SAIDA=CURRENT_DATE ');
     Add('and a.ID_LOTESAIDA='+IdLoteSaida);
     Add('order by a.id desc');
     Open;
   end;
end;


procedure TserviceDB.AbreQryCurrais(IdPropriedade,Tipo: string);
begin
 with TableCurrais,TableCurrais.SQL do
 begin
   Clear;
   Add('SELECT C.*,R.Nome Retiro FROM CURRAIS C');
   Add('LEFT JOIN RETIRO R ON R.ID=C.ID_RETIRO');
   Add('WHERE c.STATUS=1 AND c.ID_PROPRIEDADE='+IdPropriedade);
   if (Tipo.Length>0) then
   begin
     if(Tipo<>'1') then
       Add('AND TIPO<>1')
     else
       Add('AND TIPO=1');
   end;

   if Tipo='1' then
    Add('order by SUBSTRING(CODIGO FROM 1 FOR (position(''-'',c.CODIGO)-1)),ORDERM_FORN');
   Open;
 end;
end;

procedure TserviceDB.AbreQryCurraisComAnimais(IdPropriedade: string);
begin
 with TableCurrais,TableCurrais.SQL do
 begin
   Clear;
   Add('SELECT C.*,R.Nome Retiro FROM CURRAIS C');
   Add('LEFT JOIN RETIRO R ON R.ID=C.ID_RETIRO');
   Add('WHERE c.STATUS=1 AND C.LOTACAO>0 AND c.ID_PROPRIEDADE='+IdPropriedade);
   Open;
 end;
 TableCurrais.First;
end;

procedure TserviceDB.AbreQryCurraisAparte(IdPropriedade: string);
var
 I : integer;
begin
 with qryCurraisApartacao,qryCurraisApartacao.SQL do
 begin
   Clear;
   Add('SELECT * FROM CURRAIS WHERE STATUS=1');
   Add('AND ID_PROPRIEDADE='+IdPropriedade);
   Open;
 end;

end;

procedure TserviceDB.AbreqryGriAniReProc;
var
 vData:string;
begin
 with qryGriAniReProc,qryGriAniReProc.SQL do
 begin
   Clear;
   Add('SELECT A.*,c.NOME CATEGORIA,r.NOME RACA,CU.CODIGO LOCAL,');
   Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO (COALESCE(a.DATA_SAIDA,CURRENT_DATE)))ERA_ATUAL,');
   Add('DATEDIFF(DAY FROM DATA_PROC TO COALESCE(a.DATA_SAIDA,CURRENT_DATE))+1 DIAS,');
   Add('(SELECT * FROM RETORNA_PESO_MEDIO_ATUAL_IND(COALESCE(a.DATA_SAIDA,CURRENT_DATE),A.ID))PESO_PROJ,');
   Add('(A.ULTIMO_PESO-A.PESO_ENTRADA) GTP,');
   Add('(A.ULTIMO_PESO-A.PESO_ENTRADA)/(DATEDIFF(DAY FROM DATA_PROC TO COALESCE(a.DATA_SAIDA,CURRENT_DATE))+1) GMD');
   Add(',AXR.NOME REBANHO');
   Add(',CO.numero||''-''||PCO.nome Contrato ,');
   Add('ap.id idPeso');
   Add('FROM ANIMAL A');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
   Add('LEFT JOIN contrato_compra_animal CO ON id_contrato=CO.id');
   Add('LEFT JOIN produtores PCO ON PCO.ID=CO.id_produtor_origem');
   Add('LEFT JOIN ANIMAL_PESO ap  ON AP.STATUS=1');
   Add('AND ap.ID_ANIMAL=a.ID AND AP.DATA=CAST(DATA_REPROCESSAMENTO AS DATE)');
   Add('WHERE A.STATUS<>-1');
   Add('AND A.ID_PROPRIEDADE='+vIdPropriedade);
   if frmPrincipal.vIdBaseCampo='0' then
    Add('AND   CAST(A.DATA_REPROCESSAMENTO AS DATE)=CURRENT_DATE')
   else
    Add('AND A.ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Add('ORDER BY A.DATA_REPROCESSAMENTO DESC');
   Open;
 end;
end;

procedure TserviceDB.AbreqryGriAniReProcLS(Ls:string);
var
 vData:string;
begin
 with qryGriAniReProcls,qryGriAniReProcls.SQL do
 begin
   Clear;
   Add('SELECT A.*,c.NOME CATEGORIA,r.NOME RACA,CU.CODIGO LOCAL,');
   Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO (COALESCE(a.DATA_SAIDA,CURRENT_DATE)))ERA_ATUAL,');
   Add('DATEDIFF(DAY FROM DATA_PROC TO COALESCE(a.DATA_SAIDA,CURRENT_DATE))+1 DIAS,');
   Add('(SELECT * FROM RETORNA_PESO_MEDIO_ATUAL_IND(COALESCE(a.DATA_SAIDA,CURRENT_DATE),A.ID))PESO_PROJ,');
   Add('(A.ULTIMO_PESO-A.PESO_ENTRADA) GTP,');
   Add('CAST((A.ULTIMO_PESO-A.PESO_ENTRADA) as DECIMAL(15,3))/(DATEDIFF(DAY FROM DATA_PROC TO COALESCE(a.DATA_SAIDA,CURRENT_DATE))+1) GMD');
   Add(',AXR.NOME REBANHO');
   Add(',CO.numero||''-''||PCO.nome Contrato');
   Add('FROM ANIMAL A');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
   Add('LEFT JOIN contrato_compra_animal CO ON id_contrato=CO.id');
   Add('LEFT JOIN produtores PCO ON PCO.ID=CO.id_produtor_origem');
   Add('WHERE A.STATUS<>-1 AND A.ID_LOTESAIDA='+Ls);
   Add('ORDER BY DATA_ULTIMA_ALTERACAO DESC');
   Open;
 end;
end;


procedure TserviceDB.AbreQryGTA(IdPropriedade: string);
begin
 with TableGTA,TableGTA.SQL do
 begin
   Clear;
   Add('SELECT * FROM GTA G');
   Add('JOIN propriedades O ON G.id_propriedade_origem=O.id');
   Add('JOIN propriedades D ON G.id_propriedade_destino=D.id');
   Add('JOIN produtores PO ON G.id_produtor_origem =PO.id');
   Add('JOIN produtores PD ON G.id_produtor_destino=PD.id');
   Add('LEFT JOIN COMPRADOR CP  ON CP.ID=G.ID_COMPRADOR');
   Add('WHERE G.STATUS=1 AND (D.ID='+IdPropriedade);
   Add('or O.ID='+IdPropriedade+')');
   Add('and ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Add('ORDER BY G.ID DESC');
   Open;
   TableGTA.Close;
   TableGTA.Open;
 end;
end;

procedure TserviceDB.AbreQryGTAProcID(IdGTA: string);
begin
with qryGtaProc,qryGtaProc.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('a.*,');
   Add('po.id p_origem_id,');
   Add('po.nome p_origem,');
   Add('pd.id p_destino_id,');
   Add('pd.nome p_destino,');
   Add('pro.id pro_id,');
   Add('prd.id prd_id,');
   Add('pro.nome pro_nome,');
   Add('prd.nome prd_nome');
   Add('FROM GTA A');
   Add('JOIN produtores PO ON PO.id=A.id_produtor_origem');
   Add('JOIN produtores PD ON PD.id=A.id_produtor_destino');
   Add('JOIN propriedades PRO ON PRO.id=A.id_propriedade_origem');
   Add('JOIN propriedades PRD ON PRD.id=A.id_propriedade_destino');
   Add('WHERE A.STATUS=1 AND A.ID='+Idgta);
   Open;
 end;
end;

procedure TserviceDB.AbreQryGTAReProc(Tipo, IdPropriedade: string);
begin
 with qryGtaProc,qryGtaProc.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('a.*,');
   Add('po.id p_origem_id,');
   Add('po.nome p_origem,');
   Add('pd.id p_destino_id,');
   Add('pd.nome p_destino,');
   Add('pro.id pro_id,');
   Add('prd.id prd_id,');
   Add('pro.nome pro_nome,');
   Add('prd.nome prd_nome');
   Add('FROM GTA A');
   Add('JOIN produtores PO ON PO.id=A.id_produtor_origem');
   Add('JOIN produtores PD ON PD.id=A.id_produtor_destino');
   Add('JOIN propriedades PRO ON PRO.id=A.id_propriedade_origem');
   Add('JOIN propriedades PRD ON PRD.id=A.id_propriedade_destino');
   Add('WHERE A.STATUS=10 AND A.ID_PROPRIEDADE_DESTINO='+IdPropriedade);
   Add('AND A.TIPO='+Tipo.QuotedString);
   Open;
 end;
end;


procedure TserviceDB.AbreQryGTAProc(Tipo, IdPropriedade: string);
begin
 with qryGtaProc,qryGtaProc.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('a.*,');
   Add('po.id p_origem_id,');
   Add('po.nome p_origem,');
   Add('pd.id p_destino_id,');
   Add('pd.nome p_destino,');
   Add('pro.id pro_id,');
   Add('prd.id prd_id,');
   Add('pro.nome pro_nome,');
   Add('prd.nome prd_nome');
   Add('FROM GTA A');
   Add('JOIN produtores PO ON PO.id=A.id_produtor_origem');
   Add('JOIN produtores PD ON PD.id=A.id_produtor_destino');
   Add('JOIN propriedades PRO ON PRO.id=A.id_propriedade_origem');
   Add('JOIN propriedades PRD ON PRD.id=A.id_propriedade_destino');
   Add('WHERE A.STATUS=1 AND A.ID_PROPRIEDADE_DESTINO='+IdPropriedade);
   Add('AND A.TIPO='+Tipo.QuotedString);
   Add('AND A.LOTADA=0');
   Add('AND A.ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   if frmPrincipal.vMov=5 then
    Add('AND A.RASTREADO=1')
   else
    Add('AND A.RASTREADO=0');
   qryGtaProc.SQL.Text;
   Open;
 end;
end;

procedure TserviceDB.AbreQryGTAProcEdit(IdGTA: string);
begin
 with qryGtaProc,qryGtaProc.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('a.*,');
   Add('po.id p_origem_id,');
   Add('po.nome p_origem,');
   Add('pd.id p_destino_id,');
   Add('pd.nome p_destino,');
   Add('pro.id pro_id,');
   Add('prd.id prd_id,');
   Add('pro.nome pro_nome,');
   Add('prd.nome prd_nome');
   Add('FROM GTA A');
   Add('JOIN produtores PO ON PO.id=A.id_produtor_origem');
   Add('JOIN produtores PD ON PD.id=A.id_produtor_destino');
   Add('JOIN propriedades PRO ON PRO.id=A.id_propriedade_origem');
   Add('JOIN propriedades PRD ON PRD.id=A.id_propriedade_destino');
   Add('WHERE A.STATUS=1 AND TIPO=''E'' AND ID_PROPRIEDADE_DESTINO='+vIdPropriedade+' AND A.ID='+idGTA);
   Add('OR  LOTADA=0');
   Open;
 end;
end;

procedure TserviceDB.AbreQryLoteSaida(IdProdutor,IdDestino,DateDe,DataAte:string);
begin
 with qryGridLoteSaida,qryGridLoteSaida.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('LS.*,');
   Add('case ');
   Add('when ls.status=2 then ''Finalizado''');
   Add('else ''Aberto''');
   Add('END status_str,');
   Add('PRO.ID   IDPropriedadeOrigem,');
   Add('PRO.nome PropriedadeOrigem,');
   Add('PRD.ID   IDPropriedadeDestino,');
   Add('PRD.nome PropriedadeDestino,');
   Add('PPO.nome ProdutorOrigem,');
   Add('PPD.nome ProdutorDestino,');
   Add('(select count(*) from animal a where id_lotesaida=ls.id and status=2) TotalAnimais,');
   Add('(select sum(PESO_SAIDA) from animal a where id_lotesaida=ls.id and status=2) TotalPeso,');
   Add('coalesce((select avg(a.peso_saida) from animal a where id_lotesaida=ls.id and status=2),0) MediaPeso');
   Add('FROM lote_saida   LS');
   Add('JOIN propriedades PRO ON PRO.ID=LS.id_origem');
   Add('JOIN produtores   PPO ON PPO.id=LS.id_produtor_origem');
   Add('JOIN propriedades PRD ON PRD.id=ls.id_destino');
   Add('JOIN produtores   PPD ON PPD.iD=LS.id_produtor_destino');
   Add('WHERE LS.status in(1,2) and LS.id_origem='+vIdPropriedade);
   if(frmPrincipal.vIdBaseCampo<>'0') then
    Add('AND LS.ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   if IdProdutor.Length>0 then
    Add('AND PPO.ID='+IdProdutor);
   if IdDestino.Length>0 then
    Add('and PRD.ID='+IdDestino);
   if (DateDe.Length>0) AND (DataAte.Length>0) then
   begin
     Add('AND LS.DATA_EMBARQUE between '+DateDe.QuotedString+' AND '+DataAte.QuotedString);
   end;
   qryGridLoteSaida.SQL.Text;
   Open;
 end;
end;

procedure TserviceDB.AbreQryLS(IdLote: string);
begin
 with qryLoteSaida,qryLoteSaida.SQL do
 begin
  Clear;
  Add('SELECT * FROM LOTE_SAIDA LS');
  Add('WHERE ID='+IdLote);
  Open;
 end;
end;

procedure TserviceDB.AbreQryPropriedades(Tipo: string);
begin
 with TablePropriedades,TablePropriedades.SQL do
 begin
   Clear;
   Add('SELECT P.*,');
   Add('CASE');
   Add(' WHEN PROPRIA=1 THEN ''PROPRIA''');
   Add(' WHEN PROPRIA=0 THEN ''PARCEIRA''');
   Add('END TIPO');
   Add('FROM PROPRIEDADES P ');
   Add('WHERE STATUS=1 AND PROPRIA='+TIPO);
   Open;
   TableProdutores.Open;
 end;
end;

procedure TserviceDB.AbreQryPropriedadesRastreadas(Tipo: string);
begin
   with TablePropriedades,TablePropriedades.SQL do
 begin
   Clear;
   Add('SELECT P.*,');
   Add('CASE');
   Add(' WHEN PROPRIA=1 THEN ''PROPRIA''');
   Add(' WHEN PROPRIA=0 THEN ''PARCEIRA''');
   Add('END TIPO');
   Add('FROM PROPRIEDADES P ');
   Add('WHERE STATUS=1 AND RASTREADA=1 AND PROPRIA='+TIPO);
   Open;
   TableProdutores.Open;
 end;
end;

procedure TserviceDB.AbreQryProtocoloFarmacoProc(idProtocolo: string);
begin
 with TableProtocoloFarmacoProc,TableProtocoloFarmacoProc.SQL do
 begin
   Clear;
   Add('select');
   Add('pf.*,');
   Add('f.nome FarmacoNome,');
   Add('f.tipo_apicacao,');
   Add('case');
   Add(' when f.tipo_apicacao=0 then ''FIXA''');
   Add(' when f.tipo_apicacao=1 then ''PESO''');
   Add('end  tipo_apicacao_str,');
   Add('ps.TIPO');
   Add('from protocolo_farmacos pf');
   Add('JOIN PROTOCOLO_SANITARIO ps ON pf.ID_PROTOCOLO=ps.ID');
   Add('join farmaco f on pf.id_farmaco=f.id');
   Add('where pf.status=1 and pf.id_protocolo=:id_protocolo');
   ParamByName('id_protocolo').AsString := idProtocolo;
   Open;
 end;
end;

procedure TserviceDB.AbreQryUsuario(IdPropriedade:string);
begin
  with TableUsers,TableUsers.SQL do
  begin
    Clear;
    Add('select a.*,b.nome cargo  from users a');
    Add('left join  aux_cargo b on a.id_cargo=b.id');
    Add('where a.status=1 and a.id<>9001 ');
    Add('and a.id_propriedade='+IdPropriedade);
    Open;
  end;
end;
procedure TserviceDB.AbreQryVeiculosEmbarque(Id: string);
begin
 with qryVeiculosEmbarque,qryVeiculosEmbarque.SQL do
 begin
   Clear;
   Add('SELECT A.*,');
   Add('case');
   Add('when LOTADO=0 then ''Aberto''');
   Add('when LOTADO=1 then ''Lotado''');
   Add('end statusLotacao');
   Add('FROM VEICULOS_EMBARQUE A');
   Add('WHERE ID='+Id);
   Open;
 end;
end;

procedure TserviceDB.AbreRetiradaChip(vFiltro: string);
begin
 with RertiradaChip,RertiradaChip.SQL do
 begin
   Clear;
   Add('SELECT A.*,pb.NUMERO_PEDIDO,u.NAME responavel, C.NOME DESTINADO,');
   Add('(');
   Add('SELECT COUNT(*) FROM ESTOQUE_CHIP ec');
   Add('WHERE ec.ID_PEDIDO=pb.id');
   Add('AND ec.CAIXA BETWEEN a.CAIXA_INI AND a.CAIXA_FIM AND ec.USADO=1');
   Add(') Usados,');
   Add('(');
   Add('SELECT COUNT(*) FROM ESTOQUE_CHIP ec');
   Add('WHERE ec.ID_PEDIDO=pb.id');
   Add('AND ec.CAIXA BETWEEN a.CAIXA_INI AND a.CAIXA_FIM AND ec.USADO=0');
   Add(') NaoUsados');
   Add('FROM RETIRADA_ESTOQUE_CHIP a');
   Add('JOIN PEDIDO_CHIP pb ON pb.id = a.id_pedido');
   Add('JOIN USERS u ON u.ID =a.ID_REPONSAVEL');
   Add('JOIN COMPRADOR C ON C.ID =a.ID_COMPRADOR');
   Add('WHERE A.STATUS >-1');
   Add(vFiltro);
   Open;
 end;

 with RertiradaResumo,RertiradaResumo.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' sum(QTDE_TOTAL) TotalRetirado,');
   Add(' sum(Usados) TotalUsado,');
   Add(' sum(NaoUsados) TotalNaoUsado FROM');
   Add('(SELECT A.*,pb.NUMERO_PEDIDO,u.NAME responavel, C.NOME DESTINADO,');
   Add('(');
   Add('SELECT COUNT(*) FROM ESTOQUE_CHIP ec');
   Add('WHERE ec.ID_PEDIDO=pb.id');
   Add('AND ec.CAIXA BETWEEN a.CAIXA_INI AND a.CAIXA_FIM AND ec.USADO=1');
   Add(') Usados,');
   Add('(');
   Add('SELECT COUNT(*) FROM ESTOQUE_CHIP ec');
   Add('WHERE ec.ID_PEDIDO=pb.id');
   Add('AND ec.CAIXA BETWEEN a.CAIXA_INI AND a.CAIXA_FIM AND ec.USADO=0');
   Add(') NaoUsados');
   Add('FROM RETIRADA_ESTOQUE_CHIP a');
   Add('JOIN PEDIDO_CHIP pb ON pb.id = a.id_pedido');
   Add('JOIN USERS u ON u.ID =a.ID_REPONSAVEL');
   Add('JOIN COMPRADOR C ON C.ID =a.ID_COMPRADOR');
   Add('WHERE A.STATUS >-1');
   Add(vFiltro);
   Add(')y ');
   Open;
 end;


end;

procedure TserviceDB.AbreSuplementoMineral;
begin
  with SuplementoMineral,SuplementoMineral.SQL do
  begin
    Clear;
    Add('select a.*,b.*,');
    Add('case ');
    Add(' when PADRAO=1 THEN ''SIM''');
    Add(' when PADRAO=0 THEN ''NAO''');
    Add('end PadraoStr');
    Add('from SUPLEMENTO_MINERAL a');
    Add('join FORNECEDOR_SUPLEMENTOS b on a.ID_FORNECEDOR=B.ID');
    Add('WHERE A.STATUS=1');
    Add('AND PRE_MISTURA='+intToStr(frmPrincipal.vCadConf));
    Open;
    serviceDB.SuplementoFormulacao.Open;
  end;
end;

procedure TserviceDB.AbreTMPAnimal(vFiltro: string);
begin
 with TTMP_ANIMAIS,TTMP_ANIMAIS.SQL do
 begin
   Clear;
   Add('SELECT a.*,');
   Add('CASE');
   Add(' WHEN status=1 THEN ''PENDENTE DE VALIDAÇÃO''');
   Add(' WHEN status=2 THEN ''IDENTIFICACAO ENCONTRADA''');
   Add(' WHEN status=4 THEN ''IDENTIFICACAO NOVA EM USO''');
   Add(' WHEN status=3 THEN ''OK''');
   Add('END status_str');
   Add('FROM TMP_ANIMAL a');
   Add('where 1=1');
   Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.AbreTTA(Filtro:string);
begin
 with TableTTA,TableTTA.SQL do
 begin
   Clear;
   Add('select');
   Add(' TT.*,');
   Add(' PR.nome  propriedades,');
   Add(' PRO.nome ProdutorDestino,');
   Add(' PRD.nome ProdutorOrigem,');
   Add('CASE');
   Add('WHEN TT.STATUS =-1  THEN ''EXCLUIDO''');
   Add('WHEN TT.STATUS = 1  THEN ''ABERTO''');
   Add('WHEN TT.STATUS = 2  THEN ''FECHADO''');
   Add('END STATUS_STR');
   Add('from tta TT');
   Add('JOIN PROPRIEDADES PR ON PR.id=TT.id_propriedade');
   Add('JOIN produtores PRO ON PRO.ID=TT.id_produtor_origem');
   Add('JOIN produtores PRD ON PRD.ID=TT.id_produtor_origem');
   Add('where tt.status>0 and tt.id_propriedade='+vIdPropriedade);
   if Filtro.Length>0 then
    Add(Filtro);
   Open;
 end;
 TableTTAAnimais.Close;
 TableTTAAnimais.Open();
end;

procedure TserviceDB.AbreUsuariosFazenda;
begin
 with TableUsuarioFaz,TableUsuarioFaz.SQL do
 begin
   Clear;
   Add('select * from users');
   Add('where status=1 and id_propriedade='+vIdPropriedade);
   Open;
 end;
end;

procedure TserviceDB.AbreQryVeiculos(IdLoteSaida: string);
begin
 with qryVeiculos,qryVeiculos.SQL do
 begin
   Clear;
   Add('SELECT A.*,');
   Add('case');
   Add('when LOTADO=0 then ''Aberto''');
   Add('when LOTADO=1 then ''Lotado''');
   Add('end statusLotacao');
   Add('FROM VEICULOS_EMBARQUE A');
   Add('WHERE A.STATUS=1 AND ID_LOTESAIDA='+IdLoteSaida);
   Add('ORDER BY ID');
   Open;
 end;
end;

procedure TserviceDB.AbrirApartacao(idPropriedade: String);
begin
 with qryApartacao,qryApartacao.SQL do
 begin
   Clear;
   Add('SELECT * FROM APARTACAO AP');
   Add('JOIN currais CU ON CU.id=AP.id_curral_pasto');
   Add('WHERE AP.STATUS=1');
   Add('AND AP.ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('ID_PROPRIEDADE').AsString := idPropriedade;
   Open;
 end;
end;

function TserviceDB.AbrirCustoFixoAno(Ano: string): Boolean;
begin
 with TableCustoFixo,TableCustoFixo.SQL do
 begin
   Clear;
   Add('SELECT * FROM CUSTO_OPERACIONAL_ANO');
   Add('WHERE STATUS=1 AND ANO=:ANO');
   Add('AND ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('ANO').AsString :=ANO;
   ParamByName('ID_PROPRIEDADE').AsString :=vIdPropriedade;
   Open;
   Result := TableCustoFixo.IsEmpty;
 end;
end;

procedure TserviceDB.AbrirMovAnimalGrid(vAdata,vDataFim: TDate;vPastoO,vPastoD,vMotivo:string);
begin
 with qryGridMov,qryGridMov.SQL do
 begin
   Clear;
   Add('SELECT C.CODIGO PASTO,CAST(A.DATA_REPROCESSAMENTO AS DATE) DATA_REPROCESSAMENTO,COUNT(*)QTD,AVG(A.ULTIMO_PESO)MEDIAPESO FROM ANIMAL A');
   Add('JOIN CURRAIS C ON C.ID=A.ID_LOCAL');
   Add('WHERE CAST(A.DATA_REPROCESSAMENTO AS DATE) BETWEEN '+FormatDateTime('yyyy-mm-dd',vDataFim).QuotedString);
   Add(' and '+FormatDateTime('yyyy-mm-dd',vAdata).QuotedString);
   if vPastoO<>'Todos' then
    Add('and C.CODIGO='+vPastoO.QuotedString);
   Add('GROUP BY  C.CODIGO,CAST(A.DATA_REPROCESSAMENTO AS DATE)');
   Open;
 end;
end;

procedure TserviceDB.AbrirEntradaAnimalGrid(vAdata,vDataFim: TDate;vPasto:string);
begin
 with qryGridEntradaAnimais,qryGridEntradaAnimais.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' CAST(DATA_PROC AS DATE) DATA_ENTRADA,');
   Add(' U.NAME USUARIO_RESPONSAVEL,');
   Add(' X.CODIGO PASTO,');
   Add(' X.ID ID_PASTO,');
   Add(' COUNT(A.ID) AS QTD,');
   Add(' AVG(PESO_ENTRADA) AS PESO_ENT,');
   Add(' AVG(VALOR_COMPRA) AS VALOR_COMPRA');
   Add('FROM ANIMAL A');
   Add('JOIN CURRAIS X ON X.ID=A.ID_LOCAL');
   Add('JOIN USERS U ON U.ID=A.ID_USUARIO');
   Add('WHERE A.STATUS<>-1 AND CAST(DATA_PROC AS DATE) BETWEEN '+FormatDateTime('yyyy-mm-dd',vDataFim).QuotedString);
   Add(' and '+FormatDateTime('yyyy-mm-dd',vAdata).QuotedString);
   if vPasto<>'Todos' then
    Add('and X.CODIGO='+vPasto.QuotedString);
   Add('and A.ID_PROPRIEDADE='+vIdPropriedade);
   Add('GROUP BY DATA_PROC,X.CODIGO,U.NAME,X.ID');
   Open;
 end;
end;

procedure TserviceDB.AbrirGridEstoque(vDataIni, vDataFim: TDate; vProduto,
  vNumNF,vIdPropriedade,vTipoAlimento: String);
begin
  with EntradaEstoqueMineral,EntradaEstoqueMineral.SQL do
  begin
    Clear;
    Add('SELECT B.*,');
    Add('COALESCE(A.NOME,AL.NOME)INSUMO,');
    Add('U.NAME USUARIO,');
    Add(' CASE');
    Add('  WHEN B.ID_FORNECEDOR =0 THEN');
    Add('  ''FABRICAÇÃO PROPRIA''');
    Add('  ELSE');
    Add('   F.RAZAO_SOCIAL');
    Add(' END RAZAO_SOCIAL');
    Add('FROM ESTOQUE_MINERAL_ENTRADA B');
    Add('LEFT JOIN SUPLEMENTO_MINERAL A ON A.ID=B.ID_MINERAL');
    Add('LEFT JOIN ALIMENTO AL ON AL.ID=B.ID_ALIMENTO');
    Add('LEFT JOIN USERS U ON U.ID=B.ID_USUARIO AND U.ID_PROPRIEDADE='+vIdPropriedade);
    Add('LEFT JOIN FORNECEDOR_SUPLEMENTOS F ON F.ID=B.ID_FORNECEDOR');
    Add('WHERE  B.STATUS=1 AND B.ID_PROPRIEDADE='+vIdPropriedade);
    Add('AND DATA_ENTRADA BETWEEN '+FormatDateTime('mm/dd/yyyy',vDataIni).QuotedString);
    Add(' and '+FormatDateTime('mm/dd/yyyy',vDataFim).QuotedString);
    if (vProduto.Length>0) and (vProduto<>'Todos') then
    begin
     if vTipoAlimento='1' then     
      Add('and A.NOME='+vProduto.QuotedString);
     if vTipoAlimento='0' then     
      Add('and AL.NOME='+vProduto.QuotedString); 
    end; 
    if vNumNF.Length>0 then
     Add('and B.NUMERO_NF='+vNumNF.QuotedString);
    EntradaEstoqueMineral.SQL.Text;
    Open;
  end;
end;

procedure TserviceDB.AbrirGridLoteSaida(idLs: string);
begin
 with qryGridLoteSaida,qryGridLoteSaida.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('LS.*,');
   Add('PRO.nome PropriedadeOrigem,');
   Add('PRD.nome PropriedadeDestino,');
   Add('PPO.nome ProdutorOrigem,');
   Add('PPD.nome ProdutorDestino,');
   Add('(select count(*) from animal a where id_lotesaida=ls.id and status=2) TotalAnimais,');
   Add('(select avg(a.peso_saida) from animal a where id_lotesaida=ls.id and status=2) MediaPeso');
   Add('FROM lote_saida   LS');
   Add('JOIN propriedades PRO ON PRO.ID=LS.id_origem');
   Add('JOIN produtores   PPO ON PPO.id=LS.id_produtor_origem');
   Add('JOIN propriedades PRD ON PRD.id=ls.id_destino');
   Add('JOIN produtores   PPD ON PPD.iD=LS.id_produtor_destino');
   Add('WHERE LS.Status<>-1 LS.id_origem='+vIdPropriedade);
   Open;
 end;
end;

procedure TserviceDB.AbrirPlanejamento(Afiltro: String);
begin
 with serviceDBN.PlanejamentoNutricional,serviceDBN.PlanejamentoNutricional.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('A.*,');
   Add('B.Nome Raca,');
   Add('C.Nome Categoria,');
   Add('SM.NOME SUPLEMENTO');
   Add('FROM PLAN_NUTRI A');
   Add('JOIN CATEGORIAS B ON A.ID_CATEGORIA=B.ID');
   Add('JOIN RACA C ON A.ID_RACA=C.ID');
   Add('JOIN SUPLEMENTO_MINERAL SM ON SM.ID=A.ID_MINERAL');
   Add('WHERE A.STATUS=1');
   if Afiltro.Length>0 then
    Add(Afiltro);
   Open;
 end;
end;

procedure TserviceDB.AbrirPrevGrid(vAdata,vDataFim: TDate;vPasto,Suplemento:string);
begin
 with TableGridPrevResumo,TableGridPrevResumo.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('PRV.DATA,');
   Add('PRV.DiaSemana,');
   Add('PRV.PASTO,');
   Add('QTD_CAB,');
   Add('PRV.CONSUMO_CAB,');
   Add('PRV.CONSUMO_CAB*QTD_CAB CONSUMO_TOTAL,');
   Add('PRV.PESO_ESTIMADO,');
   Add('sp.PESO_EMBALAGEM PesoSaco,');
   Add('(PRV.CONSUMO_CAB*QTD_CAB)/sp.PESO_EMBALAGEM TotalSaco');
   Add('FROM');
   Add('(SELECT PFD.*,(SELECT * FROM SP_DIA_SEMANA(PFD."DATA")) DiaSemana');
   Add('FROM PREVISAO_FORN_DIA PFD) PRV');
   Add('JOIN SUPLEMENTO_MINERAL SP ON SP.ID=PRV.ID_PRODUTO');
   Add('WHERE PRV.DATA BETWEEN '+FormatDateTime('mm/dd/yyyy',vAdata).QuotedString);
   Add(' and '+FormatDateTime('mm/dd/yyyy',vDataFim).QuotedString);
   if vPasto<>'Todos' then
    Add('and PRV.Pasto='+vPasto.QuotedString);
   if Suplemento<>'Todos' then
    Add('and SP.NOME='+Suplemento.QuotedString);
   Add('AND ID_PROPRIEDADE='+vIdPropriedade);
   Open;
 end;
end;

procedure TserviceDB.AbrirRetirosPropriedade;
begin
 with TableRetiro,TableRetiro.SQL do
 begin
   Clear;
   Add('SELECT * FROM RETIRO WHERE STATUS=1 AND ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('ID_PROPRIEDADE').AsString := vIdPropriedade;
   Open;
 end;
end;

procedure TserviceDB.AlteraSaidaAnimais(DtaEntrada, IdlS,
  vTipoAlteracao, ValorAlteracao: string);
var
 vQryAux,vQryAuxW :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAuxW := TFDQuery.Create(nil);
 vQryAuxW.Connection := fCon;

 with vQryAuxW,vQryAuxW.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET ');
   if vTipoAlteracao='1' then
    Add('VALOR_VENDA='+ValorAlteracao);
   if vTipoAlteracao='2' then
    Add('PESO_SAIDA='+ValorAlteracao);
   if vTipoAlteracao='3' then
    Add('DATA_SAIDA='+ValorAlteracao);
   Add('WHERE ID_LOTESAIDA='+IdlS);
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
   if vTipoAlteracao='2' then
   begin
     Clear;
     Add('UPDATE ANIMAL_PESO SET PESO='+ValorAlteracao);
     Add('WHERE TIPO=''SAIDA'' AND ID_ANIMAL='+vQryAuxW.FieldByName('id').AsString);
     Add('and LOTE_SAIDA='+IdlS);
     try
     ExecSQL;
     except
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end;

   if vTipoAlteracao='3' then
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('UPDATE LOTE_SAIDA SET DATA_EMBARQUE='+ValorAlteracao);
     Add('WHERE ID='+IdlS);
     try
     ExecSQL;
     except
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end;
 end;
 vQryAux.Free;
 vQryAuxw.Free;
end;

procedure TserviceDB.AlteraUsoMineral(idCocho, idMineral, dataAlteracao: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('update plan_uso_mineral set status=-1 where id_cocho='+idCocho);
  ExecSQL;

  Clear;
  Add('insert into plan_uso_mineral(id_cocho,id_mineral,data,id_usuario)values(');
  Add(idCocho+',');
  Add(idMineral+',');
  Add(dataAlteracao.QuotedString+',');
  Add(vIdUserLogado);
  Add(')');
  ExecSQL;

  Clear;
  Add('update cocho set ID_MINERAL='+idMineral);
  Add('where id='+idCocho);
  ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AnimaisUpdate;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('EXECUTE PROCEDURE  ATUALIZA_ANIMAL');
  ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AplicaProtocolo(idProtocolo, idAnimal, DataAplicacao,
  idLocal, TipoAplicacao, idResponsavelEsquerda, idResponsavelDireita,IDBASE: string);
var
 vQryAux,vQryAuxW :TFDQuery;
 vTipoDose,vTipoTratamento,vDiasCarencia:integer;
 vPesoAnimal,vDosePeso,vDoseFixa:Double;
 vIdFarmaco:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAuxW := TFDQuery.Create(nil);
 vQryAuxW.Connection := fCon;
 if idResponsavelEsquerda.Length=0 then
  idResponsavelEsquerda := vIdUserLogado;

 if idResponsavelDireita.Length=0 then
  idResponsavelDireita := vIdUserLogado;

 with vQryAuxW,vQryAuxW.SQL do
 begin
   Clear;
   Add('select pf.*,ps.tipo from protocolo_farmacos pf');
   Add('join protocolo_sanitario ps on pf.id_protocolo=ps.id');
   Add('where pf.status=1 and pf.id_protocolo='+idProtocolo);
   Open;
   while not vQryAuxW.eof do
   begin
     vTipoTratamento := FieldByName('TIPO').AsInteger;
     vIdFarmaco      := FieldByName('ID_FARMACO').AsString;
     vTipoDose       := FieldByName('TIPO_DOSAGEM').AsInteger;
     vDiasCarencia   := FieldByName('CARENCIA_DIAS').AsInteger;
     if vTipoDose=0 then
       vDoseFixa := vQryAuxW.FieldByName('DOSE_FIXA_ML').AsFloat
     else
     begin
       vPesoAnimal := RetornaPesoAtualAnimal(idAnimal);
       vDoseFixa   := (vPesoAnimal/vQryAuxW.FieldByName('DOSE_PESO_KG').AsFloat)*vQryAuxW.FieldByName('DOSE_PESO_ML').AsFloat;
     end;
     with vQryAux,vQryAux.SQL do
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
       ParamByName('ID_ANIMAL').AsString                     :=idAnimal;
       ParamByName('ID_FARMACO').AsString                    :=vIdFarmaco;
       ParamByName('ID_PROTOCOLO').AsString                  :=idProtocolo;
       ParamByName('DOSE_ML').AsFloat                        :=vDoseFixa;
       ParamByName('ID_PROPRIEDAE').AsString                 :=vIdPropriedade;
       ParamByName('ID_LOCAL_ATUAL').AsString                :=idLocal;
       ParamByName('DATA_APLICACAO').AsString                :=DataAplicacao;
       ParamByName('TIPO_APLICACAO').AsString                :=TipoAplicacao;
       ParamByName('ID_RESPONSAVEL_APLICACAO').AsString      :=idResponsavelEsquerda;
       ParamByName('ID_USUARIO').AsString                    :=vIdUserLogado;
       ParamByName('TIPO_TRATAMENTO').AsInteger              :=vTipoTratamento;
       ParamByName('CARENCIA_DIAS').AsInteger                :=vDiasCarencia;
       ParamByName('ID_RESPONSAVEL_APLI_DIREITO').AsString   :=idResponsavelDireita;
       ParamByName('ID_BASE_CAMPO').AsString                 :=IDBASE;
       try
        ExecSQL;
        vQryAuxW.Next;
       except
       on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
       end;
     end;
   end;
 end;
 vQryAux.Free;
 vQryAuxW.Free;
end;

procedure TserviceDB.AplicaProtocoloNew(idProtocolo, idAnimal, DataAplicacao,
  idLocal, TipoAplicacao, idResponsavelEsquerda, idResponsavelDireita,IDBASE,
  vTipoTratamento,vIdFarmaco,vTipoDose,vDiasCarencia,vDoseFixa: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;

 if idResponsavelEsquerda.Length=0 then
  idResponsavelEsquerda := vIdUserLogado;

 if idResponsavelDireita.Length=0 then
  idResponsavelDireita := vIdUserLogado;

 with vQryAux,vQryAux.SQL do
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
   ParamByName('ID_ANIMAL').AsString                     :=idAnimal;
   ParamByName('ID_FARMACO').AsString                    :=vIdFarmaco;
   ParamByName('ID_PROTOCOLO').AsString                  :=idProtocolo;
   ParamByName('DOSE_ML').AsString                       :=vDoseFixa;
   ParamByName('ID_PROPRIEDAE').AsString                 :=vIdPropriedade;
   ParamByName('ID_LOCAL_ATUAL').AsString                :=idLocal;
   ParamByName('DATA_APLICACAO').AsString                :=DataAplicacao;
   ParamByName('TIPO_APLICACAO').AsString                :=TipoAplicacao;
   ParamByName('ID_RESPONSAVEL_APLICACAO').AsString      :=idResponsavelEsquerda;
   ParamByName('ID_USUARIO').AsString                    :=vIdUserLogado;
   ParamByName('TIPO_TRATAMENTO').AsString               :=vTipoTratamento;
   ParamByName('CARENCIA_DIAS').AsString                 :=vDiasCarencia;
   ParamByName('ID_RESPONSAVEL_APLI_DIREITO').AsString   :=idResponsavelDireita;
   ParamByName('ID_BASE_CAMPO').AsString                 :=IDBASE;
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;


procedure TserviceDB.AplicaTratamentoExtra(idProduto, idAnimal, DataAplicacao,
  idLocal, TipoAplicacao, idResponsavelEsquerda, idResponsavelDireita,TipoDosagem,
  DoseFixaML,DosePesoML,DosePesoKG,CarenciaDias,IDBASE: string);
var
 vQryAux:TFDQuery;
 vTipoDose,vDiasCarencia:integer;
 vPesoAnimal,vDosePeso,vDoseFixa:Double;
 vIdFarmaco:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;

 if idResponsavelEsquerda.Length=0 then
  idResponsavelEsquerda := vIdUserLogado;

 if idResponsavelDireita.Length=0 then
  idResponsavelDireita := vIdUserLogado;

 if TipoDosagem='0' then
   vDoseFixa := strToFloat(DoseFixaML)
 else
 begin
   vPesoAnimal := RetornaPesoAtualAnimal(idAnimal);
   vDoseFixa   := (vPesoAnimal/strToFloat(DosePesoKG))*strToFloat(DosePesoML);
 end;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO ANIMAL_SANIDADE');
   Add('(ID_ANIMAL, ID_FARMACO,DOSE_ML, ID_PROPRIEDAE,');
   Add('ID_LOCAL_ATUAL, DATA_APLICACAO, TIPO_APLICACAO, ID_RESPONSAVEL_APLICACAO, ID_USUARIO,TIPO_TRATAMENTO,CARENCIA_DIAS');
   Add(',ID_RESPONSAVEL_APLI_DIREITO,ID_BASE_CAMPO');
   Add(')values(');
   Add(':ID_ANIMAL, :ID_FARMACO,:DOSE_ML, :ID_PROPRIEDAE, :ID_LOCAL_ATUAL,');
   Add(':DATA_APLICACAO, :TIPO_APLICACAO, :ID_RESPONSAVEL_APLICACAO, :ID_USUARIO,:TIPO_TRATAMENTO,:CARENCIA_DIAS');
   Add(',:ID_RESPONSAVEL_APLI_DIREITO,:ID_BASE_CAMPO');
   Add(')');
   ParamByName('ID_ANIMAL').AsString                     :=idAnimal;
   ParamByName('ID_FARMACO').AsString                    :=idProduto;
   ParamByName('DOSE_ML').AsFloat                        :=vDoseFixa;
   ParamByName('ID_PROPRIEDAE').AsString                 :=vIdPropriedade;
   ParamByName('ID_LOCAL_ATUAL').AsString                :=idLocal;
   ParamByName('DATA_APLICACAO').AsString                :=DataAplicacao;
   ParamByName('TIPO_APLICACAO').AsString                :=TipoAplicacao;
   ParamByName('ID_RESPONSAVEL_APLICACAO').AsString      :=idResponsavelEsquerda;
   ParamByName('ID_USUARIO').AsString                    :=vIdUserLogado;
   ParamByName('TIPO_TRATAMENTO').AsInteger              :=2;
   ParamByName('CARENCIA_DIAS').AsString                 :=CarenciaDias;
   if idResponsavelDireita.Length>0 then
    ParamByName('ID_RESPONSAVEL_APLI_DIREITO').AsString  :=idResponsavelDireita;
   ParamByName('ID_BASE_CAMPO').AsString                 :=IDBASE;
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;


procedure TserviceDB.AlteraCategoriaAnimal(IdAnimal, IdUsuario,
  vIdCategoria: string);
var
 vQryAux :TFDQuery;
 vQtdPeso:integer;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL  SET ID_CATEGORIA ='+vIdCategoria);
   Add(',ID_ULTIMO_USUARIO_ALTERACAO ='+vIdUserLogado);
   Add(',DATA_ULTIMA_ALTERACAO =CURRENT_TIMESTAMP');
   Add('WHERE ID='+IdAnimal);
   try
     ExecSQL;
   except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AlteraEntradaAnimais(IdAnimal,IdUsuario,vTipoAlteracao,
 ValorAlteracao,vTipoCurral: string);
var
 vQryAux :TFDQuery;
 vQtdPeso:integer;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT COUNT(*) qtd FROM ANIMAL_PESO a');
   Add('JOIN PRODUTORES p ON a.ID_PRODUTOR =p.ID');
   Add('WHERE p.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND ID_ANIMAL='+IdAnimal);
   Open;
   vQtdPeso := FieldByName('qtd').AsInteger;

   if vTipoAlteracao='2' then
   begin
     Clear;
     Add('UPDATE ANIMAL_PESO SET  PESO='+ValorAlteracao);
     Add('WHERE TIPO=''ENTRADA'' AND ID_ANIMAL='+IdAnimal);
     ExecSQL;

     if vTipoCurral='1' then
     begin
      Clear;
      Add('UPDATE ANIMAL_PESO SET  PESO='+ValorAlteracao);
      Add('WHERE TIPO=''ENTRADA CONFINAMENTO'' AND ID_ANIMAL='+IdAnimal);
      ExecSQL;
     end;
   end;
   if vTipoAlteracao='3' then
   begin
    if vQtdPeso=1 then
    begin
     Clear;
     Add('UPDATE ANIMAL_PESO SET  DATA='+ValorAlteracao);
     Add('WHERE ID_ANIMAL='+IdAnimal);
     Add('AND ID_PRODUTOR='+frmPrincipal.qryGridID_PRODUTOR.AsString);
     ExecSQL;
    end;
   end;

   if vTipoAlteracao='5' then
   begin
    Clear;
    Add('UPDATE ANIMAL_PESO SET  DATA='+ValorAlteracao);
    Add('WHERE TIPO=''ENTRADA CONFINAMENTO'' AND ID_ANIMAL='+IdAnimal);
    ExecSQL;

    if vQtdPeso=1 then
    begin
     Clear;
     Add('UPDATE ANIMAL_PESO SET  DATA='+ValorAlteracao);
     Add('WHERE ID_ANIMAL='+IdAnimal);
     Add('AND ID_PRODUTOR='+frmPrincipal.qryGridID_PRODUTOR.AsString);
     ExecSQL;
    end;

   end;

   Clear;
   Add('UPDATE ANIMAL SET ');
   if vTipoAlteracao='1' then
    Add('VALOR_COMPRA='+ValorAlteracao);
   if vTipoAlteracao='2' then
   begin
    Add('PESO_ENTRADA='+ValorAlteracao);
    if vTipoCurral='1' then
     Add(',PESO_ENTRADA_CONF='+ValorAlteracao);
    if vQtdPeso=1 then
     Add(',ULTIMO_PESO='+ValorAlteracao);
   end;
   if vTipoAlteracao='3' then
    Add('DATA_PROC='+ValorAlteracao);
   if vTipoAlteracao='4' then
    Add('IDADE_MESES='+ValorAlteracao);
   if vTipoAlteracao='5' then
     Add('DATA_ENTRADA_CONF='+ValorAlteracao);

   Add('WHERE ID='+IdAnimal);
   try
    ExecSQL;
    InsereLogAnimal(IdAnimal,vIdUserLogado);
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AlteraPesoSaidaTelaProc(IdlS, idAnimal, Peso: string);
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := fCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL_PESO SET PESO='+Peso);
   Add('WHERE TIPO=''SAIDA'' AND ID_ANIMAL='+idAnimal);
   Add('and LOTE_SAIDA='+IdlS);
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;

   Clear;
   Add('UPDATE ANIMAL SET PESO_SAIDA='+Peso);
   Add(',ULTIMO_PESO='+Peso);
   Add('where ID='+idAnimal);
   Add('and id_lotesaida='+IdlS);
   try
    ExecSQL;
    InsereLogAnimal(idAnimal,vIdUserLogado);
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;

 end;

end;

procedure TserviceDB.AlteraRacaAnimal(IdAnimal, IdUsuario, vIdRaca: string);
var
 vQryAux :TFDQuery;
 vQtdPeso:integer;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL  SET ID_RACA ='+vIdRaca);
   Add(',ID_ULTIMO_USUARIO_ALTERACAO ='+vIdUserLogado);
   Add(',DATA_ULTIMA_ALTERACAO =CURRENT_TIMESTAMP');
   Add('WHERE ID='+IdAnimal);
   try
     ExecSQL;
   except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;

end;

procedure TserviceDB.AtualizaAnimaisFazenda;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := fCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('execute procedure ATUALIZA_GMD_ANIMAL_FAZ('+serviceDB.vIdPropriedade+')');
   ExecSQL;
 end;
 vQry.Free
end;

procedure TserviceDB.AtualizaAnimal(vId,vPropriedaedDest, vProdutorDest, vPesoEnt,
  vCurralPastoDest, vDataMov,vRebanho: string);
var
 vQryAux :TFDQuery;
 vMes:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('UPDATE ANIMAL SET ID_PROPRIEDADE='+vPropriedaedDest);
  Add(',ID_PRODUTOR ='+vProdutorDest);
  Add(',ID_LOCAL ='+vCurralPastoDest);
  Add(',PESO_ENTRADA='+vPesoEnt);
  Add(',DATA_REPROCESSAMENTO='+FormatDateTime('mm/dd/yyyy',strToDate(vDataMov)).QuotedString);
  Add(',ID_REBANHO ='+vRebanho);
  Add('WHERE ID='+vId);
  try
   vQryAux.ExecSQL;
  except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
 end;
 vQryAux.free;
end;

procedure TserviceDB.AtualizaCustoFixo(Ano, Mes, Valor: string);
var
 vQryAux :TFDQuery;
 vMes:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   if StrToInt(mes)=1 then vMes:= 'JANEIRO';
   if StrToInt(mes)=2 then vMes:= 'FEVEREIRO';
   if StrToInt(mes)=3 then vMes:= 'MARCO';
   if StrToInt(mes)=4 then vMes:= 'ABRIL';
   if StrToInt(mes)=5 then vMes:= 'MAIO';
   if StrToInt(mes)=6 then vMes:= 'JUNHO';
   if StrToInt(mes)=7 then vMes:= 'JULHO';
   if StrToInt(mes)=8 then vMes:= 'AGOSTO';
   if StrToInt(mes)=9 then vMes:= 'SETEMBRO';
   if StrToInt(mes)=10 then vMes:= 'OUTUBRO';
   if StrToInt(mes)=11 then vMes:= 'NOVEMBRO';
   if StrToInt(mes)=12 then vMes:= 'DEZEMBRO';

   Clear;
   Add('UPDATE CUSTO_OPERACIONAL_ANO SET ');
   Add( vMes+'=:Valor');
   Add(',USER_ULTIMA_ALTERACAO=:USER_ULTIMA_ALTERACAO');
   Add(',ULTIMA_ALTERACAO=CURRENT_TIMESTAMP');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE=:ID_PROPRIEDADE');
   Add('AND ANO=:ANO');
   ParamByName('ID_PROPRIEDADE').AsString        := vIdPropriedade;
   ParamByName('ANO').AsString                   := Ano;
   ParamByName('Valor').AsString                 := StringReplace(Valor,',','.',[rfReplaceAll]);
   ParamByName('USER_ULTIMA_ALTERACAO').AsString := vIdUserLogado;
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
end;

procedure TserviceDB.AtualizaDB(vVersao: string);
begin
  with qryAux,qryAux.sql do
  begin
     Clear;
     Add('update or insert into AUX_MOTIVO_MOVIMENTACAO (ID, NOME, ID_USUARIO)');
     Add('values (100001,''REFUGO COCHO'',1)');
     Add('matching (ID, NOME)');
     ExecSQL;
  end;

  with qryAux,qryAux.sql do
  begin
     Clear;
     Add('update or insert into AUX_MOTIVO_MOVIMENTACAO (ID, NOME, ID_USUARIO)');
     Add('values (100002,''SAÍDA PASTO'',1)');
     Add('matching (ID, NOME)');
     ExecSQL;
  end;

  if VerificaTabelaExiste('VAGAO')=0 then
  begin
   with qryAux,qryAux.sql do
   begin
    Clear;
    Add('CREATE TABLE VAGAO (');
    Add('ID INTEGER NOT NULL,');
    Add('	NOME VARCHAR(100) NOT NULL,');
    Add('	CAPACIDADE DECIMAL(15,3),');
    Add('	ID_INTEGRACAO INTEGER,');
    Add('	DATAREG TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,');
    Add('	ID_USUARIO INTEGER NOT NULL,');
    Add('	STATUS INTEGER DEFAULT 1 NOT NULL,');
    Add('	CONSTRAINT PK_VAGAO PRIMARY KEY (ID));');
    ExecSQL;

    Clear;
    Add('CREATE SEQUENCE GEN_VAGAO_ID');
    ExecSQL;

    Clear;
    Add('CREATE TRIGGER VAGAO_BI FOR VAGAO BEFORE INSERT');
    Add('as');
    Add('begin');
    Add(' if (new.id is null) then');
    Add('  new.id = gen_id(GEN_VAGAO_ID,1);');
    Add('END');
    ExecSQL;
   end;
  end;

  if VerificaTabelaExiste('LOG_ALTERA_PLANEJAMENTO')=0 then
  begin
   with qryAux,qryAux.sql do
   begin
    Clear;
    Add('CREATE TABLE LOG_ALTERA_PLANEJAMENTO (');
    Add('id INTEGER NOT NULL,');
    Add('status integer DEFAULT 1 NOT NULL,');
    Add('dataregistro timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,');
    Add('id_usuario integer NOT NULL,');
    Add('idlote integer,');
    Add('idplanejamento integer,');
    Add('idplanejamento_new integer,');
    Add('tipolote integer,');
    Add('CONSTRAINT PK_LOG_ALTERA_PLANEJAMENTO PRIMARY KEY (ID)');
    Add(');');
    ExecSQL;

    Clear;
    Add('CREATE SEQUENCE GEN_LOG_ALTERA_PLANEJAMENTO_ID;');
    ExecSQL;

    Clear;
    Add('CREATE TRIGGER TR_LOG_ALTERA_PLANEJAMENTO_BI FOR LOG_ALTERA_PLANEJAMENTO BEFORE INSERT');
    Add('as');
    Add('begin');
    Add(' if (new.id is null) then');
    Add('  new.id = gen_id(GEN_LOG_ALTERA_PLANEJAMENTO_ID,1);');
    Add('END;');
    ExecSQL;

   end;
  end;


  if VerificaTabelaExiste('VAGAO_RACAO')=0 then
  begin
   with qryAux,qryAux.sql do
   begin
    Clear;
    Add('CREATE TABLE VAGAO_RACAO (');
	  Add('ID INTEGER NOT NULL,');
	  Add('ID_VAGAO INTEGER NOT NULL,');
	  Add('ID_RECEITA INTEGER NOT NULL,');
	  Add('BATIDA DECIMAL(15,3),');
	  Add('DATAREG TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,');
	  Add('ID_USUARIO INTEGER NOT NULL,');
	  Add('STATUS INTEGER DEFAULT 1 NOT NULL,');
	  Add('CONSTRAINT PK_VAGAO_RACAO PRIMARY KEY (ID));');
    ExecSQL;

    Clear;
    Add('CREATE SEQUENCE GEN_VAGAO_RACAO_ID');
    ExecSQL;

    Clear;
    Add('CREATE TRIGGER VAGAO_RACAO_BI FOR VAGAO_RACAO BEFORE INSERT');
    Add('as');
    Add('begin');
    Add(' if (new.id is null) then');
    Add('  new.id = gen_id(GEN_VAGAO_RACAO_ID,1);');
    Add('END');
    ExecSQL;
   end;
  end;

  if VerificaTabelaExiste('VAGAO_RACAO_ALIMENTOS')=0 then
  begin
   with qryAux,qryAux.sql do
   begin
    Clear;
    Add('CREATE TABLE VAGAO_RACAO_ALIMENTOS (');
    Add('	ID INTEGER NOT NULL,');
    Add('	ID_VAGAO INTEGER NOT NULL,');
    Add('	ID_RECEITA INTEGER NOT NULL,');
    Add('	ID_ALIMENTO INTEGER NOT NULL,');
    Add('	PREFIXO_ALIMENTO VARCHAR(6),');
    Add('	QTDE_MN DECIMAL(15,3),');
    Add('	DATAREG TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,');
    Add('	ID_USUARIO INTEGER NOT NULL,');
    Add('	STATUS INTEGER DEFAULT 1 NOT NULL,');
    Add('	CONSTRAINT PK_VAGAO_RACAO_ALIM PRIMARY KEY (ID));');
    ExecSQL;

    Clear;
    Add('CREATE SEQUENCE GEN_VAGAO_RACAO_ALIMENTOS_ID');
    ExecSQL;

    Clear;
    Add('CREATE TRIGGER VAGAO_RACAO_ALIMENTOS_BI FOR VAGAO_RACAO_ALIMENTOS BEFORE INSERT');
    Add('as');
    Add('begin');
    Add(' if (new.id is null) then');
    Add('  new.id = gen_id(GEN_VAGAO_RACAO_ALIMENTOS_ID,1);');
    Add('END');
    ExecSQL;
   end;
  end;

   if VerificaCampoExiste('LOTE_NUTRICIONAL','TIPOLOTE')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
       Clear;
       Add('ALTER TABLE LOTE_NUTRICIONAL ADD TIPOLOTE INTEGER DEFAULT 0');
       ExecSQL;

       Clear;
       Add('UPDATE LOTE_NUTRICIONAL SET TIPOLOTE=0');
       ExecSQL;
     end;
   end;

   if VerificaCampoExiste('CURRAIS','ID_INTEGRACAO')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('ALTER TABLE CURRAIS  ADD ID_INTEGRACAO INTEGER');
      ExecSQL;
      end;
   end;

   if VerificaCampoExiste('USERS','ID_INTEGRACAO')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('ALTER TABLE USERS  ADD ID_INTEGRACAO INTEGER');
      ExecSQL;
      end;
   end;

   if VerificaCampoExiste('VAGAO','CODIGO')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('ALTER TABLE VAGAO  ADD CODIGO INTEGER');
      ExecSQL;
      end;
   end;

   if VerificaCampoExiste('VAGAO','TEMPO_MISTURA')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('ALTER TABLE VAGAO  ADD TEMPO_MISTURA INTEGER');
      ExecSQL;
      end;
   end;

   if VerificaCampoExiste('VAGAO','VOLUME')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('ALTER TABLE VAGAO  ADD VOLUME INTEGER');
      ExecSQL;
      end;
   end;

   if VerificaCampoExiste('VAGAO','DISTRIBUIDOR')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('ALTER TABLE VAGAO  ADD DISTRIBUIDOR CHAR(1)');
      ExecSQL;
      end;
   end;

   if VerificaCampoExiste('VAGAO','MIX')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('ALTER TABLE VAGAO  ADD MIX CHAR(1)');
      ExecSQL;
      end;
   end;

   if VerificaTriggerExiste('TR_LOG_ALTERA_PLANEJAMENTO')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('CREATE TRIGGER TR_LOG_ALTERA_PLANEJAMENTO FOR LOTE_NUTRICIONAL AFTER INSERT');
      Add('AS');
      Add('begin');
      Add(' INSERT INTO LOG_ALTERA_PLANEJAMENTO (id_usuario,idlote,idplanejamento,idplanejamento_new,tipolote)');
      Add(' VALUES(NEW.ID_USUARIO,NEW.ID,NEW.ID_PLANEJAMETO,NEW.ID_PLANEJAMETO,NEW.TIPOLOTE);');
      Add('END');
      ExecSQL;
      end;
   end;

   if VerificaTriggerExiste('TR_LOG_ALTERA_PLANEJAMENTO_AU')=0 then
   begin
     with qryAux,qryAux.sql do
     begin
      Clear;
      Add('CREATE TRIGGER TR_LOG_ALTERA_PLANEJAMENTO_AU FOR LOTE_NUTRICIONAL AFTER UPDATE');
      Add('AS');
      Add('begin');
      Add(' IF (NEW.ID_PLANEJAMETO<>OLD.ID_PLANEJAMETO) THEN');
      Add(' BEGIN');
      Add('  INSERT INTO LOG_ALTERA_PLANEJAMENTO (id_usuario,idlote,idplanejamento,idplanejamento_new,tipolote)');
      Add('  VALUES(NEW.ID_USUARIO_ALTERACAO,OLD.ID,OLD.ID_PLANEJAMETO,NEW.ID_PLANEJAMETO,OLD.TIPOLOTE);');
      Add(' END');
      Add('END');
      ExecSQL;
      end;
   end;
end;

procedure TserviceDB.AtualizaEstoqueBrinco;
var
 vQryAux :TFDQuery;
 vQtdAnimais:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE estoque_brincos S SET usado=0');
   Add('WHERE S.sisbov NOT IN(SELECT IDENTIFICACAO_2 FROM animal WHERE IDENTIFICACAO_2 IS NOT NULL AND');
   Add('IDENTIFICACAO_2 <>'''')');
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaEstoqueBrincoChip;
var
 vQryAux :TFDQuery;
 vQtdAnimais:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ESTOQUE_CHIP S SET usado=0');
   Add('WHERE usado<>3  and S.CHIP NOT IN(SELECT IDENTIFICACAO_1 FROM animal WHERE STATUS>-1 AND IDENTIFICACAO_1 IS NOT NULL AND');
   Add('IDENTIFICACAO_1 <>'''')');
   ExecSQL;

   Clear;
   Add('UPDATE ESTOQUE_CHIP S SET usado=1');
   Add('WHERE S.CHIP IN(SELECT IDENTIFICACAO_1 FROM animal WHERE STATUS>-1 AND IDENTIFICACAO_1 IS NOT NULL AND');
   Add('IDENTIFICACAO_1 <>'''')');
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaEstoqueReproc;
var
 vQryAux :TFDQuery;
 vQtdAnimais:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ESTOQUE_BRINCOS SET USADO=1');
   Add('WHERE SISBOV IN(SELECT IDENTIFICACAO_2 FROM ANIMAL A');
   Add('WHERE STATUS=1 AND IDENTIFICACAO_2 IS NOT NULL)');
   Add('AND USADO=0');
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaGTAIdComunicado(idGTA, idComunicado: string);
var
 vQryAux :TFDQuery;
 vQtdAnimais:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE GTA  SET id_comunicado='+idComunicado);
   Add('WHERE id='+idGTA);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaGTAReProc(id_gta: string);
var
 vQryAux :TFDQuery;
 v0a12M,v0a12f,v13a24M,v13a24F,v25a36M,v25a36F,vMais36M,VMais36F:string;
 vTotalAnimalReproc,vTotalAniGTA:integer;
begin
 fCon.Commit;
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 v0a12M   :='0';
 v0a12f   :='0';
 v13a24M  :='0';
 v13a24F  :='0';
 v25a36M  :='0';
 v25a36F  :='0';
 vMais36M :='0';
 VMais36F :='0';
 with vQryAux,vQryAux.SQL do
 begin

   Clear;
   Add('select count(*) qtd from animal an where status<>-1');
   Add('and identificacao_2 is not null and an.gta_id='+id_gta);
   Open;
   vTotalAnimalReproc := FieldByName('qtd').AsInteger;

   Clear;
   Add('SELECT * FROM GTA');
   Add('WHERE id='+id_gta);
   Open;
   vTotalAniGTA   := FieldByName('TOTAL_GTA').AsInteger;

   if(vTotalAnimalReproc>=vTotalAniGTA) then
   begin
    Clear;
    Add('update gta g set g.total_brincados='+intToStr(vTotalAnimalReproc));
    Add(',status=1');
    Add('where g.id='+id_gta);
    try
      ExecSQL;
    except
    on E : Exception do
     ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end
   else
   begin
    Clear;
    Add('update gta g set g.total_brincados='+intToStr(vTotalAnimalReproc));
    Add('where g.id='+id_gta);
    try
      ExecSQL;
    except
    on E : Exception do
     ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
 end;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' c.SEXO,');
   Add(' a.IDADE_MESES,');
   Add(' COUNT(*) QTD');
   Add('FROM ANIMAL a');
   Add('JOIN CATEGORIAS c ON a.ID_CATEGORIA=c.ID');
   Add('WHERE a.STATUS<>-1 and identificacao_2 is not null AND a.GTA_ID='+id_gta);
   Add('GROUP BY c.SEXO,a.IDADE_MESES');
   Open;
   while not vQryAux.Eof do
   begin
     if (vQryAux.FieldByName('SEXO').AsString='M') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=12) then
       v0a12M   :=vQryAux.FieldByName('QTD').AsString;
     if (vQryAux.FieldByName('IDADE_MESES').AsString='F') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=12) then
       v0a12F   :=vQryAux.FieldByName('QTD').AsString;

     if (vQryAux.FieldByName('SEXO').AsString='M') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>12)
     AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=24)then
       v13a24M   :=vQryAux.FieldByName('QTD').AsString;

     if (vQryAux.FieldByName('SEXO').AsString='F') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>12)
     AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=24)then
       v13a24F   :=vQryAux.FieldByName('QTD').AsString;

     if (vQryAux.FieldByName('SEXO').AsString='M') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>24)
     AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=36)then
       v25a36M   :=vQryAux.FieldByName('QTD').AsString;

     if (vQryAux.FieldByName('SEXO').AsString='F') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>24)
     AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=36)then
       v25a36F   :=vQryAux.FieldByName('QTD').AsString;

     if (vQryAux.FieldByName('SEXO').AsString='M') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>36) then
       vMais36M   :=vQryAux.FieldByName('QTD').AsString;

     if (vQryAux.FieldByName('SEXO').AsString='F') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>36) then
       vMais36F   :=vQryAux.FieldByName('QTD').AsString;
     vQryAux.Next;
   end;
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('update gta g set ');
     Add('g.ZERO_A_12_FEMEA_PROC='+v0a12F);
     Add(',g.ZERO_A_12_MACHO_PROC='+v0a12M);
     Add(',g.TREZE_A_24_FEMEA_PROC='+v13a24F);
     Add(',g.TREZE_A_24_MACHO_PROC='+v13a24M);
     Add(',g.VITE_CINCO_A_36_FEMEA_PROC='+v25a36F);
     Add(',g.VITE_CINCO_A_36_MACHO_PROC='+v25a36M);
     Add(',g.MAIS_36_FEMEA_PROC='+vMais36F);
     Add(',g.MAIS_36_MACHO_PROC='+vMais36M);
     Add('where g.id='+id_gta);
     try
      ExecSQL;
      fCon.Commit;
     except
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end;
 end;
 vQryAux.Free;
end;


procedure TserviceDB.AtualizaGTAProc(id_gta: string);
var
 vQryAux :TFDQuery;
 vAnimaisProc :string;
 v0a12M,v0a12f,v13a24M,v13a24F,v25a36M,v25a36F,vMais36M,VMais36F:integer;
begin
 fCon.Commit;
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 v0a12M   :=0;
 v0a12f   :=0;
 v13a24M  :=0;
 v13a24F  :=0;
 v25a36M  :=0;
 v25a36F  :=0;
 vMais36M :=0;
 VMais36F :=0;

 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select count(*) qtd from animal an where status<>-1 and an.gta_id='+id_gta);
   Open;
   vAnimaisProc := FieldByName('qtd').AsString;

   Clear;
   Add('update gta g set g.total_brincados='+vAnimaisProc);
   Add('where g.id='+id_gta);
   try
      ExecSQL;
   except
   on E : Exception do
     ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' c.SEXO,');
   Add(' a.IDADE_MESES,');
   Add(' COUNT(*) QTD');
   Add('FROM ANIMAL a');
   Add('JOIN CATEGORIAS c ON a.ID_CATEGORIA=c.ID');
   Add('WHERE a.STATUS<>-1 AND a.GTA_ID='+id_gta);
   Add('GROUP BY c.SEXO,a.IDADE_MESES');
   Open;
   while not vQryAux.Eof do
   begin
     if (vQryAux.FieldByName('SEXO').AsString='M') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=12) then
       v0a12M   := v0a12M + vQryAux.FieldByName('QTD').AsInteger;
     if (vQryAux.FieldByName('IDADE_MESES').AsString='F') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=12) then
       v0a12F   := v0a12F + vQryAux.FieldByName('QTD').AsInteger;

     if (vQryAux.FieldByName('SEXO').AsString='M') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>12)
     AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=24)then
       v13a24M   := v13a24M + vQryAux.FieldByName('QTD').AsInteger;

     if (vQryAux.FieldByName('SEXO').AsString='F') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>12)
     AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=24)then
       v13a24F   :=v13a24F + vQryAux.FieldByName('QTD').AsInteger;

     if (vQryAux.FieldByName('SEXO').AsString='M') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>24)
     AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=36)then
       v25a36M   := v25a36M + vQryAux.FieldByName('QTD').AsInteger;

     if (vQryAux.FieldByName('SEXO').AsString='F') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>24)
     AND (vQryAux.FieldByName('IDADE_MESES').AsInteger<=36)then
       v25a36F   := v25a36F+ vQryAux.FieldByName('QTD').AsInteger;

     if (vQryAux.FieldByName('SEXO').AsString='M') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>36) then
       vMais36M   := vMais36M + vQryAux.FieldByName('QTD').AsInteger;

     if (vQryAux.FieldByName('SEXO').AsString='F') AND (vQryAux.FieldByName('IDADE_MESES').AsInteger>36) then
       vMais36F   := vMais36F + vQryAux.FieldByName('QTD').AsInteger;
     vQryAux.Next;
   end;
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('update gta g set ');
     Add('g.ZERO_A_12_FEMEA_PROC='+intToStr(v0a12F));
     Add(',g.ZERO_A_12_MACHO_PROC='+intToStr(v0a12M));
     Add(',g.TREZE_A_24_FEMEA_PROC='+intToStr(v13a24F));
     Add(',g.TREZE_A_24_MACHO_PROC='+intToStr(v13a24M));
     Add(',g.VITE_CINCO_A_36_FEMEA_PROC='+intToStr(v25a36F));
     Add(',g.VITE_CINCO_A_36_MACHO_PROC='+intToStr(v25a36M));
     Add(',g.MAIS_36_FEMEA_PROC='+intToStr(vMais36F));
     Add(',g.MAIS_36_MACHO_PROC='+intToStr(vMais36M));
     Add('where g.id='+id_gta);
     try
      ExecSQL;
      fCon.Commit;
     except
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end;
 end;
 vQryAux.Free;
end;


procedure TserviceDB.AtualizaGTAStatus(id_gta: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('update GTA CU  SET STATUS=10');
   Add('WHERE ID='+id_gta);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaIdentificacao(vTipo, vIdenteNew,vIdenteOld: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('update animal SET ');
   if vTipo='1' then
    Add('identificacao_1='+vIdenteNew.QuotedString);
   if vTipo='2' then
    Add('identificacao_2='+vIdenteNew.QuotedString);
   Add('WHERE STATUS=1');
   if vTipo='1' then
    Add(' and identificacao_2='+vIdenteOld.QuotedString);
   if vTipo='2' then
    Add(' and identificacao_1='+vIdenteOld.QuotedString);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaLotacao(id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('update currais CU  SET LOTACAO=(SELECT COUNT(*) FROM animal A');
   Add('WHERE STATUS=1 AND A.id_local=CU.ID)');
   Add('WHERE CU.id='+Id);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaLotacaoGeral(IdPropriedade: String);
begin
 fCon.Commit;
 TableCurrais.First;
 while not TableCurrais.Eof do
 begin
   AtualizaLotacao(TableCurraisID.AsString);
   TableCurrais.Next;
 end;
end;

procedure TserviceDB.AtualizaLotacaoVeiculo(IdVeiculoSaida:string);
var
 vQryAux :TFDQuery;
 vLotacao:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
    Clear;
    Add('SELECT COUNT(*) lot FROM animal WHERE id_veiculo_saida='+IdVeiculoSaida);
    Open;
    vLotacao := FieldByName('lot').AsString;

    Clear;
    Add('update veiculos_embarque ve set lotacao='+vLotacao);
    Add('where id='+IdVeiculoSaida);
    ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaPesoBalancaoAnimais(idVeiculo, pesoMedio: string);
var
 vQryAux,vQryAuxAnimais :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAuxAnimais := TFDQuery.Create(nil);
 vQryAuxAnimais.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET PESO_SAIDA=:PESO');
   Add('WHERE id_veiculo_saida=:id_veiculo_saida');
   ParamByName('PESO').AsString              := pesoMedio;
   ParamByName('id_veiculo_saida').AsString  := idVeiculo;
   ExecSQL;
 end;
 with vQryAuxAnimais,vQryAuxAnimais.SQL do
 begin
  Add('select * from animal');
  Add('where status>-1 and id_veiculo_saida=:id_veiculo_saida');
  ParamByName('id_veiculo_saida').AsString  := idVeiculo;
  Open;
  while not vQryAuxAnimais.eof do
  begin
    serviceDB.DeletaPesoSaidaAnimais(vQryAuxAnimais.FieldByName('id').AsString,
    vQryAuxAnimais.FieldByName('ID_LOTESAIDA').AsString);

    InserePeso(vQryAuxAnimais.FieldByName('id').AsString,
     vIdUserLogado,
     pesoMedio,
     'SAIDA',
     vQryAuxAnimais.FieldByName('ID_PRODUTOR_ORIGEM').AsString,
     vQryAuxAnimais.FieldByName('ID_LOTESAIDA').AsString,
     vQryAuxAnimais.FieldByName('ID_LOCAL').AsString,
     FormatDateTime('mm/dd/yyyy',
      vQryAuxAnimais.FieldByName('DATA_SAIDA').AsDateTime).QuotedString,
     frmPrincipal.vIdBaseCampo);
     vQryAuxAnimais.Next;
  end;
 end;
end;

procedure TserviceDB.AtualizaPesoEntrada(ID_ANIMAL, ID_USUARIO, PESO,
  ID_PRODUTOR,TIPO_CURRAL,TIPO_MOV: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 if TIPO_CURRAL<>'1' then
 begin
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('UPDATE ANIMAL_PESO SET PESO=:PESO');
     Add(',ID_USUARIO=:ID_USUARIO');
     Add(',DATA=CURRENT_DATE');
     Add('WHERE ID_ANIMAL=:ID_ANIMAL AND TIPO=''ENTRADA''');
     Add('AND ID_PRODUTOR=:ID_PRODUTOR');
     ParamByName('PESO').AsString        :=PESO;
     ParamByName('ID_USUARIO').AsString  :=ID_USUARIO;
     ParamByName('ID_ANIMAL').AsString   :=ID_ANIMAL;
     ParamByName('ID_PRODUTOR').AsString :=ID_PRODUTOR;
     ExecSQL;
   end;
 end
 else
 begin
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('UPDATE ANIMAL_PESO SET PESO=:PESO');
     Add(',ID_USUARIO=:ID_USUARIO');
     Add(',DATA=CURRENT_DATE');
     Add('WHERE ID_ANIMAL=:ID_ANIMAL AND TIPO=''ENTRADA CONFINAMENTO''');
     Add('AND ID_PRODUTOR=:ID_PRODUTOR');
     ParamByName('PESO').AsString        :=PESO;
     ParamByName('ID_USUARIO').AsString  :=ID_USUARIO;
     ParamByName('ID_ANIMAL').AsString   :=ID_ANIMAL;
     ParamByName('ID_PRODUTOR').AsString :=ID_PRODUTOR;
     ExecSQL;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaPesoParte(id, pesoMin, pesoMaxim,Capacidade,idCurral: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE APARTACAO SET PESO_MINIMO='+pesoMin);
   Add(',PESO_MAXIMO='+pesoMaxim);
   Add('WHERE ID='+Id);
   ExecSQL;

   Clear;
   Add('update currais  set capacidade='+Capacidade);
   Add('where id='+idCurral);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaPesoTotalLoteSaida(IdLote: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE LOTE_SAIDA L SET PESO_TOTAL =');
   Add('(SELECT SUM(PESO_SAIDA) FROM ANIMAL WHERE ID_LOTESAIDA=L.ID)');
   Add('WHERE L.ID='+IdLote);
   try
    ExecSQL;
   except
    on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaPLacaVeiculo(Id,Placa,Capacidade,PlacaCr,Motorista: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE VEICULOS_EMBARQUE SET PLACA=:PLACA');
   Add(',CAPACIDADE=:CAPACIDADE');
   Add(',PLACA_CR=:PLACA_CR');
   Add(',MOTORISTA=:MOTORISTA');
   Add('WHERE ID=:ID');
   ParamByName('PLACA').AsString     := Placa;
   ParamByName('PLACA_CR').AsString  := PlacaCr;
   ParamByName('Motorista').AsString := Motorista;
   ParamByName('ID').AsString        := Id;
   ParamByName('CAPACIDADE').AsString := Capacidade;
   try
    ExecSQL;
   except
    on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaPlaUsoMineralGeral(idFaz: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT DISTINCT ID_LOCAL FROM ANIMAL');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+idFaz);
   Open;
   while not Eof do
   begin
    VerificaAtualizaPlaUsoMineral(vQryAux.FieldByName('ID_LOCAL').AsString);
    vQryAux.Next;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AtualizaProcsError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
 ShowMessage(AException.Message);
end;

procedure TserviceDB.AtualizaSaldoGTA(Id: String);
begin
 with qryAnimal,qryAnimal.SQL do
 begin
   Clear;
   Add('EXECUTE PROCEDURE ATUALIZA_PROC_GTA('+Id+')');
   ExecSQL;
 end;
end;

procedure TserviceDB.AtualizaStatitica(idPropriedade,Tipo: String);
begin
 with qryStatitica,qryStatitica.SQL do
 begin
  if Tipo='NOVO' then
  begin
   Clear;
   Add('select');
   Add('count(*) total_Ani,');
   Add('avg(an.peso_entrada) media,');
   Add('min(an.peso_entrada) minimo,');
   Add('max(an.peso_entrada) maximo,');
   Add('lpad(extract(hour from min(an.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(minute from min(an.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(second from min(an.datareg)),2,''0'')min_hora,');
   Add('lpad(extract(hour from max(an.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(minute from max(an.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(second from max(an.datareg)),2,''0'')max_hora');
   Add('from animal an');
   Add('where status=1 and cast(an.data_proc as date)=current_date');
   Add('and an.id_propriedade='+idPropriedade);
   Open;
  end;
  if Tipo='EXITE' then
  begin
   Clear;
   Add('select');
   Add('count(*) total_Ani,');
   Add('avg(anp.peso) media,');
   Add('min(anp.peso) minimo,');
   Add('max(anp.peso) maximo,');
   Add('lpad(extract(hour from min(anp.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(minute from min(anp.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(second from min(anp.datareg)),2,''0'')min_hora,');
   Add('lpad(extract(hour from max(anp.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(minute from max(anp.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(second from max(anp.datareg)),2,''0'')max_hora');
   Add('from animal an');
   Add('join animal_peso anp on anp.status=1 and anp.id_animal=an.id and anp.tipo=''INTERMEDIARIA''');
   Add('where an.status=1 and anp.DATA=current_date');
   Add('and an.id_propriedade='+idPropriedade);
   Open;
  end;
 end;
end;


procedure TserviceDB.AtualizaStatiticaEmbarque(idLoteSaida: string);
begin
  with qryStatitica,qryStatitica.SQL do
  begin
   Clear;
   Add('select');
   Add('count(*) total_Ani,');
   Add('avg(an.PESO_SAIDA) media,');
   Add('min(an.PESO_SAIDA) minimo,');
   Add('max(an.PESO_SAIDA) maximo,');
   Add('lpad(extract(hour from min(an.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(minute from min(an.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(second from min(an.datareg)),2,''0'')min_hora,');
   Add('lpad(extract(hour from max(an.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(minute from max(an.datareg)),2,''0'')||'':''||');
   Add('lpad(extract(second from max(an.datareg)),2,''0'')max_hora');
   Add('from animal an');
   Add('where an.status=2 and an.DATA_SAIDA=current_date');
   Add('and an.ID_LOTESAIDA='+idLoteSaida);
   Open;
  end;
end;

procedure TserviceDB.AtualizaStatusTMP_ANIMAL(vID, vStatus: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE TMP_ANIMAL SET STATUS='+vSTATUS);
   Add('WHERE ID='+vID);
   ExecSQL;
 end;
 vQryAux.free;
end;

procedure TserviceDB.AtualizaValorContratoAnimais(vIdContrato :integer; vValor,vPesoTotal :double; vTipoValor:Integer);
var
 vQryAux,vQryAuxLoop :TFDQuery;
 vValorCalc : Double;
 vValorStr  : string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;

 vQryAuxLoop := TFDQuery.Create(nil);
 vQryAuxLoop.Connection := fCon;



 with vQryAuxLoop,vQryAuxLoop.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL');
   Add('WHERE STATUS >-1 AND ID_CONTRATO='+vIdContrato.ToString);
   Open;
   vQryAuxLoop.First;
   while not vQryAuxLoop.Eof do
   begin

     if vTipoValor=2 then
     begin
       if vPesoTotal=0 then
        vPesoTotal := FieldByName('PESO_ENTRADA').AsFloat;
       vValorCalc := (vValor / vPesoTotal) * FieldByName('PESO_ENTRADA').AsFloat;
     end;

     if vTipoValor=0 then
     begin
        vValorCalc := (FieldByName('PESO_ENTRADA').AsFloat/30) * vValor;
     end;

     if vTipoValor=1 then
     begin
       vValorCalc := vValor;
     end;

     vValorStr := StringReplace(FormatFloat('0.00',vValorCalc),',','.',[rfReplaceAll]);

     with vQryAux,vQryAux.SQL do
     begin
        Clear;
        Add('UPDATE ANIMAL SET VALOR_COMPRA='+vValorStr);
        Add('WHERE STATUS =1 AND ID ='+vQryAuxLoop.FieldByName('ID').AsString);
        ExecSQL;
        FCon.Commit;
     end;
     vQryAuxLoop.Next;
   end;
 end;
 vQryAux.free;
end;

procedure TserviceDB.AtualizaVeiculosSaida(IdVeiculo, idGTA,QTD_ANIMAIS: string);
var
 vQryAux,vQryLoop :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;

 vQryLoop := TFDQuery.Create(nil);
 vQryLoop.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE GTA SET ID_VEICULO_SAIDA='+IdVeiculo);
   if(frmPrincipal.vIdBaseCampo.Length>0)and(frmPrincipal.vIdBaseCampo<>'0') then
    Add(',BASE_CAMPO_SYNC=0,ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Add('WHERE ID='+idGTA);
   ExecSQL;
 end;
 with vQryLoop,vQryLoop.SQL do
 begin
   Clear;
   Add('SELECT FIRST '+QTD_ANIMAIS+' ID FROM ANIMAL');
   Add('WHERE STATUS=2 AND ID_GTA_SAIDA is null and id_veiculo_saida='+IdVeiculo);
   Open;
   while not vQryLoop.eof do
   begin
     with vQryAux,vQryAux.SQL do
     begin
      Clear;
      Add('UPDATE ANIMAL SET ID_GTA_SAIDA='+idGTA);
      Add('WHERE ID_GTA_SAIDA IS NULL AND ID_VEICULO_SAIDA='+IdVeiculo);
      Add('AND ID='+vQryLoop.FieldByName('ID').AsString);
      ExecSQL;
      FCon.Commit;
     end;
    vQryLoop.Next;
   end;
 end;
 vQryAux.free;
 vQryLoop.free;
end;

procedure TserviceDB.AtualizaVersaoBanco(IdVersao: String);
var
 vResult:integer;
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('DELETE FROM VERSION WHERE  NUMERO='+IdVersao);
  ExecSQL;

  Clear;
  Add('INSERT INTO VERSION(NUMERO)VALUES(20212)');
  ExecSQL;

 end;
 vQryAux.Free;
end;

function TserviceDB.BaixaAnimalSaidaTipo(Tipo,IdAnimal,DataSaida, QtdAnimais,
  PesoSaida, ValorSaida, IdProdutorDestino, IdCausaMorte, IdadeMorte,IdGTASaida,idLoteSaida,
  idProdutor,idLocal: string):integer;
var
 vResult:integer;
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
    if Tipo='VENDA' then
    begin
     with vQryAux,vQryAux.SQL do
     begin
       Clear;
       Add('UPDATE ANIMAL SET');
       Add('DATA_SAIDA='+DataSaida+',');
       Add('TIPO_SAIDA=''VENDA'',');
       Add('PESO_SAIDA='+PesoSaida+',');
       Add('VALOR_VENDA='+ValorSaida+',');
       Add('ID_LOTESAIDA='+idLoteSaida+',');
       Add('STATUS=2,');
       Add('ID_PRODUTOR_DESTINO_SAIDA='+IdProdutorDestino);
       if IdGTASaida.Length>0 then
        Add(',ID_GTA_SAIDA='+IdGTASaida);
       Add('WHERE ID ='+idAnimal);
       try
        ExecSQL;
         InserePeso(
          idAnimal,
          vIdUserLogado,
          PesoSaida,
          'SAIDA',
          idProdutor,
          IdLoteSaida,
          idLocal,
          DataSaida,
          frmPrincipal.vIdBaseCampo);

        InsereLogAnimal(idAnimal,vIdUserLogado);
        vResult :=1;
       EXCEPT
       on E : Exception do
        begin
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
          vResult :=0;
        end;
       end;
     end;
    end
    else
    begin
      with vQryAux,vQryAux.SQL do
      begin
       Clear;
       Add('UPDATE ANIMAL  SET');
       Add('DATA_SAIDA='+DataSaida+',');
       Add('TIPO_SAIDA=''MORTE'',');
       Add('PESO_SAIDA='+PesoSaida+',');
       Add('STATUS=3,');
       Add('ID_MOTIVO_MORTE='+IdCausaMorte+',');
       Add('IDADE_MORTE='+IdadeMorte);
       Add('WHERE ID ='+IdAnimal);
       try
        ExecSQL;
        InsereLogAnimal(idAnimal,vIdUserLogado);
        vResult :=1;
       EXCEPT
         on E : Exception do
         begin
            ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
            vResult :=0;
         end;
       end;
      end;
    end;
    Result := vResult;
    vQryAux.Free;
end;

procedure TserviceDB.BAIXA_MANUAL_FARMACOReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

function TserviceDB.BloqueiaAnimaisGrupo(idAnimal,
  Observacao,Status: string): integer;
var
 vResult:integer;
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET');
   Add('BLOQUEIO='+Status);
   if Status='1' then
    Add(',OBSERVACAO='+QuotedStr('Animal bloqueado '+DateToStr(date)+':'+Observacao));
   if Status='2' then
    Add(',OBSERVACAO='+QuotedStr('Animal Apto : '+DateToStr(date)+':'+Observacao));
   Add(',ULTIMA_ALTERACAO=CURRENT_TIMESTAMP');
   Add(',ULTIMO_USUARIO='+serviceDB.vIdUserLogado);
   Add('WHERE ID ='+idAnimal);
   vQryAux.SQL.Text;
   try
    ExecSQL;
    FCon.Commit;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      vResult :=0;
    end;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.CalendarioReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage(e.Message);
end;

function TserviceDB.CarregaCurralApartacao(vPeso: string): string;
var
 i:integer;
 vQryAux :TFDQuery;
begin
 vQryAux  := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM APARTACAO WHERE STATUS=1');
   Add('AND ID_PROPRIEDADE='+vIdPropriedade);
   Add('AND PESO_MINIMO<='+vPeso);
   Add('AND PESO_MAXIMO>='+vPeso);
   Open;
   Result          := FieldByName('CURRAL_PASTO').AsString;
   vTipoPesagem    := FieldByName('TIPO_PESAGEM').AsString;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.CarregaProdutorDestino(IdPropriedade: String);
begin
 with qryProdutorDestino,qryProdutorDestino.SQL do
 begin
   Clear;
   Add('select * from produtores');
   Add('where status=1  and id_propriedade='+IdPropriedade);
   Open;
 end;
end;

function TserviceDB.ChecaBrincoEstoque(sisbov, idProdutor: string): Boolean;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM ESTOQUE_BRINCOS E');
   Add('JOIN PEDIDO_BRINCOS P ON P.ID=E.ID_PEDIDO');
   Add('WHERE E.USADO=0 AND P.ID_PRODUTOR='+idProdutor);
   Add('AND SISBOV='+sisbov);
   if frmPrincipal.vIdBaseCampo<>'0' then
    Add('AND ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TserviceDB.ChecarEstoqueChip(vChip: string): Boolean;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM ESTOQUE_CHIP c');
   Add('JOIN PEDIDO_CHIP pc ON pc.ID=c.ID_PEDIDO');
   Add('WHERE C.USADO=0');
   Add('AND PC.ID_FAZENDA='+vIdPropriedade);
   Add('AND CHIP ='+vChip.QuotedString);
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TserviceDB.ChecarEstoqueChipGTA(vIdGTA: String): integer;
var
 vQry:TFDQuery;
 vEstoque:string;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM GTA g');
   Add('WHERE id='+vIdGTA);
   Open;
   vEstoque := FieldByName('ESTOQUE_CHIP').AsString;
   if vEstoque.Length=0 then
    Result :=0
   else
    Result :=FieldByName('ESTOQUE_CHIP').AsInteger;
 end;
 vQry.Free;
end;

function TserviceDB.ChecaTMPReident(sisbov, tipo: string): Boolean;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM COM_REIDENT_TMP WHERE 1=1');
   if TIPO='NOVO' then
    Add('AND SISBOV_NEW='+sisbov);
   if TIPO='ANTIGO' then
    Add('AND SISBOV_OLD='+sisbov);
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

procedure TserviceDB.ConectaBD(vTipoBase:integer);
var
  Arquivo: String;
  vVendorLib:string;
begin
  FCon.Connected := false;
  Arquivo := ExtractFilePath(ParamStr(0))+'fieldconf.ini';
  if not FileExists(Arquivo) then
  begin
    ShowMessage('Arquivo fieldconf.ini não localizado no seguinte diretorio:'+#13+
    Arquivo);
    Exit;
  end
  else
  begin
    vVendorLib :=ExtractFilePath(ParamStr(0))+'fbclient_32.dll';
    FDPhysFBDriverLink1.VendorLib := vVendorLib;
    try
      vPainelAnimais    :=LerIni(Arquivo,'FIREBIRD','MetaBaseAnimais');
      vPainelEstoque    :=LerIni(Arquivo,'FIREBIRD','MetaBaseEstoque');
      vPainelFinanceiro :=LerIni(Arquivo,'FIREBIRD','MetaBaseFinanceiro');

      with FCon do
        begin
          vPathBD                    := LerIni(Arquivo,'FIREBIRD','dbRede');
          vNomeBase                  := LerIni(Arquivo,'FIREBIRD','NomeBase');
          Params.Clear;
          Params.Values['DriverID']  :='FB';
          if vTipoBase=0 then
          begin
           vDataBase := LerIni(Arquivo,'FIREBIRD','Database');
           vServer   := LerIni(Arquivo,'FIREBIRD','Server');
           Params.Values['Server']    :=LerIni(Arquivo,'FIREBIRD','Server');
           Params.Values['Database']  :=LerIni(Arquivo,'FIREBIRD','Database');
           vPathBDMaster := vServer+':'+vDataBase;
          end;
          if vTipoBase=1 then
          begin
           vServer   := LerIni(Arquivo,'FIREBIRD','ServerBC');
           vDataBase := LerIni(Arquivo,'FIREBIRD','basecampo');
           vServer   := vServer;
           Params.Values['Server']    :=vServer;
           Params.Values['Database']  :=LerIni(Arquivo,'FIREBIRD','basecampo');
          end;
          vLic                       :=LerIni(Arquivo,'FIREBIRD','Lic');
          Params.Values['User_name'] :=LerIni(Arquivo,'FIREBIRD','User');
          Params.Values['Password']  :=LerIni(Arquivo,'FIREBIRD','Password');
          Params.Values['Port']      :=LerIni(Arquivo,'FIREBIRD','Port');
          Connected := True;
          frmPrincipal.lblDB.TEXT           := 'DB : '+vServer+':'+vDataBase;
          frmPrincipal.lblDbBaseCampo.TEXT  := 'DB : '+vServer+':'+vDataBase;
          frmPrincipal.lblDbLogin.TEXT      := 'DB : '+vServer+':'+vDataBase;
        end;
    except
        ShowMessage('Ocorreu uma Falha na configuração no Banco Firebird!');
    end;
  end;
end;

function TserviceDB.VerificaNumeroPedido(Numero: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from PEDIDO_BRINCOS a');
   Add('where a.status=1 and a.NUMERO_PEDIDO='+Numero);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaNumeroPedidoChip(Numero: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from PEDIDO_CHIP a');
   Add('where a.status=1 and a.NUMERO_PEDIDO='+Numero);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;


function TserviceDB.VerificaNumeroUsarioEntreCaixas(vIdPedido, CaixaIni,
  CaixaFim: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM ESTOQUE_CHIP');
   Add('WHERE USADO =1 AND ID_PEDIDO ='+vIdPedido);
   Add('AND CAIXA BETWEEN '+CaixaIni+' AND '+CaixaFim);
   Open;
   result:= vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.ConsultaSisbovBndProdutor(Sisbov,
  IdProdutor: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT B.*,P.NOME PRODUTOR FROM BND B');
   Add('JOIN PRODUTORES P ON P.ID=B.ID_PRODUTOR');
   Add('WHERE SISBOV=:SISBOV');
   Add('AND ID_PRODUTOR<>:ID_PRODUTOR');
   ParamByName('SISBOV').AsString :=Sisbov;
   ParamByName('ID_PRODUTOR').AsString :=IdProdutor;
   Open;
   if not vQryAux.IsEmpty then
    Result :=FieldByName('PRODUTOR').AsString
   else
    Result :='0';
 end;
 vQryAux.Free;
end;

procedure TserviceDB.CorrijeFornecimentoIrregular(idFornecimento, DataForn,
  vIdPasto, vIdMineral, vRealizado, vValorKG, vQtdAnimais: string);
var
 vQryAux :TFDQuery;
begin
 try
  serviceDB.InsereFornecimentoCab(
        FormatDateTime('mm/dd/yyyy',strTodate(DataForn)),
        vIdPasto,idFornecimento,vIdMineral,vRealizado,
        vValorKG,vQtdAnimais);
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection := fCon;
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('update fornecimento set status=1');
     Add(',ID_USUARIO_ALTERACAO='+vIdUserLogado);
     Add(',DATA_ALTERACAO=current_timestamp');
     Add(',QTD_ANIMAIS='+vQtdAnimais);
     Add('WHERE ID='+idFornecimento);
     ExecSQL;
   end;
  except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
  vQryAux.Free;
end;

function TserviceDB.ConectaBDCAMPO:Boolean;
var
  Arquivo,vLic,vServer: String;
  vVendorLib:string;
  vPos,vPosPonto:integer;
begin
  Arquivo := ExtractFilePath(ParamStr(0))+'fieldconf.ini';
  if not FileExists(Arquivo) then
  begin
   ShowMessage('Arquivo fieldconf.ini não localizado no seguinte diretorio:'+#13+
   Arquivo);
   Exit;
  end
  else
  begin
    vVendorLib :=ExtractFilePath(ParamStr(0))+'fbclient_32.dll';
    FDPhysFBDriverLink1.VendorLib := vVendorLib;
    try
      with FCBaseCampo do
      begin
        Params.Clear;
        Params.Values['DriverID']  :='FB';
        vDataBaseCampo := serviceDB.LerIni(Arquivo,'FIREBIRD','basecampo');
        if vDataBaseCampo.Length>0 then
        begin
          vPos := pos('BaseCampo_',vDataBaseCampo);
          vPosPonto := pos('.',vDataBaseCampo);

          frmPrincipal.vIdBaseCampo := copy(vDataBaseCampo,vPos,vPosPonto);

          frmPrincipal.vIdBaseCampo := StringReplace(frmPrincipal.vIdBaseCampo,
           'BaseCampo_','',[rfReplaceAll]);

          frmPrincipal.vIdBaseCampo := StringReplace(frmPrincipal.vIdBaseCampo,
           '.FDB','',[rfReplaceAll]);

          vServer   := LerIni(Arquivo,'FIREBIRD','ServerBC');
          Params.Values['Server']    :=vServer;
          vLic                       :=serviceDB.LerIni(Arquivo,'FIREBIRD','Lic');
          vDataBase                  :=serviceDB.LerIni(Arquivo,'FIREBIRD','basecampo');
          vPathBaseCampo             :=vDataBase;
          Params.Values['Database']  :=serviceDB.LerIni(Arquivo,'FIREBIRD','basecampo');
          Params.Values['User_name'] :=serviceDB.LerIni(Arquivo,'FIREBIRD','User');
          Params.Values['Password']  :=serviceDB.LerIni(Arquivo,'FIREBIRD','Password');
          Params.Values['Port']      :=serviceDB.LerIni(Arquivo,'FIREBIRD','Port');
          Connected := True;
          frmPrincipal.lblDbBaseCampo.TEXT   := 'DB : '+vServer+':'+vDataBase;
          frmPrincipal.lblDbLogin.TEXT       := 'DB : '+vServer+':'+vDataBase;

          Result := true;
        end
        else
         Result := false;
      end;
    except
     on E : Exception do
     begin
      ShowMessage('Erro ao conectar bc : '+vPathBaseCampo+' : '+E.Message);
      Result := false;
     end;
    end;
  end;

end;

function TserviceDB.ConectaBDDEMO: Boolean;
begin
    FDPhysFBDriverLink1.VendorLib := ExtractFilePath(ParamStr(0))+'fbclient_32.dll';;
    try
      with FCon do
      begin
        Params.Clear;
        Params.Values['DriverID']  :='FB';
        Params.Values['Server']    :='177.223.45.155';
        vDataBase                  :='C:\DBField\Alexandria\FIELDPEC_Alexandria.FDB';
        Params.Values['Database']  :=vDataBase;
        Params.Values['User_name'] :='SYSDBA';
        Params.Values['Password']  :='masterkey';
        Params.Values['Port']      :='3050';
        Connected := True;
        frmPrincipal.lblDbBaseCampo.TEXT   := 'DB : '+vServer+':'+vDataBase;
        frmPrincipal.lblDbLogin.TEXT       := 'DB : '+vServer+':'+vDataBase;
        Result := true;
      end
    except
     on E : Exception do
     begin
      ShowMessage('Erro ao conectar bD : '+E.Message);
      Result := false;
     end;
    end;
end;

procedure TserviceDB.DeletaApartacao(id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM APARTACAO');
   Add('WHERE ID='+Id);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.DeletaApartacaoGeral(IdPropriedade: String);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM APARTACAO');
   Add('WHERE ID_PROPRIEDADE='+IdPropriedade);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.FConAfterConnect(Sender: TObject);
begin
//  ScriptV20230220.ValidateAll;
//  ScriptV20230220.ExecuteAll;
// try
//  if FileExists(ExtractFilePath(ParamStr(0))+'SQL\Sql.sql') then
//  begin
   AtualizaProcs.ValidateAll;
   AtualizaProcs.ExecuteAll;
//    ExtractFilePath(ParamStr(0))+'SQL\Sql.sql');
//  end;
// except
//  on E : Exception do
//      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
// end;
end;

procedure TserviceDB.FechaTTA(idTTA: String);
var
 vQryAux:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('EXECUTE PROCEDURE PROC_FECHA_TTA('+idTTA+')');
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.FiltraEstoqueBrincos(idPedido, vFiltro: string);
begin
 with TablePedidoNumeros,TablePedidoNumeros.SQL do
 begin
   Clear;
   Add('select');
   Add('A.*,');
   Add('CASE');
   Add(' WHEN USADO =0 THEN ''EM ESTOQUE''');
   Add(' WHEN USADO =1 THEN ''UTILIZADO''');
   Add('END STATUS_USO');
   Add('from ESTOQUE_BRINCOS A');
   Add('WHERE STATUS=1 AND ID_PEDIDO='+idPedido);
   Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.FiltraEstoqueBrincosChip(idPedido, vFiltro: string);
begin
 with EstoqueChip,EstoqueChip.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' EC.*,');
   Add(' CASE');
   Add('  WHEN USADO =1 THEN ''SIM''');
   Add('  WHEN USADO =0 THEN ''NAO''');
   Add('  WHEN USADO =2 THEN ''RETIRADO''');
   Add(' END status_str');
   Add('FROM ESTOQUE_CHIP EC');
   Add('WHERE STATUS =1 AND EC.ID_PEDIDO ='+idPedido);
   Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.FiltraPedidoBrincos(vFiltro: string);
begin
  with TablePedidoBrinco,TablePedidoBrinco.SQL do
 begin
   Clear;
   Add('select');
   Add('p.*,');
   Add('f.nome_fantasia fornecedor,');
   Add('c.nome_fantasia certificadora,');
   Add('po.nome Produtor');
   Add('from pedido_brincos p');
   Add('join fornecedor_brincos f on p.id_fornecedor_brinco=f.id');
   Add('join certificadora c on c.id=p.id_certificadora');
   Add('join PRODUTORES po on po.id=p.ID_PRODUTOR');
   Add('WHERE p.STATUS=1');
   Add(vFiltro);
   Open;
 end;
end;

procedure TserviceDB.FinalizaSaidaAnimais(LoteSaida: string);
var
 vQryAux:TFDQuery;
begin
 SerRel.GeraRelSaida(serviceDB.qryGridLoteSaidaID.AsString);
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE LOTE_SAIDA SET STATUS=2');
   Add('WHERE ID='+LoteSaida);
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.DeletaSaidaAnimais(LoteSaida: string);
var
 vQryAux,vQryAuxW :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAuxW := TFDQuery.Create(nil);
 vQryAuxW.Connection := fCon;
 with vQryAuxW,vQryAuxW.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL WHERE STATUS=2');
   Add('AND ID_LOTESAIDA='+LoteSaida);
   Open;
   while not vQryAuxW.Eof do
   begin
     with vQryAux,vQryAux.SQL do
     begin
       Clear;
       Add('UPDATE ANIMAL SET STATUS=1,DATA_SAIDA=NULL,PESO_SAIDA=NULL,VALOR_VENDA=NULL ');
       Add('WHERE ID='+ vQryAuxW.FieldByName('id').AsString);
       try
        ExecSQL;
        InsereLogAnimal(vQryAuxW.FieldByName('id').AsString,vIdUserLogado);
       except
       on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
       end;
     end;
     vQryAuxW.Next;
   end;
 end;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE LOTE_SAIDA SET STATUS=-1');
   Add('WHERE ID='+ LoteSaida);
   try
    ExecSQL;
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
 vQryAuxW.Free;
end;

procedure TserviceDB.DeletaTmpReident;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM COM_REIDENT_TMP');
   ExecSQL;
 end;
 vQryAux.Free;
 FCon.Commit;
end;

procedure TserviceDB.DeleteTMP_GTA;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM TMP_GTA_COM_ENT');
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.DesvinculaGTAVeiculo(IdVeiculo, idGTA: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE GTA SET ID_VEICULO_SAIDA=NULL');
   Add('WHERE ID='+idGTA);
   Add('AND ID_VEICULO_SAIDA='+IdVeiculo);
   ExecSQL;
   FCon.Commit;

   Clear;
   Add('UPDATE ANIMAL SET ID_GTA_SAIDA=NULL');
   Add('WHERE ID_GTA_SAIDA='+idGTA);
   Add('AND id_veiculo_saida='+IdVeiculo);
   ExecSQL;
   FCon.Commit;

 end;
 vQryAux.free;
end;

procedure TserviceDB.DeletaEntradaAnimais(DtaEntrada, IdUsuario,
  IdPasto: string);
var
 vQryAux,vQryAuxW :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAuxW := TFDQuery.Create(nil);
 vQryAuxW.Connection := fCon;

 with vQryAuxW,vQryAuxW.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL WHERE STATUS=1 AND CAST(DATA_PROC AS DATE)='+DtaEntrada);
   Add('AND ID_LOCAL='+IdPasto);
   Add('AND ID_USUARIO='+IdUsuario);
   Open;
   while not vQryAuxW.Eof do
   begin
    with vQryAux,vQryAux.SQL do
    begin
     Clear;
     Add('UPDATE ANIMAL SET STATUS=-1');
     Add('WHERE ID='+vQryAuxW.FieldByName('id').AsString);
     try
      ExecSQL;
      InsereLogAnimal(vQryAuxW.FieldByName('id').AsString,vIdUserLogado);
     except
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
    end;
    vQryAuxW.Next;
   end;
 end;
 vQryAuxW.Free;
 vQryAux.Free;
end;

procedure TserviceDB.DeletaGtaTMP;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM TMP_GTA_COM_ENT');
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 serviceDB.TableTMP_GTA_COM_ENT.Close;
 serviceDB.TableTMP_GTA_COM_ENT.Open;
 vQryAux.Free;
end;

procedure TserviceDB.DeletaMorteAnimais(IdAnimal: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET TIPO_SAIDA=NULL');
   Add(',ID_MOTIVO_MORTE=NULL');
   Add(',STATUS=1');
   Add(',DATA_SAIDA=NULL');
   Add(',TIPO_MORTE=NULL');
   Add(',ULTIMA_ALTERACAO='+FormatDateTime('mm/dd/yyyy',date).QuotedString);
   Add(',ULTIMO_USUARIO='+vIdUserLogado);
   Add('WHERE ID='+idAnimal);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.DeletaPesoSaidaAnimais(idAnimal, idLoteSaida: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM ANIMAL_PESO');
   Add('WHERE TIPO=''SAIDA'' AND ID_ANIMAL='+idAnimal);
   Add('AND LOTE_SAIDA='+idLoteSaida);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.DeletaPrevisao(Adata: TDate);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM PREVISAO_FORN_DIA WHERE DATA='+FormatDateTime('mm/dd/yyyy',Adata).QuotedString);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.EstornarAnimal(id,idLS: string);
var
 vQryAux :TFDQuery;
 vPeso,vData :string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL_PESO SET STATUS=-1');
   Add('WHERE STATUS<>-1 AND TIPO=''SAIDA'' AND ID_ANIMAL='+id);
   Add('AND LOTE_SAIDA='+idLS);
   try
     ExecSQL;
   EXCEPT
   on E : Exception do
       ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;

   Clear;
   Add('SELECT FIRST 1 PESO,DATA FROM ANIMAL_PESO');
   Add('WHERE STATUS<>-1 AND ID_ANIMAL='+ID);
   Add('ORDER BY ID DESC');
   Open;
   vPeso := StringReplace(FieldByName('PESO').AsString,',','.',[rfReplaceAll]);
   vData := FormatDateTime('mm/dd/yyyy',FieldByName('DATA').AsDateTime);

   Clear;
   Add('UPDATE ANIMAL SET STATUS=1,ULTIMO_USUARIO='+vIdUserLogado);
   Add(',ULTIMA_ALTERACAO='+FormatDateTime('mm/dd/yyyy hh:mm:ss',now).QuotedString);
   Add(',DATA_SAIDA=null,PESO_SAIDA=null,ID_VEICULO_SAIDA=null,ID_LOTESAIDA=null');
   Add(',ULTIMO_PESO='+vPeso);
   Add(',DATA_ULTIMO_PESO='+vData.QuotedString);
   Add('WHERE ID='+id);
   try
    ExecSQL;
    InsereLogAnimal(id,vIdUserLogado);
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;



  Clear;
  Add('INSERT INTO LOG_ESTORNA_ANIMAL(ID_ANIMAL,ID_USUARIO,ID_LOTESAIDA)');
  Add('VALUES(:ID_ANIMAL,:ID_USUARIO,:ID_LOTESAIDA)');
  ParamByName('ID_ANIMAL').AsString    := ID;
  ParamByName('ID_USUARIO').AsString   := vIdUserLogado;
  ParamByName('ID_LOTESAIDA').AsString := idLs;
  ExecSQL;
  try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.ExcluirTratamentos(vID: string);
var
 vQryAux:TFDQuery;
 IdFase:string;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.sql do
 begin
   Clear;
   Add('UPDATE ANIMAL_SANIDADE SET STATUS=-1,DATA_ULTIMA_ALTERACAO=current_timestamp,ID_USUARIO_ALTERACAO='+vIdUserLogado);
   Add('WHERE ID=:ID');
   ParamByName('id').AsString:=vID;
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.AlterarTratamentos(vID,vIDProduto,vDoseAplicada:string);
var
 vQryAux:TFDQuery;
 IdFase:string;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.sql do
 begin
   Clear;
   Add('UPDATE ANIMAL_SANIDADE SET DATA_ULTIMA_ALTERACAO=current_timestamp,ID_USUARIO_ALTERACAO='+vIdUserLogado);
   if vIdProduto.Length>0 then
    Add(',ID_FARMACO='+vIdProduto);
   if vDoseAplicada.Length>0 then
    Add(',DOSE_ML='+vDoseAplicada);
   Add('WHERE ID=:ID');
   ParamByName('id').AsString:=vID;
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaCaixaComunicadoEntrada(idComu,IdPedido: string):string;
var
 vQryAux:TFDQuery;
 vCaixas,vCaixa:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := FCon;
 vCaixas :='';
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('SELECT DISTINCT ES.CAIXA caixa FROM ANIMAL CR');
  Add('JOIN GTA GT ON CR.GTA_ID=GT.ID');
  Add('JOIN ESTOQUE_BRINCOS ES ON CR.IDENTIFICACAO_2=ES.SISBOV');
  Add('WHERE CR.STATUS>-1 AND GT.ID_COMUNICADO='+idComu);
  Add('AND ES.ID_PEDIDO='+IdPedido);
  Open;
  while not eof do
  begin
   vCaixa := FieldByName('caixa').AsString;
   vCaixas:=vCaixas+vCaixa+',';
   vQryAux.Next;
  end;
 end;
 vCaixas:=copy(vCaixas,0,vCaixas.Length-1);
 Result :=vCaixas;
 vQryAux.Free;
end;



procedure TserviceDB.RetornaChipRetirada(vIdPedido, CaixaIni, CaixaFim: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ESTOQUE_CHIP SET USADO= 0');
   Add('WHERE ID_PEDIDO ='+vIdPedido);
   Add('AND CAIXA BETWEEN '+CaixaIni+' AND '+CaixaFim);
   ExecSQL;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaDataEntradAnimalGTA(IDgta: string): string;
var
 vQryAux:TFDQuery;
 vCaixas,vCaixa:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := FCon;
 vCaixas :='';
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('SELECT min(DATA_PROC)DATA_PROC FROM ANIMAL');
  Add('WHERE STATUS=1 AND GTA_ID='+IDgta);
  Open;
  Result :=FieldByName('DATA_PROC').AsString;
  vQryAux.Free;
 end;
end;

function TserviceDB.RetornaDGSisbov(NUMERO: STRING): integer;
var
 i:integer;
 n1,
 n2,
 n3,
 n4,
 n5,
 n6,
 n7,
 n8,
 n9,
 n10,
 n11,
 n12,
 n13,
 n14,
 SOMA_TODAS,
 modResult:integer;
begin
    n1  := strToInt(numero[1]);
    n2  := strToInt(numero[2]);
    n3  := strToInt(numero[3]);
    n4  := strToInt(numero[4]);
    n5  := strToInt(numero[5]);
    n6  := strToInt(numero[6]);
    n7  := strToInt(numero[7]);
    n8  := strToInt(numero[8]);
    n9  := strToInt(numero[9]);
    n10 := strToInt(numero[10]);
    n11 := strToInt(numero[11]);
    n12 := strToInt(numero[12]);
    n13 := strToInt(numero[13]);
    n14 := strToInt(numero[14]);

    n1:=n1*4;
    n2:=n2*5;
    n3:=n3*6;
    n4:=n4*7;
    n5:=n5*8;
    n6:=n6*9;

    n7:=n7*2;
    n8:=n8*3;
    n9:=n9*4;
    n10:=n10*5;
    n11:=n11*6;
    n12:=n12*7;
    n13:=n13*8;
    n14:=n14*9;

    SOMA_TODAS := (n1+n2+n3+n4+n5+n6+n7+n8+n9+n10+n11+n12+n13+n14);
    modResult  := SOMA_TODAS mod 11;
    if modResult>=10 then
     modResult :=0;

    Result := modResult;
end;


function TserviceDB.RetornaFinalCaixa(vIdPedido, CaixaFinal: string): string;
var
 vQryAux:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.sql do
 begin
   Clear;
   Add('SELECT FIRST 1 chip  FROM ESTOQUE_CHIP a');
   Add('WHERE ID_PEDIDO ='+vIdPedido+' AND CAIXA='+CaixaFinal);
   Add('ORDER BY chip DESC ');
   Open;
   Result := FieldByName('chip').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetonaNomeFase(idFase: string): string;
var
 vQryAux:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.sql do
 begin
   Clear;
   Add('SELECT * FROM AUX_FASES WHERE ID='+idFase);
   Open;
   Result := FieldByName('nome').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.GeraNumeracaoEstoque(SisbovIni, SisbovFim, QtdPagina,
  idPedido: string): string;
var
 manejoIni,
 manejoFim,
 manejoCalc,
 Total,
 dg,
 Pagina,
 PaginaCalc:integer;
 PrefixoIni,sisbov,manejoIniS,
 manejoFimS,ManejoCalcS : string;
 i,x,cx:integer;
begin
 manejoIni  := strToInt(copy(SisbovIni,9,6));
 manejoFim  := strToInt(copy(sisbovFim,9,6));
 PrefixoIni := copy(SisbovIni,1,8);
 Total      := manejoFim-manejoIni+1;
 serviceDB.insereEstoque.Close;
 serviceDB.insereEstoque.Open;
 x  :=1;
 cx :=1;
 manejoCalc := manejoIni;
 Pagina     := strToInt(QtdPagina);
 PaginaCalc := 1;
 for I := 0 to Total -1 do
 begin
   ManejoCalcS := IntToStr(manejoCalc);
   if ManejoCalcS.Length=5 then
     ManejoCalcS := '0'+ManejoCalcS;

   sisbov := PrefixoIni+ManejoCalcS;
   dg     := RetornaDGSisbov(sisbov);
   sisbov := sisbov+ intToStr(dg);
   with serviceDB.insereEstoque,serviceDB.insereEstoque.SQL do
   begin
     Clear;
     Add('INSERT INTO ESTOQUE_BRINCOS (ID_PEDIDO, SISBOV, MANEJO, DG, CAIXA)');
     Add('VALUES(:idPedido,:sisbov,:ManejoCalcS,:dg,:caixa);');
     ParamByName('idPedido').AsString     := idPedido;
     ParamByName('sisbov').AsString       := sisbov;
     ParamByName('ManejoCalcS').AsString  := ManejoCalcS;
     ParamByName('dg').AsInteger          := dg;
     ParamByName('caixa').AsInteger       := cx;
   end;
   try
    serviceDB.insereEstoque.ExecSQL;
    inc(x);
    inc(manejoCalc);
    inc(PaginaCalc);
    if PaginaCalc>Pagina then
    begin
     PaginaCalc :=1;
     inc(cx)
    end;
   except
     on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 Result := intToStr(I)
end;

function TserviceDB.GeraNumeracaoEstoqueChip(ChipIni, ChipFim,idPedido,qtdCx: string): string;
var
 Total,
 manejoIni,
 manejoFim,
 manejoCalc:Double;
 PaginaCalc,Pagina:integer;
 PrefixoIni,sisbov,manejoIniS,
 manejoFimS,ManejoCalcS : string;
 i,cx:integer;
begin
 manejoIni  := StrToFloat(ChipIni);
 manejoFim  := StrToFloat(ChipFim);
 Total      := manejoFim-manejoIni+1;
 serviceDB.insereChip.Close;
 serviceDB.insereChip.Open;
 manejoCalc := manejoIni;

 Pagina     := strToInt(qtdCx);
 PaginaCalc := 1;
 cx         :=1;
 for I := 0 to trunc(Total)-1 do
 begin
   with serviceDB.insereChip,serviceDB.insereChip.SQL do
   begin
     Clear;
     Add('INSERT INTO ESTOQUE_CHIP (ID_PEDIDO, CHIP,CAIXA)');
     Add('VALUES(:idPedido,:chip,:caixa)');
     ParamByName('idPedido').AsString   := idPedido;
     ParamByName('chip').AsString       := trunc(manejoCalc).ToString;
     ParamByName('caixa').AsInteger     := cx;
   end;
   try
    serviceDB.insereChip.ExecSQL;
    manejoCalc := manejoCalc+1;
    inc(PaginaCalc);
    if PaginaCalc>Pagina then
    begin
     PaginaCalc :=1;
     inc(cx)
    end;

   except
     on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 Result := intToStr(I)
end;

procedure TserviceDB.GeraPlanejamentoTodasFases(idCat, idRaca, ConsumoGR, GMD,
  PercentPV, Meta,idMineral: string);
var
 vQryAux:TFDQuery;
 IdFase:string;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.sql do
 begin
   Clear;
   Add('SELECT * FROM AUX_FASES WHERE STATUS=1');
   Open;
   while not vQryAux.eof do
   begin
     IdFase := vQryAux.FieldByName('id').AsString;
     if VerificaPlanNutriCadastrada(IdRaca,IdCat,
      IdFase)then
     begin
       InserePlanNutri(
         serviceDB.vIdUserLogado,
         IdCat,
         IdRaca,
         StringReplace(ConsumoGR,',','.',[rfReplaceAll]),
         StringReplace(PercentPV,',','.',[rfReplaceAll]),
         StringReplace(GMD,',','.',[rfReplaceAll]),
         StringReplace(Meta,',','.',[rfReplaceAll]),
         IdFase,
         idMineral);
         vQryAux.Next;
     end
     else
      vQryAux.Next;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.GeraPrevisao(Adata:TDate;IdProduto:string;DiasFornTotal,Dias:integer);
var
 vQryAux,vQryAux1 :TFDQuery;
 vConsumoCabDia,vConsumoTotal,vPesoAtual:string;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAux1:=TFDQuery.Create(nil);
 vQryAux1.Connection := fCon;
 with vQryAux,vQryAux.sql do
 begin
  Clear;
  Add('SELECT * FROM RETORNAPREVISAOCONSUMO(');
  Add(IdProduto+',');
  Add(FormatDateTime('mm/dd/yyyy',Adata).QuotedString+',');
  Add(intToStr(Dias)+',');
  Add(intToStr(DiasFornTotal)+',');
  Add(vIdPropriedade+')');
  Open;

  while not vQryAux.Eof do
  begin
     vConsumoCabDia := vQryAux.FieldByName('CONSUMO_CAB_DIAS_TOTAL').AsString;
     vConsumoTotal  := vQryAux.FieldByName('PREV_CONSUMO_TOTAL').AsString;
     vPesoAtual     := vQryAux.FieldByName('PESO_ATUAL').AsString;
     if vConsumoCabDia.Length=0 then
      vConsumoCabDia :='0';
     if vConsumoTotal.Length=0 then
      vConsumoTotal  :='0';
     if vPesoAtual.Length=0 then
      vPesoAtual:='0';

   with vQryAux1,vQryAux1.SQL do
   begin
     Clear;
     Add('INSERT INTO PREVISAO_FORN_DIA(');
     Add('DATA,');
     Add('ID_LOCAL,');
     Add('PASTO,');
     Add('QTD_CAB,');
     Add('CONSUMO_CAB,');
     Add('CONSUMO_TOTAL,');
     Add('ID_USUARIO,');
     Add('RACA,');
     Add('ID_RACA,');
     Add('CATEGORIA_ATUAL,');
     Add('ID_CATEGORIA_ATUAL,');
     Add('PESO_ESTIMADO,');
     Add('ID_PRODUTO,');
     Add('ID_PROPRIEDADE)');
     Add('VALUES(');
     Add(FormatDateTime('mm/dd/yyyy',Adata).QuotedString+',');
     Add(vQryAux.FieldByName('IDPASTO').AsString+',');
     Add(vQryAux.FieldByName('PASTO').AsString.QuotedString+',');
     Add(vQryAux.FieldByName('QTD_CAB').AsString+',');
     Add(StringReplace(vConsumoCabDia,',','.',[rfReplaceAll])+',');
     Add(StringReplace(vConsumoTotal,',','.',[rfReplaceAll])+',');
     Add(vIdUserLogado+',');
     Add(vQryAux.FieldByName('RACA_NOME').AsString.QuotedString+',');
     Add(vQryAux.FieldByName('IDRACA').AsString+',');
     Add(vQryAux.FieldByName('CAT_NOME').AsString.QuotedString+',');
     Add(vQryAux.FieldByName('IDCAT').AsString+',');
     Add(StringReplace(vPesoAtual,',','.',[rfReplaceAll])+',');
     Add(IdProduto+',');
     Add(vIdPropriedade);
     Add(')');
     try
      vQryAux1.ExecSQL;
      vQryAux1.SQL.Text;
     except
      on E : Exception do
       ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end;
   vQryAux.Next;
  end;
  vQryAux1.Free;
  vQryAux.Free;
 end;
end;


procedure TserviceDB.UpdateAnimal(ID_ANIMAL,ID_LOCAL, ID_CATEGORIA, ID_RACA,
  IDENTIFICACAO_1, IDENTIFICACAO_2, DATA_PROC, GTA_ID, IDADE_MESES,
  PESO_ENTRADA,ID_USUARIO,
  ID_PRODUTOR,ID_PRODUTOR_ORIGEM,vValorCompra,vIdRebanho,ID_LOTE,ID_CONTRATO,DESTINO: string);
var
 vQryAux :TFDQuery;
begin
 vValorCompra := StringReplace(vValorCompra,'.','',[rfReplaceAll]);
 vValorCompra := StringReplace(vValorCompra,',','.',[rfReplaceAll]);
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL');
   Add('SET ID_LOCAL =:ID_LOCAL');
   Add(' ,ID_CATEGORIA = :ID_CATEGORIA');
   Add(' ,ID_RACA = :ID_RACA');
   Add(' ,IDENTIFICACAO_1 = :IDENTIFICACAO_1');
   Add(' ,IDENTIFICACAO_2 = :IDENTIFICACAO_2');
   Add(' ,DATA_PROC =:DATA_PROC');
   Add(' ,GTA_ID =:GTA_ID');
   Add(' ,IDADE_MESES =:IDADE_MESES');
   Add(' ,PESO_ENTRADA =:PESO_ENTRADA');
   Add(' ,ID_USUARIO =:ID_USUARIO');
   Add(' ,ID_PROPRIEDADE =:ID_PROPRIEDADE');
   Add(' ,ID_PRODUTOR = :ID_PRODUTOR');
   Add(' ,ID_PRODUTOR_ORIGEM = :ID_PRODUTOR_ORIGEM');
   Add(' ,VALOR_COMPRA = :VALOR_COMPRA');
   Add(' ,DATA_ULTIMA_ALTERACAO = CURRENT_TIMESTAMP');
   Add(' ,ID_ULTIMO_USUARIO_ALTERACAO = :ID_ULTIMO_USUARIO_ALTERACAO');
   Add(' ,ID_REBANHO = :ID_REBANHO');
   if ID_LOTE.Length>0 then
    Add(' ,ID_LOTE = :ID_LOTE');
   Add(' ,ID_CONTRATO=:ID_CONTRATO');
   if DESTINO.Length>0 then
    Add(' ,DESTINO='+DESTINO.QuotedString)
   else
    Add(' ,DESTINO=null');
   Add('WHERE status=1 and (ID =:ID_ANIMAL)');
   ParamByName('ID_LOCAL').AsString           :=ID_LOCAL;
   ParamByName('ID_CATEGORIA').AsString       :=ID_CATEGORIA;
   ParamByName('ID_RACA').AsString            :=ID_RACA;
   ParamByName('IDENTIFICACAO_1').AsString    :=IDENTIFICACAO_1;
   ParamByName('IDENTIFICACAO_2').AsString    :=IDENTIFICACAO_2;
   ParamByName('DATA_PROC').AsDateTime        :=StrToDateTime(DATA_PROC);
   ParamByName('GTA_ID').AsString             :=GTA_ID;
   ParamByName('IDADE_MESES').AsString        :=IDADE_MESES;
   ParamByName('PESO_ENTRADA').AsString       :=PESO_ENTRADA;
   ParamByName('ID_USUARIO').AsString         :=ID_USUARIO;
   ParamByName('ID_PROPRIEDADE').AsString     :=vIdPropriedade;
   ParamByName('ID_PRODUTOR').AsString        :=ID_PRODUTOR;
   ParamByName('ID_PRODUTOR_ORIGEM').AsString :=ID_PRODUTOR_ORIGEM;
   ParamByName('ID_ANIMAL').AsString          :=ID_ANIMAL;
   ParamByName('VALOR_COMPRA').AsString       :=StringReplace(vValorCompra,',','.',[rfReplaceAll]);
   ParamByName('ID_ULTIMO_USUARIO_ALTERACAO').AsString :=vIdUserLogado;
   ParamByName('ID_REBANHO').AsString         :=vIdRebanho;
   if ID_LOTE.Length>0 then
    ParamByName('ID_LOTE').AsString           :=ID_LOTE;
   ParamByName('ID_CONTRATO').AsString        :=ID_CONTRATO;
   try
    ExecSQL;
    InsereLogAnimal(ID_ANIMAL,vIdUserLogado);
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.UPDATEAnimalNascimento(ID_ANIMAL, ID_LOCAL, ID_CATEGORIA,
  ID_RACA, IDENTIFICACAO_1, IDENTIFICACAO_2, DATA_PROC, IDADE_MESES,
  PESO_ENTRADA, ULTIMO_PESO, DATA_ULTIMO_PESO, ID_USUARIO, ID_PROPRIEDADE,
  ID_PRODUTOR, ORIGEM_DADOS, IDENTIFICACAO_MAE, CARIMBO_NASCIMENTO: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET ');
   Add('ID_LOCAL=:ID_LOCAL');
   Add(',ID_CATEGORIA=:ID_CATEGORIA');
   Add(',ID_RACA=:ID_RACA');
   Add(',IDENTIFICACAO_1=:IDENTIFICACAO_1');
   Add(',IDENTIFICACAO_2=:IDENTIFICACAO_2');
   Add(',DATA_PROC=:DATA_PROC');
   Add(',IDADE_MESES=:IDADE_MESES');
   Add(',PESO_ENTRADA=:PESO_ENTRADA');
   Add(',ULTIMO_PESO=:ULTIMO_PESO');
   Add(',DATA_ULTIMO_PESO=:DATA_ULTIMO_PESO');
   Add(',ID_USUARIO=:ID_USUARIO');
   Add(',ID_PROPRIEDADE=:ID_PROPRIEDADE');
   Add(',ID_PRODUTOR=:ID_PRODUTOR');
   Add(',ORIGEM_DADOS=:ORIGEM_DADOS');
   Add(',IDENTIFICACAO_MAE=:IDENTIFICACAO_MAE');
   Add(',CARIMBO_NASCIMENTO=:CARIMBO_NASCIMENTO');
   Add(',ULTIMO_USUARIO=:ULTIMO_USUARIO');
   Add(',ULTIMA_ALTERACAO=:ULTIMA_ALTERACAO');
   Add('WHERE ID=:ID');
   ParamByName('ID_LOCAL').AsString                    := ID_LOCAL ;
   ParamByName('ID_CATEGORIA').AsString                := ID_CATEGORIA ;
   ParamByName('ID_RACA').AsString                     := ID_RACA;
   ParamByName('IDENTIFICACAO_1').AsString             := IDENTIFICACAO_1;
   ParamByName('IDENTIFICACAO_2').AsString             := IDENTIFICACAO_2 ;
   ParamByName('DATA_PROC').AsString                   := DATA_PROC;
   ParamByName('IDADE_MESES').AsString                 := IDADE_MESES;
   ParamByName('PESO_ENTRADA').AsString                := PESO_ENTRADA ;
   ParamByName('ULTIMO_PESO').AsString                 := ULTIMO_PESO ;
   ParamByName('DATA_ULTIMO_PESO').AsString            := DATA_ULTIMO_PESO;
   ParamByName('ID_USUARIO').AsString                  := ID_USUARIO ;
   ParamByName('ID_PROPRIEDADE').AsString              := ID_PROPRIEDADE ;
   ParamByName('ID_PRODUTOR').AsString                 := ID_PRODUTOR;
   ParamByName('ORIGEM_DADOS').AsString                := ORIGEM_DADOS;
   ParamByName('IDENTIFICACAO_MAE').AsString           := IDENTIFICACAO_MAE;
   ParamByName('CARIMBO_NASCIMENTO').AsString          := CARIMBO_NASCIMENTO;
   ParamByName('ULTIMO_USUARIO').AsString              := vIdUserLogado;
   ParamByName('ULTIMA_ALTERACAO').AsDateTime          := now;
   ParamByName('ID').AsString                          := ID_ANIMAL;
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+'Erro ao inserir Nascimento : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.UpdateAnimalReproc(ID_ANIMAL, ID_LOCAL, ID_CATEGORIA,
  ID_RACA, IDENTIFICACAO_1, IDENTIFICACAO_2,DATA_ENTRADA,PESO_ENTRADA,OBSERVACAO,ID_REBANHO,
  ID_LOTE,ID_CONTRATO,TIPO_CURRAL,TIPO_MOV,IdBase,DATA_PROC,BLOQUEIO,DESTINO,ATUALIZA_PESO_ENT,
  ATUALIZA_DATA_ENT: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL');
   Add('SET ID_LOCAL =:ID_LOCAL');
   Add(' ,ID_CATEGORIA = :ID_CATEGORIA');
   Add(' ,ID_RACA = :ID_RACA');
   if IDENTIFICACAO_1.Length>0 then
    Add(' ,IDENTIFICACAO_1 = :IDENTIFICACAO_1');
   if IDENTIFICACAO_2.Length>0 then
    Add(' ,IDENTIFICACAO_2 = :IDENTIFICACAO_2');
   Add(' ,DATA_ULTIMA_ALTERACAO = CURRENT_TIMESTAMP');
   Add(' ,ID_ULTIMO_USUARIO_ALTERACAO = :ID_ULTIMO_USUARIO_ALTERACAO');
   Add(' ,DATA_REPROCESSAMENTO='+FormatDateTime('mm/dd/yyyy hh:mm:ss',strToDateTime(DATA_PROC)).QuotedString);

   if (ATUALIZA_DATA_ENT='1') AND (DATA_ENTRADA.Length>0) then
    Add(' ,DATA_PROC='+FormatDateTime('mm/dd/yyyy hh:mm:ss',strToDateTime(DATA_ENTRADA)).QuotedString);

   if (ATUALIZA_PESO_ENT='1') AND (PESO_ENTRADA.Length>0) then
   begin
    Add(',PESO_ENTRADA =:PESO_ENTRADA');
   end;

   if(PESO_ENTRADA.Length>0) then
   begin
    Add(',ULTIMO_PESO  =:ULTIMO_PESO');
    Add(',DATA_ULTIMO_PESO='+FormatDateTime('mm/dd/yyyy',strToDateTime(DATA_PROC)).QuotedString);
   end;

   if OBSERVACAO.Length>0 then
    Add(',OBSERVACAO=:OBSERVACAO');

   Add(',ID_REBANHO =:ID_REBANHO');

   if ID_LOTE.Length>0 then
    Add(' ,ID_LOTE = :ID_LOTE');
   Add(' ,ID_CONTRATO = :ID_CONTRATO');

   if (TIPO_CURRAL='1') and (TIPO_MOV='1') then
   begin
    Add(',PESO_ENTRADA_CONF=:PESO_ENTRADA_CONF');
    Add(',DATA_ENTRADA_CONF=:DATA_ENTRADA_CONF');
   end;

   Add(',ID_BASE_CAMPO='+IdBase);
   Add(',BASE_CAMPO_TIPO_OPERACAO='+intToStr(frmPrincipal.vMov));
   Add(',BLOQUEIO=:BLOQUEIO');
   IF DESTINO.Length>0 then
    Add(' ,DESTINO='+DESTINO.QuotedString)
   else
    Add(' ,DESTINO=null');
   Add('WHERE status=1 and (ID =:ID_ANIMAL)');
   ParamByName('ID_LOCAL').AsString           :=ID_LOCAL;
   ParamByName('ID_CATEGORIA').AsString       :=ID_CATEGORIA;
   ParamByName('ID_RACA').AsString            :=ID_RACA;
   if IDENTIFICACAO_1.Length>0 then
    ParamByName('IDENTIFICACAO_1').AsString    :=IDENTIFICACAO_1;
   if IDENTIFICACAO_2.Length>0 then
    ParamByName('IDENTIFICACAO_2').AsString    :=IDENTIFICACAO_2;
   ParamByName('ID_ULTIMO_USUARIO_ALTERACAO').AsString     :=vIdUserLogado;
   if (ATUALIZA_PESO_ENT='1') AND (PESO_ENTRADA.Length>0) then
    ParamByName('PESO_ENTRADA').AsString      :=PESO_ENTRADA;
   if (PESO_ENTRADA.Length>0) THEN
    ParamByName('ULTIMO_PESO').AsString        :=PESO_ENTRADA;

   ParamByName('ID_ANIMAL').AsString          :=ID_ANIMAL;
   if OBSERVACAO.Length>0 then
    ParamByName('OBSERVACAO').AsString        :=OBSERVACAO;
   ParamByName('ID_REBANHO').AsString         :=ID_REBANHO;
   if ID_LOTE.Length>0 then
    ParamByName('ID_LOTE').AsString           :=ID_LOTE;
   ParamByName('ID_CONTRATO').AsString        :=ID_CONTRATO;
   if (TIPO_CURRAL='1') and (TIPO_MOV='1') then
   begin
    ParamByName('PESO_ENTRADA_CONF').AsString   :=PESO_ENTRADA;
    ParamByName('DATA_ENTRADA_CONF').AsDateTime :=strToDateTime(DATA_PROC);
   end;
   ParamByName('BLOQUEIO').AsString   :=BLOQUEIO;
   try
    vQryAux.SQL.Text;
    ExecSQL;
    InsereLogAnimal(ID_ANIMAL,vIdUserLogado);
   except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;


procedure TserviceDB.UpdateAnimalBaseCampo(ID_ANIMAL, ID_LOCAL, ID_CATEGORIA,
  ID_RACA, IDENTIFICACAO_1, IDENTIFICACAO_2,DATA_ENTRADA,PESO_ENTRADA,ULTIMO_PESO,
  DATA_ULTIMO_PESO,OBSERVACAO,ID_REBANHO,
  ID_LOTE,ID_CONTRATO,PESO_ENT_CONF,DATA_ENT_CONF,IdBase,DATA_PROC: string);
var
 vQryAux :TFDQuery;
 vIdAnimal:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select MAX(ID)MAX_ID from animal');
   Add('where status<>-1 and id='+ID_ANIMAL);
//   if IDENTIFICACAO_1.Length>0 then
//    Add('and identificacao_1='+IDENTIFICACAO_1.QuotedString);
//   if IDENTIFICACAO_2.Length>0 then
//    Add('and identificacao_2='+IDENTIFICACAO_2.QuotedString);
   Open;
   vIdAnimal := FieldByName('MAX_ID').AsString;

   if vIdAnimal.Length>0 then
   begin
     Clear;
     Add('UPDATE ANIMAL');
     Add('SET ID_LOCAL ='+ID_LOCAL);
     Add(' ,ID_CATEGORIA ='+ID_CATEGORIA);
     Add(' ,ID_RACA ='+ID_RACA);
     if IDENTIFICACAO_1.Length>0 then
      Add(' ,IDENTIFICACAO_1 ='+IDENTIFICACAO_1.QuotedString);
     if IDENTIFICACAO_2.Length>0 then
      Add(' ,IDENTIFICACAO_2 ='+IDENTIFICACAO_2.QuotedString);
     Add(' ,DATA_ULTIMA_ALTERACAO='+FormatDateTime('mm/dd/yyyy hh:mm:ss',strToDateTime(DATA_PROC)).QuotedString);;
     Add(' ,ID_ULTIMO_USUARIO_ALTERACAO ='+vIdUserLogado);
     if DATA_PROC.Length>0 then
      Add(' ,DATA_REPROCESSAMENTO ='+FormatDateTime('mm/dd/yyyy hh:mm:ss',strToDateTime(DATA_PROC)).QuotedString);
     Add(',PESO_ENTRADA='+StringReplace(PESO_ENTRADA,',','.',[rfReplaceAll]));
     if ULTIMO_PESO.Length>0 then
      Add(',ULTIMO_PESO ='+StringReplace(ULTIMO_PESO,',','.',[rfReplaceAll]));
     if DATA_ULTIMO_PESO.Length>0 then
      Add(',DATA_ULTIMO_PESO='+FormatDateTime('mm/dd/yyyy',strToDate(DATA_ULTIMO_PESO)).QuotedString);
     if OBSERVACAO.Length>0 then
      Add(',OBSERVACAO ='+OBSERVACAO.QuotedString);
     if ID_REBANHO.Length>0 then
      Add(',ID_REBANHO ='+ID_REBANHO);
     if ID_LOTE.Length>0 then
      Add(' ,ID_LOTE   ='+ID_LOTE);
     if ID_CONTRATO.Length>0 then
      Add(' ,ID_CONTRATO ='+ID_CONTRATO);
     if PESO_ENT_CONF.Length>0 then
      Add(',PESO_ENTRADA_CONF='+StringReplace(PESO_ENT_CONF,',','.',[rfReplaceAll]));
     if DATA_ENT_CONF.Length>0 then
      Add(',DATA_ENTRADA_CONF='+FormatDateTime('mm/dd/yyyy',strToDate(DATA_ENT_CONF)).QuotedString);
     Add(',ID_BASE_CAMPO='+IdBase);
     Add('WHERE status=1 AND ID='+vIdAnimal);

     vQryAux.SQL.Text;
     try
      ExecSQL;
      InsereLogAnimal(ID_ANIMAL,vIdUserLogado);
     except
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end
   else
    frmPrincipal.mlogSync.Lines.Add('Animal nao encontrado Chip:'+IDENTIFICACAO_1+
    ' SISBOV/NFC:'+IDENTIFICACAO_2)
 end;
 vQryAux.Free;
end;


procedure TserviceDB.UpdateAnimalSaida(ID_ANIMAL,ID_USUARIO, IdVeiculo,PesoSaida,IdLoteSaida,ID_PRODUTOR,
ID_LOCAL,OBSERVACAO: string);
var
 vQryAux :TFDQuery;
 VidProdDestino:string;
begin
 VidProdDestino := RetornaIdProdutorLS(IdLoteSaida);
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL');
   Add('SET STATUS = 2'+',');
   Add(' ID_LOTESAIDA = '+IdLoteSaida+',');
   Add(' ID_VEICULO_SAIDA = '+IdVeiculo+',');
   Add(' DATA_SAIDA = current_date'+',');
   Add(' PESO_SAIDA = '+PesoSaida+',');
   Add(' ID_PRODUTOR_DESTINO_SAIDA='+VidProdDestino+',');
   Add(' ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo+',');
   Add(' DATA_ULTIMA_ALTERACAO=CURRENT_TIMESTAMP,');
   Add(' ID_ULTIMO_USUARIO_ALTERACAO='+vIdUserLogado+',');
   Add(' TIPO_SAIDA=''VENDA''');
   if OBSERVACAO.Length>0 then
    Add(' ,OBSERVACAO='+OBSERVACAO.QuotedString);
   Add('WHERE STATUS=1 AND (ID ='+ ID_ANIMAL+')');
   try
    ExecSQL;
   if PesoSaida<>'0' then
    InserePeso(ID_ANIMAL,vIdUserLogado,PesoSaida,'SAIDA',ID_PRODUTOR,IdLoteSaida,ID_LOCAL,
       FormatDateTime('mm/dd/yyyy',date).QuotedString,frmPrincipal.vIdBaseCampo)
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.UpdateAnimalSaidaBaseCampo(ID_ANIMAL, ID_USUARIO,
  IdVeiculo, PesoSaida, IdLoteSaida, ID_PRODUTOR, ID_LOCAL, OBSERVACAO,
  DATA_ULTIMA_ALTERACAO, ID_USUARIO_ALTERACAO,DATA_SAIDA: string);
var
 vQryAux :TFDQuery;
 VidProdDestino:string;
 vDATA_ULTIMA_ALTERACAO :TDateTime;
begin
 VidProdDestino := RetornaIdProdutorLS(IdLoteSaida);
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL');
   Add('SET STATUS = 2'+',');
   Add(' ID_LOTESAIDA = '+IdLoteSaida+',');
   Add(' ID_VEICULO_SAIDA = '+IdVeiculo+',');
   Add(' DATA_SAIDA ='+FormatDateTime('mm/dd/yyyy',strToDate(DATA_SAIDA)).QuotedString+',');
   Add(' PESO_SAIDA = '+StringReplace(PesoSaida,',','.',[rfReplaceAll])+',');
   Add(' ID_PRODUTOR_DESTINO_SAIDA='+VidProdDestino+',');
   Add(' ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo+',');
   if TryStrToDateTime(DATA_ULTIMA_ALTERACAO,vDATA_ULTIMA_ALTERACAO) then
    Add(' DATA_ULTIMA_ALTERACAO='+FormatDateTime('mm/dd/yyyy hh:mm:ss',vDATA_ULTIMA_ALTERACAO).QuotedString+',');
   Add(' ID_ULTIMO_USUARIO_ALTERACAO='+ID_USUARIO_ALTERACAO+',');
   Add(' TIPO_SAIDA=''VENDA''');
   if OBSERVACAO.Length>0 then
    Add(' ,OBSERVACAO='+OBSERVACAO.QuotedString);
   Add('WHERE STATUS=1 AND (ID ='+ ID_ANIMAL+')');
   try
    vQryAux.SQL.Text;
    ExecSQL;
    InserePeso(ID_ANIMAL,vIdUserLogado,PesoSaida,'SAIDA',ID_PRODUTOR,IdLoteSaida,ID_LOCAL,
       FormatDateTime('mm/dd/yyyy',date).QuotedString,frmPrincipal.vIdBaseCampo)
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.UpdateGta(ID,NUMERO, SERIE, UF, DATA_EMISSAO, DATA_VALIDADE,
  ZERO_A_12_FEMEA, ZERO_A_12_MACHO, TREZE_A_24_FEMEA, TREZE_A_24_MACHO,
  VITE_CINCO_A_36_FEMEA, VITE_CINCO_A_36_MACHO, MAIS_36_FEMEA, MAIS_36_MACHO,
  USER_ID, TIPO, ID_PROPRIEDADE_ORIGEM, ID_PRODUTOR_ORIGEM,
  ID_PROPRIEDADE_DESTINO, ID_PRODUTOR_DESTINO,VALOR_CAB,RASTREADOS,VALOR_FRETE_CAB,VALOR_COMISSAO_CAB,
  PESO_B_ORIGEM,PESO_B_DESTINO,ID_COMPRADOR,ID_VEICULO_SAIDA,CHECA_ESTOQUE_CHIP:string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE GTA');
   Add('SET NUMERO = '+NUMERO+',');
   Add(' SERIE = '+SERIE+',');
   Add(' UF = '+UF+',');
   Add(' DATA_EMISSAO = '+DATA_EMISSAO+',');
   Add(' DATA_VALIDADE = '+DATA_VALIDADE+',');
   Add(' ZERO_A_12_FEMEA ='+ZERO_A_12_FEMEA+',');
   Add(' ZERO_A_12_MACHO ='+ZERO_A_12_MACHO+',');
   Add(' TREZE_A_24_FEMEA ='+TREZE_A_24_FEMEA+',');
   Add(' TREZE_A_24_MACHO ='+TREZE_A_24_MACHO+',');
   Add(' VITE_CINCO_A_36_FEMEA = '+VITE_CINCO_A_36_FEMEA+',');
   Add(' VITE_CINCO_A_36_MACHO = '+VITE_CINCO_A_36_MACHO+',');
   Add(' MAIS_36_FEMEA ='+MAIS_36_FEMEA+',');
   Add(' MAIS_36_MACHO ='+MAIS_36_MACHO+',');
   Add(' USER_ID = '+USER_ID+',');
   Add(' ID_PROPRIEDADE_ORIGEM ='+ID_PROPRIEDADE_ORIGEM+',');
   Add(' ID_PRODUTOR_ORIGEM = '+ID_PRODUTOR_ORIGEM+',');
   Add(' ID_PROPRIEDADE_DESTINO = '+ID_PROPRIEDADE_DESTINO+',');
   Add(' ID_PRODUTOR_DESTINO = '+ID_PRODUTOR_DESTINO+',');
   Add(' VALOR_CAB= '+VALOR_CAB+',');
   Add(' RASTREADO= '+RASTREADOS+',');
   Add(' ID_USUARIO_ALTERACAO='+vIdUserLogado+',');
   Add(' VALOR_FRETE_CAB='+VALOR_FRETE_CAB+',');
   Add(' VALOR_COMISSAO_CAB='+VALOR_COMISSAO_CAB+',');
   Add(' PESO_B_ORIGEM='+PESO_B_ORIGEM+',');
   Add(' PESO_B_DESTINO='+PESO_B_DESTINO+',');
   Add(' ID_COMPRADOR='+ID_COMPRADOR+',');
   Add(' ID_VEICULO_SAIDA='+ID_VEICULO_SAIDA+',');
   Add(' DATA_ALTERACAO= CURRENT_TIMESTAMP,');
   Add(' ESTOQUE_CHIP='+CHECA_ESTOQUE_CHIP);
   Add('WHERE status=1 and (ID ='+ ID+')');
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InativaAnimal(id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET STATUS=-1,ULTIMO_USUARIO='+vIdUserLogado);
   Add(',ULTIMA_ALTERACAO='+FormatDateTime('mm/dd/yyyy hh:mm:ss',now).QuotedString);
   Add('WHERE ID='+id);
   try
    ExecSQL;
    InsereLogAnimal(ID,vIdUserLogado);
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
   Clear;
   Add('UPDATE ESTOQUE_BRINCOS SET USADO=0');
   Add('WHERE SISBOV=(SELECT IDENTIFICACAO_2 FROM ANIMAL WHERE ID='+id+')');
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InativaReprocessamento(idAnimal,idPesagem,DataReproc,
  idLocalAtual: string);
var
 vQryAux :TFDQuery;
 vCurralOrigem:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM MOVIMENTACAO_ANIMAL');
   Add('WHERE ID_ANIMAL=:ID_ANIMAL AND DATA=:DATA');
   Add('AND ID_PASTO_DESTINO=:ID_PASTO_DESTINO');
   ParamByName('ID_ANIMAL').AsString       := idAnimal;
   ParamByName('DATA').AsDate              := strToDate(DataReproc);
   ParamByName('ID_PASTO_DESTINO').AsString := idLocalAtual;
   Open;
   vCurralOrigem := FieldByName('ID_PASTO_ORIGEM').AsString;

   if idPesagem.Length>0 then
   begin
    Clear;
    Add('UPDATE ANIMAL_PESO SET STATUS =-1');
    Add('WHERE ID='+idPesagem);
    ExecSQL;
   end;

   if vCurralOrigem.Length>0 then
   begin
    Clear;
    Add('UPDATE ANIMAL SET ID_LOCAL='+vCurralOrigem);
    Add('WHERE ID='+idAnimal);
    ExecSQL;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InativaRetiro(id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE RETIRO SET STATUS=-1');
   Add('WHERE ID='+id);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InativaFornecimento(Id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE FORNECIMENTO SET STATUS=-1');
   Add(',ID_USUARIO_ALTERACAO='+vIdUserLogado);
   Add(',DATA_ALTERACAO=current_timestamp');
   Add('WHERE ID='+Id);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InativaKey;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE KEYFIELD SET STATUS=-1');
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InativaNF(IdEntrada: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ESTOQUE_MINERAL_ENTRADA SET STATUS=-1');
   Add('WHERE STATUS=1 AND ID='+IdEntrada);
   Add('AND ID_PROPRIEDADE='+vIdPropriedade);
   try
    ExecSQL;

    Clear;
    Add('DELETE FROM  HIST_VALOR_INSUMOS');
    Add('WHERE ID_ULTIMA_NF_ENTRADA='+IdEntrada);
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereAnimal(ID_LOCAL, ID_CATEGORIA, ID_RACA,DATA_PROC,IDADE_MESES,
    PESO_ENTRADA,ID_PRODUTOR,ID_PRODUTOR_ORIGEM,IDGTA,OBS,IDENTIFICACAO_1,IDENTIFICACAO_2,vValorCompra,
    TIPO_ENTRADA,ORIGEM_DADOS,ID_REBANHO,ID_LOTE,ID_CONTRATO,TIPO_CURRAL,DESTINO,TIPO_APARTACAO:string);
var
 vQryAux :TFDQuery;
begin
// vValorCompra := StringReplace(vValorCompra,'.','',[rfReplaceAll]);
// vValorCompra := StringReplace(vValorCompra,',','.',[rfReplaceAll]);
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 try
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('INSERT INTO ANIMAL(');
     Add('ID_LOCAL,');
     Add('IDENTIFICACAO_1,');
     Add('IDENTIFICACAO_2,');
     Add('ID_CATEGORIA,');
     Add('ID_RACA,');
     Add('DATA_PROC,');
     Add('IDADE_MESES,');
     Add('PESO_ENTRADA,');
     Add('ID_USUARIO,');
     Add('ID_PROPRIEDADE,');
     Add('ID_PRODUTOR,');
     Add('ID_PRODUTOR_ORIGEM,');
     Add('GTA_ID,');
     Add('OBSERVACAO,');
     Add('VALOR_COMPRA,');
     Add('DATA_ULTIMA_ALTERACAO,');
     Add('ID_ULTIMO_USUARIO_ALTERACAO');
     if frmPrincipal.vMov=5  then
      Add(',OUTRO_ERAS');
     Add(',TIPO_ENTRADA');
     Add(',ORIGEM_DADOS');
     Add(',ID_CATEGORIA_ATUAL');
     Add(',PESO_ESTIMADO');
     Add(',ID_REBANHO');
     if ID_LOTE.Length>0 then
      Add(',ID_LOTE');
     Add(',ID_CONTRATO');
     if TIPO_CURRAL='1' then
     begin
      Add(',PESO_ENTRADA_CONF');
      Add(',DATA_ENTRADA_CONF');
     end;
     Add(',ID_BASE_CAMPO');
     Add(',BASE_CAMPO_TIPO_OPERACAO');
     if DESTINO.Length>0 then
      Add(',DESTINO');
     Add(',TIPO_APARTACAO');
     Add(')VALUES(');
     Add(':ID_LOCAL,');
     Add(':IDENTIFICACAO_1,');
     Add(':IDENTIFICACAO_2,');
     Add(':ID_CATEGORIA,');
     Add(':ID_RACA,');
     Add(':DATA_PROC,');
     Add(':IDADE_MESES,');
     Add(':PESO_ENTRADA,');
     Add(':ID_USUARIO,');
     Add(':ID_PROPRIEDADE,');
     Add(':ID_PRODUTOR,');
     Add(':ID_PRODUTOR_ORIGEM,');
     Add(':GTA_ID,');
     Add(':OBSERVACAO,');
     Add(':VALOR_COMPRA,');
     Add(':DATA_ULTIMA_ALTERACAO,');
     Add(':ID_ULTIMO_USUARIO_ALTERACAO');
     if frmPrincipal.vMov=5  then
      Add(',:OUTRO_ERAS');
     Add(',:TIPO_ENTRADA');
     Add(',:ORIGEM_DADOS');
     Add(',:ID_CATEGORIA_ATUAL');
     Add(',:PESO_ESTIMADO');
     Add(',:ID_REBANHO');
     if ID_LOTE.Length>0 then
      Add(',:ID_LOTE');
     if ID_CONTRATO.Length>0 then
      Add(',:ID_CONTRATO')
     else
      Add(',0');
     if TIPO_CURRAL='1' then
     begin
      Add(',:PESO_ENTRADA_CONF');
      Add(',:DATA_ENTRADA_CONF');
     end;
     Add(',:ID_BASE_CAMPO');
     Add(',0');
     if DESTINO.Length>0 then
      Add(',:DESTINO');
     Add(',:TIPO_APARTACAO');
     Add(')');
     ParamByName('ID_LOCAL').AsString               :=ID_LOCAL;
     if IDENTIFICACAO_1.Length=0 then
      ParamByName('IDENTIFICACAO_1').Value          :=NULL
     else
      ParamByName('IDENTIFICACAO_1').AsString       :=IDENTIFICACAO_1;

     if IDENTIFICACAO_2.Length=0 then
      ParamByName('IDENTIFICACAO_2').Value          :=NULL
     else
      ParamByName('IDENTIFICACAO_2').AsString       :=IDENTIFICACAO_2;
     ParamByName('ID_CATEGORIA').AsString           :=ID_CATEGORIA;
     ParamByName('ID_RACA').AsString                :=ID_RACA;
     ParamByName('DATA_PROC').AsString              :=DATA_PROC;
     ParamByName('IDADE_MESES').AsString            :=IDADE_MESES;
     ParamByName('PESO_ENTRADA').AsString           :=PESO_ENTRADA;
     ParamByName('ID_USUARIO').AsString             :=vIdUserLogado;
     ParamByName('ID_PROPRIEDADE').AsString         :=vIdPropriedade;
     ParamByName('ID_PRODUTOR').AsString            :=ID_PRODUTOR;
     ParamByName('ID_PRODUTOR_ORIGEM').AsString     :=ID_PRODUTOR_ORIGEM;
     if IDGTA.Length>0 then
      ParamByName('GTA_ID').AsString                 :=IDGTA
     ELSE
      ParamByName('GTA_ID').AsString                 :='0';

     ParamByName('OBSERVACAO').AsString             :=OBS;
     ParamByName('VALOR_COMPRA').AsString           :=vValorCompra;
     ParamByName('DATA_ULTIMA_ALTERACAO').AsString  :=DATA_PROC;
     ParamByName('ID_ULTIMO_USUARIO_ALTERACAO').AsString     :=vIdUserLogado;
     if frmPrincipal.vMov=5  then
      ParamByName('OUTRO_ERAS').AsInteger            :=1;
     ParamByName('TIPO_ENTRADA').AsString            :=TIPO_ENTRADA;
     ParamByName('ORIGEM_DADOS').AsString            :=ORIGEM_DADOS;
     ParamByName('ID_CATEGORIA_ATUAL').AsString      :=ID_CATEGORIA;
     ParamByName('PESO_ESTIMADO').AsString           :=PESO_ENTRADA;
     ParamByName('ID_REBANHO').AsString              :=ID_REBANHO;
     if ID_LOTE.Length>0 then
      ParamByName('ID_LOTE').AsString                :=ID_LOTE;
      ParamByName('ID_CONTRATO').AsString            :=ID_CONTRATO;
     if TIPO_CURRAL='1' then
     begin
      ParamByName('PESO_ENTRADA_CONF').AsString      :=PESO_ENTRADA;
      ParamByName('DATA_ENTRADA_CONF').AsString      :=DATA_PROC;
     end;
     ParamByName('ID_BASE_CAMPO').AsString           :=frmPrincipal.vIdBaseCampo;
     if DESTINO.Length>0 then
      ParamByName('DESTINO').AsString                :=DESTINO;
      ParamByName('TIPO_APARTACAO').AsString         :=TIPO_APARTACAO;
     vQryAux.SQL.Text;
     try
      ExecSQL;
      InsereLogAnimal(RetornaMaxIDAnimal(),vIdUserLogado);
     EXCEPT
      on E : Exception do
      TThread.Synchronize(nil,procedure
      begin
       ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end);
     end;
   end;
 except
 on E : Exception do
  TThread.Synchronize(nil,procedure
  begin
   ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end);
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereAnimalBaseCampo(ID_LOCAL, ID_CATEGORIA, ID_RACA,
  DATA_PROC, IDADE_MESES, PESO_ENTRADA, ID_PRODUTOR, ID_PRODUTOR_ORIGEM, IDGTA,
  OBS, IDENTIFICACAO_1, IDENTIFICACAO_2, vValorCompra, TIPO_ENTRADA,
  ORIGEM_DADOS, ID_REBANHO, ID_LOTE, ID_CONTRATO, TIPO_CURRAL,
  DATA_REG: string);
var
 vQryAux :TFDQuery;
begin
 vValorCompra := StringReplace(vValorCompra,'.','',[rfReplaceAll]);
 vValorCompra := StringReplace(vValorCompra,',','.',[rfReplaceAll]);
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 try
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('INSERT INTO ANIMAL(');
     Add('ID_LOCAL,');
     Add('IDENTIFICACAO_1,');
     Add('IDENTIFICACAO_2,');
     Add('ID_CATEGORIA,');
     Add('ID_RACA,');
     Add('DATA_PROC,');
     Add('IDADE_MESES,');
     Add('PESO_ENTRADA,');
     Add('ID_USUARIO,');
     Add('ID_PROPRIEDADE,');
     Add('ID_PRODUTOR,');
     Add('ID_PRODUTOR_ORIGEM,');
     Add('GTA_ID,');
     Add('OBSERVACAO,');
     Add('VALOR_COMPRA,');
     Add('DATA_ULTIMA_ALTERACAO,');
     Add('ID_ULTIMO_USUARIO_ALTERACAO');
     if frmPrincipal.vMov=5  then
      Add(',OUTRO_ERAS');
     Add(',TIPO_ENTRADA');
     Add(',ORIGEM_DADOS');
     Add(',ID_CATEGORIA_ATUAL');
     Add(',PESO_ESTIMADO');
     Add(',ID_REBANHO');
     if ID_LOTE.Length>0 then
      Add(',ID_LOTE');
     Add(',ID_CONTRATO');
     if TIPO_CURRAL='1' then
     begin
      Add(',PESO_ENTRADA_CONF');
      Add(',DATA_ENTRADA_CONF');
     end;
     Add(',ID_BASE_CAMPO');
     Add(',BASE_CAMPO_TIPO_OPERACAO');
     Add(',DATAREG');
     Add(')VALUES(');
     Add(':ID_LOCAL,');
     Add(':IDENTIFICACAO_1,');
     Add(':IDENTIFICACAO_2,');
     Add(':ID_CATEGORIA,');
     Add(':ID_RACA,');
     Add(':DATA_PROC,');
     Add(':IDADE_MESES,');
     Add(':PESO_ENTRADA,');
     Add(':ID_USUARIO,');
     Add(':ID_PROPRIEDADE,');
     Add(':ID_PRODUTOR,');
     Add(':ID_PRODUTOR_ORIGEM,');
     Add(':GTA_ID,');
     Add(':OBSERVACAO,');
     Add(':VALOR_COMPRA,');
     Add(':DATA_ULTIMA_ALTERACAO,');
     Add(':ID_ULTIMO_USUARIO_ALTERACAO');
     if frmPrincipal.vMov=5  then
      Add(',:OUTRO_ERAS');
     Add(',:TIPO_ENTRADA');
     Add(',:ORIGEM_DADOS');
     Add(',:ID_CATEGORIA_ATUAL');
     Add(',:PESO_ESTIMADO');
     Add(',:ID_REBANHO');
     if ID_LOTE.Length>0 then
      Add(',:ID_LOTE');
     if ID_CONTRATO.Length>0 then
      Add(',:ID_CONTRATO')
     else
      Add(',0');
     if TIPO_CURRAL='1' then
     begin
      Add(',:PESO_ENTRADA_CONF');
      Add(',:DATA_ENTRADA_CONF');
     end;
     Add(',:ID_BASE_CAMPO');
     Add(',0');
     Add(',:DATAREG');
     Add(')');
     ParamByName('ID_LOCAL').AsString               :=ID_LOCAL;
     if IDENTIFICACAO_1.Length=0 then
      ParamByName('IDENTIFICACAO_1').Value          :=NULL
     else
      ParamByName('IDENTIFICACAO_1').AsString       :=IDENTIFICACAO_1;

     if IDENTIFICACAO_2.Length=0 then
      ParamByName('IDENTIFICACAO_2').Value          :=NULL
     else
      ParamByName('IDENTIFICACAO_2').AsString       :=IDENTIFICACAO_2;
     ParamByName('ID_CATEGORIA').AsString           :=ID_CATEGORIA;
     ParamByName('ID_RACA').AsString                :=ID_RACA;
     ParamByName('DATA_PROC').AsString              :=DATA_PROC;
     ParamByName('IDADE_MESES').AsString            :=IDADE_MESES;
     ParamByName('PESO_ENTRADA').AsString           :=PESO_ENTRADA;
     ParamByName('ID_USUARIO').AsString             :=vIdUserLogado;
     ParamByName('ID_PROPRIEDADE').AsString         :=vIdPropriedade;
     ParamByName('ID_PRODUTOR').AsString            :=ID_PRODUTOR;
     ParamByName('ID_PRODUTOR_ORIGEM').AsString     :=ID_PRODUTOR_ORIGEM;
     if IDGTA.Length>0 then
      ParamByName('GTA_ID').AsString                 :=IDGTA
     ELSE
      ParamByName('GTA_ID').AsString                 :='0';

     ParamByName('OBSERVACAO').AsString             :=OBS;
     ParamByName('VALOR_COMPRA').AsString           :=vValorCompra;
     ParamByName('DATA_ULTIMA_ALTERACAO').AsString  :=DATA_PROC;
     ParamByName('ID_ULTIMO_USUARIO_ALTERACAO').AsString     :=vIdUserLogado;
     if frmPrincipal.vMov=5  then
      ParamByName('OUTRO_ERAS').AsInteger            :=1;
     ParamByName('TIPO_ENTRADA').AsString            :=TIPO_ENTRADA;
     ParamByName('ORIGEM_DADOS').AsString            :=ORIGEM_DADOS;
     ParamByName('ID_CATEGORIA_ATUAL').AsString      :=ID_CATEGORIA;
     ParamByName('PESO_ESTIMADO').AsString           :=PESO_ENTRADA;
     ParamByName('ID_REBANHO').AsString              :=ID_REBANHO;
     if ID_LOTE.Length>0 then
      ParamByName('ID_LOTE').AsString                :=ID_LOTE;
      ParamByName('ID_CONTRATO').AsString            :=ID_CONTRATO;
     if TIPO_CURRAL='1' then
     begin
      ParamByName('PESO_ENTRADA_CONF').AsString      :=PESO_ENTRADA;
      ParamByName('DATA_ENTRADA_CONF').AsString      :=DATA_PROC;
     end;
     ParamByName('ID_BASE_CAMPO').AsString           :=frmPrincipal.vIdBaseCampo;
     ParamByName('DATAREG').AsDateTime               :=StrToDateTime(DATA_REG);
     vQryAux.SQL.Text;
     try
      ExecSQL;
      InsereLogAnimal(RetornaMaxIDAnimal(),vIdUserLogado);
     EXCEPT
      on E : Exception do
      TThread.Synchronize(nil,procedure
      begin
       ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end);
     end;
   end;
 except
 on E : Exception do
  TThread.Synchronize(nil,procedure
  begin
   ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end);
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereAnimalNascimento(ID_LOCAL, ID_CATEGORIA, ID_RACA,
  IDENTIFICACAO_1, IDENTIFICACAO_2, DATA_PROC, IDADE_MESES, PESO_ENTRADA,
  ULTIMO_PESO, DATA_ULTIMO_PESO, ID_USUARIO, ID_PROPRIEDADE, ID_PRODUTOR,
  ORIGEM_DADOS, idComunincadoNasci, IDENTIFICACAO_MAE,
  CARIMBO_NASCIMENTO: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO ANIMAL (ID_LOCAL, ID_CATEGORIA, ID_RACA, IDENTIFICACAO_1,');
   Add('IDENTIFICACAO_2, DATA_PROC, ID_COM_NASCIMENTO, IDADE_MESES, PESO_ENTRADA, ULTIMO_PESO,');
   Add('DATA_ULTIMO_PESO,ID_USUARIO,ID_PROPRIEDADE, ID_PRODUTOR,ORIGEM_DADOS,IDENTIFICACAO_MAE,CARIMBO_NASCIMENTO)VALUES (');
   Add(ID_LOCAL+',');
   Add(ID_CATEGORIA+',');
   Add(ID_RACA+',');
   Add(IDENTIFICACAO_1.QuotedString+',');
   Add(IDENTIFICACAO_2.QuotedString+',');
   Add(DATA_PROC.QuotedString+',');
   Add(idComunincadoNasci+',');
   Add(IDADE_MESES+',');
   Add(PESO_ENTRADA+',');
   Add(ULTIMO_PESO+',');
   Add(DATA_ULTIMO_PESO.QuotedString+',');
   Add(ID_USUARIO+',');
   Add(ID_PROPRIEDADE+',');
   Add(ID_PRODUTOR+',');
   Add(QuotedStr('NASCIMENTO')+',');
   Add(IDENTIFICACAO_MAE+',');
   Add(CARIMBO_NASCIMENTO+')');
   vQryAux.SQL.Text;
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+'Erro ao inserir Nascimento : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereEntradaEstoque(ID_MINERAL, ID_USUARIO, DATA_ENTRADA,
  NUMERO_NF, EMISSAO_NF, VALOR_TOTRAL_NF, PESO_TOTAL_NF, VALOR_KG_NF,
  PESO_FAZENDA, QUEBRA_KG, TIPO_EMBALAGEM, PESO_EMBALAGEM,
  ID_FORNECEDOR,vTipo,vObs: string);
var
 vQryAux :TFDQuery;
begin
 if PESO_EMBALAGEM.Length=0 then
  PESO_EMBALAGEM :='0';

 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO ESTOQUE_MINERAL_ENTRADA(');
   if vTipo='P' then
    Add('ID_MINERAL,')
   else
    Add('ID_ALIMENTO,');
   Add('ID_USUARIO,');
   Add('DATA_ENTRADA,');
   Add('NUMERO_NF,');
   Add('EMISSAO_NF,');
   Add('VALOR_TOTRAL_NF,');
   Add('PESO_TOTAL_NF,');
   Add('PESO_FAZENDA,');
   Add('TIPO_EMBALAGEM,');
   Add('PESO_EMBALAGEM,');
   Add('ID_FORNECEDOR,');
   Add('ID_PROPRIEDADE,');
   Add('OBSERVACAO');
   Add(')VALUES(');
   Add(':ID_MINERAL,');
   Add(':ID_USUARIO,');
   Add(':DATA_ENTRADA,');
   Add(':NUMERO_NF,');
   Add(':EMISSAO_NF,');
   Add(':VALOR_TOTRAL_NF,');
   Add(':PESO_TOTAL_NF,');
   Add(':PESO_FAZENDA,');
   Add(':TIPO_EMBALAGEM,');
   Add(':PESO_EMBALAGEM,');
   Add(':ID_FORNECEDOR,');
   Add(':ID_PROPRIEDADE,');
   Add(':OBSERVACAO)');
   ParamByName('ID_MINERAL').AsString :=ID_MINERAL;
   ParamByName('ID_USUARIO').AsString :=ID_USUARIO;
   ParamByName('DATA_ENTRADA').AsString :=DATA_ENTRADA;
   ParamByName('NUMERO_NF').AsString :=NUMERO_NF;
   ParamByName('EMISSAO_NF').AsString :=EMISSAO_NF;
   ParamByName('VALOR_TOTRAL_NF').AsString :=VALOR_TOTRAL_NF;
   ParamByName('PESO_TOTAL_NF').AsString :=PESO_TOTAL_NF;
   ParamByName('PESO_FAZENDA').AsString :=PESO_FAZENDA;
   ParamByName('TIPO_EMBALAGEM').AsString :=TIPO_EMBALAGEM;
   ParamByName('PESO_EMBALAGEM').AsString :=PESO_EMBALAGEM;
   ParamByName('ID_FORNECEDOR').AsString :=ID_FORNECEDOR;
   ParamByName('ID_PROPRIEDADE').AsString :=vIdPropriedade;
   ParamByName('OBSERVACAO').AsString :=vObs;
   try
     ExecSQL;
   except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereFarmacoProtocolo(IdProtocolo, IdFarmaco, TipoDosagem,
  DoseFixaML, DosePesoML, DosePesoKG,CarenciDias: String);
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('INSERT INTO PROTOCOLO_FARMACOS(ID_FARMACO,TIPO_DOSAGEM,ID_USUARIO,DOSE_FIXA_ML,DOSE_PESO_ML,DOSE_PESO_KG,ID_PROTOCOLO,CARENCIA_DIAS)VALUES');
  Add('(:ID_FARMACO,:TIPO_DOSAGEM,:ID_USUARIO,:DOSE_FIXA_ML,:DOSE_PESO_ML,:DOSE_PESO_KG,:ID_PROTOCOLO,:CARENCIA_DIAS)');
  ParamByName('ID_FARMACO').AsString    := IdFarmaco;
  ParamByName('TIPO_DOSAGEM').AsString  := TipoDosagem;
  ParamByName('ID_USUARIO').AsString    := vIdUserLogado;
  ParamByName('DOSE_FIXA_ML').AsString  := DoseFixaML;
  ParamByName('DOSE_PESO_ML').AsString  := DosePesoML;
  ParamByName('DOSE_PESO_KG').AsString  := DosePesoKG;
  ParamByName('ID_PROTOCOLO').AsString  := IdProtocolo;
  ParamByName('CARENCIA_DIAS').AsString := CarenciDias;
  try
    vQryAux.ExecSQL;
  except
  on E : Exception do
     ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereFornecimentoCab(VDATA,ID_PASTO,ID_FORN,ID_MINERAL,QTD_FORN_TOTAL,
  VALOR_KG, QTD_CAB: string);
var
 vQryAux,vQryAuxInsert :TFDQuery;
 vQtdFornCab,vValorFornCab:Double;
 vQtdFornCabS,vValorFornCabS,vIdAnimal:String;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAuxInsert := TFDQuery.Create(nil);
 vQryAuxInsert.Connection := fCon;
 vQtdFornCab   := strToFloat(QTD_FORN_TOTAL) / StrToFloat(QTD_CAB);
 vValorFornCab := vQtdFornCab * strToFloat(VALOR_KG);
 vQtdFornCabS   := FormatFloat('0.00',vQtdFornCab);
 vValorFornCabS := FormatFloat('0.00',vValorFornCab);
 with vQryAux,vQryAux.SQL do
 begin
   if VDATA= FormatDateTime('mm/dd/yyyy',date) then
   begin
     Clear;
     Add('SELECT');
     Add('*');
     Add('FROM animal A');
     Add('where A.ID_LOCAL='+ID_PASTO+ ' AND STATUS=1');
     Add('and a.data_proc<='+VDATA.QuotedString);
     Open;
     while not vQryAux.Eof do
     begin
       vIdAnimal :=  vQryAux.FieldByName('ID').AsString;
      with vQryAuxInsert,vQryAuxInsert.SQL do
      begin
       Clear;
       Add('INSERT INTO ANIMAL_FORNECIMENTO(');
       Add('DATA,');
       Add('ID_FORNECIMENTO,');
       Add('KG_CAB,');
       Add('VALOR_FORN,');
       Add('ID_MINERAL,');
       Add('ID_ANIMAL,');
       Add('ID_PASTO)');
       Add('VALUES(');
       Add(':DATA,');
       Add(':ID_FORNECIMENTO,');
       Add(':KG_CAB,');
       Add(':VALOR_FORN,');
       Add(':ID_MINERAL,');
       Add(':ID_ANIMAL,');
       Add(':ID_PASTO)');
       ParamByName('DATA').AsString            :=VDATA;
       ParamByName('ID_FORNECIMENTO').AsString :=ID_FORN;
       ParamByName('KG_CAB').AsString          :=StringReplace(vQtdFornCabS,',','.',[rfReplaceAll]);
       ParamByName('VALOR_FORN').AsString      :=StringReplace(vValorFornCabS,',','.',[rfReplaceAll]);
       ParamByName('ID_MINERAL').AsString      :=ID_MINERAL;
       ParamByName('ID_ANIMAL').AsString       :=vIdAnimal;
       ParamByName('ID_PASTO').AsString        :=ID_PASTO;
       try
        vQryAuxInsert.ExecSQL;
        vQryAux.Next;
       except
       on E : Exception do
         ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
       end;
      end;
     end;
   end
   else
   begin
     Clear;
     Add('SELECT * FROM HIST_ANIMAL_LOCAL_DIA');
     Add('WHERE ID_LOCAL='+ID_PASTO);
     Add('AND "DATA"='+VDATA.QuotedString);
     Open;
     while not vQryAux.Eof do
     begin
       vIdAnimal :=  vQryAux.FieldByName('ID_ANIMAL').AsString;
      with vQryAuxInsert,vQryAuxInsert.SQL do
      begin
       Clear;
       Add('INSERT INTO ANIMAL_FORNECIMENTO(');
       Add('DATA,');
       Add('ID_FORNECIMENTO,');
       Add('KG_CAB,');
       Add('VALOR_FORN,');
       Add('ID_MINERAL,');
       Add('ID_ANIMAL,');
       Add('ID_PASTO)');
       Add('VALUES(');
       Add(':DATA,');
       Add(':ID_FORNECIMENTO,');
       Add(':KG_CAB,');
       Add(':VALOR_FORN,');
       Add(':ID_MINERAL,');
       Add(':ID_ANIMAL,');
       Add(':ID_PASTO)');

       ParamByName('DATA').AsString            :=VDATA;
       ParamByName('ID_FORNECIMENTO').AsString :=ID_FORN;
       ParamByName('KG_CAB').AsString          :=StringReplace(vQtdFornCabS,',','.',[rfReplaceAll]);
       ParamByName('VALOR_FORN').AsString      :=StringReplace(vValorFornCabS,',','.',[rfReplaceAll]);
       ParamByName('ID_MINERAL').AsString      :=ID_MINERAL;
       ParamByName('ID_ANIMAL').AsString       :=vIdAnimal;
       ParamByName('ID_PASTO').AsString        :=ID_PASTO;
       try
        vQryAuxInsert.ExecSQL;
        vQryAux.Next;
       except
       on E : Exception do
         ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
       end;
      end;
     end;
   end;
 end;
 vQryAux.Free;
 vQryAuxInsert.Free;
end;

procedure TserviceDB.InsereGta(NUMERO, SERIE, UF, DATA_EMISSAO, DATA_VALIDADE,
  ZERO_A_12_FEMEA, ZERO_A_12_MACHO, TREZE_A_24_FEMEA, TREZE_A_24_MACHO,
  VITE_CINCO_A_36_FEMEA, VITE_CINCO_A_36_MACHO, MAIS_36_FEMEA, MAIS_36_MACHO,
  USER_ID, TIPO, ID_PROPRIEDADE_ORIGEM, ID_PRODUTOR_ORIGEM,
  ID_PROPRIEDADE_DESTINO, ID_PRODUTOR_DESTINO,VALOR_CAB,RASTREADOS,
  VALOR_FRETE_CAB,VALOR_COMISSAO_CAB,PESO_B_ORIGEM,PESO_B_DESTINO,ID_COMPRADOR,
  ID_VEICULO_SAIDA,CHECA_ESTOQUE_CHIP:string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO GTA (NUMERO, SERIE, UF, DATA_EMISSAO, DATA_VALIDADE,');
   Add('ZERO_A_12_FEMEA, ZERO_A_12_MACHO, TREZE_A_24_FEMEA, TREZE_A_24_MACHO,');
   Add('VITE_CINCO_A_36_FEMEA, VITE_CINCO_A_36_MACHO, MAIS_36_FEMEA, MAIS_36_MACHO,');
   Add('USER_ID,TIPO, ID_PROPRIEDADE_ORIGEM, ID_PRODUTOR_ORIGEM,');
   Add('ID_PROPRIEDADE_DESTINO, ID_PRODUTOR_DESTINO,VALOR_CAB,RASTREADO,VALOR_FRETE_CAB,');
   Add('VALOR_COMISSAO_CAB,PESO_B_ORIGEM,PESO_B_DESTINO,ID_COMPRADOR,ID_BASE_CAMPO,');
   Add('BASE_CAMPO_SYNC,ID_VEICULO_SAIDA,');
   Add('ESTOQUE_CHIP');
   Add(')VALUES(');
   Add(NUMERO+',');
   Add(SERIE+',');
   Add(UF+',');
   Add(DATA_EMISSAO+',');
   Add(DATA_VALIDADE+',');
   Add(ZERO_A_12_FEMEA+',');
   Add(ZERO_A_12_MACHO+',');
   Add(TREZE_A_24_FEMEA+',');
   Add(TREZE_A_24_MACHO+',');
   Add(VITE_CINCO_A_36_FEMEA+',');
   Add(VITE_CINCO_A_36_MACHO+',');
   Add(MAIS_36_FEMEA+',');
   Add(MAIS_36_MACHO+',');
   Add(USER_ID+',');
   Add(TIPO+',');
   Add(ID_PROPRIEDADE_ORIGEM+',');
   Add(ID_PRODUTOR_ORIGEM+',');
   Add(ID_PROPRIEDADE_DESTINO+',');
   Add(ID_PRODUTOR_DESTINO+',');
   Add(VALOR_CAB+',');
   Add(RASTREADOS+',');
   Add(VALOR_FRETE_CAB+',');
   Add(VALOR_COMISSAO_CAB+',');
   Add(PESO_B_ORIGEM+',');
   Add(PESO_B_DESTINO+',');
   Add(ID_COMPRADOR+',');
   Add(frmPrincipal.vIdBaseCampo+',');
   if frmPrincipal.vIdBaseCampo='0' then
    Add('1,')
   else
    Add('0,');
   Add(ID_VEICULO_SAIDA+',');
   Add(CHECA_ESTOQUE_CHIP);
   Add(')');
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereLogAnimal(idAnimal, idUsuario: string);

var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT a.* FROM ANIMAL A');
   Add('WHERE ID='+idAnimal);
   Open;
   if not IsEmpty then
   begin
     try
      TInsereLog.Close;
      TInsereLog.Open;
      TInsereLog.Insert;
      TInsereLog.FieldByName('ID').AsString:=	vQryAux.FieldByName('ID').AsString;
      TInsereLog.FieldByName('ID_LOCAL').AsString:=	vQryAux.FieldByName('ID_LOCAL').AsString;
      TInsereLog.FieldByName('ID_CATEGORIA').AsString:=	vQryAux.FieldByName('ID_CATEGORIA').AsString;
      TInsereLog.FieldByName('ID_RACA').AsString:=	vQryAux.FieldByName('ID_RACA').AsString;
      TInsereLog.FieldByName('IDENTIFICACAO_1').AsString:=	vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
      TInsereLog.FieldByName('IDENTIFICACAO_2').AsString:=	vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
      TInsereLog.FieldByName('DATA_PROC').AsString:=	vQryAux.FieldByName('DATA_PROC').AsString;
      TInsereLog.FieldByName('GTA_ID').AsString:=	vQryAux.FieldByName('GTA_ID').AsString;
      TInsereLog.FieldByName('IDADE_MESES').AsString:=	vQryAux.FieldByName('IDADE_MESES').AsString;
      TInsereLog.FieldByName('DATA_NASCIMENTO').AsString:=	FormatDateTime('dd/mm/yyyy',vQryAux.FieldByName('DATA_NASCIMENTO').AsDateTime);
      TInsereLog.FieldByName('PESO_ENTRADA').AsString:=	vQryAux.FieldByName('PESO_ENTRADA').AsString;
      TInsereLog.FieldByName('ULTIMO_PESO').AsString:=	vQryAux.FieldByName('ULTIMO_PESO').AsString;
      TInsereLog.FieldByName('DATA_ULTIMO_PESO').AsString:=	vQryAux.FieldByName('DATA_ULTIMO_PESO').AsString;
      TInsereLog.FieldByName('STATUS').AsString:=	vQryAux.FieldByName('STATUS').AsString;
      TInsereLog.FieldByName('DATAREG').AsString:=	vQryAux.FieldByName('DATAREG').AsString;
      TInsereLog.FieldByName('ID_USUARIO').AsString:=	vQryAux.FieldByName('ID_USUARIO').AsString;
      TInsereLog.FieldByName('DATA_SAIDA').AsString:=	vQryAux.FieldByName('DATA_SAIDA').AsString;
      TInsereLog.FieldByName('PESO_SAIDA').AsString:=	vQryAux.FieldByName('PESO_SAIDA').AsString;
      TInsereLog.FieldByName('ID_PROPRIEDADE').AsString:=	vQryAux.FieldByName('ID_PROPRIEDADE').AsString;
      TInsereLog.FieldByName('ID_PRODUTOR').AsString:=	vQryAux.FieldByName('ID_PRODUTOR').AsString;
      TInsereLog.FieldByName('ULTIMA_ALTERACAO').AsString:=	vQryAux.FieldByName('ULTIMA_ALTERACAO').AsString;
      TInsereLog.FieldByName('ULTIMO_USUARIO').AsString:=	vQryAux.FieldByName('ULTIMO_USUARIO').AsString;
      TInsereLog.FieldByName('ID_LOTESAIDA').AsString:=	vQryAux.FieldByName('ID_LOTESAIDA').AsString;
      TInsereLog.FieldByName('ID_VEICULO_SAIDA').AsString:=	vQryAux.FieldByName('ID_VEICULO_SAIDA').AsString;
      TInsereLog.FieldByName('ORIGEM_DADOS').AsString:=	vQryAux.FieldByName('ORIGEM_DADOS').AsString;
      TInsereLog.FieldByName('TIPO_SAIDA').AsString:=	vQryAux.FieldByName('TIPO_SAIDA').AsString;
      TInsereLog.FieldByName('ID_MOTIVO_MORTE').AsString:=	vQryAux.FieldByName('ID_MOTIVO_MORTE').AsString;
      TInsereLog.FieldByName('ID_LOTE').AsString:=	vQryAux.FieldByName('ID_LOTE').AsString;
      TInsereLog.FieldByName('VALOR_COMPRA').AsString:=	vQryAux.FieldByName('VALOR_COMPRA').AsString;
      TInsereLog.FieldByName('VALOR_VENDA').AsString:=	vQryAux.FieldByName('VALOR_VENDA').AsString;
      TInsereLog.FieldByName('ID_PRODUTOR_ORIGEM').AsString:=	vQryAux.FieldByName('ID_PRODUTOR_ORIGEM').AsString;
      TInsereLog.FieldByName('FLAG_SYNC').AsString:=	vQryAux.FieldByName('FLAG_SYNC').AsString;
      TInsereLog.FieldByName('DATA_SYNC').AsString:=	vQryAux.FieldByName('DATA_SYNC').AsString;
      TInsereLog.FieldByName('DATA_LIBERACAO').AsString:=	vQryAux.FieldByName('DATA_LIBERACAO').AsString;
      TInsereLog.FieldByName('ID_ULTIMO_USUARIO_ALTERACAO').AsString:=	vQryAux.FieldByName('ID_ULTIMO_USUARIO_ALTERACAO').AsString;
      TInsereLog.FieldByName('DATA_ULTIMA_ALTERACAO').AsString:=	vQryAux.FieldByName('DATA_ULTIMA_ALTERACAO').AsString;
      TInsereLog.FieldByName('ID_CONTRATO_COMPRA').AsString:=	vQryAux.FieldByName('ID_CONTRATO_COMPRA').AsString;
      TInsereLog.FieldByName('ID_PRODUTOR_DESTINO_SAIDA').AsString:=	vQryAux.FieldByName('ID_PRODUTOR_DESTINO_SAIDA').AsString;
      TInsereLog.FieldByName('IDADE_MORTE').AsString:=	vQryAux.FieldByName('IDADE_MORTE').AsString;
      TInsereLog.FieldByName('ID_GTA_SAIDA').AsString:=	vQryAux.FieldByName('ID_GTA_SAIDA').AsString;
      TInsereLog.FieldByName('OBSERVACAO').AsString:=	vQryAux.FieldByName('OBSERVACAO').AsString;
      TInsereLog.FieldByName('TIPO_ENTRADA').AsString:=	vQryAux.FieldByName('TIPO_ENTRADA').AsString;
      TInsereLog.FieldByName('PESO_ESTIMADO').AsString:=	vQryAux.FieldByName('PESO_ESTIMADO').AsString;
      TInsereLog.FieldByName('DATA_PESO_ESTIMADO').AsString:=	vQryAux.FieldByName('DATA_PESO_ESTIMADO').AsString;
      TInsereLog.FieldByName('VALOR_CUSTO_ALIMENTAR').AsString:=	vQryAux.FieldByName('VALOR_CUSTO_ALIMENTAR').AsString;
      TInsereLog.FieldByName('VALOR_CUSTO_FIXO_ACU').AsString:=	vQryAux.FieldByName('VALOR_CUSTO_FIXO_ACU').AsString;
      TInsereLog.FieldByName('ID_CATEGORIA_ATUAL').AsString:=	vQryAux.FieldByName('ID_CATEGORIA_ATUAL').AsString;
      TInsereLog.FieldByName('CONSUMO_ACU').AsString:=	vQryAux.FieldByName('CONSUMO_ACU').AsString;
      TInsereLog.FieldByName('IMS_PV').AsString:=	vQryAux.FieldByName('IMS_PV').AsString;
      TInsereLog.FieldByName('ID_COMUNICADO_REIDENT').AsString:=	vQryAux.FieldByName('ID_COMUNICADO_REIDENT').AsString;
      TInsereLog.FieldByName('ID_COMUNICADO_MORTE').AsString:=	vQryAux.FieldByName('ID_COMUNICADO_MORTE').AsString;
      TInsereLog.FieldByName('OBS_MORTE').AsString:=	vQryAux.FieldByName('OBS_MORTE').AsString;
      TInsereLog.FieldByName('TIPO_MORTE').AsString:=	vQryAux.FieldByName('TIPO_MORTE').AsString;
      TInsereLog.FieldByName('DATA_REPROCESSAMENTO').AsString:=	vQryAux.FieldByName('DATA_REPROCESSAMENTO').AsString;
      TInsereLog.FieldByName('ID_COM_NASCIMENTO').AsString:=	vQryAux.FieldByName('ID_COM_NASCIMENTO').AsString;
      TInsereLog.FieldByName('IDENTIFICACAO_MAE').AsString:=	vQryAux.FieldByName('IDENTIFICACAO_MAE').AsString;
      TInsereLog.FieldByName('CARIMBO_NASCIMENTO').AsString:=	vQryAux.FieldByName('CARIMBO_NASCIMENTO').AsString;
      TInsereLog.FieldByName('OUTRO_ERAS').AsString:=	vQryAux.FieldByName('OUTRO_ERAS').AsString;
      TInsereLog.FieldByName('ID_USUARIO_LOG').AsString:=	vIdUserLogado;
      TInsereLog.ApplyUpdates(-1);

      Clear;
      Add('UPDATE ANIMAL SET id_ultimo_usuario_alteracao='+idUsuario+' ,data_ultima_alteracao=current_timestamp');
      Add('WHERE ID='+idAnimal);
      ExecSQL;
     EXCEPT
      on E : Exception do
      TThread.Synchronize(nil,procedure
      begin
       ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end);
     end;
   end
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereLogEntradaEstoquePeso(ID_USUARIO, NUM_NF,
  ACAO: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO LOG_NF_ENTRADA (ID_USUARIO,NUM_NF,ACAO) VALUES (:ID_USUARIO,:NUM_NF,:ACAO)');
   ParamByName('ID_USUARIO').AsString := ID_USUARIO;
   ParamByName('NUM_NF').AsString     := NUM_NF;
   ParamByName('ACAO').AsString       := ACAO;
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InserePeso(ID_ANIMAL, ID_USUARIO, PESO,
  TIPO,ID_PRODUTOR,ID_LS,ID_LOCAL,DATA_PESAGEM,IDBASE: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   if ID_LS='0' then
   begin
     Clear;
     Add('INSERT INTO ANIMAL_PESO (ID_ANIMAL, ID_USUARIO, PESO, TIPO,ID_PRODUTOR,ID_LOCAL,DATA,ID_BASE_CAMPO) VALUES (');
     Add(ID_ANIMAL+',');
     Add(ID_USUARIO+',');
     Add(StringReplace(PESO,',','.',[rfReplaceAll])+',');
     Add(TIPO.QuotedString+',');
     Add(ID_PRODUTOR+',');
     Add(ID_LOCAL+',');
     Add(DATA_PESAGEM+',');
     Add(IDBASE+')');
     try
      ExecSQL;
     EXCEPT
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end
   else
   begin
     Clear;
     Add('INSERT INTO ANIMAL_PESO (ID_ANIMAL, ID_USUARIO, PESO, TIPO,ID_PRODUTOR,LOTE_SAIDA,DATA,ID_LOCAL,ID_BASE_CAMPO) VALUES (');
     Add(ID_ANIMAL+',');
     Add(ID_USUARIO+',');
     Add(StringReplace(PESO,',','.',[rfReplaceAll])+',');
     Add(TIPO.QuotedString+',');
     Add(ID_PRODUTOR+',');
     Add(ID_LS+',');
     Add(DATA_PESAGEM+',');
     Add(ID_LOCAL+',');
     Add(IDBASE+')');
     try
      ExecSQL;
     EXCEPT
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end;

   Clear;
   Add('UPDATE ANIMAL A SET');
   Add(' A.ULTIMO_PESO='+StringReplace(peso,',','.',[rfReplaceAll]));
   Add(',A.DATA_ULTIMO_PESO='+DATA_PESAGEM);
   Add('WHERE ID ='+ID_ANIMAL);
   try
    ExecSQL;
   EXCEPT
   on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InserePesoBC(IDENTIFICACAO_1, IDENTIFICACAO_2, ID_USUARIO,
  PESO, TIPO, ID_PRODUTOR, ID_LS, ID_LOCAL, DATA_PESAGEM, IDBASE: string);
var
 vQryAux :TFDQuery;
 vIdAnimal:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
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
   if vIdAnimal.Length>0 then
   begin
    if ID_LS='0' then
    begin
     Clear;
     Add('INSERT INTO ANIMAL_PESO (ID_ANIMAL, ID_USUARIO, PESO, TIPO,ID_PRODUTOR,ID_LOCAL,DATA,ID_BASE_CAMPO) VALUES (');
     Add(vIdAnimal+',');
     Add(ID_USUARIO+',');
     Add(StringReplace(PESO,',','.',[rfReplaceAll])+',');
     Add(TIPO.QuotedString+',');
     Add(ID_PRODUTOR+',');
     Add(ID_LOCAL+',');
     Add(DATA_PESAGEM+',');
     Add(IDBASE+')');
     try
      ExecSQL;
     EXCEPT
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
    end
    else
    begin
     Clear;
     Add('INSERT INTO ANIMAL_PESO (ID_ANIMAL, ID_USUARIO, PESO, TIPO,ID_PRODUTOR,LOTE_SAIDA,DATA,ID_LOCAL,ID_BASE_CAMPO) VALUES (');
     Add(vIdAnimal+',');
     Add(ID_USUARIO+',');
     Add(PESO+',');
     Add(TIPO.QuotedString+',');
     Add(ID_PRODUTOR+',');
     Add(ID_LS+',');
     Add(DATA_PESAGEM+',');
     Add(ID_LOCAL+',');
     Add(IDBASE+')');
     try
      ExecSQL;
     EXCEPT
     on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
    end;
   end
   else
    frmPrincipal.mlogSync.Lines.Add('Animal nao encontrado Chip:'+IDENTIFICACAO_1+
    ' SISBOV/NFC:'+IDENTIFICACAO_2)
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InserePlanNutri(ID_USUARIO, ID_CATEGORIA, ID_RACA,
 CONSUMO_ESTIMADO,INGESTAO_PV,GMD,PESO_ABATE,ID_FASE,idMineral: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO PLAN_NUTRI(');
   Add('ID_USUARIO,');
   Add('ID_CATEGORIA,');
   Add('ID_RACA,');
   Add('CONSUMO_ESTIMADO,');
   Add('INGESTAO_PV,');
   Add('GMD,');
   Add('PESO_ABATE,');
   Add('ID_FASE');
   if idMineral.Length>0 then
    Add(',ID_MINERAL');
   Add(')');
   Add('VALUES(');
   Add(ID_USUARIO+',');
   Add(ID_CATEGORIA+',');
   Add(ID_RACA+',');
   Add(CONSUMO_ESTIMADO+',');
   Add(INGESTAO_PV+',');
   Add(GMD+',');
   Add(PESO_ABATE+',');
   Add(ID_FASE);
   if idMineral.Length>0 then
    Add(','+idMineral);
   Add(')');
   try
    ExecSQL;
   except
     on E: Exception do
      ShowMessage('Erro: ' + E.Message );
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.UpdatePlanNutri(ID,ID_USUARIO, ID_CATEGORIA, ID_RACA,
  CONSUMO_ESTIMADO,INGESTAO_PV,GMD,PESO_ABATE,ID_FASE,idMineral: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE PLAN_NUTRI SET');

   Add('ID_USUARIO='+ID_USUARIO+',');
   Add('ID_CATEGORIA='+ID_CATEGORIA+',');
   Add('ID_RACA='+ID_RACA+',');
   Add('CONSUMO_ESTIMADO='+CONSUMO_ESTIMADO+',');
   Add('INGESTAO_PV='+INGESTAO_PV+',');
   Add('GMD='+GMD+',');
   Add('PESO_ABATE='+PESO_ABATE+',');
   Add('ID_FASE='+ID_FASE);
   if idMineral.Length>0 then
    Add(',ID_MINERAL='+idMineral);
   Add('WHERE ID='+ID);
   try
    ExecSQL;
   except
     on E: Exception do
      ShowMessage('Erro: ' + E.Message );
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.UpdatePlanNutriGrid(ID,CONSUMO_ESTIMADO,INGESTAO_PV,GMD,PESO_ABATE: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE PLAN_NUTRI SET');
   Add('CONSUMO_ESTIMADO='+StringReplace(CONSUMO_ESTIMADO,',','.',[rfReplaceAll])+',');
   Add('INGESTAO_PV='+StringReplace(INGESTAO_PV,',','.',[rfReplaceAll])+',');
   Add('GMD='+StringReplace(GMD,',','.',[rfReplaceAll])+',');
   Add('PESO_ABATE='+StringReplace(PESO_ABATE,',','.',[rfReplaceAll]));
   Add('WHERE ID='+ID);
   try
    ExecSQL;
   except
     on E: Exception do
      ShowMessage('Erro: ' + E.Message );
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.LerIni(Diretorio,Chave1, Chave2, ValorPadrao: String): String;
var
 FileIni: TIniFile;
begin
  result := ValorPadrao;
  try
    FileIni := TIniFile.Create(Diretorio);
    if FileExists(Diretorio) then
      result := FileIni.ReadString(Chave1, Chave2, ValorPadrao);
  finally
    FreeAndNil(FileIni)
  end;
end;

procedure TserviceDB.LimpaDadosAnimalExistente(IDAnimal: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE from animal_peso');
   Add('where id_animal='+IDAnimal);
   Add('and data=current_date');
   Add('and tipo<>''ENTRADA''');
   try
     ExecSQL;
   except
     on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;

   Clear;
   Add('DELETE from animal_sanidade');
   Add('where id_animal='+IDAnimal);
   Add('and data_aplicacao=current_date');
   try
     ExecSQL;
   except
     on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.LimpaGTAAnimalID(IDAnimal: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET GTA_ID=NULL');
   Add('WHERE ID='+IDAnimal);
   try
     ExecSQL;
     InsereLogAnimal(idAnimal,vIdUserLogado);
   except
     on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.qryAnimalReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TserviceDB.qryGtasComunicadoEntReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message);
end;

procedure TserviceDB.qryLoteSaidaReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TserviceDB.qryProdutorOrigemReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage(E.Message);
end;

procedure TserviceDB.ReativarCategoria(Id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE CATEGORIAS SET STATUS=1');
   Add('WHERE ID='+Id);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.ReativarCurral(Id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE CURRAIS SET STATUS=1');
   Add('WHERE ID='+Id);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.ReativarRaca(Id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE RACA SET STATUS=1');
   Add('WHERE ID='+Id);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.RecalculaCustoFixo(Mes, Ano: Integer);
var
 vQryAux,vQryAux1 :TFDQuery;
 vIdAnimal:string;
 vCustoAcumulado:double;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAux1 := TFDQuery.Create(nil);
 vQryAux1.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL_SAIDA');
   Add('WHERE EXTRACT(YEAR FROM DATA_SAIDA)=:ANO');
   Add('AND  EXTRACT(MONTH  FROM DATA_SAIDA)=:MES');
   ParamByName('ANO').AsInteger := Ano;
   ParamByName('MES').AsInteger := Mes;
   Open;
   while not vQryAux.eof do
   begin
     with vQryAux1,vQryAux1.SQL do
     begin
       Clear;
       Add('SELECT * FROM RETORNA_CUSTO_FIXO_ANIMAL('+
        vQryAux.FieldByName('ID_ANIMAL').AsString+')');
       Open;
       vCustoAcumulado := FieldByName('CUSTOACUMULADO').AsFloat;

       Clear;
       Add('UPDATE ANIMAL_SAIDA SET CUSTO_FIXO=:CUSTO_FIXO');
       Add('WHERE ID_ANIMAL=:ID_ANIMAL');
       ParamByName('CUSTO_FIXO').AsFloat  := vCustoAcumulado;
       ParamByName('ID_ANIMAL').AsInteger := vQryAux.FieldByName('ID_ANIMAL').AsInteger;
       ExecSQL;
     end;
     vQryAux.Next;
   end;
 end;
end;

procedure TserviceDB.ReidentificaAnimal(IDComunicado, SISBOVOld, SISBOVNew,
  DataReident, IdadeAtual: string);
var
 vQryAux :TFDQuery;
 vIdAnimal:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL SET STATUS=-2');
   Add('WHERE STATUS=1 AND IDENTIFICACAO_2='+SISBOVOld.QuotedString);
   ExecSQL;
   FCon.Commit;

   TableDetComReident.Close;
   TableDetComReident.Open;
   TableDetComReident.Insert;
   TableDetComReidentSISBOV_OLD.AsString    :=SISBOVOld;
   TableDetComReidentSISBOV_NEW.AsString    :=SISBOVNew;
   TableDetComReidentID_COMUNICADO.AsString :=IDComunicado;
   TableDetComReidentDATA.AsString          :=DataReident;
   TableDetComReident.ApplyUpdates(-1);

   Clear;
   Add('INSERT INTO ANIMAL');
   Add('(ID_LOCAL, ID_CATEGORIA, ID_RACA, IDENTIFICACAO_1, IDENTIFICACAO_2, DATA_PROC,');
   Add('IDADE_MESES,PESO_ENTRADA, ULTIMO_PESO, DATA_ULTIMO_PESO, STATUS,ID_USUARIO,ID_PROPRIEDADE,');
   Add('ID_PRODUTOR, ULTIMA_ALTERACAO, ULTIMO_USUARIO,');
   Add('ID_LOTE, VALOR_COMPRA,ID_PRODUTOR_ORIGEM,DATA_LIBERACAO,ID_ULTIMO_USUARIO_ALTERACAO, DATA_ULTIMA_ALTERACAO,ID_CONTRATO_COMPRA,');
   Add('ID_COMUNICADO_REIDENT)');
   Add('SELECT ID_LOCAL, ID_CATEGORIA, ID_RACA, IDENTIFICACAO_1, '+SISBOVNew.QuotedString+', DATA_PROC,'+IdadeAtual+',');
   Add('PESO_ENTRADA, ULTIMO_PESO, DATA_ULTIMO_PESO, 1,ID_USUARIO,ID_PROPRIEDADE, ID_PRODUTOR,');
   Add('ULTIMA_ALTERACAO, ULTIMO_USUARIO,');
   Add('ID_LOTE, VALOR_COMPRA,ID_PRODUTOR_ORIGEM,DATA_LIBERACAO,ID_ULTIMO_USUARIO_ALTERACAO, DATA_ULTIMA_ALTERACAO,ID_CONTRATO_COMPRA,');
   Add(IDComunicado+'FROM  ANIMAL WHERE STATUS=-2 AND IDENTIFICACAO_2='+SISBOVOld.QuotedString);
   ExecSQL;
   FCon.Commit;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.RelatorioDiarioLotes(Adada: string);
begin

end;

procedure TserviceDB.RertiradaChipReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

function TserviceDB.RestornaIdUltimoAnimalInsert: string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(id) maxID from animal');
   Open;
   Result:= FieldByName('maxID').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaIDCatPadrao(NomeCat: string): string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM categoria_padrao');
   Add('WHERE NOME=:NOME');
   ParamByName('NOME').AsString :=NomeCat;
   Open;
   Result := FieldByName('ID').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaIDCocho(iDPasto: string): string;
var
 vQry:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT ID FROM COCHO');
   Add('WHERE STATUS=1 AND ID_PASTO='+iDPasto);
   Open;
   Result := vQry.FieldByName('ID').AsString;
 end;
 vQry.Free;
end;

function TserviceDB.RetornaIdContrato(Numero: string): string;
var
 vQry:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM CONTRATO_COMPRA_ANIMAL');
   Add('WHERE STATUS >-1 AND  NUMERO ='+Numero.QuotedString);
   Open;
   Result := vQry.FieldByName('ID').AsString;
 end;
 vQry.Free;
end;

function TserviceDB.RetornaIdGTA(Numero: string): string;
var
 vQry:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM GTA');
   Add('WHERE STATUS >-1 AND TIPO =''E'' AND NUMERO ='+Numero.QuotedString);
   Open;
   Result := vQry.FieldByName('ID').AsString;
 end;
 vQry.Free;
end;

function TserviceDB.RetornaIdPastp(Anome: string): string;
var
 vQry:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from CURRAIS');
   Add('where status=1 and ID_PROPRIEDADE='+vIdPropriedade);
   Add('and CODIGO=:CODIGO');
   ParamByName('CODIGO').AsString   :=Anome;
   Open;
   Result := vQry.FieldByName('id').AsString;
 end;
 vQry.free;
end;

function TserviceDB.RetornaIdRaca(Anome: string): string;
var
 vQry:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from raca');
   Add('where status=1');
   Add('and NOME=:CODIGO');
   ParamByName('CODIGO').AsString   :=Anome;
   Open;
   Result := vQry.FieldByName('id').AsString;
 end;
 vQry.free;
end;

function TserviceDB.RetornaIdAnimalReprocSemIdentificacao(
  idLocal: string): string;
begin
 with qryAnimalReprocSemIdent,qryAnimalReprocSemIdent.SQL do
 begin
   Clear;
   Add('select');
   Add(' a.*,');
   Add(' c.id,');
   Add(' c.codigo curral_pasto,');
   Add(' r.nome raca_nome,');
   Add(' ca.nome categoria_nome,');
   Add(' u.name ususario,');
   Add('g.serie||g.uf||g.numero gta');
   Add('from animal a');
   Add('join currais c on c.id_propriedade=a.id_propriedade and  c.id=a.id_local');
   Add('join raca  r on a.id_raca=r.id');
   Add('join categorias ca on ca.id=a.id_categoria');
   Add('left join gta g on g.id_propriedade_destino=a.id_propriedade and a.gta_id=g.id');
   Add('join users u on a.id_usuario=u.id');
   Add('WHERE a.STATUS=1 AND a.ID_LOCAL =:ID_LOCAL');
   Add('AND a.IDENTIFICACAO_1 IS NULL  AND a.IDENTIFICACAO_2 IS NULL');
   Add('ORDER BY a.ID ');
   ParamByName('ID_LOCAL').AsString   :=idLocal;
   Open;
   Result := qryAnimalReprocSemIdent.FieldByName('id').AsString;
 end;
end;

function TserviceDB.RetornaIdCategoria(Anome: string): string;
var
 vQry:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from CATEGORIAS');
   Add('where status=1');
   Add('and NOME=:CODIGO');
   ParamByName('CODIGO').AsString   :=Anome;
   Open;
   Result := vQry.FieldByName('id').AsString;
 end;
 vQry.free;
end;

function TserviceDB.RetornaIdRebanho(Anome: string): string;
var
 vQry:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from AUX_REBANHO');
   Add('where status=1');
   Add('and NOME=:CODIGO');
   ParamByName('CODIGO').AsString   :=Anome;
   Open;
   Result := vQry.FieldByName('id').AsString;
 end;
 vQry.free;
end;

function TserviceDB.RetornaIdProdutorLS(LS: string): string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT  * FROM LOTE_SAIDA');
   Add('WHERE ID=:ID');
   ParamByName('ID').AsString :=LS;
   Open;
   Result := FieldByName('ID_PRODUTOR_DESTINO').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaProdutorPropLs(LS: string): string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT  A.*,B.NOME PRODUTOR FROM LOTE_SAIDA A');
   Add('JOIN PRODUTORES B ON A.ID_PRODUTOR_ORIGEM=B.ID');
   Add('WHERE A.ID=:ID');
   ParamByName('ID').AsString :=LS;
   Open;
   vNomeProdutorEmbarque := FieldByName('PRODUTOR').AsString;
   Result := FieldByName('ID_PRODUTOR_ORIGEM').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaProdutorPropLsDestino(LS: string): string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT  ID_PRODUTOR_DESTINO FROM LOTE_SAIDA A');
   Add('WHERE A.ID=:ID');
   ParamByName('ID').AsString :=LS;
   Open;
   Result := FieldByName('ID_PRODUTOR_DESTINO').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaBloqueioAnimai(LS: string): INTEGER;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT  * FROM LOTE_SAIDA A');
   Add('WHERE A.ID=:ID');
   ParamByName('ID').AsString :=LS;
   Open;
   Result := FieldByName('BLOQUEIO').AsInteger;
 end;
 vQryAux.Free;
end;



function TserviceDB.RetornaIDUltimoFornecimento: string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT  MAX(ID)MAX_ID FROM FORNECIMENTO');
   Open;
   Result := FieldByName('MAX_ID').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaIMSPV(IdMineral, IdPasto, Data: string): string;
var
 vQryAux :TFDQuery;
 vIdRaca,vIdCat,vMesAtual,vImsPV:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   //RACA E CATEGORIA DO PASTO
   Clear;
   Add('SELECT FIRST 1 ID_LOCAL,ID_RACA,ID_CATEGORIA_ATUAL FROM');
   Add('(SELECT ID_LOCAL,ID_RACA,COALESCE(ID_CATEGORIA_ATUAL,ID_CATEGORIA)ID_CATEGORIA_ATUAL,');
   Add('COUNT(*) QTD FROM ANIMAL');
   Add('WHERE STATUS=1 AND ID_LOCAL='+IdPasto);
   Add('GROUP BY ID_LOCAL,ID_RACA,COALESCE(ID_CATEGORIA_ATUAL,ID_CATEGORIA))');
   Add('ORDER BY QTD DESC');
   Open;
   vIdRaca   := FieldByName('ID_RACA').AsString;
   vIdCat    := FieldByName('ID_CATEGORIA_ATUAL').AsString;
   vMesAtual := FormatDateTime('mm',Date);
   //pegando cosumo esperado no planejamento
   Clear;
   Add('SELECT b.* FROM PLAN_NUTRI a');
   Add('JOIN DET_FASE_PLAN b ON a.ID=b.ID_PLANEJAMENTO');
   Add('WHERE ID_RACA='+vIdRaca+' AND ID_CATEGORIA='+vIdCat+' AND ID_MINERAL='+IdMineral);
   Add('AND b.ID_FASE='+vMesAtual);
   Open;
   vImsPV         := FieldByName('CONSUMO_PV').AsString;
   //se nao tem planejamento pego no mineral
   if vImsPV.Length=0 then
   begin
     Clear;
     Add('SELECT * FROM SUPLEMENTO_MINERAL');
     Add('WHERE ID='+IdMineral);
     Open;
     vImsPV := FieldByName('INGESTAO_PERCENT_PV').AsString;
   end;
   Result :=vImsPV;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaInicialCaixa(vIdPedido, CaixaIni: string): string;
var
 vQryAux:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.sql do
 begin
   Clear;
   Add('SELECT FIRST 1 chip  FROM ESTOQUE_CHIP a');
   Add('WHERE ID_PEDIDO ='+vIdPedido+' AND CAIXA='+CaixaIni);
   Add('ORDER BY chip ');
   Open;
   Result := FieldByName('chip').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaInPVSuplemento(idSuplemento: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM SUPLEMENTO_MINERAL');
   Add('WHERE ID='+idSuplemento);
   Open;
   Result := FieldByName('INGESTAO_PERCENT_PV').AsString;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereRefugoSaida(idAnimal, IdLoteSaida, Ident_1, ident_2,
  peso: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('INSERT INTO REFUGO_SAIDA(ID_ANIMAL,ID_LOTE_SAIDA,IDDENTIFICACAO_1,IDDENTIFICACAO_2,PESO,ID_USUARIO,ID_BASE_CAMPO)VALUES(');
  Add(idAnimal+',');
  Add(IdLoteSaida+',');
  Add(Ident_1+',');
  Add(ident_2+',');
  Add(PESO+',');
  Add(vIdUserLogado+',');
  Add(frmPrincipal.vIdBaseCampo+')');
  try
    vQryAux.ExecSQL;
  except
   on E : Exception do
      ShowMessage('Erro ao inserir REFUGO_SAIDA : '+E.Message);
  end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereRefugoSaidaBC(idAnimal, IdLoteSaida, Ident_1,
  ident_2, peso,idBaseCampo,dataReg: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('INSERT INTO REFUGO_SAIDA(ID_ANIMAL,ID_LOTE_SAIDA,IDDENTIFICACAO_1,IDDENTIFICACAO_2,PESO,ID_USUARIO,ID_BASE_CAMPO,DATAREG)');
  Add('VALUES(:ID_ANIMAL,:ID_LOTE_SAIDA,:IDDENTIFICACAO_1,:IDDENTIFICACAO_2,:PESO,:ID_USUARIO,:ID_BASE_CAMPO,:DATAREG)');
  ParamByName('ID_ANIMAL').AsString        := idAnimal;
  ParamByName('ID_LOTE_SAIDA').AsString    := IdLoteSaida;
  ParamByName('IDDENTIFICACAO_1').AsString := Ident_1;
  ParamByName('IDDENTIFICACAO_2').AsString := ident_2;
  ParamByName('PESO').AsString             := PESO;
  ParamByName('ID_USUARIO').AsString       := vIdUserLogado;
  ParamByName('ID_BASE_CAMPO').AsString    := idBaseCampo;
  ParamByName('DATAREG').AsDateTime        := StrToDateTime(DATAREG);
  try
    vQryAux.ExecSQL;
  except
   on E : Exception do
      ShowMessage('Erro ao inserir REFUGO_SAIDA : '+E.Message);
  end;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.InsereReidentificacaoMovimentacao(idAnimal, Tipo, Nova,
  Antiga,IdBase: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('INSERT INTO LOG_REIDENTIFICACAO(ID_ANIMAL,TIPO,ANTIGA,NOVA,ID_USUARIO,ID_BASE_CAMPO)VALUES(');
  Add(idAnimal+',');
  Add(Tipo+',');
  Add(Antiga.QuotedString+',');
  Add(Nova.QuotedString+',');
  Add(vIdUserLogado+',');
  Add(IdBase+')');
  try
    vQryAux.ExecSQL;
  except
    on E : Exception do
      ShowMessage('Erro ao inserir Log Reident : '+E.Message);
  end;
 end;
 vQryAux.Free;
end;

function TserviceDB.InsereRetornaLoteSaida(idProdOri, idPropOri, idProdDes, idPropDes,
  sData,Bloqueio: string): string;
var
 vQryAux :TFDQuery;
 vMax,vIdLoteCampo:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
    if frmPrincipal.vIdBaseCampo='0' then
    begin
     Clear;
     Add('INSERT INTO LOTE_SAIDA(ID_PRODUTOR_ORIGEM,ID_ORIGEM,ID_PRODUTOR_DESTINO,ID_DESTINO,DATA_EMBARQUE,BLOQUEIO)');
     Add('values(:ID_PRODUTOR_ORIGEM,:ID_ORIGEM,:ID_PRODUTOR_DESTINO,:ID_DESTINO,:DATA_EMBARQUE,:BLOQUEIO)');
     ParamByName('ID_PRODUTOR_ORIGEM').AsString  :=idProdOri;
     ParamByName('ID_ORIGEM').AsString           :=idPropOri;
     ParamByName('ID_PRODUTOR_DESTINO').AsString :=idProdDes;
     ParamByName('ID_DESTINO').AsString          :=idPropDes;
     ParamByName('DATA_EMBARQUE').AsDate         :=strToDate(sData);
     ParamByName('BLOQUEIO').AsInteger           :=strToInt(Bloqueio);
     try
       ExecSQL;
       Clear;
       Add('SELECT MAX(ID) MAXID FROM LOTE_SAIDA WHERE ID_BASE_CAMPO=0');
       Open;
       Result := FieldByName('MAXID').AsString;
     except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
    end
    else
    begin
      Clear;
      Add('SELECT 90000 + COUNT(*) MAXID FROM LOTE_SAIDA');
      Open;
      vIdLoteCampo := FieldByName('MAXID').AsString;

      Clear;
      Add('INSERT INTO LOTE_SAIDA(ID,ID_PRODUTOR_ORIGEM,ID_ORIGEM,ID_PRODUTOR_DESTINO,ID_DESTINO,DATA_EMBARQUE,ID_BASE_CAMPO,BLOQUEIO)');
      Add('values(:ID,:ID_PRODUTOR_ORIGEM,:ID_ORIGEM,:ID_PRODUTOR_DESTINO,:ID_DESTINO,:DATA_EMBARQUE,:ID_BASE_CAMPO,:BLOQUEIO)');
      ParamByName('ID').AsString                  :=vIdLoteCampo;
      ParamByName('ID_PRODUTOR_ORIGEM').AsString  :=idProdOri;
      ParamByName('ID_ORIGEM').AsString           :=idPropOri;
      ParamByName('ID_PRODUTOR_DESTINO').AsString :=idProdDes;
      ParamByName('ID_DESTINO').AsString          :=idPropDes;
      ParamByName('DATA_EMBARQUE').AsDate         :=strToDate(sData);
      ParamByName('ID_BASE_CAMPO').AsString       :=frmPrincipal.vIdBaseCampo;
      ParamByName('BLOQUEIO').AsInteger           :=strToInt(Bloqueio);
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
 end;
 vQryAux.Free;
end;


procedure TserviceDB.EditaRetornaLoteSaida(idLote,idProdOri, idPropOri, idProdDes, idPropDes,
  sData,Bloqueio: string);
var
 vQryAux :TFDQuery;
 vMax,vIdLoteCampo:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
     Clear;
     Add('UPDATE LOTE_SAIDA SET ');
     Add('ID_PRODUTOR_ORIGEM=:ID_PRODUTOR_ORIGEM');
     Add(',ID_ORIGEM=:ID_ORIGEM');
     Add(',ID_PRODUTOR_DESTINO=:ID_PRODUTOR_DESTINO');
     Add(',ID_DESTINO=:ID_DESTINO');
     Add(',DATA_EMBARQUE=:DATA_EMBARQUE');
     Add(',BLOQUEIO=:BLOQUEIO');
     Add('WHERE ID='+idLote);
     ParamByName('ID_PRODUTOR_ORIGEM').AsString  :=idProdOri;
     ParamByName('ID_ORIGEM').AsString           :=idPropOri;
     ParamByName('ID_PRODUTOR_DESTINO').AsString :=idProdDes;
     ParamByName('ID_DESTINO').AsString          :=idPropDes;
     ParamByName('DATA_EMBARQUE').AsDate         :=strToDate(sData);
     ParamByName('BLOQUEIO').AsInteger           :=strToInt(Bloqueio);
     try
       ExecSQL;
     except
       on E : Exception do
        ShowMessage('Erro ao atualizar lote de saida: '+E.Message);
     end;
 end;
 vQryAux.Free;
end;


function TserviceDB.RetornaLotacaoCurral(idCurral: string): integer;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT (capacidade-lotacao) saldo FROM CURRAIS');
   Add('where id='+idCurral);
   Open;
   Result := FieldByName('saldo').AsInteger;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaLoteSaida(idProdOri, idPropOri, idProdDes, idPropDes,
  sData: string): string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from lote_saida a');
   Add('where a.id_produtor_origem=:produtor_origem');
   Add('and a.id_origem=:id_origem');
   Add('and a.id_produtor_destino=:produtor_destino');
   Add('and a.id_destino=:id_destino');
   Add('and a.data_embarque=:data_embarque');
   ParamByName('produtor_origem').AsString  :=idProdOri;
   ParamByName('id_origem').AsString        :=idPropOri;
   ParamByName('produtor_destino').AsString :=idProdDes;
   ParamByName('id_destino').AsString       :=idPropDes;
   ParamByName('data_embarque').AsDate      :=strToDate(sData);
   Open;
   if vQryAux.IsEmpty then
   begin
     Clear;
     Add('INSERT INTO LOTE_SAIDA(ID_PRODUTOR_ORIGEM,ID_ORIGEM,ID_PRODUTOR_DESTINO,ID_DESTINO,DATA_EMBARQUE)');
     Add('values(:ID_PRODUTOR_ORIGEM,:ID_ORIGEM,:ID_PRODUTOR_DESTINO,:ID_DESTINO,:DATA_EMBARQUE)');
     ParamByName('ID_PRODUTOR_ORIGEM').AsString  :=idProdOri;
     ParamByName('ID_ORIGEM').AsString           :=idPropOri;
     ParamByName('ID_PRODUTOR_DESTINO').AsString :=idProdDes;
     ParamByName('ID_DESTINO').AsString          :=idPropDes;
     ParamByName('DATA_EMBARQUE').AsDate         :=strToDate(sData);
     try
       ExecSQL;
       Clear;
       Add('SELECT MAX(ID) MAXID FROM LOTE_SAIDA');
       Open;
       Result := FieldByName('MAXID').AsString;
     except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
   end
   else
    Result := vQryAux.FieldByName('id').AsString;
 end;
 vQryAux.Free;
end;


function TserviceDB.RetornaMaxID(tabela: string): STring;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(id) maxID from '+tabela);
   Open;
 end;
 Result := vQryAux.FieldByName('maxID').AsString;
end;

function TserviceDB.RetornaMaxIDAnimal: string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(id) maxID from animal');
   Add('where status=1');
   Open;
 end;
 Result := vQryAux.FieldByName('maxID').AsString;
end;

function TserviceDB.RetornaMaxIDComEnt: string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(id) maxID from comunicado_entrada');
   Add('where status=1');
   Open;
 end;
 Result := vQryAux.FieldByName('maxID').AsString;
end;

function TserviceDB.RetornaMaxIDComReident: string;
var
 vQryAux :TFDQuery;
 vResult:string;
begin
 FCon.RefreshMetadataCache();
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(id) maxID from COMUNICADO_REIDENTIFICACAO');
   Add('where status=1');
   Open;
   vResult :=vQryAux.FieldByName('maxID').AsString;
   if vResult.Length=0 then
    Result:='0'
   else
    Result :=vResult;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaMaxIdTruck: string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT  MAX(ID) MAX_ID FROM veiculos_embarque');
   Open;
   if FieldByName('MAX_ID').AsString='' then
    Result :='0'
   else
    Result := FieldByName('MAX_ID').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaMaxIdTruckBC: string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
  vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT  MAX(ID) MAX_ID FROM veiculos_embarque');
   Add('WHERE ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Open;
   Result := FieldByName('MAX_ID').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaMaxTruck(IdLoteSaida: string): string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM retornaMaxIdVeiculo('+IdLoteSaida+')');
   Open;
   vMax := FieldByName('MAX_ID').AsString;
   if vMax.Length=0 then
    Result :='1'
   else
    Result := intToStr(strToInt(vMax)+1);
 end;
 vQryAux.Free;
end;


function TserviceDB.RetornaMesMaxFase: integer;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT MAX(MES_FIM) maxfim FROM AUX_FASES');
   Add('WHERE STATUS=1');
   Open;
   vMax := FieldByName('maxfim').AsString;
   if vMAX.Length=0 then
    vMAX:='1';
   Result := strToInt(vMAX);
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaNomeFornecedor(Id: string): string;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM FORNECEDOR_SUPLEMENTOS');
   Add('WHERE ID='+ID);
   Open;
   Result := vQryAux.FieldByName('RAZAO_SOCIAL').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaNumeroComEnt(idPropriedade: string): string;
var
 vQryAux :TFDQuery;
 vNumero :string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(a.numero) NUMERO from comunicado_entrada a');
   Add('join produtores po on po.id=a.id_produtor_destino');
   Add('where a.status=1');
   Add('and po.id_propriedade='+idPropriedade);
   Open;
   vNumero:= FieldByName('NUMERO').AsString;
   if vNumero.Length=0 then
    vNumero:='1'
   else
     vNumero := IntToStr(StrToInt(vNumero)+1);
   Result := vNumero;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaNumeroComTTA(idPropriedade: string): string;
var
 vQryAux :TFDQuery;
 vNumero :string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(a.NUMERO) NUMERO from TTA a');
   Add('where a.status=1');
   Add('and a.id_propriedade='+idPropriedade);
   Open;
   vNumero:= FieldByName('NUMERO').AsString;
   if vNumero.Length=0 then
    vNumero:='1'
   else
     vNumero := IntToStr(StrToInt(vNumero)+1);
   Result := vNumero;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaNumeroComMorte(idPropriedade: string): string;
var
 vQryAux :TFDQuery;
 vNumero :string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(a.numero) NUMERO from COMUNICADO_MORTE a');
   Add('join produtores  po on po.id=a.ID_PRODUTOR');
   Add('where a.status=1');
   Add('and po.id_propriedade='+idPropriedade);
   Open;
   vNumero:= FieldByName('NUMERO').AsString;
   if vNumero.Length=0 then
    vNumero:='1'
   else
     vNumero := IntToStr(StrToInt(vNumero)+1);
   Result := vNumero;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaNumeroComNasci(idPropriedade: string): string;
var
 vQryAux :TFDQuery;
 vNumero :string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(a.numero) NUMERO from COMUNICADO_NASCIMENTO a');
   Add('join produtores po on po.id=a.id_produtor');
   Add('where a.status=1');
   Add('and po.id_propriedade='+idPropriedade);
   Open;
   vNumero:= FieldByName('NUMERO').AsString;
   if vNumero.Length=0 then
    vNumero:='1'
   else
     vNumero := IntToStr(StrToInt(vNumero)+1);
   Result := vNumero;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaNumeroComReident: string;
var
 vQryAux :TFDQuery;
 vNumero :string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(a.numero) NUMERO from COMUNICADO_REIDENTIFICACAO a');
   Add('where a.status=1');
   Open;
   vNumero:= FieldByName('NUMERO').AsString;
   if vNumero.Length=0 then
    vNumero:='1'
   else
     vNumero := IntToStr(StrToInt(vNumero)+1);
   Result := vNumero;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaPesoAtualAnimal(idAnimal: String): Double;
var
 vQryAux :TFDQuery;
 vNumero :string;
 vPeso,vPeso1   :Double;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT peso_estimado,peso_entrada FROM ANIMAL');
   Add('WHERE ID='+idAnimal);
   Open;
   vPeso  := FieldByName('peso_estimado').AsFloat;
   vPeso1 := FieldByName('peso_entrada').AsFloat;
   if vPeso>0 then
    Result := vPeso;
   if vPeso1>0 then
    Result := vPeso1;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaPrevisaoFornecimento(AidPasto, AData: string): string;
var
 vPasto,
 vRaca,
 vIdRaca,
 vIdCategoria,
 vCategoria,
 vIdCategoriaAtual,
 vCategoriaAtual,
 vSexo,
 FaixaEtaria,vIdFase,vMesAtual:string;
 vPesoAtual,
 vConsumoEstimado,
 vConsumoTotal:double;
 vIdadeAtual,vQtdCab :integer;
 vQryAux,vQryAux1:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAux1:=TFDQuery.Create(nil);
 vQryAux1.Connection := fCon;
 with vQryAux,vQryAux.sql do
 begin
   Clear;
   Add('SELECT');
   Add('  D.codigo Pasto,');
   Add('  b.nome Raca,');
   Add('  b.id IdRaca,');
   Add('  c.Sexo Sexo,');
   Add('  c.nome CategoriaAtual,');
   Add('  c.id   IdCategoriaAtual,');
   Add('  COUNT(*) Animais,');
   Add('  trunc((cast('+Adata.QuotedString+'as date)-cast(a.data_nascimento as date))/30.4573)IdadeAtual');
   Add('FROM animal A');
   Add('JOIN RACA B ON A.id_raca=B.id');
   Add('JOIN categorias C ON C.id=A.id_categoria_atual');
   Add('JOIN CURRAIS D ON D.id=A.id_local');
   Add('where A.id_local='+AidPasto);
   Add('AND A.status=1');
   Add('group by c.id,c.nome,D.codigo,b.nome,b.id,c.sexo,trunc((cast('+Adata.QuotedString+'as date)-cast(a.data_nascimento as date))/30.4573)');
   Open;
   while not vQryAux.eof do
   begin
     vPasto            := vQryAux.FieldByName('Pasto').AsString;
     vRaca             := vQryAux.FieldByName('Raca').AsString;
     vIdRaca           := vQryAux.FieldByName('IdRaca').AsString;
     vIdadeAtual       := vQryAux.FieldByName('IdadeAtual').AsInteger;
     vQtdCab           := vQryAux.FieldByName('Animais').AsInteger;
     vSexo             := vQryAux.FieldByName('Sexo').AsString;
     vIdCategoriaAtual := vQryAux.FieldByName('IdCategoriaAtual').AsString;
     vCategoriaAtual   := vQryAux.FieldByName('CategoriaAtual').AsString;

     vMesAtual           := copy(AData,1,2);
     with vQryAux1,vQryAux1.SQL do
     begin
       Clear;
       Add('SELECT ID FROM aux_fases A');
       Add('WHERE '+vMesAtual+'>=a.mes_inicio and ('+vMesAtual+'<a.mes_fim)');
       Open;
       vIdFase := FieldByName('id').AsString ;
     end;

     if (vIdFase.Length=0) then
     begin
       with vQryAux1,vQryAux1.SQL do
       begin
        Clear;
        Add('SELECT ID FROM aux_fases A');
        Add('WHERE '+vMesAtual+'=a.mes_fim');
        Open;
        vIdFase := FieldByName('id').AsString;
       end;
     end;
     if vIdFase.Length>0 then
     begin
       with vQryAux1,vQryAux1.SQL do
       begin
         Clear;
         Add('select first 1 pn.consumo_estimado consumo_estimado from plan_nutri pn');
         Add('where pn.id_categoria='+vIdCategoriaAtual+' and ');
         Add('pn.id_raca='+vIdRaca+' and');
         Add('id_fase='+vIdFase);
         Open;
         if not vQryAux1.IsEmpty then
         begin
          vConsumoEstimado:=(vQryAux1.FieldByName('consumo_estimado').AsFloat);
          vConsumoTotal   := vConsumoTotal+((vConsumoEstimado)*vQtdCab);
          vConsumoCab     := vConsumoEstimado;
         end
         else
         begin
          vConsumoEstimado:= 0;
          vConsumoTotal   := 0;
          vConsumoCab     := 0;
         end;
       end;
     end
     else
     begin
      vConsumoEstimado:= 0;
      vConsumoTotal   := 0;
      vConsumoCab     := 0;
     end;
     vQryAux.Next;
   end;
 end;
 if vConsumoTotal>0 then
  Result          := FloatToStr(vConsumoTotal/1000)
 else
  Result          := '0';
 vQryAux.Free;
 vQryAux1.Free;
end;

function TserviceDB.RetornaProdutor(ID: String): string;
var
 vQryAux :TFDQuery;
begin
 fCon.Commit;
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('seelct * from produtores');
   Add('where id=:ID');
   ParamByName('ID').AsString :=ID;
   Open;
   result:= vQryAux.fieldbyname('NOME').ASstring;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaPropriedade(ID: String): string;
var
 vQryAux :TFDQuery;
begin
 fCon.Commit;
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from PROPRIEDADES');
   Add('where id=:ID');
   ParamByName('ID').AsString :=ID;
   Open;
   result:= vQryAux.fieldbyname('NOME').ASstring;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaQtdAgendamentos(Dta: TDate): integer;
var
 vQryAux :TFDQuery;
begin
 fCon.Commit;
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select coalesce(COUNT(*),0) QTD from calendario a');
   Add('where status=1 AND tipo_evento=1');
   Add('AND data=:data');
   ParamByName('data').AsDate :=Dta;
   Open;
   result:= vQryAux.fieldbyname('QTD').AsInteger;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaQtdOcorrencia(Dta: TDate): integer;
var
 vQryAux :TFDQuery;
begin
 fCon.Commit;
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select coalesce(COUNT(*),0) QTD from calendario a');
   Add('where status=1 AND tipo_evento=0');
   Add('AND data=:data');
   ParamByName('data').AsDate :=Dta;
   Open;
   result:= vQryAux.fieldbyname('QTD').AsInteger;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaQtdTotalChip(vIdPedido, CaixaIni,
  CaixaFim: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT count(*) qtd FROM ESTOQUE_CHIP');
   Add('WHERE ID_PEDIDO ='+vIdPedido);
   Add('AND CAIXA BETWEEN '+CaixaIni+' AND '+CaixaFim);
   Open;
   result:= vQryAux.fieldbyname('qtd').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaSaldoGTA(IdGTA: String): Integer;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select (total_gta-total_brincados) SALDO from gta');
   Add('where id='+IdGTA);
   Open;
   result:= vQryAux.fieldbyname('SALDO').AsInteger;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaSexoCat(IdCat: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM CATEGORIAS');
   Add('WHERE STATUS=1 AND ID='+IdCat);
   Open;
   result:= vQryAux.fieldbyname('SEXO').AssTring;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaSexoCatPadrao(IdCat: string): integer;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM CATEGORIA_PADRAO');
   Add('WHERE ID='+IdCat);
   Open;
   if vQryAux.fieldbyname('SEXO').AssTring='M' then
     result:= 0;
   if vQryAux.fieldbyname('SEXO').AssTring='F' then
     result:= 1;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaUltimaBND(iDProdutor: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(DATA_REG) max_data from TMP_BND_OUTRO_ERAS');
   Add('where ID_PRODUTOR='+iDProdutor);
   Open;
   result:= vQryAux.fieldbyname('max_data').AssTring;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaUltimaForn(iDPasto: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT MAX(DATA_FORNECIMENTO)max_data FROM FORNECIMENTO');
   Add('WHERE ID_PASTO='+iDPasto);
   Open;
   result:= vQryAux.fieldbyname('max_data').AssTring;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaTotalAnimaisBND(iDProdutor: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select COUNT(*) QTD from TMP_BND_OUTRO_ERAS');
   Add('where ID_PRODUTOR='+iDProdutor);
   Open;
   result:= vQryAux.fieldbyname('QTD').AssTring;
 end;
 vQryAux.Free;
end;


function TserviceDB.RetornaTotalAnimaisGTAVeiculoSaida(
  idVeiculo: string): integer;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select coalesce(sum(total_gta),0) total from gta a');
   Add('where status=1');
   Add('and id_veiculo_saida='+idVeiculo);
   Open;
   result:= vQryAux.fieldbyname('total').AsInteger;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaUltimaEntradaPasto(vIdPasto: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(data_proc) max_data from animal');
   Add('where ID_LOCAL='+vIdPasto);
   Open;
   result:= vQryAux.fieldbyname('max_data').AssTring;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaUltimoAcesso: string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 if fCon.Connected then
 begin
   vQryAux.Connection := fCon;
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('select first 1 nome from acess');
     Add('order by id desc');
     Open;
     Result := FieldByName('nome').AsString;
   end;
 end;
 if FCBaseCampo.Connected then
 begin
   vQryAux.Connection := FCBaseCampo;
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('select first 1 nome from acess');
     Add('order by id desc');
     Open;
     Result := FieldByName('nome').AsString;
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaValorCabGTA(IdGTA: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT coalesce(VALOR_CAB,0)+');
   Add('coalesce(VALOR_FRETE_CAB,0)+');
   Add('coalesce(VALOR_COMISSAO_CAB,0)VALOR_CAB');
   Add('FROM GTA');
   Add('where status=1 and ID=:IdGTA');
   ParamByName('IdGTA').AsString := IdGTA;
   Open;
   Result := StringReplace(FieldByName('VALOR_CAB').AsString,',','.',[rfReplaceAll]);
 end;
 vQryAux.Free;
end;

function TserviceDB.RetornaValorContrado(vValor, vTipo, vPeso,vPesoTotal: Double): Double;
var
 vArroba:Double;
begin
 if vTipo=0 then
 begin
   vArroba := vPeso/30;
   Result  := (vValor * vArroba)
 end;
 if vTipo=2 then
 begin
   if vPesoTotal=0 then
    vPesoTotal := vPeso;
   Result  :=  (vValor / vPesoTotal) * vPeso;
 end;

end;

function TserviceDB.RetornaValorKgMineral(idMineral: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from suplemento_mineral');
   Add('where id='+idMineral);
   Open;
   Result := FieldByName('valor_kg').AsString;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.ScriptV20230220_1Error(ASender, AInitiator: TObject;
  var AException: Exception);
begin
 ShowMessage(AException.Message);
end;

procedure TserviceDB.SuplementoFormulacaoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.TableAuxIndicacaoFarmacoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.TableCategoriasReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.TableCompradorReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TserviceDB.TableComunicadoEntradaReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage(E.Message);
end;

procedure TserviceDB.TableConfigManejoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.TableCurraisReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message);
end;

procedure TserviceDB.TableFarmacosReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.TableGTAReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message);
end;

procedure TserviceDB.TablePedidoBrincoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.TableProdutoresReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.TableRacasReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message);
end;

procedure TserviceDB.TableTratamentosInsertReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDB.TableUsersReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TserviceDB.TrocaRacao(vIdRacaoOrigem, vIdRacaoDestino: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('UPDATE DET_PLAN_NUTRI_CONFI SET IDRACAO='+vIdRacaoDestino);
   Add('WHERE IDRACAO ='+vIdRacaoOrigem);
   try
    ExecSQL;
     Clear;
     Add('UPDATE FORNECIMENTO_CONF SET ID_RACAO='+vIdRacaoDestino);
     Add('WHERE DATA_FORN=CURRENT_DATE AND REALIZADO_MN_KG=0 AND ID_RACAO='+vIdRacaoOrigem);
     try
      ExecSQL;
         Clear;
         Add('UPDATE DET_LOTE_PLANEJAMENTO SET ID_RACAO='+vIdRacaoDestino);
         Add('WHERE UTILIZADO =0 AND ID_RACAO='+vIdRacaoOrigem);
         try
          ExecSQL;
         except
          on E : Exception do
           ShowMessage('Erro ao Alterar Ração nos Lotes: '+E.Message);
         end;
     except
      on E : Exception do
       ShowMessage('Erro ao Alterar Ração no Fornecimento: '+E.Message);
     end;
   except
    on E : Exception do
     ShowMessage('Erro ao Alterar Ração no Perfil: '+E.Message);
   end;
 end;
end;

function TserviceDB.ValidaDGSisbov(NUMERO: STRING): Boolean;
var
 i:integer;
 n1,
 n2,
 n3,
 n4,
 n5,
 n6,
 n7,
 n8,
 n9,
 n10,
 n11,
 n12,
 n13,
 n14,
 DG,
 SOMA_TODAS,
 modResult:integer;
begin
    n1  := strToInt(numero[1]);
    n2  := strToInt(numero[2]);
    n3  := strToInt(numero[3]);
    n4  := strToInt(numero[4]);
    n5  := strToInt(numero[5]);
    n6  := strToInt(numero[6]);
    n7  := strToInt(numero[7]);
    n8  := strToInt(numero[8]);
    n9  := strToInt(numero[9]);
    n10 := strToInt(numero[10]);
    n11 := strToInt(numero[11]);
    n12 := strToInt(numero[12]);
    n13 := strToInt(numero[13]);
    n14 := strToInt(numero[14]);
    DG  := strToInt(numero[15]);
    n1:=n1*4;
    n2:=n2*5;
    n3:=n3*6;
    n4:=n4*7;
    n5:=n5*8;
    n6:=n6*9;
    n7:=n7*2;
    n8:=n8*3;
    n9:=n9*4;
    n10:=n10*5;
    n11:=n11*6;
    n12:=n12*7;
    n13:=n13*8;
    n14:=n14*9;
    SOMA_TODAS := (n1+n2+n3+n4+n5+n6+n7+n8+n9+n10+n11+n12+n13+n14);
    modResult  := SOMA_TODAS mod 11;
    if modResult>=10 then
     modResult :=0;
   if modResult<> DG then
    Result := false
   else
    result := true;
end;

function TserviceDB.ValidaLicencaJaUsada(Chave: String): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from keyfield');
   Add('where "KEY"='+Chave.QuotedString);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.ValidaLogin(Usuario, Senha: String): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from users');
   Add('where status=1 and login='+Usuario.QuotedString);
   Add('and PASSWORD='+Senha.QuotedString);
   Add('and ID_PROPRIEDADE='+vIdPropriedade);
   Open;
   if vQryAux.RecordCount>0 then
   begin
     vIdUserLogado    := vQryAux.FieldByName('ID').AsString;
     vNomeUserLogado  := vQryAux.FieldByName('NAME').AsString;
     vTipoUser        := vQryAux.FieldByName('TIPO').AsString;
     vSenhaUserLogado := vQryAux.FieldByName('PASSWORD').AsString;
     ACESS.Close;
     ACESS.Open;
     ACESS.Insert;
     AcessID_USUARIO.AsString := vIdUserLogado;
     AcessNOME.AsString       := Usuario;
     ACESS.ApplyUpdates(-1);

     Result          := true;
   end
   else
    Result           := false;
 end;
 vQryAux.Free;
end;

function TserviceDB.ValidaLoginDisponivel(Usuario,idPropriedade: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from users');
   Add('where status=1 and ID_PROPRIEDADE='+idPropriedade);
   Add(' and login='+Usuario.QuotedString);
   Open;
   Result :=vQryAux.RecordCount=0;
 end;
 vQryAux.Free;
end;

procedure TserviceDB.VerificaAtualizaPlaUsoMineral(idLocalDestino: string);
var
 vQryAux,vQryAux1 :TFDQuery;
 vDataMinEntrada,vIdCocho:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 vQryAux1 := TFDQuery.Create(nil);
 vQryAux1.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT min(DATA_PROC) minData FROM ANIMAL');
   Add('WHERE STATUS=1 AND ID_LOCAL='+idLocalDestino);
   Open;
   if not IsEmpty then
   begin
      vDataMinEntrada := FormatDateTime('mm/dd/yyyy',FieldByName('minData').AsDateTime);
     Clear;
     Add('SELECT * FROM PLAN_USO_MINERAL A');
     Add('JOIN COCHO B ON A.ID_COCHO=B.ID');
     Add('WHERE B.ID_PASTO='+idLocalDestino);
     Add('AND A.STATUS=1 and data>='+vDataMinEntrada.QuotedString);
     Open;
     if NOT IsEmpty then
     begin
      if vQryAux.FieldByName('ID').AsString.Length>0 then
      begin
       if vQryAux.FieldByName('ID_MINERAL').AsString.Length=0 then
       begin
        with vQryAux1,vQryAux1.SQL do
        begin
         Clear;
         Add('UPDATE PLAN_USO_MINERAL SET ID_MINERAL=');
         Add('(SELECT ID FROM suplemento_mineral WHERE status=1 AND padrao=1)');
         Add('WHERE ID='+vQryAux.FieldByName('ID').AsString);
         ExecSQL;
        end;
       end;
      end;
     end
     else
     begin
       vIdCocho := RetornaIDCocho(idLocalDestino);
       if vIdCocho.Length>0 then
       begin
         with vQryAux1,vQryAux1.SQL do
         begin
          Clear;
          Add('update plan_uso_mineral set status=-1 where id_cocho='+vIdCocho);
          ExecSQL;

          Clear;
          Add('insert into plan_uso_mineral(id_cocho,id_mineral,data,id_usuario)values(');
          Add(vIdCocho+',');
          Add('(SELECT ID FROM suplemento_mineral WHERE status=1 AND padrao=1),');
          Add(vDataMinEntrada.QuotedString+',');
          Add(vIdUserLogado+')');
          ExecSQL;
         end;
       end;
     end;
   end;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaCampoExiste(vTable, vCampo: string): Integer;
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT COUNT(*) QTDE');
   Add('from rdb$relation_fields');
   Add('where RDB$RELATION_FIELDS.rdb$relation_name =:NomeTabela');
   Add('AND RDB$RELATION_FIELDS.RDB$FIELD_NAME =:NomeCampo');
   ParamByName('NomeTabela').AsString := vTable;
   ParamByName('NomeCampo').AsString := vCampo;
   Open;
   Result := FieldByName('QTDE').AsInteger;
 end;
end;

function TserviceDB.VerificaCarenciaMedicamento(idAnimal, vData: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select f.nome||'' Carência :''||');
   Add('LPAD(EXTRACT(DAY FROM c.carencia_data), 2, ''0'') || ''/'' ||');
   Add('LPAD(EXTRACT(MONTH FROM c.carencia_data), 2, ''0'') || ''/'' ||');
   Add('LPAD(EXTRACT(YEAR FROM c.carencia_data), 4, ''0'')Carencia');
   Add('from ANIMAL_SANIDADE c');
   Add('join farmaco f on f.id=c.id_farmaco');
   Add('where c.status=1 and id_animal='+idAnimal);
   Add('and c.carencia_data>='+FormatDateTime('mm/dd/yyyy',StrToDate(vData)).QuotedString);
   Open;
   Result := vQryAux.FieldByName('Carencia').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaCategoriaExiste(Nome: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from CATEGORIAS');
   Add('where Nome='+Nome.QuotedString);
   Open;
   Result := vQryAux.FieldByName('id').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaCategoriaExisteEdit(Nome,Id: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from CategoriaS');
   Add('where Nome='+Nome.QuotedString);
   Add('AND ID<>'+Id);
   Open;
   Result := vQryAux.FieldByName('id').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaAlimentoExiste(Nome: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from ALIMENTO');
   Add('where status=1 and  Nome='+Nome.QuotedString);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaAnimalExiste(vIdenti1, vIdenti2: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from animal a');
   Add('where status=1 and a.identificacao_1='+vIdenti1.QuotedString);
   Add('and a.identificacao_2='+vIdenti2.QuotedString);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaAnimalExisteDestino(vIdenti1, vIdenti2,
  vIdPropriedade: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from animal a');
   Add('where status=1 and a.identificacao_1='+vIdenti1.QuotedString);
   Add('and a.identificacao_2='+vIdenti2.QuotedString);
   Add('and a.id_propriedade='+vIdPropriedade);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaTabelaExiste(vTable: string): Integer;
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT COUNT(*) QTDE');
   Add('FROM RDB$RELATIONS');
   Add('WHERE RDB$FLAGS=1 and RDB$RELATION_NAME=:NomeTabela');
   ParamByName('NomeTabela').AsString := vTable;
   Open;
   Result := FieldByName('QTDE').AsInteger;
 end;
end;

function TserviceDB.VerificaTipoOcorrenciaExiste(Nome: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from AUX_TIPO_OCORRENCIA');
   Add('where status=1 and OCORRENCIA='+(Nome).QuotedString);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaTriggerExiste(vIndex: string): Integer;
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('select count(*) QTDE ');
   Add('from rdb$triggers');
   Add('where upper(rdb$trigger_name) = upper(:NomeTabela)');
   ParamByName('NomeTabela').AsString := vIndex;
   Open;
   Result := FieldByName('QTDE').AsInteger;
 end;
end;

function TserviceDB.VerificaCausaMorteExiste(Nome: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from AUX_MOTIVO_MORTE');
   Add('where status=1 and nome='+(Nome).QuotedString);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaMineralPadrao: string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM SUPLEMENTO_MINERAL');
   Add('WHERE STATUS=1 AND PADRAO=1');
   Open;
   Result := vQryAux.FieldByName('ID').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaMotivoAplicacaoExiste(Nome: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from AUX_MOTIVO_APLICACAO');
   Add('where status=1 and motivo='+(Nome).QuotedString);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaCochoExiste(Nome, IdPasto: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from cocho a');
   Add('where a.status=1 and a.nome=:nome');
   Add('and a.id_pasto=:id_pasto');
   ParamByName('nome').AsString := Nome;
   ParamByName('id_pasto').AsString := IdPasto;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaCurralExiste(Nome: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from currais');
   Add('where codigo='+(Nome).QuotedString);
   Add('and id_propriedade='+vIdPropriedade);
   Open;
   Result := vQryAux.FieldByName('id').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaCurralExisteEdiit(Nome, Id,
  IdFazenda: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from CURRAIS');
   Add('where Nome='+Nome.QuotedString);
   Add('AND ID<>'+Id);
   Open;
   Result := vQryAux.FieldByName('id').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaEstoqueGerado(idPedido: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from estoque_brincos a');
   Add('where a.status=1 and a.id_pedido='+idPedido);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaEstoqueGeradoChip(idPedido: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from ESTOQUE_CHIP a');
   Add('where a.status=1 and a.id_pedido='+idPedido);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaExisteGenerico(Tabela, Campo,
  Valor: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM '+Tabela);
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+vIdPropriedade);
   Add('AND '+Campo+'=:VALOR');
   ParamByName('VALOR').AsString := VALOR;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaExisteGenericoGeral(Tabela, Campo,
  Valor: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM '+Tabela);
   Add('WHERE STATUS=1');
   Add('AND '+Campo+'=:VALOR');
   ParamByName('VALOR').AsString := VALOR;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaFabrincanteFarmaco(Anome: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM FABRICANTE_FARMACO F');
   Add('WHERE F.STATUS=1 AND F.NOME_FANTASIA=:NOME_FANTASIA');
   ParamByName('NOME_FANTASIA').AsString := Anome;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaFaixaExiste(IdadeMin, IdadeMax: integer): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from FAIXA_ETARIA');
   Add('WHERE STATUS=1');
   Add('AND IDADE_MINIMA=:IDADE_MINIMA');
   Add('AND IDADE_MAXIMA=:IDADE_MAXIMA');
   ParamByName('IDADE_MINIMA').AsInteger :=IdadeMin;
   ParamByName('IDADE_MAXIMA').AsInteger :=IdadeMax;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaFaixaUsada(idFaixa: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from categorias');
   Add('WHERE STATUS=1');
   Add('AND ID_FAIXA=:ID_FAIXA');
   ParamByName('ID_FAIXA').AsString := idFaixa;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaFarmacoExiste(Anome,
  AidFabricante: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM FARMACO F');
   Add('WHERE F.STATUS=1 AND F.nome=:NOME');
   Add('AND F.id_fabricante=:idFab');
   ParamByName('NOME').AsString  :=Anome;
   ParamByName('idFab').AsString :=AidFabricante;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.FREE;
end;

function TserviceDB.VerificaFornecimentoIrregular: Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from fornecimento');
   Add('where status=2');
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaGTAExiste(Numero, Serie, Tipo:string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from GTA');
   Add('WHERE STATUS>-1 AND NUMERO=:NUMERO');
   Add('and SERIE=:SERIE');
   Add('and TIPO=:TIPO');
   vQryAux.ParamByName('NUMERO').AsString :=NUMERO;
   vQryAux.ParamByName('SERIE').AsString  :=SERIE;
   vQryAux.ParamByName('TIPO').AsString   :=TIPO;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaGTALotada(ID:STRING): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from GTA');
   Add('WHERE ID='+ID);
   Open;
   Result := FieldByName('LOTADA').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaGTAMesmoNumero(vNumero: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM GTA');
   Add('WHERE STATUS >-1 AND NUMERO =:NUMERO');
   ParamByName('NUMERO').AsString :=vNumero;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaGTAUsada(vId: string): integer;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT count(*) Conta  FROM ANIMAL');
   Add('WHERE ANIMAL.STATUS >-1 AND (GTA_ID=:ID');
   Add('OR ID_GTA_SAIDA=:ID)');
   ParamByName('ID').AsInteger :=vId.ToInteger;
   Open;
   Result := vQryAux.FieldByName('Conta').AsInteger
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaNomeFaseExiste(Nome:STRING): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM AUX_FASES');
   Add('WHERE STATUS=1 AND NOME=:NOME');
   ParamByName('NOME').AsString :=Nome;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaIdentificacaoExistente(vTipo,
  vIdenti,IdFazenda: string): integer;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from ANIMAL');
   Add('where STATUS=1');
   if vTipo='1' then
    Add('and IDENTIFICACAO_1='+vIdenti)
   else
    Add('and IDENTIFICACAO_2='+vIdenti);
   Open;
   Result := vQryAux.FieldByName('id').AsInteger;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaIdentificacaoExitReproc(vIdAnimal,vIdenti: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from ANIMAL');
   Add('where STATUS=1 and id <>'+vIdAnimal);
   Add('and (IDENTIFICACAO_1=:IDENTIFICACAO');
   Add('or IDENTIFICACAO_2=:IDENTIFICACAO)');
   Add('AND ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('IDENTIFICACAO').AsString :=vIdenti;
   ParamByName('ID_PROPRIEDADE').AsString :=serviceDB.vIdPropriedade;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaIndexExiste(vIndex: string): Integer;
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT COUNT(*) QTDE');
   Add('FROM RDB$INDICES');
   Add('WHERE RDB$INDEX_NAME=:NomeTabela');
   ParamByName('NomeTabela').AsString := vIndex;
   Open;
   Result := FieldByName('QTDE').AsInteger;
 end;
end;

function TserviceDB.VerificaIndicacaoFarmaco(Anome: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM AUX_INDICACAO_FARMACO F');
   Add('WHERE F.STATUS=1 AND F.NOME=:NOME');
   ParamByName('NOME').AsString := Anome;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaLaudoAnimal(vTipo, idmorte: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from ');
   if vTipo='M' then
    Add(' LAUDO ')
   else
    Add(' LAUDO_SAIDA ');
   Add('WHERE STATUS =1 and ID_MORTE='+idmorte);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaIdentificacaoExit(vIdenti: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from ANIMAL');
   Add('where STATUS=1');
   Add('and (IDENTIFICACAO_1=:IDENTIFICACAO');
   Add('or IDENTIFICACAO_2=:IDENTIFICACAO)');
   Add('and ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   ParamByName('IDENTIFICACAO').AsString :=vIdenti;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaNFCadastrada(NumNF, IdProdutor: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from estoque_mineral_entrada s ');
   Add('where status=1 and s.numero_nf='+NumNF.QuotedString);
   Add('and s.id_mineral='+IdProdutor);
   Add('and s.id_propriedade='+vIdPropriedade);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaPedidoUsado(idPedido: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from estoque_brincos a');
   Add('where a.usado=1 and a.id_pedido='+idPedido);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaPedidoChipUsado(idPedido: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from ESTOQUE_CHIP a');
   Add('where a.usado=1 and a.id_pedido='+idPedido);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaPlanNutriCadastrada(IdRaca, IdCat, IdFase: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM PLAN_NUTRI');
   Add('WHERE STATUS=1 AND ID_RACA=:ID_RACA');
   Add('AND ID_CATEGORIA=:ID_CATEGORIA');
   Add('AND ID_FASE=:ID_FASE');
   ParamByName('ID_RACA').AsString       := IdRaca;
   ParamByName('ID_CATEGORIA').AsString  := IdCat;
   ParamByName('ID_FASE').AsString       := IdFase;
   Open;
   Result := vQryAux.IsEmpty
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaPrevisaoDia(Pasto, DataPrev, IDProduto: string):Boolean;
begin
 with qryVerificaPrevisao,qryVerificaPrevisao.SQL do
 begin

   Clear;
   Add('SELECT');
   Add('PRV.DATA,');
   Add('PRV.DiaSemana,');
   Add('PRV.PASTO,');
   Add('QTD_CAB,');
   Add('PRV.CONSUMO_CAB,');
   Add('PRV.CONSUMO_CAB*QTD_CAB CONSUMO_TOTAL,');
   Add('PRV.PESO_ESTIMADO,');
   Add('sp.PESO_EMBALAGEM PesoSaco,');
   Add('(PRV.CONSUMO_CAB*QTD_CAB)/sp.PESO_EMBALAGEM TotalSaco');
   Add('FROM');
   Add('(SELECT PFD.*,(SELECT * FROM SP_DIA_SEMANA(PFD."DATA")) DiaSemana');
   Add('FROM PREVISAO_FORN_DIA PFD) PRV');
   Add('JOIN SUPLEMENTO_MINERAL SP ON SP.ID=PRV.ID_PRODUTO');
   Add('WHERE PRV.DATA ='+DataPrev.QuotedString);
   Add('and PRV.ID_LOCAL='+Pasto);
   Add('AND ID_PROPRIEDADE='+vIdPropriedade);
   Open;
   Result := qryVerificaPrevisao.IsEmpty;
 end;
end;

function TserviceDB.VerificaProdutorContratoGTA(vIdGTA,
  vIdContrato: string): string;
var
 vQryAux :TFDQuery;
 vIdPrdGTA,vIdPrdContrato:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT ID_PRODUTOR_ORIGEM FROM GTA');
   Add('WHERE ID=:ID');
   ParamByName('ID').AsString := vIdGTA;
   Open;
   vIdPrdGTA := vQryAux.FieldByName('ID_PRODUTOR_ORIGEM').AsString;

   Clear;
   Add('SELECT ID_PRODUTOR_ORIGEM  FROM CONTRATO_COMPRA_ANIMAL');
   Add('WHERE ID=:ID');
   ParamByName('ID').AsString := vIdContrato;
   Open;
   vIdPrdContrato := vQryAux.FieldByName('ID_PRODUTOR_ORIGEM').AsString;

   if (vIdPrdContrato<>vIdPrdGTA) then
    Result := 'Produtor Origem da GTA diferente do produtor Origem do Contrato!'
   else
    Result := '';
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaProtocoloFarmaco(Anome: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from PROTOCOLO_SANITARIO');
   Add('where STATUS=1 AND NOME=:NOME');
   ParamByName('NOME').AsString := Anome;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;


function TserviceDB.VerificaProtocoloFarmacoExiste(AidProduto,AidProtocolo: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from PROTOCOLO_FARMACOS');
   Add('where STATUS=1 AND ID_FARMACO=:ID_FARMACO');
   Add('AND ID_PROTOCOLO=:ID_PROTOCOLO');
   ParamByName('ID_FARMACO').AsString   := AidProduto;
   ParamByName('ID_PROTOCOLO').AsString := AidProtocolo;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaRacaExiste(Nome:string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from RACA');
   Add('where status=1 and NOME='+Nome.QuotedString);
   Open;
   Result := vQryAux.FieldByName('id').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaCompradorExiste(Nome:string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from comprador');
   Add('where status=1 and NOME='+Nome.QuotedString);
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaRacaExisteEdit(Nome, Id: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from RACA');
   Add('where Nome='+Nome.QuotedString);
   Add('AND ID<>'+Id);
   Open;
   Result := vQryAux.FieldByName('id').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaRastreada(idPropriedade: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from propriedades');
   Add('where id=:ID_PROPRIEDADE');
   ParamByName('ID_PROPRIEDADE').AsString  := IdPropriedade;
   Open;
   Result := vQryAux.FieldByName('RASTREADA').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaRetiroExiste(NomeRetiro: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from RETIRO');
   Add('where status=1 and Nome=:NomeRetiro');
   Add('AND ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('NomeRetiro').AsString      := NomeRetiro;
   ParamByName('ID_PROPRIEDADE').AsString  := vIdPropriedade;
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaStatusCategoria(Id: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from CATEGORIAS');
   Add('where id='+Id);
   Open;
   Result := vQryAux.FieldByName('STATUS').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaStatusCurral(Id: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from currais');
   Add('where id='+Id);
   Open;
   Result := vQryAux.FieldByName('STATUS').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaStatusRaca(Id: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from RACA');
   Add('where id='+Id);
   Open;
   Result := vQryAux.FieldByName('STATUS').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDB.VerificaSuplementoExiste(Nome: string): Boolean;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from SUPLEMENTO_MINERAL');
   Add('where status=1 and NOME='+Nome.QuotedString);
   Add('and pre_mistura='+intToStr(frmPrincipal.vCadConf));
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

end.
