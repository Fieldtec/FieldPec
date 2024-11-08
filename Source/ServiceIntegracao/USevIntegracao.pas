unit USevIntegracao;

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
  MidasLib,System.Math, FireDAC.Phys.IBBase,FMX.Forms,System.UITypes;

type
  TsrvIntegracao = class(TDataModule)
    FDConTGC: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    LotesField: TFDQuery;
    LotesTGC: TFDQuery;
    LotesTGCCURRAL: TStringField;
    LotesTGCLOTE: TIntegerField;
    LotesTGCQTDCABECA: TIntegerField;
    CurraisTGC: TFDQuery;
    LoteManejoTGC: TFDQuery;
    LoteManejoTGCCLL_CODNOME: TIntegerField;
    LoteManejoTGCCLL_CODRACA: TIntegerField;
    LoteManejoTGCCLL_CODCATEGORIA: TIntegerField;
    LoteManejoTGCCLL_CODCURRAL: TIntegerField;
    LoteManejoTGCCLL_NUMCONTRATO: TStringField;
    LoteManejoTGCCLL_REBANHO: TStringField;
    LoteManejoTGCCLL_DESTINO: TStringField;
    LoteManejoTGCCLL_TIPO: TStringField;
    LoteManejoTGCCLL_STATUS: TStringField;
    LoteManejoTGCCLL_DATAFIM: TDateField;
    LoteManejoTGCCLL_OBS: TMemoField;
    LoteManejoTGCCLL_IMG: TBlobField;
    LoteManejoTGCCLL_PESOABATE: TFMTBCDField;
    LoteManejoTGCCLL_DATAREG: TDateField;
    LoteManejoTGCCLL_AVISOLEITURA: TMemoField;
    LoteManejoTGCCLL_FRAME: TStringField;
    LoteManejoTGCCLL_QTDECAB: TIntegerField;
    LoteManejoTGCCLL_PESOMIN: TFMTBCDField;
    LoteManejoTGCCLL_PESOMAX: TFMTBCDField;
    LoteManejoTGCCLL_IMS_PV: TFMTBCDField;
    LoteManejoTGCCLL_FLAG_TRATO: TStringField;
    LoteManejoTGCCLL_CUSTOFIXO: TBCDField;
    LoteManejoTGCCLL_DIASCONFINAM: TIntegerField;
    LoteManejoTGCCLL_MEDIALOTE: TFMTBCDField;
    LoteManejoTGCCLL_CODCONFINAMENTO: TIntegerField;
    LoteManejoTGCCLL_GIRO: TIntegerField;
    LoteManejoTGCCLL_FLAG_CFLOTE: TStringField;
    LoteManejoTGCCLL_CARIMBO: TStringField;
    LoteManejoTGCCLL_ORDEM_ABATE: TIntegerField;
    LoteManejoTGCCLL_DT_ABATE: TDateField;
    LoteManejoTGCCLL_ANO_GIRO: TSmallintField;
    LoteManejoTGCCLL_CUSTOPASTO: TBCDField;
    LoteManejoTGCCLL_COD_CURVA: TIntegerField;
    LoteManejoTGCCLL_DATA_MEDIA_ENT: TDateField;
    LoteManejoTGCCLL_TIPO_EXPLORACAO: TStringField;
    LoteManejoTGCCLL_FLAG_GERAR_FORNECIMENTO: TStringField;
    LoteManejoTGCCLL_TIPO_LEITURA: TStringField;
    LotesFieldID: TIntegerField;
    LotesFieldCURRAL: TStringField;
    LotesFieldQTDCAB: TIntegerField;
    LotesFieldAVG: TFMTBCDField;
    CurraisTGCCC_CODIGO: TIntegerField;
    CurraisTGCCC_CODCONFINAMENTO: TIntegerField;
    CurraisTGCCC_LINHA: TStringField;
    CurraisTGCCC_NUMERO: TStringField;
    CurraisTGCCC_AREA: TFMTBCDField;
    CurraisTGCCC_LINHACOCHO: TFMTBCDField;
    CurraisTGCCC_LOTAMAX: TIntegerField;
    CurraisTGCCC_LOTAMIN: TIntegerField;
    CurraisTGCCC_VOLUMEAGUA: TIntegerField;
    CurraisTGCCC_OBS: TMemoField;
    CurraisTGCCC_STATUS: TStringField;
    CurraisTGCCC_HOSPITAL: TStringField;
    CurraisTGCCC_TAG: TStringField;
    CurraisTGCCC_NOME: TStringField;
    CurraisTGCCC_COR: TStringField;
    CurraisTGCCC_ORDEM: TIntegerField;
    CurraisTGCCC_AREACAB: TFMTBCDField;
    CurraisTGCCC_AREACABCOCHO: TFMTBCDField;
    CurraisTGCCC_SETOR: TStringField;
    CurraisTGCCC_TIPO: TStringField;
    CurraisTGCCC_PESO_MIN: TFloatField;
    CurraisTGCCC_PESO_MAX: TFloatField;
    CurraisTGCCC_LOTADO: TStringField;
    CurraisTGCCC_TAG_INICIAL: TStringField;
    CurraisTGCCC_TAG_FINAL: TStringField;
    CurraisTGCCC_ID_HERANCA: TIntegerField;
    CurraisTGCCC_NOME_HERANCA: TStringField;
    CurraisTGCCC_FLAG_COCHO_COMP: TIntegerField;
    CurraisTGCSYNC_ECO_DATA: TSQLTimeStampField;
    CurraisTGCSYNC_ECO: TStringField;
    TContratosTGC: TFDQuery;
    TContratosTGCCONTR_CODIGO: TIntegerField;
    TContratosTGCCONTR_CONTRATO: TStringField;
    TContratosTGCCONTR_MODALIDADE: TStringField;
    TContratosTGCCONTR_CODFORNECEDOR: TIntegerField;
    TContratosTGCCONTR_CODCATEGORIA: TIntegerField;
    TContratosTGCCONTR_DATA_NEGOCIACAO: TDateField;
    TContratosTGCCONTR_DATA_ENTRADA_BOIS: TDateField;
    TContratosTGCCONTR_DATA_ABATE: TDateField;
    TContratosTGCCONTR_DATA_VENCIMENTO: TDateField;
    TContratosTGCCONTR_NUMEROCAB: TBCDField;
    TContratosTGCCONTR_PESOABATE: TBCDField;
    TContratosTGCCONTR_GIRO: TIntegerField;
    TContratosTGCCONTR_TOTAL_KG_FAZ: TBCDField;
    TContratosTGCCONTR_TOTAL_ARROBA_FAZ: TBCDField;
    TContratosTGCCONTR_TOTAL_ARROBA_CONF: TBCDField;
    TContratosTGCCONTR_TOTAL_KG_CONF: TBCDField;
    TContratosTGCCONTR_TOT_QUEBRA_PER: TBCDField;
    TContratosTGCCONTR_STATUS: TStringField;
    TContratosTGCCONTR_PAUTA_CAB_FOR: TBCDField;
    TContratosTGCCONTR_PAUTA_CAB_CONF: TBCDField;
    TContratosTGCCONTR_PAUTA_ALIQ_PER_FOR: TBCDField;
    TContratosTGCCONTR_PAUTA_ALIQ_PER_CONF: TBCDField;
    TContratosTGCCONTR_PAUTA_ALIQ_CAB_FOR: TBCDField;
    TContratosTGCCONTR_PAUTA_ALIQ_CAB_CONF: TBCDField;
    TContratosTGCCONTR_DIFEPAUTA_CAB: TBCDField;
    TContratosTGCCONTR_FRETE_KM: TBCDField;
    TContratosTGCCONTR_FRETE_VALOR_KM: TBCDField;
    TContratosTGCCONTR_FRETE_CAB_TRANS: TBCDField;
    TContratosTGCCONTR_FRETE_CAB: TBCDField;
    TContratosTGCCONTR_FRETE_ALIQ_PER: TBCDField;
    TContratosTGCCONTR_FRETE_ALIQ_CAB: TBCDField;
    TContratosTGCCONTR_VALORCOMPRA_BOIFAZ: TBCDField;
    TContratosTGCCONTR_VALORCOMPRA_BOICONF: TBCDField;
    TContratosTGCCONTR_CODMERCADOFUTURO: TIntegerField;
    TContratosTGCCONTR_CODOPBANCO: TIntegerField;
    TContratosTGCCONTR_VALOR_SANIDADE_CAB: TBCDField;
    TContratosTGCCONTR_VALOR_SANIDADE_TOT: TBCDField;
    TContratosTGCCONTR_VALOR_RAST_BONI: TBCDField;
    TContratosTGCCONTR_VALOR_DIARIA_CAB: TBCDField;
    TContratosTGCCONTR_RACAOVALORKG: TBCDField;
    TContratosTGCCONTR_VALOR_OPE_CAB: TBCDField;
    TContratosTGCCONTR_JUROS_ANUAL: TBCDField;
    TContratosTGCCONTR_JUROS_PERIODO: TBCDField;
    TContratosTGCCONTR_LIBERADO_WEB: TStringField;
    TContratosTGCCONTR_OBS: TMemoField;
    TContratosTGCCONTR_DESC_MORTE_REJ: TMemoField;
    TContratosTGCCONTR_MORTE_TOT: TBCDField;
    TContratosTGCCONTR_ATIVOS_TOT: TBCDField;
    TContratosTGCCONTR_REJEICAO_TOT: TBCDField;
    TContratosTGCCONTR_ABATIDOS_TOT: TBCDField;
    TContratosTGCCONTR_DATAREG: TDateField;
    TContratosTGCCONTR_DIAS_CONF: TBCDField;
    TContratosTGCCONTR_DIAS_CONF_VENC: TBCDField;
    TContratosTGCCONTR_DT_ENTRA_FLAG: TStringField;
    TContratosTGCCONTR_DT_ALTERACAO: TDateField;
    TContratosTGCCONTR_USUARIO: TStringField;
    TContratosTGCCONTR_TOT_QUEBRA_CAB: TBCDField;
    TContratosTGCCONTR_VALORCOMPRA_ARR_BOIFAZ: TBCDField;
    TContratosTGCCONTR_ORDEMCOMPRA: TStringField;
    TContratosTGCCONTR_VALORCOMPRA_TOT_ANIMAIS: TBCDField;
    TContratosTGCCONTR_VALOR_TOT_ICMS_COMPRA: TBCDField;
    TContratosTGCCONTR_VALOR_TOT_ICMS_RECUP: TBCDField;
    TContratosTGCCONTR_VALOR_TOT_ICMS_LIQ: TBCDField;
    TContratosTGCCONTR_VALOR_TOT_FRETE: TBCDField;
    TContratosTGCCONTR_VALOR_TOT_ANIMAIS: TBCDField;
    TContratosTGCCONTR_VALOR_TOT_COMISSAO: TBCDField;
    TContratosTGCCONTR_CODCONTRATO_ERP: TIntegerField;
    TContratosTGCCONTR_TOTAL_KG_ORIGEM: TBCDField;
    TContratosTGCCONTR_TOTAL_ARROBA_ORIGEM: TBCDField;
    TContratosTGCCONTR_CODNEGOCIADOR: TIntegerField;
    TContratosTGCCONTR_DIF_PESO_KG: TFloatField;
    TContratosTGCCONTR_DIF_PESO_ARROBA: TFloatField;
    TContratosTGCCONTR_QUEBRA_PESO: TFloatField;
    TContratosTGCCONTR_SCORE_ENTRADA: TStringField;
    TContratosTGCCONTR_RC_ENTRADA: TFloatField;
    TContratosTGCCONTR_PESO_ENT_ESTIMADO: TFloatField;
    TContratosTGCCONTR_ORIGEM_ALIMENTAR: TStringField;
    TContratosTGCCONTR_PESAGEM_ORIGEM: TStringField;
    TContratosTGCCONTR_VALOR_ARROBA_PROD: TBCDField;
    TContratosTGCCONTR_RESP_FRETE_ENTRADA: TStringField;
    TContratosTGCCONTR_RESP_RASTREABILIDADE: TStringField;
    TContratosTGCCONTR_RESP_SANIDADE: TStringField;
    TContratosTGCCONTR_RESP_VENDA_ANIMAIS: TStringField;
    TContratosTGCCONTR_VALOR_CAB_RASTREAB: TBCDField;
    TContratosTGCCONTR_BONUS_FRETE: TBCDField;
    TContratosTGCCONTR_BONUS_RASTR: TBCDField;
    TContratosTGCCONTR_BONUS_SANI: TBCDField;
    TContratosTGCCONTR_TIPO_VALOR_ENTRADA: TStringField;
    TContratosTGCCONTR_PESO_BALANCAO_FAZ: TBCDField;
    TContratosTGCCONTR_QUEBRA_BALANCAO: TFloatField;
    TRebanhoTGC: TFDQuery;
    TRebanhoTGCAR_CODALFA: TStringField;
    TRebanhoTGCAR_DESCRICAO: TStringField;
    TRebanhoTGCAR_FLAG_STATUS: TStringField;
    TAnimaisSync: TFDQuery;
    TAnimaisSyncID: TIntegerField;
    TAnimaisSyncID_LOCAL: TIntegerField;
    TAnimaisSyncID_CATEGORIA: TIntegerField;
    TAnimaisSyncID_RACA: TIntegerField;
    TAnimaisSyncIDENTIFICACAO_1: TStringField;
    TAnimaisSyncIDENTIFICACAO_2: TStringField;
    TAnimaisSyncDATA_PROC: TSQLTimeStampField;
    TAnimaisSyncGTA_ID: TIntegerField;
    TAnimaisSyncIDADE_MESES: TIntegerField;
    TAnimaisSyncPESO_ENTRADA: TFMTBCDField;
    TAnimaisSyncULTIMO_PESO: TFMTBCDField;
    TAnimaisSyncDATA_ULTIMO_PESO: TDateField;
    TAnimaisSyncSTATUS: TIntegerField;
    TAnimaisSyncDATAREG: TSQLTimeStampField;
    TAnimaisSyncID_USUARIO: TIntegerField;
    TAnimaisSyncDATA_SAIDA: TDateField;
    TAnimaisSyncPESO_SAIDA: TFMTBCDField;
    TAnimaisSyncID_PROPRIEDADE: TIntegerField;
    TAnimaisSyncID_PRODUTOR: TIntegerField;
    TAnimaisSyncULTIMA_ALTERACAO: TSQLTimeStampField;
    TAnimaisSyncULTIMO_USUARIO: TIntegerField;
    TAnimaisSyncID_LOTESAIDA: TIntegerField;
    TAnimaisSyncID_VEICULO_SAIDA: TIntegerField;
    TAnimaisSyncORIGEM_DADOS: TStringField;
    TAnimaisSyncTIPO_SAIDA: TStringField;
    TAnimaisSyncID_MOTIVO_MORTE: TIntegerField;
    TAnimaisSyncID_LOTE: TIntegerField;
    TAnimaisSyncVALOR_COMPRA: TFMTBCDField;
    TAnimaisSyncVALOR_VENDA: TFMTBCDField;
    TAnimaisSyncID_PRODUTOR_ORIGEM: TIntegerField;
    TAnimaisSyncFLAG_SYNC: TIntegerField;
    TAnimaisSyncDATA_SYNC: TSQLTimeStampField;
    TAnimaisSyncDATA_LIBERACAO: TDateField;
    TAnimaisSyncID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    TAnimaisSyncDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TAnimaisSyncID_CONTRATO_COMPRA: TIntegerField;
    TAnimaisSyncID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    TAnimaisSyncIDADE_MORTE: TIntegerField;
    TAnimaisSyncID_GTA_SAIDA: TIntegerField;
    TAnimaisSyncOBSERVACAO: TStringField;
    TAnimaisSyncTIPO_ENTRADA: TIntegerField;
    TAnimaisSyncPESO_ESTIMADO: TFMTBCDField;
    TAnimaisSyncDATA_PESO_ESTIMADO: TDateField;
    TAnimaisSyncVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    TAnimaisSyncVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    TAnimaisSyncID_CATEGORIA_ATUAL: TIntegerField;
    TAnimaisSyncCONSUMO_ACU: TFMTBCDField;
    TAnimaisSyncID_COMUNICADO_REIDENT: TIntegerField;
    TAnimaisSyncID_COMUNICADO_MORTE: TIntegerField;
    TAnimaisSyncOBS_MORTE: TStringField;
    TAnimaisSyncTIPO_MORTE: TIntegerField;
    TAnimaisSyncDATA_REPROCESSAMENTO: TSQLTimeStampField;
    TAnimaisSyncID_COM_NASCIMENTO: TIntegerField;
    TAnimaisSyncIDENTIFICACAO_MAE: TStringField;
    TAnimaisSyncCARIMBO_NASCIMENTO: TStringField;
    TAnimaisSyncOUTRO_ERAS: TIntegerField;
    TAnimaisSyncIMS_PV: TBCDField;
    TAnimaisSyncFLAG_SYNC_TERCEIROS: TIntegerField;
    TAnimaisSyncDATA_SYNC_TERCEIROS: TDateField;
    TAnimaisSyncCATEGORIA: TStringField;
    TAnimaisSyncRACA: TStringField;
    TAnimaisTGC: TFDQuery;
    TAnimaisTGCCA_CODIGO: TIntegerField;
    TAnimaisTGCCA_CODLOTE: TIntegerField;
    TAnimaisTGCCA_CODFORNECEDOR: TIntegerField;
    TAnimaisTGCCA_NUMERONF: TStringField;
    TAnimaisTGCCA_PELAGEM: TStringField;
    TAnimaisTGCCA_NCF: TStringField;
    TAnimaisTGCCA_SISBOV: TStringField;
    TAnimaisTGCCA_CHIP: TStringField;
    TAnimaisTGCCA_IDADE: TIntegerField;
    TAnimaisTGCCA_FOTO: TBlobField;
    TAnimaisTGCCA_OBS: TMemoField;
    TAnimaisTGCCA_TIPOENTRADA: TStringField;
    TAnimaisTGCCA_USUARIO: TStringField;
    TAnimaisTGCCA_DATAREG: TDateField;
    TAnimaisTGCCA_TIPOANIMAL: TStringField;
    TAnimaisTGCCA_DATAENT: TDateField;
    TAnimaisTGCCA_CODLOTEORG: TIntegerField;
    TAnimaisTGCCA_SAIDA: TStringField;
    TAnimaisTGCCA_DATASAIDA: TDateField;
    TAnimaisTGCCA_VALORENT: TFMTBCDField;
    TAnimaisTGCCA_VALORSAIDA: TFMTBCDField;
    TAnimaisTGCCA_LOTESAIDA: TIntegerField;
    TAnimaisTGCCA_PESO_PROC: TFMTBCDField;
    TAnimaisTGCCA_DATA_PROC: TDateField;
    TAnimaisTGCCA_FRETE: TFMTBCDField;
    TAnimaisTGCCA_NUMCONTRATO: TStringField;
    TAnimaisTGCCA_DATALIB_SISBOV: TDateField;
    TAnimaisTGCCA_CODCATEGORIA: TIntegerField;
    TAnimaisTGCCA_CODRACA: TIntegerField;
    TAnimaisTGCCA_GTA_ENT_NUM: TStringField;
    TAnimaisTGCCA_GTA_SAIDA_NUM: TStringField;
    TAnimaisTGCCA_HORA_PROC: TSQLTimeStampField;
    TAnimaisTGCCA_REBANHO: TStringField;
    TAnimaisTGCCA_ULTIMO_CURRAL: TIntegerField;
    TAnimaisTGCCA_CAUSAMORTE: TStringField;
    TAnimaisTGCCA_PESO_ENT: TFMTBCDField;
    TAnimaisTGCCA_PESO_SAIDA: TFMTBCDField;
    TAnimaisTGCCA_PESO_ABATE: TFMTBCDField;
    TAnimaisTGCCA_DATA_ALIMENT: TDateField;
    TAnimaisTGCCA_DATA_ABATE_PESO: TDateField;
    TAnimaisTGCCA_DATA_ABATE_DIAS: TDateField;
    TAnimaisTGCCA_DIASCONF: TIntegerField;
    TAnimaisTGCCA_DIAS_LIB_SISBOV: TIntegerField;
    TAnimaisTGCCA_RC_ENTRADA: TFMTBCDField;
    TAnimaisTGCCA_RC_SAIDA_PROJ: TFMTBCDField;
    TAnimaisTGCCA_RC_SAIDA: TFMTBCDField;
    TAnimaisTGCCA_PESO_ARR_ENT: TBCDField;
    TAnimaisTGCCA_PESO_ARR_SAIDA: TBCDField;
    TAnimaisTGCCA_PESO_ARR_ABATE: TBCDField;
    TAnimaisTGCCA_VALOR_ARR_ENT: TFMTBCDField;
    TAnimaisTGCCA_VALOR_ARR_SAIDA: TFMTBCDField;
    TAnimaisTGCCA_GMD_PROJ: TFMTBCDField;
    TAnimaisTGCCA_PESO_ATUAL: TFMTBCDField;
    TAnimaisTGCCA_TAG: TStringField;
    TAnimaisTGCCA_CODLOTE_ENTRADA: TIntegerField;
    TAnimaisTGCCA_ESCORE: TIntegerField;
    TAnimaisTGCCA_VALOR_COMPRA_TGP: TFloatField;
    TAnimaisTGCCA_VALOR_CONSUMO_TGP: TFloatField;
    TAnimaisTGCCA_VALOR_SANIDADE_TGP: TFloatField;
    TAnimaisTGCCA_VALOR_PASTO_TGP: TFloatField;
    TAnimaisTGCCA_PESO_BALANCAO: TFloatField;
    TAnimaisTGCCA_GTA_ENT_SERIE: TStringField;
    TAnimaisTGCCA_DATA_BALANCAO: TDateField;
    TAnimaisTGCCA_ULTIMA_SYNC: TStringField;
    TAnimaisTGCCA_DATA_LIMITE_HILTON: TDateField;
    TAnimaisTGCCA_FLAG_HILTON: TStringField;
    TAnimaisTGCCA_DATA_INCLUSAO_BND: TDateField;
    TAnimaisTGCCA_DN: TDateField;
    TAnimaisTGCCA_CODEMBARQUE: TIntegerField;
    LotesTGCIDCURRAL: TIntegerField;
    TAnimaisSyncID_REBANHO: TIntegerField;
    TAnimaisSyncPESO_ENTRADA_CONF: TFMTBCDField;
    TAnimaisSyncDATA_ENTRADA_CONF: TDateField;
    TAnimaisSyncID_CONTRATO: TIntegerField;
    TAnimaisSyncID_BASE_CAMPO: TIntegerField;
    TAnimaisSyncBASE_CAMPO_SYNC: TIntegerField;
    TAnimaisSyncBASE_CAMPO_DT_SYNC: TDateField;
    TAnimaisSyncBLOQUEIO: TIntegerField;
    TAnimaisSyncDATA_NASCIMENTO: TDateField;
    procedure TAnimaisTGCReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
  private
    { Private declarations }
  public
   var vDataBase,vServer :string;
    function ConectaBDTGC:string;
    function LerIni(Diretorio,Chave1, Chave2, ValorPadrao: String): String;
    procedure AbreLotesField;
    function VerificaCurralExisteTGC(NOME:string):integer;
    function VerificaLoteExisteTGC(idCurral: string): Boolean;
    function VerificaRacaExiste(Nome:string):integer;
    function VerificaCategoriaExiste(Nome:string):integer;
    procedure AbreAnimisSinc(vIdLoacal:string);
    procedure AtualizaFlagSync(idAnimal:string);
  end;

