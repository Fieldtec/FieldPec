unit UServiceNew;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.FMXUI.Wait,FMX.Dialogs,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, ppPrnabl, ppClass,
  ppCtrls, ppDB, ppBands, ppCache, ppDesignLayer, ppParameter, ppDBPipe,
  ppDBBDE, ppComm, ppRelatv, ppProd, ppReport,FMX.Objects, ppVar,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TServiceNew = class(TDataModule)
    MEDICO_VETERINARIO: TFDQuery;
    CAPATAZ: TFDQuery;
    OPERACAO: TFDQuery;
    MEDICO_VETERINARIOID: TIntegerField;
    MEDICO_VETERINARIONOME: TStringField;
    MEDICO_VETERINARIOEMAIL: TStringField;
    MEDICO_VETERINARIOTELEFONE: TStringField;
    MEDICO_VETERINARIOCRM: TStringField;
    MEDICO_VETERINARIODATAREG: TSQLTimeStampField;
    MEDICO_VETERINARIOID_USUARIO: TIntegerField;
    MEDICO_VETERINARIOSTATUS: TIntegerField;
    CAPATAZID: TIntegerField;
    CAPATAZNOME: TStringField;
    CAPATAZEMAIL: TStringField;
    CAPATAZTELEFONE: TStringField;
    CAPATAZDATAREG: TSQLTimeStampField;
    CAPATAZID_USUARIO: TIntegerField;
    CAPATAZSTATUS: TIntegerField;
    OPERACAOID: TIntegerField;
    OPERACAONOME: TStringField;
    OPERACAODATAREG: TSQLTimeStampField;
    OPERACAOID_USUARIO: TIntegerField;
    OPERACAOSTATUS: TIntegerField;
    FConImg: TFDConnection;
    LAUDO: TFDQuery;
    LAUDOID: TIntegerField;
    LAUDOID_MORTE: TStringField;
    LAUDOID_VETERINARIO: TIntegerField;
    LAUDOID_CAPATAZ: TIntegerField;
    LAUDOID_OPERACAO_VIGENTE: TIntegerField;
    LAUDOHIST_ANTE_MORTEM: TStringField;
    LAUDODATAREG: TSQLTimeStampField;
    LAUDOID_USUARIO: TIntegerField;
    LAUDOSTATUS: TIntegerField;
    LAUDOPRODUTOR: TStringField;
    LAUDOIDENTIFICACAO_1: TStringField;
    LAUDOIDENTIFICACAO_2: TStringField;
    LAUDODATA_MORTE: TDateField;
    LAUDORACA: TStringField;
    LAUDOCATEGORIA: TStringField;
    LAUDOULTIMO_LOCAL: TStringField;
    LAUDOMOTIVO: TStringField;
    LAUDOVALOR_VENDA: TFMTBCDField;
    LAUDOCONTRATO: TStringField;
    LAUDOCAPATAZ: TStringField;
    LAUDOVETERINARIO: TStringField;
    LAUDOOPERACAO: TStringField;
    imgLaudo: TFDQuery;
    imgLaudoID: TIntegerField;
    imgLaudoID_LAUDO: TIntegerField;
    imgLaudoDATAREG: TSQLTimeStampField;
    imgLaudoID_USUARIO: TIntegerField;
    imgLaudoSTATUS: TIntegerField;
    imgLaudoIMG: TMemoField;
    imgLaudoIMG2: TMemoField;
    imgLaudoIMG3: TMemoField;
    imgLaudoIMG4: TMemoField;
    LAUDOIDADE_MORTE: TLargeintField;
    LAUDODATA_ENTRADA: TSQLTimeStampField;
    LAUDOCRM: TStringField;
    ppRepLaudoFotos: TppReport;
    ppBDEPLaudo: TppBDEPipeline;
    dsLaudo: TDataSource;
    ppParameterList1: TppParameterList;
    MEDICO_VETERINARIOASSINATURA: TMemoField;
    ppHeaderBand1: TppHeaderBand;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel1: TppLabel;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppLaudoIMG1: TppImage;
    ppLaudoIMG2: TppImage;
    ppLaudoIMG3: TppImage;
    ppLaudoIMG4: TppImage;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    dsConfig: TDataSource;
    BDEPConfig: TppBDEPipeline;
    dsRelSanidade: TDataSource;
    ppReportSanidadeAnalitico: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppShape93: TppShape;
    ppShape94: TppShape;
    ppShape95: TppShape;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLine17: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppShape87: TppShape;
    ppLabel108: TppLabel;
    ppShape88: TppShape;
    ppLabel109: TppLabel;
    ppShape89: TppShape;
    ppLabel110: TppLabel;
    ppShape90: TppShape;
    ppLabel111: TppLabel;
    ppShape91: TppShape;
    ppLabel112: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLine19: TppLine;
    ppFooterBand8: TppFooterBand;
    ppLine18: TppLine;
    ppLabel114: TppLabel;
    ppSystemVariable15: TppSystemVariable;
    ppSystemVariable16: TppSystemVariable;
    ppSummaryBand5: TppSummaryBand;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppParameterList8: TppParameterList;
    ppReportRelSani: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppImgHistSaniLogo: TppImage;
    TableAnimalSanidade: TFDQuery;
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
    TableAnimalSanidadeID_MOTIVO_APLICACAO: TIntegerField;
    TableAnimalSanidadeMOTIVO: TStringField;
    ppRepLaudo2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape10: TppShape;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppImgLaudo1: TppImage;
    ppLabel13: TppLabel;
    ppDBText19: TppDBText;
    ppLabel14: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel16: TppLabel;
    ppDBText22: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLine1: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    LAUDOCIDADE: TStringField;
    LAUDOUF: TStringField;
    LAUDOPRPRIEDADE: TStringField;
    ppLine2: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel33: TppLabel;
    ppDBText36: TppDBText;
    LAUDOSEXO: TStringField;
    ppLabel34: TppLabel;
    pplblEraLaudo: TppLabel;
    ppLabel31: TppLabel;
    ppLine4: TppLine;
    ppLabel15: TppLabel;
    ppDBText34: TppDBText;
    ppLaudoLogoCliente2: TppImage;
    imgLaudoIMG5: TMemoField;
    imgLaudoIMG6: TMemoField;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLaudoIMG5: TppImage;
    ppLaudoIMG6: TppImage;
    LAUDOTIPO: TIntegerField;
    LAUDO_VENDA: TFDQuery;
    LAUDO_VENDASEXO: TStringField;
    LAUDO_VENDAID: TIntegerField;
    LAUDO_VENDAID_MORTE: TStringField;
    LAUDO_VENDAID_VETERINARIO: TIntegerField;
    LAUDO_VENDAID_CAPATAZ: TIntegerField;
    LAUDO_VENDAID_OPERACAO_VIGENTE: TIntegerField;
    LAUDO_VENDAHIST_ANTE_MORTEM: TStringField;
    LAUDO_VENDADATAREG: TSQLTimeStampField;
    LAUDO_VENDAID_USUARIO: TIntegerField;
    LAUDO_VENDASTATUS: TIntegerField;
    LAUDO_VENDAPRODUTOR: TStringField;
    LAUDO_VENDACIDADE: TStringField;
    LAUDO_VENDAUF: TStringField;
    LAUDO_VENDAPRPRIEDADE: TStringField;
    LAUDO_VENDAIDENTIFICACAO_1: TStringField;
    LAUDO_VENDAIDENTIFICACAO_2: TStringField;
    LAUDO_VENDADATA_MORTE: TDateField;
    LAUDO_VENDARACA: TStringField;
    LAUDO_VENDACATEGORIA: TStringField;
    LAUDO_VENDAULTIMO_LOCAL: TStringField;
    LAUDO_VENDAVALOR_VENDA: TFMTBCDField;
    LAUDO_VENDACONTRATO: TStringField;
    LAUDO_VENDACAPATAZ: TStringField;
    LAUDO_VENDAVETERINARIO: TStringField;
    LAUDO_VENDACRM: TStringField;
    LAUDO_VENDAOPERACAO: TStringField;
    LAUDO_VENDADATA_ENTRADA: TSQLTimeStampField;
    LAUDO_VENDAIDADE_MORTE: TLargeintField;
    ppRepLaudoVenda: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText46: TppDBText;
    ppLabel44: TppLabel;
    ppDBText47: TppDBText;
    ppLabel45: TppLabel;
    ppDBText48: TppDBText;
    ppLabel46: TppLabel;
    ppDBText49: TppDBText;
    ppLaudoVendaIMG1: TppImage;
    ppLaudoVendaIMG2: TppImage;
    ppLaudoVendaIMG3: TppImage;
    ppLaudoVendaIMG4: TppImage;
    ppLaudoVendaLogoCliente: TppImage;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLaudoVendaIMG5: TppImage;
    ppLaudoVendaIMG6: TppImage;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppBDEPLaudoVenda: TppBDEPipeline;
    dsLaudoVenda: TDataSource;
    ppRepLaudoVenda2: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape16: TppShape;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppImgLaudoVenda1: TppImage;
    ppLabel51: TppLabel;
    ppDBText57: TppDBText;
    ppLabel52: TppLabel;
    ppDBText58: TppDBText;
    ppDBText67: TppDBText;
    ppLabel53: TppLabel;
    ppDBText68: TppDBText;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLine8: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppLine9: TppLine;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppLabel68: TppLabel;
    ppDBText80: TppDBText;
    ppLabel69: TppLabel;
    pplblEraLaudoVenda: TppLabel;
    ppLabel71: TppLabel;
    ppLine10: TppLine;
    ppLabel72: TppLabel;
    ppDBText81: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBText84: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    LAUDOPRODUTORDESTINO: TStringField;
    LAUDO_VENDAPRODUTORDESTINO: TStringField;
    RESPONSAVEL_RASTREABILIDADE: TFDQuery;
    GERENTE_OPERACIONAL: TFDQuery;
    RESPONSAVEL_RASTREABILIDADEID: TIntegerField;
    RESPONSAVEL_RASTREABILIDADENOME: TStringField;
    RESPONSAVEL_RASTREABILIDADEEMAIL: TStringField;
    RESPONSAVEL_RASTREABILIDADETELEFONE: TStringField;
    RESPONSAVEL_RASTREABILIDADEDATAREG: TSQLTimeStampField;
    RESPONSAVEL_RASTREABILIDADEID_USUARIO: TIntegerField;
    RESPONSAVEL_RASTREABILIDADESTATUS: TIntegerField;
    RESPONSAVEL_RASTREABILIDADEASSINATURA: TMemoField;
    GERENTE_OPERACIONALID: TIntegerField;
    GERENTE_OPERACIONALNOME: TStringField;
    GERENTE_OPERACIONALEMAIL: TStringField;
    GERENTE_OPERACIONALTELEFONE: TStringField;
    GERENTE_OPERACIONALDATAREG: TSQLTimeStampField;
    GERENTE_OPERACIONALID_USUARIO: TIntegerField;
    GERENTE_OPERACIONALSTATUS: TIntegerField;
    GERENTE_OPERACIONALASSINATURA: TMemoField;
    LAUDORESPONSAVEL_RASTREABILIDADE: TStringField;
    LAUDOGERENTE_OPERACIONAL: TStringField;
    LAUDO_VENDARESPONSAVEL_RASTREABILIDADE: TStringField;
    LAUDO_VENDAGERENTE_OPERACIONAL: TStringField;
    ppLine13: TppLine;
    ppLabel70: TppLabel;
    ppLine14: TppLine;
    ppLabel75: TppLabel;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    LAUDO_VENDAID_GERENTE_OP: TIntegerField;
    LAUDO_VENDAID_RESPONSAVEL_RAST: TIntegerField;
    LAUDOID_GERENTE_OP: TIntegerField;
    LAUDOID_RESPONSAVEL_RAST: TIntegerField;
    LAUDO_REPORT: TFDQuery;
    LAUDO_REPORTSEXO: TStringField;
    LAUDO_REPORTID: TIntegerField;
    LAUDO_REPORTID_MORTE: TStringField;
    LAUDO_REPORTID_VETERINARIO: TIntegerField;
    LAUDO_REPORTID_CAPATAZ: TIntegerField;
    LAUDO_REPORTID_OPERACAO_VIGENTE: TIntegerField;
    LAUDO_REPORTHIST_ANTE_MORTEM: TStringField;
    LAUDO_REPORTDATAREG: TSQLTimeStampField;
    LAUDO_REPORTID_USUARIO: TIntegerField;
    LAUDO_REPORTSTATUS: TIntegerField;
    LAUDO_REPORTTIPO: TIntegerField;
    LAUDO_REPORTID_GERENTE_OP: TIntegerField;
    LAUDO_REPORTID_RESPONSAVEL_RAST: TIntegerField;
    LAUDO_REPORTPRODUTOR: TStringField;
    LAUDO_REPORTPRODUTORDESTINO: TStringField;
    LAUDO_REPORTCIDADE: TStringField;
    LAUDO_REPORTUF: TStringField;
    LAUDO_REPORTPRPRIEDADE: TStringField;
    LAUDO_REPORTIDENTIFICACAO_1: TStringField;
    LAUDO_REPORTIDENTIFICACAO_2: TStringField;
    LAUDO_REPORTDATA_MORTE: TDateField;
    LAUDO_REPORTRACA: TStringField;
    LAUDO_REPORTCATEGORIA: TStringField;
    LAUDO_REPORTULTIMO_LOCAL: TStringField;
    LAUDO_REPORTMOTIVO: TStringField;
    LAUDO_REPORTVALOR_VENDA: TFMTBCDField;
    LAUDO_REPORTCONTRATO: TStringField;
    LAUDO_REPORTCAPATAZ: TStringField;
    LAUDO_REPORTVETERINARIO: TStringField;
    LAUDO_REPORTCRM: TStringField;
    LAUDO_REPORTOPERACAO: TStringField;
    LAUDO_REPORTDATA_ENTRADA: TSQLTimeStampField;
    LAUDO_REPORTIDADE_MORTE: TLargeintField;
    LAUDO_REPORTRESPONSAVEL_RASTREABILIDADE: TStringField;
    LAUDO_REPORTGERENTE_OPERACIONAL: TStringField;
    LAUDO_VENDA_REPORT: TFDQuery;
    LAUDO_VENDA_REPORTSEXO: TStringField;
    LAUDO_VENDA_REPORTID: TIntegerField;
    LAUDO_VENDA_REPORTID_MORTE: TStringField;
    LAUDO_VENDA_REPORTID_VETERINARIO: TIntegerField;
    LAUDO_VENDA_REPORTID_CAPATAZ: TIntegerField;
    LAUDO_VENDA_REPORTID_OPERACAO_VIGENTE: TIntegerField;
    LAUDO_VENDA_REPORTHIST_ANTE_MORTEM: TStringField;
    LAUDO_VENDA_REPORTDATAREG: TSQLTimeStampField;
    LAUDO_VENDA_REPORTID_USUARIO: TIntegerField;
    LAUDO_VENDA_REPORTSTATUS: TIntegerField;
    LAUDO_VENDA_REPORTID_GERENTE_OP: TIntegerField;
    LAUDO_VENDA_REPORTID_RESPONSAVEL_RAST: TIntegerField;
    LAUDO_VENDA_REPORTPRODUTOR: TStringField;
    LAUDO_VENDA_REPORTPRODUTORDESTINO: TStringField;
    LAUDO_VENDA_REPORTCIDADE: TStringField;
    LAUDO_VENDA_REPORTUF: TStringField;
    LAUDO_VENDA_REPORTPRPRIEDADE: TStringField;
    LAUDO_VENDA_REPORTIDENTIFICACAO_1: TStringField;
    LAUDO_VENDA_REPORTIDENTIFICACAO_2: TStringField;
    LAUDO_VENDA_REPORTDATA_MORTE: TDateField;
    LAUDO_VENDA_REPORTRACA: TStringField;
    LAUDO_VENDA_REPORTCATEGORIA: TStringField;
    LAUDO_VENDA_REPORTULTIMO_LOCAL: TStringField;
    LAUDO_VENDA_REPORTVALOR_VENDA: TFMTBCDField;
    LAUDO_VENDA_REPORTCONTRATO: TStringField;
    LAUDO_VENDA_REPORTCAPATAZ: TStringField;
    LAUDO_VENDA_REPORTVETERINARIO: TStringField;
    LAUDO_VENDA_REPORTCRM: TStringField;
    LAUDO_VENDA_REPORTOPERACAO: TStringField;
    LAUDO_VENDA_REPORTDATA_ENTRADA: TSQLTimeStampField;
    LAUDO_VENDA_REPORTIDADE_MORTE: TLargeintField;
    LAUDO_VENDA_REPORTRESPONSAVEL_RASTREABILIDADE: TStringField;
    LAUDO_VENDA_REPORTGERENTE_OPERACIONAL: TStringField;
    imgLaudoVenda: TFDQuery;
    imgLaudoVendaID: TIntegerField;
    imgLaudoVendaID_LAUDO: TIntegerField;
    imgLaudoVendaDATAREG: TSQLTimeStampField;
    imgLaudoVendaID_USUARIO: TIntegerField;
    imgLaudoVendaSTATUS: TIntegerField;
    imgLaudoVendaIMG: TMemoField;
    imgLaudoVendaIMG2: TMemoField;
    imgLaudoVendaIMG3: TMemoField;
    imgLaudoVendaIMG4: TMemoField;
    imgLaudoVendaIMG5: TMemoField;
    imgLaudoVendaIMG6: TMemoField;
    LAUDO_VENDAID_CAPATAZ_EPE: TIntegerField;
    LAUDOID_CAPATAZ_EPE: TIntegerField;
    LAUDOCAPATAZ_EPE: TStringField;
    LAUDO_VENDACAPATAZ_EPE: TStringField;
    LAUDO_VENDA_REPORTID_CAPATAZ_EPE: TIntegerField;
    LAUDO_VENDA_REPORTCAPATAZ_EPE: TStringField;
    LAUDO_REPORTID_CAPATAZ_EPE: TIntegerField;
    LAUDO_REPORTCAPATAZ_EPE: TStringField;
    qryAuxImg: TFDQuery;
    LAUDO_REPORTIDENTIFICACAO: TStringField;
    LAUDO_REPORTRACACATEGORIA: TStringField;
    LAUDO_REPORTFAIXAERA: TStringField;
    ppRepTamplateMorte: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppImgLogoTamplate: TppImage;
    ppLabel80: TppLabel;
    ppDBText93: TppDBText;
    ppLabel81: TppLabel;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppLabel84: TppLabel;
    ppDBText94: TppDBText;
    ppLabel85: TppLabel;
    ppDBText95: TppDBText;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppDBText97: TppDBText;
    ppShape34: TppShape;
    ppDBText99: TppDBText;
    ppShape35: TppShape;
    ppDBText101: TppDBText;
    ppShape36: TppShape;
    ppDBText102: TppDBText;
    ppLabel89: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList6: TppParameterList;
    ppShape37: TppShape;
    ppDBText103: TppDBText;
    ppLabel90: TppLabel;
    ppShape38: TppShape;
    ppDBText104: TppDBText;
    ppLabel91: TppLabel;
    ppShape39: TppShape;
    ppDBText105: TppDBText;
    ppLabel92: TppLabel;
    ppShape40: TppShape;
    ppDBText106: TppDBText;
    ppLabel93: TppLabel;
    ppShape41: TppShape;
    ppLabel94: TppLabel;
    ppDBText107: TppDBText;
    ppShape42: TppShape;
    ppLabel95: TppLabel;
    ppDBText108: TppDBText;
    ppLine15: TppLine;
    ppDBText109: TppDBText;
    ppLabel96: TppLabel;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppRepTamplateVenda: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape17: TppShape;
    ppImage1: TppImage;
    ppLabel38: TppLabel;
    ppDBText89: TppDBText;
    ppLabel76: TppLabel;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppLabel77: TppLabel;
    ppDBText90: TppDBText;
    ppLabel78: TppLabel;
    ppDBText91: TppDBText;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLabel79: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppDBText92: TppDBText;
    ppShape25: TppShape;
    ppDBText96: TppDBText;
    ppShape26: TppShape;
    ppDBText98: TppDBText;
    ppShape43: TppShape;
    ppDBText100: TppDBText;
    ppLabel97: TppLabel;
    ppShape44: TppShape;
    ppDBText112: TppDBText;
    ppLabel98: TppLabel;
    ppShape45: TppShape;
    ppDBText113: TppDBText;
    ppLabel99: TppLabel;
    ppShape46: TppShape;
    ppDBText114: TppDBText;
    ppLabel100: TppLabel;
    ppShape48: TppShape;
    ppLabel102: TppLabel;
    ppDBText116: TppDBText;
    ppLabel103: TppLabel;
    ppDBText117: TppDBText;
    ppLine16: TppLine;
    ppDBText118: TppDBText;
    ppLabel113: TppLabel;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDetailBand5: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    LAUDO_VENDA_REPORTIDENTIFICACAO: TStringField;
    LAUDO_VENDA_REPORTRACACATEGORIA: TStringField;
    LAUDO_VENDA_REPORTFAIXAERA: TStringField;
    LAUDO_VENDA_REPORTPRIMEIROCURRAL: TStringField;
    LAUDO_REPORTPRIMEIROCURRAL: TStringField;
    LAUDO_REPORTCIDADE_ORIGEM: TStringField;
    LAUDO_REPORTUF_ORIGEM: TStringField;
    LAUDO_REPORTPRPRIEDADE_ORIGEM: TStringField;
    LAUDO_VENDA_REPORTCIDADE_ORIGEM: TStringField;
    LAUDO_VENDA_REPORTUF_ORIGEM: TStringField;
    LAUDO_VENDA_REPORTPRPRIEDADE_ORIGEM: TStringField;
    LAUDOCHECK_ASS_CAPATAZ: TIntegerField;
    LAUDOCHECK_ASS_VETERINARIO: TIntegerField;
    LAUDOCHECK_GERENTE_OP: TIntegerField;
    LAUDOCHECK_RESPONSAVEL_RAST: TIntegerField;
    LAUDOCHECK_CAPATAZ_EPE: TIntegerField;
    LAUDOCHEKASSCAPATAZ: TStringField;
    LAUDOCHEKASSVETERINARIO: TStringField;
    LAUDOCHEKASSGERENTEOP: TStringField;
    LAUDOCHEKASSRESPRASTREABILIDADE: TStringField;
    LAUDOCHEKASSCAPATAZEPE: TStringField;
    LAUDO_REPORTCHECK_ASS_CAPATAZ: TIntegerField;
    LAUDO_REPORTCHECK_ASS_VETERINARIO: TIntegerField;
    LAUDO_REPORTCHECK_GERENTE_OP: TIntegerField;
    LAUDO_REPORTCHECK_RESPONSAVEL_RAST: TIntegerField;
    LAUDO_REPORTCHECK_CAPATAZ_EPE: TIntegerField;
    LAUDO_REPORTCHEKASSCAPATAZ: TStringField;
    LAUDO_REPORTCHEKASSVETERINARIO: TStringField;
    LAUDO_REPORTCHEKASSGERENTEOP: TStringField;
    LAUDO_REPORTCHEKASSRESPRASTREABILIDADE: TStringField;
    LAUDO_REPORTCHEKASSCAPATAZEPE: TStringField;
    LAUDO_VENDACHECK_ASS_CAPATAZ: TIntegerField;
    LAUDO_VENDACHECK_ASS_VETERINARIO: TIntegerField;
    LAUDO_VENDACHECK_GERENTE_OP: TIntegerField;
    LAUDO_VENDACHECK_RESPONSAVEL_RAST: TIntegerField;
    LAUDO_VENDACHECK_CAPATAZ_EPE: TIntegerField;
    LAUDO_VENDACHEKASSCAPATAZ: TStringField;
    LAUDO_VENDACHEKASSVETERINARIO: TStringField;
    LAUDO_VENDACHEKASSGERENTEOP: TStringField;
    LAUDO_VENDACHEKASSRESPRASTREABILIDADE: TStringField;
    LAUDO_VENDACHEKASSCAPATAZEPE: TStringField;
    LAUDO_VENDA_REPORTCHECK_ASS_CAPATAZ: TIntegerField;
    LAUDO_VENDA_REPORTCHECK_ASS_VETERINARIO: TIntegerField;
    LAUDO_VENDA_REPORTCHECK_GERENTE_OP: TIntegerField;
    LAUDO_VENDA_REPORTCHECK_RESPONSAVEL_RAST: TIntegerField;
    LAUDO_VENDA_REPORTCHECK_CAPATAZ_EPE: TIntegerField;
    LAUDO_VENDA_REPORTCHEKASSCAPATAZ: TStringField;
    LAUDO_VENDA_REPORTCHEKASSVETERINARIO: TStringField;
    LAUDO_VENDA_REPORTCHEKASSGERENTEOP: TStringField;
    LAUDO_VENDA_REPORTCHEKASSRESPRASTREABILIDADE: TStringField;
    LAUDO_VENDA_REPORTCHEKASSCAPATAZEPE: TStringField;
    CAPATAZASSINATURA: TMemoField;
    ppImLaudoVenda_Vet: TppImage;
    ppImLaudoVenda_Cap_Geral: TppImage;
    ppImLaudoVenda_GerenteOP: TppImage;
    ppImLaudoVenda_RespRast: TppImage;
    LAUDOCAPATEZASS: TMemoField;
    LAUDOCAPATEZEPEASS: TMemoField;
    LAUDOVETARINARIOASS: TMemoField;
    LAUDOREPONSAVELASS: TMemoField;
    LAUDOGERENTEASS: TMemoField;
    LAUDO_REPORTCAPATEZASS: TMemoField;
    LAUDO_REPORTCAPATEZEPEASS: TMemoField;
    LAUDO_REPORTVETARINARIOASS: TMemoField;
    LAUDO_REPORTREPONSAVELASS: TMemoField;
    LAUDO_REPORTGERENTEASS: TMemoField;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppDBText35: TppDBText;
    ppDBText37: TppDBText;
    ppLabel32: TppLabel;
    ppLabel35: TppLabel;
    ppDBText38: TppDBText;
    ppLine6: TppLine;
    ppLabel36: TppLabel;
    ppLine7: TppLine;
    ppLabel37: TppLabel;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppImgAssVeterinario: TppImage;
    ppImgAssCapGeral: TppImage;
    ppImgAssGerenteop: TppImage;
    ppImgAssRespRast: TppImage;
    ImgAssVeterinario1: TppImage;
    LAUDO_VENDACAPATEZASS: TMemoField;
    LAUDO_VENDACAPATEZEPEASS: TMemoField;
    LAUDO_VENDAVETARINARIOASS: TMemoField;
    LAUDO_VENDAREPONSAVELASS: TMemoField;
    LAUDO_VENDAGERENTEASS: TMemoField;
    LAUDO_VENDA_REPORTCAPATEZASS: TMemoField;
    LAUDO_VENDA_REPORTCAPATEZEPEASS: TMemoField;
    LAUDO_VENDA_REPORTVETARINARIOASS: TMemoField;
    LAUDO_VENDA_REPORTREPONSAVELASS: TMemoField;
    LAUDO_VENDA_REPORTGERENTEASS: TMemoField;
    ppImgVeterinarioVenda: TppImage;
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand8BeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure ppHeaderBand4BeforePrint(Sender: TObject);
    procedure imgLaudoVendaReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure FConImgAfterConnect(Sender: TObject);
    procedure ppHeaderBand6BeforePrint(Sender: TObject);
    procedure imgLaudoReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure ppHeaderBand5BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    function  ConectaBancoImagens:Boolean;
    procedure AbreLaudo(vFiltro:string);
    procedure AbreLaudoVenda(vFiltro:string);
    function  VerificaExisteImagemLaudo(vId:string):Boolean;
    function  VerificaExisteImagemLaudoSaida(vId: string): Boolean;
    function  VerificaTabelaExiste(vTable: string): Integer;
  end;

