unit ServiceDB2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,FMX.Dialogs, ppParameter,
  ppDesignLayer, ppCtrls, ppVar, ppBands, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppDB, ppDBPipe;

type
  TserviceDBN = class(TDataModule)
    DET_FASE_PLAN: TFDQuery;
    PlanejamentoNutricional: TFDQuery;
    PlanejamentoNutricionalID: TIntegerField;
    PlanejamentoNutricionalID_USUARIO: TIntegerField;
    PlanejamentoNutricionalDATAREG: TSQLTimeStampField;
    PlanejamentoNutricionalID_CATEGORIA: TIntegerField;
    PlanejamentoNutricionalIDADE_MIN: TIntegerField;
    PlanejamentoNutricionalIDADE_MAX: TIntegerField;
    PlanejamentoNutricionalGMD: TFMTBCDField;
    PlanejamentoNutricionalSTATUS: TIntegerField;
    PlanejamentoNutricionalCONSUMO_ESTIMADO: TFMTBCDField;
    PlanejamentoNutricionalID_RACA: TIntegerField;
    PlanejamentoNutricionalPESO_ABATE: TFMTBCDField;
    PlanejamentoNutricionalID_FASE: TIntegerField;
    PlanejamentoNutricionalID_MINERAL: TIntegerField;
    PlanejamentoNutricionalCATEGORIA: TStringField;
    PlanejamentoNutricionalRACA: TStringField;
    PlanejamentoNutricionalSUPLEMENTO: TStringField;
    GMD_ANUAL_FAZENDA: TFDQuery;
    GMD_ANUAL_FAZENDAID: TIntegerField;
    GMD_ANUAL_FAZENDAID_FAZENDA: TIntegerField;
    GMD_ANUAL_FAZENDAANO: TIntegerField;
    GMD_ANUAL_FAZENDAMES: TIntegerField;
    GMD_ANUAL_FAZENDAGMD: TFMTBCDField;
    GMD_ANUAL_FAZENDAMES_STR: TStringField;
    GMD_ANUAL_FAZENDADATAREG: TSQLTimeStampField;
    GMD_ANUAL_FAZENDAID_USUARIO: TIntegerField;
    GMD_ANUAL_FAZENDAID_USUARIO_ALTERACAO: TIntegerField;
    GMD_ANUAL_FAZENDADATA_ALTERACAO: TSQLTimeStampField;
    GMD_ANUAL_FAZENDASTATUS: TIntegerField;
    LOG_REIDENTIFICACAO: TFDQuery;
    LOG_REIDENTIFICACAOID: TIntegerField;
    LOG_REIDENTIFICACAOID_ANIMAL: TIntegerField;
    LOG_REIDENTIFICACAOTIPO: TIntegerField;
    LOG_REIDENTIFICACAOANTIGA: TStringField;
    LOG_REIDENTIFICACAONOVA: TStringField;
    LOG_REIDENTIFICACAOID_USUARIO: TIntegerField;
    LOG_REIDENTIFICACAODATAREG: TSQLTimeStampField;
    LOG_REIDENTIFICACAOTIPOS: TStringField;
    PLUVIOMETRO: TFDQuery;
    PLUVIOMETRIA: TFDQuery;
    PLUVIOMETROID: TIntegerField;
    PLUVIOMETROID_PROPRIEDADE: TIntegerField;
    PLUVIOMETRONOME: TStringField;
    PLUVIOMETRODATAREG: TSQLTimeStampField;
    PLUVIOMETROID_USUARIO: TIntegerField;
    PLUVIOMETROSTATUS: TIntegerField;
    PLUVIOMETRIAID: TIntegerField;
    PLUVIOMETRIADATA: TDateField;
    PLUVIOMETRIATEMP_MIN: TFMTBCDField;
    PLUVIOMETRIATEMP_MAX: TFMTBCDField;
    PLUVIOMETRIAMM_CHUVA: TFMTBCDField;
    PLUVIOMETRIAID_USUARIO: TIntegerField;
    PLUVIOMETRIADATAREG: TSQLTimeStampField;
    PLUVIOMETRIASTATUS: TIntegerField;
    PLUVIOMETRIAID_PLUVIOMETRO: TIntegerField;
    PLUVIOMETRODATA_ALTERACAO: TSQLTimeStampField;
    PLUVIOMETROID_USUARIO_ALTERACAO: TIntegerField;
    PLUVIOMETRIAID_USUARIO_ALTERACAO: TIntegerField;
    PLUVIOMETRIADATA_ALTERACAO: TSQLTimeStampField;
    PLUVIOMETRIAPLUVIOMETRO: TStringField;
    BEBEDOURO: TFDQuery;
    BEBEDOUROID: TIntegerField;
    BEBEDOUROID_PASTO: TIntegerField;
    BEBEDOUROIDENTIFICACAO: TStringField;
    BEBEDOUROVOLUME: TFMTBCDField;
    BEBEDOUROVAZAO: TFMTBCDField;
    BEBEDOUROFREQ_LIMPEZA: TIntegerField;
    BEBEDOUROULTIMA_LIMPEZA: TDateField;
    BEBEDOURODATAREG: TSQLTimeStampField;
    BEBEDOUROID_USUARIO: TIntegerField;
    BEBEDOURODATA_ALTERACAO: TSQLTimeStampField;
    BEBEDOUROID_USUARIO_ALTERACAO: TIntegerField;
    BEBEDOUROSTATUS: TIntegerField;
    BEBEDOUROPASTO: TStringField;
    qrySelectCurralBebedouro: TFDQuery;
    qrySelectCurralBebedouroID: TIntegerField;
    qrySelectCurralBebedouroCODIGO: TStringField;
    qrySelectCurralBebedouroNOME: TStringField;
    qrySelectCurralBebedouroCHECAR: TStringField;
    QRYLIMPEZABEBEDOURO: TFDQuery;
    QRYLIMPEZABEBEDOUROID: TIntegerField;
    QRYLIMPEZABEBEDOUROID_BEBEDOURO: TIntegerField;
    QRYLIMPEZABEBEDOUROID_RESPOPNSAVEL: TIntegerField;
    QRYLIMPEZABEBEDOURODATA: TDateField;
    QRYLIMPEZABEBEDOUROOBSERVACAO: TStringField;
    QRYLIMPEZABEBEDOURODATAREG: TSQLTimeStampField;
    QRYLIMPEZABEBEDOUROSTATUS: TIntegerField;
    QRYLIMPEZABEBEDOUROID_USUARIO: TIntegerField;
    QRYLIMPEZABEBEDOUROHORA: TTimeField;
    QRYLIMPEZABEBEDOUROPASTO: TStringField;
    QRYLIMPEZABEBEDOURORESPONSAVEL: TStringField;
    LIMPEZABEBEDOURO: TFDQuery;
    LIMPEZABEBEDOUROID: TIntegerField;
    LIMPEZABEBEDOUROID_BEBEDOURO: TIntegerField;
    LIMPEZABEBEDOUROID_RESPOPNSAVEL: TIntegerField;
    LIMPEZABEBEDOURODATA: TDateField;
    LIMPEZABEBEDOUROOBSERVACAO: TStringField;
    LIMPEZABEBEDOURODATAREG: TSQLTimeStampField;
    LIMPEZABEBEDOUROSTATUS: TIntegerField;
    LIMPEZABEBEDOUROID_USUARIO: TIntegerField;
    LIMPEZABEBEDOUROHORA: TTimeField;
    SCOREPASTO: TFDQuery;
    SCOREPASTOID: TIntegerField;
    SCOREPASTOID_PASTO: TIntegerField;
    SCOREPASTODATA: TSQLTimeStampField;
    SCOREPASTOSCORE: TIntegerField;
    SCOREPASTOID_USUARIO: TIntegerField;
    SCOREPASTODATA_REG: TSQLTimeStampField;
    SCOREPASTOSTATUS: TIntegerField;
    SCOREPASTOPASTO: TStringField;
    ALIMENTOS: TFDQuery;
    ALIMENTOSNOME: TStringField;
    ALIMENTOSCUSTO_MEDIO: TFMTBCDField;
    ALIMENTOSUNIDADE_MEDIDA: TStringField;
    ALIMENTOSPESO_EMBALAGEM: TFMTBCDField;
    ALIMENTOSPERCENT_TOLERANCIA: TIntegerField;
    ALIMENTOSMS: TFMTBCDField;
    ALIMENTOSDATAREG: TSQLTimeStampField;
    ALIMENTOSID_USUARIO: TIntegerField;
    ALIMENTOSSTATUS: TIntegerField;
    ALIMENTOSID: TIntegerField;
    TAuxRebanho: TFDQuery;
    TAuxRebanhoID: TIntegerField;
    TAuxRebanhoNOME: TStringField;
    TAuxRebanhoOBSERVACAO: TStringField;
    TAuxRebanhoDATAREG: TSQLTimeStampField;
    TAuxRebanhoSTATUS: TIntegerField;
    TAuxRebanhoID_USUARIO: TIntegerField;
    TAuxRebanhoDATA_ALTERACAO: TSQLTimeStampField;
    TAuxRebanhoID_USUARIO_ALTERACAO: TIntegerField;
    TAuxCargo: TFDQuery;
    TAuxCargoID: TIntegerField;
    TAuxCargoNOME: TStringField;
    TAuxCargoPADRAO: TIntegerField;
    TAuxCargoDATAREG: TSQLTimeStampField;
    TAuxCargoSTATUS: TIntegerField;
    TAuxCargoID_USUARIO: TIntegerField;
    ALIMENTOSSALDO_ATUAL: TFMTBCDField;
    ALIMENTOSDATA_CUSTO_MEDIO: TDateField;
    HIST_MS_ALIMENTO: TFDQuery;
    HIST_MS_ALIMENTOID: TIntegerField;
    HIST_MS_ALIMENTOID_ALIMENTO: TIntegerField;
    HIST_MS_ALIMENTOMS_OLD: TFMTBCDField;
    HIST_MS_ALIMENTOMS_NEW: TFMTBCDField;
    HIST_MS_ALIMENTODATA_ATUALIZACAO: TDateField;
    HIST_MS_ALIMENTOHORA_ATUALIZACAO: TTimeField;
    HIST_MS_ALIMENTOID_USUARIO: TIntegerField;
    HIST_MS_ALIMENTOID_PROPRIEDADE: TIntegerField;
    HIST_MS_ALIMENTOSTATUS: TIntegerField;
    HIST_MS_ALIMENTONOME: TStringField;
    ppReportComunicado: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel62: TppLabel;
    ppDBText41: TppDBText;
    ppLabel69: TppLabel;
    ppDBText42: TppDBText;
    ppLabel70: TppLabel;
    ppDBText43: TppDBText;
    ppLabel71: TppLabel;
    ppDBText44: TppDBText;
    ppLabel72: TppLabel;
    ppDBText45: TppDBText;
    ppLabel73: TppLabel;
    ppDBText46: TppDBText;
    ppLabel74: TppLabel;
    ppDBText47: TppDBText;
    ppShape15: TppShape;
    ppLabel75: TppLabel;
    ppLBLTotalAnimais: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppShape16: TppShape;
    ppLabel83: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppShape17: TppShape;
    ppDBText48: TppDBText;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppFooterBand4: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppLine10: TppLine;
    ppLabel84: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    qryComNasci: TFDQuery;
    qryComNasciIDENTIFICACAO_2: TStringField;
    qryComNasciPRODUTOR: TStringField;
    qryComNasciCNPJ_CPF: TStringField;
    qryComNasciIE: TStringField;
    qryComNasciPROPRIEDADE: TStringField;
    qryComNasciCIDADE: TStringField;
    qryComNasciUF: TStringField;
    qryComNasciNIRF: TStringField;
    qryComNasciINCRA: TStringField;
    qryComNasciDATA: TDateField;
    qryComNasciOBSERVACAO: TStringField;
    qryComNasciCOD_ERAS_BND: TStringField;
    dsComNasci: TDataSource;
    ppDBReportNasci: TppDBPipeline;
    PlanejamentoNutricionalINGESTAO_PV: TFMTBCDField;
    DET_FASE_PLANID: TIntegerField;
    DET_FASE_PLANID_PLANEJAMENTO: TIntegerField;
    DET_FASE_PLANID_FASE: TIntegerField;
    DET_FASE_PLANCONSUMO_PV: TFMTBCDField;
    DET_FASE_PLANGMD: TFMTBCDField;
    DET_FASE_PLANDATAREG: TSQLTimeStampField;
    DET_FASE_PLANID_USUARIO: TIntegerField;
    DET_FASE_PLANID_USUARIO_ALTERACAO: TIntegerField;
    DET_FASE_PLANDATA_ALTERACAO: TSQLTimeStampField;
    DET_FASE_PLANSTATUS: TIntegerField;
    DET_FASE_PLANMES_STR: TStringField;
    RATEIO_OUTROS_CUSTOS: TFDQuery;
    DET_RATEIO_OUTROS_CUSTOS: TFDQuery;
    dsOutrosCustos: TDataSource;
    DET_RATEIO_OUTROS_CUSTOSID: TIntegerField;
    DET_RATEIO_OUTROS_CUSTOSSTATUS: TIntegerField;
    DET_RATEIO_OUTROS_CUSTOSID_USUARIO: TIntegerField;
    DET_RATEIO_OUTROS_CUSTOSDATAREG: TSQLTimeStampField;
    DET_RATEIO_OUTROS_CUSTOSID_OUTROS_CUSTOS: TIntegerField;
    DET_RATEIO_OUTROS_CUSTOSDESCRICAO: TStringField;
    DET_RATEIO_OUTROS_CUSTOSVALOR_CABECA: TFMTBCDField;
    RATEIO_OUTROS_CUSTOSID: TIntegerField;
    RATEIO_OUTROS_CUSTOSSTATUS: TIntegerField;
    RATEIO_OUTROS_CUSTOSID_USUARIO: TIntegerField;
    RATEIO_OUTROS_CUSTOSID_PROPRIEDADE: TIntegerField;
    RATEIO_OUTROS_CUSTOSDATAREG: TSQLTimeStampField;
    RATEIO_OUTROS_CUSTOSDATA_BASE: TDateField;
    RATEIO_OUTROS_CUSTOSVALOR_TOTAL_CABECA: TFMTBCDField;
    RATEIO_OUTROS_CUSTOSSTATUSSTR: TStringField;
    DET_RATEIO_OUTROS_CUSTOS_I: TFDQuery;
    DET_RATEIO_OUTROS_CUSTOS_IID: TIntegerField;
    DET_RATEIO_OUTROS_CUSTOS_ISTATUS: TIntegerField;
    DET_RATEIO_OUTROS_CUSTOS_IID_USUARIO: TIntegerField;
    DET_RATEIO_OUTROS_CUSTOS_IDATAREG: TSQLTimeStampField;
    DET_RATEIO_OUTROS_CUSTOS_IID_OUTROS_CUSTOS: TIntegerField;
    DET_RATEIO_OUTROS_CUSTOS_IDESCRICAO: TStringField;
    DET_RATEIO_OUTROS_CUSTOS_IVALOR_CABECA: TFMTBCDField;
    HistValorInsumo: TFDQuery;
    HistValorInsumoID: TIntegerField;
    HistValorInsumoID_ALIMENTO: TIntegerField;
    HistValorInsumoID_PRODUTO_ACABADO: TIntegerField;
    HistValorInsumoID_ULTIMA_NF_ENTRADA: TIntegerField;
    HistValorInsumoULTIMA_ENTRADA: TDateField;
    HistValorInsumoSALDO_ATUAL: TFMTBCDField;
    HistValorInsumoVALOR_MEDIO: TFMTBCDField;
    HistValorInsumoSTATUS: TIntegerField;
    HistValorInsumoID_USUARIO: TIntegerField;
    HistValorInsumoID_PROPRIEDADE: TIntegerField;
    tmpNaoEncontradas: TFDQuery;
    tmpNaoEncontradasIDENTIFICACAO_1: TStringField;
    tmpNaoEncontradasIDENTIFICACAO_2: TStringField;
    VAGAO: TFDQuery;
    VAGAOID: TIntegerField;
    VAGAONOME: TStringField;
    VAGAOCAPACIDADE: TFMTBCDField;
    VAGAOID_INTEGRACAO: TIntegerField;
    VAGAODATAREG: TSQLTimeStampField;
    VAGAOID_USUARIO: TIntegerField;
    VAGAOSTATUS: TIntegerField;
    DsVagao: TDataSource;
    VagaoRacao: TFDQuery;
    VagaoRacaoID: TIntegerField;
    VagaoRacaoID_VAGAO: TIntegerField;
    VagaoRacaoID_RECEITA: TIntegerField;
    VagaoRacaoBATIDA: TFMTBCDField;
    VagaoRacaoDATAREG: TSQLTimeStampField;
    VagaoRacaoID_USUARIO: TIntegerField;
    VagaoRacaoSTATUS: TIntegerField;
    VagaoRacaoNOME: TStringField;
    VagaoRacaoTIPO: TIntegerField;
    qryPrevistro: TFDQuery;
    qryPrevistroALIMENTO: TStringField;
    qryPrevistroPREVISTO: TFloatField;
    qryPrevistroIDALIMENTO: TIntegerField;
    qryPrevistroIDCONSENTRADO: TIntegerField;
    qryPrevistroPERCENTMATERIASECA: TFMTBCDField;
    qryPrevistroVALORKG: TFMTBCDField;
    qryPrevistroREALIZADO: TFloatField;
    VAGAO_RACAO_ALIMENTOS: TFDQuery;
    qryAux: TFDQuery;
    VagaoRacaoAlim: TFDQuery;
    VagaoRacaoAlimID: TIntegerField;
    VagaoRacaoAlimID_VAGAO: TIntegerField;
    VagaoRacaoAlimID_RECEITA: TIntegerField;
    VagaoRacaoAlimID_ALIMENTO: TIntegerField;
    VagaoRacaoAlimPREFIXO_ALIMENTO: TStringField;
    VagaoRacaoAlimQTDE_MN: TFMTBCDField;
    VagaoRacaoAlimDATAREG: TSQLTimeStampField;
    VagaoRacaoAlimID_USUARIO: TIntegerField;
    VagaoRacaoAlimSTATUS: TIntegerField;
    VAGAOCODIGO: TIntegerField;
    VAGAOTEMPO_MISTURA: TIntegerField;
    VAGAOVOLUME: TIntegerField;
    VAGAODISTRIBUIDOR: TStringField;
    VAGAOMIX: TStringField;
    procedure DET_FASE_PLANReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure BEBEDOUROReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure ALIMENTOSReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
  private
    { Private declarations }
  public
    function  RetornaMaxIDPlanejamento:string;
    procedure AbreDetFazePlanejamento(idPla:string);
    function  AbrirGMDAno(Ano: string): Boolean;
    procedure AlteraMineralPadrão(idMineral:string);
    procedure VerificaDestinoPlanNutricional;
    procedure AbreLogReidentificados(DataReident,DataReidentFim:TDateTime);
    procedure AbrePluviometria(Filtro:string);
    procedure AbreBebedouro(Filtro:string);
    procedure AbreLimpezaBebedouro(Filtro:string);
    procedure DeletaLimpezaBebedouro(Id:string);
    procedure AbreScorePasto(Filtro:string);
    function  ConsultaManejoDigito(vManejoDG:string):string;
    function  ConsultaManejoDigitoEstoque(vManejoDG: string):string;
    procedure AbreHistMsAlimento(idAlimento,Filtro:string);
    procedure AtualizaMSAlimentoRacaoPremistura(idAlimento,MS:string);
    function  RetornaSaldoAtualEntradaNF(idAlimento,dataEntrada:string):string;
    function  RetornaMaxVeiculoLS(idLs:string):string;
    procedure AbrirRateioCustos(vDataDe,vDataAte:TDate);
    function  RetornaMaxIdRateio:string;
    procedure RatearOutrasValore(DataBase:Tdate;ValorCab,IdRateio:string);
    function  RetornaTipoPesagemApartacao(vIdCurral:string):String;
    function  RetornaQtdTotalCabeca(vDataBase:TDate):Integer;
    procedure AbreNaoEncontrados(vTipo:integer);
    procedure GerarInsumosRacaoVagao(vidRacao,vIdVagao,vBatida :string);
    function RetormamaxIdRacaoALimentoVagao:Integer;
    procedure GeraArquivosAnimalTAG(Caminho:string);
    function  SegundosToTime( Segundos : Cardinal ) : String;

  end;