var
  srvIntegracao: TsrvIntegracao;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UServiceDB;

{$R *.dfm}

{ TsrvIntegracao }

function TsrvIntegracao.LerIni(Diretorio,Chave1, Chave2, ValorPadrao: String): String;
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

procedure TsrvIntegracao.TAnimaisTGCReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

function TsrvIntegracao.VerificaCategoriaExiste(Nome: string): integer;
var
 vQry,vQry1,vQryF:TFDQuery;
begin
 vQry  := TFDQuery.Create(nil);
 vQry.Connection := FDConTGC;
 vQry1  := TFDQuery.Create(nil);
 vQry1.Connection := FDConTGC;
 vQryF  := TFDQuery.Create(nil);
 vQryF.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM CAD_CATEGORIA');
   Add('WHERE CCAT_NOME='+Nome.QuotedString);
   Open;
   if vQry.IsEmpty then
   begin
    with vQryF,vQryF.SQL do
    begin
     Clear;
     Add('SELECT * FROM CATEGORIAS');
     Add('WHERE STATUS=1 AND NOME='+Nome.QuotedString);
     Open;
    end;


    with vQry1,vQry1.SQL do
    begin
      Clear;
      Add('INSERT INTO CAD_CATEGORIA');
      Add('(CCAT_NOME, CCAT_SEXO,CCAT_CODALFA,CCAT_FLAG_STATUS)');
      Add('VALUES('+Nome.QuotedString+', '+vQryF.FieldByName('SEXO').AsString.QuotedString+','+ QuotedStr(Copy(Nome,0,2))+' ,''A'')');
      ExecSQL;

      Clear;
      Add('SELECT * FROM CAD_CATEGORIA');
      Add('WHERE CCAT_NOME='+Nome.QuotedString);
      Open;
      Result := vQry1.FieldByName('CCAT_CODIGO').AsiNTEGER;

    end;
   end
   else
    Result := vQry.FieldByName('CCAT_CODIGO').AsiNTEGER;
 end;
 vQry1.Free;
 vQry.Free;
 vQryF.Free;