var
  ServiceNew: TServiceNew;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UServiceDB, UPrincipal;

{$R *.dfm}

{ TdmServiceNew }

procedure TServiceNew.AbreLaudo(vFiltro: string);
begin
 with LAUDO,LAUDO.sql do
 begin
   Clear;
   Add('SELECT');
   Add(' L.*,');
   Add(' Pgta.nome Produtor,');
   Add(' Pgtad.nome ProdutorDestino,');
   Add(' A.IDENTIFICACAO_1,');
   Add(' A.IDENTIFICACAO_2,');
   Add(' a.DATA_SAIDA data_morte,');
   Add(' R.NOME RACA ,');
   Add(' C.NOME CATEGORIA,');
   Add(' CU.CODIGO ULTIMO_LOCAL,');
   Add(' ax.NOME MOTIVO,');
   Add(' A.VALOR_VENDA,');
   Add(' cca.NUMERO CONTRATO,');
   Add(' C2.NOME CAPATAZ,');
   Add(' MV.NOME VETERINARIO,');
   Add(' MV.CRM,');
   Add(' O.NOME OPERACAO,');
   Add(' A.DATA_PROC DATA_ENTRADA,');
   Add(' pp.CIDADE ,');
   Add(' pp.UF,');
   Add(' C.SEXO,');
   Add(' pp.NOME PRPRIEDADE,');
   Add(' ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648) IDADE_MORTE,');
   Add(' rr.NOME Responsavel_Rastreabilidade,');
   Add(' gop.NOME GERENTE_OPERACIONAL,');
   Add(' cEPE.NOME CAPATAZ_EPE,');
   Add('  CASE');
   Add('  	WHEN CHECK_ASS_CAPATAZ =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_ASS_CAPATAZ =1 THEN ''SIM''');
   Add('  END ChekAssCapataz,');
   Add('  CASE');
   Add('  	WHEN CHECK_ASS_VETERINARIO =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_ASS_VETERINARIO =1 THEN ''SIM''');
   Add('  END ChekAssVeterinario,');
   Add('  CASE');
   Add('  	WHEN CHECK_GERENTE_OP =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_GERENTE_OP =1 THEN ''SIM''');
   Add('  END ChekAssGerenteOP,');
   Add('  CASE');
   Add('  	WHEN CHECK_RESPONSAVEL_RAST =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_RESPONSAVEL_RAST =1 THEN ''SIM''');
   Add('  END ChekAssRespRastreabilidade,');
   Add('  CASE');
   Add('  	WHEN CHECK_CAPATAZ_EPE =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_CAPATAZ_EPE =1 THEN ''SIM''');
   Add('  END ChekAssCapatazEPE,');
   Add('  cEPE.ASSINATURA CapatezAss,');
   Add('  c2.ASSINATURA   CapatezEPEAss,');
   Add('  mv.ASSINATURA   VetarinarioAss,');
   Add('  rr.ASSINATURA   ReponsavelAss,');
   Add('  gop.ASSINATURA  GerenteAss');
   Add('FROM LAUDO L');
   Add('JOIN ANIMAL A  ON A.ID=L.ID_MORTE AND A.STATUS=3');
   Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL cca ON cca.id=a.id_contrato');
   Add('LEFT JOIN PRODUTORES PCTR ON PCTR.ID=cca.ID_PRODUTOR_ORIGEM');
   Add('LEFT JOIN GTA g ON g.id=a.GTA_ID');
   Add('LEFT JOIN PRODUTORES Pgta ON Pgta.ID= g.ID_PRODUTOR_ORIGEM');
   Add('LEFT JOIN PRODUTORES Pgtad ON Pgtad.ID= g.ID_PRODUTOR_DESTINO');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('JOIN AUX_MOTIVO_MORTE ax ON ax.ID=a.ID_MOTIVO_MORTE');
   Add('LEFT JOIN PRODUTORES P ON P.ID= A.ID_PRODUTOR_ORIGEM');
   Add('LEFT JOIN PROPRIEDADES pp ON pp.ID= p.ID_PROPRIEDADE');
   Add('JOIN CAPATAZ c2 ON c2.id=l.ID_CAPATAZ');
   Add('LEFT JOIN CAPATAZ cEPE ON cEPE.ID=l.ID_CAPATAZ_EPE');
   Add('JOIN MEDICO_VETERINARIO mv  ON mv.id=l.ID_VETERINARIO');
   Add('JOIN OPERACAO o ON o.id=l.ID_OPERACAO_VIGENTE');
   Add('LEFT JOIN RESPONSAVEL_RASTREABILIDADE rr ON rr.ID =l.ID_RESPONSAVEL_RAST');
   Add('LEFT JOIN GERENTE_OPERACIONAL gop ON gop.ID =l.ID_GERENTE_OP');
   Add('WHERE L.STATUS =1');
   Add(vFiltro);
   Open;
 end;