var
  serviceDBN: TserviceDBN;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses ServiceRel, UServiceDB, USeviceConfinamento, UPrincipal;

{$R *.dfm}

{ TserviceDBN }

function TserviceDBN.SegundosToTime( Segundos : Cardinal ) : String;
var
  Seg, Min, Hora: Cardinal;
begin
  Hora := Segundos div 3600;
  Seg := Segundos mod 3600;
  Min := Seg div 60;
  Seg := Seg mod 60;

  Result := FormatFloat(',00', Hora) + ':' +
  FormatFloat('00', Min) + ':' +
  FormatFloat('00', Seg);
end;

procedure TserviceDBN.GeraArquivosAnimalTAG(Caminho:string);
var
 vQryAux :TFDQuery;
 csv: tstringlist;
 I,row, col,Seq: integer;
 f: TField;
 CaminhoOriginal,vHorarioLoop,VtEMPO:string;
 vDataForn:TDate;
begin
// AT_Config.csv
   CaminhoOriginal := caminho;
   csv:= tstringlist.create;
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection := serviceDB.FCon;

  with vQryAux,vQryAux.SQL do
   begin
//     Clear;
//     Add('SELECT TRATO PARAM ,PERCENT VALOR FROM PADRAO_TRATO_CONF');
//     Add('WHERE STATUS =1');
//     Open;
//     vQryAux.First;
//     I :=0;
     csv.add('PARAM;VALOR');
     csv.add('AT_PropProxTrato'+';85');
