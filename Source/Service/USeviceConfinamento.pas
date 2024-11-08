unit USeviceConfinamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.TabControl, FMX.StdCtrls,
  FMX.Effects, FMX.Objects, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts, FMX.Menus, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,System.Win.Registry,
  Fmx.Bind.Grid, Data.Bind.Grid,FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Threading, FMX.EditBox, FMX.SpinBox,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.ImageList, FMX.ImgList,Winapi.Windows,System.DateUtils,
  FireDAC.Stan.Intf, Winsoft.FireMonkey.FComPort, ppDB, ppDBPipe, ppParameter,
  ppDesignLayer, ppCtrls, ppBands, ppVar, Vcl.Imaging.pngimage, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TServiceConf = class(TDataModule)
    TRacao: TFDQuery;
    TRacaoID: TIntegerField;
    TRacaoTIPO: TIntegerField;
    TRacaoNOME: TStringField;
    TRacaoGMD: TFMTBCDField;
    TRacaoSTATUS: TIntegerField;
    TRacaoDATAREGISTRO: TSQLTimeStampField;
    TRacaoIDUSUARIO: TIntegerField;
    TRacaoDATAALTERACAO: TSQLTimeStampField;
    TRacaoIDUSUARIOALTERACAO: TIntegerField;
    TRacaoVALORKG: TFMTBCDField;
    TRacaoDATAFORMULACAO: TDateField;
    TRacaoID_PROPRIEDADE: TIntegerField;
    TRacaoTIPO_STR: TStringField;
    TRacaoSTATUS_STR: TStringField;
    TRacaoMATERIASECA: TFMTBCDField;
    TRacaoInsumos: TFDQuery;
    TRacaoInsumosID: TIntegerField;
    TRacaoInsumosIDRACAO: TIntegerField;
    TRacaoInsumosIDINSUMOALIMENTO: TIntegerField;
    TRacaoInsumosPERCENTMATERIASECA: TFMTBCDField;
    TRacaoInsumosKGMATERIASECA: TFMTBCDField;
    TRacaoInsumosINCLUSAOMATERIASECA: TFMTBCDField;
    TRacaoInsumosINCLUSAOMATERIANATURAL: TFMTBCDField;
    TRacaoInsumosVALORKG: TFMTBCDField;
    TRacaoInsumosVALORINCLUSAO: TFMTBCDField;
    TRacaoInsumosSTATUS: TIntegerField;
    TRacaoInsumosDATAREGISTRO: TSQLTimeStampField;
    TRacaoInsumosIDUSUARIO: TIntegerField;
    TRacaoInsumosDATAALTERACAO: TSQLTimeStampField;
    TRacaoInsumosIDUSUARIOALTERACAO: TIntegerField;
    TRacaoInsumosKGMATERIANATURAL: TFMTBCDField;
    TRacaoInsumosORDEM_FABRICACAO: TIntegerField;
    TRacaoInsumosINSUMO: TStringField;
    PlanNutri: TFDQuery;
    DetPlanNutri: TFDQuery;
    PlanNutriID: TIntegerField;
    PlanNutriNOME: TStringField;
    PlanNutriOBSERVACAO: TStringField;
    PlanNutriID_USUARIO: TIntegerField;
    PlanNutriID_USUARIO_ALTERACAO: TIntegerField;
    PlanNutriDATA_ALTERACAO: TSQLTimeStampField;
    PlanNutriDATAREG: TDateField;
    PlanNutriSTATUS: TIntegerField;
    PlanNutriID_PROPRIEDADE: TIntegerField;
    DetPlanNutriID: TIntegerField;
    DetPlanNutriIDPLAN: TIntegerField;
    DetPlanNutriIDRACAO: TIntegerField;
    DetPlanNutriDATAREG: TSQLTimeStampField;
    DetPlanNutriIDUSUARIO: TIntegerField;
    DetPlanNutriIDUSUARIOALTERACAO: TIntegerField;
    DetPlanNutriDATAALTERACAO: TSQLTimeStampField;
    DetPlanNutriSTATUS: TIntegerField;
    DetPlanNutriTIPO: TIntegerField;
    PlanNutriPADRAO: TIntegerField;
    PlanNutriSTATUS_STR: TStringField;
    DetPlanNutriORDEM: TIntegerField;
    DetPlanNutriDIAS: TIntegerField;
    DetPlanNutriRACAONOME: TStringField;
    PlanNutriPADRAO_STR: TStringField;
    PlanejamentoTrato: TFDQuery;
    PlanejamentoTratoID: TIntegerField;
    PlanejamentoTratoTRATO: TIntegerField;
    PlanejamentoTratoPERCENT: TFMTBCDField;
    PlanejamentoTratoHORA: TTimeField;
    PlanejamentoTratoDATAREG: TSQLTimeStampField;
    PlanejamentoTratoID_USUARIO: TIntegerField;
    PlanejamentoTratoID_USUARIO_ALTERACAO: TIntegerField;
    PlanejamentoTratoDATA_ALTERACAO: TSQLTimeStampField;
    PlanejamentoTratoSTATUS: TIntegerField;
    PlanejamentoTratoID_PROPRIEDADE: TIntegerField;
    TLoteNutricional: TFDQuery;
    TLoteNutricionalID: TIntegerField;
    TLoteNutricionalID_PLANEJAMETO: TIntegerField;
    TLoteNutricionalID_PROPRIEDADE: TIntegerField;
    TLoteNutricionalID_LOCAL: TIntegerField;
    TLoteNutricionalDATA_ENTRADA: TDateField;
    TLoteNutricionalDATA_PRIMEIRO_TRATO: TDateField;
    TLoteNutricionalQTDE_CAB: TIntegerField;
    TLoteNutricionalPESO_MEDIO: TFMTBCDField;
    TLoteNutricionalDIAS_MEDIO: TIntegerField;
    TLoteNutricionalSTATUS: TIntegerField;
    TLoteNutricionalID_USUARIO: TIntegerField;
    TLoteNutricionalID_USUARIO_ALTERACAO: TIntegerField;
    TLoteNutricionalDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TLoteNutricionalCURRAL: TStringField;
    TLoteNutricionalPLANEJAMENTO: TStringField;
    qryAux: TFDQuery;
    DET_LOTE_TRATOS: TFDQuery;
    DET_LOTE_PLANEJAMENTO: TFDQuery;
    DET_LOTE_TRATOSID: TIntegerField;
    DET_LOTE_TRATOSID_LOTE: TIntegerField;
    DET_LOTE_TRATOSTRATO: TIntegerField;
    DET_LOTE_TRATOSPERCENT: TFMTBCDField;
    DET_LOTE_TRATOSDATAREG: TSQLTimeStampField;
    DET_LOTE_TRATOSID_USUARIO: TIntegerField;
    DET_LOTE_PLANEJAMENTOID: TIntegerField;
    DET_LOTE_PLANEJAMENTOID_LOTE: TIntegerField;
    DET_LOTE_PLANEJAMENTODIA: TIntegerField;
    DET_LOTE_PLANEJAMENTODATA: TDateField;
    DET_LOTE_PLANEJAMENTOID_RACAO: TIntegerField;
    DET_LOTE_PLANEJAMENTOID_PLANEJAMENTO: TIntegerField;
    DET_LOTE_PLANEJAMENTOTRATO: TIntegerField;
    DET_LOTE_PLANEJAMENTOPERCENT: TFMTBCDField;
    DET_LOTE_PLANEJAMENTOUTILIZADO: TIntegerField;
    DET_LOTE_PLANEJAMENTODATAREG: TSQLTimeStampField;
    DET_LOTE_PLANEJAMENTOID_USUARIO: TIntegerField;
    DET_LOTE_PLANEJAMENTORACAO_NOME: TStringField;
    LOTE_ANIMAIS: TFDQuery;
    PlanejamentoPadrao: TFDQuery;
    PlanejamentoPadraoID: TIntegerField;
    PlanejamentoPadraoNOME: TStringField;
    PlanejamentoPadraoOBSERVACAO: TStringField;
    PlanejamentoPadraoID_USUARIO: TIntegerField;
    PlanejamentoPadraoID_USUARIO_ALTERACAO: TIntegerField;
    PlanejamentoPadraoDATA_ALTERACAO: TSQLTimeStampField;
    PlanejamentoPadraoDATAREG: TDateField;
    PlanejamentoPadraoSTATUS: TIntegerField;
    PlanejamentoPadraoID_PROPRIEDADE: TIntegerField;
    PlanejamentoPadraoPADRAO: TIntegerField;
    TRacaoIMS_PV: TFMTBCDField;
    PlanejamentoPadraoIMS_PV: TFMTBCDField;
    PlanNutriIMS_PV: TFMTBCDField;
    qrySimulaPrimeiroTrato: TFDQuery;
    qrySimulaPrimeiroTratoTRATO: TIntegerField;
    qrySimulaPrimeiroTratoQTDE_CAB: TIntegerField;
    qrySimulaPrimeiroTratoPESO_MEDIO: TFMTBCDField;
    qrySimulaPrimeiroTratoMNTRATO: TFloatField;
    qrySimulaPrimeiroTratoPERCENT: TFMTBCDField;
    TFornecimentoRacao: TFDQuery;
    TFornecimentoRacaoID: TIntegerField;
    TFornecimentoRacaoID_LOTE: TIntegerField;
    TFornecimentoRacaoID_LOCAL: TIntegerField;
    TFornecimentoRacaoQTD_CAB: TIntegerField;
    TFornecimentoRacaoMEDIA_PESO: TFMTBCDField;
    TFornecimentoRacaoDATA_FORN: TDateField;
    TFornecimentoRacaoHORA_FORN: TTimeField;
    TFornecimentoRacaoTRATO: TIntegerField;
    TFornecimentoRacaoID_RACAO: TIntegerField;
    TFornecimentoRacaoMS_RACAO: TFMTBCDField;
    TFornecimentoRacaoVALOR_KG_RACAO: TFMTBCDField;
    TFornecimentoRacaoPREVISTO_MN_KG: TIntegerField;
    TFornecimentoRacaoREALIZADO_MN_KG: TIntegerField;
    TFornecimentoRacaoCUSTO_TOTAL_TRATO: TFMTBCDField;
    TFornecimentoRacaoID_MOTORISTA: TIntegerField;
    TFornecimentoRacaoID_USUARIO: TIntegerField;
    TFornecimentoRacaoDATAREG: TSQLTimeStampField;
    TFornecimentoRacaoSTATUS: TIntegerField;
    TFornecimentoRacaoLOTE_FABRICACAO: TStringField;
    TFornecimentoRacaoCURRAL: TStringField;
    TFornecimentoRacaoRACAO: TStringField;
    TFornecimentoRacaoMOTORISTA: TStringField;
    TListaCurraisForn: TFDQuery;
    TListaCurraisFornCODIGO: TStringField;
    TListaCurraisFornQTDE_CAB: TIntegerField;
    TListaCurraisFornMEDIA_PESO: TFMTBCDField;
    TListaCurraisFornDIAS_MEDIO: TIntegerField;
    TListaCurraisFornDATA_ENTRADA: TDateField;
    TListaCurraisFornREALIZADO: TIntegerField;
    TListaCurraisFornIDCURRAL: TIntegerField;
    TListaCurraisFornIDLOTE: TIntegerField;
    TListaCurraisFornPREVISTO_MN_KG: TIntegerField;
    TListaCurraisFornID: TIntegerField;
    DET_LOTE_PLANEJAMENTOCURRAL: TStringField;
    DET_LOTE_PLANEJAMENTOID_USUARIO_ALTERACAO: TIntegerField;
    DET_LOTE_PLANEJAMENTODATA_ALTERACAO: TSQLTimeStampField;
    DET_LOTE_PLANEJAMENTOREALIZADO: TStringField;
    TAuxNotaCocho: TFDQuery;
    TAuxNotaCochoID: TIntegerField;
    TAuxNotaCochoAJUSTE: TFMTBCDField;
    TAuxNotaCochoID_PROPRIEDADE: TIntegerField;
    TAuxNotaCochoID_USUARIO: TIntegerField;
    TAuxNotaCochoID_USUARIO_ALTERACAO: TIntegerField;
    TAuxNotaCochoDATAREG: TSQLTimeStampField;
    TAuxNotaCochoSTATUS: TIntegerField;
    TAuxNotaCochoDATA_ALTERACAO: TSQLTimeStampField;
    TLeituraCocho: TFDQuery;
    TLeituraCochoID: TIntegerField;
    TLeituraCochoID_LOTE: TIntegerField;
    TLeituraCochoID_CURRAL: TIntegerField;
    TLeituraCochoDATA_LEITURA: TDateField;
    TLeituraCochoAJUSTE: TFMTBCDField;
    TLeituraCochoID_USUARIO: TIntegerField;
    TLeituraCochoID_USUARIO_ALTERCAO: TIntegerField;
    TLeituraCochoDATA_ALTERACAO: TSQLTimeStampField;
    TLeituraCochoDATAREG: TSQLTimeStampField;
    TLeituraCochoSTATUS: TIntegerField;
    TLeituraCochoCURRAL: TStringField;
    TListaLeitura: TFDQuery;
    TListaLeituraIDCURRAL: TIntegerField;
    TListaLeituraCODIGO: TStringField;
    TListaLeituraIDLOTE: TIntegerField;
    TListaLeituraQTDE_CAB: TIntegerField;
    TListaLeituraPESO_MEDIO: TFMTBCDField;
    TListaLeituraULTIMALEITURA: TDateField;
    TAuxCentroCusto: TFDQuery;
    TAuxCentroCustoID: TIntegerField;
    TAuxCentroCustoNOME: TStringField;
    TAuxCentroCustoDESCRICAO: TStringField;
    TAuxCentroCustoDATAREG: TSQLTimeStampField;
    TAuxCentroCustoID_PROPRIEDADE: TIntegerField;
    TAuxCentroCustoID_USUARIO: TIntegerField;
    TAuxCentroCustoID_USUARIO_ALTERACAO: TIntegerField;
    TAuxCentroCustoDATA_ALTERACAO: TSQLTimeStampField;
    TAuxCentroCustoSTATUS: TIntegerField;
    TRacaoInsumosID_PREMISTURA: TIntegerField;
    TRacaoInsumosTIPO: TStringField;
    TFabricacao: TFDQuery;
    TFabricacaoInsumo: TFDQuery;
    TFabricacaoInsert: TFDQuery;
    TDetFabricacaoInsert: TFDQuery;
    TFabricacaoInsertID: TIntegerField;
    TFabricacaoInsertIDRACAO: TIntegerField;
    TFabricacaoInsertDATA_FAB: TDateField;
    TFabricacaoInsertKG_PREVISTO: TBCDField;
    TFabricacaoInsertKG_REALIZADO: TBCDField;
    TFabricacaoInsertCUSTO_TOTAL: TBCDField;
    TFabricacaoInsertHORA_INICIO: TTimeField;
    TFabricacaoInsertHORA_FIM: TTimeField;
    TFabricacaoInsertDATAREG: TDateField;
    TFabricacaoInsertID_USUARIO: TIntegerField;
    TFabricacaoInsertTIPO_BAIXA: TIntegerField;
    TFabricacaoInsertID_CENTROCUSTO: TIntegerField;
    TFabricacaoInsertLOTE_FABRICACAO: TStringField;
    TFabricacaoInsertID_OPERADOR: TIntegerField;
    TFabricacaoInsertORIGEM_DADOS: TIntegerField;
    TFabricacaoInsertDATA_ALTERACAO: TSQLTimeStampField;
    TFabricacaoInsertID_USUARIO_ALTERACAO: TIntegerField;
    TFabricacaoInsertSTATUS: TIntegerField;
    TFabricacaoInsertID_PROPRIEDADE: TIntegerField;
    LOTE_RACAO_PLAN: TFDQuery;
    LOTE_RACAO_PLANNOME: TStringField;
    LOTE_RACAO_PLANCOUNT: TIntegerField;
    LOTE_RACAO_PLANGMD: TFMTBCDField;
    LOTE_RACAO_PLANID: TIntegerField;
    TLoteNutricionalPESO_ENTRADA: TFMTBCDField;
    TBaixaEstoque: TFDQuery;
    TBaixaEstoqueID: TIntegerField;
    TBaixaEstoqueID_PRODUTO: TIntegerField;
    TBaixaEstoqueID_ALIMENTO: TIntegerField;
    TBaixaEstoqueDATA: TDateField;
    TBaixaEstoqueQTD_KG: TFMTBCDField;
    TBaixaEstoqueTIPO_BAIXA: TIntegerField;
    TBaixaEstoqueID_USUARIO: TIntegerField;
    TBaixaEstoqueDATAREG: TSQLTimeStampField;
    TBaixaEstoqueSTATUS: TIntegerField;
    TBaixaEstoqueID_CENTRO_CUSTO: TIntegerField;
    TBaixaEstoqueID_PROPRIEDADE: TIntegerField;
    TBaixaEstoqueID_USUARIO_ALTERACAO: TIntegerField;
    TBaixaEstoqueDATA_ALTERACAO: TSQLTimeStampField;
    TBaixaEstoqueTIPO_BAIXA_STR: TStringField;
    TBaixaEstoqueINSUMO: TStringField;
    TBaixaEstoqueCENTROCUSTO: TStringField;
    PlanRegraTransicao: TFDQuery;
    dsPlan: TDataSource;
    PlanRegraTransicaoID: TIntegerField;
    PlanRegraTransicaoID_PLANEJAMENTO: TIntegerField;
    PlanRegraTransicaoORDEM: TIntegerField;
    PlanRegraTransicaoDIA: TIntegerField;
    PlanRegraTransicaoDATAREG: TSQLTimeStampField;
    PlanRegraTransicaoSTATUS: TIntegerField;
    PlanRegraTransicaoID_USUARIO_ALTERACAO: TIntegerField;
    PlanRegraTransicaoTRATO1: TIntegerField;
    PlanRegraTransicaoTRATO2: TIntegerField;
    PlanRegraTransicaoTRATO3: TIntegerField;
    PlanRegraTransicaoTRATO4: TIntegerField;
    PlanRegraTransicaoTRATO5: TIntegerField;
    PlanRegraTransicaoTRATO6: TIntegerField;
    PlanRegraTransicaoTRATO7: TIntegerField;
    PlanRegraTransicaoTRATO8: TIntegerField;
    PlanRegraTransicaoTRATO9: TIntegerField;
    PlanRegraTransicaoTRATO10: TIntegerField;
    PlanRegraTransicaoID_USUARIO: TIntegerField;
    PlanRegraTransicaoTRATOSTR1: TStringField;
    PlanRegraTransicaoTRATOSTR2: TStringField;
    PlanRegraTransicaoTRATOSTR3: TStringField;
    PlanRegraTransicaoTRATOSTR4: TStringField;
    PlanRegraTransicaoTRATOSTR5: TStringField;
    PlanRegraTransicaoTRATOSTR6: TStringField;
    PlanRegraTransicaoTRATOSTR7: TStringField;
    PlanRegraTransicaoTRATOSTR8: TStringField;
    PlanRegraTransicaoTRATOSTR9: TStringField;
    PlanRegraTransicaoTRATOSTR10: TStringField;
    PlanRegraTransicaoID_RACAO_ATUAL: TIntegerField;
    PlanRegraTransicaoID_RACAO_TRANSICAO: TIntegerField;
    PlanRegraTransicaoRACAONOMEATUAL: TStringField;
    PlanRegraTransicaoRACAONOMETRANSICAO: TStringField;
    PlanRegraTransicaoDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TContratoCompra: TFDQuery;
    TContratoCompraID_PROPRIEDADE: TIntegerField;
    TContratoCompraID_PRODUTOR_ORIGEM: TIntegerField;
    TContratoCompraID_PRODUTOR_DESTINO: TIntegerField;
    TContratoCompraTOTAL_ANIMAIS: TIntegerField;
    TContratoCompraTIPO_VALOR: TIntegerField;
    TContratoCompraVALOR_TOTAL: TFMTBCDField;
    TContratoCompraTIPO_CONTRATO: TIntegerField;
    TContratoCompraDATA_INICIO_CONTRATO: TDateField;
    TContratoCompraDATA_FIM_CONTRATO: TDateField;
    TContratoCompraSTATUS: TIntegerField;
    TContratoCompraID_USUARIO: TIntegerField;
    TContratoCompraDATAREG: TSQLTimeStampField;
    TContratoCompraID_USUARIO_ALTERACAO: TIntegerField;
    TContratoCompraDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TContratoCompraTIPO_CONTRATO_STR: TStringField;
    TContratoCompraSTATUS_STR: TStringField;
    TContratoCompraNUMERO: TStringField;
    TContratoCompraPRODUTOR_ORIGEM: TStringField;
    TContratoCompraPROPRIEDADE_ORIGEM: TStringField;
    TContratoCompraPRODUTOR_DESTINO: TStringField;
    TContratoCompraPROPRIEDADE_DESTINO: TStringField;
    TContratoCompraID: TIntegerField;
    TFabricacaoInsertID_PREMISTURA: TIntegerField;
    TAuxNotaCochoNOTA: TFMTBCDField;
    TRacaoTEMPO_MISTURA: TIntegerField;
    TRacaoInsumosTOLERANCIA_FAB: TFMTBCDField;
    TLeituraCochoNOTA: TFMTBCDField;
    TListaLeituraNOTA: TFMTBCDField;
    TBaixaEstoqueVALOR_KG: TFMTBCDField;
    TBaixaEstoqueCUSTO_TOTAL: TFMTBCDField;
    TFabricacaoID: TIntegerField;
    TFabricacaoIDRACAO: TIntegerField;
    TFabricacaoDATA_FAB: TDateField;
    TFabricacaoKG_PREVISTO: TBCDField;
    TFabricacaoKG_REALIZADO: TBCDField;
    TFabricacaoCUSTO_TOTAL: TBCDField;
    TFabricacaoHORA_INICIO: TTimeField;
    TFabricacaoHORA_FIM: TTimeField;
    TFabricacaoDATAREG: TDateField;
    TFabricacaoID_USUARIO: TIntegerField;
    TFabricacaoTIPO_BAIXA: TIntegerField;
    TFabricacaoID_CENTROCUSTO: TIntegerField;
    TFabricacaoLOTE_FABRICACAO: TStringField;
    TFabricacaoID_OPERADOR: TIntegerField;
    TFabricacaoORIGEM_DADOS: TIntegerField;
    TFabricacaoDATA_ALTERACAO: TSQLTimeStampField;
    TFabricacaoID_USUARIO_ALTERACAO: TIntegerField;
    TFabricacaoSTATUS: TIntegerField;
    TFabricacaoID_PROPRIEDADE: TIntegerField;
    TFabricacaoID_PREMISTURA: TIntegerField;
    TFabricacaoTIPO_BAIXA_STR: TStringField;
    TFabricacaoRACAO: TStringField;
    TFabricacaoOPERADOR: TStringField;
    TFabricacaoCENTROCUSTO: TStringField;
    TDetFabricacaoInsertID: TIntegerField;
    TDetFabricacaoInsertID_FABRICACAO: TIntegerField;
    TDetFabricacaoInsertID_ALIMENTO: TIntegerField;
    TDetFabricacaoInsertID_CONCENTRADO: TIntegerField;
    TDetFabricacaoInsertDATA_FAB: TDateField;
    TDetFabricacaoInsertHORA_INI: TTimeField;
    TDetFabricacaoInsertHORA_FIM: TTimeField;
    TDetFabricacaoInsertMS_INSUMO: TFMTBCDField;
    TDetFabricacaoInsertKG_PREVISTO: TBCDField;
    TDetFabricacaoInsertKG_FABRICADO: TBCDField;
    TDetFabricacaoInsertDATAREG: TDateField;
    TDetFabricacaoInsertID_USUARIO: TIntegerField;
    TDetFabricacaoInsertID_USUARIO_ALTERACAO: TIntegerField;
    TDetFabricacaoInsertDATA_ALTERACAO: TSQLTimeStampField;
    TDetFabricacaoInsertSTATUS: TIntegerField;
    TDetFabricacaoInsertVALOR_KG: TFMTBCDField;
    TDetFabricacaoInsertCUSTO: TFMTBCDField;
    TFabricacaoInsumoID: TIntegerField;
    TFabricacaoInsumoID_FABRICACAO: TIntegerField;
    TFabricacaoInsumoID_ALIMENTO: TIntegerField;
    TFabricacaoInsumoID_CONCENTRADO: TIntegerField;
    TFabricacaoInsumoDATA_FAB: TDateField;
    TFabricacaoInsumoHORA_INI: TTimeField;
    TFabricacaoInsumoHORA_FIM: TTimeField;
    TFabricacaoInsumoMS_INSUMO: TFMTBCDField;
    TFabricacaoInsumoKG_PREVISTO: TBCDField;
    TFabricacaoInsumoKG_FABRICADO: TBCDField;
    TFabricacaoInsumoDATAREG: TDateField;
    TFabricacaoInsumoID_USUARIO: TIntegerField;
    TFabricacaoInsumoID_USUARIO_ALTERACAO: TIntegerField;
    TFabricacaoInsumoDATA_ALTERACAO: TSQLTimeStampField;
    TFabricacaoInsumoSTATUS: TIntegerField;
    TFabricacaoInsumoVALOR_KG: TFMTBCDField;
    TFabricacaoInsumoCUSTO: TFMTBCDField;
    TFabricacaoInsumoINSUMO_NOME: TStringField;
    TFabricacaoInsumoTIPO: TStringField;
    DET_LOTE_PLANEJAMENTOIMS_PV: TFMTBCDField;
    TListaLeituraORDERM_FORN: TIntegerField;
    TContratoCompraPESO_TOTAL_ORIGEM: TFMTBCDField;
    TContratoCompraNAVIO: TStringField;
    TContratoCompraTOTALANIMAIS: TIntegerField;
    TContratoCompraTOTALPESO: TFMTBCDField;
    LOTE_ANIMAISDIAS: TLargeintField;
    LOTE_ANIMAISGMD: TFMTBCDField;
    LOTE_ANIMAISID: TIntegerField;
    LOTE_ANIMAISID_LOCAL: TIntegerField;
    LOTE_ANIMAISID_CATEGORIA: TIntegerField;
    LOTE_ANIMAISID_RACA: TIntegerField;
    LOTE_ANIMAISIDENTIFICACAO_1: TStringField;
    LOTE_ANIMAISIDENTIFICACAO_2: TStringField;
    LOTE_ANIMAISDATA_PROC: TSQLTimeStampField;
    LOTE_ANIMAISGTA_ID: TIntegerField;
    LOTE_ANIMAISIDADE_MESES: TIntegerField;
    LOTE_ANIMAISPESO_ENTRADA: TFMTBCDField;
    LOTE_ANIMAISULTIMO_PESO: TFMTBCDField;
    LOTE_ANIMAISDATA_ULTIMO_PESO: TDateField;
    LOTE_ANIMAISSTATUS: TIntegerField;
    LOTE_ANIMAISDATAREG: TSQLTimeStampField;
    LOTE_ANIMAISID_USUARIO: TIntegerField;
    LOTE_ANIMAISDATA_SAIDA: TDateField;
    LOTE_ANIMAISPESO_SAIDA: TFMTBCDField;
    LOTE_ANIMAISID_PROPRIEDADE: TIntegerField;
    LOTE_ANIMAISID_PRODUTOR: TIntegerField;
    LOTE_ANIMAISULTIMA_ALTERACAO: TSQLTimeStampField;
    LOTE_ANIMAISULTIMO_USUARIO: TIntegerField;
    LOTE_ANIMAISID_LOTESAIDA: TIntegerField;
    LOTE_ANIMAISID_VEICULO_SAIDA: TIntegerField;
    LOTE_ANIMAISORIGEM_DADOS: TStringField;
    LOTE_ANIMAISTIPO_SAIDA: TStringField;
    LOTE_ANIMAISID_MOTIVO_MORTE: TIntegerField;
    LOTE_ANIMAISID_LOTE: TIntegerField;
    LOTE_ANIMAISVALOR_COMPRA: TFMTBCDField;
    LOTE_ANIMAISVALOR_VENDA: TFMTBCDField;
    LOTE_ANIMAISID_PRODUTOR_ORIGEM: TIntegerField;
    LOTE_ANIMAISFLAG_SYNC: TIntegerField;
    LOTE_ANIMAISDATA_SYNC: TSQLTimeStampField;
    LOTE_ANIMAISDATA_LIBERACAO: TDateField;
    LOTE_ANIMAISID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    LOTE_ANIMAISDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    LOTE_ANIMAISID_CONTRATO_COMPRA: TIntegerField;
    LOTE_ANIMAISID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    LOTE_ANIMAISIDADE_MORTE: TIntegerField;
    LOTE_ANIMAISID_GTA_SAIDA: TIntegerField;
    LOTE_ANIMAISOBSERVACAO: TStringField;
    LOTE_ANIMAISTIPO_ENTRADA: TIntegerField;
    LOTE_ANIMAISPESO_ESTIMADO: TFMTBCDField;
    LOTE_ANIMAISDATA_PESO_ESTIMADO: TDateField;
    LOTE_ANIMAISVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    LOTE_ANIMAISVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    LOTE_ANIMAISID_CATEGORIA_ATUAL: TIntegerField;
    LOTE_ANIMAISCONSUMO_ACU: TFMTBCDField;
    LOTE_ANIMAISIMS_PV: TBCDField;
    LOTE_ANIMAISID_COMUNICADO_REIDENT: TIntegerField;
    LOTE_ANIMAISID_COMUNICADO_MORTE: TIntegerField;
    LOTE_ANIMAISOBS_MORTE: TStringField;
    LOTE_ANIMAISTIPO_MORTE: TIntegerField;
    LOTE_ANIMAISDATA_REPROCESSAMENTO: TSQLTimeStampField;
    LOTE_ANIMAISID_COM_NASCIMENTO: TIntegerField;
    LOTE_ANIMAISIDENTIFICACAO_MAE: TStringField;
    LOTE_ANIMAISCARIMBO_NASCIMENTO: TStringField;
    LOTE_ANIMAISOUTRO_ERAS: TIntegerField;
    LOTE_ANIMAISFLAG_SYNC_TERCEIROS: TIntegerField;
    LOTE_ANIMAISDATA_SYNC_TERCEIROS: TDateField;
    LOTE_ANIMAISID_REBANHO: TIntegerField;
    LOTE_ANIMAISPESO_ENTRADA_CONF: TFMTBCDField;
    LOTE_ANIMAISDATA_ENTRADA_CONF: TDateField;
    LOTE_ANIMAISID_CONTRATO: TIntegerField;
    LOTE_ANIMAISID_BASE_CAMPO: TIntegerField;
    LOTE_ANIMAISBASE_CAMPO_SYNC: TIntegerField;
    LOTE_ANIMAISBASE_CAMPO_DT_SYNC: TDateField;
    LOTE_ANIMAISBLOQUEIO: TIntegerField;
    LOTE_ANIMAISDATA_NASCIMENTO: TDateField;
    LOTE_ANIMAISCURRAL_NOME: TStringField;
    LOTE_ANIMAISCATEGORI_NOME: TStringField;
    LOTE_ANIMAISRACA_NOME: TStringField;
    LOTE_ANIMAISREBANHO_NOME: TStringField;
    ExportaFabricacao: TFDQuery;
    ExportaFabricacaoFABRICADAEM: TDateField;
    ExportaFabricacaoCODIGOBATIDA: TIntegerField;
    ExportaFabricacaoHORA_INICIO: TTimeField;
    ExportaFabricacaoHORA_FIM: TTimeField;
    ExportaFabricacaoCODRACAO: TIntegerField;
    ExportaFabricacaoNOMERACAO: TStringField;
    ExportaFabricacaoPREVISTOBATIDA: TBCDField;
    ExportaFabricacaoREALIZADOBATIDA: TBCDField;
    ExportaFabricacaoINSUMO_NOME: TStringField;
    ExportaFabricacaoTIPO: TStringField;
    ExportaFabricacaoPREVISTO: TBCDField;
    ExportaFabricacaoREALIZADO: TBCDField;
    ExportaFabricacaoDIFKG: TBCDField;
    ExportaFabricacaoDIFPERCENT: TFMTBCDField;
    ExportaFabricacaoVALOR_KG: TFMTBCDField;
    ExportaFabricacaoCUSTO: TFMTBCDField;
    ExportaFabricacaoOPERADOR: TStringField;
    TBaixaEstoqueOBSERVACAO: TStringField;
    TRacaoGMD_MACHO: TFMTBCDField;
    TRacaoGMD_FEMEA: TFMTBCDField;
    TContratoCompraCOMPRADOR: TStringField;
    TContratoCompraCOMISSAO_TOTAL: TFMTBCDField;
    TContratoCompraFRETE_TOTAL: TFMTBCDField;
    TContratoCompraRENDIMENTO_COMPRA: TFMTBCDField;
    TContratoCompraPESO_BALANCAO_DESTINO: TFMTBCDField;
    TContratoCompraKM_RODADO: TFMTBCDField;
    TImportaCarcaca: TFDQuery;
    TImportaCarcacaID: TIntegerField;
    TImportaCarcacaIDENTIFICACAO: TStringField;
    TImportaCarcacaPESO_CARCACA: TFMTBCDField;
    TImportaCarcacaDATAREG: TSQLTimeStampField;
    TImportaCarcacaID_USUARIO: TIntegerField;
    TImportaCarcacaSTATUS: TIntegerField;
    TImportaCarcacaTIPO_IDENTIFICACAO: TIntegerField;
    TImportaCarcacaCODIGO_ANIMAL: TIntegerField;
    TImportaCarcacaLOG_IMPORTACAO: TStringField;
    TMP_ATUALIZA_CAR: TFDQuery;
    TMP_ATUALIZA_CARCODIGO_ANIMAL: TIntegerField;
    TMP_ATUALIZA_CARCARCACA: TFMTBCDField;
    PlanRegraTransicaoDIA_INICIO: TIntegerField;
    PlanRegraTransicaoDIA_FIM: TIntegerField;
    dsEstoqueAtual: TDataSource;
    ppRepEstoqueAtual: TppReport;
    ppHeaderBand19: TppHeaderBand;
    ppImage21: TppImage;
    ppLine42: TppLine;
    ppLabel215: TppLabel;
    ppShape244: TppShape;
    ppLabel263: TppLabel;
    ppShape223: TppShape;
    ppLabel234: TppLabel;
    ppShape224: TppShape;
    ppLabel264: TppLabel;
    ppShape225: TppShape;
    ppLabel265: TppLabel;
    ppShape226: TppShape;
    ppLabel266: TppLabel;
    ppDetailBand19: TppDetailBand;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppLine43: TppLine;
    ppDBText178: TppDBText;
    ppFooterBand19: TppFooterBand;
    ppLabel233: TppLabel;
    ppSystemVariable37: TppSystemVariable;
    ppSystemVariable38: TppSystemVariable;
    ppSummaryBand14: TppSummaryBand;
    ppShape237: TppShape;
    ppDBCalc60: TppDBCalc;
    ppDesignLayers19: TppDesignLayers;
    ppDesignLayer19: TppDesignLayer;
    ppParameterList19: TppParameterList;
    ppDBEstoqueAtual: TppDBPipeline;
    ResumoContrato: TFDQuery;
    TContratoCompraVALOR_CABECA: TFMTBCDField;
    ExportaFabricacaoCENTROCUSTO: TStringField;
    TLoteNutricionalTIPOLOTE: TIntegerField;
    TLoteNutricionalTIPOLOTENOME: TStringField;
    TContratoCompraTIPO_VALOR_STR: TStringField;
    TContratoAtualizaValores: TFDQuery;
    TContratoAtualizaValoresID: TIntegerField;
    TContratoAtualizaValoresNUMERO: TStringField;
    TContratoAtualizaValoresID_PROPRIEDADE: TIntegerField;
    TContratoAtualizaValoresID_PRODUTOR_ORIGEM: TIntegerField;
    TContratoAtualizaValoresID_PRODUTOR_DESTINO: TIntegerField;
    TContratoAtualizaValoresTOTAL_ANIMAIS: TIntegerField;
    TContratoAtualizaValoresTIPO_VALOR: TIntegerField;
    TContratoAtualizaValoresVALOR_TOTAL: TFMTBCDField;
    TContratoAtualizaValoresTIPO_CONTRATO: TIntegerField;
    TContratoAtualizaValoresDATA_INICIO_CONTRATO: TDateField;
    TContratoAtualizaValoresDATA_FIM_CONTRATO: TDateField;
    TContratoAtualizaValoresSTATUS: TIntegerField;
    TContratoAtualizaValoresID_USUARIO: TIntegerField;
    TContratoAtualizaValoresDATAREG: TSQLTimeStampField;
    TContratoAtualizaValoresID_USUARIO_ALTERACAO: TIntegerField;
    TContratoAtualizaValoresDATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    TContratoAtualizaValoresPESO_TOTAL_ORIGEM: TFMTBCDField;
    TContratoAtualizaValoresNAVIO: TStringField;
    TContratoAtualizaValoresCOMPRADOR: TStringField;
    TContratoAtualizaValoresCOMISSAO_TOTAL: TFMTBCDField;
    TContratoAtualizaValoresFRETE_TOTAL: TFMTBCDField;
    TContratoAtualizaValoresRENDIMENTO_COMPRA: TFMTBCDField;
    TContratoAtualizaValoresPESO_BALANCAO_DESTINO: TFMTBCDField;
    TContratoAtualizaValoresKM_RODADO: TFMTBCDField;
    TContratoAtualizaValoresTIPO_CONTRATO_STR: TStringField;
    TContratoAtualizaValoresSTATUS_STR: TStringField;
    TContratoAtualizaValoresTIPO_VALOR_STR: TStringField;
    TContratoAtualizaValoresPRODUTOR_ORIGEM: TStringField;
    TContratoAtualizaValoresPROPRIEDADE_ORIGEM: TStringField;
    TContratoAtualizaValoresPRODUTOR_DESTINO: TStringField;
    TContratoAtualizaValoresPROPRIEDADE_DESTINO: TStringField;
    TContratoAtualizaValoresTOTALANIMAIS: TIntegerField;
    TContratoAtualizaValoresTOTALPESO: TFMTBCDField;
    TContratoAtualizaValoresVALOR_CABECA: TFMTBCDField;
    procedure TRacaoReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TRacaoInsumosReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure DetPlanNutriReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TAuxCentroCustoReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
  private
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
    function RetornaGMDLote(idLote, dataEntrada, dataBase: string): string;
  public
    vRacaoSelecionada,vidRacaoSelecionada,vRacaoValorKG:string;
    procedure AbreTRacao(Filtro:string);
    procedure AbreTRacaoInsumo(IdRacao:string);
    procedure AbrePlanejamentoNutriConf(filtro:string);
    procedure AbrePlanejamentoNutriConfLote(IdPlan: string);
    procedure PlanejamentoTratoDefault;
    function  VerificaNomeExiste(Anome:string):Boolean;
    function  VerificaNomePlanExiste(Anome: string): Boolean;
    function  VerificaRacaoPlanExiste(idPlan,idRacao: string): Boolean;
    function  RetormaMaxOrdem(idPlan:string):string;
    function  RetormaMaxTrato:string;
    procedure AtualizaoInclusaoRacao(idRacao:string);
    procedure CopyRacao(idRacao:string);
    procedure AbreDetPlanejamentoNutriConf(IdPLan: string);
    procedure DefinePlanejamentoPadrao(vId:string);
    function  VerificaLoteAtivo(vIdLocal:string):Boolean;

    function  CriarLoteNutricional(vIdLocal,dataEntrada,TipoLote:string):string;
    function  CriarLoteNutricionalPlan(vIdLocal,dataEntrada,IdPlan: string):string;
    procedure AtualizaLotesAtivos;
    procedure AtualizaLotesQtdCabPesoAtivos;
    procedure AtualizaLotesAtivosIDLote(vId:string);
    procedure AbreLotes(vFiltro:string);
    procedure AbreDetLotesTratos(idLote:string);
    procedure AbreDetLotesPlanejamento(idLote:string);
    procedure AbreAnimaisLotes(idLote:string);
    procedure AbreDadosLotesGeral(idLote:string);
    procedure AbreSimulaPrimeiroTrato(idLote,imsPv,msRacao:string);
    procedure GeraPrimeiroTratoLote(idLote,dataPrimeiroTrato,idPlanejamento,imsPv:string);
    procedure AtualizaMsRacao(idRacao:string);
    Function  RetornarMsRacao(idRacao:string):string;
    function  RetornaValorKGRacao(idRacao: string):string;
    procedure AbreFornecimento(Filtro:string);
    procedure AbreListaFornecimentoCurrais(Adata:tDate;Trato,IdRacao:string);
    procedure AtualizaFornecimento(id,idMotorista,hora,qtdCab,MediaPeso,Realizado,VDATA,TRATO,ID_LOTE:string);
    procedure AlteraRacaoPlanejada(id,idRacao:string);
    procedure AlteraRacaoPlanejadaPeriodo(idLote,dataIni,DataFim,Tratos,idRacao: string);
    procedure DeletaFornecimento(idForn,idLote,vData,Trato:string);
    procedure AbreConfiguracaoNotaCocho;
    procedure AbrirLeituraCocho(vFiltro:string);
    procedure AbrirListaLeituradeCocho(vData:TDate);
    procedure AbrirCentroCusto;
    procedure AbreLoteRacaoPlan(id:string);
    procedure AbreContratos(vFiltro:string;vAbreTela:integer);

    function  RetornaTratoGerado(idLote:string):Boolean;
    function  RetornaMaxTratoLote(idLote:string):integer;
    function  RetornaPrevistoCorrigido(idLote,vData:string):integer;
    function  VerificaNotaExiste(Nota:string):Boolean;
    function  VerificaNotaExisteEdit(ID,Nota:string):Boolean;
    function  RetornaAjusteNota(Nota:string):string;
    procedure InsereLeituraCocho(TIPO,ID_LOTE,ID_CURRAL,DATA_LEITURA,NOTA,AJUSTE,REPLY:string);

    procedure DeletaLeituraeTratros(idLote,idLocal,DataForn:string);

    procedure AbrirFabricacao(vFiltro:string);
    procedure AbrirFabricacaoInsumos(vIdFab:string);
    procedure AbrirBaixaEstoque(vFiltro: string);
    procedure ExportacaoFabricacao(vFiltro: string);

    function  RetormaMaxIdFabricao:string;
    function  RetornaCustoFabricacao(idRacao,TotalRealizado:string):string;

    procedure AtualizaGMDRacaoLote(idLote,idRacao,GMD, dataBase,dataEntrada:string);
    procedure AtualizaLoteAnimais;
    procedure AtualizaGMDLoteS;

    function RetornaLoteLocal(idLocal:string):string;
    function RetornaTipoCurral(idLocal:string):string;
    function RetornaLoteLocalNome(Local: string): string;

    function RetornaPesoProjLote(idLote,dataEntrada,dataBase:string):string;

    function RetornaMsRacaoPlanejamentoLote(idPlanejamento:string):string;
    function RetornaIDRacaoPlanejamentoLote(idPlanejamento: string): string;
    function RetornaFornecimentoDiaAnterior(Adata:TDate;Alote:string):string;
    function RetornaRealizadoUltimoForneMaiorQZero(Alote,Alocal: string): string;
    function RetornaUltimoForneMaiorQZero(Alote,Alocal: string): string;
    procedure GeraPlanNutriValores(idPlan:string);
    procedure AtualizaLotesPlanejamento(idPlan:string);


    procedure AtualizaSaldoAtualAlimento(idAlimento:string);
    procedure AtualizaSaldoAtualProduto(idAlimento:string);
    procedure AtualizaSaldoAtualInsumoeProduto;

    procedure AlteraIdPlanLote(idLote,idPlan:string);
    procedure AlteraIdLoteAnimais(idLote,idLocal:string);
    function  VerificaNumeroContratoExiste(Numero:string):Boolean;
    function  VerificaNumeroContratoUsado(idContrato: string): Boolean;
    function  RetornaValorCabecaContrato(idContrato:string):string;
    function  RetornaMaxDataForn(idLote:string):TDate;
    procedure MovimentaLoteEntreCurral(vIdLote,vIdCurralOrigem,vIdCurralDestino:string);
    function  RetornaIdAnimal(vIdLoteSaida,vTipoIdent,vIdent:string):string;
    procedure AtualizaCarcaca;
    procedure AtualizaCarcacaTotal(vLoteSaida,TotalCarcaca,qtdCab:string);
    procedure AtualizaValorTotal(vLoteSaida, ValorTotal, qtdCab: string);

    procedure AtualizaTratosLotes;
    function  RetornaDiaFimUltimaTransicao(idPLanejamento:string):string;
    procedure DeletaPlanTratosLotes(idLote:string);
    procedure AtualizaTratosLotesInd(IdLote:string);
    procedure AtualizaRealFabricacao(vIdFab:string);


  end;