end;

function TsrvIntegracao.VerificaCurralExisteTGC(NOME: string): integer;
begin
 CurraisTGC.Close;
 CurraisTGC.Open;
 CurraisTGC.Filtered := false;
 CurraisTGC.Filter   :='CC_NOME='+NOME.QuotedString;
 CurraisTGC.Filtered := True;
 if CurraisTGC.IsEmpty then
  Result := 0
 else
  Result := CurraisTGCCC_CODIGO.AsInteger;
end;

function TsrvIntegracao.VerificaLoteExisteTGC(idCurral: string): Boolean;
begin
 LoteManejoTGC.Close;
 LoteManejoTGC.Open;
 LoteManejoTGC.Filtered := false;
 LoteManejoTGC.Filter   :='CLL_CODCURRAL='+idCurral;
 LoteManejoTGC.Filtered := True;
 Result := LoteManejoTGC.IsEmpty;
end;

function TsrvIntegracao.VerificaRacaExiste(Nome: string): integer;
var
 vQry,vQry1:TFDQuery;
begin
 vQry  := TFDQuery.Create(nil);
 vQry.Connection := FDConTGC;
 vQry1  := TFDQuery.Create(nil);
 vQry1.Connection := FDConTGC;

 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM CAD_RACA');
   Add('WHERE CR_NOME='+Nome.QuotedString);
   Open;
   if vQry.IsEmpty then
   begin
    with vQry1,vQry1.SQL do
    begin
      Clear;
      Add('INSERT INTO CAD_RACA');
      Add('(CR_NOME, CR_RC,CR_GRAUSANGUE,CR_FLAG_STATUS)');
      Add('VALUES('+Nome.QuotedString+', 50,''MEST'',''A'')');
      ExecSQL;

      Clear;
      Add('SELECT * FROM CAD_RACA');
      Add('WHERE CR_NOME='+Nome.QuotedString);
      Open;
      Result := vQry1.FieldByName('CR_CODIGO').AsInteger;
    end;
   end
   else
    Result := vQry.FieldByName('CR_CODIGO').AsInteger;
 end;
 vQry1.Free;
 vQry.Free;