end;

procedure TServiceNew.AbreLaudoVenda(vFiltro: string);
begin
 with LAUDO_VENDA,LAUDO_VENDA.sql do
 begin
   Clear;
   Add('SELECT');
   Add(' L.*,');
   Add(' Pgta.nome Produtor,');
   Add(' Pgtad.nome ProdutorDestino,');
   Add(' A.IDENTIFICACAO_1,');
   Add(' A.IDENTIFICACAO_2,');
   Add(' a.DATA_SAIDA data_morte,');
   Add(' R.NOME RACA ,');
   Add(' C.NOME CATEGORIA,');
   Add(' CU.CODIGO ULTIMO_LOCAL,');
   Add(' A.VALOR_VENDA,');
   Add(' cca.NUMERO CONTRATO,');
   Add(' C2.NOME CAPATAZ,');
   Add(' MV.NOME VETERINARIO,');
   Add(' MV.CRM,');
   Add(' O.NOME OPERACAO,');
   Add(' A.DATA_PROC DATA_ENTRADA,');
   Add(' pp.CIDADE ,');
   Add(' pp.UF,');
   Add(' C.SEXO,');
   Add(' pp.NOME PRPRIEDADE,');
   Add(' ROUND((A.DATA_SAIDA-A.DATA_NASCIMENTO)/30.648) IDADE_MORTE,');
   Add(' rr.NOME Responsavel_Rastreabilidade,');
   Add(' gop.NOME GERENTE_OPERACIONAL,');
   Add(' cEPE.NOME CAPATAZ_EPE,');
   Add('  CASE');
   Add('  	WHEN CHECK_ASS_CAPATAZ =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_ASS_CAPATAZ =1 THEN ''SIM''');
   Add('  END ChekAssCapataz,');
   Add('  CASE');
   Add('  	WHEN CHECK_ASS_VETERINARIO =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_ASS_VETERINARIO =1 THEN ''SIM''');
   Add('  END ChekAssVeterinario,');
   Add('  CASE');
   Add('  	WHEN CHECK_GERENTE_OP =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_GERENTE_OP =1 THEN ''SIM''');
   Add('  END ChekAssGerenteOP,');
   Add('  CASE');
   Add('  	WHEN CHECK_RESPONSAVEL_RAST =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_RESPONSAVEL_RAST =1 THEN ''SIM''');
   Add('  END ChekAssRespRastreabilidade,');
   Add('  CASE');
   Add('  	WHEN CHECK_CAPATAZ_EPE =0 THEN ''NÃO''');
   Add('  	WHEN CHECK_CAPATAZ_EPE =1 THEN ''SIM''');
   Add('  END ChekAssCapatazEPE,');
   Add('  cEPE.ASSINATURA CapatezAss,');
   Add('  c2.ASSINATURA   CapatezEPEAss,');
   Add('  mv.ASSINATURA   VetarinarioAss,');
   Add('  rr.ASSINATURA   ReponsavelAss,');
   Add('  gop.ASSINATURA  GerenteAss');
   Add('FROM LAUDO_SAIDA  L');
   Add('JOIN ANIMAL A  ON A.ID=L.ID_MORTE AND A.STATUS=2');
   Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL cca ON cca.id=a.id_contrato');
   Add('LEFT JOIN PRODUTORES PCTR ON PCTR.ID=cca.ID_PRODUTOR_ORIGEM');
   Add('LEFT JOIN GTA g ON g.id=a.GTA_ID');
   Add('LEFT JOIN PRODUTORES Pgta ON Pgta.ID= g.ID_PRODUTOR_ORIGEM');
   Add('LEFT JOIN PRODUTORES Pgtad ON Pgtad.ID= g.ID_PRODUTOR_DESTINO');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('LEFT JOIN PRODUTORES P ON P.ID= A.ID_PRODUTOR_ORIGEM');
   Add('LEFT JOIN PROPRIEDADES pp ON pp.ID= p.ID_PROPRIEDADE');
   Add('JOIN CAPATAZ c2 ON c2.id=l.ID_CAPATAZ');
   Add('LEFT JOIN CAPATAZ cEPE ON cEPE.ID=l.ID_CAPATAZ_EPE');
   Add('JOIN MEDICO_VETERINARIO mv  ON mv.id=l.ID_VETERINARIO');
   Add('JOIN OPERACAO o ON o.id=l.ID_OPERACAO_VIGENTE');
   Add('LEFT JOIN RESPONSAVEL_RASTREABILIDADE rr ON rr.ID =l.ID_RESPONSAVEL_RAST');
   Add('LEFT JOIN GERENTE_OPERACIONAL gop ON gop.ID =l.ID_GERENTE_OP');
   Add('WHERE L.STATUS =1');
   Add(vFiltro);
   Open;
 end;