var
  ServiceConf: TServiceConf;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UServiceDB, UPrincipal, UMsgDlg;

{$R *.dfm}

{ TServiceConf }

function TServiceConf.RetornaRealizadoUltimoForneMaiorQZero(Alote,Alocal: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT sum(REALIZADO_MN_KG)realizado FROM FORNECIMENTO_CONF');
   Add('WHERE ID_LOTE=:idLote AND ID_LOCAL=:idLocal');
   Add('AND DATA_FORN=(select MAX(A.DATA_FORN) realizado from fornecimento_conf A');
   Add('where a.status=1 and A.id_lote=:idLote AND A.REALIZADO_MN_KG>0)');
   ParamByName('idLote').AsString   := Alote;
   ParamByName('idLocal').AsString  := Alocal;
   Open;
   Result := vQry.FieldByName('realizado').AsString;
 end;
 vQry.Free;
end;



function TServiceConf.RetornarMsRacao(idRacao: string): string;
var
 vQry :TFDQuery;
 vMsRacao,vValoRacao:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' CAST((SUM(KGMATERIASECA)*100)');
   Add('  /sum(KGMATERIANATURAL) AS decimal(18,2)) mstotal');
   Add('FROM RACAOINSUMOS');
   Add('WHERE IDRACAO='+idRacao+' and status=1');
   Open;
   vMsRacao := StringReplace(FieldByName('mstotal').AsString,',','.',[rfReplaceAll]);

   if vMsRacao.Length=0 then
    vMsRacao :='0';
   Result    := vMsRacao;
 end;