end;

procedure TsrvIntegracao.AbreAnimisSinc(vIdLoacal: string);
begin
 with TAnimaisSync,TAnimaisSync.SQL do
 begin
   Clear;
   Add('SELECT A.*,B.NOME CATEGORIA,C.NOME RACA FROM ANIMAL A');
   Add('JOIN CATEGORIAS B ON A.ID_CATEGORIA=B.ID');
   Add('JOIN RACA C ON A.ID_RACA=C.ID');
   Add('WHERE A.STATUS=1 AND A.FLAG_SYNC_TERCEIROS=0 AND A.ID_LOCAL='+vIdLoacal);
   Open;
   if not TAnimaisSync.IsEmpty then
     TAnimaisSync.First;
 end;
end;

procedure TsrvIntegracao.AbreLotesField;
begin
 with LotesField,LotesField.SQL do
 begin
   Clear;
   Add('SELECT b.ID,b.CODIGO curral,count(*) qtdCab,avg(a.PESO_ESTIMADO) FROM ANIMAL a');
   Add('JOIN CURRAIS b ON a.ID_LOCAL=b.ID');
   Add('WHERE a.status=1 and a.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND b.TIPO=1 AND FLAG_SYNC_TERCEIROS=0');
   Add('GROUP BY b.ID,b.CODIGO');
   Add('order by b.CODIGO');
   Open;
 end;
