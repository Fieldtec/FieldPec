unit USaidaGrupo;

interface

uses
    System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.DateTimeCtrls, FMX.EditBox, FMX.NumberBox, FMX.ListBox,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.TabControl,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,FireDAC.Comp.Client,
  FMX.Effects, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.TreeView, FMX.Menus,
  Fmx.Bind.Grid, Data.Bind.Grid, ppParameter, ppDesignLayer, ppCtrls, ppVar,
  ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, FMX.Memo, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, ppBarCod, ppStrtch, ppMemo, FMX.Memo.Types,FMX.Surfaces,UMsgDlg,
  System.Win.ComObj;

type
  TfrmSaidaGrupo = class(TForm)
    laybase: TLayout;
    laySuperior: TLayout;
    Rectangle1: TRectangle;
    lblStatusTela: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    Rectangle5: TRectangle;
    Layout8: TLayout;
    ToolBar1: TToolBar;
    Layout3D1: TLayout3D;
    Image3: TImage;
    layBtnControls: TLayout;
    btnConfirmaSaida: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    btnCancelar: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    TbPrincipal: TTabControl;
    tbiLista: TTabItem;
    tbiCad: TTabItem;
    MenuBar1: TMenuBar;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    layMnuPrincipal: TLayout;
    layMnu: TLayout;
    recMnu: TRectangle;
    Treemnu: TTreeView;
    TreeItemNovo: TTreeViewItem;
    Image2: TImage;
    TreeItemExcluir: TTreeViewItem;
    Image1: TImage;
    Layout1: TLayout;
    RecLista: TRectangle;
    GroupBox1: TGroupBox;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Label3: TLabel;
    dataInicioF: TDateEdit;
    dataFimF: TDateEdit;
    btnFiltar: TSpeedButton;
    gridListasSaida: TStringGrid;
    layResumoGrafico: TLayout;
    Rectangle3: TRectangle;
    lblTotalAnimais: TLabel;
    lblMediaPeso: TLabel;
    layAlteracao: TLayout;
    RecStatusAcao: TRectangle;
    Layout3: TLayout;
    Layout12: TLayout;
    Image7: TImage;
    Layout4: TLayout;
    Layout14: TLayout;
    Layout5: TLayout;
    ShadowEffect4: TShadowEffect;
    Layout6: TLayout;
    ShadowEffect2: TShadowEffect;
    btnConfirmar: TRectangle;
    Layout7: TLayout;
    Image8: TImage;
    Label6: TLabel;
    ShadowEffect3: TShadowEffect;
    btnCancel: TRectangle;
    Layout19: TLayout;
    Image9: TImage;
    Label7: TLabel;
    ShadowEffect5: TShadowEffect;
    msg: TLabel;
    layAlteraPeso: TLayout;
    Rectangle4: TRectangle;
    Layout23: TLayout;
    Label15: TLabel;
    Label21: TLabel;
    edtPesoAtual: TEdit;
    edtNovoPesoEnt: TEdit;
    layAlteraValorEntrada: TLayout;
    Rectangle10: TRectangle;
    Layout27: TLayout;
    Label22: TLabel;
    Label26: TLabel;
    edtValorAtual: TEdit;
    edtNovoValor: TEdit;
    layAlteraData: TLayout;
    Rectangle11: TRectangle;
    Layout29: TLayout;
    Label27: TLabel;
    Label28: TLabel;
    edtDataAtual: TEdit;
    edtNovaData: TDateEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Label29: TLabel;
    cbxDestino: TComboBox;
    ppDBSaidaAnimais: TppDBPipeline;
    ppReportSaidaAnimais: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape5: TppShape;
    ppLabel21: TppLabel;
    ppImage3: TppImage;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine5: TppLine;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppShape6: TppShape;
    ppDBCalc5: TppDBCalc;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLabel34: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel35: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel36: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    tbiListaAnimal: TTabItem;
    Layout15: TLayout;
    Layout17: TLayout;
    layAni: TLayout;
    Layout35: TLayout;
    laysup: TLayout;
    Layout38: TLayout;
    gridAnimais: TStringGrid;
    Layout39: TLayout;
    Label37: TLabel;
    lblTotalAnimaisGrid: TLabel;
    Label39: TLabel;
    lblMediaPesoGrid: TLabel;
    qryGridAnimal: TFDQuery;
    qryGridAnimalANIMAL_ID: TIntegerField;
    qryGridAnimalCURRAL: TStringField;
    qryGridAnimalIDENT_1: TStringField;
    qryGridAnimalIDENT_2: TStringField;
    qryGridAnimalRACA: TStringField;
    qryGridAnimalCATEGORIA: TStringField;
    qryGridAnimalDATA_ENT: TSQLTimeStampField;
    qryGridAnimalPESO_ENT: TFMTBCDField;
    qryGridAnimalDT_ULTIMO_PESO: TDateField;
    qryGridAnimalULTIMO_PESO: TFMTBCDField;
    qryGridAnimalGTA: TStringField;
    qryGridAnimalPESO_PROJ: TFMTBCDField;
    qryGridAnimalIDADE_ATUAL: TLargeintField;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layAniSelect: TLayout;
    Layout43: TLayout;
    Layout44: TLayout;
    gridAnimaisSelecionados: TStringGrid;
    StringAnimalID: TStringColumn;
    StringChip: TStringColumn;
    SISBOV: TStringColumn;
    Layout45: TLayout;
    Rectangle7: TRectangle;
    Label23: TLabel;
    Layout46: TLayout;
    Rectangle13: TRectangle;
    Label24: TLabel;
    Layout47: TLayout;
    Image5: TImage;
    Label36: TLabel;
    lblTotalSelecionado: TLabel;
    Layout37: TLayout;
    Layout40: TLayout;
    Layout41: TLayout;
    Layout34: TLayout;
    btnConfirmaAnimais: TRectangle;
    Layout42: TLayout;
    Image6: TImage;
    Label38: TLabel;
    layTipoSaida: TLayout;
    Rectangle14: TRectangle;
    Layout50: TLayout;
    V: TLayout;
    Layout52: TLayout;
    Label41: TLabel;
    cbxTipoSaida: TComboBox;
    layDadosOrigemDestino: TLayout;
    Rectangle12: TRectangle;
    Layout31: TLayout;
    Layout33: TLayout;
    NumberBox1: TNumberBox;
    layGTA: TLayout;
    LAB: TLabel;
    edtGTA: TEdit;
    btnBuscaGTA: TEditButton;
    layProdutorOrigem: TLayout;
    Label2: TLabel;
    edtProdutorOrigem: TEdit;
    edtBuscaProdutorOrigem: TEditButton;
    layProdutorDestino: TLayout;
    edtDestinoVenda: TEdit;
    edtBuscaProdutorDestino: TEditButton;
    Label30: TLabel;
    layQtdeCabecaData: TLayout;
    Rectangle9: TRectangle;
    Layout25: TLayout;
    Layout28: TLayout;
    edtDataSaida: TDateEdit;
    edtQtdAnimaisSaida: TEdit;
    edtBuscaAnimal: TEditButton;
    Layout26: TLayout;
    Label19: TLabel;
    Label25: TLabel;
    laySaidaMorte: TLayout;
    Rectangle8: TRectangle;
    Layout20: TLayout;
    Layout22: TLayout;
    edtTable: TNumberBox;
    layVenda: TLayout;
    Layout18: TLayout;
    Label34: TLabel;
    Layout21: TLayout;
    edtValorSaida: TEdit;
    layMorte: TLayout;
    Layout16: TLayout;
    Label16: TLabel;
    Label33: TLabel;
    edtPesoMorte: TEdit;
    edtCausaMorte: TEdit;
    btnBuscaCausaMorte: TEditButton;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    qryGridAnimalFAIXA: TStringField;
    TreeViewRel: TTreeViewItem;
    Layout2: TLayout;
    Image4: TImage;
    cbxTipoSaidaF: TComboBox;
    Label5: TLabel;
    BindSourceDB5: TBindSourceDB;
    layTipoSaidas: TLayout;
    Rectangle50: TRectangle;
    Image24: TImage;
    ShadowEffect48: TShadowEffect;
    GridLayout2: TGridLayout;
    btnEntGrupo: TRectangle;
    Label32: TLabel;
    Image45: TImage;
    btnEntInd: TRectangle;
    Label55: TLabel;
    Image46: TImage;
    StringIDPasto: TStringColumn;
    qryGridAnimalID_PASTO: TIntegerField;
    BindSourceDB6: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB6: TLinkGridToDataSource;
    Label8: TLabel;
    cbxProdutorOrigem: TComboBox;
    tbiListaAnimaisLs: TTabItem;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Rectangle6: TRectangle;
    Label9: TLabel;
    Layout13: TLayout;
    Image11: TImage;
    Layout24: TLayout;
    Layout30: TLayout;
    Layout32: TLayout;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    edtIdent1Lista: TEdit;
    Label11: TLabel;
    edtIdent2Lista: TEdit;
    Label12: TLabel;
    cbxRacaLista: TComboBox;
    Label13: TLabel;
    cbxCatLista: TComboBox;
    Memo1: TMemo;
    Label42: TLabel;
    cbxLocalOrigem: TComboBox;
    Layout49: TLayout;
    GruidListaAnimaisLS: TStringGrid;
    Label47: TLabel;
    cbxVeiculos: TComboBox;
    qryListaAnimaisSaida: TFDQuery;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    Layout54: TLayout;
    Layout55: TLayout;
    Rectangle15: TRectangle;
    Label31: TLabel;
    Layout56: TLayout;
    Image13: TImage;
    layInfGrid: TLayout;
    recInfGrif: TRectangle;
    layEstatisticaGrid: TLayout;
    Rectangle28: TRectangle;
    Label43: TLabel;
    lblGMDMedio: TLabel;
    Rectangle29: TRectangle;
    Label500000: TLabel;
    lblGridInfQtdCab: TLabel;
    Rectangle30: TRectangle;
    Label44: TLabel;
    lblGTPMedio: TLabel;
    Rectangle31: TRectangle;
    Label45: TLabel;
    lblGridInfoMediaPeso: TLabel;
    Layout57: TLayout;
    btnLocalizarAnimais: TRectangle;
    Layout53: TLayout;
    Image14: TImage;
    Label46: TLabel;
    btnExportaGrid: TRectangle;
    Layout81: TLayout;
    Image43: TImage;
    Label48: TLabel;
    btnReportAnimaisLs: TRectangle;
    Layout58: TLayout;
    Image12: TImage;
    Label49: TLabel;
    ppDBPListaAnimaisLS: TppDBPipeline;
    ppReportListaAnimaisLS: TppReport;
    dsListaAnimais: TDataSource;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLine7: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText29: TppDBText;
    ppLabel45: TppLabel;
    ppLabel62: TppLabel;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine1: TppLine;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel16: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppShape11: TppShape;
    ppLabel17: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLabel19: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppLabel20: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppLabel37: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel38: TppLabel;
    TreeFinalizarLote: TTreeViewItem;
    Image15: TImage;
    tbiGeraDocs: TTabItem;
    Layout61: TLayout;
    Layout62: TLayout;
    Layout63: TLayout;
    Rectangle16: TRectangle;
    Label52: TLabel;
    recDadosAnexo: TRectangle;
    btnVincularGTA: TSpeedButton;
    btnAnexoVIVeiculo: TSpeedButton;
    Image21: TImage;
    btnAnexoVIIVeiculo: TSpeedButton;
    Image20: TImage;
    btnAnexoVIIGeral: TSpeedButton;
    Image22: TImage;
    btnAnexoVIGeral: TSpeedButton;
    Image40: TImage;
    lblVeiculoSelecionado: TLabel;
    edtDesvinculaGA: TSpeedButton;
    BindSourceDB16: TBindSourceDB;
    TreeAnexos: TTreeViewItem;
    Image16: TImage;
    dsGtaAnexoVIeVII: TDataSource;
    dsAnexoVIEVII: TDataSource;
    ppReportAnexoVIl: TppReport;
    ppParameterList2: TppParameterList;
    ppReportAnexoVI: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppShape27: TppShape;
    ppDBText66: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand4: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLabel94: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    ppDBRepAnexoVI: TppDBPipeline;
    LayoutLista: TLayout;
    Layout64: TLayout;
    laybtns: TLayout;
    SpeedButton1: TSpeedButton;
    Image17: TImage;
    btnRemoveTudo: TSpeedButton;
    Image18: TImage;
    ClearEditButton1: TClearEditButton;
    ClearEditButton2: TClearEditButton;
    ClearEditButton3: TClearEditButton;
    ClearEditButton4: TClearEditButton;
    Layout65: TLayout;
    bntRelEra: TRectangle;
    Layout68: TLayout;
    Image26: TImage;
    Label54: TLabel;
    BindSourceDB8: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    qryGridAnimalREBANHO: TStringField;
    SaveDialog1: TSaveDialog;
    LayApartacao: TLayout;
    Layout66: TLayout;
    Rectangle17: TRectangle;
    Image25: TImage;
    ShadowEffect9: TShadowEffect;
    Rectangle18: TRectangle;
    Layout67: TLayout;
    Layout69: TLayout;
    ComboBox3: TComboBox;
    gridVeiculos: TStringGrid;
    Rectangle20: TRectangle;
    Label60: TLabel;
    lblQtdeVeiculos: TLabel;
    Label61: TLabel;
    lblCapacidadeTotal: TLabel;
    Label62: TLabel;
    lblLotacaoTotal: TLabel;
    Layout74: TLayout;
    Rectangle21: TRectangle;
    Label63: TLabel;
    Ü: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB9: TLinkGridToDataSource;
    TreeViewVeiculos: TTreeViewItem;
    Image27: TImage;
    btnRemove1: TSpeedButton;
    Image30: TImage;
    btnTranfPropriedade: TRectangle;
    Label40: TLabel;
    Image10: TImage;
    layImportacao: TLayout;
    Layout48: TLayout;
    Rectangle22: TRectangle;
    Layout71: TLayout;
    Layout72: TLayout;
    Label56: TLabel;
    Layout73: TLayout;
    edtArquivo: TEdit;
    EditButton3: TEditButton;
    SaveDialog2: TSaveDialog;
    Layout76: TLayout;
    Rectangle23: TRectangle;
    Layout78: TLayout;
    Image32: TImage;
    Label57: TLabel;
    Layout80: TLayout;
    StringUltimoPeso: TColumn;
    StringIdadeAtual: TStringColumn;
    idraca: TStringColumn;
    Stringidcategoria: TStringColumn;
    qryGridAnimalIDRACA: TIntegerField;
    qryGridAnimalIDCATEGORIA: TIntegerField;
    qryGridAnimalID_CONTRATO: TIntegerField;
    qryGridAnimalIDADE_MESES: TIntegerField;
    qryGridAnimalVALOR_COMPRA: TFMTBCDField;
    qryGridAnimalID_LOCAL: TIntegerField;
    qryGridAnimalID_LOTE: TIntegerField;
    StringIdContrato: TStringColumn;
    lblCurralDestino: TLabel;
    edtLocalDestino: TEdit;
    EditButton1: TEditButton;
    ClearEditButton5: TClearEditButton;
    StringIdLote: TStringColumn;
    StringValorCompra: TStringColumn;
    lblRebanhoDestino: TLabel;
    edtRebanhoDestino: TEdit;
    EditButton2: TEditButton;
    ClearEditButton6: TClearEditButton;
    SpeedButton3: TSpeedButton;
    Image29: TImage;
    gbFiltrosAnimais: TGroupBox;
    Label17: TLabel;
    edtIdent1: TEdit;
    Label18: TLabel;
    edtIdent2: TEdit;
    lblRaca: TLabel;
    cbxFRaca: TComboBox;
    Label20: TLabel;
    cbxFCategoria: TComboBox;
    btnFiltraAnimal: TSpeedButton;
    Image23: TImage;
    memoExcel: TMemo;
    Label14: TLabel;
    cbxFaixaIdade: TComboBox;
    Label4: TLabel;
    cbxLocalAtual: TComboBox;
    GroupBox4: TGroupBox;
    Layout59: TLayout;
    Layout60: TLayout;
    Label50: TLabel;
    edtArquivoAnimais: TEdit;
    btnBuscaArquivo: TEditButton;
    Label51: TLabel;
    cbxRebanhoLista: TComboBox;
    ListBoxItem2: TListBoxItem;
    btnLimpaFiltros: TSpeedButton;
    Image19: TImage;
    btnImportaPlanilha: TSpeedButton;
    Image31: TImage;
    tbListaTipoSaida: TTabControl;
    tbiTipoSaida: TTabItem;
    tbiTipoAnimalTransf: TTabItem;
    GroupBox5: TGroupBox;
    Layout36: TLayout;
    rdAnimaisAtivos: TRadioButton;
    rdAnimaisEmbarcadosOrigem: TRadioButton;
    cbxTipoArquivo: TComboBox;
    ClearEditButton8: TClearEditButton;
    TabControl1: TTabControl;
    tbi1: TTabItem;
    TabItem2: TTabItem;
    StringGrid1: TStringGrid;
    TRefugo: TFDQuery;
    TRefugoCODIGO: TStringField;
    TRefugoIDDENTIFICACAO_1: TStringField;
    TRefugoIDDENTIFICACAO_2: TStringField;
    TRefugoPESO: TFMTBCDField;
    TRefugoDATAREG: TSQLTimeStampField;
    BindSourceDB9: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB92: TLinkGridToDataSource;
    qryListaAnimaisSaidaVEICULO_EMBARQUE: TStringField;
    qryListaAnimaisSaidaIDENTIFICACAO_2: TStringField;
    qryListaAnimaisSaidaDATA_ENTRADA: TSQLTimeStampField;
    qryListaAnimaisSaidaENTRADA_CONF: TDateField;
    qryListaAnimaisSaidaDATA_SAIDA: TDateField;
    qryListaAnimaisSaidaDIAS: TLargeintField;
    qryListaAnimaisSaidaERAATUAL: TLargeintField;
    qryListaAnimaisSaidaGTP_GERAL: TFMTBCDField;
    qryListaAnimaisSaidaGMD_GERAL: TFMTBCDField;
    qryListaAnimaisSaidaDIAS_GERAL: TLargeintField;
    qryListaAnimaisSaidaGTP_PASTO: TFMTBCDField;
    qryListaAnimaisSaidaGMD_PASTO: TFMTBCDField;
    qryListaAnimaisSaidaDIAS_PASTO: TLargeintField;
    qryListaAnimaisSaidaGTP_CONF: TFMTBCDField;
    qryListaAnimaisSaidaGMD_CONF: TFMTBCDField;
    qryListaAnimaisSaidaDIAS_CONF: TLargeintField;
    qryListaAnimaisSaidaLOCAL_ORIGEM: TStringField;
    qryListaAnimaisSaidaCATEGORIA: TStringField;
    qryListaAnimaisSaidaRACA: TStringField;
    qryListaAnimaisSaidaIDENTIFICACAO_1: TStringField;
    qryListaAnimaisSaidaPESO_ENTRADA: TFMTBCDField;
    qryListaAnimaisSaidaPESO_SAIDA: TFMTBCDField;
    Label64: TLabel;
    lblPesoTotal: TLabel;
    Layout83: TLayout;
    Rectangle24: TRectangle;
    Label69: TLabel;
    Layout84: TLayout;
    Rectangle25: TRectangle;
    TreeView1: TTreeView;
    TreeNovaGTA: TTreeViewItem;
    Image33: TImage;
    TreeItemEditar: TTreeViewItem;
    Image34: TImage;
    btnExcluiGTA: TTreeViewItem;
    Image35: TImage;
    gridGtasVeiculo: TStringGrid;
    BindSourceDB10: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB10: TLinkGridToDataSource;
    edtLoteSaida: TEdit;
    ClearEditButton7: TClearEditButton;
    lblLoteSaida: TLabel;
    qryGridAnimalPESO_SAIDA: TFMTBCDField;
    StringColumn1: TStringColumn;
    layMantemPeso: TLayout;
    lblManterPeso: TLabel;
    rdPesoSaida: TSwitch;
    Layout70: TLayout;
    edtPesoMedSaida: TEdit;
    LinkFillControlToFieldID2: TLinkFillControlToField;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    LinkFillControlToFieldID3: TLinkFillControlToField;
    rdValorCab: TCheckBox;
    rdValorArroba: TCheckBox;
    Layout75: TLayout;
    chkPasto: TCheckBox;
    chkConf: TCheckBox;
    TreeImportaCarcaca: TTreeViewItem;
    Image28: TImage;
    tbiImporcaCarcaca: TTabItem;
    layCad: TLayout;
    ToolBar3: TToolBar;
    Label35: TLabel;
    ToolBar4: TToolBar;
    Layout77: TLayout;
    btnConfirma: TRectangle;
    Layout79: TLayout;
    Image36: TImage;
    Label53: TLabel;
    Rectangle19: TRectangle;
    Layout82: TLayout;
    Image37: TImage;
    Label58: TLabel;
    RecWhitPadrao: TRectangle;
    Layout85: TLayout;
    EditTab: TEdit;
    Layout86: TLayout;
    Layout87: TLayout;
    Label59: TLabel;
    Layout88: TLayout;
    edtArqCarcaca: TEdit;
    btnImportaCarcaca: TEditButton;
    StringGrid2: TStringGrid;
    layTipoIdentificacaoCarcaca: TLayout;
    Layout90: TLayout;
    Rectangle26: TRectangle;
    Layout91: TLayout;
    Layout92: TLayout;
    Label65: TLabel;
    cbxTipoIdentificacaoCarcaca: TComboBox;
    Layout93: TLayout;
    edtArquivoCarcaca: TEdit;
    btnBuscaArquivoCarcaca: TEditButton;
    SaveDialog3: TSaveDialog;
    Layout94: TLayout;
    Layout95: TLayout;
    Rectangle27: TRectangle;
    Layout96: TLayout;
    Image38: TImage;
    Label66: TLabel;
    BindSourceDB11: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB11: TLinkGridToDataSource;
    lblCountCarcaca: TLabel;
    lblTotalCarcacaImportado: TLabel;
    Label67: TLabel;
    cbxFiltraLog: TComboBox;
    Rectangle32: TRectangle;
    Layout89: TLayout;
    Image39: TImage;
    Label68: TLabel;
    lblNaoEncontrados: TLabel;
    layAguarde: TLayout;
    Rectangle33: TRectangle;
    Layout97: TLayout;
    Rectangle34: TRectangle;
    Label70: TLabel;
    btnIncluiPesoCarcaca: TRectangle;
    Layout98: TLayout;
    Label71: TLabel;
    layIncluiCarcaca: TLayout;
    Layout100: TLayout;
    Rectangle36: TRectangle;
    Layout101: TLayout;
    Layout103: TLayout;
    edtPesoTotalCarcaca: TEdit;
    SaveDialog4: TSaveDialog;
    Layout105: TLayout;
    Rectangle37: TRectangle;
    Layout106: TLayout;
    Image42: TImage;
    lblAtualizaLote: TLabel;
    Layout99: TLayout;
    Rectangle35: TRectangle;
    Layout102: TLayout;
    Image44: TImage;
    Label72: TLabel;
    Rectangle38: TRectangle;
    Layout104: TLayout;
    Image47: TImage;
    Label74: TLabel;
    btnIncluirValor: TRectangle;
    Layout107: TLayout;
    Label75: TLabel;
    qryListaAnimaisSaidaCONTRATO: TStringField;
    TreeViewItem1: TTreeViewItem;
    Image41: TImage;
    ppMemoGTAS: TppMemo;
    ppLBLNumAnexoVI: TppLabel;
    ppLabel84: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel39: TppLabel;
    ppShape17: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText24: TppDBText;
    ppLabel42: TppLabel;
    ppDBText25: TppDBText;
    ppLabel43: TppLabel;
    ppDBText26: TppDBText;
    ppLabel44: TppLabel;
    ppDBText27: TppDBText;
    ppLabel46: TppLabel;
    ppDBText28: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText30: TppDBText;
    ppLabel49: TppLabel;
    ppDBText31: TppDBText;
    ppLabel50: TppLabel;
    ppDBText32: TppDBText;
    ppLabel51: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel53: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLabel54: TppLabel;
    ppShape18: TppShape;
    ppMemoGTAS1: TppMemo;
    ppLabel55: TppLabel;
    ppDBText37: TppDBText;
    ppLabelTotalAnimais1: TppLabel;
    ppLabel56: TppLabel;
    ppDBText38: TppDBText;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLblNumeroAnexoVII: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppShape19: TppShape;
    ppDBText45: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppLine6: TppLine;
    ppLabel66: TppLabel;
    ppLine2: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppLabel78: TppLabel;
    ppShape33: TppShape;
    ppLabel83: TppLabel;
    ppLabel86: TppLabel;
    ppDBText54: TppDBText;
    ppLabel87: TppLabel;
    ppDBText55: TppDBText;
    ppLabel88: TppLabel;
    ppDBText56: TppDBText;
    ppLabel89: TppLabel;
    ppDBText57: TppDBText;
    ppLabel90: TppLabel;
    ppDBText58: TppDBText;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDBText59: TppDBText;
    ppLabel93: TppLabel;
    ppDBText60: TppDBText;
    ppLabel97: TppLabel;
    ppDBText61: TppDBText;
    ppLabel98: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel99: TppLabel;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppLabel100: TppLabel;
    ppShape34: TppShape;
    ppLabel103: TppLabel;
    ppDBText67: TppDBText;
    ppLabel105: TppLabel;
    ppDBText68: TppDBText;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabelTotalAnimais: TppLabel;
    chkNovoAnimal: TCheckBox;
    Layout108: TLayout;
    tbiLaudo: TTabItem;
    Layout109: TLayout;
    Rectangle39: TRectangle;
    TreeView2: TTreeView;
    TreeNovoLaudo: TTreeViewItem;
    Image49: TImage;
    TreeEditarLaudo: TTreeViewItem;
    Image50: TImage;
    TreeExcluirLaudo: TTreeViewItem;
    Image51: TImage;
    TreeViewItem7: TTreeViewItem;
    TreeViewItem8: TTreeViewItem;
    Image52: TImage;
    Image53: TImage;
    Layout110: TLayout;
    Rectangle40: TRectangle;
    GroupBox2: TGroupBox;
    edtNCFLaudoF: TEdit;
    Label73: TLabel;
    SpeedButton2: TSpeedButton;
    GroupBox6: TGroupBox;
    edtPerLaudoATE: TDateEdit;
    Label76: TLabel;
    edtPerLaudoDE: TDateEdit;
    Label77: TLabel;
    edtChipLaudoF: TEdit;
    Label78: TLabel;
    StringGrid3: TStringGrid;
    Layout111: TLayout;
    StringGrid4: TStringGrid;
    Layout112: TLayout;
    Label79: TLabel;
    layPopUpCadLaudo: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout114: TLayout;
    Layout115: TLayout;
    Layout116: TLayout;
    Label81: TLabel;
    Layout117: TLayout;
    Rectangle42: TRectangle;
    Label82: TLabel;
    btnVoltar: TLabel;
    Layout118: TLayout;
    Layout119: TLayout;
    Label83: TLabel;
    Label84: TLabel;
    edtAnimal: TEdit;
    ClearEditButton9: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    lblDataMorte: TLabel;
    Layout120: TLayout;
    Layout121: TLayout;
    Label86: TLabel;
    edtVeterinario: TEdit;
    ClearEditButton10: TClearEditButton;
    SearchEditButton2: TSearchEditButton;
    Layout122: TLayout;
    Layout123: TLayout;
    Label87: TLabel;
    edtOperacaoAtual: TEdit;
    ClearEditButton11: TClearEditButton;
    SearchEditButton3: TSearchEditButton;
    Layout124: TLayout;
    Layout125: TLayout;
    Layout126: TLayout;
    Layout127: TLayout;
    Label89: TLabel;
    edtHistAnteMortem: TMemo;
    Layout128: TLayout;
    ShadowEffect1: TShadowEffect;
    HorzScrollBox1: THorzScrollBox;
    btnAbreImgInicial: TRectangle;
    Layout129: TLayout;
    Rectangle43: TRectangle;
    ImgFoto1: TImage;
    Layout130: TLayout;
    Label90: TLabel;
    btnEditarFotoBomba: TButton;
    btnDeletaFotoBomba: TButton;
    OpenImg: TOpenDialog;
    btnImgStop: TRectangle;
    Layout131: TLayout;
    Layout132: TLayout;
    Label91: TLabel;
    btnEditarFotoHorimetro: TButton;
    Button2: TButton;
    Rectangle44: TRectangle;
    ImgFoto2: TImage;
    Rectangle45: TRectangle;
    Layout133: TLayout;
    Layout134: TLayout;
    Label92: TLabel;
    btnEditarFotoHodometro: TButton;
    Button3: TButton;
    Rectangle46: TRectangle;
    ImgFoto3: TImage;
    Rectangle47: TRectangle;
    Layout135: TLayout;
    Layout136: TLayout;
    Label93: TLabel;
    Button1: TButton;
    Button4: TButton;
    RecImgFoto4: TRectangle;
    ImgFoto4: TImage;
    Rectangle48: TRectangle;
    Layout137: TLayout;
    Layout138: TLayout;
    Label94: TLabel;
    Button5: TButton;
    Button6: TButton;
    RecImgFoto5: TRectangle;
    ImgFoto5: TImage;
    Rectangle49: TRectangle;
    Layout139: TLayout;
    Layout140: TLayout;
    Label95: TLabel;
    Button7: TButton;
    Button8: TButton;
    RecImgFoto6: TRectangle;
    ImgFoto6: TImage;
    qryListaAnimaisSaidaID: TIntegerField;
    SaveLaudo: TOpenDialog;
    TreeLaudo: TTreeViewItem;
    TreeViewItem4: TTreeViewItem;
    Image56: TImage;
    Image57: TImage;
    SaveDialog5: TSaveDialog;
    tbiNovoLaudo: TTabItem;
    BindSourceDB12: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    Label80: TLabel;
    Label85: TLabel;
    edtGerenteOP: TEdit;
    ClearEditButton13: TClearEditButton;
    SearchEditButton5: TSearchEditButton;
    edtResponsavelRastreabilidaed: TEdit;
    ClearEditButton14: TClearEditButton;
    SearchEditButton6: TSearchEditButton;
    Label96: TLabel;
    edtCapatazEPP: TEdit;
    ClearEditButton15: TClearEditButton;
    SearchEditButton7: TSearchEditButton;
    cbxAssVeterinario: TComboBox;
    Label97: TLabel;
    Label98: TLabel;
    cbxAssCapataz: TComboBox;
    Label88: TLabel;
    edtCapataz: TEdit;
    ClearEditButton12: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
    cbxASSCapatazGerel: TComboBox;
    Label99: TLabel;
    cbxAssGerenteOP: TComboBox;
    Label100: TLabel;
    Label101: TLabel;
    cbxAssResponsavelRast: TComboBox;
    layValidaSenha: TLayout;
    Rectangle41: TRectangle;
    Rectangle51: TRectangle;
    Layout234: TLayout;
    Layout235: TLayout;
    Layout236: TLayout;
    Label103: TLabel;
    Image161: TImage;
    Layout237: TLayout;
    Rectangle52: TRectangle;
    Label104: TLabel;
    Label102: TLabel;
    Layout238: TLayout;
    Layout240: TLayout;
    Rectangle53: TRectangle;
    edtSenha: TEdit;
    btnAssinarVeterinario: TButton;
    btnAssinarCapataz: TButton;
    btnAssinarCapatazGeral: TButton;
    btnAssinarGerente: TButton;
    btnAssinarResponsavel: TButton;
    Label105: TLabel;
    cbxLoteSaida: TComboBox;
    TreeRel: TTreeViewItem;
    Image54: TImage;
    SaveDialog6: TSaveDialog;
    procedure btnBuscaCausaMorteClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmaSaidaClick(Sender: TObject);
    procedure cbxTipoSaidaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure edtQtdAnimaisSaidaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtPesoMedSaidaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnFiltarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure edtBuscaProdutorOrigemClick(Sender: TObject);
    procedure edtBuscaProdutorDestinoClick(Sender: TObject);
    procedure btnBuscaGTAClick(Sender: TObject);
    procedure edtBuscaAnimalClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure bntCancelarAniClick(Sender: TObject);
    procedure btnConfirmaAnimaisClick(Sender: TObject);
    procedure cbxFRacaChange(Sender: TObject);
    procedure cbxFCategoriaChange(Sender: TObject);
    procedure btnFiltraAnimalClick(Sender: TObject);
    procedure TreeViewRelClick(Sender: TObject);
    procedure btnEntIndClick(Sender: TObject);
    procedure btnEntGrupoClick(Sender: TObject);
    procedure btnConfirmaLsClick(Sender: TObject);
    procedure cbxLocalAtualChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxDestinoChange(Sender: TObject);
    procedure cbxProdutorOrigemChange(Sender: TObject);
    procedure gridListasSaidaCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure Image11Click(Sender: TObject);
    procedure cbxLocalOrigemChange(Sender: TObject);
    procedure cbxRacaListaChange(Sender: TObject);
    procedure cbxCatListaChange(Sender: TObject);
    procedure cbxVeiculosChange(Sender: TObject);
    procedure GroupBox3Click(Sender: TObject);
    procedure GruidListaAnimaisLSCellClick(const Column: TColumn; const Row: Integer);
    procedure gridListasSaidaCellClick(const Column: TColumn;
      const Row: Integer);
    procedure Image13Click(Sender: TObject);
    procedure btnLocalizarAnimaisClick(Sender: TObject);
    procedure btnExportaGridClick(Sender: TObject);
    procedure btnReportAnimaisLsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeFinalizarLoteClick(Sender: TObject);
    procedure TreeAnexosClick(Sender: TObject);
    procedure GridVeiculosAnexosCellClick(const Column: TColumn;
      const Row: Integer);
    procedure btnAnexoVIVeiculoClick(Sender: TObject);
    procedure btnAnexoVIIVeiculoClick(Sender: TObject);
    procedure btnAnexoVIGeralClick(Sender: TObject);
    procedure btnAnexoVIIGeralClick(Sender: TObject);
    procedure edtDesvinculaGAClick(Sender: TObject);
    procedure ppHeaderBand2AfterPrint(Sender: TObject);
    procedure ppHeaderBand4AfterPrint(Sender: TObject);
    procedure bntRelEraClick(Sender: TObject);
    procedure btnLimpaFiltrosClick(Sender: TObject);
    procedure cbxRebanhoListaChange(Sender: TObject);
    procedure TreeViewVeiculosClick(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure btnEraPorVeiculoClick(Sender: TObject);
    procedure gridVeiculosCellClick(const Column: TColumn; const Row: Integer);
    procedure ppReportAnexoVIBeforePrint(Sender: TObject);
    procedure ppReportAnexoVIlBeforePrint(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnRemove1Click(Sender: TObject);
    procedure btnRemoveTudoClick(Sender: TObject);
    procedure btnTranfPropriedadeClick(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure btnImportaPlanilhaClick(Sender: TObject);
    procedure Image32Click(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure rdAnimaisEmbarcadosOrigemChange(Sender: TObject);
    procedure rdAnimaisAtivosChange(Sender: TObject);
    procedure ClearEditButton8Click(Sender: TObject);
    procedure edtLocalDestinoClick(Sender: TObject);
    procedure edtRebanhoDestinoClick(Sender: TObject);
    procedure edtDestinoVendaClick(Sender: TObject);
    procedure edtProdutorOrigemClick(Sender: TObject);
    procedure edtGTAClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure btnAtualizaPesoBalancaoClick(Sender: TObject);
    procedure gridVeiculosEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure TreeNovaGTAClick(Sender: TObject);
    procedure btnExcluiGTAClick(Sender: TObject);
    procedure rdPesoSaidaSwitch(Sender: TObject);
    procedure rdValorCabChange(Sender: TObject);
    procedure rdValorArrobaChange(Sender: TObject);
    procedure btnBuscaArquivoCarcacaClick(Sender: TObject);
    procedure TreeImportaCarcacaClick(Sender: TObject);
    procedure btnImportaCarcacaClick(Sender: TObject);
    procedure edtArquivoCarcacaClick(Sender: TObject);
    procedure cbxFiltraLogChange(Sender: TObject);
    procedure Rectangle32Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure Image42Click(Sender: TObject);
    procedure btnIncluiPesoCarcacaClick(Sender: TObject);
    procedure Rectangle38Click(Sender: TObject);
    procedure Rectangle35Click(Sender: TObject);
    procedure btnIncluirValorClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure SearchEditButton4Click(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure btnEditarFotoBombaClick(Sender: TObject);
    procedure btnEditarFotoHorimetroClick(Sender: TObject);
    procedure btnEditarFotoHodometroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnDeletaFotoBombaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure Rectangle42Click(Sender: TObject);
    procedure TreeNovoLaudoClick(Sender: TObject);
    procedure TreeEditarLaudoClick(Sender: TObject);
    procedure TreeExcluirLaudoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TreeViewItem7Click(Sender: TObject);
    procedure TreeLaudoClick(Sender: TObject);
    procedure SearchEditButton5Click(Sender: TObject);
    procedure SearchEditButton6Click(Sender: TObject);
    procedure edtCapatazEPPClick(Sender: TObject);
    procedure SearchEditButton7Click(Sender: TObject);
    procedure Image161Click(Sender: TObject);
    procedure Label102Click(Sender: TObject);
    procedure Rectangle52Click(Sender: TObject);
    procedure btnAssinarVeterinarioClick(Sender: TObject);
    procedure btnAssinarCapatazClick(Sender: TObject);
    procedure btnAssinarCapatazGeralClick(Sender: TObject);
    procedure btnAssinarGerenteClick(Sender: TObject);
    procedure btnAssinarResponsavelClick(Sender: TObject);
    procedure TreeRelClick(Sender: TObject);
private
    var
     dlg :TFrmmsgDlg;
     vIdVeiculoEra,vIdCurral,vIdRebanhoDestino,vTipoCurral,vIdDestinoVenda,vIdMotivo,vProdutorOrigem,vPrpriedadeOrigem,vIdGTA,
     vIdRacaFiltro,vIdCatFiltro,vLoteSaida,vPrpriedadeDestino,vIdLocal,vPROPDestinoF,vPROPOrigemF,
     vIdVeiculoLista,vIdRebanhoOrigem,vIdLote:string;
     vIdRaca,vIdCategoria,vAltera,vTotalAnimaisGTA,vQtdAnimal,ICount,vTipoAnexo,
     vTransferencia,vImportacao,vTransSelect,vEmbarcadosOrigem,vAtualizaCarcaca,vSelecionaLaudo,vLiberaAss :integer;
     vImg1,vImg2,vImg3,vImg4,vImg5,vImg6 :string;
     procedure LimpaCamposSaida;

     procedure SomarColunasGridForn;
     procedure DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
     function PesquisaIDGrid(id:string):integer;
     procedure InfoGridVeiculos;
  public
    { Public declarations }
     vRelSaida : integer;
     procedure CarregaComboDestino;
     procedure CarregaComboLocalAtaulF;
     procedure MyMyShowMessage(msg: string;btnCancel:Boolean);
     procedure AbreListaAnimaisLS(IDLS:STRING);
     procedure AbreListaRefugadosLS(IDLS:STRING);
     procedure CarregaVeiculosLS(LS:STRING);
     function  CountPos(const subtext: string;Text: string): Integer;
     procedure BMPtoJPG(InputBitmap: TBitmap; outputjpgfilename: string);
     function Base64FromBitmap(vBitmap: TBitmap): string;
     function BitmapFromBase64(const base64: string): TBitmap;
     function PreencherDadosArquivo(const NomeArquivo,vPath: string): Boolean;
     procedure CarregaComboLoteSaida;
  end;

var
  frmSaidaGrupo : TfrmSaidaGrupo;

implementation

{$R *.fmx}

uses UPrincipal, UCurrais, UServiceDB, UPropriedadeParceira, UAuxMotivoMorte,
  UCadGTA, USaidaInd, ServiceDB2, ServiceRel, USeviceConfinamento,
  UAuxRebanho, UVeiculosEmbarque, UMedicoVeterinario, UServiceNew, UCapataz,
  UCadOperacao,Soap.EncdDecd, UResponsavelRastreabilidade, UGerenteOperacional;

procedure TfrmSaidaGrupo.Label102Click(Sender: TObject);
begin
  layValidaSenha.Visible := false;
end;

procedure TfrmSaidaGrupo.LimpaCamposSaida;
begin
   edtCausaMorte.Text            :='';
   edtPesoMorte.Text             :='';
   edtValorSaida.Text            :='';
   edtPesoMedSaida.Text          :='';
   edtDestinoVenda.Text          :='';
   edtQtdAnimaisSaida.Text       :='';
   cbxTipoSaida.ItemIndex        :=-1;
   laySaidaMorte.Visible         :=false;
   layQtdeCabecaData.Visible     :=false;
   edtProdutorOrigem.Text        :='';
   layDadosOrigemDestino.Visible :=false;
   cbxFRaca.ItemIndex            :=-1;
   cbxFCategoria.ItemIndex       :=-1;
   edtIdent1.Text                :='';
   edtIdent2.Text                :='';
   edtGTA.Text                   :='';
   cbxTipoSaida.ItemIndex        :=-1;
   edtProdutorOrigem.Enabled     :=true;
   edtDestinoVenda.Enabled       :=true;
   laySuperior.Visible           := true;

end;


procedure TfrmSaidaGrupo.MenuItem2Click(Sender: TObject);
begin
 vAltera                       :=1;
 layAlteraPeso.Visible         :=false;
 edtValorAtual.Text            :='R$'+serviceDB.qryGridSaidaAnimaisVALOR_VENDA.AsString;
 layAlteraValorEntrada.Visible :=true;
 layAlteracao.Visible          :=true;
 layAlteraData.Visible         :=false;
end;

procedure TfrmSaidaGrupo.MenuItem3Click(Sender: TObject);
begin
 vAltera                       :=2;
 layAlteraPeso.Visible         :=true;
 edtPesoAtual.Text             :=serviceDB.qryGridLoteSaidaMEDIAPESO.AsString;
 layAlteraValorEntrada.Visible :=false;
 layAlteraData.Visible         :=false;
 layAlteracao.Visible          :=true;
end;

procedure TfrmSaidaGrupo.MenuItem4Click(Sender: TObject);
begin
 vAltera                       :=3;
 layAlteraPeso.Visible         :=false;
 layAlteraValorEntrada.Visible :=false;

 edtDataAtual.Text             :=serviceDB.qryGridLoteSaidaDATA_EMBARQUE.AsString;
 layAlteraData.Visible         :=true;
 layAlteracao.Visible          :=true;
end;


procedure TfrmSaidaGrupo.MyMyShowMessage(msg: string; btnCancel: Boolean);
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

function TfrmSaidaGrupo.PesquisaIDGrid(id: string): integer;
var
 i,vResult:integer;
begin
  vResult :=0;
  for I := 0 to gridAnimaisSelecionados.RowCount-1 do
  begin
     if gridAnimaisSelecionados.Cells[0,I]=id then
     begin
        vResult:=1;
     end;
  end;
  Result := vResult;
end;

procedure TfrmSaidaGrupo.ppHeaderBand2AfterPrint(Sender: TObject);
var
 vGTA :String;
 i,x:integer;
begin
 i:=1;
 x:=1;
 vGTA:=' ';
 ppMemoGTAS1.Lines.Clear;
 serviceDB.GTAAnexoVI_VII.First;
 while not serviceDB.GTAAnexoVI_VII.Eof do
 begin
  vGTA := vGTA+serviceDB.GTAAnexoVI_VIINUM_GTA.AsString+'   ';
  if serviceDB.GTAAnexoVI_VII.RecordCount>8 then
  begin
    if (i=8) or (x=serviceDB.GTAAnexoVI_VII.RecordCount) then
    begin
     ppMemoGTAS1.Lines.Add(vGTA);
     vGTA :='';
     i:=1;
    end;
  end
  else
  begin
   if i=serviceDB.GTAAnexoVI_VII.RecordCount then
     ppMemoGTAS1.Lines.Add(vGTA);
  end;
  inc(i);
  inc(x);
  serviceDB.GTAAnexoVI_VII.Next;
 end;

end;

procedure TfrmSaidaGrupo.ppHeaderBand4AfterPrint(Sender: TObject);
var
 vGTA :String;
 i,x:integer;
begin
 i:=1;
 x:=1;
 vGTA:=' ';
 ppMemoGTAS.Lines.Clear;
 serviceDB.GTAAnexoVI_VII.First;
 while not serviceDB.GTAAnexoVI_VII.Eof do
 begin
  vGTA := vGTA+serviceDB.GTAAnexoVI_VIINUM_GTA.AsString+'   ';
  if serviceDB.GTAAnexoVI_VII.RecordCount>8 then
  begin
    if (i=8) or (x=serviceDB.GTAAnexoVI_VII.RecordCount) then
    begin
     ppMemoGTAS.Lines.Add(vGTA);
     vGTA :='';
     i:=1;
    end;
  end
  else
  begin
   if i=serviceDB.GTAAnexoVI_VII.RecordCount then
     ppMemoGTAS.Lines.Add(vGTA);
  end;
  inc(i);
  inc(x);
  serviceDB.GTAAnexoVI_VII.Next;
 end;
end;

procedure TfrmSaidaGrupo.ppReportAnexoVIBeforePrint(Sender: TObject);
begin
 ppLabelTotalAnimais1.Text :='Número de animais transitados:'+serviceDB.vTotalAnimais;
 ppLabelTotalAnimais.Text :='Número de animais transitados:'+serviceDB.vTotalAnimais;
end;

procedure TfrmSaidaGrupo.ppReportAnexoVIlBeforePrint(Sender: TObject);
begin
  ppLabelTotalAnimais1.Text :='Número de animais transitados:'+serviceDB.vTotalAnimais;
  ppLabelTotalAnimais.Text :='Número de animais transitados:'+serviceDB.vTotalAnimais;
end;

procedure TfrmSaidaGrupo.rdAnimaisAtivosChange(Sender: TObject);
begin
 layMantemPeso.Visible         := false;
 vEmbarcadosOrigem             := 0;
 edtLoteSaida.Visible          := false;
 lblLoteSaida.Visible          := false;
 edtLoteSaida.Text             := '';
 gbFiltrosAnimais.Visible      := true;
 vTransferencia                :=1;
 frmPrincipal.vMov             :=1;
 lblCurralDestino.Visible      := true;
 edtLocalDestino.Text          :='';
 edtLocalDestino.Visible       := true;
 lblRebanhoDestino.Visible     := true;
 edtRebanhoDestino.Text        := '';
 edtRebanhoDestino.Visible     := true;
 chkNovoAnimal.IsChecked       := false;
 chkNovoAnimal.Enabled         := true;

 laySuperior.Visible           := false;
 layDadosOrigemDestino.Visible := false;
 layQtdeCabecaData.Visible     := false;
 laySaidaMorte.Visible         := false;
 layMorte.Visible              := false;
 layVenda.Visible              := false;
 tbPrincipal.ActiveTab         := tbiCad;
 layTipoSaidas.Visible         := false;

 cbxTipoSaida.ItemIndex        := 0;
 layGTA.Visible                := false;
 cbxTipoSaida.Enabled          := false;
 edtPesoMedSaida.Enabled       := true;

 layDadosOrigemDestino.Visible   := false;
 layMorte.Visible                := cbxTipoSaida.ItemIndex=1;
 layVenda.Visible                := cbxTipoSaida.ItemIndex=0;
 if cbxTipoSaida.ItemIndex=1 then
  layProdutorOrigem.Margins.Left := 0
 else
  layProdutorOrigem.Margins.Left := 20;
 layProdutorOrigem.Visible       := true;
 layProdutorDestino.Visible      := true;
 layDadosOrigemDestino.Visible   := true;
end;

procedure TfrmSaidaGrupo.rdAnimaisEmbarcadosOrigemChange(Sender: TObject);
begin
 vEmbarcadosOrigem             := 1;
 edtLoteSaida.Text             := '';
 edtLoteSaida.Visible          := true;
 lblLoteSaida.Visible          := true;
 gbFiltrosAnimais.Visible      := true;
 vTransferencia                :=1;
 frmPrincipal.vMov             :=1;
 lblCurralDestino.Visible      := true;
 edtLocalDestino.Text          :='';
 edtLocalDestino.Visible       := true;
 lblRebanhoDestino.Visible     := true;
 edtRebanhoDestino.Text        := '';
 edtRebanhoDestino.Visible     := true;

 laySuperior.Visible           := false;
 layDadosOrigemDestino.Visible := false;
 layQtdeCabecaData.Visible     := false;
 laySaidaMorte.Visible         := false;
 layMorte.Visible              := false;
 layVenda.Visible              := false;
 tbPrincipal.ActiveTab         := tbiCad;
 layTipoSaidas.Visible         := false;

 cbxTipoSaida.ItemIndex        := 0;
 layGTA.Visible                := false;
 cbxTipoSaida.Enabled          := false;
 edtPesoMedSaida.Enabled       := false;
 rdValorCab.Enabled            := false;
 rdValorArroba.Enabled         := false;
 edtValorSaida.Enabled         := false;
 chkNovoAnimal.IsChecked       := false;
 chkNovoAnimal.Enabled         := false;

 layDadosOrigemDestino.Visible   := false;
 layMorte.Visible                := cbxTipoSaida.ItemIndex=1;
 layVenda.Visible                := cbxTipoSaida.ItemIndex=0;
 if cbxTipoSaida.ItemIndex=1 then
  layProdutorOrigem.Margins.Left := 0
 else
  layProdutorOrigem.Margins.Left := 20;
 layProdutorOrigem.Visible       := true;
 layProdutorDestino.Visible      := true;
 layDadosOrigemDestino.Visible   := true;
end;

procedure TfrmSaidaGrupo.rdPesoSaidaSwitch(Sender: TObject);
begin
 if rdPesoSaida.IsChecked then
  begin
   edtPesoMedSaida.Text :='';
   edtPesoMedSaida.Enabled := false;
  end
  else
   edtPesoMedSaida.Enabled := true;
end;

procedure TfrmSaidaGrupo.rdValorArrobaChange(Sender: TObject);
begin
if rdValorArroba.IsChecked then
 begin
  edtValorSaida.Enabled    := true;
  rdValorCab.IsChecked     := false;
 end;
end;

procedure TfrmSaidaGrupo.rdValorCabChange(Sender: TObject);
begin
 if rdValorCab.IsChecked then
 begin
  edtValorSaida.Enabled    := true;
  rdValorArroba.IsChecked  := false;
 end;
end;

procedure TfrmSaidaGrupo.Rectangle32Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    frmPrincipal.ExpTXT(ServiceConf.TImportaCarcaca,SaveDialog1.FileName);
  frmPrincipal.MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmSaidaGrupo.Rectangle35Click(Sender: TObject);
begin
  if edtPesoTotalCarcaca.Text.Length=0 then
  begin
    MyMyShowMessage('Informe o peso de carcaça!',false);
    Exit;
  end;
  layAguarde.Visible := true;
  Application.ProcessMessages;
  Sleep(500);
  if vAtualizaCarcaca=1 then
  begin
    ServiceConf.AtualizaCarcacaTotal(vLoteSaida,StringReplace(edtPesoTotalCarcaca.Text,',','.',[rfReplaceAll]),lblGridInfQtdCab.Text);
    layAguarde.Visible := false;
    layIncluiCarcaca.Visible := false;
    Application.ProcessMessages;
    MyMyShowMessage('Carcaça atualizada com sucesso!',false);
  end
  else
  begin
    ServiceConf.AtualizaValorTotal(vLoteSaida,StringReplace(edtPesoTotalCarcaca.Text,',','.',[rfReplaceAll]),lblGridInfQtdCab.Text);
    layAguarde.Visible := false;
    layIncluiCarcaca.Visible := false;
    Application.ProcessMessages;
    MyMyShowMessage('Valor atualizado com sucesso!',false);
  end;
end;

procedure TfrmSaidaGrupo.Rectangle38Click(Sender: TObject);
begin
   layIncluiCarcaca.Visible := false;
end;

procedure TfrmSaidaGrupo.Rectangle42Click(Sender: TObject);
var
 vInsert,vIdMax :integer;
begin
  if ServiceNew.LAUDO_VENDA.State=dsInsert then
   vInsert :=1
  else
   vInsert :=0;

  if edtAnimal.Text.Length=0 then
  begin
   myMyShowMessage('Informe o animal',false);
   Exit;
  end;
  if edtVeterinario.Text.Length=0 then
  begin
   myMyShowMessage('Informe o Veterinario',false);
   Exit;
  end;
  if edtOperacaoAtual.Text.Length=0 then
  begin
   myMyShowMessage('Informe a Operação',false);
   Exit;
  end;
  if edtCapataz.Text.Length=0 then
  begin
   myMyShowMessage('Informe o Capataz Geral',false);
   Exit;
  end;

  if edtCapatazEPP.Text.Length=0 then
  begin
   myMyShowMessage('Informe o Capataz EPE',false);
   Exit;
  end;

  if edtGerenteOP.Text.Length=0 then
  begin
   myMyShowMessage('Informe o Gerente Operacional',false);
   Exit;
  end;

  if edtResponsavelRastreabilidaed.Text.Length=0 then
  begin
   myMyShowMessage('Informe o Responsavel pela Rastreabilidade',false);
   Exit;
  end;

  ServiceNew.LAUDO_VENDAID_MORTE.AsString            := edtAnimal.TagString;
  ServiceNew.LAUDO_VENDAID_VETERINARIO.AsString      := edtVeterinario.TagString;
  ServiceNew.LAUDO_VENDAID_CAPATAZ.AsString          := edtCapataz.TagString;
  ServiceNew.LAUDO_VENDAID_OPERACAO_VIGENTE.AsString := edtOperacaoAtual.TagString;
  ServiceNew.LAUDO_VENDAID_USUARIO.AsString          := serviceDB.vIdUserLogado;
  ServiceNew.LAUDO_VENDAHIST_ANTE_MORTEM.AsString    := edtHistAnteMortem.Text;
  ServiceNew.LAUDO_VENDAID_GERENTE_OP.AsString       := edtGerenteOP.TagString;
  ServiceNew.LAUDO_VENDAID_RESPONSAVEL_RAST.AsString := edtResponsavelRastreabilidaed.TagString;
  ServiceNew.LAUDO_VENDAID_CAPATAZ_EPE.AsString      := edtCapatazEPP.TagString;

  ServiceNew.LAUDO_VENDACHECK_ASS_CAPATAZ.AsInteger        := cbxASSCapatazGerel.ItemIndex;
  ServiceNew.LAUDO_VENDACHECK_ASS_VETERINARIO.AsInteger    := cbxAssVeterinario.ItemIndex;
  ServiceNew.LAUDO_VENDACHECK_GERENTE_OP.AsInteger         := cbxAssGerenteOP.ItemIndex;
  ServiceNew.LAUDO_VENDACHECK_CAPATAZ_EPE.AsInteger        := cbxAssCapataz.ItemIndex;
  ServiceNew.LAUDO_VENDACHECK_RESPONSAVEL_RAST.AsInteger   := cbxAssResponsavelRast.ItemIndex;

  try
    ServiceNew.LAUDO_VENDA.ApplyUpdates(-1);


    if vInsert=1  then
     vIdMax :=  serviceDB.RetornaMaxID('LAUDO_SAIDA').ToInteger
    else
     vIdMax := ServiceNew.LAUDO_VENDAID.AsInteger;



    if ServiceNew.VerificaExisteImagemLaudoSaida(vIdMax.ToString) then
       ServiceNew.imgLaudoVenda.Insert
    else
       ServiceNew.imgLaudoVenda.Edit;

    ServiceNew.imgLaudoVendaID_LAUDO.AsInteger  := vIdMax;
    ServiceNew.imgLaudoVendaID_USUARIO.AsString := serviceDB.vIdUserLogado;
    ServiceNew.imgLaudoVendaIMG.AsString        := vImg1;
    ServiceNew.imgLaudoVendaIMG2.AsString       := vImg2;
    ServiceNew.imgLaudoVendaIMG3.AsString       := vImg3;
    ServiceNew.imgLaudoVendaIMG4.AsString       := vImg4;
    ServiceNew.imgLaudoVendaIMG5.AsString       := vImg5;
    ServiceNew.imgLaudoVendaIMG6.AsString       := vImg6;

    ServiceNew.imgLaudoVenda.ApplyUpdates(-1);
    ServiceNew.AbreLaudoVenda('');
    TbPrincipal.ActiveTab := tbiLaudo;
  except
    on E : Exception do
      myMyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
  end;
end;

procedure TfrmSaidaGrupo.Rectangle52Click(Sender: TObject);
begin
 if edtSenha.Text=frmPrincipal.edtSenha.Text then
 begin
   case vLiberaAss of
    1: cbxAssVeterinario.Enabled := true;
    2: cbxAssCapataz.Enabled := true;
    3: cbxASSCapatazGerel.Enabled := true;
    4: cbxAssGerenteOP.Enabled := true;
    5: cbxAssResponsavelRast.Enabled := true;
   end;
   layValidaSenha.Visible := false;
 end
 else
 begin
  frmPrincipal.MyShowMessage('Senha Invalida!',false);
 end;
end;

procedure TfrmSaidaGrupo.btnIncluiPesoCarcacaClick(Sender: TObject);
begin
  vAtualizaCarcaca         := 1;
  lblAtualizaLote.Text     :='Informe o peso total de Carcaça';
  layIncluiCarcaca.Visible := true;
  edtPesoTotalCarcaca.Text := serviceDB.qryGridLoteSaidaPESO_CARCACA_TOTAL.AsString;
end;

procedure TfrmSaidaGrupo.btnIncluirValorClick(Sender: TObject);
begin
 vAtualizaCarcaca         := 0;
 lblAtualizaLote.Text     :='Incluir Valor Total Frigorifico';
 layIncluiCarcaca.Visible := true;
 edtPesoTotalCarcaca.Text := serviceDB.qryGridLoteSaidaVALOR_TOTAL_FRIGO.AsString;
end;

procedure TfrmSaidaGrupo.TreeFinalizarLoteClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
 if serviceDB.qryGridLoteSaidaID.AsString.Length>0 then
 begin
  if serviceDB.qryGridLoteSaidaTOTALANIMAIS.AsInteger=0  then
  begin
    MyMyShowMessage('Lote de saída sem animais impossivel finalizar!',false);
    Exit;
  end;
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja realmente Finalizar esse Lote de Saída?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1 then
    begin
     try
       serviceDB.FinalizaSaidaAnimais(serviceDB.qryGridLoteSaidaID.AsString);
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Saída Finalizada com sucesso!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         btnFiltarClick(Sender);
       end);
     except

     end;
    end;
  end);
  Exit;
 end;
end;

procedure TfrmSaidaGrupo.TreeImportaCarcacaClick(Sender: TObject);
begin
 if serviceDB.qryGridLoteSaidaID.AsString.Length=0 then
 begin
  MyMyShowMessage('Selecione o lote de saida!',false);
  Exit;
 end;
 layTipoIdentificacaoCarcaca.Visible := false;
 TbPrincipal.ActiveTab     := tbiImporcaCarcaca;
 edtArquivoCarcaca.Text    := '';
end;

procedure TfrmSaidaGrupo.TreeItemExcluirClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
   if serviceDB.qryGridLoteSaidaID.AsString.Length>0 then
   begin
    if serviceDB.qryGridLoteSaidaTOTALANIMAIS.AsInteger=0 then
    begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Deseja realmente deletar essa Saída?';
      dlg.btnCancel.Visible := true;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        if dlg.vBntConfirmaMsg=1 then
        begin
         try
           serviceDB.DeletaSaidaAnimais(serviceDB.qryGridLoteSaidaID.AsString);
           dlg := TFrmmsgDlg.Create(nil);
           dlg.Position := TFormPosition.ScreenCenter;
           dlg.msg.Text := 'Saída excluida com sucesso!!';
           dlg.btnCancel.Visible := false;
           dlg.ShowModal(
           procedure(ModalResult: TModalResult)
           begin
             btnFiltarClick(Sender);
           end);
         except

         end;
        end;
      end);
     Exit;
    end
    else
      MyMyShowMessage('Lote com animais viculados impossivel deletar!',false)
   end;
end;

procedure TfrmSaidaGrupo.TreeItemNovoClick(Sender: TObject);
var
 vQryAux : TFDQuery;
begin
   edtValorSaida.Enabled               := false;
   rdAnimaisAtivos.IsChecked           := false;
   rdAnimaisEmbarcadosOrigem.IsChecked := false;
   rdValorCab.IsChecked                := false;
   rdValorArroba.IsChecked             := false;
   layMantemPeso.Visible               := false;
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection := serviceDB.FCon;
   with vQryAux,vQryAux.SQL do
   begin
    Clear;
    Add('DELETE FROM TMP_ANIMAL');
    ExecSQL;
   end;
   if frmPrincipal.vIdBaseCampo='0' then
   begin
    layTipoSaidas.Visible               := true;
    rdAnimaisAtivos.IsChecked           := false;
    rdAnimaisEmbarcadosOrigem.IsChecked := false;
   end
   else
   begin
     frmPrincipal.vMov :=1;
     layTipoSaidas.Visible := false;
     try
       frmSaidaInd := TfrmSaidaInd.Create(Self);
       frmSaidaInd.ShowModal;
     finally
       frmPrincipal.vMov :=0;
       frmSaidaInd.Free;
     end;
     vQryAux.Free;
   end;

end;

procedure TfrmSaidaGrupo.TreeLaudoClick(Sender: TObject);
begin
 ServiceNew.AbreLaudoVenda('');
 TbPrincipal.ActiveTab := tbiLaudo;
end;

procedure TfrmSaidaGrupo.TreeNovaGTAClick(Sender: TObject);
var
 vQrt:TFDQuery;
 vTotalAnimaisGTA:integer;
begin
 if vIdVeiculoEra.Length=0 then
 begin
  MyMyShowMessage('Selecione o veiculo!',false);
  Exit;
 end;
 vTotalAnimaisGTA := serviceDB.RetornaTotalAnimaisGTAVeiculoSaida(vIdVeiculoEra);
 serviceDB.vGeraAnexoSaida :=1;
  serviceDB.AbreQryGTASaida(serviceDB.qryGridLoteSaidaID_PRODUTOR_ORIGEM.AsString,
  serviceDB.qryGridLoteSaidaID_PRODUTOR_DESTINO.AsString);
  frmCadGTA := TfrmCadGTA.Create(Self);
  try
    frmCadGTA.cbxTipoGTAF.ItemIndex:=2;
    frmCadGTA.cbxTipoGTAF.Enabled  :=false;
    frmCadGTA.ShowModal;
  finally
    if frmCadGTA.vIdGtaSelecionada.Length>0 then
    begin
     if serviceDB.TableGTAID_VEICULO_SAIDA.AsString.Length>0 then
     begin
       MyMyShowMessage('GTA Já vinculada a um Veículo!',false);
     end;
     if(serviceDB.TableGTATOTAL_GTA.AsInteger+vTotalAnimaisGTA)>serviceDB.qryVeiculosLOTACAO.AsInteger then
     begin
      MyMyShowMessage('Total de animais da GTA maior que total de animais do veiculo!',false);
      serviceDB.AtualizaVeiculosSaida(vIdVeiculoEra,
      frmCadGTA.vIdGtaSelecionada,serviceDB.TableGTATOTAL_GTA.AsString);
      serviceDB.AbreQryVeiculos(serviceDB.qryGridLoteSaidaID.AsString);
      serviceDB.AbreGtaVeiculoSaida(serviceDB.qryVeiculosID.AsString);
      InfoGridVeiculos;
      serviceDB.vGeraAnexoSaida :=0;
     end;
     frmCadGTA.Free;
    end;
  end;
end;

procedure TfrmSaidaGrupo.TreeNovoLaudoClick(Sender: TObject);
begin
 if ServiceNew.ConectaBancoImagens then
 begin
   vSelecionaLaudo         :=1;
   edtAnimal.Text          :='';
   edtVeterinario.Text     :='';
   edtOperacaoAtual.Text   :='';
   edtHistAnteMortem.Text  :='';
   edtGerenteOP.Text       :='';
   edtCapataz.Text         :='';
   edtCapatazEPP.Text      :='';


   ImgFoto1.Bitmap         := nil;
   ImgFoto2.Bitmap         := nil;
   ImgFoto3.Bitmap         := nil;
   ImgFoto4.Bitmap         := nil;
   ImgFoto5.Bitmap         := nil;
   ImgFoto6.Bitmap         := nil;

   vImg1                   :='';
   vImg2                   :='';
   vImg3                   :='';
   vImg4                   :='';
   vImg5                   :='';
   vImg6                   :='';

   cbxASSCapatazGerel.ItemIndex    := 0;
   cbxAssVeterinario.ItemIndex     := 0;
   cbxAssGerenteOP.ItemIndex       := 0;
   cbxAssCapataz.ItemIndex         := 0;
   cbxAssResponsavelRast.ItemIndex := 0;

   cbxAssVeterinario.Enabled      := false;
   cbxAssCapataz.Enabled          := false;
   cbxASSCapatazGerel.Enabled     := false;
   cbxAssGerenteOP.Enabled        := false;
   cbxAssResponsavelRast.Enabled  := false;

   btnAssinarVeterinario.Enabled  := false;
   btnAssinarCapataz.Enabled      := false;
   btnAssinarCapatazGeral.Enabled := false;
   btnAssinarGerente.Enabled      := false;
   btnAssinarResponsavel.Enabled  := false;


   edtResponsavelRastreabilidaed.Text :='';
   ServiceNew.LAUDO_VENDA.Insert;
   TbPrincipal.ActiveTab   := tbiNovoLaudo;
 end;
end;

procedure TfrmSaidaGrupo.TreeRelClick(Sender: TObject);
begin
 SerRel.AbreRelSaidaSinteticoInd('and a.ID_LOTESAIDA='+serviceDB.qryGridLoteSaidaID.AsString);
end;

procedure TfrmSaidaGrupo.TabControl1Change(Sender: TObject);
begin
 layInfGrid.Visible          := TabControl1.ActiveTab=tbi1;
 bntRelEra.Enabled           := TabControl1.ActiveTab=tbi1;
 btnReportAnimaisLs.Enabled  := TabControl1.ActiveTab=tbi1;
 btnLocalizarAnimais.Enabled := TabControl1.ActiveTab=tbi1;
end;

procedure TfrmSaidaGrupo.TreeAnexosClick(Sender: TObject);
begin
 if serviceDB.qryGridLoteSaidaID.AsString.Length>0 then
 begin
   serviceDB.AbreQryVeiculos(serviceDB.qryGridLoteSaidaID.AsString);
//  serviceDB.AbreQryVeiculosAnexos(serviceDB.qryGridLoteSaidaID.AsString);
  InfoGridVeiculos;
  recDadosAnexo.Enabled  := false;
  TbPrincipal.ActiveTab  := tbiGeraDocs;
 end;
end;

function TfrmSaidaGrupo.BitmapFromBase64(const base64: string): TBitmap;
var
  Input: TStringStream;
  Output: TBytesStream;
begin
  Input := TStringStream.Create(base64, TEncoding.ASCII);
  try
    Output := TBytesStream.Create;
    try
      Soap.EncdDecd.DecodeStream(Input, Output);
      Output.Position := 0;
      Result := TBitmap.Create;
      try
        Result.LoadFromStream(Output);
      except
        Result.Free;
        raise;
      end;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

procedure TfrmSaidaGrupo.TreeEditarLaudoClick(Sender: TObject);
begin
 if ServiceNew.ConectaBancoImagens then
 begin
   if ServiceNew.LAUDO_VENDAIDENTIFICACAO_1.AsString.Length>0 then
    edtAnimal.Text := ServiceNew.LAUDO_VENDAIDENTIFICACAO_1.AsString
   else
   edtAnimal.Text      := ServiceNew.LAUDO_VENDAIDENTIFICACAO_2.AsString;
   edtAnimal.TagString := ServiceNew.LAUDO_VENDAID_MORTE.AsString;
   edtVeterinario.Text := ServiceNew.LAUDO_VENDAVETERINARIO.AsString;
   edtVeterinario.TagString   := ServiceNew.LAUDO_VENDAID_VETERINARIO.AsString;
   edtCapataz.Text            := ServiceNew.LAUDO_VENDACAPATAZ.AsString;
   edtCapataz.TagString       := ServiceNew.LAUDO_VENDAID_CAPATAZ.AsString;

   edtCapatazEPP.Text         := ServiceNew.LAUDO_VENDACAPATAZ_EPE.AsString;
   edtCapatazEPP.TagString    := ServiceNew.LAUDO_VENDAID_CAPATAZ_EPE.AsString;


   edtOperacaoAtual.Text      := ServiceNew.LAUDO_VENDAOPERACAO.AsString;
   edtOperacaoAtual.TagString := ServiceNew.LAUDO_VENDAID_OPERACAO_VIGENTE.AsString;
   edtResponsavelRastreabilidaed.Text      := ServiceNew.LAUDO_VENDARESPONSAVEL_RASTREABILIDADE.AsString;
   edtResponsavelRastreabilidaed.TagString := ServiceNew.LAUDO_VENDAID_RESPONSAVEL_RAST.AsString;
   edtGerenteOP.Text                       := ServiceNew.LAUDO_VENDAGERENTE_OPERACIONAL.AsString;
   edtGerenteOP.TagString                  := ServiceNew.LAUDO_VENDAID_GERENTE_OP.AsString;

   cbxASSCapatazGerel.ItemIndex    := ServiceNew.LAUDO_VENDACHECK_ASS_CAPATAZ.AsInteger;
   cbxAssVeterinario.ItemIndex     := ServiceNew.LAUDO_VENDACHECK_ASS_VETERINARIO.AsInteger;
   cbxAssGerenteOP.ItemIndex       := ServiceNew.LAUDO_VENDACHECK_GERENTE_OP.AsInteger;
   cbxAssCapataz.ItemIndex         := ServiceNew.LAUDO_VENDACHECK_CAPATAZ_EPE.AsInteger;
   cbxAssResponsavelRast.ItemIndex := ServiceNew.LAUDO_VENDACHECK_RESPONSAVEL_RAST.AsInteger;


   cbxAssVeterinario.Enabled      := false;
   cbxAssCapataz.Enabled          := false;
   cbxASSCapatazGerel.Enabled     := false;
   cbxAssGerenteOP.Enabled        := false;
   cbxAssResponsavelRast.Enabled  := false;

   btnAssinarVeterinario.Enabled  := true;
   btnAssinarCapataz.Enabled      := true;
   btnAssinarCapatazGeral.Enabled := true;
   btnAssinarGerente.Enabled      := true;
   btnAssinarResponsavel.Enabled  := true;


   lblDataMorte.Text          := ServiceNew.LAUDO_VENDADATA_MORTE.AsString;

   edtHistAnteMortem.Text   := ServiceNew.LAUDO_VENDAHIST_ANTE_MORTEM.AsString;
   ServiceNew.VerificaExisteImagemLaudoSaida(ServiceNew.LAUDO_VENDAID.AsString);

   if ServiceNew.imgLaudoVendaIMG.AsString.Length>100 then
   begin
    ImgFoto1.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG.AsString);
    vImg1           := ServiceNew.imgLaudoVendaIMG.AsString
   end;

   if ServiceNew.imgLaudoVendaIMG2.AsString.Length>100 then
   begin
    ImgFoto2.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG2.AsString);
    vImg2           := ServiceNew.imgLaudoVendaIMG2.AsString
   end;

   if ServiceNew.imgLaudoVendaIMG3.AsString.Length>100 then
   begin
    ImgFoto3.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG3.AsString);
    vImg3           := ServiceNew.imgLaudoVendaIMG3.AsString
   end;

   if ServiceNew.imgLaudoVendaIMG4.AsString.Length>100 then
   begin
    ImgFoto4.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG4.AsString);
    vImg4           := ServiceNew.imgLaudoVendaIMG4.AsString
   end;

   if ServiceNew.imgLaudoVendaIMG5.AsString.Length>100 then
   begin
    ImgFoto5.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG5.AsString);
    vImg5           := ServiceNew.imgLaudoVendaIMG5.AsString
   end;

   if ServiceNew.imgLaudoVendaIMG6.AsString.Length>100 then
   begin
    ImgFoto6.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG6.AsString);
    vImg6           := ServiceNew.imgLaudoVendaIMG6.AsString
   end;
   vSelecionaLaudo  :=1;
   ServiceNew.LAUDO_VENDA.Edit;
   TbPrincipal.ActiveTab := tbiNovoLaudo;
 end;