end;

function TServiceNew.ConectaBancoImagens:Boolean;
var
  Arquivo: String;
  vVendorLib:string;
begin
  FConImg.Connected := false;
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
    try
      with FConImg do
        begin
          Params.Clear;
          Params.Values['DriverID']  :='FB';
          Params.Values['Server']    :=serviceDB.LerIni(Arquivo,'FB_IMG','Server');
          Params.Values['Database']  :=serviceDB.LerIni(Arquivo,'FB_IMG','Database');
          Params.Values['User_name'] :=serviceDB.LerIni(Arquivo,'FB_IMG','User');
          Params.Values['Password']  :=serviceDB.LerIni(Arquivo,'FB_IMG','Password');
          Params.Values['Port']      :=serviceDB.LerIni(Arquivo,'FB_IMG','Port');
          Connected := True;
        end;
    except
        ShowMessage('Ocorreu uma Falha na configuração no Banco Firebird!');
    end;
  end;
  Result := FConImg.Connected;
end;

procedure TServiceNew.FConImgAfterConnect(Sender: TObject);
begin
   if VerificaTabelaExiste('IMG_LAUDO_VENDA')=0 then
   begin
      with qryAuxImg,qryAuxImg.sql do
       begin
         Clear;
         Add('CREATE TABLE IMG_LAUDO_VENDA (');
         Add('	ID INTEGER NOT NULL,');
         Add('	ID_LAUDO INTEGER NOT NULL,');
         Add('	DATAREG TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,');
         Add('	ID_USUARIO INTEGER NOT NULL,');
         Add('	STATUS INTEGER DEFAULT 1 NOT NULL,');
         Add('	IMG BLOB SUB_TYPE TEXT,');
         Add('	IMG2 BLOB SUB_TYPE TEXT,');
         Add('	IMG3 BLOB SUB_TYPE TEXT,');
         Add('	IMG4 BLOB SUB_TYPE TEXT,');
         Add('	IMG5 BLOB SUB_TYPE TEXT,');
         Add('	IMG6 BLOB SUB_TYPE TEXT,');
         Add('	CONSTRAINT PK_IMG_LAUDO_VENDA PRIMARY KEY (ID))');
         ExecSQL;

         Clear;
         Add('CREATE SEQUENCE GEN_IMG_LAUDO_VENDA_ID');
         ExecSQL;

         Clear;
         Add('CREATE TRIGGER IMG_LAUDO_VENDA_BI FOR IMG_LAUDO_VENDA  BEFORE INSERT');
         Add('as');
         Add('begin');
         Add(' if (new.id is null) then');
         Add('  new.id = gen_id(GEN_IMG_LAUDO_VENDA_ID,1);');
         Add('END');
         ExecSQL;
       end;
   end;