end;

procedure TServiceConf.AbreAnimaisLotes(idLote: string);
begin
 with LOTE_ANIMAIS,LOTE_ANIMAIS.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' TRUNC(CURRENT_DATE-DATA_ENTRADA_CONF)+1 DIAS,');
   Add(' CASE');
   Add('  WHEN A.PESO_ESTIMADO>0 THEN');
   Add('   (COALESCE(A.PESO_ESTIMADO,A.PESO_ENTRADA_CONF,A.PESO_ENTRADA)-A.ULTIMO_PESO)/');
   Add('    (TRUNC(CURRENT_DATE-DATA_ENTRADA_CONF)+1)');
   Add(' END GMD,');
   Add(' A.*,');
   Add(' B.CODIGO CURRAL_NOME,');
   Add(' D.NOME CATEGORI_NOME,');
   Add(' E.NOME RACA_NOME,');
   Add(' F.NOME REBANHO_NOME');
   Add('FROM ANIMAL A');
   Add('JOIN CATEGORIAS D ON D.ID=A.ID_CATEGORIA');
   Add('JOIN RACA E ON E.ID=A.ID_RACA');
   Add('JOIN CURRAIS B ON B.ID=A.ID_LOCAL');
   Add('JOIN LOTE_NUTRICIONAL C ON C.ID_LOCAL=B.ID');
   Add('JOIN AUX_REBANHO F ON F.ID=A.ID_REBANHO');
   Add('WHERE A.STATUS=1 AND C.ID='+idLote);
   Open;
 end;
end;

procedure TServiceConf.AbreConfiguracaoNotaCocho;
begin
 with TAuxNotaCocho,TAuxNotaCocho.SQL do
 begin
  Clear;
  Add('select * from AUX_NOTAS_LEITURA');
  Add('WHERE status=1 AND id_propriedade='+serviceDB.vIdPropriedade);
  Open;
 end;
end;