end;

procedure TfrmSaidaGrupo.TreeExcluirLaudoClick(Sender: TObject);
begin
 if serviceDB.TableAnimaisMorteID.AsString.Length>0 then
 begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja realmente deletar essa Morte?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1 then
    begin
     try
       ServiceNew.LAUDO_VENDA.Edit;
       ServiceNew.LAUDO_VENDASTATUS.AsInteger := -1;
       ServiceNew.LAUDO_VENDA.ApplyUpdates(-1);

       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Morte excluida com sucesso!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         btnFiltarClick(Sender);
       end);
     except
       on E : Exception do
          myMyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
     end;
    end;
  end);
  Exit;
 end;
end;

procedure TfrmSaidaGrupo.TreeViewItem1Click(Sender: TObject);
begin
 try
  serviceDB.AtualizaPesoTotalLoteSaida(serviceDB.qryGridLoteSaidaID.AsString);
 Except
 on E : Exception do
 begin
   mymyShowMessage('Erro ao atualizar peso : '+E.Message,false);
   Exit;
 end;
end;
end;

procedure TfrmSaidaGrupo.TreeViewItem7Click(Sender: TObject);
var
 vPath,vFaixaEra:string;
begin
  if ServiceNew.ConectaBancoImagens then
  begin

   if ServiceNew.LAUDO_VENDAIDADE_MORTE.AsInteger<=12 then
    vFaixaEra :='0 a 12';

   if (ServiceNew.LAUDO_VENDAIDADE_MORTE.AsInteger>12) and
    (ServiceNew.LAUDO_VENDAIDADE_MORTE.AsInteger<=24)then
    vFaixaEra :='13 a 24';

   if (ServiceNew.LAUDO_VENDAIDADE_MORTE.AsInteger>24) and
    (ServiceNew.LAUDO_VENDAIDADE_MORTE.AsInteger<=36)then
    vFaixaEra :='25 a 36';

   if (ServiceNew.LAUDO_VENDAIDADE_MORTE.AsInteger>36)then
    vFaixaEra :='Mais de 36';

   SaveLaudo.FileName  := 'LaudoSaida';
   if SaveLaudo.Execute then
   begin
     vPath := ExtractFilePath(SaveLaudo.FileName);

     serviceDB.AbreConfigFazenda(serviceDB.vIdPropriedade);
     ServiceNew.VerificaExisteImagemLaudoSaida(ServiceNew.LAUDO_VENDAID.AsString);


     ServiceNew.LAUDO_VENDA_REPORT.Close;
     ServiceNew.LAUDO_VENDA_REPORT.ParamByName('ID').AsInteger := ServiceNew.LAUDO_VENDAID.AsInteger;
     ServiceNew.LAUDO_VENDA_REPORT.Close;

     ServiceNew.ppRepLaudoVenda.ShowPrintDialog := false;
     ServiceNew.ppRepLaudoVenda.DeviceType      := 'PDF';
     ServiceNew.ppRepLaudoVenda.TextFileName    := vPath+'Laudo_'+ServiceNew.LAUDO_VENDAID.AsString+'_Fotos.PDF';
     ServiceNew.ppRepLaudoVenda.Print;


     ServiceNew.ppRepTamplateVenda.ShowPrintDialog := false;
     ServiceNew.ppRepTamplateVenda.DeviceType      := 'PDF';
     ServiceNew.ppRepTamplateVenda.TextFileName    := vPath+'Laudo_Venda_'+ServiceNew.LAUDO_VENDAID.AsString+'.PDF';
     ServiceNew.ppRepTamplateVenda.Print;


     ServiceNew.TableAnimalSanidade.Close;
     ServiceNew.TableAnimalSanidade.ParamByName('id').AsInteger := ServiceNew.LAUDO_VENDAID_MORTE.AsInteger;
     ServiceNew.TableAnimalSanidade.Open;

     if not ServiceNew.TableAnimalSanidade.isempty  then
     begin
      ServiceNew.ppReportSanidadeAnalitico.ShowPrintDialog := false;
      ServiceNew.ppReportSanidadeAnalitico.DeviceType      := 'PDF';
      ServiceNew.ppReportSanidadeAnalitico.TextFileName    := vPath+'Historico_Sanitario_Laudo_'+ServiceNew.LAUDO_VENDAID.AsString+'_Fotos.PDF';
      ServiceNew.ppReportSanidadeAnalitico.Print;
     end;


     ServiceNew.pplblEraLaudoVenda.Caption       := vFaixaEra;
     ServiceNew.ppRepLaudoVenda2.ShowPrintDialog := false;
     ServiceNew.ppRepLaudoVenda2.DeviceType      := 'PDF';
     ServiceNew.ppRepLaudoVenda2.TextFileName    := vPath+'Laudo_Assinaturas'+ServiceNew.LAUDO_VENDAID.AsString+'.PDF';
     ServiceNew.ppRepLaudoVenda2.Print;

  //   if not FileExists(frmPrincipal.PathTamplateLaudoMorte) then
  //   begin
  //     myMyShowMessage('Tamplate não localizado!',false);
  //     Exit;
  //   end
  //   else
  //   begin
  //     PreencherDadosArquivo(frmPrincipal.PathTamplateLaudoVenda,vPath);
  //   end;

     myMyShowMessage('Arquivos salvos no seguinte diretorios : '+#13+vPath,false);

   end;
  end;
end;

function TfrmSaidaGrupo.PreencherDadosArquivo(const NomeArquivo,vPath: string): Boolean;
var
  WordApp: Variant;
  Documento: Olevariant;
  vIdentificacao,vFaixaEra :string;
begin
  WordApp:= CreateOleObject('Word.Application');
  try
    if ServiceNew.LAUDO_VENDA_REPORTIDENTIFICACAO_1.AsString.Length>0 then
     vIdentificacao := ServiceNew.LAUDO_VENDA_REPORTIDENTIFICACAO_1.AsString
    else
     vIdentificacao := ServiceNew.LAUDO_VENDA_REPORTIDENTIFICACAO_2.AsString;

    WordApp.Visible := False;
    Documento := WordApp.Documents.Open(NomeArquivo);
    Documento.Content.Find.Execute(FindText := '[NProcesso]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTID.AsString);
    Documento.Content.Find.Execute(FindText := '[NIdentificacao]', ReplaceWith :=vIdentificacao);
    Documento.Content.Find.Execute(FindText := '[TLocal]', ReplaceWith :=ServiceNew.LAUDO_VENDA_REPORTPRODUTORDESTINO.AsString);

    Documento.Content.Find.Execute(FindText := '[TNomePecuarista]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTPRODUTOR.AsString);

    Documento.Content.Find.Execute(FindText := '[TNomeVeterinario]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTVETERINARIO.AsString);
    Documento.Content.Find.Execute(FindText := '[TCRM]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTCRM.AsString);
    Documento.Content.Find.Execute(FindText := '[TNomeCapataz]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTCAPATAZ.AsString);
    Documento.Content.Find.Execute(FindText := '[TRacaCategoria]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTRACA.AsString+'/'+
     ServiceNew.LAUDO_VENDA_REPORTCATEGORIA.AsString);

    if ServiceNew.LAUDO_VENDA_REPORTIDADE_MORTE.AsInteger<=12 then
     vFaixaEra :='0 a 12';

    if (ServiceNew.LAUDO_VENDA_REPORTIDADE_MORTE.AsInteger>12) and
     (ServiceNew.LAUDO_VENDA_REPORTIDADE_MORTE.AsInteger<=24)then
     vFaixaEra :='13 a 24';

    if (ServiceNew.LAUDO_VENDA_REPORTIDADE_MORTE.AsInteger>24) and
     (ServiceNew.LAUDO_VENDA_REPORTIDADE_MORTE.AsInteger<=36)then
     vFaixaEra :='25 a 36';

    if (ServiceNew.LAUDO_VENDA_REPORTIDADE_MORTE.AsInteger>36)then
     vFaixaEra :='Mais de 36';

    Documento.Content.Find.Execute(FindText := '[TFaixaEra]', ReplaceWith := vFaixaEra);
    Documento.Content.Find.Execute(FindText := '[TDataUnidade]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTDATA_ENTRADA.AsString);
    Documento.Content.Find.Execute(FindText := '[TOperacaoVigente]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTOPERACAO.AsString);
    Documento.Content.Find.Execute(FindText := '[THistoricoAnteMortem]', ReplaceWith := ServiceNew.LAUDO_VENDA_REPORTHIST_ANTE_MORTEM.AsString);


//    if ServiceNew.imgLaudoVendaIMG2.AsString.Length>100 then
//     ImgFoto2.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG2.AsString);
//
//    if ServiceNew.imgLaudoVendaIMG3.AsString.Length>100 then
//     ImgFoto3.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG3.AsString);
//
//    if ServiceNew.imgLaudoVendaIMG4.AsString.Length>100 then
//     ImgFoto4.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoVendaIMG4.AsString);
//
//
//    Documento.ActiveDocument.InlineShapes.LoadLangFromStrings();

    Documento.SaveAs(vPath+'Laudo_'+ServiceNew.LAUDO_VENDA_REPORTID.AsString+'.docx')
  finally
    WordApp.Quit;
  end;
end;

procedure TfrmSaidaGrupo.TreeViewRelClick(Sender: TObject);
begin
   ppReportSaidaAnimais.Print;
end;

procedure TfrmSaidaGrupo.TreeViewVeiculosClick(Sender: TObject);
begin
 if serviceDB.qryGridLoteSaidaID.AsString.LengtH=0 then
 begin
   MyMyShowMessage('Selecione o lote de saida',false);
   Exit;
 end;
 frmVeiculosEmbarquer := TfrmVeiculosEmbarquer.Create(Self);
  try
    frmVeiculosEmbarquer.vIdLs :=serviceDB.qryGridLoteSaidaID.AsString;
    frmVeiculosEmbarquer.ShowModal;
  finally
    frmVeiculosEmbarquer.Free;
  end;

// laySuperior.Visible             := false;
// layAtualizaPesoBalancao.Visible := false;
// if serviceDB.qryGridLoteSaidaID.AsString.Length>0 then
// begin
//  serviceDB.AbreQryVeiculos(serviceDB.qryGridLoteSaidaID.AsString);
//  InfoGridVeiculos;
//  LayApartacao.Visible:= true;
// end;
end;

procedure TfrmSaidaGrupo.AbreListaAnimaisLS(IDLS: STRING);
var
  I   : Integer;
  Sum : Double;
  Val : Double;
  Sum1: Double;
  Val1: Double;
  Sum2: Double;
  Val2: Double;
  Sum3: Double;
  Val3: Double;
begin
 with qryListaAnimaisSaida,qryListaAnimaisSaida.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('a.id,');
   Add('O.nome VEICULO_eMBARQUE,');
   Add('  a.IDENTIFICACAO_1,');
   Add('  a.IDENTIFICACAO_2,');
   Add('  A.PESO_ENTRADA,');
   Add('  A.PESO_SAIDA,');
   Add('  A.data_proc DATA_ENTRADA,');
   Add('  DATA_ENTRADA_CONF ENTRADA_CONF,');
   Add('  data_saida DATA_SAIDA,');
   Add('  DATEDIFF(day from A.data_proc TO A.data_saida)+1 DIAS,');
   Add('  DATEDIFF(month from A.data_nascimento TO A.data_saida) eraAtual,');
   Add(' (A.peso_saida-A.peso_entrada) GTP_GERAL,');
   Add('  (A.peso_saida-A.peso_entrada)/(DATEDIFF(day from A.data_proc TO A.data_saida)+1) GMD_GERAL,');
   Add('  (DATEDIFF(day from A.data_proc TO A.data_saida)+1)DIAS_GERAL,');
   Add('  (A.PESO_ENTRADA_CONF-A.peso_entrada) GTP_PASTO,');
   Add('  CASE');
   Add('  when (PESO_ENTRADA_CONF < peso_entrada)');
   Add('  then(A.PESO_ENTRADA_CONF-A.peso_entrada)/(DATEDIFF(day from A.data_proc TO A.DATA_ENTRADA_CONF)+1)');
   Add('  else 0');
   Add('  end GMD_PASTO,');
   Add('  (DATEDIFF(day from A.data_proc TO A.DATA_ENTRADA_CONF)+1) DIAS_PASTO,');
   Add('  (A.peso_saida-A.PESO_ENTRADA_CONF) GTP_CONF,');
   Add('  (A.peso_saida-A.PESO_ENTRADA_CONF)/ (DATEDIFF(day from A.DATA_ENTRADA_CONF TO A.data_saida)+1) GMD_CONF,');
   Add('  (DATEDIFF(day from A.DATA_ENTRADA_CONF TO A.data_saida)+1) DIAS_CONF,');
   Add('  C.CODIGO LOCAL_ORIGEM,');
   Add('  CA.NOME CATEGORIA,');
   Add('  RC.NOME RACA,');
   Add('  cca.NUMERO Contrato');
   Add(' FROM ANIMAL A');
   Add(' JOIN RACA RC ON RC.id=A.id_raca');
   Add(' LEFT JOIN CONTRATO_COMPRA_ANIMAL cca ON cca.ID =ID_CONTRATO');
   Add(' JOIN categorias CA ON CA.ID=A.ID_CATEGORIA');
   Add(' LEFT JOIN veiculos_embarque O ON O.id=A.id_veiculo_saida');
   Add(' JOIN CURRAIS C ON C.id=a.ID_LOCAL');
   Add(' WHERE A.STATUS=2');
   if serviceDB.qryGridLoteSaidaID.AsString.Length>0 then
    Add('    AND A.ID_LOTESAIDA='+serviceDB.qryGridLoteSaidaID.AsString);
   if cbxVeiculos.ItemIndex>0 then
     Add('AND A.id_veiculo_saida='+vIdVeiculoLista);
   if cbxLocalOrigem.ItemIndex>0 then
     Add('AND A.ID_LOCAL='+vIdLocal);
   if cbxRacaLista.ItemIndex>0 then
    Add('AND A.ID_RACA='+vIdRacaFiltro);
   if cbxCatLista.ItemIndex>0 then
    Add('AND A.ID_CATEGORIA='+vIdCatFiltro);
   if edtIdent1Lista.Text.Length>0 then
    Add('AND A.identificacao_1='+edtIdent1Lista.Text.QuotedString);
   if edtIdent2Lista.Text.Length>0 then
    Add('AND A.identificacao_2='+edtIdent2Lista.Text.QuotedString);
   Open;
   if not IsEmpty then
   begin
    Sum   := 0;
    Sum1  := 0;
    Sum2  := 0;
    Sum3  := 0;
    val   := 0;
    val1  := 0;
    val2  := 0;
    val3  := 0;
    for I := 0 to GruidListaAnimaisLS.RowCount-1 do
    begin
     if TryStrToFloat(GruidListaAnimaisLS.Cells[10,I],Val) then
      Sum := Sum + Val;

     if TryStrToFloat(GruidListaAnimaisLS.Cells[11,I],Val1) then
      Sum1 := Sum1 + Val1;

     if TryStrToFloat(GruidListaAnimaisLS.Cells[9,I],Val2) then
      Sum2 := Sum2 + Val2;

     if TryStrToFloat(GruidListaAnimaisLS.Cells[9,I],Val3) then
      Sum3 := Sum3 + Val3;
    end;
     lblGTPMedio.Text          := FormatFloat('0.00',(Sum/GruidListaAnimaisLS.RowCount));
     lblGridInfQtdCab.Text     := IntToStr(GruidListaAnimaisLS.RowCount);
     lblGMDMedio.Text          := FormatFloat('0.00',(Sum1/GruidListaAnimaisLS.RowCount));
     lblGridInfoMediaPeso.Text := FormatFloat('0.00',(Sum2/GruidListaAnimaisLS.RowCount));
     lblPesoTotal.Text         := FormatFloat('0.00',Sum3);
   end
   else
   begin
     lblGTPMedio.Text      :='0';
     lblGridInfQtdCab.Text :='0';
     lblGMDMedio.Text      :='0';
     lblGridInfoMediaPeso.Text :='0';
     lblPesoTotal.Text         :='0';
   end;
 end;
end;

procedure TfrmSaidaGrupo.AbreListaRefugadosLS(IDLS: STRING);
begin
  with TRefugo,TRefugo.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('c.CODIGO,');
    Add('r.IDDENTIFICACAO_1 ,');
    Add('r.IDDENTIFICACAO_2,');
    Add('r.PESO,');
    Add('r.datareg');
    Add('FROM REFUGO_SAIDA r');
    Add('JOIN ANIMAL a ON (a.id=r.id_animal)');
    Add('JOIN CURRAIS c ON a.ID_LOCAL =c.id');
    Add('WHERE ID_LOTE_SAIDA='+IDLS);
    Open;
  end;
end;

procedure TfrmSaidaGrupo.bntCancelarAniClick(Sender: TObject);
begin
 edtQtdAnimaisSaida.Text := '0';
 laySaidaMorte.visible   := false;
 TbPrincipal.ActiveTab   := tbiCad;
 LimpaCamposSaida;
end;

procedure TfrmSaidaGrupo.bntRelEraClick(Sender: TObject);
begin
  if cbxVeiculos.ItemIndex>0 then
  begin
   SerRel.AbreEraEmbarque(serviceDB.qryGridLoteSaidaID.AsString,vIdVeiculoLista);
   if not serRel.qryRelEraEmbaque.IsEmpty then
    serRel.ppRepRelEraEmbaque.Print
   else
   begin
     MyMyShowMessage('Veiculo Sem dados para gerar esse relatorio!',false);
   end;
  end
  else
  begin
   SerRel.AbreEraEmbarquels(serviceDB.qryGridLoteSaidaID.AsString);
   if not serRel.qryRelEraEmbaquels.IsEmpty then
    serRel.ppRepRelEraEmbaquels.Print
   else
   begin
     MyMyShowMessage('Lote Sem dados para gerar esse relatorio!',false);
   end;
  end;
end;

procedure TfrmSaidaGrupo.btnAnexoVIGeralClick(Sender: TObject);
begin
  vTipoAnexo :=2;
  serviceDB.GeraAnexoVIEVII(serviceDB.qryGridLoteSaidaID.AsString,
  '');
  ppLBLNumAnexoVI.Text := serviceDBN.RetornaMaxVeiculoLS(serviceDB.qryGridLoteSaidaID.AsString);
  ppReportAnexoVI.Print;

end;

procedure TfrmSaidaGrupo.btnAnexoVIIGeralClick(Sender: TObject);
begin
 vTipoAnexo :=2;
 serviceDB.GeraAnexoVIEVII(serviceDB.qryGridLoteSaidaID.AsString,
  '');
  ppLblNumeroAnexoVII.Text := serviceDBN.RetornaMaxVeiculoLS(serviceDB.qryGridLoteSaidaID.AsString);
  ppReportAnexoVIl.Print;
end;

procedure TfrmSaidaGrupo.btnAnexoVIIVeiculoClick(Sender: TObject);
begin
 vTipoAnexo :=1;
 serviceDB.GeraAnexoVIEVII(serviceDB.qryGridLoteSaidaID.AsString,
  serviceDB.qryVeiculosLotadosID.AsString);
  ppLblNumeroAnexoVII.Text := serviceDB.qryVeiculosLotadosID.AsString;
  ppReportAnexoVIl.Print;
end;

procedure TfrmSaidaGrupo.btnAnexoVIVeiculoClick(Sender: TObject);
begin
 vTipoAnexo :=1;
 serviceDB.GeraAnexoVIEVII(serviceDB.qryGridLoteSaidaID.AsString,
  serviceDB.qryVeiculosID.AsString);
  ppLBLNumAnexoVI.Text := serviceDB.qryVeiculosID.AsString;
  ppReportAnexoVI.Print;
end;

procedure TfrmSaidaGrupo.btnAssinarCapatazClick(Sender: TObject);
begin
 vLiberaAss :=2;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmSaidaGrupo.btnAssinarCapatazGeralClick(Sender: TObject);
begin
 vLiberaAss :=3;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmSaidaGrupo.btnAssinarGerenteClick(Sender: TObject);
begin
 vLiberaAss :=4;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmSaidaGrupo.btnAssinarResponsavelClick(Sender: TObject);
begin
 vLiberaAss :=5;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmSaidaGrupo.btnAssinarVeterinarioClick(Sender: TObject);
begin
 vLiberaAss :=1;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmSaidaGrupo.btnAtualizaPesoBalancaoClick(Sender: TObject);
var
 vPesoMedio:string;
begin
  vPesoMedio := FormatFloat('####,##0.00',(serviceDB.qryVeiculosPESO_BALANCAO.AsFloat/
    serviceDB.qryVeiculosLOTACAO.AsFloat));

  myMyShowMessage('Deseja Realmente Atualizar o Peso do Balanção nos animais?'+#13+
  'Peso Balanção: '+serviceDB.qryVeiculosPESO_BALANCAO.AsString+#13+
  'Peso Medio Animais: '+vPesoMedio,false);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       serviceDB.AtualizaPesoBalancaoAnimais(serviceDB.qryVeiculosID.AsString,
        StringReplace(vPesoMedio,',','.',[rfReplaceAll]));
       ShowMessage('Peso Atualizado com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  2:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
end;

procedure TfrmSaidaGrupo.btnBuscaArquivoCarcacaClick(Sender: TObject);
var
 Txt         : TextFile;
 Quebra      : TStringList;
 Arq,Identificacao1,Data,peso,vIdAnimal: String;
 vData:TDateTime;
 I,X,Contador,Irregular,colunasCount:integer;
 vQryAux:TFDQuery;
begin
 vImportacao                   :=0;
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 Quebra  := TStringList.Create;
 if SaveDialog2.Execute then
 begin
   I:=0;
   X:=0;
   edtArquivoCarcaca.Text :=SaveDialog2.FileName;
   edtArqCarcaca.Text     :=SaveDialog2.FileName;
   AssignFile(Txt,edtArquivoCarcaca.Text);
   reset(txt);
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('DELETE FROM TMP_IMPORTA_CARCACA');
     ExecSQL;
       while not Eoln(txt) do
       begin
        Quebra.Clear;
        Readln(txt,Arq);
        ExtractStrings([';'],[],pchar(Arq),Quebra);
          if i>0 then
          begin
             if CountPos(';',arq)<1 then
             begin
               MyMyShowMessage('Arquivo deve conter no minimo duas colulas (IDENTIFICAÇÃO|PESO)',false);
               break;
             end;
             Identificacao1 := Quebra.Strings[0];
             peso           := StringReplace(Quebra.Strings[1],',','.',[rfReplaceAll]);
             if (Identificacao1.Length>0) then
             begin
               vIdAnimal :=ServiceConf.RetornaIdAnimal(serviceDB.qryGridLoteSaidaID.AsString,
                            intToStr(cbxTipoIdentificacaoCarcaca.ItemIndex),
                            Identificacao1);

               with vQryAux,vQryAux.SQL do
               begin
                 Clear;
                 Add('INSERT INTO TMP_IMPORTA_CARCACA(');
                 Add('IDENTIFICACAO,');
                 Add('PESO_CARCACA,');
                 Add('TIPO_IDENTIFICACAO,');
                 Add('CODIGO_ANIMAL');
                 Add(')VALUES(');
                 Add(Identificacao1.QuotedString);
                 Add(','+peso);
                 Add(','+intToStr(cbxTipoIdentificacaoCarcaca.ItemIndex));
                 if vIdAnimal.Length>0 then
                  Add(','+vIdAnimal)
                 else
                 begin
                  inc(x);
                  Add(',NULL');
                 end;
                 Add(')');
                 try
                  ExecSQL;
                 except
                   on e : Exception do
                     ShowMessage('Erro ao Atualizar Configuracao: '+e.Message)
                 end
               end;
             end;
          end;
        inc(i);
        lblCountCarcaca.Text := intToStr(i);
       end;
       if I>0 then
       begin
        layTipoIdentificacaoCarcaca.Visible := false;
        ServiceConf.TImportaCarcaca.Close;
        ServiceConf.TImportaCarcaca.Open;
        lblTotalCarcacaImportado.Text := 'Total Carcaca Importada: '+ intToStr(StringGrid2.RowCount);
        lblNaoEncontrados.Text := 'Não Encontrados: '+ intToStr(X);
       end;
   end;
 end;
end;

procedure TfrmSaidaGrupo.btnBuscaCausaMorteClick(Sender: TObject);
begin
 serviceDB.qryAuxMotivoMorte.Close;
 serviceDB.qryAuxMotivoMorte.Open;
 frmAuxMotivoMorte := TfrmAuxMotivoMorte.Create(nil);
  try
    frmAuxMotivoMorte.ShowModal;
  finally
    edtCausaMorte.text      := serviceDB.qryAuxMotivoMorteNOME.AsString;
    vIdMotivo               := serviceDB.qryAuxMotivoMorteID.AsString;
    frmAuxMotivoMorte.Free;
  end;
end;

procedure TfrmSaidaGrupo.btnBuscaGTAClick(Sender: TObject);
begin
   edtProdutorOrigem.Text     := '';
   edtDestinoVenda.Text       := '';
   vIdDestinoVenda            := '';
   vProdutorOrigem            := '';
   serviceDB.AbreGTASaidaGrupo(serviceDB.vIdPropriedade);
   frmCadGTA := TfrmCadGTA.Create(nil);
   try
    frmCadGTA.ShowModal;
   finally
    vTotalAnimaisGTA           := serviceDB.TableGTATOTAL_GTA.AsInteger-serviceDB.TableGTATOTAL_BRINCADOS.AsInteger;
    vIdGTA                     := serviceDB.TableGTAID.AsString;
    edtGTA.text                := serviceDB.TableGTANUMERO.AsString+'-'+serviceDB.TableGTASERIE.AsString+'-'+serviceDB.TableGTAUF.AsString;
    vIdDestinoVenda            := serviceDB.TableGTAID_PRODUTOR_DESTINO.AsString;
    vProdutorOrigem            := serviceDB.TableGTAID_PRODUTOR_ORIGEM.AsString;
    vPrpriedadeDestino         := serviceDB.TableGTAID_PROPRIEDADE_DESTINO.AsString;
    vPrpriedadeOrigem          := serviceDB.TableGTAID_PROPRIEDADE_ORIGEM.AsString;
    edtProdutorOrigem.Text     := serviceDB.TableGTANOME.AsString;
    edtDestinoVenda.Text       := serviceDB.TableGTANOME_1.AsString;
    if vIdGTA='' then
    begin
     edtProdutorOrigem.Enabled  := true;
     edtDestinoVenda.Enabled := true;
    end
    else
    begin
     edtProdutorOrigem.Enabled   := false;
     edtDestinoVenda.Enabled     := false;
     layDadosOrigemDestino.Align := TAlignLayout.top;
    end;
    frmCadGTA.Free;
  end;
  layQtdeCabecaData.Visible    := true;
end;

procedure TfrmSaidaGrupo.btnCancelarClick(Sender: TObject);
begin
  laySuperior.Visible   := TRUE;
  LimpaCamposSaida;
  TbPrincipal.ActiveTab :=tbiLista;
end;

procedure TfrmSaidaGrupo.btnConfirmaAnimaisClick(Sender: TObject);
begin
 if vImportacao=1 then
 begin
   if cbxTipoArquivo.ItemIndex=0 then
   begin
    layMantemPeso.Visible   :=  rdAnimaisEmbarcadosOrigem.IsChecked;
    edtPesoMedSaida.Enabled := true;
   end;
   if cbxTipoArquivo.ItemIndex=1 then
   begin
    edtPesoMedSaida.Text    := '0';
    edtPesoMedSaida.Enabled := false;
   end;
   if cbxTipoArquivo.ItemIndex=2 then
   begin
    edtPesoMedSaida.Enabled := true;
    layMantemPeso.Visible   :=  rdAnimaisEmbarcadosOrigem.IsChecked;
   end;
   if cbxTipoArquivo.ItemIndex=3 then
   begin
    edtPesoMedSaida.Text    := '0';
    edtPesoMedSaida.Enabled := false;
   end;
 end
 else
 begin
  edtPesoMedSaida.Enabled := true;
 end;

 edtQtdAnimaisSaida.Text := lblTotalSelecionado.Text;
 TbPrincipal.ActiveTab   := tbiCad;
 laySaidaMorte.visible   := true;
end;

procedure TfrmSaidaGrupo.btnConfirmaClick(Sender: TObject);
begin
 TThread.CreateAnonymousThread(procedure
 begin
  TThread.Synchronize(nil, procedure
  begin
   layAguarde.Visible          := true;
   ServiceConf.AtualizaCarcaca;
   layAguarde.Visible          := false;
   MyMyShowMessage('Importação realizada com sucesso!',false);
   TbPrincipal.ActiveTab := tbiLista;
  end);
 end).Start;
end;

procedure TfrmSaidaGrupo.btnConfirmaLsClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmSaidaGrupo.btnConfirmarClick(Sender: TObject);
var
 dlg :TFrmmsgDlg;
begin
   if vAltera=1 then
   begin
     try
       serviceDB.AlteraSaidaAnimais(
       FormatDateTime('yyyy-mm-dd',serviceDB.qryGridSaidaAnimaisDATA_Saida.AsDateTime).QuotedString,
       serviceDB.qryGridLoteSaidaID.AsString,
       intToStr(vAltera),
       StringReplace(edtNovoValor.Text,',','.',[rfReplaceAll]));
     except

     end;
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Saída alterada com sucesso!!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       btnFiltarClick(Sender);
       edtPesoAtual.Text    := '';
       edtValorAtual.Text   := '';
       edtNovoPesoEnt.Text  := '';
       edtNovoValor.Text    := '';
       layAlteracao.Visible :=false;
     end);
   end;
   if vAltera=2 then
   begin
     try
     serviceDB.AlteraSaidaAnimais(
       FormatDateTime('yyyy-mm-dd',serviceDB.qryGridLoteSaidaDATA_EMBARQUE.AsDateTime).QuotedString,
       serviceDB.qryGridLoteSaidaID.AsString,
       intToStr(vAltera),
       StringReplace(edtNovoPesoEnt.Text,',','.',[rfReplaceAll]));
     except

     end;
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Saída alterada com sucesso!!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       btnFiltarClick(Sender);
       edtPesoAtual.Text    := '';
       edtValorAtual.Text   := '';
       edtNovoPesoEnt.Text  := '';
       edtNovoValor.Text    := '';
       layAlteracao.Visible :=false;
     end);
   end;

   if vAltera=3 then
   begin
     try
     serviceDB.AlteraSaidaAnimais(
       FormatDateTime('yyyy-mm-dd',serviceDB.qryGridLoteSaidaDATA_EMBARQUE.AsDateTime).QuotedString,
       serviceDB.qryGridLoteSaidaID.AsString,
       intToStr(vAltera),
       FormatDateTime('yyyy-mm-dd',edtNovaData.date).QuotedString);
     except

     end;
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Saida alterada com sucesso!!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       btnFiltarClick(Sender);
       edtPesoAtual.Text    := '';
       edtValorAtual.Text   := '';
       edtNovoPesoEnt.Text  := '';
       edtNovoValor.Text    := '';
       layAlteracao.Visible :=false;
     end);
   end;
end;

procedure TfrmSaidaGrupo.btnConfirmaSaidaClick(Sender: TObject);
var
 vValorVenda:String;
 I,X,vOK:integer;
 dlg :TFrmmsgDlg;
 vPesoSaida:string;
begin
 if cbxLoteSaida.ItemIndex=-1 then
 begin
   MyMyShowMessage('Iforme o lote de saida!',false);
   Exit;
 end;
 if (cbxTipoSaida.ItemIndex=0) and (vTransferencia=0) then
 begin
  if vImportacao=0 then
  begin
   if edtPesoMedSaida.Text.Length=0 then //sem importacao
   begin
    MyMyShowMessage('Informe o peso Medio dos animais!',false);
    edtPesoMedSaida.SetFocus;
    Exit;
   end;
  end//sem importacao
  else//importacaoo
  begin
   if(edtPesoMedSaida.Enabled)and(edtPesoMedSaida.Text.Length=0)then
   begin
     MyMyShowMessage('Informe o Peso Médio',false);
     edtPesoMedSaida.SetFocus;
     Exit;
   end;
  end;//importacaoo
  if(edtQtdAnimaisSaida.Text.Length=0) or (edtQtdAnimaisSaida.Text='0') then
  begin
    MyMyShowMessage('Informe a quantidade de animais!',false);
    Exit;
  end;
  if(edtDataSaida.Text.Length=0)then
  begin
    MyMyShowMessage('Informe a data de saída dos animais',false);
    Exit;
  end;
  if(edtDestinoVenda.Text.Length=0)then
  begin
    MyMyShowMessage('Informe o destino dos animais',false);
    Exit;
  end;
  if edtGTA.Text.Length>0 then
  begin
   if (StrToInt(edtQtdAnimaisSaida.Text)>vTotalAnimaisGTA) then
   begin
    MyMyShowMessage('Quantidade de animais nao pode ser maior que a GTA!!',false);
    Exit;
   end;
  end//com gta
  else
  begin
   if edtProdutorOrigem.Text.Length=0 then
   begin
    MyMyShowMessage('Informe o produror de Origem!!',false);
    Exit;
   end;
   if edtDestinoVenda.Text.Length=0 then
   begin
    MyMyShowMessage('Informe o produror de Destino!!',false);
    Exit;
   end;
  end;//sem gta
   vLoteSaida := cbxLoteSaida.Selected.Text;
//   := serviceDB.RetornaLoteSaida(
//    vProdutorOrigem,
//    vPrpriedadeOrigem,
//    vIdDestinoVenda,
//    vPrpriedadeDestino,
//    dateToStr(edtDataSaida.Date)
//   );
  try
   for X := 0 to gridAnimaisSelecionados.RowCount-1 do
   begin
    if vImportacao=0 then
     vPesoSaida := edtPesoMedSaida.Text
    else
    begin
     if cbxTipoArquivo.ItemIndex in[1,3] then
      vPesoSaida := StringReplace(gridAnimaisSelecionados.Cells[4,x],',','.',[rfReplaceAll])
     else
      vPesoSaida := edtPesoMedSaida.Text
    end;
    if edtValorSaida.Text.Length>0 then
    begin
     if rdValorCab.IsChecked then
      vValorVenda  := StringReplace(edtValorSaida.Text,',','.',[rfReplaceAll]);
     if rdValorArroba.IsChecked then
      vValorVenda  := StringReplace(FloatToStr(strToFloat(edtValorSaida.Text)*
       (strtoFloat(vPesoSaida)/30)),',','.',[rfReplaceAll]);
    end
    else
    begin
      vValorVenda  := '0';
    end;
    serviceDB.BaixaAnimalSaidaTipo(
     cbxTipoSaida.Selected.Text,
     gridAnimaisSelecionados.Cells[0,x],
     FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
     edtQtdAnimaisSaida.Text,
     StringReplace(vPesoSaida,',','.',[rfReplaceAll]),
     StringReplace(vValorVenda,',','.',[rfReplaceAll]),
     vIdDestinoVenda,
     '0',
     '0',
     vIdGTA,
     vLoteSaida,
     vProdutorOrigem,gridAnimaisSelecionados.Cells[3,x]);
   end;
   MyMyShowMessage('Saída Realizada com sucesso!!',false);
   LimpaCamposSaida;
   TbPrincipal.ActiveTab := tbilISTA;
   except
    on E : Exception do
     myMyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
  end;
 end;//venda
 if (cbxTipoSaida.ItemIndex=1) and (vTransferencia=0)  then
 begin
  if edtPesoMorte.Text.Length=0 then
   begin
     myMyShowMessage('Informe o peso Médio dos animais!',false);
     edtPesoMorte.SetFocus;
     Exit;
   end;
   if(edtQtdAnimaisSaida.Text.Length=0) or (edtQtdAnimaisSaida.Text='0') then
   begin
    myMyShowMessage('Informe a quantidade de animais',false);
    Exit;
   end;
   if(edtDataSaida.Text.Length=0)then
   begin
    myMyShowMessage('Informe a data de saída dos animais',false);
    Exit;
   end;
   if(edtCausaMorte.Text.Length=0)then
   begin
    myMyShowMessage('Informe a Causa morte dos animais',false);
    Exit;
   end;
   gridAnimaisSelecionados.SelectRow(0);
   for X := 0 to gridAnimaisSelecionados.RowCount-1 do
   begin
    try
      serviceDB.BaixaAnimalSaidaTipo(
       cbxTipoSaida.Selected.Text,
       gridAnimaisSelecionados.Cells[0,x],
       FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
       edtQtdAnimaisSaida.Text,
       StringReplace(edtPesoMorte.Text,',','.',[rfReplaceAll]),
       '0',
       '0',
       vIdMotivo,
       '0',
       '',
       vLoteSaida,
       vProdutorOrigem,gridAnimaisSelecionados.Cells[3,x]);
     except
     on E : Exception do
     begin
      myMyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
     end;
    end;
   end;
   myMyShowMessage('Morte Realizada com sucesso!',false);
   LimpaCamposSaida;
   laySuperior.Visible   := true;
   TbPrincipal.ActiveTab := tbilISTA;
 end;//morte
 if vTransferencia=1 then
 begin
  if(not rdPesoSaida.IsChecked)and(edtPesoMedSaida.Text.Length=0)then
  begin
   MyMyShowMessage('Informe o Peso Médio',false);
   edtPesoMedSaida.SetFocus;
   Exit;
  end;
  if(edtLocalDestino.Text.Length=0)then
  begin
   MyMyShowMessage('Informe o local destino',false);
   Exit;
  end;
  if (edtRebanhoDestino.Text.Length=0)then
  begin
   MyMyShowMessage('Informe o Rebanho destino',false);
   Exit;
  end;
  if(edtQtdAnimaisSaida.Text.Length=0) or (edtQtdAnimaisSaida.Text='0') then
  begin
    MyMyShowMessage('Informe a quantidade de animais!',false);
    Exit;
  end;
  if(edtDataSaida.Text.Length=0)then
  begin
    MyMyShowMessage('Informe a data de saída dos animais',false);
    Exit;
  end;
  if(edtDestinoVenda.Text.Length=0)then
  begin
    MyMyShowMessage('Informe o destino dos animais',false);
    Exit;
  end;
  if edtGTA.Text.Length>0 then
  begin
   if (StrToInt(edtQtdAnimaisSaida.Text)>vTotalAnimaisGTA) then
   begin
    MyMyShowMessage('Quantidade de animais nao pode ser maior que a GTA!!',false);
    Exit;
   end;
  end//com gta
  else
  begin
   if edtProdutorOrigem.Text.Length=0 then
   begin
    MyMyShowMessage('Informe o produror de Origem!!',false);
    Exit;
   end;
   if edtDestinoVenda.Text.Length=0 then
   begin
    MyMyShowMessage('Informe o produror de Destino!!',false);
    Exit;
   end;
  end;//sem gta
  if (rdAnimaisAtivos.IsChecked)and (chkNovoAnimal.IsChecked) then
   vLoteSaida := cbxLoteSaida.Selected.Text;
//   serviceDB.RetornaLoteSaida(
//    vProdutorOrigem,
//    vPrpriedadeOrigem,
//    vIdDestinoVenda,
//    vPrpriedadeDestino,
//    dateToStr(edtDataSaida.Date)
//   );
  try
   for X := 0 to gridAnimaisSelecionados.RowCount-1 do
   begin
    if serviceDB.VerificaAnimalExisteDestino(gridAnimaisSelecionados.Cells[1,x],gridAnimaisSelecionados.Cells[2,x],
    vPrpriedadeDestino)then // se o animal ja existe ativo no destino
    begin
     if vImportacao=1 then
     begin
      if cbxTipoArquivo.ItemIndex in[1,3] then
        vPesoSaida := StringReplace(gridAnimaisSelecionados.Cells[4,x],',','.',[rfReplaceAll])
      else
      begin
       if rdPesoSaida.IsChecked then
        vPesoSaida :=  StringReplace(gridAnimaisSelecionados.Cells[11,x],',','.',[rfReplaceAll])
       else
        vPesoSaida := edtPesoMedSaida.Text
      end;
     end
     else
      vPesoSaida := edtPesoMedSaida.Text;

     if edtValorSaida.Text.Length>0 then
     begin
      if rdValorCab.IsChecked then
       vValorVenda  := StringReplace(edtValorSaida.Text,',','.',[rfReplaceAll]);
      if rdValorArroba.IsChecked then
       vValorVenda  := StringReplace(floatToStr(strToFloat(edtValorSaida.Text)*
        (strtoFloat(vPesoSaida)/30)),',','.',[rfReplaceAll]);
     end
     else
       vValorVenda  := '0';
      if chkNovoAnimal.IsChecked then
      begin
         if rdAnimaisAtivos.IsChecked then
         begin
            serviceDB.BaixaAnimalSaidaTipo(
               cbxTipoSaida.Selected.Text,
               gridAnimaisSelecionados.Cells[0,x],
               FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
               edtQtdAnimaisSaida.Text,
               StringReplace(vPesoSaida,',','.',[rfReplaceAll]),
               StringReplace(vValorVenda,',','.',[rfReplaceAll]),
               vIdDestinoVenda,
               '0',
               '0',
               vIdGTA,
               vLoteSaida,
               vProdutorOrigem,gridAnimaisSelecionados.Cells[3,x]);
         end;//ativo na origem

        serviceDB.InsereAnimalTransferencia(
           gridAnimaisSelecionados.Cells[0,x],
           vIdCurral,
           FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
           gridAnimaisSelecionados.Cells[5,x],
           StringReplace(vPesoSaida,',','.',[rfReplaceAll]),
           vProdutorOrigem,
           serviceDB.vIdPropriedade,
           vIdDestinoVenda,
           vPrpriedadeDestino,
           vIdRebanhoDestino,
           StringReplace(vValorVenda,',','.',[rfReplaceAll]));
      end
      else
      begin
        serviceDB.AtualizaAnimal(
         gridAnimaisSelecionados.Cells[0,x],
         vPrpriedadeDestino,
         vIdDestinoVenda,
         vPesoSaida,
         vIdCurral,
         edtDataSaida.Text,
         vIdRebanhoDestino);
     end;
    end
    else
    begin
     MyMyShowMessage('Ja existe um animal ativo com essa identificação:'+
      #13+'Chip: '+gridAnimaisSelecionados.Cells[1,x]
      +#13+'SISBOV/NFC: '+gridAnimaisSelecionados.Cells[2,x],false);
     vOK :=1;
     Break;
    end;
   end;
   MyMyShowMessage('Saída Realizada com sucesso!!',false);
   LimpaCamposSaida;
   TbPrincipal.ActiveTab := tbilISTA;
  except
    on E : Exception do
     myMyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
  end;
 end;//transferencia
end;

procedure TfrmSaidaGrupo.btnDeletaFotoBombaClick(Sender: TObject);
begin
  ImgFoto1.bitmap := nil;
  vImg1 :='';
end;

procedure TfrmSaidaGrupo.btnEditarFotoBombaClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto1.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg1 := Base64FromBitmap(ImgFoto1.Bitmap);
 end;
end;

procedure TfrmSaidaGrupo.btnEditarFotoHodometroClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto3.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg3 := Base64FromBitmap(ImgFoto3.Bitmap);
 end;
end;

procedure TfrmSaidaGrupo.btnEditarFotoHorimetroClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto2.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg2 := Base64FromBitmap(ImgFoto2.Bitmap);
 end;
end;

procedure TfrmSaidaGrupo.btnEntGrupoClick(Sender: TObject);
begin
  vTransferencia    :=0;
  frmPrincipal.vMov :=1;
  layTipoSaidas.Visible := false;
  try
    frmSaidaInd := TfrmSaidaInd.Create(Self);
    frmSaidaInd.ShowModal;
  finally
    frmPrincipal.vMov :=0;
    frmSaidaInd.Free;
  end;
end;

procedure TfrmSaidaGrupo.btnEntIndClick(Sender: TObject);
begin
 CarregaComboLoteSaida;
 lblLoteSaida.Visible          := false;
 edtLoteSaida.Visible          := false;
 layTipoSaida.Enabled          := true;
 cbxTipoSaida.Enabled          := true;
 vTransferencia                :=0;
 lblCurralDestino.Visible      := false;
 edtLocalDestino.Text          := '';
 edtLocalDestino.Visible       := false;
 lblRebanhoDestino.Visible     := false;
 edtRebanhoDestino.Text        := '';
 edtRebanhoDestino.Visible     := false;
 frmPrincipal.vMov             := 1;
 laySuperior.Visible           := false;
 layDadosOrigemDestino.Visible := false;
 layQtdeCabecaData.Visible     := false;
 laySaidaMorte.Visible         := false;
 layMorte.Visible              := false;
 layVenda.Visible              := false;
 tbPrincipal.ActiveTab         := tbiCad;
 layTipoSaidas.Visible         := false;
 edtPesoMedSaida.Enabled       := true;
 cbxTipoSaida.ItemIndex        := -1;
end;

procedure TfrmSaidaGrupo.CarregaComboLoteSaida;
var
 vQryAux:TFDQuery;
 I :INTEGER;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 cbxLoteSaida.Items.Clear;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM LOTE_SAIDA');
   Add('WHERE STATUS=1 AND ID_ORIGEM='+serviceDB.vIdPropriedade);
   Add('AND ID_BASE_CAMPO='+frmPrincipal.vIdBaseCampo);
   Open;
   while not vQryAux.eof  do
   begin
     cbxLoteSaida.Items.Add(FieldByName('id').AsString);
     vQryAux.Next;
   end;
   for i := 0 to cbxLoteSaida.Count - 1 do
   begin
     cbxLoteSaida.ListBox.ListItems[i].TextSettings.Font.Size := 20;
     cbxLoteSaida.ListBox.ListItems[i].StyledSettings := cbxLoteSaida.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
   end;
 end;
 vQryAux.Free;
end;


procedure TfrmSaidaGrupo.btnEraPorVeiculoClick(Sender: TObject);
begin
 if vIdVeiculoEra.Length=0 then
 begin
  MyMyShowMessage('Selecione um veículo!',false);
  Exit;
 end
 else
 begin
   SerRel.AbreEraEmbarque(servicedb.qryGridLoteSaidaID.AsString,vIdVeiculoEra);
   if not serRel.qryRelEraEmbaque.IsEmpty then
    serRel.ppRepRelEraEmbaque.Print
   else
   begin
     MyMyShowMessage('Veiculo Sem dados para gerar esse relatorio!',false);
   end;
 end;
end;

procedure TfrmSaidaGrupo.btnExcluiGTAClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente Limpar a GTA Desse Veículo?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      try
        serviceDB.DesvinculaGTAVeiculo(vIdVeiculoEra,serviceDB.qryVeiculoGTASaidagtaid.asstring);
        serviceDB.AbreQryVeiculos(serviceDB.qryGridLoteSaidaID.AsString);
        serviceDB.AbreGtaVeiculoSaida(serviceDB.qryVeiculosID.AsString);
      except
      on E : Exception do
       begin
         MyMyShowMessage('Erro ao Desvincular Veiculo da GTA:'+E.Message,false);
       end;
      end;
    end;
  end);
end;

procedure TfrmSaidaGrupo.btnExportaGridClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
  if SaveDialog1.Execute then
   if TabControl1.TabIndex=0 then
    frmPrincipal.ExpTXT(qryListaAnimaisSaida,SaveDialog1.FileName)
   else
    frmPrincipal.ExpTXT(TRefugo,SaveDialog1.FileName);
  frmPrincipal.MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmSaidaGrupo.btnFiltarClick(Sender: TObject);
var
 i:integer;
 vMedPeso,vQtdeCab,vQtdeCabMairoZero:double;
begin
 vMedPeso := 0;
 vQtdeCab := 0;
 serviceDb.AbreQryLoteSaida(vPROPOrigemF,vPROPDestinoF,FormatDateTime('mm/dd/yyyy',dataInicioF.Date),FormatDateTime('mm/dd/yyyy',dataFimF.Date));

  vQtdeCabMairoZero:=0;
  for i := 0 to gridListasSaida.RowCount-1 do
  begin
    vMedPeso := vMedPeso + StrToFloat(gridListasSaida.Cells[3,i]);
    if StrToFloat(gridListasSaida.Cells[2,i])>0 then
     vQtdeCabMairoZero:=vQtdeCabMairoZero+1;
    vQtdeCab := vQtdeCab + StrToFloat(gridListasSaida.Cells[2,i]);
  end;
  lblTotalAnimais.Text :='Total de Animais: '+FloatToStr(vQtdeCab);
  lblMediaPeso.Text    :='Média de Peso: '+FormatFloat('####,0.00',(vMedPeso/ vQtdeCabMairoZero));
end;

procedure TfrmSaidaGrupo.btnFiltraAnimalClick(Sender: TObject);
begin
 with qryGridAnimal,qryGridAnimal.SQL do
 begin
   Clear;
   Add('select y.* from');
   Add('(select x.*,');
   Add('case');
   Add('when IDADE_ATUAL>0 and IDADE_ATUAL<=12 then   ''0 A 12''');
   Add('when IDADE_ATUAL>12 and IDADE_ATUAL<=24 then  ''13 A 24''');
   Add('when IDADE_ATUAL>24 and IDADE_ATUAL<=36 then  ''25 A 36''');
   Add('when IDADE_ATUAL>36 then   ''MAIS 36''');
   Add('END FAIXA');
   Add('from');
   Add('(select');
   Add('cu.id id_pasto,');
   Add('an.id animal_id,');
   Add('cu.codigo curral,');
   Add('an.identificacao_1 ident_1,');
   Add('an.identificacao_2 ident_2,');
   Add('r.ID IDRACA,');
   Add('r.nome raca,');
   Add('c.ID IDcategoria,');
   Add('c.nome categoria,');
   Add('an.data_proc data_ent,');
   Add('an.peso_entrada peso_Ent,');
   if vImportacao=1 then
   begin
    Add('coalesce(tmp.DATA_ENTRADA,an.data_ultimo_peso,cast(an.data_proc as date))dt_ultimo_peso,');
    Add('coalesce(tmp.peso_entrada,an.ultimo_peso,an.peso_entrada) ultimo_peso,');
   end
   else
   begin
    Add('coalesce(an.data_ultimo_peso,cast(an.data_proc as date))dt_ultimo_peso,');
    Add('coalesce(an.ultimo_peso,an.peso_entrada) ultimo_peso,');
   end;
   Add('g.serie||g.uf||g.numero gta,');
   Add('an.peso_estimado PESO_PROJ,');
   Add('datediff(month,an.data_nascimento,current_timestamp) IDADE_ATUAL');
   Add(',AXR.NOME REBANHO,');
   Add('an.ID_CONTRATO ID_CONTRATO,');
   Add('AN.idade_meses,');
   Add('AN.valor_compra,');
   Add('AN.id_local,');
   Add('AN.id_lote,');
   Add('AN.PESO_SAIDA');
   Add('from animal AN');
   Add('join raca R ON AN.id_raca=R.id');
   Add('join categorias c on an.id_categoria=c.id');
   Add('join currais cu on an.id_local=cu.id');
   Add('left join gta g on g.id=an.gta_id');
   Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=AN.ID_REBANHO');
   if vImportacao=1 then
   begin
    if cbxTipoArquivo.ItemIndex in[0,1] then
     Add('JOIN TMP_ANIMAL TMP ON TMP.identificacao_1=AN.identificacao_1');
    if cbxTipoArquivo.ItemIndex in[2,3] then
     Add('JOIN TMP_ANIMAL TMP ON TMP.identificacao_2=AN.identificacao_2');
   end;
   if vEmbarcadosOrigem=0 then
    Add('where AN.STATUS=1');
   if vEmbarcadosOrigem=1 then
    Add('where AN.STATUS=2');
   Add('and an.ID_PRODUTOR='+vProdutorOrigem);
   if vEmbarcadosOrigem=1 then
    Add('and an.ID_PRODUTOR_DESTINO_SAIDA='+vIdDestinoVenda);

   if cbxLocalAtual.ItemIndex>0 then
     Add('AND AN.ID_LOCAL='+vIdLocal);
   if cbxRebanhoLista.ItemIndex>-1 then
    Add('AND AXR.ID='+vIdRebanhoOrigem);
   if cbxFRaca.ItemIndex>-1 then
    Add('AND AN.ID_RACA='+vIdRacaFiltro);
   if cbxFCategoria.ItemIndex>-1 then
    Add('AND AN.ID_CATEGORIA='+vIdCatFiltro);
   if edtIdent1.Text.Length>0 then
    Add('AND AN.identificacao_1='+edtIdent1.Text.QuotedString);
   if edtIdent2.Text.Length>0 then
    Add('AND AN.identificacao_2='+edtIdent2.Text.QuotedString);
   if edtLoteSaida.Text.Length>0 then
    Add('AND AN.id_lotesaida='+edtLoteSaida.Text);
   Add(')x)y');
   if cbxFaixaIdade.ItemIndex>0 then
    Add('WHERE FAIXA='+cbxFaixaIdade.Selected.Text.QuotedString);
    qryGridAnimal.SQL.Text;
   Open;
 end;
 SomarColunasGridForn;
end;

procedure TfrmSaidaGrupo.btnImportaCarcacaClick(Sender: TObject);
begin
 layTipoIdentificacaoCarcaca.Visible := true;
end;

procedure TfrmSaidaGrupo.btnImportaPlanilhaClick(Sender: TObject);
begin
 layImportacao.Visible      := true;
end;

procedure TfrmSaidaGrupo.btnLimpaFiltrosClick(Sender: TObject);
begin
  edtIdent1.Text            :='';
  edtIdent2.Text            :='';
  cbxFRaca.ItemIndex        :=-1;
  cbxFaixaIdade.ItemIndex   :=-1;
  cbxFCategoria.ItemIndex   :=-1;
  cbxRebanhoLista.ItemIndex :=-1;
end;

procedure TfrmSaidaGrupo.btnLocalizarAnimaisClick(Sender: TObject);
begin
 AbreListaAnimaisLS(serviceDB.qryGridLoteSaidaID.AsString);
end;

procedure TfrmSaidaGrupo.btnRemove1Click(Sender: TObject);
begin
  if gridAnimaisSelecionados.Row>-1 then
   DeleteRow(gridAnimaisSelecionados.Row, gridAnimaisSelecionados);
  lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmSaidaGrupo.btnRemoveTudoClick(Sender: TObject);
var
 i:integer;
begin
  for I := 0 to gridAnimaisSelecionados.RowCount-1 do
  begin
   DeleteRow(I,gridAnimaisSelecionados);
  end;
  lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmSaidaGrupo.btnReportAnimaisLsClick(Sender: TObject);
begin
 ppReportListaAnimaisLS.Print;
end;

procedure TfrmSaidaGrupo.btnTranfPropriedadeClick(Sender: TObject);
begin
 vTransferencia                :=1;
 tbListaTipoSaida.ActiveTab  := tbiTipoAnimalTransf;
end;

procedure TfrmSaidaGrupo.btnVoltarClick(Sender: TObject);
begin
 TbPrincipal.ActiveTab := tbiLaudo;
end;

procedure TfrmSaidaGrupo.Button1Click(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto4.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg4 := Base64FromBitmap(ImgFoto4.Bitmap);
 end;
end;

function TfrmSaidaGrupo.Base64FromBitmap(vBitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
//    vBitmap.Resize(300,300);
    vBitmap.SaveToStream(Input);
    Input.Position := 0;
    Output := TStringStream.Create('', TEncoding.ASCII);
    try
      Soap.EncdDecd.EncodeStream(Input, Output);
      Result := Output.DataString;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

procedure TfrmSaidaGrupo.BMPtoJPG(InputBitmap: TBitmap; outputjpgfilename: string);
var
  Stream: TMemoryStream;
  Surf: TBitmapSurface;
begin
  Stream := TMemoryStream.Create;
  try
    Stream.Position := 0;
    Surf := TBitmapSurface.Create;
    try
      Surf.Assign(InputBitmap);
      if not TBitmapCodecManager.SaveToStream(Stream,Surf,'.png') then
      begin
        ShowMessage('Error saving Bitmap to png');
      end;
    finally
      Surf.Free;
    end;
    Stream.Position := 0;

    Stream.Position := 0;
    Stream.SaveToFile(outputjpgfilename);
  finally
    Stream.Free;
  end;
end;

procedure TfrmSaidaGrupo.Button2Click(Sender: TObject);
begin
  ImgFoto2.bitmap := nil;
  vImg2 :='';
end;

procedure TfrmSaidaGrupo.Button3Click(Sender: TObject);
begin
  ImgFoto3.bitmap := nil;
  vImg3 :='';
end;

procedure TfrmSaidaGrupo.Button4Click(Sender: TObject);
begin
  ImgFoto4.bitmap := nil;
  vImg4 :='';
end;

procedure TfrmSaidaGrupo.Button5Click(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto5.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg5 := Base64FromBitmap(ImgFoto5.Bitmap);
 end;
end;

procedure TfrmSaidaGrupo.Button6Click(Sender: TObject);
begin
  ImgFoto5.bitmap := nil;
  vImg5 :='';
end;

procedure TfrmSaidaGrupo.Button7Click(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto6.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg6 := Base64FromBitmap(ImgFoto6.Bitmap);
 end;
end;

procedure TfrmSaidaGrupo.Button8Click(Sender: TObject);
begin
  ImgFoto6.bitmap := nil;
  vImg6 :='';
end;

procedure TfrmSaidaGrupo.InfoGridVeiculos;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
  Sum1: Double;
  Val1: Double;
  Sum2: Double;
  Val2: Double;
begin
  Sum := 0;
  Sum1:= 0;
  I   := 0;
  for I := 0 to gridVeiculos.RowCount-1 do
  begin
   if TryStrToFloat(gridVeiculos.Cells[3,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(gridVeiculos.Cells[4,I],Val1) then
    Sum1 := Sum1 + Val1;
  end;
  if I>0 then
  begin
   lblQtdeVeiculos.Text              := IntToStr(gridVeiculos.RowCount);
   lblCapacidadeTotal.Text           := intToStr(trunc(sum));
   lblLotacaoTotal.Text              := intToStr(trunc(sum1));
  end
  else
  begin
    lblQtdeVeiculos.Text              := IntToStr(gridVeiculos.RowCount);
    lblCapacidadeTotal.Text           := '0';
    lblLotacaoTotal.Text              := '0';
  end;
end;

procedure TfrmSaidaGrupo.CarregaComboDestino;
var
 vQryAux:TFDQuery;
begin
 TThread.CreateAnonymousThread(
 procedure
 begin
  TThread.Synchronize( nil,
  procedure
  begin
   cbxProdutorOrigem.Items.Clear;
   cbxDestino.Items.Clear;
   cbxProdutorOrigem.Items.Add('Todos');
   cbxDestino.Items.Add('Todos');
   vQryAux:=TFDQuery.Create(self);
   vQryAux.Connection := serviceDB.fCon;
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('SELECT * FROM PRODUTORES');
     Add('WHERE id_propriedade='+serviceDB.vIdPropriedade);
     Open;
     while not vQryAux.eof do
     begin
       cbxProdutorOrigem.Items.AddObject(vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('ID').AsInteger));
       vQryAux.Next;
     end;

     Clear;
     Add('SELECT * FROM propriedades ');
     Add('WHERE id<>'+serviceDB.vIdPropriedade);
     Open;
     while not vQryAux.eof do
     begin
       cbxDestino.Items.AddObject(vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('ID').AsInteger));
       vQryAux.Next;
     end;
      cbxDestino.ItemIndex :=0;
      cbxProdutorOrigem.ItemIndex :=0;
   end;
   vQryAux.Free;
  end);
 end).Start;
end;


procedure TfrmSaidaGrupo.CarregaComboLocalAtaulF;
begin
 serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'');
 cbxLocalAtual.Items.Clear;
 cbxLocalOrigem.Items.Clear;
 serviceDB.TableCurrais.first;
 cbxLocalAtual.Items.Add('Todos');
 cbxLocalOrigem.Items.Add('Todos');
 while not serviceDB.TableCurrais.eof do
 begin
   cbxLocalAtual.Items.AddObject(serviceDB.TableCurraisCODIGO.AsString,TObject(serviceDB.TableCurraisID.AsInteger));
   cbxLocalOrigem.Items.AddObject(serviceDB.TableCurraisCODIGO.AsString,TObject(serviceDB.TableCurraisID.AsInteger));
   serviceDB.TableCurrais.Next;
 end;
 cbxLocalOrigem.ItemIndex :=0;
 cbxLocalAtual.ItemIndex :=0;
end;

procedure TfrmSaidaGrupo.CarregaVeiculosLS(LS: STRING);
var
 vQryAux:TFDQuery;
 I :INTEGER;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 cbxVeiculos.Items.Clear;
 cbxVeiculos.Items.Add('Todos');
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM VEICULOS_EMBARQUE');
   Add('WHERE STATUS=1 AND ID_LOTESAIDA='+ls);
   Open;
   while not vQryAux.eof  do
   begin
     cbxVeiculos.Items.AddObject(vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('ID').AsInteger));
     vQryAux.Next;
   end;
   for i := 0 to cbxVeiculos.Count - 1 do
   begin
     cbxVeiculos.ListBox.ListItems[i].TextSettings.Font.Size := 20;
     cbxVeiculos.ListBox.ListItems[i].StyledSettings := cbxVeiculos.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
   end;
 end;
 cbxVeiculos.ItemIndex:=0;
end;

procedure TfrmSaidaGrupo.cbxCatListaChange(Sender: TObject);
begin
 if cbxCatLista.ItemIndex>-1 then
  vIdCatFiltro   := IntToStr(Integer(cbxCatLista.Items.Objects[cbxCatLista.ItemIndex]))
 else
  vIdCatFiltro   :='0';
end;

procedure TfrmSaidaGrupo.cbxDestinoChange(Sender: TObject);
begin
 if cbxDestino.ItemIndex>0 then
  vPROPDestinoF := IntToStr(Integer(cbxDestino.Items.Objects[cbxDestino.ItemIndex]))
 else
  vPROPDestinoF :='';
end;

procedure TfrmSaidaGrupo.cbxFCategoriaChange(Sender: TObject);
begin
 if cbxFCategoria.ItemIndex>-1 then
  vIdCatFiltro   := LinkFillControlToFieldID3.BindList.GetSelectedValue.AsString
 else
  vIdCatFiltro   :='0';
end;

procedure TfrmSaidaGrupo.cbxFiltraLogChange(Sender: TObject);
begin
 if cbxFiltraLog.ItemIndex>-1 then
 begin
   ServiceConf.TImportaCarcaca.Filtered := false;
   if cbxFiltraLog.ItemIndex=0 then
    ServiceConf.TImportaCarcaca.Filter   := 'CODIGO_ANIMAL IS NULL';
   if cbxFiltraLog.ItemIndex=1 then
    ServiceConf.TImportaCarcaca.Filter   := 'CODIGO_ANIMAL IS NOT NULL';
   ServiceConf.TImportaCarcaca.Filtered := true;
 end
 else
 begin
   ServiceConf.TImportaCarcaca.Filtered := false;
   ServiceConf.TImportaCarcaca.Close;
   ServiceConf.TImportaCarcaca.Open;
 end;
end;

procedure TfrmSaidaGrupo.cbxFRacaChange(Sender: TObject);
begin
 if cbxFRaca.ItemIndex>-1 then
  vIdRacaFiltro   := LinkFillControlToFieldNOME.BindList.GetSelectedValue.AsString
 else
  vIdRacaFiltro   :='0';
end;

procedure TfrmSaidaGrupo.cbxLocalAtualChange(Sender: TObject);
begin
  if cbxLocalAtual.ItemIndex>0 then
   vIdLocal := IntToStr(Integer(cbxLocalAtual.Items.Objects[cbxLocalAtual.ItemIndex]));
end;

procedure TfrmSaidaGrupo.cbxLocalOrigemChange(Sender: TObject);
begin
  if cbxLocalOrigem.ItemIndex>0 then
   vIdLocal := IntToStr(Integer(cbxLocalOrigem.Items.Objects[cbxLocalOrigem.ItemIndex]))
  else
   vIdLocal := '';
end;

procedure TfrmSaidaGrupo.cbxProdutorOrigemChange(Sender: TObject);
begin
if cbxProdutorOrigem.ItemIndex>0 then
  vPROPOrigemF := IntToStr(Integer(cbxProdutorOrigem.Items.Objects[cbxProdutorOrigem.ItemIndex]))
else
 vPROPOrigemF :='';
end;

procedure TfrmSaidaGrupo.cbxRacaListaChange(Sender: TObject);
begin
 if cbxRacaLista.ItemIndex>-1 then
  vIdRacaFiltro   := IntToStr(Integer(cbxRacaLista.Items.Objects[cbxRacaLista.ItemIndex]))
 else
  vIdRacaFiltro   :='0';
end;

procedure TfrmSaidaGrupo.cbxRebanhoListaChange(Sender: TObject);
begin
 if cbxRebanhoLista.ItemIndex>-1 then
  vIdRebanhoOrigem   := LinkFillControlToFieldID2.BindList.GetSelectedValue.AsString
 else
  vIdRebanhoOrigem   :='';
end;

procedure TfrmSaidaGrupo.cbxTipoSaidaChange(Sender: TObject);
begin
   Label105.Visible              := cbxTipoSaida.ItemIndex=0;
   cbxLoteSaida.Visible          := cbxTipoSaida.ItemIndex=0;
   layDadosOrigemDestino.Visible := false;
   layMorte.Visible              := cbxTipoSaida.ItemIndex=1;
   layVenda.Visible              := cbxTipoSaida.ItemIndex=0;
   layGTA.Visible                := cbxTipoSaida.ItemIndex=0;

   if cbxTipoSaida.ItemIndex=1 then
    layProdutorOrigem.Margins.Left := 0
   else
    layProdutorOrigem.Margins.Left := 20;
   layProdutorOrigem.Visible     := true;
   layProdutorDestino.Visible    := cbxTipoSaida.ItemIndex=0;
   layDadosOrigemDestino.Visible := true;
end;

procedure TfrmSaidaGrupo.cbxVeiculosChange(Sender: TObject);
begin
 if cbxVeiculos.ItemIndex>0 then
  vIdVeiculoLista := IntToStr(Integer(cbxVeiculos.Items.Objects[cbxVeiculos.ItemIndex]))
 else
  vIdVeiculoLista := '';
end;

procedure TfrmSaidaGrupo.DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
var
  i, j: Integer;
begin
  with AGrid do
  begin
    if (ARowIndex = RowCount) then
      RowCount := RowCount - 1
    else
    begin
      for i := ARowIndex to RowCount -1 do
        for j := 0 to ColumnCount-1 do
          Cells[j, i] := Cells[j, i + 1];

      RowCount := RowCount - 1;
    end;
  end;
end;

procedure TfrmSaidaGrupo.ClearEditButton8Click(Sender: TObject);
begin
 edtGTA.Text               :='';
 edtProdutorOrigem.Text    :='';
 edtDestinoVenda.Text      :='';
 edtProdutorOrigem.Enabled := true;
 edtDestinoVenda.Enabled   := true;
 vIdGTA                    :='';
end;

function TfrmSaidaGrupo.CountPos(const subtext: string;
  Text: string): Integer;
begin
 if (Length(subtext) = 0) or (Length(Text) = 0) or (Pos(subtext, Text) = 0)
  then
    Result := 0
  else
    Result := (Length(Text) - Length(StringReplace(Text, subtext, '',
      [rfReplaceAll]))) div Length(subtext);
end;

procedure TfrmSaidaGrupo.EditButton1Click(Sender: TObject);
begin

  if (not chkPasto.IsChecked) and (not chkConf.IsChecked) then
  begin
    MyMyShowMessage('Infome se é Pasto ou confinamento!',false);
    Exit;
  end;
   if chkPasto.IsChecked then
    serviceDB.AbreQryCurrais(vPrpriedadeDestino,'0');
   if chkConf.IsChecked then
    serviceDB.AbreQryCurrais(vPrpriedadeDestino,'1');
    frmPrincipal.vMov :=5;
    frmCadCurral := TfrmCadCurral.Create(nil);
    try
      frmCadCurral.ShowModal;
    finally
     if serviceDB.TableCurraisID.AsString.Length>0 then
     begin
      edtLocalDestino.Text          := serviceDB.TableCurraisCODIGO.AsString;
      vIdCurral                     := serviceDB.TableCurraisID.AsString;
      vTipoCurral                   := serviceDB.TableCurraisTIPO.AsString;
      vIdLote                       := ServiceConf.RetornaLoteLocal(vIdCurral);
      frmCadCurral.Free;
     end
     else
      frmCadCurral.Free;
    end;
end;

procedure TfrmSaidaGrupo.EditButton2Click(Sender: TObject);
begin
    frmCadRebanho := TfrmCadRebanho.Create(nil);
    try
      frmCadRebanho.ShowModal;
    finally
     if serviceDBN.TAuxRebanhoNOME.AsString.Length>0 then
     begin
      edtRebanhoDestino.Text        := serviceDBN.TAuxRebanhoNOME.AsString;
      vIdRebanhoDestino              := serviceDBN.TAuxRebanhoID.AsString;
      frmCadRebanho.Free;
     end
     else
      frmCadRebanho.Free;
    end;
end;

procedure TfrmSaidaGrupo.EditButton3Click(Sender: TObject);
var
 Txt         : TextFile;
 Quebra      : TStringList;
 Arq,Identificacao1,Data,peso: String;
 vData:TDateTime;
 I,Contador,Irregular,colunasCount:integer;
 vQryAux:TFDQuery;
begin
 vImportacao                   :=0;
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 Quebra  := TStringList.Create;
 if SaveDialog2.Execute then
 begin
   I:=0;
   edtArquivo.Text :=SaveDialog2.FileName;
   AssignFile(Txt,edtArquivo.Text);
   reset(txt);
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('DELETE FROM TMP_ANIMAL');
     ExecSQL;
       while not Eoln(txt) do
       begin
        Quebra.Clear;
        Readln(txt,Arq);
        ExtractStrings([';'],[],pchar(Arq),Quebra);
          if i>0 then
          begin
             if(cbxTipoArquivo.ItemIndex=1) or (cbxTipoArquivo.ItemIndex=3) then
             begin
              if CountPos(';',arq)<1 then
              begin
                MyMyShowMessage('Arquivo deve conter no minimo duas colulas (IDENTIFICAÇÃO|PESO)',false);
                break;
              end;
             end;
             Identificacao1 := Quebra.Strings[0];
             if(cbxTipoArquivo.ItemIndex=1) or (cbxTipoArquivo.ItemIndex=3) then
              peso           := StringReplace(Quebra.Strings[1],',','.',[rfReplaceAll]);
             if (Identificacao1.Length>0) then
             begin
               with vQryAux,vQryAux.SQL do
               begin
                 Clear;
                 Add('INSERT INTO TMP_ANIMAL(');
                 if cbxTipoArquivo.ItemIndex=0 then
                  Add('IDENTIFICACAO_1');
                 if cbxTipoArquivo.ItemIndex=2 then
                  Add('IDENTIFICACAO_2');
                 if cbxTipoArquivo.ItemIndex=1 then
                  Add('IDENTIFICACAO_1,PESO_ENTRADA');
                 if cbxTipoArquivo.ItemIndex=3 then
                  Add('IDENTIFICACAO_2,PESO_ENTRADA');
                 Add(')VALUES(');
                  Add(Identificacao1.QuotedString);
                 if(cbxTipoArquivo.ItemIndex=1) or (cbxTipoArquivo.ItemIndex=3) then
                  Add(','+peso);
                 Add(')');
                 try
                  ExecSQL;
                 except
                   on e : Exception do
                     ShowMessage('Erro ao Atualizar Configuracao: '+e.Message)
                 end
               end;
             end;
          end;
        inc(i);
       end;
       if I>0 then
       begin
        layImportacao.Visible := false;
         vImportacao           := 1;
           btnFiltraAnimalClick(Sender);
           SomarColunasGridForn;
       end;
   end;
 end;
end;

procedure TfrmSaidaGrupo.edtQtdAnimaisSaidaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
if (keyChar in ['0'..'9'] = false)  then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmSaidaGrupo.edtRebanhoDestinoClick(Sender: TObject);
begin
 EditButton2Click(Sender);
end;

procedure TfrmSaidaGrupo.edtBuscaProdutorDestinoClick(Sender: TObject);
begin
   serviceDB.TablePropriedades.Close;
   serviceDB.TablePropriedades.Open;
   serviceDB.TablePropriedades.Filtered := false;
   if vTransferencia=1 then
    serviceDB.TablePropriedades.Filter   := 'propria=1 and id<>'+serviceDB.vIdPropriedade
   else
    serviceDB.TablePropriedades.Filter   := 'id<>'+serviceDB.vIdPropriedade;
   serviceDB.TablePropriedades.Filtered := true;
   serviceDB.TableProdutores.Open;
  frmCadPropriedades := TfrmCadPropriedades.Create(nil);
  try
    frmPrincipal.vCadGTA :=true;
    frmCadPropriedades.ShowModal;
  finally
    vIdDestinoVenda              := serviceDB.TableProdutoresID.AsString;
    edtDestinoVenda.Text         := serviceDB.TableProdutoresNOME.AsString;
    vPrpriedadeDestino           := serviceDB.TableProdutoresID_PROPRIEDADE.AsString;
    layQtdeCabecaData.Visible    := true;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmSaidaGrupo.edtBuscaProdutorOrigemClick(Sender: TObject);
begin
   serviceDB.TablePropriedades.Close;
   serviceDB.TablePropriedades.Open;
   serviceDB.TablePropriedades.Filtered := false;
   serviceDB.TablePropriedades.Filter   := 'id='+serviceDB.vIdPropriedade;
   serviceDB.TablePropriedades.Filtered := true;
   serviceDB.TableProdutores.Open;
  frmCadPropriedades := TfrmCadPropriedades.Create(nil);
  try
    frmPrincipal.vCadGTA :=true;
    frmCadPropriedades.ShowModal;
  finally
    vProdutorOrigem              := serviceDB.TableProdutoresID.AsString;
    edtProdutorOrigem.Text       := serviceDB.TableProdutoresNOME.AsString;
    vPrpriedadeOrigem            := serviceDB.TableProdutoresID_PROPRIEDADE.AsString;
    if cbxTipoSaida.ItemIndex=1 then
    begin
     layQtdeCabecaData.Visible  := true;
     laySaidaMorte.Visible      := true;
    end;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmSaidaGrupo.edtCapatazEPPClick(Sender: TObject);
begin
  frmCadCapataz := TfrmCadCapataz.Create(nil);
  try
    frmCadCapataz.ShowModal;
  finally
    edtCapatazEPP.Text      := ServiceNew.CAPATAZNOME.AsString;
    edtCapatazEPP.TagString := ServiceNew.CAPATAZID.AsString;
  end;
end;

procedure TfrmSaidaGrupo.edtDestinoVendaClick(Sender: TObject);
begin
 edtBuscaProdutorDestinoClick(Sender);
end;

procedure TfrmSaidaGrupo.edtDesvinculaGAClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente alterar a GTA Desse Veículo?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      try
        serviceDB.DesvinculaGTAVeiculo(serviceDB.qryVeiculosLotadosID.AsString,
           '');
        serviceDB.vGeraAnexoSaida :=1;
        serviceDB.AbreQryGTASaida(serviceDB.qryGridLoteSaidaID_PRODUTOR_ORIGEM.AsString,
        serviceDB.qryGridLoteSaidaID_PRODUTOR_DESTINO.AsString);
        frmCadGTA := TfrmCadGTA.Create(Self);
        try
          frmCadGTA.cbxTipoGTAF.ItemIndex:=2;
          frmCadGTA.cbxTipoGTAF.Enabled  :=false;
          frmCadGTA.ShowModal;
        finally
          if frmCadGTA.vIdGtaSelecionada.Length>0 then
           serviceDB.AtualizaVeiculosSaida(serviceDB.qryVeiculosLotadosID.AsString,
           frmCadGTA.vIdGtaSelecionada,serviceDB.TableGTATOTAL_GTA.AsString);

          serviceDB.AbreQryVeiculosAnexos(serviceDB.qryGridLoteSaidaID.AsString);
          InfoGridVeiculos;
          serviceDB.vGeraAnexoSaida :=0;
          frmCadGTA.Free;
        end;
      except
      on E : Exception do
       begin
         myMyShowMessage('Erro ao Desvincular Veiculo da GTA:'+E.Message,false);
       end;
      end;
    end;
  end);
end;

procedure TfrmSaidaGrupo.edtGTAClick(Sender: TObject);
begin
 btnBuscaGTAClick(Sender);
end;

procedure TfrmSaidaGrupo.edtLocalDestinoClick(Sender: TObject);
begin
 EditButton1Click(Sender);
end;

procedure TfrmSaidaGrupo.edtPesoMedSaidaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
if ((keyChar in ['0'..'9',','] = false)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmSaidaGrupo.edtProdutorOrigemClick(Sender: TObject);
begin
 edtBuscaProdutorOrigemClick(Sender);
end;

procedure TfrmSaidaGrupo.SearchEditButton1Click(Sender: TObject);
begin
 MyMyShowMessage('Selecione o Animal',false);
 TbPrincipal.ActiveTab := tbiListaAnimaisLs;
 vSelecionaLaudo     :=1;
 TbPrincipal.ActiveTab := tbiListaAnimaisLs;
end;

procedure TfrmSaidaGrupo.SearchEditButton2Click(Sender: TObject);
begin
  frmCadVeterinario := TfrmCadVeterinario.Create(nil);
  try
    frmCadVeterinario.ShowModal;
  finally
    edtVeterinario.Text      := ServiceNew.MEDICO_VETERINARIONOME.AsString;
    edtVeterinario.TagString := ServiceNew.MEDICO_VETERINARIOID.AsString;
  end;
end;

procedure TfrmSaidaGrupo.SearchEditButton3Click(Sender: TObject);
begin
  frmCadOperacao := TfrmCadOperacao.Create(nil);
  try
    frmCadOperacao.ShowModal;
  finally
    edtOperacaoAtual.Text      := ServiceNew.OPERACAONOME.AsString;
    edtOperacaoAtual.TagString := ServiceNew.OPERACAOID.AsString;
  end;
end;

procedure TfrmSaidaGrupo.SearchEditButton4Click(Sender: TObject);
begin
  frmCadCapataz := TfrmCadCapataz.Create(nil);
  try
    frmCadCapataz.ShowModal;
  finally
    edtCapataz.Text      := ServiceNew.CAPATAZNOME.AsString;
    edtCapataz.TagString := ServiceNew.CAPATAZID.AsString;
  end;
end;

procedure TfrmSaidaGrupo.SearchEditButton5Click(Sender: TObject);
begin
 frmCadGerenteOperacional := TfrmCadGerenteOperacional.Create(nil);
  try
    frmCadGerenteOperacional.ShowModal;
  finally
    edtGerenteOP.Text      := ServiceNew.GERENTE_OPERACIONALNOME.AsString;
    edtGerenteOP.TagString := ServiceNew.GERENTE_OPERACIONALID.AsString;
  end;
end;

procedure TfrmSaidaGrupo.SearchEditButton6Click(Sender: TObject);
begin
 frmCadRespRastreabilidade := TfrmCadRespRastreabilidade.Create(nil);
  try
    frmCadRespRastreabilidade.ShowModal;
  finally
    edtResponsavelRastreabilidaed.Text      := ServiceNew.RESPONSAVEL_RASTREABILIDADENOME.AsString;
    edtResponsavelRastreabilidaed.TagString := ServiceNew.RESPONSAVEL_RASTREABILIDADEID.AsString;
  end;
end;

procedure TfrmSaidaGrupo.SearchEditButton7Click(Sender: TObject);
begin
 frmCadCapataz := TfrmCadCapataz.Create(nil);
  try
    frmCadCapataz.ShowModal;
  finally
    edtCapatazEPP.Text      := ServiceNew.CAPATAZNOME.AsString;
    edtCapatazEPP.TagString := ServiceNew.CAPATAZID.AsString;
  end;
end;

procedure TfrmSaidaGrupo.SomarColunasGridForn;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
  Sum1: Double;
  Val1: Double;
begin
  Sum := 0;
  Sum1:= 0;
  for I := 0 to gridAnimais.RowCount-1 do
  begin
   if TryStrToFloat(gridAnimais.Cells[7,I],Val) then
    Sum := Sum + Val;
  end;
  lblTotalAnimaisGrid.Text :=  IntToStr(gridAnimais.RowCount);
  lblMediaPesoGrid.Text        := FormatFloat('0.00',(Sum/gridAnimais.RowCount));
end;

procedure TfrmSaidaGrupo.SpeedButton1Click(Sender: TObject);
var
 dlg :TFrmmsgDlg;
begin
  if PesquisaIDGrid(qryGridAnimalANIMAL_ID.AsString)>0 then
  begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Animal ja selecionado!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
     end);
     Exit;
  end
  else
  begin
    gridAnimaisSelecionados.RowCount            :=gridAnimaisSelecionados.RowCount+1;
    gridAnimaisSelecionados.Cells[0,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalANIMAL_ID.AsString;
    gridAnimaisSelecionados.Cells[1,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIDENT_1.AsString;
    gridAnimaisSelecionados.Cells[2,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIDENT_2.AsString;
    gridAnimaisSelecionados.Cells[3,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalID_PASTO.AsString;
    gridAnimaisSelecionados.Cells[4,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalULTIMO_PESO.AsString;
    gridAnimaisSelecionados.Cells[5,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIDADE_ATUAL.AsString;
    gridAnimaisSelecionados.Cells[6,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIDRACA.AsString;
    gridAnimaisSelecionados.Cells[7,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIdCATEGORIA.AsString;
    gridAnimaisSelecionados.Cells[8,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalID_CONTRATO.AsString;
    gridAnimaisSelecionados.Cells[9,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalID_LOTE.AsString;
    gridAnimaisSelecionados.Cells[10,gridAnimaisSelecionados.RowCount-1]    := qryGridAnimalVALOR_COMPRA.AsString;
    gridAnimaisSelecionados.Cells[11,gridAnimaisSelecionados.RowCount-1]    := qryGridAnimalPESO_SAIDA.AsString;

    lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
    gridAnimais.SelectRow(gridAnimais.Row+1);
  end;
end;

procedure TfrmSaidaGrupo.SpeedButton2Click(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro:='';
 if edtChipLaudoF.Text.Length>0 then
  vFiltro := vFiltro+' AND A.IDENTIFICACAO_1='+edtChipLaudoF.Text;
 if edtNCFLaudoF.Text.Length>0 then
   vFiltro := vFiltro+' AND A.IDENTIFICACAO_2='+edtNCFLaudoF.Text;
 vFiltro := vFiltro+' AND A.DATA_SAIDA BETWEEN '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtPerLaudoDE.Date))+' and '+
  QuotedStr(FormatDateTime('mm/dd/yyyy',edtPerLaudoATE.Date));
 ServiceNew.AbreLaudoVenda(vFiltro);
end;

procedure TfrmSaidaGrupo.SpeedButton3Click(Sender: TObject);
var
 i:integer;
begin
  for I := 0 to gridAnimais.RowCount-1 do
  begin
   if PesquisaIDGrid(gridAnimais.Cells[0,I])=0 then
   begin
      gridAnimaisSelecionados.RowCount                                        := I+1;
      gridAnimaisSelecionados.Cells[0,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[0,I];
      gridAnimaisSelecionados.Cells[1,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[1,I];
      gridAnimaisSelecionados.Cells[2,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[2,I];
      gridAnimaisSelecionados.Cells[3,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[10,I];
      gridAnimaisSelecionados.Cells[4,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[7,I];
      gridAnimaisSelecionados.Cells[5,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[9,I];
      gridAnimaisSelecionados.Cells[6,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[11,I];
      gridAnimaisSelecionados.Cells[7,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[12,I];
      gridAnimaisSelecionados.Cells[8,gridAnimaisSelecionados.RowCount-1]     := gridAnimais.Cells[13,I];
      gridAnimaisSelecionados.Cells[10,gridAnimaisSelecionados.RowCount-1]    := gridAnimais.Cells[15,I];
      gridAnimaisSelecionados.Cells[11,gridAnimaisSelecionados.RowCount-1]    := qryGridAnimalPESO_SAIDA.AsString;
      lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
      gridAnimais.SelectRow(I+1);
   end;
  end;
end;

procedure TfrmSaidaGrupo.GruidListaAnimaisLSCellClick(const Column: TColumn;
  const Row: Integer);
begin
 layTipoSaidas.Visible := false;
 if vSelecionaLaudo=1 then
 begin
   if qryListaAnimaisSaidaIDENTIFICACAO_1.AsString.Length>0 then
     edtAnimal.Text :=qryListaAnimaisSaidaIDENTIFICACAO_1.AsString
   else
     edtAnimal.Text :=qryListaAnimaisSaidaIDENTIFICACAO_2.AsString;

   edtAnimal.TagString:= qryListaAnimaisSaidaID.AsString;

   lblDataMorte.Text  := qryListaAnimaisSaidaDATA_SAIDA.AsString;
   TbPrincipal.ActiveTab := tbiNovoLaudo;
 end;
end;

procedure TfrmSaidaGrupo.edtArquivoCarcacaClick(Sender: TObject);
begin
 btnBuscaArquivoCarcacaClick(Sender);
end;

procedure TfrmSaidaGrupo.edtBuscaAnimalClick(Sender: TObject);
var
 i:integer;
 dlg :TFrmmsgDlg;
begin
 edtLoteSaida.Text         := '';
 gridAnimais.RowCount      :=0;
 vIdGTA                    :='';
 edtIdent1.Text            :='';
 edtIdent2.Text            :='';
 cbxFRaca.ItemIndex        :=-1;
 cbxFaixaIdade.ItemIndex   :=-1;
 cbxFCategoria.ItemIndex   :=-1;
 cbxRebanhoLista.ItemIndex :=-1;
 ICount :=0;
 serviceDB.TableRacas.Close;
 serviceDB.TableRacas.Open;
 serviceDB.TableCategorias.Close;
 serviceDB.TableCategorias.Open;
 serviceDBN.TAuxRebanho.Close;
 serviceDBN.TAuxRebanho.Open;
 CarregaComboLocalAtaulF;
 gridAnimaisSelecionados.RowCount :=0;
// with qryGridAnimal,qryGridAnimal.SQL do
// begin
//   Clear;
//   Add('select x.*,');
//   Add('case');
//   Add('when IDADE_ATUAL>0 and IDADE_ATUAL<=12 then   ''0 A 12''');
//   Add('when IDADE_ATUAL>12 and IDADE_ATUAL<=24 then  ''13 A 24''');
//   Add('when IDADE_ATUAL>24 and IDADE_ATUAL<=36 then  ''25 A 36''');
//   Add('when IDADE_ATUAL>36 then   ''MAIS 36''');
//   Add('END FAIXA');
//   Add('from');
//   Add('(select');
//   Add('an.id animal_id,');
//   Add('cu.id id_pasto,');
//   Add('cu.codigo curral,');
//   Add('an.identificacao_1 ident_1,');
//   Add('an.identificacao_2 ident_2,');
//   Add('r.nome raca,');
//   Add('c.nome categoria,');
//   Add('an.data_proc data_ent,');
//   Add('an.peso_entrada peso_Ent,');
//   Add('coalesce(an.data_ultimo_peso,cast(an.data_proc as date))dt_ultimo_peso,');
//   Add('coalesce(an.ultimo_peso,an.peso_entrada) ultimo_peso,');
//   Add('g.serie||g.uf||g.numero gta,');
//   Add('(select * from  RETORNA_PESO_MEDIO_ATUAL_IND(current_date,an.id)) PESO_PROJ,');
//   Add('datediff(month,an.data_nascimento,current_timestamp) IDADE_ATUAL');
//   Add('from animal AN');
//   Add('join raca R ON AN.id_raca=R.id');
//   Add('join categorias c on an.id_categoria=c.id');
//   Add('join currais cu on an.id_local=cu.id');
//   Add('left join gta g on g.id=an.gta_id');
//   Add('where AN.STATUS=1');
//   Add('and an.ID_PRODUTOR='+vProdutorOrigem);
//   Add(')x');
//   Open;
// end;
 SomarColunasGridForn;
 TbPrincipal.ActiveTab := tbiListaAnimal;
end;

procedure TfrmSaidaGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 vRelSaida         :=0;
 serviceDBN.VerificaDestinoPlanNutricional;
 frmPrincipal.vMov :=0;
end;

procedure TfrmSaidaGrupo.FormCreate(Sender: TObject);
begin
 laySaidaMorte.Visible   := false;
 CarregaComboDestino;
 dataInicioF.Date        := date-7;
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiLista;
 layAlteracao.Visible    :=false;
 layTipoSaidas.Visible   :=false;
end;

procedure TfrmSaidaGrupo.FormShow(Sender: TObject);
begin
  layValidaSenha.Visible             := false;
  vSelecionaLaudo                     :=0;
  layIncluiCarcaca.Visible            := false;
  layTipoIdentificacaoCarcaca.Visible := false;
  tbListaTipoSaida.TabPosition:= TTabPosition.None;
  tbListaTipoSaida.ActiveTab  := tbiTipoSaida;
  btnTranfPropriedade.Visible := serviceDB.vRastreada='0';
  layImportacao.Visible       := false;
  layAguarde.Visible          := false;
  vImportacao                 := 0;
  TreeAnexos.Enabled          := false;
  TreeFinalizarLote.Enabled   := false;
  TreeItemExcluir.Enabled     := false;
  TreeAnexos.Visible          := serviceDB.vRastreada='1';
end;

procedure TfrmSaidaGrupo.gridListasSaidaCellClick(const Column: TColumn;
  const Row: Integer);
begin
 layTipoSaidas.Visible      := false;
 TreeAnexos.Enabled         := frmPrincipal.vIdBaseCampo='0';
 TreeFinalizarLote.Enabled  := frmPrincipal.vIdBaseCampo='0';
 TreeItemExcluir.Enabled    := frmPrincipal.vIdBaseCampo='0';
end;

procedure TfrmSaidaGrupo.gridListasSaidaCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 if vRelSaida=1 then
  Close;

 TabControl1.ActiveTab := tbi1;

 if vTransSelect=0 then
 begin
  cbxCatLista.Items.Clear;
  cbxRacaLista.Items.Clear;
  cbxCatLista.Items.Add('Todos');
  cbxRacaLista.Items.Add('Todos');
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  CarregaComboLocalAtaulF;
  serviceDB.TableRacas.First;
  serviceDB.TableCategorias.First;

  while not serviceDB.TableRacas.eof do
  begin
    cbxRacaLista.Items.AddObject(serviceDB.TableRacasNOME.AsString,TObject(serviceDB.TableRacasID.AsInteger));
    serviceDB.TableRacas.Next;
  end;

  while not serviceDB.TableCategorias.eof do
  begin
    cbxCatLista.Items.AddObject(serviceDB.TableCategoriasNOME.AsString,TObject(serviceDB.TableCategoriasID.AsInteger));
    serviceDB.TableCategorias.Next;
  end;
  cbxRacaLista.ItemIndex :=0;
  cbxCatLista.ItemIndex  :=0;

  vLoteSaida := serviceDB.qryGridLoteSaidaID.AsString;

  AbreListaAnimaisLS(serviceDB.qryGridLoteSaidaID.AsString);
  AbreListaRefugadosLS(serviceDB.qryGridLoteSaidaID.AsString);
  CarregaVeiculosLS(serviceDB.qryGridLoteSaidaID.AsString);
  laySuperior.Visible           := false;
  TbPrincipal.ActiveTab := tbiListaAnimaisLs;
 end
 else
 begin
  TbPrincipal.ActiveTab := tbiListaAnimal;
  edtLoteSaida.Text     := serviceDB.qryGridLoteSaidaID.AsString;
  with qryGridAnimal,qryGridAnimal.SQL do
  begin
   Clear;
   Add('select y.* from');
   Add('(select x.*,');
   Add('case');
   Add('when IDADE_ATUAL>0 and IDADE_ATUAL<=12 then   ''0 A 12''');
   Add('when IDADE_ATUAL>12 and IDADE_ATUAL<=24 then  ''13 A 24''');
   Add('when IDADE_ATUAL>24 and IDADE_ATUAL<=36 then  ''25 A 36''');
   Add('when IDADE_ATUAL>36 then   ''MAIS 36''');
   Add('END FAIXA');
   Add('from');
   Add('(select');
   Add('cu.id id_pasto,');
   Add('an.id animal_id,');
   Add('cu.codigo curral,');
   Add('an.identificacao_1 ident_1,');
   Add('an.identificacao_2 ident_2,');
   Add('r.ID IDRACA,');
   Add('r.nome raca,');
   Add('c.ID IDcategoria,');
   Add('c.nome categoria,');
   Add('an.data_proc data_ent,');
   Add('an.peso_entrada peso_Ent,');
   Add('coalesce(an.DATA_SAIDA,an.data_ultimo_peso,cast(an.data_proc as date))dt_ultimo_peso,');
   Add('coalesce(AN.peso_SAIDA,an.ultimo_peso,an.peso_entrada) ultimo_peso,');
   Add('g.serie||g.uf||g.numero gta,');
   Add('an.peso_estimado PESO_PROJ,');
   Add('datediff(month,an.data_nascimento,current_timestamp) IDADE_ATUAL');
   Add(',AXR.NOME REBANHO,');
   Add('an.ID_CONTRATO ID_CONTRATO,');
   Add('AN.idade_meses,');
   Add('AN.valor_compra,');
   Add('AN.id_local,');
   Add('AN.id_lote');
   Add('from animal AN');
   Add('join raca R ON AN.id_raca=R.id');
   Add('join categorias c on an.id_categoria=c.id');
   Add('join currais cu on an.id_local=cu.id');
   Add('left join gta g on g.id=an.gta_id');
   Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=AN.ID_REBANHO');
   Add('where AN.STATUS=2 AND AN.ID_LOTESAIDA='+edtLoteSaida.Text);
   Add(')x)y');
   qryGridAnimal.SQL.Text;
   Open;
  end;
  SomarColunasGridForn;
 end;
end;

procedure TfrmSaidaGrupo.GridVeiculosAnexosCellClick(const Column: TColumn;
  const Row: Integer);
begin
  lblVeiculoSelecionado.Text := serviceDB.qryVeiculosLotadosNOME.AsString;
  recDadosAnexo.Enabled      := true;
end;

procedure TfrmSaidaGrupo.gridVeiculosCellClick(const Column: TColumn;
  const Row: Integer);
begin
  serviceDB.AbreGtaVeiculoSaida(serviceDB.qryVeiculosID.AsString);
  vIdVeiculoEra := serviceDB.qryVeiculosID.AsString;
  recDadosAnexo.Enabled := serviceDB.qryVeiculoGTASaida.RecordCount>0;
end;

procedure TfrmSaidaGrupo.gridVeiculosEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
 serviceDB.qryVeiculos.ApplyUpdates(-1)
end;

procedure TfrmSaidaGrupo.GroupBox3Click(Sender: TObject);
begin
 layTipoSaidas.Visible := false;
end;

procedure TfrmSaidaGrupo.Image11Click(Sender: TObject);
begin
  laySuperior.Visible           := true;
  TbPrincipal.ActiveTab         := tbiLista;
end;

procedure TfrmSaidaGrupo.Image13Click(Sender: TObject);
begin
 layTipoSaidas.Visible := false;
end;

procedure TfrmSaidaGrupo.Image161Click(Sender: TObject);
begin
 layValidaSenha.Visible := false;
end;

procedure TfrmSaidaGrupo.Image28Click(Sender: TObject);
begin
 laySuperior.Visible  := true;
end;

procedure TfrmSaidaGrupo.Image32Click(Sender: TObject);
begin
 layImportacao.Visible      := false;
end;

procedure TfrmSaidaGrupo.Image42Click(Sender: TObject);
begin
  layIncluiCarcaca.Visible := false;
end;

procedure TfrmSaidaGrupo.Image5Click(Sender: TObject);
begin
 TbPrincipal.ActiveTab := tbiCad;
end;

procedure TfrmSaidaGrupo.imgCloseClick(Sender: TObject);
begin
 layMnu.Visible := true;
 GroupBox1.Visible     := true;
 if (frmPrincipal.vIdBaseCampo='0') or (frmPrincipal.vIdBaseCampo='') then
 begin
   if tbPrincipal.TabIndex=1  then
   begin
    tbPrincipal.ActiveTab := tbiLista;
   end;
   if tbPrincipal.TabIndex=0  then
   begin
    close;
    frmPrincipal.MudarAba(frmPrincipal.tbiMenu,sender);
   end;
   if tbPrincipal.TabIndex=3  then
   begin
    close;
   end;
   if TbPrincipal.TabIndex IN[4,5,6] then
    TbPrincipal.ActiveTab := tbiLista;

   if tbPrincipal.TabIndex=7  then
    TbPrincipal.ActiveTab := tbiLaudo;
 end
 else
 begin
   if tbPrincipal.TabIndex=1  then
   begin
    tbPrincipal.ActiveTab := tbiLista;
   end;
   if tbPrincipal.TabIndex=0  then
   begin
     Application.Terminate;
   end;
   if tbPrincipal.TabIndex=3  then
   begin
    close;
   end;
   if TbPrincipal.TabIndex=4 then
    TbPrincipal.ActiveTab := tbiLista;
 end;
end;


end.