end;

function TServiceNew.VerificaTabelaExiste(vTable: string): Integer;
begin
 with qryAuxImg,qryAuxImg.SQL do
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

procedure TServiceNew.imgLaudoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message);
end;

procedure TServiceNew.imgLaudoVendaReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message);
end;

procedure TServiceNew.ppHeaderBand1BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
 if serviceDB.qryConfigPadraoLOGO.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(serviceDB.qryConfigPadraoLOGO.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoLogoCliente2.Picture.LoadFromStream(MS);
   except
    ppLaudoLogoCliente2.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoIMG.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoIMG.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoIMG1.Picture.LoadFromStream(MS);
   except
    ppLaudoIMG1.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoIMG2.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoIMG2.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoIMG2.Picture.LoadFromStream(MS);
   except
    ppLaudoIMG2.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoIMG3.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoIMG3.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoIMG3.Picture.LoadFromStream(MS);
   except
    ppLaudoIMG3.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoIMG4.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoIMG4.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoIMG4.Picture.LoadFromStream(MS);
   except
    ppLaudoIMG4.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoIMG5.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoIMG5.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoIMG5.Picture.LoadFromStream(MS);
   except
    ppLaudoIMG5.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoIMG6.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoIMG6.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoIMG6.Picture.LoadFromStream(MS);
   except
    ppLaudoIMG6.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

end;

procedure TServiceNew.ppHeaderBand2BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
 if serviceDB.qryConfigPadraoLOGO.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(serviceDB.qryConfigPadraoLOGO.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppImgLaudo1.Picture.LoadFromStream(MS);
   except
    ppImgLaudo1.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

if ServiceNew.LAUDO_REPORTCHECK_ASS_CAPATAZ.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_REPORTCAPATEZEPEASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(ServiceNew.LAUDO_REPORTCAPATEZEPEASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImgAssCapGeral.Picture.LoadFromStream(MS);
     except
      ppImgAssCapGeral.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ppImgAssCapGeral.Picture.Bitmap := nil;

 if ServiceNew.LAUDO_REPORTCHECK_ASS_VETERINARIO.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_REPORTVETARINARIOASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(LAUDO_REPORTVETARINARIOASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImgAssVeterinario.Picture.LoadFromStream(MS);
     except
      ppImgAssVeterinario.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ppImgAssVeterinario.Picture.Bitmap := nil;

 if ServiceNew.LAUDO_REPORTCHECK_GERENTE_OP.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_REPORTGERENTEASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(LAUDO_REPORTGERENTEASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImgAssGerenteop.Picture.LoadFromStream(MS);
     except
      ppImgAssGerenteop.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ppImgAssGerenteop.Picture.Bitmap := nil;

 if ServiceNew.LAUDO_REPORTCHECK_RESPONSAVEL_RAST.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_REPORTREPONSAVELASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(LAUDO_REPORTREPONSAVELASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImgAssRespRast.Picture.LoadFromStream(MS);
     except
      ppImgAssRespRast.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
   ppImgAssRespRast.Picture.Bitmap := nil;
end;

procedure TServiceNew.ppHeaderBand3BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
 if serviceDB.qryConfigPadraoLOGO.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(serviceDB.qryConfigPadraoLOGO.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoVendaLogoCliente.Picture.LoadFromStream(MS);
   except
    ppLaudoVendaLogoCliente.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if serviceDB.qryConfigPadraoLOGO_2.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(serviceDB.qryConfigPadraoLOGO_2.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoVendaIMG1.Picture.LoadFromStream(MS);
   except
    ppLaudoVendaIMG1.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoVendaIMG.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoVendaIMG.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoVendaIMG1.Picture.LoadFromStream(MS);
   except
    ppLaudoVendaIMG1.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoVendaIMG2.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoVendaIMG2.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoVendaIMG2.Picture.LoadFromStream(MS);
   except
    ppLaudoVendaIMG2.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoVendaIMG3.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoVendaIMG3.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoVendaIMG3.Picture.LoadFromStream(MS);
   except
    ppLaudoVendaIMG3.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoVendaIMG4.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoVendaIMG4.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoVendaIMG4.Picture.LoadFromStream(MS);
   except
    ppLaudoVendaIMG4.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoVendaIMG5.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoVendaIMG5.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoVendaIMG5.Picture.LoadFromStream(MS);
   except
    ppLaudoVendaIMG5.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;

 if imgLaudoVendaIMG6.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(imgLaudoVendaIMG6.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppLaudoVendaIMG6.Picture.LoadFromStream(MS);
   except
    ppLaudoVendaIMG6.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;
end;

procedure TServiceNew.ppHeaderBand4BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
 if serviceDB.qryConfigPadraoLOGO.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(serviceDB.qryConfigPadraoLOGO.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppImgLaudoVenda1.Picture.LoadFromStream(MS);
   except
    ppImgLaudoVenda1.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end
 else
  ppImgLaudoVenda1.Picture.Bitmap := nil;

if ServiceNew.LAUDO_VENDA_REPORTCHECK_ASS_CAPATAZ.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_VENDA_REPORTCAPATEZEPEASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(ServiceNew.LAUDO_VENDA_REPORTCAPATEZEPEASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImLaudoVenda_Cap_Geral.Picture.LoadFromStream(MS);
     except
      ppImLaudoVenda_Cap_Geral.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ppImLaudoVenda_Cap_Geral.Picture.Bitmap := nil;

 if ServiceNew.LAUDO_VENDACHECK_ASS_VETERINARIO.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_VENDA_REPORTVETARINARIOASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(LAUDO_VENDA_REPORTVETARINARIOASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImLaudoVenda_Vet.Picture.LoadFromStream(MS);
     except
      ppImLaudoVenda_Vet.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ppImLaudoVenda_Vet.Picture.Bitmap := nil;

 if ServiceNew.LAUDO_VENDACHECK_GERENTE_OP.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_VENDAGERENTEASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(LAUDO_VENDAGERENTEASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImLaudoVenda_GerenteOP.Picture.LoadFromStream(MS);
     except
      ppImLaudoVenda_GerenteOP.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ppImLaudoVenda_GerenteOP.Picture.Bitmap := nil;

 if ServiceNew.LAUDO_VENDA_REPORTCHECK_RESPONSAVEL_RAST.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_VENDA_REPORTREPONSAVELASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(LAUDO_VENDA_REPORTREPONSAVELASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImLaudoVenda_RespRast.Picture.LoadFromStream(MS);
     except
      ppImLaudoVenda_RespRast.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ppImLaudoVenda_RespRast.Picture.Bitmap := nil;
end;

procedure TServiceNew.ppHeaderBand5BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
   if serviceDB.qryConfigPadraoLOGO.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(serviceDB.qryConfigPadraoLOGO.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImage1.Picture.LoadFromStream(MS);
     except
      ppImage1.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;

 if ServiceNew.LAUDO_VENDA_REPORTCHECK_ASS_VETERINARIO.AsInteger=1 then
 begin
   if ServiceNew.LAUDO_VENDA_REPORTVETARINARIOASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(LAUDO_VENDA_REPORTVETARINARIOASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ppImgVeterinarioVenda.Picture.LoadFromStream(MS);
     except
      ppImgVeterinarioVenda.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ppImgVeterinarioVenda.Picture.Bitmap := nil;
end;

procedure TServiceNew.ppHeaderBand6BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
 if serviceDB.qryConfigPadraoLOGO.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(serviceDB.qryConfigPadraoLOGO.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppImgLogoTamplate.Picture.LoadFromStream(MS);
   except
    ppImgLogoTamplate.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;
 if LAUDOCHECK_ASS_VETERINARIO.AsInteger =1 then
 begin
   if ServiceNew.LAUDO_REPORTVETARINARIOASS.AsString.Length>100 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(LAUDO_REPORTVETARINARIOASS.AsString);
      vImgItemCheck.Bitmap.SaveToStream(MS);
      MS.Position := 0;
      ImgAssVeterinario1.Picture.LoadFromStream(MS);
     except
      ImgAssVeterinario1.Picture.Bitmap := nil;
     end;
     vImgItemCheck.Free;
     MS.Free;
   end;
 end
 else
  ImgAssVeterinario1.Picture.Bitmap := nil;
end;

procedure TServiceNew.ppHeaderBand8BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
 if serviceDB.qryConfigPadraoLOGO.AsString.Length>100 then
 begin
   vImgItemCheck := TImage.Create(nil);
   MS := TMemoryStream.Create;
   try
    vImgItemCheck.Bitmap := frmPrincipal.BitmapFromBase64(serviceDB.qryConfigPadraoLOGO.AsString);
    vImgItemCheck.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppImgHistSaniLogo.Picture.LoadFromStream(MS);
   except
    ppImgHistSaniLogo.Picture.Bitmap := nil;
   end;
   vImgItemCheck.Free;
   MS.Free;
 end;
end;

function TServiceNew.VerificaExisteImagemLaudo(vId: string): Boolean;
begin
  imgLaudo.Connection := FConImg;
  imgLaudo.Close;
  imgLaudo.ParamByName('id').AsInteger := vid.ToInteger;
  imgLaudo.Open;
  Result := imgLaudo.IsEmpty;
end;

function TServiceNew.VerificaExisteImagemLaudoSaida(vId: string): Boolean;
begin
  imgLaudoVenda.Connection := FConImg;
  imgLaudoVenda.Close;
  imgLaudoVenda.ParamByName('id').AsInteger := vid.ToInteger;
  imgLaudoVenda.Open;
  Result := imgLaudoVenda.IsEmpty;
end;

end.