procedure TServiceConf.AbreContratos(vFiltro:string;vAbreTela:integer);
begin
 with TContratoCompra,TContratoCompra.SQL do
 begin
   Clear;
   Add('select y.*,w.qtd totalanimais,w.peso totalpeso,VALOR_TOTAL / TOTAL_ANIMAIS VALOR_CABECA from');
   Add('(');
   Add('SELECT');
   if vAbreTela=1 then
    Add(' FIRST 30 ');
   Add(' C.*,');
   Add(' CASE');
   Add('  WHEN C.TIPO_CONTRATO=0 THEN ''Compra''');
   Add('  WHEN C.TIPO_CONTRATO=1 THEN ''Parceria''');
   Add('  WHEN C.TIPO_CONTRATO=2 THEN ''Boitel''');
   Add(' END TIPO_CONTRATO_STR,');
   Add(' CASE');
   Add('  WHEN C.TIPO_VALOR=0 THEN ''Por @''');
   Add('  WHEN C.TIPO_VALOR=1 THEN ''Por Cabeça''');
   Add('  WHEN C.TIPO_VALOR=2 THEN ''Rateio por Peso''');
   Add(' END TIPO_VALOR_STR,');
   Add(' CASE');
   Add('WHEN C.STATUS=1 THEN ''Aberto''');
   Add('  WHEN C.STATUS=2 THEN ''Finalizado''');
   Add(' END STATUS_str,');
   Add(' PO.NOME PRODUTOR_ORIGEM,');
   Add(' PRO.NOME PROPRIEDADE_ORIGEM,');
   Add(' PD.NOME PRODUTOR_DESTINO,');
   Add(' PRD.NOME PROPRIEDADE_DESTINO');
   Add('FROM CONTRATO_COMPRA_ANIMAL C');
   Add('JOIN PRODUTORES PO ON PO.ID=C.ID_PRODUTOR_ORIGEM');
   Add('JOIN PROPRIEDADES PRO ON PRO.ID=PO.ID_PROPRIEDADE');
   Add('JOIN PRODUTORES PD ON PD.ID=C.ID_PRODUTOR_DESTINO');
   Add('JOIN PROPRIEDADES PRD ON PRD.ID=PD.ID_PROPRIEDADE');
   Add('WHERE C.STATUS>0');
   Add('AND C.ID_PROPRIEDADE='+serviceDB.vIdPropriedade.QuotedString);
   Add(vFiltro);
   Add('order by c.ID desc');
   Add(')y');
   Add('left join');
   Add('(select id_contrato,count(*)qtd,sum(peso_entrada) peso');
   Add('from animal where status>-1');
   Add('and id_contrato is not null');
   Add('group by id_contrato)w');
   Add('on y.id=w.id_contrato');
   TContratoCompra.SQL.Text;
   Open;
 end;
end;

procedure TServiceConf.AbreDadosLotesGeral(idLote: string);
begin
  AbreDetLotesTratos(idLote);
  AbreDetLotesPlanejamento(idLote);
  AbreAnimaisLotes(idLote);
  AbreLoteRacaoPlan(idLote);
end;

procedure TServiceConf.AbreDetLotesPlanejamento(idLote: string);
begin
 DET_LOTE_PLANEJAMENTO.Filtered := False;
 with DET_LOTE_PLANEJAMENTO,DET_LOTE_PLANEJAMENTO.SQL do
 begin
   Clear;
   Add('SELECT A.*,B.NOME RACAO_NOME,D.CODIGO CURRAL,');
   Add('CASE');
   Add(' WHEN A.UTILIZADO=0 THEN ''NAO''');
   Add(' WHEN A.UTILIZADO=1 THEN ''SIM''');
   Add('END REALIZADO,');
   Add('(SELECT FIRST 1 IMS_PV FROM DET_PLAN_NUTRI_CONFI D');
   Add('JOIN RACAO R ON D.IDRACAO=R.ID');
   Add(' WHERE IDPLAN=P.ID AND ORDEM=1) IMS_PV');
   Add('FROM DET_LOTE_PLANEJAMENTO A');
   Add('JOIN plan_nutri_confi P ON P.id=A.id_planejamento');
   Add('JOIN RACAO B ON A.ID_RACAO=B.ID');
   Add('JOIN LOTE_NUTRICIONAL C ON C.ID=A.ID_LOTE');
   Add('JOIN CURRAIS D ON C.ID_LOCAL=D.ID');
   Add('WHERE A.ID_LOTE='+idLote);
   Add('order by a.Dia,A.TRATO');
   Open;
 end;
end;

procedure TServiceConf.AbreDetLotesTratos(idLote: string);
begin
  with DET_LOTE_TRATOS,DET_LOTE_TRATOS.SQL do
  begin
    Clear;
    Add('SELECT * FROM DET_LOTE_TRATOS');
    Add('WHERE ID_LOTE='+idLote);
    Open;
  end;
end;

procedure TServiceConf.AbreDetPlanejamentoNutriConf(IdPLan: string);
begin
  with DetPlanNutri,DetPlanNutri.SQL do
  begin
    Clear;
    Add('SELECT A.*,B.NOME RACAONOME,B.TIPO');
    Add('FROM det_plan_nutri_confi A');
    Add('JOIN RACAO B ON A.idracao=B.id');
    Add('where a.status=1 and a.idplan='+IdPLan);
    Add('ORDER BY A.ORDEM');
    Open;
  end;
end;