end;

procedure TsrvIntegracao.AtualizaFlagSync(idAnimal: string);
var
 vQry,vQry1,vQryF:TFDQuery;
begin
 vQry  := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE ANIMAL S SET S.FLAG_SYNC_TERCEIROS=1,S.DATA_SYNC_TERCEIROS=CURRENT_DATE');
   Add('WHERE S.ID='+idAnimal);
   ExecSQL;
 end;
end;

function TsrvIntegracao.ConectaBDTGC:string;
var
  Arquivo: String;
  vVendorLib:string;
begin
  FDConTGC.Connected := false;
  Arquivo := ExtractFilePath(ParamStr(0))+'CtrMineral.ini';
  if not FileExists(Arquivo) then
  begin
    ShowMessage('Arquivo CtrMineral.ini não localizado no seguinte diretorio:'+#13+
    Arquivo);
    Exit;
  end
  else
  begin
    vVendorLib :=ExtractFilePath(ParamStr(0))+'fbclient_32.dll';
    FDPhysFBDriverLink1.VendorLib := vVendorLib;
    try
      with FDConTGC do
        begin
          Params.Clear;
          Params.Values['DriverID']  :='FB';
          vDataBase := LerIni(Arquivo,'TGC','Database','');
          vServer   := LerIni(Arquivo,'TGC','Server','');
          Params.Values['Server']    :=LerIni(Arquivo,'TGC','Server','');
          Params.Values['Database']  :=LerIni(Arquivo,'TGC','Database','');
          Params.Values['User_name'] :=LerIni(Arquivo,'TGC','User','');
          Params.Values['Password']  :=LerIni(Arquivo,'TGC','Password','');
          Params.Values['Port']      :=LerIni(Arquivo,'TGC','Port','');
          Connected := True;
        end;
        Result := 'TGC Conetado com Sucesso!'
    except
        Result :='Ocorreu uma Falha na configuração no Banco Firebird!';
    end;
  end;
end;

end.