//     while not vQryAux.eof do
//     begin
//       csv.add(FieldByName('PARAM').AsString+';85');
//       vQryAux.Next;
//     end;
   end;
   caminho := CaminhoOriginal +'\AT_Config.csv';
   csv.savetofile(caminho);
   csv.free;


   csv:= tstringlist.create;
   csv.add('BAT_DATA;BAT_HORA;DIETA_AT_COD;BAL_AT_COD;BAT_BAL_SEQ;FUNC_AT_NUM;RCT_AT_COD;BAT_QTMOPREV;BAT_QTMO;BAT_MIXTEMPO');
   caminho := CaminhoOriginal +'\AT_prev_Bat_.csv';
   csv.savetofile(caminho);
   csv.free;


   csv:= tstringlist.create;
   csv.add('BAT_DATA	BAL_AT_COD	BAT_BAL_SEQ	ALIM_COD	PALIM_COD	BATALIM_QTMOPREV	BATALIM_QTMOREAL');
   caminho := CaminhoOriginal +'\AT_prev_BatAlim_.csv';
   csv.savetofile(caminho);
   csv.free;




//AT_prev_Bal.csv
   csv:= tstringlist.create;
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection :=  serviceDB.FCon;

   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('SELECT');
     Add('CODIGO BAL_AT_COD,');
     Add('NOME  BAL_NOME,');
     Add('CAPACIDADE  BAL_CAPAC,');
     Add('VOLUME BAL_VOL,');
     Add(QuotedStr('T')+' BAL_DISTR,');
     Add(QuotedStr('T')+' BAL_MIX,');
     Add(QuotedStr('0')+' BAL_MIXTIPO,');
     Add('v.TEMPO_MISTURA BAL_MIXTEMPO,');
     Add(QuotedStr('1')+' BAL_ARRED');
     Add('FROM VAGAO v');
     Add('WHERE STATUS =1');
     Open;
     vQryAux.First;
     I :=0;
     csv.add('BAL_AT_COD;BAL_NOME;BAL_CAPAC;BAL_VOL;BAL_DISTR;BAL_MIX;BAL_MIXTIPO;BAL_MIXTEMPO;BAL_ARRED');
     while not vQryAux.eof do
     begin
       VtEMPO := SegundosToTime(vQryAux.FieldByName('BAL_MIXTEMPO').AsInteger);


       csv.add(
        FieldByName('BAL_AT_COD').AsString+';'+
        FieldByName('BAL_NOME').AsString+';'+
        FieldByName('BAL_CAPAC').AsString+';'+
        FieldByName('BAL_VOL').AsString+';'+
        FieldByName('BAL_DISTR').AsString+';'+
        FieldByName('BAL_MIX').AsString+';'+
        FieldByName('BAL_MIXTIPO').AsString+';'+
        VtEMPO+';'+
        FieldByName('BAL_ARRED').AsString
        );
       vQryAux.Next;
     end;
   end;
   caminho := CaminhoOriginal +'\AT_prev_Bal.csv';
   csv.savetofile(caminho);
   csv.free;