procedure TServiceConf.AbreFornecimento(Filtro: string);
begin
 with TFornecimentoRacao,TFornecimentoRacao.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' A.*,');
   Add(' C.CODIGO CURRAL,');
   Add(' D.NOME RACAO,');
   Add(' E.NAME MOTORISTA');
   Add('FROM FORNECIMENTO_CONF A');
   Add('JOIN LOTE_NUTRICIONAL B ON A.ID_LOTE=B.ID');
   Add('JOIN CURRAIS C ON C.ID=A.ID_LOCAL');
   Add('JOIN RACAO D ON D.ID=A.ID_RACAO');
   Add('LEFT JOIN USERS E ON E.ID=A.ID_MOTORISTA');
   Add('WHERE A.STATUS=1');
   Add('AND C.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add(Filtro);
   Add('ORDER BY A.DATA_FORN,D.NOME,SUBSTRING(codigo FROM 1 FOR (POSITION(''-''IN CODIGO)-1)),ORDERM_FORN,TRATO');
   Open;
 end;
end;

procedure TServiceConf.AbreListaFornecimentoCurrais(Adata:tDate;Trato,IdRacao:string);
begin
 with TListaCurraisForn,TListaCurraisForn.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('A.ID,');
   Add(' B.CODIGO,');
   Add(' CASE');
   Add('  WHEN A.QTD_CAB=0 THEN L.QTDE_CAB');
   Add('ELSE A.QTD_CAB');
   Add(' END QTDE_CAB,');
   Add(' CASE');
   Add('  WHEN A.MEDIA_PESO=0 THEN L.PESO_MEDIO');
   Add('  ELSE A.MEDIA_PESO');
   Add(' END MEDIA_PESO,');
   Add(' L.DIAS_MEDIO,');
   Add(' L.DATA_ENTRADA,');
   Add(' COALESCE(REALIZADO_MN_KG,0)Realizado,');
   Add(' b.id idCurral,');
   Add(' a.ID_LOTE idlote,');
   Add('a.PREVISTO_MN_KG');
   Add('FROM FORNECIMENTO_CONF A');
   Add('JOIN LOTE_NUTRICIONAL L ON A.ID_LOTE=L.ID');
   Add('JOIN CURRAIS B ON B.ID=A.ID_LOCAL');
   Add('WHERE A.STATUS=1 AND DATA_FORN=:DATA_FORN');
   Add('AND B.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND TRATO=:TRATO');
   Add('AND ID_RACAO=:ID_RACAO');
   Add('ORDER BY SUBSTRING(codigo FROM 1 FOR (POSITION(''-''IN CODIGO)-1)),ORDERM_FORN');
   ParamByName('DATA_FORN').AsDate := Adata;
   ParamByName('TRATO').AsString   := Trato;
   ParamByName('ID_RACAO').AsString   := IdRacao;
   Open;
 end;
end;

procedure TServiceConf.AbreLoteRacaoPlan(id: string);
begin
 with LOTE_RACAO_PLAN,LOTE_RACAO_PLAN.SQL do
 begin
   Clear;
   Add('SELECT B.ID,B.NOME,COUNT(DISTINCT("DATA")),A.GMD');
   Add('FROM DET_LOTE_PLANEJAMENTO A');
   Add('JOIN RACAO B ON B.ID=A.ID_RACAO');
   Add('WHERE A.ID_LOTE='+id);
   Add('GROUP BY B.ID,B.NOME,GMD');
   Open;
 end;
end;

procedure TServiceConf.AbreLotes(vFiltro: string);
begin
 TLoteNutricional.Close;
 with TLoteNutricional,TLoteNutricional.SQL do
 begin
   Clear;
   Add('SELECT A.*,B.codigo Curral,c.nome planejamento,');
   Add('CASE');
   Add('	WHEN TIPOLOTE =0 THEN ''Confinamento''');
   Add('	WHEN TIPOLOTE =1 THEN ''Semi-confinamento''');
   Add('	WHEN TIPOLOTE =2 THEN ''Sequestro''');
   Add('END tipoLotenome');
   Add('FROM LOTE_NUTRICIONAL A');
   Add('JOIN CURRAIS B ON A.id_local=B.id');
   Add('JOIN plan_nutri_confi C ON C.id=A.id_planejameto');
   Add('where A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   if vFiltro.Length=0 then
    Add('AND A.STATUS=1')
   else
    Add(vFiltro);
   TLoteNutricional.SQL.Text;
   Open;
 end;
end;

procedure TServiceConf.AbrePlanejamentoNutriConf(filtro: string);
begin
  with PlanNutri,PlanNutri.SQL do
  begin
    Clear;
    Add('SELECT A.*,');
    Add('CASE');
    Add('WHEN A.STATUS=1 THEN ''ATIVO''');
    Add('WHEN A.STATUS=0 THEN ''INATIVO''');
    Add('END STATUS_STR,');
    Add('CASE');
    Add('WHEN A.PADRAO=1 THEN ''SIM''');
    Add('WHEN A.PADRAO=0 THEN ''NAO''');
    Add('END PADRAO_STR,');
    Add('(SELECT FIRST 1 IMS_PV FROM DET_PLAN_NUTRI_CONFI D');
    Add('JOIN RACAO R ON D.IDRACAO=R.ID');
    Add('WHERE IDPLAN=A.ID AND ORDEM=1) IMS_PV');
    Add('FROM PLAN_NUTRI_CONFI A');
    Add('WHERE ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
    Add(filtro);
    Add('ORDER BY PADRAO DESC');
    Open;
    PlanRegraTransicao.Open;
  end;
end;

procedure TServiceConf.AbrePlanejamentoNutriConfLote(IdPlan: string);
begin
  with PlanNutri,PlanNutri.SQL do
  begin
    Clear;
    Add('SELECT A.*,');
    Add('CASE');
    Add('WHEN A.STATUS=1 THEN ''ATIVO''');
    Add('WHEN A.STATUS=0 THEN ''INATIVO''');
    Add('END STATUS_STR,');
    Add('CASE');
    Add('WHEN A.PADRAO=1 THEN ''SIM''');
    Add('WHEN A.PADRAO=0 THEN ''NAO''');
    Add('END PADRAO_STR,');
    Add('(SELECT FIRST 1 IMS_PV FROM DET_PLAN_NUTRI_CONFI D');
    Add('JOIN RACAO R ON D.IDRACAO=R.ID');
    Add('WHERE IDPLAN=A.ID AND ORDEM=1) IMS_PV');
    Add('FROM PLAN_NUTRI_CONFI A');
    Add('WHERE STATUS>-1');
    Add('AND A.ID='+IdPlan);
    Add('ORDER BY PADRAO DESC');
    Open;
    PlanRegraTransicao.Open;
  end;
end;



procedure TServiceConf.AbreSimulaPrimeiroTrato(idLote, imsPv,msRacao: string);
begin
 with qrySimulaPrimeiroTrato,qrySimulaPrimeiroTrato.SQL do
 begin
  Clear;
  Add('SELECT');
  Add('B.TRATO,');
  Add('A.QTDE_CAB,');
  Add('A.PESO_ENTRADA PESO_MEDIO,');
  Add('CAST((A.QTDE_CAB*A.PESO_ENTRADA)*(CAST('+imsPv+' AS DOUBLE PRECISION)/100)AS DOUBLE PRECISION)*(b.Percent/100),');
  Add('CAST((A.QTDE_CAB*A.PESO_ENTRADA)*(CAST('+imsPv+' AS DOUBLE PRECISION)/100)AS DOUBLE PRECISION)*(b.Percent/100)/(CAST('+msRacao+'AS DOUBLE PRECISION)/100)');
  Add('mnTrato,');
  Add('PERCENT');
  Add('FROM LOTE_NUTRICIONAL A');
  Add('JOIN DET_LOTE_TRATOS B ON A.ID=B.ID_LOTE');
  Add('WHERE A.ID='+idLote);
  Open;
 end;
end;

procedure TServiceConf.AbreTRacao(Filtro:string);
begin
 with TRacao,TRacao.SQL do
 begin
   Clear;
   Add('SELECT R.*,');
   Add('CASE');
   Add(' WHEN TIPO=1 THEN ''Adaptação''');
   Add(' WHEN TIPO=2 THEN ''Crescimento''');
   Add(' WHEN TIPO=3 THEN ''Terminação''');
   Add(' WHEN TIPO=4 THEN ''Transição''');
   Add('END tipo_str,');
   Add('CASE');
   Add(' WHEN STATUS =2 THEN ''Irregular''');
   Add(' WHEN STATUS =1 THEN ''Ativa''');
   Add(' WHEN STATUS =0 THEN ''Inativa''');
   Add('END Status_STR');
   Add('FROM RACAO R WHERE ID_PROPRIEDADE=:ID_PROPRIEDADE');
   Add('and r.status>-1');
   ParamByName('ID_PROPRIEDADE').AsString := serviceDB.vIdPropriedade;
   if Filtro.Length>0 then
    Add(filtro);
   Add('ORDER BY R.ID DESC');
   TRacao.SQL.Text;
   try
    Open;
//    TRacaoInsumos.Open();
   except
    on e : Exception do
      MyShowMessage('Erro ao Criar Ração: '+e.Message,false)
   end;
 end;
end;

procedure TServiceConf.AbreTRacaoInsumo(IdRacao: string);
begin
 with TRacaoInsumos,TRacaoInsumos.SQL do
 begin
   Clear;
   Add('SELECT B.*,COALESCE(A.NOME,C.NOME)INSUMO,');
   Add('CASE');
   Add(' WHEN A.NOME IS NOT NULL THEN ''ALIMENTO''');
   Add(' WHEN C.NOME IS NOT NULL THEN ''PRE-MISTURA''');
   Add('end Tipo');
   Add('FROM RACAOINSUMOS B');
   Add('LEFT JOIN ALIMENTO A ON A.ID=B.IDINSUMOALIMENTO');
   Add('LEFT JOIN SUPLEMENTO_MINERAL c ON C.ID=B.ID_PREMISTURA');
   Add('WHERE B.STATUS=1 AND  B.IDRACAO=:ID');
   ParamByName('ID').AsString := IdRacao;
   Open;
 end;
end;

procedure TServiceConf.AbrirCentroCusto;
begin
  with TAuxCentroCusto,TAuxCentroCusto.SQL do
  begin
    Clear;
    Add('select * from AUX_CENTRO_CUSTO');
    Add('where status=1 and id_propriedade='+serviceDB.vIdPropriedade);
    Open;
  end;
end;

procedure TServiceConf.AbrirFabricacao(vFiltro: string);
begin
 with TFabricacao,TFabricacao.SQL do
 begin
   Clear;
   Add('select');
   Add(' f.*,');
   Add(' CASE');
   Add('  WHEN f.TIPO_BAIXA=1 then ''CONSUMO''');
   Add('  WHEN f.TIPO_BAIXA=2 then ''ACERTO''');
   Add('  WHEN f.TIPO_BAIXA=3 then ''TRANSFERENCIA''');
   Add('  WHEN f.TIPO_BAIXA=4 then ''Pre-Mistura''');
   Add(' END TIPO_BAIXA_STR,');
   Add('COALESCE(r.nome,S.NOME) Racao,');
   Add(' u.NAME Operador,');
   Add(' a.NOME CentroCusto');
   Add('from FABRICACAO f');
   Add('left JOIN RACAO r ON f.IDRACAO=r.ID');
   Add('left JOIN SUPLEMENTO_MINERAL S ON f.ID_PREMISTURA=S.ID');
   Add('JOIN users u ON u.ID=f.ID_OPERADOR');
   Add('left JOIN AUX_CENTRO_CUSTO a ON a.ID=f.ID_CENTROCUSTO');
   Add('WHERE F.STATUS>0 AND F.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add(vFiltro);
   Add('order by f.id desc');
   TFabricacao.SQL.Text;
   Open;
   ServiceConf.TFabricacaoInsumo.Open();
 end;
end;

procedure TServiceConf.ExportacaoFabricacao(vFiltro: string);
begin
 with ExportaFabricacao,ExportaFabricacao.SQL do
 begin
   Clear;
   Add('select');
   Add('  f.DATA_FAB FabricadaEm,');
   Add('  f.ID CodigoBatida,');
   Add('  f.HORA_INICIO,');
   Add('  f.HORA_FIM,');
   Add('  f.IDRACAO CodRacao,');
   Add('  COALESCE(r.nome,S.NOME) NomeRacao,');
   Add('  f.KG_PREVISTO PrevistoBatida,');
   Add('  f.KG_REALIZADO RealizadoBatida,');
   Add('  COALESCE(al.NOME,sm.NOME) INSUMO_NOME,');
   Add('  CASE');
   Add('  WHEN al.NOME IS NOT NULL THEN ''ALIMENTO''');
   Add('   WHEN sm.NOME IS NOT NULL THEN ''PRE-MISTURA''');
   Add('  END TIPO,');
   Add('  fi.KG_PREVISTO Previsto,');
   Add('  fi.KG_FABRICADO Realizado,');
	 Add('fi.KG_PREVISTO - fi.KG_FABRICADO DifKG,');
	 Add('((fi.KG_FABRICADO*100)/fi.KG_PREVISTO)DifPercent,');
	 Add('fi.VALOR_KG,');
	 Add('fi.CUSTO,');
	 Add('u.NAME Operador,');
   Add('acc.nome CentroCusto');
   Add(' from FABRICACAO f');
   Add(' LEFT JOIN AUX_CENTRO_CUSTO acc ON acc.id=f.ID_CENTROCUSTO');
   Add(' left JOIN RACAO r ON f.IDRACAO=r.ID');
   Add(' left JOIN SUPLEMENTO_MINERAL S ON f.ID_PREMISTURA=S.ID');
   Add(' JOIN users u ON u.ID=f.ID_OPERADOR');
   Add(' left JOIN AUX_CENTRO_CUSTO a ON a.ID=f.ID_CENTROCUSTO');
   Add(' JOIN FABRICACAO_INSUMOS fi ON fi.ID_FABRICACAO=f.ID');
   Add(' LEFT JOIN ALIMENTO AL ON fi.ID_ALIMENTO=AL.ID');
   Add(' LEFT JOIN SUPLEMENTO_MINERAL SM ON fi.ID_CONCENTRADO=SM.ID');
   Add('WHERE F.STATUS>0 AND F.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add(vFiltro);
   Add('order by f.id desc');
   Open;
 end;
end;

procedure TServiceConf.AbrirBaixaEstoque(vFiltro: string);
begin
 with TBaixaEstoque,TBaixaEstoque.SQL do
 begin
   Clear;
   Add('SELECT A.*,');
   Add('CASE');
   Add(' WHEN a.TIPO_BAIXA=1 then ''CONSUMO''');
   Add(' WHEN a.TIPO_BAIXA=2 then ''ACERTO''');
   Add(' WHEN a.TIPO_BAIXA=3 then ''TRANSFERENCIA''');
   Add('END TIPO_BAIXA_STR,');
   Add('COALESCE(B.NOME,C.NOME)Insumo,');
   Add('d.NOME CentroCusto');
   Add('FROM BAIXA_ESTOQUE_INSUMO_IND A');
   Add('LEFT JOIN SUPLEMENTO_MINERAL B ON A.ID_PRODUTO=B.ID');
   Add('LEFT JOIN ALIMENTO C ON A.ID_ALIMENTO=C.ID');
   Add('JOIN AUX_CENTRO_CUSTO D ON D.ID=A.ID_CENTRO_CUSTO');
   Add('WHERE A.STATUS=1 AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add(vFiltro);
   Add('order by a.data desc');
   TBaixaEstoque.SQL.Text;
   Open;
 end;
end;

procedure TServiceConf.AbrirFabricacaoInsumos(vIdFab: string);
begin
 with TFabricacaoInsumo,TFabricacaoInsumo.SQL do
 begin
   Clear;
   Add('select');
   Add('A.*,');
   Add('COALESCE(B.NOME,C.NOME) INSUMO_NOME,');
   Add('CASE');
   Add('  WHEN B.NOME IS NOT NULL THEN ''ALIMENTO''');
   Add('  WHEN C.NOME IS NOT NULL THEN ''PRE-MISTURA''');
   Add('END TIPO');
   Add('from FABRICACAO_INSUMOS A');
   Add('LEFT JOIN ALIMENTO B ON A.ID_ALIMENTO=B.ID');
   Add('LEFT JOIN SUPLEMENTO_MINERAL C ON A.ID_CONCENTRADO=C.ID');
   Add('WHERE A.STATUS=1 AND ID_FABRICACAO='+vIdFab);
   Open;
 end;
end;

procedure TServiceConf.AbrirLeituraCocho(vFiltro: string);
begin
 with TLeituraCocho,TLeituraCocho.SQL DO
 begin
   Clear;
   Add('SELECT A.*,B.CODIGO CURRAL FROM LEITURA_COCHO A');
   Add('JOIN CURRAIS B ON (A.ID_CURRAL=B.ID)');
   Add('WHERE A.STATUS=1 AND B.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add(vFiltro);
   TLeituraCocho.SQL.Text;
   Open;
 end;
end;

procedure TServiceConf.AbrirListaLeituradeCocho(vData:TDate);
begin
 with TListaLeitura,TListaLeitura.SQL do
 begin
   Clear;
   Add('SELECT X.*,');
   Add('(SELECT');
   Add('first 1 NOTA');
   Add('FROM LEITURA_COCHO');
   Add('WHERE STATUS=1 and ID_LOTE=x.IdLote');
   Add('AND ID_CURRAL=x.IdCurral');
   Add('AND DATA_LEITURA='+FormatDateTime('mm/dd/yyyy',vData).QuotedString);
   Add(')');
   Add(' FROM');
   Add('(');
   Add('SELECT');
   Add(' b.id IdCurral,');
   Add(' B.CODIGO,');
   Add(' ORDERM_FORN,');
   Add(' l.ID IdLote,');
   Add(' l.QTDE_CAB,');
   Add(' l.PESO_MEDIO,');
   Add(' (SELECT');
   Add(' MAX(DATA_LEITURA)');
   Add(' FROM LEITURA_COCHO');
   Add(' WHERE STATUS=1 and ID_LOTE=L.ID');
   Add(' AND ID_CURRAL=B.ID');
   Add('AND DATA_LEITURA<='+FormatDateTime('mm/dd/yyyy',vData).QuotedString+')UltimaLeitura');
   Add('FROM FORNECIMENTO_CONF A');
   Add('JOIN LOTE_NUTRICIONAL L ON A.ID_LOTE=L.ID');
   Add('JOIN CURRAIS B ON L.ID_LOCAL=B.ID');
   Add('WHERE A.STATUS=1 and  DATA_FORN='+FormatDateTime('mm/dd/yyyy',vData-1).QuotedString);
   Add('AND B.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('GROUP BY b.id,B.CODIGO,l.ID,l.QTDE_CAB,l.PESO_MEDIO,ORDERM_FORN');
   Add(')X');
   Add('ORDER BY SUBSTRING(codigo FROM 1 FOR (POSITION(''-''IN codigo)-1)),ORDERM_FORN');
   TListaLeitura.SQL.Text;
   Open;
 end;
end;

procedure TServiceConf.AlteraIdLoteAnimais(idLote, idLocal: string);
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('update animal set id_lote='+idLote);
   Add('where status=1 and id_local='+idLocal);
   try
    ExecSQL;
   except
    on e : Exception do
      MyShowMessage('Erro ao Atualizar Lote: '+e.Message,false)
   end;
 end;
 vQry.Free;
end;

procedure TServiceConf.AlteraIdPlanLote(idLote, idPlan: string);
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE LOTE_NUTRICIONAL S SET S.ID_PLANEJAMETO=:idPlan');
   Add(',S.ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
   Add(',S.DATA_ULTIMA_ALTERACAO=CURRENT_TIMESTAMP');
   Add('WHERE ID=:idLote');
   ParamByName('idLote').AsString   := idLote;
   ParamByName('idPlan').AsString   := idPlan;
   try
    ExecSQL;
   except
    on e : Exception do
      MyShowMessage('Erro ao Atualizar Lote: '+e.Message,false)
   end;
 end;
 vQry.Free;
end;

procedure TServiceConf.AlteraRacaoPlanejada(id, idRacao: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('UPDATE DET_LOTE_PLANEJAMENTO SET ID_RACAO='+idRacao);
   Add(',ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
   Add(',DATA_ALTERACAO=current_timestamp' );
   Add('WHERE ID='+id);
   ExecSQL;
 end;
end;

procedure TServiceConf.AlteraRacaoPlanejadaPeriodo(idLote,dataIni,DataFim,Tratos,idRacao: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('UPDATE DET_LOTE_PLANEJAMENTO SET ID_RACAO='+idRacao);
   Add(',ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
   Add(',DATA_ALTERACAO=current_timestamp' );
   Add('WHERE ID_LOTE='+idLote);
   Add('AND  "DATA">='+dataIni);
   Add('AND  "DATA"<='+DataFim);
   Add('AND  TRATO IN('+Tratos+')');
   ExecSQL;
 end;
end;

procedure TServiceConf.AtualizaCarcaca;
var
 vQry :TFDQuery;
begin
 TMP_ATUALIZA_CAR.Close;
 TMP_ATUALIZA_CAR.Open;

 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 while Not TMP_ATUALIZA_CAR.Eof do
 begin
   with vQry,vQry.SQL do
   begin
     Clear;
     Add('UPDATE ANIMAL SET PESO_CARCACA='+StringReplace(TMP_ATUALIZA_CARCARCACA.AsString,',','.',[rfReplaceAll]));
     Add(',ID_ULTIMO_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
     Add(',DATA_ULTIMA_ALTERACAO=CURRENT_TIMESTAMP');
     Add('WHERE ID='+TMP_ATUALIZA_CARCODIGO_ANIMAL.AsString);
     try
      ExecSQL;
     except
      on e : Exception do
        MyShowMessage('Erro ao Atualizar Carcaça: '+e.Message,false)
     end;
   end;
   TMP_ATUALIZA_CAR.Next;
 end;
 vQry.Free;
end;

procedure TServiceConf.AtualizaValorTotal(vLoteSaida, ValorTotal, qtdCab: string);
var
 vQryAux,vQryAuxLoop : TFDQuery;
 vIdAnimal,vValorIND:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;

 vQryAuxLoop := TFDQuery.Create(nil);
 vQryAuxLoop.Connection := serviceDB.FCon;

 vValorIND := FormatFloat('0.000',(
  Stringreplace(ValorTotal,'.',',',[rfReplaceAll]).ToDouble / qtdCab.ToDouble));
 vValorIND := StringReplace(vValorIND,',','.',[rfReplaceAll]);

 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL');
   Add('WHERE STATUS=2 AND ID_LOTESAIDA='+vLoteSaida);
   vQryAux.SQL.Text;
   try
     Open;
     while not vQryAux.eof  do
     begin
       vIdAnimal    := vQryAux.FieldByName('ID').AsString;
       with vQryAuxLoop,vQryAuxLoop.SQL do
       begin
         Clear;
         Add('UPDATE ANIMAL SET VALOR_VENDA='+vValorIND);
         Add(',ID_ULTIMO_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
         Add(',DATA_ULTIMA_ALTERACAO=CURRENT_TIMESTAMP');
         Add('WHERE ID='+vIdAnimal);
         try
          ExecSQL;
          vQryAux.Next;
         except
           on E: Exception do
           begin
             ShowMessage('Erro: ' + E.Message );
             Break;
           end
         end
       end;
     end;

     with vQryAux,vQryAux.SQL do
     begin
       Clear;
       Add('UPDATE LOTE_SAIDA SET TOTAL_ANIMAIS_EMBARCADOS='+serviceDB.qryGridLoteSaidaTOTALANIMAIS.AsString);
       Add(',VALOR_TOTAL_FRIGO ='+ValorTotal);
       Add('WHERE ID='+vLoteSaida);
       try
        ExecSQL;
       except
         on E: Exception do
           ShowMessage('Erro: ' + E.Message );
       end
     END;

    except
     on E: Exception do
       ShowMessage('Erro: ' + E.Message );
    end;
 end;

end;


procedure TServiceConf.AtualizaCarcacaTotal(vLoteSaida, TotalCarcaca,qtdCab: string);
var
 vQryAux,vQryAuxLoop : TFDQuery;
 vIdAnimal,vPesoCarcaca:string;
 vCarcaca :Double;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;

 vQryAuxLoop := TFDQuery.Create(nil);
 vQryAuxLoop.Connection := serviceDB.FCon;


 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' ANIMAL.ID ID_ANIMAL,');
   Add(' ANIMAL.PESO_SAIDA,');
   Add(' (ANIMAL.PESO_SAIDA*100)/LS.PESO_TOTAL PESO_PROP,');
   Add(' LS.PESO_TOTAL');
   Add('FROM');
   Add('(SELECT ID_LOTESAIDA,ID,PESO_SAIDA FROM ANIMAL a');
   Add('WHERE ID_LOTESAIDA='+vLoteSaida+')ANIMAL');
   Add('LEFT JOIN');
   Add('(SELECT ID_LOTESAIDA ,SUM(PESO_SAIDA) PESO_TOTAL FROM ANIMAL a');
   Add('WHERE ID_LOTESAIDA='+vLoteSaida);
   Add('GROUP BY ID_LOTESAIDA)LS');
   Add('ON ANIMAL.ID_LOTESAIDA =LS.ID_LOTESAIDA');
   vQryAux.SQL.Text;
   try
     Open;
     while not vQryAux.eof  do
     begin
//       Add('SELECT Y.*,(PESO_TOTA_CAR*PESO_PROP)/100 PESO_CAR_IND');
//   Add('FROM');
//   Add('(
       vCarcaca     :=
        (stringreplace(TotalCarcaca,'.',',',[rfReplaceAll]).ToDouble/qtdCab.ToDouble);
       vIdAnimal    := vQryAux.FieldByName('ID_ANIMAL').AsString;
       vPesoCarcaca := vCarcaca.ToString;

       with vQryAuxLoop,vQryAuxLoop.SQL do
       begin
         Clear;
         Add('UPDATE ANIMAL SET PESO_CARCACA='+StringReplace(vPesoCarcaca,',','.',[rfReplaceAll]));
         Add(',ID_ULTIMO_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
         Add(',DATA_ULTIMA_ALTERACAO=CURRENT_TIMESTAMP');
         Add('WHERE ID='+vIdAnimal);
         try
          ExecSQL;
          vQryAux.Next;
         except
           on E: Exception do
           begin
             ShowMessage('Erro: ' + E.Message );
             Break;
           end
         end
       end;
     end;

     with vQryAux,vQryAux.SQL do
     begin
       Clear;
       Add('UPDATE LOTE_SAIDA SET TOTAL_ANIMAIS_EMBARCADOS='+serviceDB.qryGridLoteSaidaTOTALANIMAIS.AsString);
       Add(',PESO_CARCACA_TOTAL ='+TotalCarcaca);
       Add('WHERE ID='+vLoteSaida);
       try
        ExecSQL;
       except
         on E: Exception do
           ShowMessage('Erro: ' + E.Message );
       end
     END;

    except
     on E: Exception do
       ShowMessage('Erro: ' + E.Message );
    end;
 end;

end;

procedure TServiceConf.AtualizaFornecimento(id, idMotorista, hora, qtdCab,
  MediaPeso, Realizado,VDATA,TRATO,ID_LOTE: string);
var
 cPESO_MEDIO :String;
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('UPDATE FORNECIMENTO_CONF SET');
   Add('ID_MOTORISTA=:ID_MOTORISTA,');
   Add('HORA_FORN=:HORA,');
   Add('QTD_CAB=:QTD_CAB,');
   Add('REALIZADO_MN_KG=:REALIZADO_MN_KG,');
   Add('CUSTO_TOTAL_TRATO=:REALIZADO_MN_KG*VALOR_KG_RACAO');
   Add(',DATA_ALTERACAO=CURRENT_TIMESTAMP');
   Add(',ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
   Add('WHERE ID='+ID);
   ParamByName('ID_MOTORISTA').AsString    := idMotorista;
   ParamByName('HORA').AsString            := Hora;
   ParamByName('QTD_CAB').AsString         := qtdCab;
   ParamByName('REALIZADO_MN_KG').AsString := Realizado;
   ExecSQL;

   Clear;
   Add('UPDATE DET_LOTE_PLANEJAMENTO SET UTILIZADO=1');
   Add('WHERE DATA='+FormatDateTime('mm/dd/yyyy',StrToDate(VDATA)).QuotedString+ ' AND TRATO='+TRATO);
   Add('AND ID_LOTE='+ID_LOTE);
   ExecSQL;

   if strToInt(Realizado)>0 then
   begin
     Clear;
     Add('DELETE FROM ANIMAL_FORNECIMENTO_CONF WHERE ID_FORNECIMENTO='+ID);
     ExecSQL;

     Clear;
     Add('INSERT INTO ANIMAL_FORNECIMENTO_CONF(');
     Add('ID_ANIMAL,');
     Add('ID_FORNECIMENTO,');
     Add(' DATA_FORNECIMENTO,');
     Add(' TRATO,');
     Add(' ID_LOTE,');
     Add(' ID_CURRAL,');
     Add(' CONSUMO_MN,');
     Add(' CONSUMO_MS,');
     Add(' IMS_PV,');
     Add(' CUSTO,');
     Add(' PESO_MEDIO,');
     Add(' ID_RACAO');
     Add(')');
     Add('SELECT');
     Add(' idAnimal,');
     Add(' idForne,');
     Add(' DATA_FORN,');
     Add(' TRATO,');
     Add(' ID_LOTE,');
     Add(' ID_LOCAL,');
     Add(' CAST(REALIZADO_MN_KG AS DOUBLE PRECISION)/CAST(QTD_CAB AS DOUBLE PRECISION) ConsumoMn,');
     Add(' CAST(REALIZADO_MN_KG AS DOUBLE PRECISION)/CAST(QTD_CAB AS DOUBLE PRECISION)*(CAST(MS_RACAO AS DOUBLE PRECISION)/100)ConsumoMs,');
     Add(' (((CAST(REALIZADO_MN_KG AS DOUBLE PRECISION)/QTD_CAB)*(CAST(MS_RACAO AS DOUBLE PRECISION)/100)*100)/');
     Add(' CAST(MEDIA_PESO AS DOUBLE PRECISION))IMS_PV,');
     Add(' custoCab,');
     Add(' MEDIA_PESO,');
     Add(' ID_RACAO');
     Add(' FROM');
     Add(' (');
     Add(' SELECT');
     Add(' B.ID idAnimal,');
     Add(' A.ID idForne,');
     Add(' A.DATA_FORN,');
     Add(' A.TRATO,');
     Add(' A.ID_LOTE,');
     Add(' A.ID_LOCAL,');
     Add(' A.REALIZADO_MN_KG,');
     Add(' A.QTD_CAB,');
     Add(' A.CUSTO_TOTAL_TRATO/A.QTD_CAB custoCab,');
     Add(' (select PESOPROJ from RETORNA_GMD_ACUMULADO (B.ID,A.DATA_FORN)) MEDIA_PESO,');
     Add(' B.PESO_ENTRADA_CONF,');
     Add(' A.ID_RACAO,');
     Add(' MS_RACAO');
     Add(' FROM FORNECIMENTO_CONF A');
     Add(' JOIN ANIMAL B ON A.ID_LOCAL=B.ID_LOCAL');
     Add(' WHERE B.STATUS=1');
     Add(' AND A.ID='+ID);
     Add(' ) y');
     ExecSQL;

     Clear;
     Add('SELECT AVG(PESO_MEDIO) PESO_MEDIO');
     Add('FROM ANIMAL_FORNECIMENTO_CONF afc');
     Add('WHERE ID_FORNECIMENTO  ='+ID);
     Open;

     cPESO_MEDIO := FieldByName('PESO_MEDIO').AsString;

     if cPESO_MEDIO='' then
       cPESO_MEDIO := MediaPeso;



     Clear;
     Add('UPDATE FORNECIMENTO_CONF SET');
     Add('MEDIA_PESO='+StringReplace(cPESO_MEDIO,',','.',[rfReplaceAll]));
     Add('WHERE ID='+ID);
     ExecSQL;

   end;
 end;
end;

procedure TServiceConf.AtualizaGMDRacaoLote(idLote, idRacao, GMD, dataBase,dataEntrada: string);
var
 PesoEstimado:string;
begin
  with qryAux,qryAux.SQL do
  begin
   Clear;
   Add('UPDATE DET_LOTE_PLANEJAMENTO S SET S.GMD=:GMD');
	 Add('WHERE ID_LOTE=:ID_LOTE AND ID_RACAO=:ID_RACAO');
   ParamByName('GMD').AsFloat        := strToFloat(GMD);
   ParamByName('ID_LOTE').AsString   := idLote;
   ParamByName('ID_RACAO').AsString  := idRacao;
   try
    ExecSQL;
   except
    on e : Exception do
      MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
   end;

   PesoEstimado :=ServiceConf.RetornaPesoProjLote(idLote,dataEntrada,dataBase);
   Clear;
   Add('UPDATE ANIMAL S SET S.PESO_ESTIMADO=PESO_ENTRADA + :GMD');
	 Add('WHERE ID_LOTE=:ID_LOTE');
   ParamByName('GMD').AsString       := PesoEstimado;
   ParamByName('ID_LOTE').AsString   := idLote;
   try
    ExecSQL;
   except
    on e : Exception do
      MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
   end
  end;
end;

procedure TServiceConf.AtualizaGMDLoteS;
var
 PesoEstimado:string;
begin
  with qryAux,qryAux.SQL do
  begin
   Clear;
   Add('EXECUTE PROCEDURE ATUALIZA_GMD_ANIMAL_FAZ');
   try
    ExecSQL;
   except
    on e : Exception do
      MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
   end;
  end;
end;

procedure TServiceConf.AtualizaLoteAnimais;
var
 vQry:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('EXECUTE PROCEDURE ATUALIZA_ID_LOTE_ANIMAL');
   ExecSQL;
 end;
 vQry.Free;
end;

procedure TServiceConf.AtualizaLotesAtivos;
begin
  TThread.CreateAnonymousThread(procedure
  begin
   TThread.Synchronize(nil, procedure
   begin
      try
       serviceDB.FCon.ExecSQL('EXECUTE PROCEDURE ATUALIZA_GMD_ANIMAL_FAZ_CONF');
       serviceDB.FCon.Commit;

       serviceDB.FCon.ExecSQL('EXECUTE PROCEDURE ATUALIZA_LOTES_ATIVOS('+serviceDB.vIdPropriedade+')');
       serviceDB.FCon.Commit;
      except
       on e : Exception do
        MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
      end;
   end);
  end).Start;
end;

procedure TServiceConf.AtualizaLotesAtivosIDLote(vId: string);
var
 vQry :TFDQuery;
 vQtdCab,vPesoEstimado:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT COUNT(*) qtdCab,AVG(PESO_ESTIMADO) PesoEstimado FROM ANIMAL');
   Add('WHERE STATUS=1 AND ID_LOTE='+vId);
   Open;
   if not IsEmpty then
   begin
     vQtdCab       := FieldByName('qtdCab').AsString;
     vPesoEstimado := FieldByName('PesoEstimado').AsString;
     try
      Clear;
      Add('UPDATE LOTE_NUTRICIONAL SET QTDE_CAB='+vQtdCab);
      Add(',PESO_MEDIO='+StringReplace(vPesoEstimado,',','.',[rfReplaceAll]));
      Add('WHERE ID='+vId);
      ExecSQL;
     except
       on e : Exception do
        ShowMessage('Erro ao Atualizar Lote: '+e.Message)
     end;
   end;
 end;
end;

procedure TServiceConf.AtualizaLotesPlanejamento(idPlan: string);
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('EXECUTE PROCEDURE ATUALIZA_PLAN_LOTES('+serviceDB.vIdUserLogado+','+idPlan+')');
   try
    ExecSQL;
   except
     on e : Exception do
      MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
   end;
 end;
 vQry.Free;
end;


procedure TServiceConf.AtualizaLotesQtdCabPesoAtivos;
begin
  try
   serviceDB.FCon.ExecSQL('EXECUTE PROCEDURE ATUALIZA_LOTES_ATIVOS('+serviceDB.vIdPropriedade+')');
   serviceDB.FCon.Commit;
  except
   on e : Exception do
    MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
  end;
 end;

procedure TServiceConf.AtualizaMsRacao(idRacao: string);
var
 vQry :TFDQuery;
 vMsRacao,vValoRacao:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' CAST((SUM(KGMATERIASECA)*100)');
   Add('  /sum(KGMATERIANATURAL) AS decimal(18,2)) mstotal');
   Add('FROM RACAOINSUMOS');
   Add('WHERE IDRACAO='+idRacao+' and status=1');
   Open;
   vMsRacao := StringReplace(FieldByName('mstotal').AsString,',','.',[rfReplaceAll]);

   Clear;
   Add('SELECT sum(VALORINCLUSAO)/sum(KGMATERIANATURAL) valortotal FROM RACAOINSUMOS');
   Add('WHERE STATUS =1 AND IDRACAO='+idRacao);
   Open;
   vValoRacao := StringReplace(FieldByName('valortotal').AsString,',','.',[rfReplaceAll]);


   if vValoRacao.Length=0 then
     vValoRacao:='0';
   if vMsRacao.Length=0 then
    vMsRacao :='0';

   Clear;
   Add('UPDATE racao SET MATERIASECA='+vMsRacao);
   Add(',VALORKG='+vValoRacao);
   Add('WHERE id='+idRacao);
   try
     ExecSQL;
     serviceDB.FCon.Commit;
   except
     on e : Exception do
      ShowMessage('Erro ao Atualizar MS Racão: '+e.Message)
   end;
 end;
end;

function TServiceConf.RetornaValorKGRacao(idRacao: string):string;
var
 vQry :TFDQuery;
 vMsRacao,vValoRacao:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT ROUND(sum(VALORINCLUSAO)/sum(KGMATERIANATURAL),3) valortotal FROM RACAOINSUMOS');
   Add('WHERE STATUS =1 AND IDRACAO='+idRacao);
   Open;
   vValoRacao := StringReplace(FieldByName('valortotal').AsString,',','.',[rfReplaceAll]);


   if vValoRacao.Length=0 then
     vValoRacao:='0';

   Result := vValoRacao;
 end;
end;


procedure TServiceConf.AtualizaoInclusaoRacao(idRacao: string);
var
 vQry,vQryw :TFDQuery;
 inclusaoms,
 inclusaomn,
 valorkgmn,
 valorinclusaomn,
 msTotalRacao,
 mnTotalRacao,
 kgMs,
 kgMN:Double;
 IdAlimento:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;

 vQryw            := TFDQuery.Create(nil);
 vQryw.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select');
   Add('  coalesce(sum(kgmateriaseca),0) kgmateriaseca,');
   Add('  coalesce(sum(kgmaterianatural),0)kgmaterianatural');
   Add('from racaoinsumos a');
   Add('where STATUS=1 and idracao=:id');
   ParamByName('id').AsString := idRacao;
   Open;
   msTotalRacao  := FieldByName('kgmateriaseca').AsFloat;
   mnTotalRacao  := FieldByName('kgmaterianatural').AsFloat;

   if msTotalRacao=0 then msTotalRacao:=1;
   if mnTotalRacao=0 then mnTotalRacao:=1;
 end;
 with vQryw,vQryw.SQL do
 begin
  Clear;
  Add('SELECT * FROM RACAOINSUMOS');
  Add('WHERE STATUS=1 AND IDRACAO=:id');
  ParamByName('id').AsString := idRacao;
  Open;
  while not vQryw.Eof do
  begin
    IdAlimento      := '';
    kgMs            := 0;
    kgMN            := 0;
    valorkgmn       := 0;
    valorinclusaomn :=0;

    IdAlimento := FieldByName('IDINSUMOALIMENTO').AsString;
    kgMs       := FieldByName('KGMATERIASECA').AsFloat;
    kgMN       := FieldByName('KGMATERIANATURAL').AsFloat;
    valorkgmn  := FieldByName('VALORKG').AsFloat;

    inclusaomn        := kgMn*100/mnTotalRacao;
    inclusaoms        := kgMs*100/msTotalRacao;
    valorinclusaomn   := valorkgmn*kgMN;

    with vQry,vQry.SQL do
    begin
     Clear;
     Add('update RACAOINSUMOS s set');
     Add(' s.inclusaomateriaseca     =:inclusaomateriaseca');
     Add(',s.inclusaomaterianatural  =:inclusaomaterianatural');
     Add(',s.valorinclusao           =:valorinclusao');
     Add('where s.id=:id');
     ParamByName('id').AsString                     := vQryw.FieldByName('ID').AsString;
     ParamByName('inclusaomateriaseca').AsFloat     := inclusaoms;
     ParamByName('inclusaomaterianatural').AsFloat  := inclusaomn;
     ParamByName('valorinclusao').AsFloat           := valorinclusaomn;
     ExecSQL;
    end;
    vQryw.Next;
  end;
 end;
 vQry.Free;
 vQryw.Free;
end;

procedure TServiceConf.AtualizaRealFabricacao(vIdFab: string);
var
 vQry :TFDQuery;
 vTotal:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
   with vQry,vQry.SQL do
   begin
     Clear;
     Add('SELECT sum(fi.KG_FABRICADO) total FROM FABRICACAO_INSUMOS fi');
     Add('WHERE fi.ID_FABRICACAO ='+vIdFab);
     Add('AND STATUS =1');
     OPen;
     vTotal := FieldByName('total').AsString;

     Clear;
     Add('UPDATE FABRICACAO SET KG_REALIZADO ='+vTotal);
     Add('WHERE id='+vIdFab);
     ExecSQL;
   end;
vQry.Free;
end;

procedure TServiceConf.AtualizaSaldoAtualAlimento(idAlimento: string);
var
 vQry :TFDQuery;
 vMaxId:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('EXECUTE PROCEDURE ATUALIZA_SALDO_ATUAL_ALIMENTO(');
   Add(serviceDB.vIdPropriedade+',');
   Add(idAlimento);
   Add(')');
   ExecSQL;
 end;
 vQry.Free;
end;

procedure TServiceConf.AtualizaSaldoAtualInsumoeProduto;
var
 vQryAux,vQry1 :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM ALIMENTO WHERE STATUS=1');
   Open;
   while not Eof do
   begin
    AtualizaSaldoAtualAlimento(vQryAux.FieldByName('ID').AsString);
    vQryAux.Next;
   end;

   Clear;
   Add('SELECT * FROM SUPLEMENTO_MINERAL WHERE STATUS=1');
   Open;
   while not Eof do
   begin
    AtualizaSaldoAtualProduto(vQryAux.FieldByName('ID').AsString);
    vQryAux.Next;
   end;
 end;
 vQryAux.FREE;
end;

procedure TServiceConf.AtualizaSaldoAtualProduto(idAlimento: string);
var
 vQry :TFDQuery;
 vMaxId:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('EXECUTE PROCEDURE ATUALIZA_SALDO_ATUAL_PRODUTO(');
   Add(serviceDB.vIdPropriedade+',');
   Add(idAlimento);
   Add(')');
   ExecSQL;
 end;
 vQry.Free;
end;

procedure TServiceConf.AtualizaTratosLotes;
var
 vQry,vQry1 :TFDQuery;
 vMaxId:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;

 vQry1            := TFDQuery.Create(nil);
 vQry1.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from lote_nutricional');
   Add('where status=1');
   Open;
   while not vQry.eof do
   begin
     with vQry1,vQry1.SQL do
     begin
      Clear;
      Add('EXECUTE PROCEDURE CRIA_DET_LOTE_TRATOS('+vQry.FieldByName('id').AsString+','+vQry.FieldByName('id_propriedade').AsString+')');
      vQry1.ExecSQL;

      Clear;
      Add('EXECUTE PROCEDURE RECRIA_DET_LOTE_PLANEJAMENTO(');
      Add(vQry.FieldByName('ID_USUARIO').AsString+',');
      Add(FormatDateTime('mm/dd/yyyy',ServiceConf.RetornaMaxDataForn(vQry.FieldByName('id').AsString)).QuotedString+',');
      Add(vQry.FieldByName('ID_PLANEJAMETO').AsString+',');
      Add(vQry.FieldByName('id').AsString+')');
       vQry1.ExecSQL;
     end;
     vQry.Next
   end;
 end;
 vQry1.Free;
 vQry.Free;
end;

procedure TServiceConf.AtualizaTratosLotesInd(IdLote:string);
var
 vQry,vQry1 :TFDQuery;
 vMaxId:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;

 vQry1            := TFDQuery.Create(nil);
 vQry1.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from lote_nutricional');
   Add('where ID='+IdLote);
   Open;
   while not vQry.eof do
   begin
     with vQry1,vQry1.SQL do
     begin
//      Clear;
//      Add('EXECUTE PROCEDURE CRIA_DET_LOTE_TRATOS('+vQry.FieldByName('id').AsString+')');
//      vQry1.ExecSQL;

      Clear;
      Add('EXECUTE PROCEDURE RECRIA_DET_LOTE_PLANEJAMENTO(');
      Add(vQry.FieldByName('ID_USUARIO').AsString+',');
      Add(FormatDateTime('mm/dd/yyyy',ServiceConf.RetornaMaxDataForn(vQry.FieldByName('id').AsString)).QuotedString+',');
      Add(vQry.FieldByName('ID_PLANEJAMETO').AsString+',');
      Add(vQry.FieldByName('id').AsString+')');
       vQry1.ExecSQL;
     end;
     vQry.Next
   end;
 end;
 vQry1.Free;
 vQry.Free;
end;


procedure TServiceConf.CopyRacao(idRacao: string);
var
 vQry :TFDQuery;
 vMaxId:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('INSERT INTO RACAO(tipo,nome,gmd,materiaseca,status,idusuario,dataformulacao,id_propriedade)');
   Add('select');
   Add(' a.tipo,');
   Add(' a.nome||''-Copia''||');
   Add(' extract(day from current_date)||');
   Add(' extract(month from current_date)||');
   Add('extract(year from current_date)||');
   Add(' extract(Hour from current_timestamp)||');
   Add(' extract(minute from current_timestamp)nome,');
   Add(' gmd,');
   Add(' materiaseca,');
   Add(' ''1'' status,');
   Add(' idusuario,');
   Add(' dataformulacao,');
   Add(' id_propriedade');
   Add('from racao a');
   Add('where id=:id');
   ParamByName('id').AsString := idRacao;
   try
    ExecSQL;
    Clear;
    Add('select max(id) maxId from racao where status=1');
    Open;
    vMaxId := FieldByName('maxId').AsString;

    Clear;
    Add('insert into racaoinsumos(');
    Add('idracao,');
    Add('idinsumoalimento,');
    Add('percentmateriaseca,');
    Add('kgmateriaseca,');
    Add('inclusaomateriaseca,');
    Add('inclusaomaterianatural,');
    Add('valorkg,');
    Add('valorinclusao,');
    Add('status,');
    Add('idusuario,');
    Add('kgmaterianatural)');
    Add('select');
    Add(':idracao,');
    Add('idinsumoalimento,');
    Add('percentmateriaseca,');
    Add('kgmateriaseca,');
    Add('inclusaomateriaseca,');
    Add('inclusaomaterianatural,');
    Add('valorkg,');
    Add('valorinclusao,');
    Add('status,');
    Add('idusuario,');
    Add('kgmaterianatural');
    Add('from racaoinsumos a');
    Add('where idracao=:id and status=1');
    ParamByName('id').AsString := idRacao;
    ParamByName('idracao').AsString := vMaxId;
    ExecSQL;
   except
    on e : Exception do
     ShowMessage('Erro ao Inserir Alimento: '+e.Message)
   end;
 end;
 vQry.Free;
end;

function TServiceConf.CriarLoteNutricional(vIdLocal,dataEntrada,TipoLote: string):string;
var
 vQry :TFDQuery;
 vIdPlanejamentoPadrao:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM  PLAN_NUTRI_CONFI WHERE STATUS=1 AND PADRAO=1');
   Open;
   if vQry.IsEmpty then
   begin
     MyShowMessage('Não existe nenhum planejamento padrão para criar o lote!',false);
     result     := 'ERRO';
     Exit;
   end
   else
   begin
    vIdPlanejamentoPadrao := FieldByName('id').AsString;
    result     := 'OK';
   end;
   Clear;
   Add('INSERT INTO LOTE_NUTRICIONAL(ID_LOCAL,ID_PLANEJAMETO,ID_PROPRIEDADE,DATA_ENTRADA,ID_USUARIO,TIPOLOTE)');
   Add('VALUES(');
   Add(vIdLocal+',');
   Add(vIdPlanejamentoPadrao+',');
   Add(serviceDB.vIdPropriedade+',');
   Add(dataEntrada.QuotedString+',');
   Add(serviceDB.vIdUserLogado+',');
   Add(TipoLote+')');
   try
    ExecSQL;
    MyShowMessage('Lote Criardo com Sucesso!',false);
    result     := 'OK';
   except
    on e : Exception do
    begin
      MyShowMessage('Erro ao Criar Lote Nutricional: '+e.Message,false);
      result     := 'ERRO';
    end;
   end;
 end;
end;

function TServiceConf.CriarLoteNutricionalPlan(vIdLocal,dataEntrada,IdPlan: string):string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('INSERT INTO LOTE_NUTRICIONAL(ID_LOCAL,ID_PLANEJAMETO,ID_PROPRIEDADE,DATA_ENTRADA,ID_USUARIO)');
   Add('VALUES(');
   Add(vIdLocal+',');
   Add(IdPlan+',');
   Add(serviceDB.vIdPropriedade+',');
   Add(dataEntrada.QuotedString+',');
   Add(serviceDB.vIdUserLogado+')');
   try
    ExecSQL;
    MyShowMessage('Lote Criardo com Sucesso!',false);
    result     := 'OK';
   except
    on e : Exception do
    begin
      MyShowMessage('Erro ao Criar Lote Nutricional: '+e.Message,false);
      result     := 'ERRO';
    end;
   end;
 end;
end;

procedure TServiceConf.DefinePlanejamentoPadrao(vId: string);
var
 vQry :TFDQuery;
 vResult:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE PLAN_NUTRI_CONFI SET PADRAO=0');
   Add('WHERE ID<>:ID');
   ParamByName('ID').AsString:=vId;
   ExecSQL;

   Clear;
   Add('UPDATE PLAN_NUTRI_CONFI SET PADRAO=1');
   Add('WHERE ID=:ID');
   ParamByName('ID').AsString:=vId;
   ExecSQL;
 end;
 vQry.Free;
end;

procedure TServiceConf.DeletaFornecimento(idForn,idLote,vData,Trato: string);
var
 vQry :TFDQuery;
 vResult:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE FORNECIMENTO_CONF SET STATUS=-1');
   Add(',ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
   Add(',DATA_ALTERACAO=CURRENT_TIMESTAMP');
   Add('WHERE ID='+idForn);
   try
    ExecSQL;

    Clear;
    Add('UPDATE DET_LOTE_PLANEJAMENTO SET UTILIZADO=0');
    Add('WHERE DATA='+FormatDateTime('mm/dd/yyyy',StrToDate(vData)).QuotedString+ ' AND TRATO='+TRATO);
    Add('AND ID_LOTE='+idLote);
    ExecSQL;
   except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQry.Free;
end;

procedure TServiceConf.DeletaLeituraeTratros(idLote, idLocal, DataForn: string);
var
 vQry :TFDQuery;
 vResult:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE LEITURA_COCHO SET STATUS=-1');
   Add(',ID_USUARIO_ALTERCAO='+serviceDB.vIdUserLogado);
   Add(',DATA_ALTERACAO=CURRENT_TIMESTAMP');
   Add('WHERE DATA_LEITURA='+DataForn);
   if idLote.Length >0 then
   begin
    Add('AND ID_LOTE='+idLote);
    Add('AND ID_CURRAL='+idLocal);
   end;
   try
    ExecSQL;


   Clear;
   Add('UPDATE FORNECIMENTO_CONF SET STATUS=-1');
   Add(',ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
   Add(',DATA_ALTERACAO=CURRENT_TIMESTAMP');
   Add('WHERE DATA_FORN='+DataForn);
   if idLote.Length >0 then
   begin
    Add('AND ID_LOTE='+idLote);
    Add('AND ID_LOCAL='+idLocal);
   end;
   ExecSQL;

    Clear;
    Add('UPDATE DET_LOTE_PLANEJAMENTO SET UTILIZADO=0');
    Add('WHERE DATA='+DataForn);
    if idLote.Length >0 then
    begin
     Add('AND ID_LOTE='+idLote);
    end;
    ExecSQL;
   except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQry.Free;
end;

procedure TServiceConf.DeletaPlanTratosLotes(idLote: string);
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('delete from DET_LOTE_TRATOS WHERE id_lote='+idLote);
   ExecSQL;
 end;
 vQry.Free;
end;

procedure TServiceConf.DetPlanNutriReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TServiceConf.GeraPlanNutriValores(idPlan: string);
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('EXECUTE PROCEDURE GERA_DET_PLAN_CONFI_VALORES('+idPlan+')');
   ExecSQL;
 end;
 vQry.Free;
end;

procedure TServiceConf.GeraPrimeiroTratoLote(idLote, dataPrimeiroTrato,
  idPlanejamento,imsPv: string);
var
 vQry :TFDQuery;
 vResult:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('DELETE FROM det_lote_planejamento WHERE ID_LOTE=:idLote');
   ParamByName('idLote').AsString    :=idLote;
   ExecSQL;

   Clear;
   Add('DELETE FROM FORNECIMENTO_CONF WHERE ID_LOTE=:idLote');
   ParamByName('idLote').AsString    :=idLote;
   ExecSQL;

   Clear;
   Add('EXECUTE PROCEDURE CRIA_DET_LOTE_PLANEJAMENTO(');
   Add(serviceDB.vIdUserLogado+',');
   Add(dataPrimeiroTrato.QuotedString+',');
   Add(idPlanejamento+',');
   Add(idLote+')');
   try
    ExecSQL;

    Clear;
    Add('UPDATE LOTE_NUTRICIONAL SET DATA_PRIMEIRO_TRATO='+dataPrimeiroTrato.QuotedString);
    Add('WHERE ID='+idLote);
    ExecSQL;
    ServiceConf.TLoteNutricional.Refresh;
   except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
 end;
 vQry.Free;
end;

procedure TServiceConf.InsereLeituraCocho(TIPO,ID_LOTE, ID_CURRAL, DATA_LEITURA,
  NOTA, AJUSTE,REPLY: string);
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE LEITURA_COCHO SET STATUS=-1');
   Add(',ID_USUARIO_ALTERCAO='+serviceDB.vIdUserLogado);
   Add(',DATA_ALTERACAO=CURRENT_TIMESTAMP');
   Add('WHERE ID_LOTE='+ID_LOTE);
   Add('AND ID_CURRAL='+ID_CURRAL);
   Add('AND DATA_LEITURA='+DATA_LEITURA);
   ExecSQL;

   if tipo='1' then
   begin
     Clear;
     Add('INSERT INTO LEITURA_COCHO(ID_LOTE,ID_CURRAL,DATA_LEITURA,NOTA,AJUSTE,ID_USUARIO)');
     Add('VALUES(');
     Add(ID_LOTE+',');
     Add(ID_CURRAL+',');
     Add(DATA_LEITURA+',');
     Add(NOTA+',');
     Add(AJUSTE+',');
     Add(serviceDB.vIdUserLogado+')');
     try
       ExecSQL;
       Clear;
       Add('EXECUTE PROCEDURE GERA_TRATOS_LEITURA('+AJUSTE+','+
       DATA_LEITURA+','+
       serviceDB.vIdUserLogado+','+
       ID_LOTE+','+
       REPLY+')');
       ExecSQL;
     except
      on e : Exception do
       MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
     end;
   end;
    if tipo='2' then
   begin
     Clear;
     Add('INSERT INTO LEITURA_COCHO(ID_LOTE,ID_CURRAL,DATA_LEITURA,NOTA,AJUSTE,ID_USUARIO)');
     Add('VALUES(');
     Add(ID_LOTE+',');
     Add(ID_CURRAL+',');
     Add(DATA_LEITURA+',');
     Add('100,');
     Add(AJUSTE+',');
     Add(serviceDB.vIdUserLogado+')');
     try
       ExecSQL;
       Clear;
       Add('EXECUTE PROCEDURE  GERA_TRATOS_LEITURA_KG('+AJUSTE+','+
       DATA_LEITURA+','+
       serviceDB.vIdUserLogado+','+
       ID_LOTE+',0)');
       ExecSQL;
     except
      on e : Exception do
       MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
     end;
   end;
 end;
 vQry.Free;
end;

procedure TServiceConf.MovimentaLoteEntreCurral(vIdLote, vIdCurralOrigem,
  vIdCurralDestino: string);
var
 vQry :TFDQuery;
 vResult:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('UPDATE LOTE_NUTRICIONAL  SET ID_LOCAL ='+vIdCurralDestino);
   Add('WHERE ID='+vIdLote);
   try
    ExecSQL;
     Clear;
     Add('UPDATE ANIMAL SET ID_LOCAL ='+vIdCurralDestino);
     Add('WHERE ID_LOTE='+vIdLote);
     try
      ExecSQL;
       Clear;
       Add('INSERT INTO MOVIMENTACAO_ANIMAL');
       Add('(ID_USUARIO,ID_ANIMAL,ID_PASTO_ORIGEM,ID_PASTO_DESTINO,"DATA",ID_MOTIVO)');
       Add('SELECT '+serviceDB.vIdUserLogado+',ID,'+vIdCurralOrigem);
       Add(','+vIdCurralDestino+',CURRENT_DATE,9000');
       Add('FROM ANIMAL');
       Add('WHERE STATUS=1 AND ID_LOTE='+vIdLote);
       try
        ExecSQL;
       except
        on e : Exception do
         MyShowMessage('Erro ao Atualizar Hist Movimentacao: '+e.Message,false)
       end;
     except
      on e : Exception do
       MyShowMessage('Erro ao Atualizar Animal: '+e.Message,false)
     end;
   except
    on e : Exception do
     MyShowMessage('Erro ao Atualizar Lote: '+e.Message,false)
   end;
 end;
 vQry.Free;
end;

procedure TServiceConf.MyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TServiceConf.PlanejamentoTratoDefault;
begin
 with PlanejamentoTrato,PlanejamentoTrato.SQL do
 begin
   Clear;
   Add('SELECT * FROM PADRAO_TRATO_CONF');
   Add('WHERE ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND STATUS=1');
   Open;
 end;
end;

function TServiceConf.RetormaMaxIdFabricao: string;
var
 vQry :TFDQuery;
 vResult:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT max(id)maxid FROM FABRICACAO');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE=:ID');
   ParamByName('ID').AsString :=serviceDB.vIdPropriedade;
   Open;
   if vQry.IsEmpty then
    Result :='1'
   else
    Result :=FieldByName('maxid').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetormaMaxOrdem(idPlan: string): string;
var
 vQry :TFDQuery;
 vResult:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT MAX(ORDEM) MAX_ORDEM FROM DET_PLAN_NUTRI_CONFI');
   Add('WHERE STATUS=1 AND IDPLAN=:ID');
   ParamByName('ID').AsString :=idPlan;
   Open;
   vResult:= FieldByName('MAX_ORDEM').AsString;
   if vResult.Length=0 then
    Result :='1'
   else
    Result := intToStr(FieldByName('MAX_ORDEM').AsInteger+1);
 end;
 vQry.Free;
end;

function TServiceConf.RetormaMaxTrato: string;
var
 vQry :TFDQuery;
 vResult:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT MAX(TRATO) MAX_TRATO FROM PADRAO_TRATO_CONF A');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE=:ID');
   ParamByName('ID').AsString :=serviceDB.vIdPropriedade;
   Open;
   vResult:= FieldByName('MAX_TRATO').AsString;
   if vResult.Length=0 then
    Result :='1'
   else
    Result := intToStr(FieldByName('MAX_TRATO').AsInteger+1);
 end;
 vQry.Free;
end;

function TServiceConf.RetornaAjusteNota(Nota: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM AUX_NOTAS_LEITURA');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND NOTA='+Nota);
   Open;
   Result := vQry.FieldByName('Ajuste').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaCustoFabricacao(idRacao,
  TotalRealizado: string): string;
var
 vValorKG:String;
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT  COALESCE(VALORKG,0) valorKg FROM RACAO');
   Add('WHERE ID='+idRacao);
   Open;
   vValorKG := vQry.FieldByName('valorKg').AsString;
   Result   := FloatToStr(strtoFloat(vValorKG)*strtoFloat(TotalRealizado));
 end;
 vQry.Free;
end;

function TServiceConf.RetornaDiaFimUltimaTransicao(
  idPLanejamento: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select first 1 (dia_fim +1) as dia_fim from DET_PLAN_REGRA_TRANSICAO a');
   Add('where status=1 and id_planejamento=:idplan');
   Add('order by id desc');
   ParamByName('idplan').AsString  := idPLanejamento;
   Open;
   Result := vQry.FieldByName('dia_fim').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaFornecimentoDiaAnterior(Adata: TDate;
  Alote: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select sum(REALIZADO_MN_KG) realizado from fornecimento_conf A');
   Add('where a.status=1 and A.id_lote=:idLote and A.data_forn=:dataForn');
   ParamByName('idLote').AsString  := Alote;
   ParamByName('dataForn').AsDate  := Adata;
   Open;
   Result := vQry.FieldByName('realizado').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaGMDLote(idLote, dataEntrada,
  dataBase: string): string;
begin

end;

function TServiceConf.RetornaLoteLocal(idLocal: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM LOTE_NUTRICIONAL');
   Add('WHERE STATUS=1 AND ID_LOCAL=:id_lote');
   ParamByName('id_lote').AsString := idLocal;
   Open;
   Result := vQry.FieldByName('ID').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaTipoCurral(idLocal: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM CURRAIS');
   Add('WHERE ID=:id_lote');
   ParamByName('id_lote').AsString := idLocal;
   Open;
   Result := vQry.FieldByName('TIPO').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaLoteLocalNome(Local: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT l.* FROM LOTE_NUTRICIONAL L');
   Add('JOIN CURRAIS C ON C.ID=L.ID_LOCAL');
   Add('WHERE L.STATUS=1 AND L.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND C.CODIGO='+Local.QuotedString);
   Open;
   Result := vQry.FieldByName('ID').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaMaxDataForn(idLote: string): TDate;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('coalesce((SELECT MAX(data_forn) FROM fornecimento_conf');
   Add('WHERE STATUS=1 AND ID_LOTE=:idlote),');
   Add('(SELECT A.data_primeiro_trato FROM lote_nutricional A');
   Add('WHERE ID=:idlote),');
   Add('(SELECT A.data_entrada FROM lote_nutricional A');
   Add('WHERE ID=:idlote)) maxTrato');
   Add('FROM lote_nutricional');
   Add('WHERE ID=:idlote');
   ParamByName('idlote').AsString := idlote;
   Open;
   Result := vQry.FieldByName('maxTrato').AsDateTime+1;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaMaxTratoLote(idLote: string): integer;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT max(Trato)maxTrato FROM DET_LOTE_TRATOS');
   Add('WHERE ID_LOTE=:id_lote');
   ParamByName('id_lote').AsString := idlote;
   Open;
   Result := vQry.FieldByName('maxTrato').AsInteger;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaMsRacaoPlanejamentoLote(
  idPlanejamento: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select first 1 b.id idRacao,b.materiaseca,b.nome racao,b.VALORKG');
   Add('from DET_PLAN_NUTRI_CONFI a');
   Add('join racao b on a.IDRACAO=b.id');
   Add('where A.STATUS=1 AND a.IDPLAN='+idPlanejamento);
   vQry.SQL.Text;
   Open;
   vRacaoSelecionada   := FieldByName('racao').AsString;
   vidRacaoSelecionada := FieldByName('idRacao').AsString;
   vRacaoValorKG       := FieldByName('VALORKG').AsString;
   Result := StringReplace(FieldByName('materiaseca').AsString,',','.',[rfReplaceAll]);
 end;
 vQry.Free;
end;

function TServiceConf.RetornaIdAnimal(vIdLoteSaida, vTipoIdent,
  vIdent: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from animal a');
   Add('where status=2 and a.id_lotesaida='+vIdLoteSaida);
   if vTipoIdent='0' then
    Add('and CAST(a.identificacao_1 AS bigint)='+vIdent)
   else
    Add('and a.identificacao_2='+QuotedStr(vIdent));
   Open;
   Result := FieldByName('ID').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaIDRacaoPlanejamentoLote(
  idPlanejamento: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select first 1 b.IDRACAO from DET_PLAN_NUTRI_CONFI a');
   Add('where a.IDPLAN='+idPlanejamento);
   vQry.SQL.Text;
   Open;
   Result := FieldByName('IDRACAO').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaPesoProjLote(idLote, dataEntrada,
  dataBase: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT sum(gmd) gmd FROM');
   Add('(SELECT "DATA" data_forn,AVG(GMD) gmd FROM DET_LOTE_PLANEJAMENTO A');
   Add('WHERE ID_LOTE='+idLote+' AND A."DATA"');
   Add('BETWEEN '+dataEntrada.QuotedString+' AND '+dataBase.QuotedString);
   Add('GROUP BY "DATA")');
   vQry.SQL.Text;
   Open;
   Result := StringReplace(FieldByName('gmd').AsString,',','.',[rfReplaceAll]);
 end;
 vQry.Free;
end;

function TServiceConf.RetornaPrevistoCorrigido(idLote, vData: string): integer;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('SUM(a.PREVISTO_MN_KG)-');
   Add('(SELECT COALESCE(sum(a.REALIZADO_MN_KG),0)');
   Add('FROM FORNECIMENTO_CONF a');
   Add('WHERE A.STATUS=1 AND ID_LOTE=:id_lote AND DATA_FORN=:DataForn AND TRATO<>(');
   Add('SELECT max(trato) FROM FORNECIMENTO_CONF');
   Add('WHERE STATUS=1 AND ID_LOTE=:id_lote AND DATA_FORN=:DataForn))PrevUltimo');
   Add('FROM FORNECIMENTO_CONF a');
   Add('WHERE A.STATUS=1 AND ID_LOTE=:id_lote');
   Add('AND DATA_FORN=:DataForn');
   ParamByName('id_lote').AsString  := idlote;
   ParamByName('DataForn').AsDate   := StrToDate(vData);
   Open;
   Result := vQry.FieldByName('PrevUltimo').AsInteger
 end;
 vQry.Free;
end;

function TServiceConf.RetornaTratoGerado(idLote: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from fornecimento_conf');
   Add('where status=1 and REALIZADO_MN_KG>0 and id_lote=:id_lote');
   ParamByName('id_lote').AsString := idlote;
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaUltimoForneMaiorQZero(Alote,
  Alocal: string): string;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select MAX(A.DATA_FORN) dataForne from fornecimento_conf A');
   Add('where a.status=1 and A.id_lote=:idLote AND A.REALIZADO_MN_KG>0 and A.ID_LOCAL=:idLocal');
   ParamByName('idLote').AsString   := Alote;
   ParamByName('idLocal').AsString  := Alocal;
   Open;
   Result := vQry.FieldByName('dataForne').AsString;
 end;
 vQry.Free;
end;

function TServiceConf.RetornaValorCabecaContrato(idContrato:string):string;
var
 vQry :TFDQuery;
 vQryW :TFDQuery;
 vQryP :TFDQuery;
 vTipo:integer;
 vValorArr,
 vRedimentoCompra,
 vValorComissao,
 vValorComissaoCab,
 vValorFrete,
 vValorFreteCab,
 vTotalCabeca,
 vPesoTotal,
 vPesoCabCompra,
 vPesoArrobaCabCompra,
 vValorCompra,
 vValorTotalCompra,
 vCustoTotal,
 vCustoCab,
 vCustoArroba,
 vPesoTotalBalancaoOrigem,
 vQuebraBalancao,
 vQuebraPesoBalancinha,
 vCustoBalancinha,
 vPesoMedio,
 vARROBA,
 vCustoFinalArroba:double;

 vRendimentoStr,vCustoFinalArrobaSTR,vIdAnimal:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 vQryW            := TFDQuery.Create(nil);
 vQryW.Connection := serviceDB.FCon;
 vQryP            := TFDQuery.Create(nil);
 vQryP.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('COALESCE(TIPO_VALOR,0)TIPO_VALOR,');
   Add('COALESCE(VALOR_TOTAL,0)VALOR_TOTAL,');
   Add('COALESCE(RENDIMENTO_COMPRA,50)RENDIMENTO_COMPRA,');
   Add('COALESCE(COMISSAO_TOTAL,0)COMISSAO_TOTAL,');
   Add('COALESCE(FRETE_TOTAL,0)FRETE_TOTAL');
   Add('FROM CONTRATO_COMPRA_ANIMAL');
   Add('WHERE ID='+idContrato);
   Open;

   vTipo              :=vQry.FieldByName('TIPO_VALOR').Asinteger;
   vValorCompra       :=vQry.FieldByName('VALOR_TOTAL').AsFloat;
   vRedimentoCompra   :=vQry.FieldByName('RENDIMENTO_COMPRA').AsFloat;
   vValorComissao     :=vQry.FieldByName('COMISSAO_TOTAL').AsFloat;
   vValorFrete        :=vQry.FieldByName('FRETE_TOTAL').AsFloat;

   if vRedimentoCompra=0 then
    vRedimentoCompra:=50;


   vRendimentoStr     :=stringReplace(FloatToStr(vRedimentoCompra/100),',','.',[rfReplaceAll]);

   Clear;
   Add('SELECT COUNT(*)QTD_CAB,SUM(PESO_ENTRADA) PESO_TOTAL FROM ANIMAL');
   Add('WHERE STATUS >-1 AND ID_CONTRATO ='+idContrato);
   Open;
   vTotalCabeca     :=vQry.FieldByName('QTD_CAB').AsFloat;
   vPesoTotal       :=vQry.FieldByName('PESO_TOTAL').AsFloat;
   vPesoMedio       := vPesoTotal/vTotalCabeca;

   if vTotalCabeca>0 then
    vPesoCabCompra   := vPesoTotal/vTotalCabeca
   else
    vPesoCabCompra   := 0;

   vPesoArrobaCabCompra  := vPesoCabCompra*(vRedimentoCompra/100)/15;

   vValorArr             := (vValorCompra/vTotalCabeca)/vPesoArrobaCabCompra;



   if vValorFrete>0 then
    vValorFreteCab        := vValorFrete / vTotalCabeca
   else
    vValorFreteCab        :=0;

   if vValorComissao>0 then
    vValorComissaoCab     := vValorComissaoCab / vTotalCabeca
   else
    vValorComissaoCab     :=0;

   vCustoTotal            := vValorComissao+vValorFrete+ (vValorCompra/vTotalCabeca);

   if vCustoTotal>0 then
      vCustoCab           := vCustoTotal;

   if vCustoCab>0 then
     vCustoArroba         := (vCustoTotal/vPesoArrobaCabCompra) ;

//   if CalculaQuebra='S' then
//   begin
//    Clear;
//    Add('SELECT');
//    Add(' G.NUMERO');
//    Add('FROM ANIMAL A');
//    Add('JOIN GTA G ON G.ID=A.GTA_ID');
//    Add('WHERE ID_CONTRATO ='+idContrato);
//    Add('AND COALESCE(G.PESO_B_ORIGEM,0)=0');
//    Add('OR  COALESCE(G.PESO_B_DESTINO,0)=0');
//    Add('GROUP BY G.NUMERO');
//    Open;
//    if Not IsEmpty then
//    begin
//      MyShowMessage('Existe GTAs sem Peso de Balanção, Exemplo GTA: '+FieldByName('NUMERO').AsString,false);
//      Exit;
//    end;
//
//    Clear;
//    Add('SELECT');
//    Add(' SUM(G.PESO_B_ORIGEM) PesoBalancaoOrigem');
//    Add(',SUM(G.PESO_B_ORIGEM)/SUM(G.PESO_B_DESTINO) Quebra');
//    Add('FROM ANIMAL A');
//    Add('JOIN GTA G ON G.ID=A.GTA_ID');
//    Add('WHERE ID_CONTRATO ='+idContrato);
//    Add('AND COALESCE(G.PESO_B_ORIGEM,0)>0');
//    Add('OR  COALESCE(G.PESO_B_DESTINO,0)>0');
//    Add('GROUP BY G.NUMERO');
//    Open;
//    vPesoTotalBalancaoOrigem  := FieldByName('PesoBalancaoOrigem').AsFloat;
//    vQuebraBalancao           := FieldByName('Quebra').AsFloat;
//
//    vQuebraPesoBalancinha     := vPesoTotal/vPesoTotalBalancaoOrigem;

    vCustoBalancinha          := vCustoCab/(vPesoMedio*(vRedimentoCompra/100)/15);
    with vQryW,vQryW.SQL do
    begin
      Clear;
      Add('SELECT ID,((PESO_ENTRADA*'+vRendimentoStr+')/15) AS ARROBA FROM ANIMAL');
      Add('WHERE STATUS >-1 AND ID_CONTRATO ='+idContrato);
      Open;
      while not vQryW.Eof do
      begin
       vIdAnimal := FieldByName('ID').AsString;
       vARROBA   := FieldByName('ARROBA').AsFloat;
       vCustoFinalArroba    := vCustoBalancinha*vARROBA;
       vCustoFinalArrobaSTR := stringReplace(FloatToStr(vCustoFinalArroba),',','.',[rfReplaceAll]);
       with vQryP,vQryP.SQL do
       begin
         Clear;
         Add('UPDATE ANIMAL SET VALOR_COMPRA='+vCustoFinalArrobaSTR);
         Add('WHERE ID='+vIdAnimal);
         ExecSQL;
       end;
       vQryW.Next;
      end;
    end;

   end;

// end;
 vQry.Free;
end;

procedure TServiceConf.TAuxCentroCustoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 showmessage(e.Message);
end;

procedure TServiceConf.TRacaoInsumosReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  showmessage(e.Message);
end;

procedure TServiceConf.TRacaoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 showmessage(e.Message);
end;

function TServiceConf.VerificaLoteAtivo(vIdLocal: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from LOTE_NUTRICIONAL');
   Add('where status=1 and id_local=:id_local');
   ParamByName('id_local').AsString := vIdLocal;
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TServiceConf.VerificaNomeExiste(Anome: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from racao');
   Add('where nome=:nome');
   ParamByName('nome').AsString := Anome;
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TServiceConf.VerificaNomePlanExiste(Anome: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from PLAN_NUTRI_CONFI');
   Add('where nome=:nome');
   ParamByName('nome').AsString := Anome;
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TServiceConf.VerificaNotaExiste(Nota: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM AUX_NOTAS_LEITURA');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND NOTA=:NOTA');
   ParamByName('NOTA').AsString   := StringReplace(Nota,',','.',[rfReplaceAll]);
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TServiceConf.VerificaNotaExisteEdit(ID, Nota: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM AUX_NOTAS_LEITURA');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND NOTA=:NOTA AND ID<>:ID');
   ParamByName('NOTA').AsString   :=Nota;
   ParamByName('ID').AsString     :=ID;
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TServiceConf.VerificaNumeroContratoExiste(Numero: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM CONTRATO_COMPRA_ANIMAL');
   Add('WHERE NUMERO=:NUMERO AND STATUS=1');
   Add('AND ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('NUMERO').AsString         := Numero;
   ParamByName('ID_PROPRIEDADE').AsString := serviceDB.vIdPropriedade;
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TServiceConf.VerificaNumeroContratoUsado(idContrato: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL');
   Add('WHERE ID_CONTRATO=:idContrato');
   ParamByName('idContrato').AsString := idContrato;
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

function TServiceConf.VerificaRacaoPlanExiste(idPlan, idRacao: string): Boolean;
var
 vQry :TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from DET_PLAN_NUTRI_CONFI');
   Add('where status=1 and IDPLAN=:IDPLAN');
   Add('and IDRACAO=:IDRACAO');
   ParamByName('IDPLAN').AsString  := idPlan;
   ParamByName('IDRACAO').AsString := idRacao;
   Open;
   Result := vQry.IsEmpty;
 end;
 vQry.Free;
end;

end.