//AT_prev_Rct_.csv
   csv:= tstringlist.create;
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection :=  serviceDB.FCon;

   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('SELECT');
     Add('vr.ID RCT_AT_COD,');
     Add('CURRENT_DATE  RCT_DATA,');
     Add(QuotedStr('0')+' RCT_TIPO,');
     Add('vr.BATIDA RCT_QTMO,');
     Add('vr.ID_RECEITA DIETA_AT_COD,');
     Add('v.CODIGO BAL_AT_COD,');
     Add(QuotedStr('F')+' BAL_AUTO,');
     Add(QuotedStr('0')+' RCT_ACTMIX_OP,');
     Add(QuotedStr('0')+' RCT_ACTMIX_PESO');
     Add('FROM VAGAO v');
     Add('JOIN VAGAO_RACAO vr ON v.ID =vr.ID_VAGAO');
     Add('WHERE vr.STATUS =1');
     Add('ORDER BY v.ID ');
     Open;
     vQryAux.First;
     I :=0;
     csv.add('RCT_AT_COD;RCT_DATA;RCT_TIPO;RCT_QTMO;DIETA_AT_COD;BAL_AT_COD;BAL_AUTO;RCT_ACTMIX_OP;RCT_ACTMIX_PESO');
     while not vQryAux.eof do
     begin
       csv.add(
        FieldByName('RCT_AT_COD').AsString+';'+
        FieldByName('RCT_DATA').AsString+';'+
        FieldByName('RCT_TIPO').AsString+';'+
        FieldByName('RCT_QTMO').AsString+';'+
        FieldByName('DIETA_AT_COD').AsString+';'+
        FieldByName('BAL_AT_COD').AsString+';'+
        FieldByName('BAL_AUTO').AsString+';'+
        FieldByName('RCT_ACTMIX_OP').AsString+';'+
        FieldByName('RCT_ACTMIX_PESO').AsString
        );
       vQryAux.Next;
     end;
   end;
   caminho := CaminhoOriginal +'\AT_prev_Rct_.csv';
   csv.savetofile(caminho);
   csv.free;

//AT_prev_Rct_.csv
   csv:= tstringlist.create;
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection := serviceDB.FCon;

   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('SELECT');
     Add(' v.CODIGO RCT_AT_COD, ');
     Add('  COALESCE(NULLIF(R.IDINSUMOALIMENTO,0),R.ID_PREMISTURA) PALIM_COD, ');
     Add(' vra.PREFIXO_ALIMENTO ALIM_COD, ');
     Add(' vra.QTDE_MN  RCTALIM_QTMO, ');
     Add(' vr.ID_RECEITA DIETA_AT_COD, ');
     Add(' r.ORDEM_FABRICACAO RCTALIM_ORDEM,');
     Add(QuotedStr('0')+' PALIM_TIPBATCARGA,');
     Add(QuotedStr('0')+' AMZAL_TIPTRANSPALIM, ');
     Add(QuotedStr(' ')+' AMZAL_AT_COD, ');
     Add(QuotedStr('F')+' RCTALIM_ACIONAR  ');
     Add('FROM VAGAO v  ');
     Add('JOIN VAGAO_RACAO vr ON v.ID =vr.ID_VAGAO  ');
     Add('JOIN VAGAO_RACAO_ALIMENTOS vra ON VRA.ID_VAGAO =vr.ID_VAGAO  AND vra.ID_RECEITA =vr.ID_RECEITA  ');
     Add('JOIN RACAOINSUMOS r ON r.IDRACAO =vra.ID_RECEITA  AND r.IDINSUMOALIMENTO =vra.ID_ALIMENTO  ');
     Add('WHERE vr.STATUS =1 ');
     Add('ORDER BY v.ID ');
     Open;
     vQryAux.First;
     I :=0;
     csv.add('RCT_AT_COD;PALIM_COD;ALIM_COD;RCTALIM_QTMO;RCTALIM_ORDEM;PALIM_TIPBATCARGA;AMZAL_TIPTRANSPALIM;AMZAL_AT_COD;RCTALIM_ACIONAR');
     while not vQryAux.eof do
     begin
       csv.add(
        FieldByName('RCT_AT_COD').AsString+';'+
        FieldByName('PALIM_COD').AsString+';'+
        FieldByName('ALIM_COD').AsString+';'+
        FieldByName('RCTALIM_QTMO').AsString+';'+
        FieldByName('RCTALIM_ORDEM').AsString+';'+
        FieldByName('PALIM_TIPBATCARGA').AsString+';'+
        FieldByName('AMZAL_TIPTRANSPALIM').AsString+';'+
        FieldByName('AMZAL_AT_COD').AsString+';'+
        FieldByName('RCTALIM_ACIONAR').AsString
        );
       vQryAux.Next;
     end;
   end;
   caminho := CaminhoOriginal +'\AT_prev_RctAlim_.csv';
   csv.savetofile(caminho);
   csv.free;

//AT_prev_Alim
 csv:= tstringlist.create;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' id PALIM_COD,');
   Add(' SUBSTRING(NOME FROM 1 FOR 6) ALIM_COD,');
   Add(' a.NOME PALIM_NOME,');
   Add(' 0 ALIM_QTMS,');
   Add(' 0 ALIM_QTMO,');
   Add(' a.ms ALIM_MS,');
   Add(' 0 PALIM_TIPBATCARGA');
   Add('FROM ALIMENTO a ');
   Add('WHERE STATUS =1');
   Open;
   vQryAux.First;
   I :=0;
   csv.add('ALIM_COD;PALIM_COD;PALIM_NOME;ALIM_QTMS;ALIM_QTMO;ALIM_MS;PALIM_TIPBATCARGA');
   while not vQryAux.eof do
   begin
      csv.add(
        FieldByName('ALIM_COD').AsString+';'+
        FieldByName('PALIM_COD').AsString+';'+
        FieldByName('PALIM_NOME').AsString+';'+
        FieldByName('ALIM_QTMS').AsString+';'+
        FieldByName('ALIM_QTMO').AsString+';'+
        FieldByName('ALIM_MS').AsString+';'+
        FieldByName('PALIM_TIPBATCARGA').AsString);
     inc(I);
     vQryAux.Next;
   end;
 end;
 caminho := CaminhoOriginal +'\AT_prev_Alim.csv';
 csv.savetofile(caminho);
 csv.free;


 //AT_prev_Alim
 csv:= tstringlist.create;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' r.id DIETA_AT_COD,');
   Add(' r2.ID  PALIM_COD,');
   Add(' r2.PERCENTMATERIASECA DIETAPALIM_PROPMS,');
   Add(' '''' PALIM_ARRED,');
   Add(' r2.ORDEM_FABRICACAO DIETAPALIM_ORDEMROTOR,');
   Add(' ''''DIETAPALIM_ORDEMTOMBA');
   Add('FROM RACAO r');
   Add('JOIN RACAOINSUMOS r2  ON r.ID =r2.IDRACAO');
   Add('JOIN ALIMENTO a ON a.ID =r2.IDINSUMOALIMENTO');
   Add('WHERE r.STATUS =1 and r2.status=1 ');
   Open;
   vQryAux.First;
   I :=0;
   csv.add('DIETA_AT_COD;PALIM_COD;DIETAPALIM_PROPMS;PALIM_ARRED;DIETAPALIM_ORDEMTOMBA;DIETAPALIM_ORDEMTOMBA');
   while not vQryAux.eof do
   begin
      csv.add(
        FieldByName('DIETA_AT_COD').AsString+';'+
        FieldByName('PALIM_COD').AsString+';'+
        FieldByName('DIETAPALIM_PROPMS').AsString+';'+
        FieldByName('PALIM_ARRED').AsString+';'+
        FieldByName('DIETAPALIM_ORDEMROTOR').AsString+';'+
        FieldByName('DIETAPALIM_ORDEMTOMBA').AsString);
     inc(I);
     vQryAux.Next;
   end;
 end;
 caminho := CaminhoOriginal +'\AT_prev_DietaPAlim.csv';
 csv.savetofile(caminho);
 csv.free;

 //AT_prev_Func.csv
 csv:= tstringlist.create;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' u.ID_INTEGRACAO FUNC_AT_NUM,');
    Add('u.name FUNC_NOME,');
   Add(' CASE');
   Add('  WHEN ac.NOME=''OPERADOR DE PA'' THEN ''T''');
   Add('  ELSE');
   Add('   ''T''');
   Add(' END FUNC_BAT,');
   Add(' CASE');
   Add('  WHEN ac.NOME<>''MOTORISTA'' THEN ''T''');
   Add('  ELSE');
   Add('   ''T''');
   Add(' END FUNC_TRATO');
   Add('FROM USERS u');
   Add('JOIN AUX_CARGO ac ON u.ID_CARGO =ac.ID');
   Add('WHERE U.STATUS =1 AND ID_INTEGRACAO IS NOT NULL');
   Open;
   vQryAux.First;
   I :=0;
   csv.add('FUNC_AT_NUM;FUNC_NOME;FUNC_BAT;FUNC_TRATO');
   while not vQryAux.eof do
   begin
      csv.add(
        FieldByName('FUNC_AT_NUM').AsString+';'+
        FieldByName('FUNC_NOME').AsString+';'+
        FieldByName('FUNC_BAT').AsString+';'+
        FieldByName('FUNC_TRATO').AsString);
     inc(I);
     vQryAux.Next;
   end;
 end;
 caminho := CaminhoOriginal +'\AT_prev_Func.csv';
 csv.savetofile(caminho);
 csv.free;

 //AT_prev_Trato.csv
 csv:= tstringlist.create;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT MAX(DATA_FORN) max_data FROM FORNECIMENTO_CONF');
   Add('WHERE STATUS =1');
   Open;
   vDataForn := FieldByName('max_data').AsDateTime;


   Clear;
   Add('SELECT * FROM PREV_FEED_TRACER(CURRENT_DATE)');
   try
     Open;
     I :=0;
     csv.add(
     'TRATO_DATA;'+
     'TRATO_HORAPREV;'+
     'TRATO_HORA;'+
     'DIETA_AT_COD;'+
     'PIQ_AT_POS;'+
     'TRATO_QTPREVAJ;'+
     'TRATO_QT;'+
     'BAL_AT_COD;'+
     'BAT_BAL_SEQ;'+
     'FUNC_AT_NUM;'+
     'DISTR_AT_COD;'+
     'TRATO_DISTR_SEQ;'+
     'TRATO_QTCONC;'+
     'TRATO_CONC;'+
     'TRATO_PROPCONC;'+
     'TRATO_QTPREV');

     vHorarioLoop :='';
     seq:=1001;
     vQryAux.First;
     while not vQryAux.eof do
     begin
        csv.add(
          FieldByName('TRATO_DATA').AsString+';'+
          FieldByName('TRATO_HORAPREV').AsString+';'+
          FieldByName('TRATO_HORA').AsString+';'+
          FieldByName('DIETA_AT_COD').AsString+';'+
          FieldByName('PIQ_AT_POS').AsString+';'+
          FieldByName('TRATO_QTPREVAJ').AsString+';'+
          FieldByName('TRATO_QT').AsString+';'+
          FieldByName('BAL_AT_COD').AsString+';'+
          FieldByName('BAT_BAL_SEQ').AsString+';'+
          FieldByName('FUNC_AT_NUM').AsString+';'+
          FieldByName('DISTR_AT_COD').AsString+';'+
          FieldByName('TRATO_DISTR_SEQ').AsString+';'+
          FieldByName('TRATO_QTCONC').AsString+';'+
          FieldByName('TRATO_CONC').AsString+';'+
          FieldByName('TRATO_PROPCONC').AsString+';'+
          FieldByName('TRATO_QTPREV').AsString);
          vHorarioLoop := FormatDateTime('hh:mm',FieldByName('TRATO_HORAPREV').AsDateTime);
       vQryAux.Next;
     end;
   except
     on E : Exception do
     begin
        ShowMessage(E.Message);
     end;
   end;
 end;
 caminho := CaminhoOriginal +'\AT_prev_Trato.csv';
 csv.savetofile(caminho);
 csv.free;
 vQryAux.Free;
end;



procedure TserviceDBN.AbreLimpezaBebedouro(Filtro: string);
begin
  with QRYLIMPEZABEBEDOURO,QRYLIMPEZABEBEDOURO.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('A.*,');
    Add('C.codigo Pasto,');
    Add('d.name Responsavel');
    Add('FROM limpezabebedouro A');
    Add('JOIN bebedouro B ON A.id_bebedouro=B.id');
    Add('JOIN currais C ON C.id=B.id_pasto');
    Add('JOIN USERS D ON D.id=A.id_respopnsavel');
    Add('where a.status=1');
    Add('and c.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
    Add(Filtro);
    Open;
  end;
end;

procedure TserviceDBN.AbreLogReidentificados(DataReident,DataReidentFim: TDateTime);
begin
  with LOG_REIDENTIFICACAO,LOG_REIDENTIFICACAO.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('A.*,');
    Add('CASE TIPO');
    Add('WHEN 1 THEN ''CHIP''');
    Add('WHEN 2 THEN ''NCF''');
    Add('END TIPOS');
    Add('FROM LOG_REIDENTIFICACAO A');
    Add('WHERE CAST(DATAREG AS DATE) BETWEEN :DATAREG AND :DATAREGFIM');
    ParamByName('DATAREG').AsDate    := DataReident;
    ParamByName('DATAREGFIM').AsDate := DataReidentFim;
    Open;
  end;
end;

procedure TserviceDBN.AbreNaoEncontrados(vTipo: integer);
begin
 with tmpNaoEncontradas,tmpNaoEncontradas.SQL do
 begin
   Clear;
   Add('SELECT * FROM TMP_ANIMAL');
   if vTipo=1 then
   begin
     Add('WHERE IDENTIFICACAO_1 NOT IN (SELECT IDENTIFICACAO_1 FROM ANIMAL a');
     Add('WHERE status=1)');
   end
   else
   begin
    Add('WHERE IDENTIFICACAO_2 NOT IN (SELECT IDENTIFICACAO_2 FROM ANIMAL a');
     Add('WHERE status=1)');
   end;
   Open;
 end;
end;

procedure TserviceDBN.AbrePluviometria(Filtro:string);
begin
 with PLUVIOMETRIA,PLUVIOMETRIA.SQL do
 begin
   Clear;
   Add('SELECT A.*,B.NOME PLUVIOMETRO FROM PLUVIOMETRIA A');
   Add('JOIN PLUVIOMETRO B ON A.ID_PLUVIOMETRO=B.ID');
   Add('WHERE A.STATUS=1');
   Add('AND B.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add(Filtro);
   Open;
 end;
end;

procedure TserviceDBN.AbreScorePasto(Filtro: string);
begin
 with SCOREPASTO,SCOREPASTO.SQL do
 begin
   Clear;
   Add('SELECT A.*,B.CODIGO PASTO FROM SCOREPASTO A');
   Add('JOIN CURRAIS B ON A.ID_PASTO=B.ID');
   Add('WHERE A.STATUS=1 AND B.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add(Filtro);
   Open;
 end;
end;

function TserviceDBN.AbrirGMDAno(Ano: string): Boolean;
begin
 with GMD_ANUAL_FAZENDA,GMD_ANUAL_FAZENDA.SQL do
 begin
   Clear;
   Add('select A.*,');
   Add('CASE');
   Add(' WHEN MES=1  THEN ''JANEIRO''');
   Add(' WHEN MES=2  THEN ''FEVEREIRO''');
   Add(' WHEN MES=3  THEN ''MARCO''');
   Add(' WHEN MES=4  THEN ''ABRIL''');
   Add(' WHEN MES=5  THEN ''MAIO''');
   Add(' WHEN MES=6  THEN ''JUNHO''');
   Add(' WHEN MES=7  THEN ''JULHO''');
   Add(' WHEN MES=8  THEN ''AGOSTO''');
   Add(' WHEN MES=9  THEN ''SETEMBRO''');
   Add(' WHEN MES=10 THEN ''OUTUBRO''');
   Add(' WHEN MES=11 THEN ''NOVEMBRO''');
   Add(' WHEN MES=12 THEN ''DEZEMBRO''');
   Add('END MES_STR');
   Add('from GMD_ANUAL_FAZENDA A ');
   Add('WHERE A.ID_FAZENDA='+serviceDB.vIdPropriedade);
   Add('AND A.ANO='+Ano);
   Open;
   Result := GMD_ANUAL_FAZENDA.IsEmpty;
 end;
end;


procedure TserviceDBN.AbrirRateioCustos(vDataDe, vDataAte: TDate);
begin
 with RATEIO_OUTROS_CUSTOS,RATEIO_OUTROS_CUSTOS.SQL do
 begin
   Clear;
   Add('SELECT S.*, ');
   Add('CASE');
   Add(' WHEN s.STATUS =1 THEN ''NÃO RATEADO''');
   Add(' WHEN s.STATUS =2 THEN ''RATEADO''');
   Add('END StatusStr');
   Add('FROM RATEIO_OUTROS_CUSTOS S');
   Add('WHERE STATUS>-1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND DATA_BASE BETWEEN :dataDe and :dateAte');
   Add('ORDER BY ID DESC');
   ParamByName('dataDe').AsDate  := vDataDe;
   ParamByName('dateAte').AsDate := vDataAte;
   Open;
   DET_RATEIO_OUTROS_CUSTOS.Open;
 end;
end;

procedure TserviceDBN.ALIMENTOSReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TserviceDBN.AlteraMineralPadrão(idMineral: string);
var
 vQry :TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE SUPLEMENTO_MINERAL SET PADRAO=0');
   Add(',ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
   Add(',DATA_ALTERACAO=:DATA_ALTERACAO');
   Add('WHERE PADRAO=1');
   ParamByName('DATA_ALTERACAO').AsDateTime := now;
   ExecSQL;

   Clear;
   Add('UPDATE SUPLEMENTO_MINERAL SET PADRAO=1');
   Add(',ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
   Add(',DATA_ALTERACAO=:DATA_ALTERACAO');
   Add('WHERE ID='+idMineral);
   ParamByName('DATA_ALTERACAO').AsDateTime := now;
   ExecSQL;
 end;
end;


procedure TserviceDBN.AtualizaMSAlimentoRacaoPremistura(idAlimento, MS: string);
var
 vQryAux,vQryAux1 :TFDQuery;
 vMsKGM :string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;

 vQryAux1 := TFDQuery.Create(nil);
 vQryAux1.Connection := serviceDB.fCon;

 with vQryAux1,vQryAux1.SQL do
 begin
   Clear;
   Add('UPDATE ALIMENTO SET MS=:MS');
   Add('WHERE ID=:ID_ALIM');
   ParamByName('MS').AsString      :=MS;
   ParamByName('ID_ALIM').AsString :=idAlimento;
   ExecSQL;

   Clear;
   Add('SELECT * FROM RACAO WHERE STATUS=1');
   Open;
   while not vQryAux1.eof  do
   begin
     with vQryAux,vQryAux.SQL do
     begin
       Clear;
       Add('UPDATE RACAOINSUMOS SET PERCENTMATERIASECA=:MS');
       Add(',KGMATERIANATURAL=(KGMATERIASECA/cast(:MS as decimal(15,3))*100)');
       Add('WHERE STATUS=1 AND IDRACAO =:IDRACAO');
       Add('AND IDINSUMOALIMENTO=:ID_ALIM');
       ParamByName('MS').AsString      :=MS;
       ParamByName('IDRACAO').AsString :=vQryAux1.FieldByName('ID').AsString;
       ParamByName('ID_ALIM').AsString :=idAlimento;
       ExecSQL;
       vQryAux1.Next;
     end;
   end;

   Clear;
   Add('SELECT ID FROM SUPLEMENTO_MINERAL A');
   Add('WHERE STATUS=1 AND PRE_MISTURA=1');
   Add('AND A.id IN(SELECT ID_MINERAL');
    Add('FROM MINERAL_FORMULACAO WHERE ID_ALIMENTO=:ID_ALIM)');
   ParamByName('ID_ALIM').AsString :=idAlimento;
   Open;
   while not vQryAux1.eof  do
   begin
     with vQryAux,vQryAux.SQL do
     begin
       Clear;
       Add('UPDATE MINERAL_FORMULACAO SET MS=:MS');
       Add('WHERE ID_MINERAL =:ID_MINERAL');
       Add('AND ID_ALIMENTO=:ID_ALIM');
       ParamByName('MS').AsString      :=MS;
       ParamByName('ID_MINERAL').AsString :=vQryAux1.FieldByName('ID').AsString;
       ParamByName('ID_ALIM').AsString :=idAlimento;
       ExecSQL;

       Clear;
       Add('UPDATE RACAOINSUMOS SET KGMATERIANATURAL=(KGMATERIASECA/cast(:MS as decimal(15,3))*100)');
       Add('WHERE STATUS=1 AND ID_PREMISTURA=:ID_ALIM');
       ParamByName('MS').AsString      :=MS;
       ParamByName('ID_ALIM').AsString :=vQryAux1.FieldByName('ID').AsString;;
       ExecSQL;

     end;
     vQryAux1.Next;
   end;
   Clear;
   Add('SELECT * FROM RACAO WHERE STATUS=1');
   Open;
   while not vQryAux1.eof  do
   begin
     with vQryAux,vQryAux.SQL do
     begin
       ServiceConf.AtualizaoInclusaoRacao(vQryAux1.FieldByName('ID').AsString);
       ServiceConf.AtualizaoInclusaoRacao(vQryAux1.FieldByName('ID').AsString);
       ServiceConf.AtualizaMsRacao(vQryAux1.FieldByName('ID').AsString);
       vQryAux1.Next;
     end;
   end;

 end;
 vQryAux.Free;
end;

procedure TserviceDBN.BEBEDOUROReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

function TserviceDBN.ConsultaManejoDigito(vManejoDG: string):string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select');
   Add('identificacao_2');
   Add('from animal a');
   Add('where substring(a.identificacao_2 from 9 for 7)='+vManejoDG.QuotedString);
   Open;
   Result := FieldByName('identificacao_2').AsString;
 end;
 vQryAux.Free;
end;

function TserviceDBN.ConsultaManejoDigitoEstoque(vManejoDG: string):string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select');
   Add('SISBOV');
   Add('from ESTOQUE_BRINCOS a');
   Add('where substring(a.SISBOV from 9 for 7)='+vManejoDG.QuotedString);
   if frmPrincipal.vIdBaseCampo<>'0' then
    Add('and ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Open;
   Result := FieldByName('SISBOV').AsString;
 end;
 vQryAux.Free;
end;


procedure TserviceDBN.DeletaLimpezaBebedouro(Id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('UPDATE limpezabebedouro S SET S.status=-1');
   Add('WHERE ID='+Id);
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TserviceDBN.DET_FASE_PLANReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;



procedure TserviceDBN.GerarInsumosRacaoVagao(vidRacao, vIdVagao,
  vBatida: string);
begin
   with qryAux,qryAux.SQL do
   begin
     Clear;
     Add('DELETE FROM VAGAO_RACAO_ALIMENTOS WHERE ID_VAGAO='+vIdVagao);
     Add('and ID_RECEITA='+vidRacao);
     ExecSQL;
   end;

   with qryPrevistro,qryPrevistro.SQL do
   begin
     Clear;
     Add('SELECT');
     Add('b.id idAlimento,');
     Add('S.id idConsentrado,');
     Add(' COALESCE(b.NOME,s.NOME) alimento,');
     Add(' A.PERCENTMATERIASECA,');
     Add('COALESCE(case');
     Add('  when S.id=1 then s.valor_kg');
     Add('  else');
     Add('   B.CUSTO_MEDIO');
     Add(' end,0) VALORKG,');
     Add(vBatida+' *(CAST(a.INCLUSAOMATERIANATURAL AS DOUBLE PRECISION)/100) Previsto,');
     Add(vBatida+' *(CAST(a.INCLUSAOMATERIANATURAL AS DOUBLE PRECISION)/100) Realizado');
     Add('FROM RACAOINSUMOS a');
     Add('LEFT JOIN ALIMENTO b ON a.IDINSUMOALIMENTO=b.ID');
     Add('LEFT JOIN SUPLEMENTO_MINERAL s ON a.ID_PREMISTURA=s.ID');
     Add('WHERE a.STATUS=1 and IDRACAO='+vIdracao);
     qryPrevistro.SQL.Text;
     Open;
   end;
   qryPrevistro.First;
   while not qryPrevistro.eof do
   begin

   with qryAux,qryAux.SQL do
   begin
     Clear;
     Add('INSERT INTO VAGAO_RACAO_ALIMENTOS');
     Add('(ID_VAGAO,ID_RECEITA,ID_ALIMENTO,PREFIXO_ALIMENTO,QTDE_MN,ID_USUARIO)');
     Add('VALUES(:ID_VAGAO,:ID_RECEITA,:ID_ALIMENTO,:PREFIXO_ALIMENTO,:QTDE_MN,:ID_USUARIO)');
     ParamByName('ID_VAGAO').AsInteger    := vIdVagao.ToInteger;
     ParamByName('ID_RECEITA').AsInteger  := vidRacao.ToInteger;
     ParamByName('ID_ALIMENTO').AsInteger := qryPrevistroIDALIMENTO.AsInteger;
     ParamByName('PREFIXO_ALIMENTO').AsString := Copy(qryPrevistroALIMENTO.AsString,0,6);
     ParamByName('QTDE_MN').AsFloat           := qryPrevistroPREVISTO.AsFloat;
     ParamByName('ID_USUARIO').AsInteger      := serviceDB.vIdUserLogado.ToInteger;
     ExecSQL;
   end;

//    VAGAO_RACAO_ALIMENTOS.Close;
//    VAGAO_RACAO_ALIMENTOS.Open;
//    VAGAO_RACAO_ALIMENTOS.Insert;
//    VAGAO_RACAO_ALIMENTOS.FieldByName('ID').AsInteger              := serviceDBN.RetormamaxIdRacaoALimentoVagao;
//    VAGAO_RACAO_ALIMENTOS.FieldByName('DATAREG').AsDateTime        := NOW;
//    VAGAO_RACAO_ALIMENTOS.FieldByName('ID_VAGAO').AsString         := vIdVagao;
//    VAGAO_RACAO_ALIMENTOS.FieldByName('ID_RECEITA').AsString       := vidRacao;
//    VAGAO_RACAO_ALIMENTOS.FieldByName('ID_ALIMENTO').AsString      := qryPrevistroIDALIMENTO.AsString;
//    VAGAO_RACAO_ALIMENTOS.FieldByName('PREFIXO_ALIMENTO').AsString := Copy(qryPrevistroALIMENTO.AsString,0,6);
//    VAGAO_RACAO_ALIMENTOS.FieldByName('QTDE_MN').AsString          := qryPrevistroPREVISTO.AsString;
//    VAGAO_RACAO_ALIMENTOS.FieldByName('ID_USUARIO').AsString       := serviceDB.vIdUserLogado;
//    VAGAO_RACAO_ALIMENTOS.FieldByName('STATUS').AsINteger          := 1;
//    VAGAO_RACAO_ALIMENTOS.ApplyUpdates(-1);
    qryPrevistro.Next;
   end;
end;

procedure TserviceDBN.AbreBebedouro(Filtro: string);
begin
  with BEBEDOURO,BEBEDOURO.SQL do
 begin
   Clear;
   Add('SELECT A.*,B.CODIGO PASTO FROM BEBEDOURO A');
   Add('JOIN CURRAIS B ON A.ID_PASTO=B.ID');
   Add('WHERE A.STATUS=1');
   Add('AND B.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add(Filtro);
   Open;
 end;
end;

procedure TserviceDBN.AbreDetFazePlanejamento(idPla: string);
begin
 with DET_FASE_PLAN,DET_FASE_PLAN.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('d.*,');
   Add('CASE');
   Add(' WHEN ID_FASE=1  THEN ''JANEIRO''');
   Add(' WHEN ID_FASE=2  THEN ''FEVEREIRO''');
   Add(' WHEN ID_FASE=3  THEN ''MARCO''');
   Add(' WHEN ID_FASE=4  THEN ''ABRIL''');
   Add(' WHEN ID_FASE=5  THEN ''MAIO''');
   Add(' WHEN ID_FASE=6  THEN ''JUNHO''');
   Add(' WHEN ID_FASE=7  THEN ''JULHO''');
   Add(' WHEN ID_FASE=8  THEN ''AGOSTO''');
   Add(' WHEN ID_FASE=9  THEN ''SETEMBRO''');
   Add(' WHEN ID_FASE=10 THEN ''OUTUBRO''');
   Add(' WHEN ID_FASE=11 THEN ''NOVEMBRO''');
   Add(' WHEN ID_FASE=12 THEN ''DEZEMBRO''');
   Add('END MES_STR');
   Add('FROM DET_FASE_PLAN d');
   Add('WHERE d.STATUS=1 AND ID_PLANEJAMENTO='+idPla);
   Open;
 end;
end;

procedure TserviceDBN.AbreHistMsAlimento(idAlimento, Filtro: string);
begin
 with HIST_MS_ALIMENTO,HIST_MS_ALIMENTO.SQL do
 begin
   Clear;
   Add('select a.*,b.nome from HIST_MS_ALIMENTO a');
   Add('join alimento b on a.id_alimento=b.id');
   Add('where a.status=1 and a.id_alimento=:idAlimento');
   Add(Filtro);
   ParamByName('idAlimento').AsString :=idAlimento;
   Open;
 end;

 HistValorInsumo.Close;
 HistValorInsumo.ParamByName('id').AsInteger := idAlimento.ToInteger;
 HistValorInsumo.Open;

end;

procedure TserviceDBN.RatearOutrasValore(DataBase:Tdate; ValorCab,IdRateio: string);
var
 vQryAux,vQryAuxLoop :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 vQryAuxLoop:= TFDQuery.Create(nil);
 vQryAuxLoop.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from ANIMAL');
   Add('where status>-1');
   Add('and DATA_PROC <= '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataBase))+
        ' and DATA_SAIDA IS NULL OR DATA_SAIDA>'+QuotedStr(FormatDateTime('mm/dd/yyyy',DataBase)));
   Open;
   while not vQryAux.eof do
   begin
     with vQryAuxLoop,vQryAuxLoop.sql do
     begin
       Clear;
       Add('UPDATE ANIMAL SET OUTROS_CUSTOS = OUTROS_CUSTOS+'+ValorCab);
       Add('WHERE ID='+vQryAux.FieldByName('ID').AsString);
       ExecSQL;
       vQryAux.Next;
     end;
   end;
 end;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('update RATEIO_OUTROS_CUSTOS set status=2');
   Add('where id='+IdRateio);
   ExecSQL;
 end;
 vQryAuxLoop.Free;
 vQryAux.Free;
end;

function TserviceDBN.RetormamaxIdRacaoALimentoVagao: Integer;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT COALESCE(max(id),0)+1 idmax FROM VAGAO_RACAO_ALIMENTOS');
   Open;
   Result := vQryAux.FieldByName('idmax').AsInteger;
 end;
end;

function TserviceDBN.RetornaMaxIDPlanejamento: string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(ID) max_ID from PLAN_NUTRI');
   Open;
   result:= vQryAux.fieldbyname('max_ID').AssTring;
 end;
 vQryAux.Free;
end;

function TserviceDBN.RetornaMaxIdRateio: string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
    Clear;
    Add('SELECT max(id) maxId from RATEIO_OUTROS_CUSTOS');
    Add('WHERE STATUS=1');
    Open;
    Result := FieldByName('maxId').AsString;
  end;
 vQryAux.Free;
end;

function TserviceDBN.RetornaMaxVeiculoLS(idLs: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
    Clear;
    Add('SELECT max(id) maxId from VEICULOS_EMBARQUE');
    Add('WHERE ID_LOTESAIDA='+idLs);
    Add('AND LOTADO=1 AND STATUS=1');
    Open;
    Result := FieldByName('maxId').AsString;
  end;
 vQryAux.Free;
end;

function TserviceDBN.RetornaQtdTotalCabeca(vDataBase: TDate): Integer;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select Count(*) qtd from ANIMAL');
   Add('where status>-1');
   Add('and DATA_PROC <= '+QuotedStr(FormatDateTime('mm/dd/yyyy',vDataBase))+
        ' and DATA_SAIDA IS NULL OR DATA_SAIDA>'+QuotedStr(FormatDateTime('mm/dd/yyyy',vDataBase)));
   Open;
   Result := FieldByName('qtd').AsInteger;
  end;
 vQryAux.Free;
end;

function TserviceDBN.RetornaSaldoAtualEntradaNF(idAlimento,
  dataEntrada: string): string;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
    Clear;
    Add('SELECT * FROM RETORNA_CUSTO_MEDIO_ALIMENTO('+
     serviceDB.vIdPropriedade+','+
     idAlimento+','+
     dataEntrada+')'
    );
    Open;
    Result := FieldByName('SALDO_ATUAL').AsString;
  end;
 vQryAux.Free;
end;

function TserviceDBN.RetornaTipoPesagemApartacao(vIdCurral: string): String;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
    Clear;
    Add('SELECT * FROM APARTACAO');
    Add('WHERE ID_CURRAL_PASTO='+vIdCurral);
    Open;
    Result := FieldByName('TIPO_PESAGEM').AsString;
 end;
end;

procedure TserviceDBN.VerificaDestinoPlanNutricional;
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
    Clear;
    Add('UPDATE PLAN_USO_MINERAL SET STATUS=-1');
    Add('WHERE ID_COCHO NOT IN(');
    Add('SELECT DISTINCT B.ID FROM ANIMAL A');
    Add('JOIN COCHO B ON A.ID_LOCAL=B.ID_PASTO');
    Add('WHERE A.STATUS=1)');
    Add('AND STATUS=1');
    ExecSQL;

    Clear;
    Add('INSERT INTO PLAN_USO_MINERAL');
    Add('SELECT');
    Add('null,A.ID,');
    Add('(SELECT ID FROM SUPLEMENTO_MINERAL WHERE PADRAO=1)');
    Add(',MIN(DATA_PROC),1 idUsuario,CURRENT_TIMESTAMP,1');
    Add('FROM ANIMAL AN');
    Add('JOIN COCHO A ON ID_PASTO=ID_LOCAL');
    Add('WHERE  AN.STATUS=1 AND A.ID NOT IN(SELECT id_cocho FROM PLAN_USO_MINERAL WHERE STATUS=1)');
    Add('GROUP BY A.ID');
    ExecSQL;
 end;
 vQryAux.Free;
end;

end.
