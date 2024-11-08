unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Effects, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts, FMX.ActnList, System.Actions, FMX.TreeView, System.ImageList,
  FMX.ImgList, FMX.ListBox,FireDAC.Comp.Client, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, FMX.Grid, FMX.DateTimeCtrls, FMX.Memo,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FMX.WebBrowser,
  FMX.Ani, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  System.Notification, System.Threading, Fmx.Bind.Grid, Data.Bind.Grid, FMX.Menus, ppVar,MidasLib,
  View.WebCharts,Charts.Types, FireDAC.Stan.StorageBin,System.Generics.Collections,
  FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FireDAC.Comp.UI, ppParameter,
  ppDesignLayer, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe,FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.Comp.Script,DateUtils,
  WINDOWS,Registry,  FMX.Colors,ppDBBDE, FMX.Memo.Types, FMX.TMSBaseControl,
  FMX.TMSGridCell, FMX.TMSGridOptions, FMX.TMSGridData, FMX.TMSCustomGrid,
  FMX.TMSGrid, FMX.TMSLiveGridDataBinding, FMX.TMSLiveGrid,FMX.Surfaces,Soap.EncdDecd,
  System.JSON.Writers,System.JSON.Types,System.JSON, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,Winapi.ShellAPI,System.Zip;

type
  TfrmPrincipal = class(TForm)
    tbPrincipal: TTabControl;
    tbiApresentacao: TTabItem;
    tbiLogin: TTabItem;
    tbimenu: TTabItem;
    tbiAux: TTabItem;
    Timer1: TTimer;
    layTbiApre: TLayout;
    Layout2: TLayout;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    V: TLayout;
    Image2: TImage;
    layMnu: TLayout;
    Treemnu: TTreeView;
    TreeUsers: TTreeViewItem;
    Layout7: TLayout;
    Image6: TImage;
    TreeEstruturas: TTreeViewItem;
    Layout9: TLayout;
    Image8: TImage;
    TreeAnimais: TTreeViewItem;
    TreeRacas: TTreeViewItem;
    Layout12: TLayout;
    Image11: TImage;
    TreeCategorias: TTreeViewItem;
    Layout13: TLayout;
    Image12: TImage;
    Layout14: TLayout;
    Image13: TImage;
    TreeMovimentacoes: TTreeViewItem;
    TreeSaidas: TTreeViewItem;
    Layout18: TLayout;
    Image16: TImage;
    Layout20: TLayout;
    Image18: TImage;
    layForms: TLayout;
    layDashB: TLayout;
    tbiListaAnimais: TTabItem;
    Layout25: TLayout;
    Layout26: TLayout;
    Layout28: TLayout;
    Pme: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    edtIdent1: TEdit;
    Label7: TLabel;
    edtIdent2: TEdit;
    Label8: TLabel;
    cbxFCategoria: TComboBox;
    Label9: TLabel;
    edtFNumGTA: TEdit;
    P: TToolBar;
    Label12: TLabel;
    memoExcel: TMemo;
    SaveDialog1: TSaveDialog;
    TreeReportsDash: TTreeViewItem;
    Layout33: TLayout;
    Image28: TImage;
    Rectangle2: TRectangle;
    Rectangle4: TRectangle;
    Rectangle1: TRectangle;
    gpLogin: TGroupBox;
    Layout3: TLayout;
    Label2: TLabel;
    edtLogin: TEdit;
    Label3: TLabel;
    edtSenha: TEdit;
    Layout4: TLayout;
    layBtnControls: TLayout;
    TreeViewItem1: TTreeViewItem;
    Layout1: TLayout;
    Image7: TImage;
    Layout8: TLayout;
    Rectangle5: TRectangle;
    lblUserLogado: TLabel;
    Layout11: TLayout;
    Rectangle8: TRectangle;
    Label5: TLabel;
    Image19: TImage;
    TreeSuplementos: TTreeViewItem;
    Layout15: TLayout;
    Image14: TImage;
    TreeViewItem3: TTreeViewItem;
    Layout22: TLayout;
    Image20: TImage;
    btnSuplementos: TTreeViewItem;
    Layout23: TLayout;
    Image21: TImage;
    TreeViewPrevisao: TTreeViewItem;
    Layout32: TLayout;
    Image27: TImage;
    tbiDashBoard: TTabItem;
    Layout35: TLayout;
    Rectangle9: TRectangle;
    imgApr: TImage;
    Image30: TImage;
    btnEntrar: TRectangle;
    lblBtnConfirm: TLabel;
    imgBntConfirm: TImage;
    layBntConfirm: TLayout;
    btnCancelLogin: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    Layout16: TLayout;
    Label15: TLabel;
    Layout34: TLayout;
    Image29: TImage;
    Rectangle10: TRectangle;
    TreeViewItemEntradas: TTreeViewItem;
    Layout36: TLayout;
    Image4: TImage;
    TreeViewItem8EntradaEstoque: TTreeViewItem;
    Layout64: TLayout;
    Image9: TImage;
    layMnuDash: TLayout;
    TreeView1: TTreeView;
    TreeViewItem13: TTreeViewItem;
    Layout76: TLayout;
    Image40: TImage;
    ShadowEffect46: TShadowEffect;
    TreeViewItem17: TTreeViewItem;
    Layout80: TLayout;
    Image44: TImage;
    ShadowEffect50: TShadowEffect;
    Image10: TImage;
    TreeViewItem2: TTreeViewItem;
    Layout65: TLayout;
    Image31: TImage;
    tbiConfig: TTabItem;
    ToolBar2: TToolBar;
    Layout66: TLayout;
    Image32: TImage;
    Label36: TLabel;
    Image33: TImage;
    Layout67: TLayout;
    Rectangle32: TRectangle;
    PTIMA: TLayout;
    Layout68: TLayout;
    Layout69: TLayout;
    Label37: TLabel;
    B: TLabel;
    edtCustoFixoOp: TEdit;
    ToolBar4: TToolBar;
    Layout70: TLayout;
    ShadowEffect38: TShadowEffect;
    btnConfirma: TRectangle;
    Layout71: TLayout;
    Image35: TImage;
    Label38: TLabel;
    ShadowEffect39: TShadowEffect;
    btnCancelar: TRectangle;
    Layout72: TLayout;
    Image36: TImage;
    Label39: TLabel;
    ShadowEffect40: TShadowEffect;
    cbxTipoMedia: TComboBox;
    BindSourceDB1: TBindSourceDB;
    LinkControlToFieldCUSTO_FIXO_PADRAO: TLinkControlToField;
    BindingsList1: TBindingsList;
    TreeViewItemFin: TTreeViewItem;
    Layout73: TLayout;
    Image34: TImage;
    ShadowEffect41: TShadowEffect;
    TreeViewItem7: TTreeViewItem;
    Layout74: TLayout;
    Image37: TImage;
    NotificationCenter1: TNotificationCenter;
    TreeReports: TTreeViewItem;
    Layout75: TLayout;
    Image38: TImage;
    TreeViewPropriedades: TTreeViewItem;
    Layout77: TLayout;
    Image5: TImage;
    Label40: TLabel;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    TreeViewGTA: TTreeViewItem;
    Layout78: TLayout;
    Image39: TImage;
    ppDB_REL_GEN_ATIVOS: TppDBPipeline;
    ppRepGenAtivos: TppReport;
    ppHeaderBand6: TppHeaderBand;
    imgCli1: TppImage;
    ppLabel60: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppShape13: TppShape;
    ppDBText35: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppDBText36: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList6: TppParameterList;
    TreeViewItem6: TTreeViewItem;
    Layout31: TLayout;
    Image26: TImage;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    chkPeriodoProc: TCheckBox;
    Rectangle33: TRectangle;
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
    qryGridDIAS: TLargeintField;
    qryGridIDADEATUAL: TLargeintField;
    qryGridDATA_SAIDA: TDateField;
    qryGridPESO_SAIDA: TFMTBCDField;
    BindSourceDB3: TBindSourceDB;
    qryGridGTA_SAIDA: TStringField;
    qryGridPRODUTORORIGEM: TStringField;
    qryGridPRODUTORDESTINOSAIDA: TStringField;
    qryGridSEXO: TStringField;
    qryGridFAIXAIDADE: TStringField;
    qryGridCATEGORIAATUAL: TStringField;
    qryGridGTP_SAIDA: TFMTBCDField;
    qryGridGMD_SAIDA: TFMTBCDField;
    qryGridIDADE_ENTRADA: TIntegerField;
    qryGridPROPRIEDADEORIGEM: TStringField;
    qryGridVALOR_COMPRA: TFMTBCDField;
    qryGridVALOR_VENDA: TFMTBCDField;
    edtGtaSaida: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    GroupBox4: TGroupBox;
    edtFDataSaiATE: TDateEdit;
    Label41: TLabel;
    edtFDataSaiDe: TDateEdit;
    Label42: TLabel;
    chkPeriodoSaida: TCheckBox;
    ScrollBox2: TScrollBox;
    Label45: TLabel;
    cbxProdutorOrigem: TComboBox;
    cbxProdutorDestino: TComboBox;
    Label46: TLabel;
    cbxFaixaIdade: TComboBox;
    TreeViewListaAnimal: TTreeViewItem;
    Layout27: TLayout;
    Image42: TImage;
    qryGridNASCIMENTO: TDateField;
    TreeMovPeso: TTreeViewItem;
    Layout19: TLayout;
    Image17: TImage;
    TreeEntradas: TTreeViewItem;
    Layout17: TLayout;
    Image15: TImage;
    PopupMenu1: TPopupMenu;
    mnuStrGridEdit: TMenuItem;
    mnuStrGridExcluir: TMenuItem;
    Layout82: TLayout;
    Rectangle35: TRectangle;
    Layout83: TLayout;
    Layout84: TLayout;
    Layout85: TLayout;
    Label52: TLabel;
    Layout86: TLayout;
    cbxAnoCustoFixo: TComboBox;
    Layout87: TLayout;
    GridCustoFixo: TStringGrid;
    btnGerarCustoFixo: TRectangle;
    Layout88: TLayout;
    Image24: TImage;
    Label51: TLabel;
    StringColumn1: TStringColumn;
    CurrencyColumn1: TCurrencyColumn;
    CurrencyColumn2: TCurrencyColumn;
    CurrencyColumn3: TCurrencyColumn;
    CurrencyColumn4: TCurrencyColumn;
    CurrencyColumn5: TCurrencyColumn;
    CurrencyColumn6: TCurrencyColumn;
    CurrencyColumn7: TCurrencyColumn;
    CurrencyColumn8: TCurrencyColumn;
    CurrencyColumn9: TCurrencyColumn;
    CurrencyColumn10: TCurrencyColumn;
    CurrencyColumn11: TCurrencyColumn;
    CurrencyColumn12: TCurrencyColumn;
    Label53: TLabel;
    cbxStatus: TComboBox;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppShape1: TppShape;
    ppDBCalc4: TppDBCalc;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText5: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLblConsCabDia: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel19: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppLabel20: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppShape2: TppShape;
    ppLabel22: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc28: TppDBCalc;
    ppLabel23: TppLabel;
    ppLine2: TppLine;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    ppLabel25: TppLabel;
    ppDBText7: TppDBText;
    ppDBCalc29: TppDBCalc;
    ppLabel26: TppLabel;
    ppDBText8: TppDBText;
    ppDBCalc30: TppDBCalc;
    ppLabel27: TppLabel;
    ppDBCalc31: TppDBCalc;
    ppLabel28: TppLabel;
    ppDBCalc32: TppDBCalc;
    TimerAguarde: TTimer;
    layImgAguarde: TLayout;
    qryGridPROPRIETARIO: TStringField;
    Label54: TLabel;
    cbxProprietario: TComboBox;
    LayDash: TLayout;
    Image3: TImage;
    ShadowEffect33: TShadowEffect;
    ppRepGeral: TppReport;
    ppHeaderBand1: TppHeaderBand;
    imgCli: TppImage;
    ppLabel29: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape3: TppShape;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLabel39: TppLabel;
    ppDBCalc38: TppDBCalc;
    ppLabel40: TppLabel;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppLabel41: TppLabel;
    ppDBCalc42: TppDBCalc;
    ppLabel42: TppLabel;
    ppDBCalc43: TppDBCalc;
    ppLabel43: TppLabel;
    ppDBCalc44: TppDBCalc;
    ppLabel44: TppLabel;
    ppDBCalc45: TppDBCalc;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppShape5: TppShape;
    ppDBText29: TppDBText;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine5: TppLine;
    ppLabel80: TppLabel;
    ppLine6: TppLine;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBRelGeral: TppDBPipeline;
    ppShape6: TppShape;
    ppLine7: TppLine;
    qryGridGTA: TStringField;
    TreeAlteraPropriedade: TTreeViewItem;
    Layout41: TLayout;
    Image25: TImage;
    layAlteraProp: TLayout;
    Rectangle14: TRectangle;
    Layout42: TLayout;
    Layout43: TLayout;
    Label22: TLabel;
    cbxProp2: TComboBox;
    Image47: TImage;
    ShadowEffect22: TShadowEffect;
    LinkFillControlToFieldID: TLinkFillControlToField;
    TreeConfinamento: TTreeViewItem;
    Layout37: TLayout;
    Image48: TImage;
    TreeRetiros: TTreeViewItem;
    Layout38: TLayout;
    Image49: TImage;
    Rectangle3: TRectangle;
    WebCharts1: TWebCharts;
    Rectangle11: TRectangle;
    Layout21: TLayout;
    Rectangle12: TRectangle;
    Layout39: TLayout;
    Layout40: TLayout;
    lblAniAtivosProp: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    TreeRastreabilidade: TTreeViewItem;
    Layout44: TLayout;
    Image51: TImage;
    TreeCertificadora: TTreeViewItem;
    TreeFornecedorBrincos: TTreeViewItem;
    TreeEstoquedeBrincos: TTreeViewItem;
    TreeBND: TTreeViewItem;
    Layout45: TLayout;
    Image52: TImage;
    Layout46: TLayout;
    Image53: TImage;
    Layout47: TLayout;
    Image54: TImage;
    Layout48: TLayout;
    Image55: TImage;
    Layout6: TLayout;
    imgClose: TImage;
    imgMenu: TImage;
    TreeComunicados: TTreeViewItem;
    TreeComReident: TTreeViewItem;
    TreeViewMorte: TTreeViewItem;
    Layout10: TLayout;
    Image50: TImage;
    Layout49: TLayout;
    Image56: TImage;
    Layout50: TLayout;
    Image57: TImage;
    Entrada: TTreeViewItem;
    Layout51: TLayout;
    Image58: TImage;
    GroupBox1: TGroupBox;
    edtDataAteReproc: TDateEdit;
    Label1: TLabel;
    edtDataDeReproc: TDateEdit;
    Label18: TLabel;
    chkPeriodoReproc: TCheckBox;
    qryGridDATA_REPROCESSAMENTO: TSQLTimeStampField;
    TreeViewNascimento: TTreeViewItem;
    Layout52: TLayout;
    Image59: TImage;
    Rectangle6: TRectangle;
    TreeViewImportacao: TTreeViewItem;
    Layout53: TLayout;
    Image60: TImage;
    TreeViewImportDataLiebracao: TTreeViewItem;
    Layout54: TLayout;
    Rectangle7: TRectangle;
    TreeViewISanidade: TTreeViewItem;
    TreeViewItem9: TTreeViewItem;
    Layout55: TLayout;
    Image61: TImage;
    Layout56: TLayout;
    Image62: TImage;
    TreeViewItem10: TTreeViewItem;
    Layout57: TLayout;
    Image63: TImage;
    TreeViewProtocolo: TTreeViewItem;
    Layout58: TLayout;
    Image64: TImage;
    TreeViewItem11: TTreeViewItem;
    Layout59: TLayout;
    Image65: TImage;
    TreeViewTratamentos: TTreeViewItem;
    Layout60: TLayout;
    Image66: TImage;
    TreeViewComSaida: TTreeViewItem;
    Layout61: TLayout;
    Image67: TImage;
    Layout62: TLayout;
    Image68: TImage;
    Rectangle13: TRectangle;
    TreeViewItem12: TTreeViewItem;
    Layout63: TLayout;
    Image69: TImage;
    Layout92: TLayout;
    Layout93: TLayout;
    imgLogoCliente: TImage;
    lblPropriedadeLogada: TLabel;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    TreeViewItem15: TTreeViewItem;
    Layout94: TLayout;
    Image1: TImage;
    TreeMorte: TTreeViewItem;
    Layout95: TLayout;
    Image70: TImage;
    TreeNascimento: TTreeViewItem;
    Layout97: TLayout;
    Image72: TImage;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppLine9: TppLine;
    ppLabel21: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine1: TppLine;
    ppLabel30: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    qryGridSTATUS: TIntegerField;
    FDScript1: TFDScript;
    lblVersao: TLabel;
    TreeComprador: TTreeViewItem;
    Layout101: TLayout;
    Image76: TImage;
    layKey: TLayout;
    RecLicenca: TRectangle;
    Image77: TImage;
    Rectangle16: TRectangle;
    Layout102: TLayout;
    Layout103: TLayout;
    Rectangle17: TRectangle;
    Label20: TLabel;
    edtCodigoCliente: TEdit;
    Layout104: TLayout;
    Layout105: TLayout;
    btnValidaKey: TRectangle;
    Layout106: TLayout;
    Image78: TImage;
    Label23: TLabel;
    ppRepGeralSexo: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppImage3: TppImage;
    ppLabel63: TppLabel;
    ppLine11: TppLine;
    ppImage5: TppImage;
    ppDetailBand5: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppLine15: TppLine;
    ppFooterBand5: TppFooterBand;
    ppLine12: TppLine;
    ppLabel76: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppSummaryBand3: TppSummaryBand;
    ppShape14: TppShape;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppLabel91: TppLabel;
    ppDBCalc51: TppDBCalc;
    ppLabel92: TppLabel;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppLabel93: TppLabel;
    ppDBCalc55: TppDBCalc;
    ppLabel94: TppLabel;
    ppDBCalc56: TppDBCalc;
    ppLabel95: TppLabel;
    ppDBCalc57: TppDBCalc;
    ppLabel96: TppLabel;
    ppDBCalc58: TppDBCalc;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLblTotalMacho: TppLabel;
    ppLblTotalFemea: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppShape16: TppShape;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLine13: TppLine;
    ppLabel118: TppLabel;
    ppLine14: TppLine;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppShape15: TppShape;
    ppDBText66: TppDBText;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape7: TppShape;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppDBCalc73: TppDBCalc;
    ppDBCalc74: TppDBCalc;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppDBCalc77: TppDBCalc;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    ppDBRelGeralSexo: TppDBPipeline;
    qryRelResumoGeralSe: TFDQuery;
    dsRelResumoGeralSexo: TDataSource;
    qryRelResumoGeralSePASTO: TStringField;
    qryRelResumoGeralSeSEXO: TStringField;
    qryRelResumoGeralSeQTD_CAB: TIntegerField;
    qryRelResumoGeralSeDIAS_MEDIO: TLargeintField;
    qryRelResumoGeralSePESO_ENT: TFMTBCDField;
    qryRelResumoGeralSeARR_ENTRADA: TFMTBCDField;
    qryRelResumoGeralSePESO_ATUAL: TFMTBCDField;
    qryRelResumoGeralSeARR_ATUAL: TFMTBCDField;
    qryRelResumoGeralSeCONSUMO_ACUMULADO: TFMTBCDField;
    qryRelResumoGeralSeCUSTO_ALIMENTAR: TFMTBCDField;
    qryRelResumoGeralSeCUSTOFIXOACUMULADO: TFMTBCDField;
    qryRelResumoGeralSeCUSTOTOTALMAISCOMPRA: TFMTBCDField;
    qryRelResumoGeralSeCUSTOTOTAL: TFMTBCDField;
    qryRelResumoGeralSeIMS_PV: TBCDField;
    qryRelResumoGeralSeID_PROPRIEDADE: TIntegerField;
    qryRelResumoGeralSeCUSTO_ARR_PROD: TFMTBCDField;
    qryRelResumoGeralSeDATA_ENTRADA_MEDIA: TDateField;
    qryRelResumoGeralSeARR_PRODUZIDA: TFMTBCDField;
    qryRelResumoGeralSeCUSTO_ALIMENTAR_CAB: TFMTBCDField;
    qryRelResumoGeralSeCUSTO_FIXO_CAB_DIA: TFMTBCDField;
    qryRelResumoGeralSeGTP: TFMTBCDField;
    qryRelResumoGeralSeGMD: TFMTBCDField;
    qryRelResumoGeralSeCONSUMO_CAB_DIA: TFMTBCDField;
    TreeRelEntradas: TTreeViewItem;
    Layout107: TLayout;
    Image79: TImage;
    mnuAux: TMainMenu;
    layAlteracao: TLayout;
    RecStatusAcao: TRectangle;
    Layout108: TLayout;
    Layout109: TLayout;
    Image80: TImage;
    Layout110: TLayout;
    Layout111: TLayout;
    Layout112: TLayout;
    ShadowEffect4: TShadowEffect;
    Layout113: TLayout;
    ShadowEffect3: TShadowEffect;
    btnConfirmar: TRectangle;
    Layout114: TLayout;
    Image81: TImage;
    Label24: TLabel;
    ShadowEffect5: TShadowEffect;
    btnCancel: TRectangle;
    Layout116: TLayout;
    Image83: TImage;
    Label25: TLabel;
    ShadowEffect6: TShadowEffect;
    msg: TLabel;
    layAlteraPeso: TLayout;
    Rectangle19: TRectangle;
    Layout117: TLayout;
    Label26: TLabel;
    Label27: TLabel;
    edtPesoAtual: TEdit;
    edtNovoPesoEnt: TEdit;
    layAlteraValorEntrada: TLayout;
    Rectangle20: TRectangle;
    Layout118: TLayout;
    Label28: TLabel;
    Label29: TLabel;
    edtValorAtual: TEdit;
    edtNovoValor: TEdit;
    layAlteraData: TLayout;
    Rectangle21: TRectangle;
    Layout119: TLayout;
    Label30: TLabel;
    Label31: TLabel;
    edtDataAtual: TEdit;
    edtNovaData: TDateEdit;
    mnuAlteraAnimais: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    LayAlteraEraEntrada: TLayout;
    Rectangle22: TRectangle;
    Layout121: TLayout;
    Label32: TLabel;
    Label33: TLabel;
    edtEraAtual: TEdit;
    edtNovaEra: TEdit;
    MenuItem1: TMenuItem;
    TreeAuxiliares: TTreeViewItem;
    TreeAuxMotivoMov: TTreeViewItem;
    Layout138: TLayout;
    Image101: TImage;
    TreeMotivoAplicacao: TTreeViewItem;
    Layout139: TLayout;
    Image102: TImage;
    Layout142: TLayout;
    Image105: TImage;
    TreeViewItem30: TTreeViewItem;
    Layout132: TLayout;
    Image95: TImage;
    ImageList1: TImageList;
    layConfirmaSenha: TLayout;
    Rectangle23: TRectangle;
    Layout134: TLayout;
    Label34: TLabel;
    edtConfirmaSenha: TEdit;
    Label35: TLabel;
    cbxConfigGMD: TComboBox;
    TreeCurralConf: TTreeViewItem;
    Layout135: TLayout;
    Image97: TImage;
    TreeViewItem31: TTreeViewItem;
    Layout136: TLayout;
    Image98: TImage;
    TreeViewItem16: TTreeViewItem;
    Layout120: TLayout;
    Image84: TImage;
    Label55: TLabel;
    Label56: TLabel;
    edtConsumoPVPadrao: TEdit;
    edtGmdPadrao: TEdit;
    Layout122: TLayout;
    Rectangle24: TRectangle;
    Layout123: TLayout;
    Layout124: TLayout;
    Layout125: TLayout;
    Label57: TLabel;
    Layout126: TLayout;
    cbxAnoGMD: TComboBox;
    bntGMDAno: TRectangle;
    Layout127: TLayout;
    Image85: TImage;
    Label58: TLabel;
    Layout128: TLayout;
    gridGMDAno: TStringGrid;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    layAtualizaGeral: TLayout;
    Rectangle25: TRectangle;
    imgSync: TImage;
    Animacao: TFloatAnimation;
    TreeAtualizaGMD: TTreeViewItem;
    Layout129: TLayout;
    Image87: TImage;
    TreeMeteorologia: TTreeViewItem;
    Layout130: TLayout;
    Image86: TImage;
    TreePluviometro: TTreeViewItem;
    TreePluviometria: TTreeViewItem;
    Layout131: TLayout;
    Image88: TImage;
    Layout137: TLayout;
    Image89: TImage;
    Label59: TLabel;
    edtFrequenciaLimpaBebedouro: TEdit;
    TreeBebedouro: TTreeViewItem;
    Layout140: TLayout;
    Image90: TImage;
    TreePasto: TTreeViewItem;
    Layout141: TLayout;
    Image91: TImage;
    TreeEstoque: TTreeViewItem;
    Layout143: TLayout;
    Image92: TImage;
    TreeScore: TTreeViewItem;
    Layout144: TLayout;
    Image93: TImage;
    btnAlimentos: TTreeViewItem;
    Layout145: TLayout;
    Image94: TImage;
    TreeRebanho: TTreeViewItem;
    Layout146: TLayout;
    Image99: TImage;
    qryGridREBANHO: TStringField;
    cbxFRaca: TComboBox;
    lblRaca: TLabel;
    cbxRebanhof: TComboBox;
    Label60: TLabel;
    TreeRelHistObs: TTreeViewItem;
    Layout147: TLayout;
    Image100: TImage;
    cbxRetiro: TComboBox;
    Label61: TLabel;
    qryGridID_RETIRO: TIntegerField;
    TreeRelAnimaisRebanho: TTreeViewItem;
    Layout152: TLayout;
    Image108: TImage;
    btnNutricao: TTreeViewItem;
    Layout153: TLayout;
    Image109: TImage;
    TreeRacaoConf: TTreeViewItem;
    Layout154: TLayout;
    Image110: TImage;
    TreePlanejamento: TTreeViewItem;
    Layout155: TLayout;
    Image111: TImage;
    TreePlanTratos: TTreeViewItem;
    Layout156: TLayout;
    Image112: TImage;
    btnLotesNutricional: TTreeViewItem;
    Layout157: TLayout;
    Image113: TImage;
    TreeFornRacao: TTreeViewItem;
    Layout158: TLayout;
    Image114: TImage;
    imgPanelFornRealizado: TImage;
    imgQtdCab: TImage;
    imgMediaPeso: TImage;
    imgDataEnt: TImage;
    imgDias: TImage;
    ImgPrevisto: TImage;
    imgRealizado: TImage;
    TreeNotasdeCocho: TTreeViewItem;
    Layout159: TLayout;
    Image115: TImage;
    TreeLeituraCocho: TTreeViewItem;
    Layout160: TLayout;
    Image116: TImage;
    TreeCentroCusto: TTreeViewItem;
    Layout161: TLayout;
    Image117: TImage;
    TreePreMistura: TTreeViewItem;
    Layout162: TLayout;
    Image118: TImage;
    TreeViewItem4: TTreeViewItem;
    Layout163: TLayout;
    Image119: TImage;
    layPainel: TLayout;
    recPst: TRectangle;
    recConf: TRectangle;
    Layout164: TLayout;
    Layout165: TLayout;
    Label63: TLabel;
    layPasto: TLayout;
    layConfinamento: TLayout;
    recMachoPst: TRectangle;
    recFemeaPst: TRectangle;
    recFemeaConf: TRectangle;
    recMachoConf: TRectangle;
    Layout166: TLayout;
    Layout167: TLayout;
    Layout168: TLayout;
    Layout169: TLayout;
    Image120: TImage;
    Image121: TImage;
    Image122: TImage;
    Image123: TImage;
    Layout170: TLayout;
    Layout171: TLayout;
    Layout172: TLayout;
    Layout173: TLayout;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    lblPastoMacho: TLabel;
    lblPastoFemea: TLabel;
    lblConfMacho: TLabel;
    lblConfFemea: TLabel;
    ShadowEffect7: TShadowEffect;
    ShadowEffect8: TShadowEffect;
    ShadowEffect9: TShadowEffect;
    ShadowEffect10: TShadowEffect;
    Label62: TLabel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    LayPieCategoria: TLayout;
    imgField: TImage;
    Layout174: TLayout;
    Rectangle29: TRectangle;
    Layout176: TLayout;
    Rectangle27: TRectangle;
    Layout177: TLayout;
    Image124: TImage;
    Layout178: TLayout;
    ShadowEffect11: TShadowEffect;
    lblUltimoFornecimento: TLabel;
    Label69: TLabel;
    Rectangle26: TRectangle;
    Layout175: TLayout;
    Image125: TImage;
    Layout179: TLayout;
    ShadowEffect12: TShadowEffect;
    lblUltimaBaixaEstoque: TLabel;
    Label70: TLabel;
    Rectangle28: TRectangle;
    Layout180: TLayout;
    Image126: TImage;
    Layout181: TLayout;
    ShadowEffect13: TShadowEffect;
    lblUltimaEntradaAnimal: TLabel;
    Label72: TLabel;
    WebChartConf: TWebCharts;
    layDiasCocho: TLayout;
    WebConf: TWebBrowser;
    Rectangle30: TRectangle;
    TreeViewItem20: TTreeViewItem;
    Layout182: TLayout;
    Image127: TImage;
    TreeViewItem21: TTreeViewItem;
    TreeViewItem22: TTreeViewItem;
    TreeViewItem23: TTreeViewItem;
    TreeViewItem24: TTreeViewItem;
    Layout183: TLayout;
    Image128: TImage;
    TreeViewItem25: TTreeViewItem;
    Layout184: TLayout;
    Image129: TImage;
    Layout185: TLayout;
    Image130: TImage;
    TreeViewItem26: TTreeViewItem;
    TreeViewItem27: TTreeViewItem;
    Layout186: TLayout;
    Image131: TImage;
    TreeViewItem28: TTreeViewItem;
    Layout187: TLayout;
    Image132: TImage;
    Layout188: TLayout;
    Image133: TImage;
    Layout189: TLayout;
    Image134: TImage;
    TreeViewItem29: TTreeViewItem;
    TreeViewItem32: TTreeViewItem;
    Layout190: TLayout;
    Image135: TImage;
    TreeViewItem33: TTreeViewItem;
    Layout191: TLayout;
    Image136: TImage;
    Layout192: TLayout;
    Image137: TImage;
    TreeViewItem34: TTreeViewItem;
    Layout193: TLayout;
    Image138: TImage;
    TreeViewItem37: TTreeViewItem;
    Layout196: TLayout;
    Image141: TImage;
    TreeViewItem38: TTreeViewItem;
    Layout197: TLayout;
    Image142: TImage;
    TreeViewItem39: TTreeViewItem;
    Layout198: TLayout;
    Image143: TImage;
    Layout201: TLayout;
    TreeViewItem5: TTreeViewItem;
    TreeViewItem40: TTreeViewItem;
    Layout194: TLayout;
    Image139: TImage;
    Layout203: TLayout;
    Layout79: TLayout;
    Image41: TImage;
    Image45: TImage;
    TreeContratoCompra: TTreeViewItem;
    Layout89: TLayout;
    Image46: TImage;
    Layout90: TLayout;
    btnExportaGrid: TRectangle;
    Layout81: TLayout;
    Image43: TImage;
    Label48: TLabel;
    ShadowEffect47: TShadowEffect;
    btnLocalizarAnimais: TRectangle;
    Layout24: TLayout;
    Image23: TImage;
    Label47: TLabel;
    edtNumContrato: TEdit;
    Label68: TLabel;
    qryGridNUMERO: TStringField;
    dsGrid: TDataSource;
    Memo1: TMemo;
    TreeDashEstoque: TTreeViewItem;
    Layout29: TLayout;
    Image71: TImage;
    imgInsumo: TImage;
    TreeInsumos: TTreeViewItem;
    Layout91: TLayout;
    Image73: TImage;
    btnImprimir: TRectangle;
    Layout96: TLayout;
    Image74: TImage;
    Label13: TLabel;
    qryGridPrint: TFDQuery;
    qryGridTIPO: TIntegerField;
    qryGridID_LOTESAIDA: TIntegerField;
    edtLoteSaida: TEdit;
    Label14: TLabel;
    TreeRelGMD: TTreeViewItem;
    Layout98: TLayout;
    Image75: TImage;
    TreeViewItem8: TTreeViewItem;
    Layout99: TLayout;
    Image82: TImage;
    TreeEstoqueAtualCustoMedio: TTreeViewItem;
    Layout100: TLayout;
    Image96: TImage;
    TreeBaseCampo: TTreeViewItem;
    Layout115: TLayout;
    Image103: TImage;
    layEscolheBase: TLayout;
    Rectangle31: TRectangle;
    Rectangle34: TRectangle;
    Layout133: TLayout;
    Image104: TImage;
    BindSourceDB5: TBindSourceDB;
    cbxPropriedade: TComboBox;
    LinkFillControlToFieldID2: TLinkFillControlToField;
    Layout149: TLayout;
    Layout148: TLayout;
    rdBaseMaster: TRadioButton;
    rdBaseCampo: TRadioButton;
    tbiSyncBaseCampo: TTabItem;
    Layout195: TLayout;
    Rectangle36: TRectangle;
    Layout199: TLayout;
    Rectangle37: TRectangle;
    Layout200: TLayout;
    Label49: TLabel;
    Layout202: TLayout;
    edtIdBaseCampo: TEdit;
    Label50: TLabel;
    edtDataBaseCampo: TDateEdit;
    Label71: TLabel;
    edtMovBaseCampo: TEdit;
    Layout204: TLayout;
    Rectangle38: TRectangle;
    Label73: TLabel;
    Layout205: TLayout;
    Image107: TImage;
    Layout206: TLayout;
    Rectangle39: TRectangle;
    Label74: TLabel;
    Layout207: TLayout;
    Layout208: TLayout;
    Rectangle40: TRectangle;
    Layout209: TLayout;
    Label75: TLabel;
    Label76: TLabel;
    Layout210: TLayout;
    edtBaseAnimais: TEdit;
    edtPesagens: TEdit;
    Label77: TLabel;
    edtMovimentacao: TEdit;
    Label78: TLabel;
    edtSanidade: TEdit;
    Label79: TLabel;
    edtSaida: TEdit;
    Layout211: TLayout;
    Layout212: TLayout;
    bntSync: TRectangle;
    Layout213: TLayout;
    Image140: TImage;
    Label81: TLabel;
    ShadowEffect15: TShadowEffect;
    mlogSync: TMemo;
    Rectangle41: TRectangle;
    btnSincronizaBaseCampo: TRectangle;
    Layout151: TLayout;
    Image106: TImage;
    Label19: TLabel;
    ShadowEffect14: TShadowEffect;
    Label80: TLabel;
    edtReidentificacao: TEdit;
    edtBaseCampoF: TEdit;
    Label82: TLabel;
    Layout150: TLayout;
    Rectangle42: TRectangle;
    Layout214: TLayout;
    Label84: TLabel;
    Label85: TLabel;
    Layout215: TLayout;
    edtLoteSaidaBC: TEdit;
    edtVeiculosEmbarque: TEdit;
    tbiBCMulti: TTabItem;
    Layout216: TLayout;
    Image144: TImage;
    Label86: TLabel;
    Layout217: TLayout;
    btnEntradaBC: TRectangle;
    Label87: TLabel;
    Image146: TImage;
    btnSaidaBC: TRectangle;
    Label88: TLabel;
    Image147: TImage;
    Rectangle43: TRectangle;
    Image145: TImage;
    Label83: TLabel;
    edtGTA: TEdit;
    Label90: TLabel;
    edtAnimalExist: TEdit;
    lblDB: TLabel;
    TreeViewItem14: TTreeViewItem;
    Layout218: TLayout;
    Image149: TImage;
    TreeViewItem18: TTreeViewItem;
    TreeViewItem19: TTreeViewItem;
    Layout220: TLayout;
    Image151: TImage;
    edtDataBaseRel: TDateEdit;
    qryResumoDia: TFDQuery;
    qryResumoDiaTIPO: TStringField;
    qryResumoDiaHORAINICIO: TStringField;
    qryResumoDiaHORAFIM: TStringField;
    qryResumoDiaSEGUNDOSTOTAL: TLargeintField;
    qryResumoDiaQTDANIMAIS: TIntegerField;
    qryResumoDiaPESOENT: TFMTBCDField;
    qryResumoDiaMEDIAANIMAISSEGUNDO: TLargeintField;
    dsResumoDia: TDataSource;
    ppReportResumoDia: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppShape8: TppShape;
    ppImage4: TppImage;
    ppLine4: TppLine;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppDBText67: TppDBText;
    ppLabel130: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppLine8: TppLine;
    ppDBText72: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppDBText71: TppDBText;
    ppShape9: TppShape;
    ppDBCalc80: TppDBCalc;
    ppShape10: TppShape;
    ppDBCalc81: TppDBCalc;
    ppDBText73: TppDBText;
    ppBDResumoDia: TppDBPipeline;
    Button1: TButton;
    qryGridPESO_ESTIMADO: TFMTBCDField;
    qryGridGMDPROJETADO: TFMTBCDField;
    qryGridID_PRODUTOR: TIntegerField;
    layTipoRel: TLayout;
    Rectangle44: TRectangle;
    Layout219: TLayout;
    rdDetalhado: TRadioButton;
    rdResumido: TRadioButton;
    qryResumoPrint: TFDQuery;
    qryResumoPrintCURRAL: TStringField;
    qryResumoPrintRACA: TStringField;
    qryResumoPrintCATEGORIAATUAL: TStringField;
    qryResumoPrintMENOR_DATA_ENTRADA: TSQLTimeStampField;
    qryResumoPrintMAIOR_DATA_ENTRADA: TSQLTimeStampField;
    qryResumoPrintTOTAL_ANIMAIS: TIntegerField;
    qryResumoPrintPESO_MEDIO_ENTRADA: TFMTBCDField;
    qryResumoPrintPESO_MEDIO_ULTIMO: TFMTBCDField;
    qryResumoPrintIDADEMEDIA: TLargeintField;
    qryResumoPrintULTIMA_PESAGEM: TFMTBCDField;
    qryGridPrintCATEGORIAATUAL: TStringField;
    qryGridPrintANIMAL_ID: TIntegerField;
    qryGridPrintCURRAL: TStringField;
    qryGridPrintID_RETIRO: TIntegerField;
    qryGridPrintIDENT_1: TStringField;
    qryGridPrintIDENT_2: TStringField;
    qryGridPrintIDADE_ENTRADA: TIntegerField;
    qryGridPrintNASCIMENTO: TDateField;
    qryGridPrintRACA: TStringField;
    qryGridPrintCATEGORIA: TStringField;
    qryGridPrintDATA_ENT: TSQLTimeStampField;
    qryGridPrintPESO_ENT: TFMTBCDField;
    qryGridPrintDT_ULTIMO_PESO: TDateField;
    qryGridPrintULTIMO_PESO: TFMTBCDField;
    qryGridPrintGTA: TStringField;
    qryGridPrintDIAS: TLargeintField;
    qryGridPrintIDADEATUAL: TLargeintField;
    qryGridPrintDATA_SAIDA: TDateField;
    qryGridPrintPESO_SAIDA: TFMTBCDField;
    qryGridPrintGTA_SAIDA: TStringField;
    qryGridPrintPRODUTORORIGEM: TStringField;
    qryGridPrintPRODUTORDESTINOSAIDA: TStringField;
    qryGridPrintSEXO: TStringField;
    qryGridPrintPROPRIEDADEORIGEM: TStringField;
    qryGridPrintPROPRIETARIO: TStringField;
    qryGridPrintVALOR_COMPRA: TFMTBCDField;
    qryGridPrintVALOR_VENDA: TFMTBCDField;
    qryGridPrintDATA_REPROCESSAMENTO: TSQLTimeStampField;
    qryGridPrintSTATUS: TIntegerField;
    qryGridPrintREBANHO: TStringField;
    qryGridPrintNUMERO: TStringField;
    qryGridPrintCATEGORIAPADRAO: TStringField;
    qryGridPrintFAIXAIDADE: TStringField;
    qryGridPrintGTP_SAIDA: TFMTBCDField;
    qryGridPrintGMD_SAIDA: TFMTBCDField;
    dsResumoPrint: TDataSource;
    ppDBResumoPrint: TppDBPipeline;
    ppRepResumoPrint: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppImage6: TppImage;
    ppLine10: TppLine;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLine16: TppLine;
    ppFooterBand3: TppFooterBand;
    ppLabel138: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSummaryBand5: TppSummaryBand;
    ppDBText80: TppDBText;
    ppShape18: TppShape;
    ppDBCalc78: TppDBCalc;
    ppShape19: TppShape;
    ppDBCalc79: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape20: TppShape;
    ppLabel140: TppLabel;
    ppDBText81: TppDBText;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppShape21: TppShape;
    ppDBCalc82: TppDBCalc;
    ppDBText86: TppDBText;
    ppShape22: TppShape;
    ppDBCalc83: TppDBCalc;
    ppShape17: TppShape;
    ppDBCalc84: TppDBCalc;
    ppDBCalc85: TppDBCalc;
    ppDBCalc86: TppDBCalc;
    ppDBCalc87: TppDBCalc;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    Label91: TLabel;
    edtRefugo: TEdit;
    Label92: TLabel;
    cbxBloqueadoF: TComboBox;
    Label93: TLabel;
    edtUltimaObeservação: TEdit;
    qryGridBLOQUEIO: TStringField;
    qryGridBLOQUEIO_INT: TIntegerField;
    qryGridOBSERVACAO: TStringField;
    qryAux: TFDQuery;
    ToolBar1: TToolBar;
    lblTotalAnimais: TLabel;
    lblMediaPesoEnt: TLabel;
    lblMediaPesoUltimo: TLabel;
    lblMediaPesoProj: TLabel;
    lblDiasMedio: TLabel;
    lblIdadeMedia: TLabel;
    Layout221: TLayout;
    Rectangle45: TRectangle;
    Label95: TLabel;
    lblDbLogin: TLabel;
    Layout222: TLayout;
    Rectangle46: TRectangle;
    lblDbBaseCampo: TLabel;
    TreeViewItem35: TTreeViewItem;
    Layout223: TLayout;
    Image150: TImage;
    TreeViewItem36: TTreeViewItem;
    Layout224: TLayout;
    Image152: TImage;
    edtLocalOrigem: TEdit;
    EditButton6: TEditButton;
    ClearEditButton1: TClearEditButton;
    TreeViewItem41: TTreeViewItem;
    Layout225: TLayout;
    Image153: TImage;
    MenuItem4: TMenuItem;
    qryGridDATA_ENTRADA_CONF: TDateField;
    layAltera: TLayout;
    Rectangle47: TRectangle;
    Layout227: TLayout;
    Label94: TLabel;
    Label96: TLabel;
    edtDataEntConfAtual: TEdit;
    edtDataEntConfNova: TDateEdit;
    qryGridPESO_ENTRADA_CONF: TFMTBCDField;
    TreeViewItem42: TTreeViewItem;
    Layout226: TLayout;
    Image154: TImage;
    qryGridVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    qryGridVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    qryGridVALOR_SANI_ACU: TFloatField;
    GroupBox5: TGroupBox;
    edtAteEntConf: TDateEdit;
    Label97: TLabel;
    edtDeEntConf: TDateEdit;
    Label98: TLabel;
    chkPeriodoConf: TCheckBox;
    GroupBox6: TGroupBox;
    edtAteAtivos: TDateEdit;
    Label99: TLabel;
    edtDeAtivos: TDateEdit;
    Label100: TLabel;
    chkAtivosPeriodo: TCheckBox;
    cbxDestinoAnimal: TComboBox;
    Label101: TLabel;
    qryGridDESTINO: TStringField;
    TreeRelSaida: TTreeViewItem;
    Layout228: TLayout;
    Image155: TImage;
    Layout30: TLayout;
    Image22: TImage;
    Layout229: TLayout;
    btnReprocessamento: TRectangle;
    Label102: TLabel;
    Image156: TImage;
    btnMoviBC: TRectangle;
    Label89: TLabel;
    Image148: TImage;
    BindSourceDB6: TBindSourceDB;
    gridAnimais: TTMSFMXLiveGrid;
    LabelBindSourceDB6: TLabel;
    LinkGridToDataSourceBindSourceDB63: TLinkGridToDataSource;
    TreeRateioCusto: TTreeViewItem;
    Layout230: TLayout;
    Image157: TImage;
    TreeCustoFixo: TTreeViewItem;
    Layout231: TLayout;
    Image158: TImage;
    TreeViewItem43: TTreeViewItem;
    Layout232: TLayout;
    Image159: TImage;
    TreeImportalBrincos: TTreeViewItem;
    Layout233: TLayout;
    Image160: TImage;
    layPopUpCad: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    layIMportaLincagem: TLayout;
    Layout235: TLayout;
    Layout236: TLayout;
    Label103: TLabel;
    Image161: TImage;
    Layout237: TLayout;
    Rectangle48: TRectangle;
    Label104: TLabel;
    btnVoltar: TLabel;
    Layout238: TLayout;
    GridImportacao: TStringGrid;
    Layout239: TLayout;
    Label105: TLabel;
    Label106: TLabel;
    Layout240: TLayout;
    Rectangle49: TRectangle;
    edtArquivo: TEdit;
    SearchEditButton12: TSearchEditButton;
    Rectangle50: TRectangle;
    cbxPesquisarPor: TComboBox;
    Layout241: TLayout;
    btnImportar: TRectangle;
    Label107: TLabel;
    Image162: TImage;
    SaveDialog2: TSaveDialog;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    btnExportaAnimais: TRectangle;
    Label108: TLabel;
    Image163: TImage;
    Label109: TLabel;
    lblTotalOK: TLabel;
    Label110: TLabel;
    lblErro: TLabel;
    btnEstoqueChip: TTreeViewItem;
    Layout242: TLayout;
    Image164: TImage;
    Label111: TLabel;
    cbxEstoqueChip: TComboBox;
    TreeRetiradaChip: TTreeViewItem;
    Layout243: TLayout;
    Image165: TImage;
    Layout244: TLayout;
    Rectangle51: TRectangle;
    Layout245: TLayout;
    Layout246: TLayout;
    Layout247: TLayout;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    LBLCNPJ: TLabel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    edtNomeCliente: TEdit;
    EDTCnpjCliente: TEdit;
    Label115: TLabel;
    edtTelefoneCliente: TEdit;
    Layout248: TLayout;
    Rectangle52: TRectangle;
    Layout249: TLayout;
    Layout250: TLayout;
    Layout251: TLayout;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    edtCidadeCliente: TEdit;
    cbxUF: TComboBox;
    Label120: TLabel;
    edtCep: TEdit;
    Label121: TLabel;
    edtEndereco: TEdit;
    Layout252: TLayout;
    btnAbreImgInicial: TRectangle;
    Layout253: TLayout;
    Rectangle53: TRectangle;
    ImgFoto1: TImage;
    Layout254: TLayout;
    Label122: TLabel;
    btnEditarFotoBomba: TButton;
    btnDeletaFotoBomba: TButton;
    OpenImg: TOpenDialog;
    Rectangle54: TRectangle;
    Layout255: TLayout;
    Rectangle55: TRectangle;
    ImgFoto2: TImage;
    Layout256: TLayout;
    Label123: TLabel;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    qryGridGMD_ESTIMADO: TFMTBCDField;
    TreeViewAuxiliares: TTreeViewItem;
    TreeGerenteOperacional: TTreeViewItem;
    Layout257: TLayout;
    Image166: TImage;
    TreeResponsavelRastre: TTreeViewItem;
    Layout258: TLayout;
    Image167: TImage;
    TreeMedicoVet: TTreeViewItem;
    Layout259: TLayout;
    Image168: TImage;
    Layout260: TLayout;
    Image169: TImage;
    Rectangle18: TRectangle;
    IdHTTP1: TIdHTTP;
    lblValidadeLicenca: TLabel;
    MenuItem2: TMenuItem;
    layAlteraRacaCategoria: TLayout;
    Layout234: TLayout;
    Layout261: TLayout;
    Layout262: TLayout;
    lblAlteraRacaCategoria: TLabel;
    Image170: TImage;
    Layout263: TLayout;
    Rectangle15: TRectangle;
    Label124: TLabel;
    Label125: TLabel;
    Layout264: TLayout;
    Label21: TLabel;
    recAlteraRaca: TRectangle;
    edtAlteraRaca: TEdit;
    EditButton4: TEditButton;
    recAlterarCategoria: TRectangle;
    Label126: TLabel;
    edtAlteraCategoria: TEdit;
    EditButton1: TEditButton;
    MenuItem3: TMenuItem;
    TreeVagao: TTreeViewItem;
    Layout265: TLayout;
    Image171: TImage;
    StyleBook1: TStyleBook;
    TreeViewItem44: TTreeViewItem;
    Layout5: TLayout;
    Image172: TImage;
    TreeViewItem45: TTreeViewItem;
    Layout266: TLayout;
    Image173: TImage;
    TreebkpDB: TTreeViewItem;
    Image174: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure TreeAnimaisClick(Sender: TObject);
    procedure TreeMovimentacoesClick(Sender: TObject);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure TreeUsersClick(Sender: TObject);
    procedure TreeRacasClick(Sender: TObject);
    procedure TreeCategoriasClick(Sender: TObject);
    procedure TreeProdutorPropriedadeOrigemClick(Sender: TObject);
    procedure TreePropProdClick(Sender: TObject);
    procedure TreeCurraisClick(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure TreeGTAClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure TreeEntradasClick(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure TreeListaAnimaisClick(Sender: TObject);
    procedure btnCancelLoginClick(Sender: TObject);
    procedure TreeSaidasClick(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure btnSuplementosClick(Sender: TObject);
    procedure TreeSuplementosClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure TreeViewPrevisaoClick(Sender: TObject);
    procedure TreeMovPesoClick(Sender: TObject);
    procedure TreeReportsDashClick(Sender: TObject);
    procedure TreeViewItem8EntradaEstoqueClick(Sender: TObject);
    procedure TreeViewItem13Click(Sender: TObject);
    procedure TreeViewItem17Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeViewItemFinClick(Sender: TObject);
    procedure TreeViewItem7Click(Sender: TObject);
    procedure TreeReportsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeViewPropriedadesClick(Sender: TObject);
    procedure TreeViewGTAClick(Sender: TObject);
    procedure TreeViewItem6Click(Sender: TObject);
    procedure TreeViewListaAnimalClick(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
    procedure chkPeriodoSaidaChange(Sender: TObject);
    procedure btnLocalizarAnimaisClick(Sender: TObject);
    procedure btnExportaGridClick(Sender: TObject);
    procedure btnGerarCustoFixoClick(Sender: TObject);
    procedure cbxAnoCustoFixoChange(Sender: TObject);
    procedure GridCustoFixoEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure TreeRelGenLotesAtivosClick(Sender: TObject);
    procedure TimerAguardeTimer(Sender: TObject);
    procedure cbxProprietarioChange(Sender: TObject);
    procedure TreeAlteraPropriedadeClick(Sender: TObject);
    procedure cbxProp2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TreeRetirosClick(Sender: TObject);
    procedure TreeConfinamentoClick(Sender: TObject);
    procedure TreeEstruturasClick(Sender: TObject);
    procedure Image30Click(Sender: TObject);
    procedure TreeCertificadoraClick(Sender: TObject);
    procedure TreeFornecedorBrincosClick(Sender: TObject);
    procedure TreeBNDClick(Sender: TObject);
    procedure TreeEstoquedeBrincosClick(Sender: TObject);
    procedure TreeRastreabilidadeClick(Sender: TObject);
    procedure TreeComunicadosClick(Sender: TObject);
    procedure TreeComReidentClick(Sender: TObject);
    procedure TreeViewMorteClick(Sender: TObject);
    procedure EntradaClick(Sender: TObject);
    procedure chkPeriodoReprocChange(Sender: TObject);
    procedure TreeViewNascimentoClick(Sender: TObject);
    procedure TreeViewImportacaoClick(Sender: TObject);
    procedure TreeViewImportDataLiebracaoClick(Sender: TObject);
    procedure TreeViewItem9Click(Sender: TObject);
    procedure TreeViewItem10Click(Sender: TObject);
    procedure TreeViewProtocoloClick(Sender: TObject);
    procedure TreeViewISanidadeClick(Sender: TObject);
    procedure TreeViewItem11Click(Sender: TObject);
    procedure TreeViewTratamentosClick(Sender: TObject);
    procedure TreeViewComSaidaClick(Sender: TObject);
    procedure TreeViewItem12Click(Sender: TObject);
    procedure TreeViewItem14Click(Sender: TObject);
    procedure TreeViewItem15Click(Sender: TObject);
    procedure TreeMorteClick(Sender: TObject);
    procedure TreeNascimentoClick(Sender: TObject);
    procedure TreeMapaGadoClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand6BeforePrint(Sender: TObject);
    procedure FDScript1Error(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure TreeCompradorClick(Sender: TObject);
    procedure btnValidaKeyClick(Sender: TObject);
    procedure TreeRelGMDClick(Sender: TObject);
    procedure ppSummaryBand3AfterPrint(Sender: TObject);
    procedure TreeRelForClick(Sender: TObject);
    procedure ppHeaderBand5BeforePrint(Sender: TObject);
    procedure TreeRelEntradasClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure TreeMotivoAplicacaoClick(Sender: TObject);
    procedure TreeAuxMotivoMovClick(Sender: TObject);
    procedure TreeAuxiliaresClick(Sender: TObject);
    procedure TreeViewItem30Click(Sender: TObject);
    procedure TreeDiariasOcupacaoClick(Sender: TObject);
    procedure TreeCurralConfClick(Sender: TObject);
    procedure TreeViewItem31Click(Sender: TObject);
    procedure TreeViewItem16Click(Sender: TObject);
    procedure edtGmdPadraoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure bntGMDAnoClick(Sender: TObject);
    procedure cbxAnoGMDChange(Sender: TObject);
    procedure gridGMDAnoEditingDone(Sender: TObject; const ACol, ARow: Integer);
    procedure TreeAtualizaGMDClick(Sender: TObject);
    procedure TreeMeteorologiaClick(Sender: TObject);
    procedure TreePluviometroClick(Sender: TObject);
    procedure TreePluviometriaClick(Sender: TObject);
    procedure edtFrequenciaLimpaBebedouroKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure TreeBebedouroClick(Sender: TObject);
    procedure TreeScoreClick(Sender: TObject);
    procedure TreePastoClick(Sender: TObject);
    procedure TreeEstoqueClick(Sender: TObject);
    procedure btnAlimentosClick(Sender: TObject);
    procedure TreeRebanhoClick(Sender: TObject);
    procedure TreeRelHistObsClick(Sender: TObject);
    procedure TreeImprimirSexoClick(Sender: TObject);
    procedure TreeImprimirClick(Sender: TObject);
    procedure TreeExportarClick(Sender: TObject);
    procedure TreeExportarSexoClick(Sender: TObject);
    procedure cbxRetiroChange(Sender: TObject);
    procedure TreeRelAnimaisRebanhoClick(Sender: TObject);
    procedure TreeRacaoConfClick(Sender: TObject);
    procedure btnNutricaoClick(Sender: TObject);
    procedure TreePlanejamentoClick(Sender: TObject);
    procedure TreePlanTratosClick(Sender: TObject);
    procedure btnLotesNutricionalClick(Sender: TObject);
    procedure TreeFornRacaoClick(Sender: TObject);
    procedure TreeNotasdeCochoClick(Sender: TObject);
    procedure TreeLeituraCochoClick(Sender: TObject);
    procedure btnCancelLoginMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnCancelLoginMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure TreeCentroCustoClick(Sender: TObject);
    procedure TreePreMisturaClick(Sender: TObject);
    procedure TreeViewItem4Click(Sender: TObject);
    procedure TreeViewItemEntradasClick(Sender: TObject);
    procedure TreeViewItem20Click(Sender: TObject);
    procedure TreeViewItem40Click(Sender: TObject);
    procedure TreeViewItem5Click(Sender: TObject);
    procedure TreeViewItem21Click(Sender: TObject);
    procedure TreeContratoCompraClick(Sender: TObject);
    procedure TreeDashEstoqueClick(Sender: TObject);
    procedure TreeInsumosClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppRepListaAfterPrint(Sender: TObject);
    procedure TreeViewItem23Click(Sender: TObject);
    procedure TreeEstoqueAtualCustoMedioClick(Sender: TObject);
    procedure TreeViewItem8Click(Sender: TObject);
    procedure TreeBaseCampoClick(Sender: TObject);
    procedure rdBaseCampoChange(Sender: TObject);
    procedure rdBaseMasterChange(Sender: TObject);
    procedure cbxPropriedadeChange(Sender: TObject);
    procedure btnSincronizaBaseCampoClick(Sender: TObject);
    procedure Image107Click(Sender: TObject);
    procedure bntSyncClick(Sender: TObject);
    procedure btnSaidaBCClick(Sender: TObject);
    procedure btnEntradaBCClick(Sender: TObject);
    procedure btnMoviBCClick(Sender: TObject);
    procedure TreeViewItem18Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rdResumidoChange(Sender: TObject);
    procedure rdDetalhadoChange(Sender: TObject);
    procedure TreeViewItem35Click(Sender: TObject);
    procedure TreeViewItem36Click(Sender: TObject);
    procedure EditButton6Click(Sender: TObject);
    procedure EditButton6Enter(Sender: TObject);
    procedure TreeViewItem41Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure TreeViewItem42Click(Sender: TObject);
    procedure chkPeriodoConfChange(Sender: TObject);
    procedure chkAtivosPeriodoChange(Sender: TObject);
    procedure TreeRelSaidaClick(Sender: TObject);
    procedure btnReprocessamentoClick(Sender: TObject);
    procedure TreeRateioCustoClick(Sender: TObject);
    procedure TreeCustoFixoClick(Sender: TObject);
    procedure TreeViewItem43Click(Sender: TObject);
    procedure SearchEditButton12Click(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure Image161Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure Rectangle48Click(Sender: TObject);
    procedure TreeImportalBrincosClick(Sender: TObject);
    procedure btnExportaAnimaisClick(Sender: TObject);
    procedure btnEstoqueChipClick(Sender: TObject);
    procedure TreeRetiradaChipClick(Sender: TObject);
    procedure btnDeletaFotoBombaClick(Sender: TObject);
    procedure btnEditarFotoBombaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TreeGerenteOperacionalClick(Sender: TObject);
    procedure TreeResponsavelRastreClick(Sender: TObject);
    procedure TreeMedicoVetClick(Sender: TObject);
    procedure TreeViewAuxiliaresClick(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure Rectangle15Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure TreeVagaoClick(Sender: TObject);
    procedure TreebkpDBClick(Sender: TObject);
    procedure btnEntrarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnEntrarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    vAlteraRaca :integer;
    function  ValidaKey(Serial,Chave: String): Boolean;
    function  ValidadeKey(Chave: String): Tdate;
    function  DataExtenso(Data:TDateTime): String;


    procedure ChangeByteOrder( var Data; Size : Integer );
    function  GetIdeDiskSerialNumber : String;
    Function  SerialNum(FDrive:String) :String;
    procedure FileCopy(const sourcefilename, targetfilename,fileName: String);


    procedure TTHReadAbriQry;

  public
   var
    vVersao,vImgLogo,vImgLogo2,vPathAss:string;
    vConfirma,vCadConf :integer;
    vIdMineralPadrao,vIdBaseCampo:string;
    strm:Tmemorystream;
    vTrue,vErroUpdate:Boolean;
    FActiveForm : TForm;
    vCadUsuario,
    vCadGTA,
    vCadPropriedade,
    vCadEstrutura,
    vCadRaca,
    vCadCategoria :Boolean;
    vQtdAnimal:integer;
    vPath,vDataKey,vTipoRel,
    vwindows,vVersaoAtual:string;
    arq: TextFile;
    DataKey:TDate;
    vPropriedadePropria,vIDPropriedadePropria,vTipoCurral,vTipoGTA,vIdProprietario,
    PathPdfToText,PathSaveText,PathLogo,PathLogoJPG,PathSQL,
    PathSomErro,PathSQLDML,vIdRetiro,PathTamplateLaudoMorte,PathTamplateLaudoVenda:string;
    vMov,vForn,vCadCurral :integer;
    vWebBrowser:TWebBrowser;
    iTimer,vAltera :integer;
    vPositionX,vPositionY:Single;
    WebBrowserGeral,WebBrowserGRID : TWebBrowser;
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure HabilitaFuncoes(TipoUsuario:string);
    procedure SomarColunasGridForn;
    procedure CarregaCombos;
    procedure AjustaDashBoard;
    procedure Notificacao;
    procedure ReCreateBrowser(URL:STRING);
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
    procedure GeraGridCustoFixo;
    function  RetornaSqlGrid:string;
    procedure AbrirQryGrid;
    procedure ChartAnimalCategoria;
    procedure GeraDashConfinamento;
    function  GetVersaoArq: string;
    function  ObterVersaoWindows: String;
    procedure ExpTXT(DataSet: TDataSet; Arq: string);
    procedure LabelQtdeConfPasto;
    procedure AtualizaFieldConf(PathConfig,PathBDCampo: string);
    procedure GeraResumoDia(Adata:string);
    function Base64FromBitmap(vBitmap: FMX.Graphics.TBitmap): string;
    function BitmapFromBase64(const base64: string): FMX.Graphics.TBitmap;
    function Getlicenca(vCodCliente,vCodSistema:string): string;
    function GetVersao: string;
    function GetTesteWS: string;

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

uses UCadPadrao, UCadUsers, UServiceDB, UPropriedadeParceira, UCurrais,
  UCadCategoria, UCadRaca,
  UFornecedorSuplemento, USuplementoMineral, UPlanNutri, UEntradaGrupo,
  UPrevisaoForn, USaidaGrupo, UMovimentacaoGrupo, UFornecimentoMineral,
  UEntradaEstoqueMineral, UMsgDlg, UCalendario, UCadGTA, UMsgDlgRel,
  UMyCustomThread, URetiro, UCertificadora, UFornecedorBrincos, UBND,
  UPedidoBrincos, UComunicadoReidentificacao, UComunicadoMorte,
  UComunicadoEntrada, UComunicadoNascimento, UImportaLiberacao,
  UFabricanteFarmaco, UFarmacos, UProtocolo, UEstoqueFarmaco, UTratamentos,
  UTTA, ServiceRel, UHistoricoMov, UMorte, UNascimento, UCompradorGado,
  UFiltrosRel, UMotivoAplicacao, UAuxMotivoMovimentacao, UPlanUsoMineral,
  UDiariasOcupacao, UCurralConfinamento, UIntegracaoTerceiros, UGraficoConsumo,
  ServiceDB2, UPluviometria, UPluviometro, UBebedouro, UScorePasto, UAlimentos,
  UAuxRebanho, URelHisObsManejo, UCadRacao, UPlanConfi, UPlanTratosPadrao,
  USeviceConfinamento, ULoteNutricional, UFornecimentoRacaoConf,
  UAuxCadNotaCocho, ULeituraCocho, UAuxCentroCusto,UBaixaEstoque,
  UDashboard, UDashLotes, UdmReportConf, ContratoCompra, UDashEstoque,
  URelatorioZooConf, URelGMD, UBaseCampo, UServiceBaseCampo,
  UEntAnimal, UMovimentacaoPesagemAnimal, UHistMovRebanho, URelFinanceiro,
  UBaixaManualFarmaco, URelSaida, URateioOutrosCustos, UCustoFixo, FabricaNew,
  UEstoqueChip, URetiradaChip, UServiceNew, UGerenteOperacional,
  UResponsavelRastreabilidade, UMedicoVeterinario, UVagao;

function TfrmPrincipal.Getlicenca(vCodCliente,vCodSistema:string): string;
var
 Url,Host,Porta,vJsonString,vField,Valor:string;
 vJoItem  : TJSONArray;
 I,X:integer;
 joItems: TJSONArray;
 jSubObj : TJSONObject;
 f: TField;
begin
  Host  := '177.223.45.155';
  Porta := '8888';

  Url := 'http://'+Host+':'+Porta+'/GeLicenca'+'/'+vCodCliente+'/'+vCodSistema;
  IdHTTP1.Request.CustomHeaders.Clear;
  vJsonString        := IdHTTP1.Get(URL);

  if vJsonString ='{"Erro":"Cliente nao encontrado"}' then
    Result := 'Cliente nao encontrado'
  else
  begin


  jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
  joItems := jSubObj.GetValue<TJSONArray>('SistemasClientes') as TJSONArray;

  serviceDB.DeletaAnimalLicenca;

  if joItems.Size>0 then
  begin
    serviceDB.SistemasClientes.Close;
    serviceDB.SistemasClientes.Open;
    for X := joItems.Size - 1 downto 0 do
    begin
      serviceDB.SistemasClientes.Close;
      serviceDB.SistemasClientes.Open;
      serviceDB.SistemasClientes.Insert;
      for f in serviceDB.SistemasClientes.Fields do
      begin
        vField:=LowerCase(f.FieldName);
        begin
         if vField<>'SYNC' then
         begin
          Valor := joItems.Get(x).GetValue<string>(vField);
          if Valor.Length>0 then
           serviceDB.SistemasClientes.FieldByName(vField).AsString := Valor;
         end
         else
            serviceDB.SistemasClientes.FieldByName(vField).AsInteger := 1;
        end;
      end;
      try
       serviceDB.SistemasClientesULTIMAVALIDACAO.AsDateTime := now;
       serviceDB.SistemasClientes.ApplyUpdates(-1);
       serviceDB.SistemasClientes.Close;
       serviceDB.SistemasClientes.Open;
       if serviceDB.SistemasClientesVENCIMENTO.AsDateTime<DATE then
       begin
        Result := 'Licença Vencida em :'+FormatDateTime('dd/mm/yyyy',serviceDB.SistemasClientesVENCIMENTO.AsDateTime);
       end
       else
        if serviceDB.SistemasClientesSTATUS_LICENCA.AsInteger=2 then
        begin
         Result := 'Licença Bloqueada :'+serviceDB.SistemasClientesMSGCLIENTE.AsString;
        end
        else
        begin
          Result := 'Cliente Validade com sucesso!';
          layKey.Visible := false;
        end;
      except
        on E : Exception do
         result := ('Erro : '+e.Message);
      end;
    end
  end
  else
   Result :=StringReplace(serviceDB.SistemasClientes.Name,'T','',[rfReplaceAll])+' Sem Dados Para Baixar!'
  end;
end;

function TfrmPrincipal.GetTesteWS: string;
var
 Url,Host,Porta,vJsonString,vField,Valor:string;
 vJoItem  : TJSONArray;
 I,X:integer;
 joItems: TJSONArray;
 jSubObj : TJSONObject;
 f: TField;
begin
  Host  := '177.223.45.155';
  Porta := '8888';

  Url := 'http://'+Host+':'+Porta+'/Teste';
  IdHTTP1.Request.CustomHeaders.Clear;
  try
   vJsonString        := IdHTTP1.Get(URL);
   Result             := 'OK'
  except
   Result             := 'ERRO'
  end;
end;

function TfrmPrincipal.GetIdeDiskSerialNumber: String;
  type
    TSrbIoControl = packed record
      HeaderLength: ULONG;
      Signature: Array[0..7] of Char;
      Timeout: ULONG;
      ControlCode: ULONG;
      ReturnCode: ULONG;
      Length: ULONG;
   end;
   SRB_IO_CONTROL = TSrbIoControl;
   PSrbIoControl = ^TSrbIoControl;

    TIDERegs = packed record
      bFeaturesReg : Byte;
      bSectorCountReg : Byte;
      bSectorNumberReg : Byte;
      bCylLowReg : Byte;
      bCylHighReg : Byte;
      bDriveHeadReg : Byte;
      bCommandReg : Byte;
      bReserved : Byte;
   end;
    IDEREGS = TIDERegs;
    PIDERegs = ^TIDERegs;

   TSendCmdInParams = packed record
      cBufferSize : DWORD;
      irDriveRegs : TIDERegs;
      bDriveNumber : Byte;
      bReserved : Array[0..2] of Byte;
      dwReserved : Array[0..3] of DWORD;
      bBuffer : Array[0..0] of Byte;
    end;
    SENDCMDINPARAMS = TSendCmdInParams;
    PSendCmdInParams = ^TSendCmdInParams;

    TIdSector = packed record
      wGenConfig : Word;
      wNumCyls : Word;
      wReserved : Word;
      wNumHeads : Word;
      wBytesPerTrack : Word;
      wBytesPerSector : Word;
      wSectorsPerTrack : Word;
      wVendorUnique : Array[0..2] of Word;
      sSerialNumber : Array[0..19] of Char;
      wBufferType : Word;
      wBufferSize : Word;
      wECCSize : Word;
      sFirmwareRev : Array[0..7] of Char;
      sModelNumber : Array[0..39] of Char;
      wMoreVendorUnique : Word;
      wDoubleWordIO : Word;
      wCapabilities : Word;
      wReserved1 : Word;
      wPIOTiming : Word;
      wDMATiming : Word;
      wBS : Word;
      wNumCurrentCyls : Word;
      wNumCurrentHeads : Word;
      wNumCurrentSectorsPerTrack : Word;
      ulCurrentSectorCapacity : ULONG;
      wMultSectorStuff : Word;
      ulTotalAddressableSectors : ULONG;
      wSingleWordDMA : Word;
      wMultiWordDMA : Word;
      bReserved : Array[0..127] of Byte;
    end;
    PIdSector = ^TIdSector;

  const
    IDE_ID_FUNCTION = $EC;
    IDENTIFY_BUFFER_SIZE = 512;
    DFP_RECEIVE_DRIVE_DATA = $0007c088;
    IOCTL_SCSI_MINIPORT = $0004d008;
    IOCTL_SCSI_MINIPORT_IDENTIFY = $001b0501;
    DataSize = sizeof(TSendCmdInParams)-1+IDENTIFY_BUFFER_SIZE;
    BufferSize = SizeOf(SRB_IO_CONTROL)+DataSize;
    W9xBufferSize = IDENTIFY_BUFFER_SIZE+16;
  var
    hDevice : THandle;
    cbBytesReturned : DWORD;
    pInData : PSendCmdInParams;
    pOutData : Pointer;
    Buffer : Array[0..BufferSize-1] of Byte;
    srbControl : TSrbIoControl absolute Buffer;

  begin
    Result := '';
    FillChar(Buffer,BufferSize,#0);
    if Win32Platform=VER_PLATFORM_WIN32_NT then
    begin
      hDevice := CreateFile('\\.\Scsi0:',
      GENERIC_READ or GENERIC_WRITE, FILE_SHARE_READ or FILE_SHARE_WRITE,  nil, OPEN_EXISTING, 0, 0);
      if hDevice=INVALID_HANDLE_VALUE then Exit;
      try
        srbControl.HeaderLength := SizeOf(SRB_IO_CONTROL);
        System.Move('SCSIDISK',srbControl.Signature,8);
        srbControl.Timeout := 2;
        srbControl.Length := DataSize;
        srbControl.ControlCode := IOCTL_SCSI_MINIPORT_IDENTIFY;
        pInData := PSendCmdInParams(PChar(@Buffer)
        +SizeOf(SRB_IO_CONTROL));
        pOutData := pInData;
       with pInData^ do
       begin
         cBufferSize := IDENTIFY_BUFFER_SIZE;
         bDriveNumber := 0;
         with irDriveRegs do
         begin
           bFeaturesReg := 0;
           bSectorCountReg := 1;
           bSectorNumberReg := 1;
           bCylLowReg := 0;
           bCylHighReg := 0;
           bDriveHeadReg := $A0;
           bCommandReg := IDE_ID_FUNCTION;
         end;
      end;
      if not DeviceIoControl( hDevice, IOCTL_SCSI_MINIPORT, @Buffer, BufferSize, @Buffer, BufferSize, cbBytesReturned, nil ) then Exit;
     finally
       CloseHandle(hDevice);
     end;
   end
   else
   begin
      hDevice := CreateFile( '\\.\SMARTVSD', 0, 0, nil, CREATE_NEW, 0, 0 );
      if hDevice=INVALID_HANDLE_VALUE then Exit;
      try
        pInData := PSendCmdInParams(@Buffer);
        pOutData := @pInData^.bBuffer;
        with pInData^ do
        begin
           cBufferSize := IDENTIFY_BUFFER_SIZE;
           bDriveNumber := 0;
           with irDriveRegs do
           begin
             bFeaturesReg := 0;
             bSectorCountReg := 1;
             bSectorNumberReg := 1;
             bCylLowReg := 0;
             bCylHighReg := 0;
             bDriveHeadReg := $A0;
             bCommandReg := IDE_ID_FUNCTION;
           end;
         end;
         if not DeviceIoControl( hDevice, DFP_RECEIVE_DRIVE_DATA, pInData, SizeOf(TSendCmdInParams)-1, pOutData, W9xBufferSize, cbBytesReturned, nil ) then Exit;
        finally
          CloseHandle(hDevice);
        end;
     end;
     with PIdSector(PChar(pOutData)+16)^ do
     begin
        ChangeByteOrder(sSerialNumber,SizeOf(sSerialNumber));
        SetString(Result,sSerialNumber,SizeOf(sSerialNumber));
     end;
end;

function TfrmPrincipal.GetVersao: string;
var
 Url,Host,Porta,vJsonString,vField,Valor:string;
 vJoItem  : TJSONArray;
 I,X:integer;
 joItems: TJSONArray;
 jSubObj : TJSONObject;
 f: TField;
begin
  Host  := '177.223.45.155';
  Porta := '8888';

  Url := 'http://'+Host+':'+Porta+'/GeVersao/1';
  IdHTTP1.Request.CustomHeaders.Clear;
  vJsonString        := IdHTTP1.Get(URL);
  jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
  joItems  := jSubObj.GetValue<TJSONArray>('VersaoSistema') as TJSONArray;
  Result   := joItems.Get(x).GetValue<string>('numversao');
end;

function TfrmPrincipal.GetVersaoArq: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(
  ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0,
  VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue),
  VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(
    dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(
    dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(
    dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfrmPrincipal.MyShowMessage(msg: string;btnCancel:Boolean);
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
procedure TfrmPrincipal.AbrirQryGrid;
var
 oField: TAggregateField;
 i: Integer;
begin
  gridAnimais.Enabled:=false;
  BindSourceDB3.DataSet := nil;
  TThread.CreateAnonymousThread(procedure()
  begin
   TThread.Synchronize(nil,procedure
   begin
     with qryGrid,qryGrid.SQL do
     begin
      Clear;
      Add('SELECT W.*,');
      Add('CASE');
      Add(' WHEN (ultimo_peso>0) and (cast(dt_ultimo_peso AS date)-cast(data_ent AS date)>0) THEN (ultimo_peso-peso_Ent)/(cast(dt_ultimo_peso AS date)-cast(data_ent AS date)+1)');
      Add('else 0');
      Add('END gmdProjetado');
      Add('FROM');
      Add('(');
      Add('SELECT y.*,');
      Add(' COALESCE(');
      Add('  CASE');
      Add('    WHEN y.PESO_SAIDA>0 THEN y.PESO_SAIDA-y.Peso_Ent');
      Add('   END,0) GTP_SAIDA,');
      Add(' COALESCE(');
      Add('  CASE');
      Add('    WHEN (y.PESO_SAIDA>0) and (Y.DIAS>0) THEN ((y.PESO_SAIDA-y.Peso_Ent)/Y.DIAS)');
      Add('  END,0) GMD_SAIDA');
      Add('FROM');
      Add('(SELECT X.*,');
      Add(' case');
      Add('when x.IdadeAtual <=12                      then  ''0 A 12''');
      Add('when x.IdadeAtual >12 and x.IdadeAtual<=24  then ''13 A 24''');
      Add('when x.IdadeAtual >24 and x.IdadeAtual<=36  then ''25 A 36''');
      Add('when x.IdadeAtual >36                       then ''MAIS 36''');
      Add('end FaixaIdade');
      Add('from');
      Add('(select');
      Add('cat.NOME CategoriaAtual,');
      Add('an.id animal_id,');
      Add('cu.codigo curral,');
      Add('cu.id_retiro,');
      Add('an.identificacao_1 ident_1,');
      Add('an.identificacao_2 ident_2,');
      Add('an.IDADE_MESES idade_entrada,');
      Add('CAST(an.DATA_NASCIMENTO AS DATE) nascimento,');
      Add('r.nome raca,');
      Add('c.nome categoria,');
      Add('an.data_proc data_ent,');
      Add('an.peso_entrada peso_Ent,');
      Add('COALESCE(cast(an.data_ultimo_peso as date),CAST(an.data_proc AS date)) dt_ultimo_peso,');
      Add('COALESCE(an.ultimo_peso,an.peso_entrada)ultimo_peso,');
      Add('g.numero gta,');
      Add('datediff(DAY FROM an.data_proc to COALESCE(an.DATA_SAIDA,CURRENT_DATE))+1 dias,');
      Add('datediff(MONTH FROM an.DATA_NASCIMENTO to COALESCE(an.DATA_SAIDA,CURRENT_DATE)) idadeAtual,');
      Add('an.ID_LOTESAIDA,');
      Add('an.DATA_SAIDA,');
      Add('an.PESO_SAIDA,');
      Add('gs.numero gta_Saida,');
      Add('prt.NOME  ProdutorOrigem,');
      Add('prts.NOME ProdutorDestinoSaida,');
      Add('c.SEXO,');
      Add('pro.NOME PropriedadeOrigem,');
      Add('prop.NOME Proprietario,');
      Add('an.VALOR_COMPRA,');
      Add('an.VALOR_VENDA,');
      Add('an.DATA_REPROCESSAMENTO,');
      Add('an.STATUS,');
      Add('axr.nome REBANHO,');
      Add('CCA.NUMERO NUMERO,');
      Add('CU.TIPO,');
      Add('AN.ID_BASE_CAMPO,');
      Add('an.PESO_ESTIMADO,');
      Add('(SELECT GMD FROM RETORNA_GMD_ACUMULADO(AN.ID,CURRENT_DATE)) GMD_ESTIMADO,');
      Add('an.ID_PRODUTOR,');
      Add('CASE');
      Add('  WHEN BLOQUEIO=0 THEN ''Neutro''');
      Add('  WHEN BLOQUEIO=1 THEN ''Não Apto''');
      Add('  WHEN BLOQUEIO=2 THEN ''Apto''');
      Add('END BLOQUEIO,');
      Add('BLOQUEIO BLOQUEIO_INT,');
      Add('upper(AN.OBSERVACAO)OBSERVACAO,');
      Add('AN.DATA_ENTRADA_CONF,');
      Add('AN.PESO_ENTRADA_CONF,');
      Add('AN.VALOR_CUSTO_ALIMENTAR,');
      Add('AN.VALOR_CUSTO_FIXO_ACU,');
      Add('coalesce((SELECT SUM(A.VALOR_TOTAL) FROM ANIMAL_SANIDADE A WHERE A.ID_ANIMAL=AN.ID),0) VALOR_SANI_ACU,');
      Add('AN.DESTINO');
      Add('from animal AN');
      Add('join raca R ON AN.id_raca=R.id');
      Add('join categorias c on an.id_categoria=c.id');
      Add('left join categorias cat on an.id_categoria_Atual=cat.id');
      Add('join currais cu on an.id_local=cu.id');
      Add('left join gta g on g.id=an.gta_id');
      Add('left join gta gs on gs.id=an.ID_GTA_SAIDA');
      Add('left join PRODUTORES prop ON prop.ID=an.ID_PRODUTOR');
      Add('LEFT JOIN PRODUTORES prt ON prt.ID=an.ID_PRODUTOR_ORIGEM');
      Add('LEFT JOIN PROPRIEDADES Pro ON pro.ID=prt.ID_PROPRIEDADE');
      Add('LEFT JOIN PRODUTORES prts ON prts.ID=an.ID_PRODUTOR_DESTINO_SAIDA');
      Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=an.ID_REBANHO');
      Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL CCA ON CCA.ID=an.ID_CONTRATO');
      Add('LEFT JOIN PRODUTORES CCP ON CCP.ID=CCA.ID_PRODUTOR_DESTINO');
      Add('WHERE AN.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
      if cbxProprietario.ItemIndex>0 then
       Add('and PROP.ID='+vIdProprietario);
      if edtNumContrato.Text.Length>0 then
       Add('and CCA.NUMERO='+edtNumContrato.Text.QuotedString);
      Add('AND AN.STATUS<>-1)X)y)w');
      Add('where 1=1');
      if cbxStatus.ItemIndex>0 then
       Add('AND STATUS='+IntToStr(cbxStatus.ItemIndex));

      if cbxRetiro.ItemIndex>0 then
       Add('and ID_RETIRO='+vIdRetiro);

      if edtLocalOrigem.Text.Length>0 then
       Add('and CURRAL='+edtLocalOrigem.Text.QuotedString);

      if cbxRebanhof.ItemIndex>0 then
       Add('AND REBANHO='+cbxRebanhof.Selected.Text.QuotedString);

      if cbxFRaca.ItemIndex>0 then
       Add('and RACA='+cbxFRaca.Selected.Text.QuotedString);

      if cbxFCategoria.ItemIndex>0 then
       Add('and CategoriaAtual='+cbxFCategoria.Selected.Text.QuotedString);

      if cbxBloqueadoF.ItemIndex>0 then
      begin
       if cbxBloqueadoF.ItemIndex=1 then
        Add('and BLOQUEIO_INT=0');
       if cbxBloqueadoF.ItemIndex=2 then
        Add('and BLOQUEIO_INT=1');
       if cbxBloqueadoF.ItemIndex=3 then
        Add('and BLOQUEIO_INT=2');
      end;
      if edtUltimaObeservação.Text.Length>0 then
       Add('and observacao='+edtUltimaObeservação.Text.QuotedString);

      if edtFNumGTA.Text.Length>0 then
        Add('and GTA='+edtFNumGTA.Text.QuotedString);

      if edtGtaSaida.Text.Length>0 then
        Add('and GTA_SAIDA='+edtGtaSaida.Text.QuotedString);

      if edtIdent1.Text.Length>0 then
        Add('and IDENT_1='+edtIdent1.Text.QuotedString);

      if edtIdent2.Text.Length>0 then
        Add('and IDENT_2='+edtIdent2.Text.QuotedString);

      if edtLoteSaida.Text.Length>0 then
        Add('and ID_LOTESAIDA='+edtLoteSaida.Text);

      if edtBaseCampoF.Text.Length>0 then
        Add('and ID_BASE_CAMPO='+edtBaseCampoF.Text);

      if chkPeriodoProc.IsChecked then
      begin
       if edtFDataEntDE.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       if edtFDataEntATE.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataEntATE.SetFocus;
         Exit;
       end;
      if edtFDataEntATE.Date<edtFDataEntDE.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_ENT as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date)));
      end;

      if chkPeriodoReproc.IsChecked then
      begin
       if edtDataDeReproc.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial Reprocessamento');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       if edtDataAteReproc.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final Reprocessamento');
         edtFDataEntATE.SetFocus;
         Exit;
       end;
      if edtDataAteReproc.Date<edtDataDeReproc.Date then
       begin
         ShowMessage('Data Reprocessamento final nao pode ser menor que inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_REPROCESSAMENTO as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtDataDeReproc.Date))+' and '+
       QuotedStr(FormatDateTime('mm/dd/yyyy',edtDataATEReproc.Date)));
      end;



      if chkPeriodoSaida.IsChecked then
      begin
       if edtFDataSaiDE.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataSaiDE.SetFocus;
         Exit;
       end;
       if edtFDataSaiATE.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
      if edtFDataSaiATE.Date<edtFDataSaiDe.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_SAIDA as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiATE.Date)));
      end;

      if chkPeriodoConf.IsChecked then
      begin
       if edtDeEntConf.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataSaiDE.SetFocus;
         Exit;
       end;
       if edtAteEntConf.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
      if edtAteEntConf.Date<edtDeEntConf.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
       Add('and DATA_ENTRADA_CONF between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtDeEntConf.Date))+
        ' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtAteEntConf.Date)));
      end;

      if chkAtivosPeriodo.IsChecked then
      begin
       if edtDeAtivos.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtDeAtivos.SetFocus;
         Exit;
       end;
       if edtAteAtivos.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtAteAtivos.SetFocus;
         Exit;
       end;
      if edtAteAtivos.Date<edtDeAtivos.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
       Add('and DATA_ENT <= '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtAteAtivos.Date))+
        ' and (DATA_SAIDA  IS NULL OR DATA_SAIDA>'+QuotedStr(FormatDateTime('mm/dd/yyyy',edtAteAtivos.Date))+')');
      end;

      if cbxProdutorOrigem.ItemIndex>0 then
       Add('and PRODUTORORIGEM='+cbxProdutorOrigem.Selected.Text.QuotedString);

      if cbxProdutorDestino.ItemIndex>0 then
       Add('and PRODUTORDESTINOSAIDA='+cbxProdutorDestino.Selected.Text.QuotedString);
      if cbxFaixaIdade.ItemIndex>0 then
       Add('and FaixaIdade='+cbxFaixaIdade.Selected.Text.QuotedString);

      if cbxDestinoAnimal.ItemIndex>0 then
       Add('and DESTINO='+cbxDestinoAnimal.Selected.Text.QuotedString);

      qryGrid.SQL.Text;
      try
       Open;
       SomarColunasGridForn;
       gridAnimais.Enabled:=true;
       layImgAguarde.SendToBack;
       TimerAguarde.Enabled := false;
       if gridAnimais.RowCount=0 then
       begin
        btnExportaGrid.Enabled := false;
        btnImprimir.Enabled    := false;
       end
       else
       begin
        btnExportaGrid.Enabled := true;
        btnImprimir.Enabled    := true;
       end
       except
       on e : Exception do
        myShowMessage('Erro : '+e.Message,false)
      end;
     end;
   end);
  end).Start;
end;

procedure TfrmPrincipal.AjustaDashBoard;
begin
end;

procedure TfrmPrincipal.bntGMDAnoClick(Sender: TObject);
var
 I:integer;
begin
  for I := 1 to 12 do
  begin
    serviceDBN.GMD_ANUAL_FAZENDA.Close;
    serviceDBN.GMD_ANUAL_FAZENDA.Open;
    serviceDBN.GMD_ANUAL_FAZENDA.Insert;
    serviceDBN.GMD_ANUAL_FAZENDAID_FAZENDA.AsString            := serviceDB.vIdPropriedade;
    serviceDBN.GMD_ANUAL_FAZENDAID_USUARIO.AsString            := serviceDB.vIdUserLogado;
    serviceDBN.GMD_ANUAL_FAZENDAANO.AsString                   := cbxAnoGMD.Selected.Text;
    serviceDBN.GMD_ANUAL_FAZENDAMES.AsInteger                  := I;
    serviceDBN.GMD_ANUAL_FAZENDAGMD.AsString                   := edtGmdPadrao.Text;
    try
      serviceDBN.GMD_ANUAL_FAZENDA.ApplyUpdates(-1);
    except
      on e : Exception do
       MyShowMessage('Erro ao gerar Custo Fixo: '+e.Message,false);
    end;
  end;
  MyShowMessage('GMD gerado com sucesso!!',false);
  if not serviceDBN.AbrirGMDAno(cbxAnoGMD.Selected.Text) then
  begin
     bntGMDAno.Visible   := false;
  end
  else
  begin
    bntGMDAno.Visible   := true;
    gridGMDAno.RowCount := 0;
  end;
end;

procedure TfrmPrincipal.bntSyncClick(Sender: TObject);
begin
 if DMBaseCampo.vTipoMov=1 then
 begin
   DMBaseCampo.SyncAnimaisExistentes;
   DMBaseCampo.SyncAnimaisMovimentacao;
   DMBaseCampo.SyncAnimaisPeso;
   DMBaseCampo.SyncAnimaisSanidade;
   DMBaseCampo.SyncAnimaisReidente;
   DMBaseCampo.FinalizaBaseCampo(vIdBaseCampo);
   AtualizaFieldConf(ExtractFilePath(ParamStr(0))+'fieldconf.ini','');
   MyShowMessage('Dados Sincronizados com Sucesso!',false);
   DMBaseCampo.RetonaDadosCadBaseCampo(vIdBaseCampo);
 end;
 if DMBaseCampo.vTipoMov=2 then
 begin
  if edtGTA.Text<>'0' then
   DMBaseCampo.SyncAnimaisGTA;

  if edtBaseAnimais.Text<>'0' then
   DMBaseCampo.SyncAnimaisNovos;

  if edtSanidade.Text<>'0' then
   DMBaseCampo.SyncAnimaisSanidade;

   DMBaseCampo.FinalizaBaseCampo(vIdBaseCampo);
   AtualizaFieldConf(ExtractFilePath(ParamStr(0))+'fieldconf.ini','');
   MyShowMessage('Dados Sincronizados com Sucesso!',false);
   DMBaseCampo.RetonaDadosCadBaseCampo(vIdBaseCampo);
 end;
 if DMBaseCampo.vTipoMov=3 then
 begin
  DMBaseCampo.SyncAnimaisLoteSaida;
  if edtGTA.Text<>'0' then
   DMBaseCampo.SyncAnimaisGTA;
  DMBaseCampo.SyncAnimaisRefugoSaida;


  DMBaseCampo.FinalizaBaseCampo(vIdBaseCampo);
  AtualizaFieldConf(ExtractFilePath(ParamStr(0))+'fieldconf.ini','');
  MyShowMessage('Dados Sincronizados com Sucesso!',false);
  DMBaseCampo.RetonaDadosCadBaseCampo(vIdBaseCampo);
 end;
 if DMBaseCampo.vTipoMov=4 then
 begin
  TThread.CreateAnonymousThread(procedure
  begin
   try
     DMBaseCampo.SyncAnimaisLoteSaida;

     if edtGTA.Text<>'0' then
      DMBaseCampo.SyncAnimaisGTA;


     DMBaseCampo.SyncAnimaisRefugoSaida;

     if edtBaseAnimais.Text<>'0' then
      DMBaseCampo.SyncAnimaisNovos;

     DMBaseCampo.SyncAnimaisExistentes;

     if edtSanidade.Text<>'0' then
      DMBaseCampo.SyncAnimaisSanidade;


     DMBaseCampo.SyncAnimaisMovimentacao;
     DMBaseCampo.SyncAnimaisPeso;
     DMBaseCampo.SyncAnimaisReidente;


     TThread.Synchronize(nil, procedure
     begin
      DMBaseCampo.FinalizaBaseCampo(vIdBaseCampo);
      AtualizaFieldConf(ExtractFilePath(ParamStr(0))+'fieldconf.ini','');
      MyShowMessage('Dados Sincronizados com Sucesso!',false);
      DMBaseCampo.RetonaDadosCadBaseCampo(vIdBaseCampo);
     end);
   except
    on e : Exception do
    TThread.Synchronize(nil, procedure
     begin
     ShowMessage('Erro ao Atualizar Configuracao: '+e.Message)
     end);
    end;
  end).start;
 end;
end;

procedure TfrmPrincipal.AtualizaFieldConf(PathConfig,PathBDCampo: string);
var
 arquivo:TStringList;
 I:integer;
begin
   arquivo := TStringList.Create;
    try
      arquivo.LoadFromFile(PathConfig);
      for I := 0 to arquivo.Count -1 do
      begin
        if Copy(arquivo[i],0,9) = 'basecampo' then
        begin
         arquivo.Delete(I);
         arquivo.Insert(I,'basecampo  = '+PathBDCampo);
         break;
        end;
      end;
      arquivo.SaveToFile(PathConfig);
   finally
      arquivo.free;
   end;
end;

procedure TfrmPrincipal.btnAlimentosClick(Sender: TObject);
begin
 try
   frmCadAlimento := TfrmCadAlimento.Create(Self);
   frmCadAlimento.ShowModal;
 finally
   frmCadAlimento.Release;
 end;
end;

procedure TfrmPrincipal.btnCancelClick(Sender: TObject);
begin
  edtPesoAtual.Text    := '';
  edtValorAtual.Text   := '';
  edtNovoPesoEnt.Text  := '';
  edtNovoValor.Text    := '';
  layAlteracao.Visible :=false;
end;

procedure TfrmPrincipal.btnCancelLoginClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.btnCancelLoginMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  TRectangle(Sender).Opacity :=1;
end;

procedure TfrmPrincipal.btnCancelLoginMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 TRectangle(Sender).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnConfirmaClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
 if cbxEstoqueChip.ItemIndex=-1 then
 begin
  dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe se usa estoque de CHIP!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
 end;
 if edtCustoFixoOp.Text.Length=0  then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Custo Fixo Padrão!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  Exit;
 end;
 try
   serviceDB.qryConfigPadraoGMD_PADRAO.AsString           := edtGmdPadrao.Text;
   serviceDB.qryConfigPadraoCONSUMO_PV_PADRAO.AsString    := edtConsumoPVPadrao.Text;
   serviceDB.qryConfigPadraoTIPO_MEDIA_VALOR_KG.AsInteger := cbxTipoMedia.ItemIndex;
   serviceDB.qryConfigPadraoGMD.AsInteger                 := cbxConfigGMD.ItemIndex;
   serviceDB.qryConfigPadraoFREQ_LIMPA_BEBEDOURO.AsString := edtFrequenciaLimpaBebedouro.Text;
   serviceDB.qryConfigPadraoESTOQUE_CHIP.AsInteger        := cbxEstoqueChip.ItemIndex;

   serviceDB.qryConfigPadraoNOME_CLIENTE.AsString         := edtNomeCliente.Text;
   serviceDB.qryConfigPadraoCNPJ.AsString                 := EDTCnpjCliente.Text;
   serviceDB.qryConfigPadraoFONE.AsString                 := edtTelefoneCliente.Text;
   serviceDB.qryConfigPadraoCEP.AsString                  := edtCep.Text;
   serviceDB.qryConfigPadraoENDERECO.AsString             := edtEndereco.Text;
   serviceDB.qryConfigPadraoCIDADE.AsString               := edtCidadeCliente.Text;
   serviceDB.qryConfigPadraoUF.AsString                   := cbxUF.Selected.Text;

   if vImgLogo.Length>100 then
    serviceDB.qryConfigPadraoLOGO.AsString                := vImgLogo;

   if vImgLogo2.Length>100 then
    serviceDB.qryConfigPadraoLOGO_2.AsString              := vImgLogo2;


   serviceDB.qryConfigPadrao.ApplyUpdates(-1);
   MudarAba(tbimenu,sender);
  except
   on e : Exception do
   ShowMessage('Erro ao Atualizar Configuracao: '+e.Message)
  end;
end;

procedure TfrmPrincipal.btnConfirmarClick(Sender: TObject);
var
 dlg :TFrmmsgDlg;
begin
   if edtConfirmaSenha.Text.Length=0 then
   begin
     MyShowMessage('Informe a senha do usuario Logado!',false);
     layConfirmaSenha.Visible := true;
     edtConfirmaSenha.Text    := '';
     Exit;
   end
   else
   begin
     if edtSenha.Text.Length>0 then
     begin
       if serviceDB.vSenhaUserLogado<>edtConfirmaSenha.Text then
       begin
         MyShowMessage('Senha invalida ou diferente do usario logado impossivel alterar!!',false);
         Exit;
       end;
     end;
   end;
   if vAltera=1 then
   begin
    //IdAnimal,IdUsuario,vTipoAlteracao,ValorAlteracao
      qryGrid.First;
      while not qryGrid.Eof do
      begin
       serviceDB.AlteraEntradaAnimais(qryGridANIMAL_ID.AsString,
       serviceDB.vIdUserLogado,
       intToStr(vAltera),
       StringReplace(edtNovoValor.Text,',','.',[rfReplaceAll]),
       qryGridTIPO.AsString);
       qryGrid.Next;
      end;
      MyShowMessage('Animais alterados com sucesso!!',false);
      btnLocalizarAnimaisClick(Sender);
      edtPesoAtual.Text    := '';
      edtValorAtual.Text   := '';
      edtNovoPesoEnt.Text  := '';
      edtNovoValor.Text    := '';
      layAlteracao.Visible :=false;
      edtEraAtual.Text     :='';
      edtNovaEra.Text      :='';
   end;
   if vAltera=2 then
   begin
     qryGrid.First;
     while not qryGrid.Eof do
     begin
      serviceDB.AlteraEntradaAnimais(qryGridANIMAL_ID.AsString,
       serviceDB.vIdUserLogado,
       intToStr(vAltera),
       StringReplace(edtNovoPesoEnt.Text,',','.',[rfReplaceAll]),
       qryGridTIPO.AsString);
       qryGrid.Next;
     end;
      MyShowMessage('Animais alterados com sucesso!!',false);
      btnLocalizarAnimaisClick(Sender);
      edtPesoAtual.Text    := '';
      edtValorAtual.Text   := '';
      edtNovoPesoEnt.Text  := '';
      edtNovoValor.Text    := '';
      layAlteracao.Visible :=false;
      edtEraAtual.Text     :='';
      edtNovaEra.Text      :='';
   end;
   if vAltera=3 then
   begin
     qryGrid.First;
     while not qryGrid.Eof do
     begin
      serviceDB.AlteraEntradaAnimais(qryGridANIMAL_ID.AsString,
       serviceDB.vIdUserLogado,
       intToStr(vAltera),
       FormatDateTime('yyyy-mm-dd',edtNovaData.date).QuotedString,
       qryGridTIPO.AsString);
       qryGrid.Next;
     end;
      MyShowMessage('Animais alterados com sucesso!!',false);
      btnLocalizarAnimaisClick(Sender);
      edtPesoAtual.Text    := '';
      edtValorAtual.Text   := '';
      edtNovoPesoEnt.Text  := '';
      edtNovoValor.Text    := '';
      layAlteracao.Visible :=false;
      edtEraAtual.Text     :='';
      edtNovaEra.Text      :='';
   end;
   if vAltera=4 then
   begin
     qryGrid.First;
     while not qryGrid.Eof do
     begin
      serviceDB.AlteraEntradaAnimais(qryGridANIMAL_ID.AsString,
       serviceDB.vIdUserLogado,
       intToStr(vAltera),
       edtNovaEra.Text,
       qryGridTIPO.AsString);
       qryGrid.Next;
     end;
      MyShowMessage('Animais alterados com sucesso!!',false);
      btnLocalizarAnimaisClick(Sender);
      edtPesoAtual.Text    := '';
      edtValorAtual.Text   := '';
      edtNovoPesoEnt.Text  := '';
      edtNovoValor.Text    := '';
      layAlteracao.Visible :=false;
      edtEraAtual.Text     :='';
      edtNovaEra.Text      :='';
   end;
   if vAltera=5 then
   begin
     qryGrid.First;
     while not qryGrid.Eof do
     begin
      serviceDB.AlteraEntradaAnimais(qryGridANIMAL_ID.AsString,
       serviceDB.vIdUserLogado,
       '5',
       FormatDateTime('yyyy-mm-dd',edtDataEntConfNova.date).QuotedString,
       qryGridTIPO.AsString);
       qryGrid.Next;
     end;
      MyShowMessage('Animais alterados com sucesso!!',false);
      btnLocalizarAnimaisClick(Sender);
      edtPesoAtual.Text    := '';
      edtValorAtual.Text   := '';
      edtNovoPesoEnt.Text  := '';
      edtNovoValor.Text    := '';
      layAlteracao.Visible :=false;
      edtEraAtual.Text     :='';
      edtNovaEra.Text      :='';
   end;
   edtConfirmaSenha.Text    := '';
end;

procedure TfrmPrincipal.btnDeletaFotoBombaClick(Sender: TObject);
begin
 ImgFoto1.bitmap := nil;
end;

procedure TfrmPrincipal.btnEditarFotoBombaClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto1.Bitmap.LoadFromFile(OpenImg.FileName);
   vImgLogo := Base64FromBitmap(ImgFoto1.Bitmap);
 end;
end;

function TfrmPrincipal.Base64FromBitmap(vBitmap: FMX.Graphics.TBitmap): string;
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
      Output.free;
    end;
  finally
    Input.free;
  end;
end;

procedure TfrmPrincipal.btnEntradaBCClick(Sender: TObject);
begin
 serviceDB.TableRacas.Close;
 serviceDB.TableRacas.Open;
 serviceDB.TableCategorias.Close;
 serviceDB.TableCategorias.Open;
 frmPrincipal.vMov :=1;
 try
   frmOpercaoEntrada := TfrmOpercaoEntrada.Create(Self);
   frmOpercaoEntrada.ShowModal;
 finally
   frmOpercaoEntrada.Release;
   frmPrincipal.vMov :=0;
 end;
end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
var
 caminho:string;
 vQry:TFDQuery;
 versao,vGetTeste:string;
begin
 serviceDB.vSyncBC :=0;
 if not rdBaseCampo.IsChecked then
 begin
  vIdBaseCampo  :='0';
  versao := GetVersaoArq;
  if FileExists(PathSQL) then
  begin
    MyShowMessage('Aguarde Sistema sera Atualizado!',false);
    vErroUpdate := false;
    caminho := vPath+'update\sql\log'+FormatDateTime('dd-mm-hh-',now)+'.txt';
    if not FileExists(caminho) then
    begin
     AssignFile(arq,caminho);
     Rewrite(arq);
    end
    else
    begin
      AssignFile(arq,caminho);
      Append(arq);
    end;
    with FDScript1 do
    begin
      try
       SQLScriptFileName := PathSQL;
       ValidateAll;
       ExecuteAll;
       RenameFile(PathSQL,PathSQL+'_old');
      except
       on e : Exception do
       begin
        RenameFile(PathSQL,PathSQL+'_old');
        Writeln(arq,'Erro ao Atualizar Sistema'+e.Message);
       end;
      end;
    end;
    CloseFile(arq);
    if vErroUpdate then
     MyShowMessage('Sistema Atualizado com Erro Consulte o Log!',false)
    else
    begin
     MyShowMessage('Sistema Atualizado com Sucesso!',false);
     serviceDB.AtualizaVersaoBanco('2021-02');
    end;
  end;

  if FileExists(PathSQLDML) then
  begin
    with FDScript1 do
    begin
      try
       SQLScriptFileName := PathSQLDML;
       ValidateAll;
       ExecuteAll;
       RenameFile(PathSQLDML,PathSQLDML+'_old');
      except
       on e : Exception do
       begin
        Writeln(arq,'Erro ao Atualizar Sistema'+e.Message);
       end;
      end;
    end;
  end;

//  serviceDB.qryAnimalUp.Close;
//  serviceDB.qryAnimalUp.Open;
//  if serviceDB.qryAnimalUp.IsEmpty then
//   if FileExists(vPath+'UpdateAnimal.exe') then
//    Winexec(PAnsiChar(AnsiString(vPath+'UpdateAnimal.exe')),SW_NORMAL);

  serviceDB.SistemasClientes.Close;
  serviceDB.SistemasClientes.Open;
  if serviceDB.SistemasClientes.IsEmpty then
  begin
   MyShowMessage('Informe o Codigo do Cliente!',false);
   edtCodigoCliente.Text := '';
   layKey.Visible := true;
   Exit;
  end
  else
  begin
   try
    vGetTeste := GetTesteWS;
    if(vGetTeste='OK') then
    begin
     if Getlicenca(serviceDB.SistemasClientesID_CLIENTE.AsString,'1')='Cliente nao encontrado'then
     begin
      MyShowMessage('Cliente nao encontrado',false);
      Exit;
     end;
        serviceDB.SistemasClientes.Close;
        serviceDB.SistemasClientes.Open;
    end
    else
    if(DaysBetween(date,serviceDB.SistemasClientesULTIMAVALIDACAO.AsDateTime)>7) then
     begin
       MyShowMessage('Licença precisa ser validada online!',false);
       Exit;
     end;
   except
     if(DaysBetween(date,serviceDB.SistemasClientesULTIMAVALIDACAO.AsDateTime)>7) then
     begin
       MyShowMessage('Licença precisa ser validada online!',false);
       Exit;
     end
     else
      MyShowMessage('Servidor de Licença Offline!',false);
   end;
//     if  then
//     begin
//        Getlicenca(serviceDB.SistemasClientesID_CLIENTE.AsString,'1');
//        serviceDB.SistemasClientes.Close;
//        serviceDB.SistemasClientes.Open;
//     end;

    if serviceDB.SistemasClientesSTATUS_LICENCA.AsInteger=2 then
    begin
      MyShowMessage('Licença Bloqueada :'+serviceDB.SistemasClientesMSGCLIENTE.AsString,false);
      Exit;
    end;


    if serviceDB.SistemasClientesVENCIMENTO.AsDateTime<DATE then
    begin
     MyShowMessage('Licença Vencida em :'+FormatDateTime('dd/mm/yyyy',serviceDB.SistemasClientesVENCIMENTO.AsDateTime),false);
     Exit;
    end;


    lblValidadeLicenca.Text :='Validade Licença:'+FormatDateTime('dd/mm/yyyy',serviceDB.SistemasClientesVENCIMENTO.AsDateTime);
    if DaysBetween(date,serviceDB.SistemasClientesVENCIMENTO.AsDateTime)<=5 then
    begin
     if DaysBetween(date,serviceDB.SistemasClientesVENCIMENTO.AsDateTime)>0 then
      MyShowMessage('Falta :'+intToStr(DaysBetween(date,serviceDB.SistemasClientesVENCIMENTO.AsDateTime))+' para vencer sua licença!',false)
     else
      MyShowMessage('Sua Licença expira amanha, entre em contato com suporte.',false)
    end;

  end;

  vQry := TFDQuery.Create(nil);
  vQry.Connection := serviceDB.FCon;
  if edtLogin.Text.Length=0 then
  begin
   MyShowMessage('Infome o Login do usuários!',false);
   edtLogin.SetFocus;
   Exit;
  end;
  if edtSenha.Text.Length=0 then
  begin
    MyShowMessage('Infome a Senha do usuários!', false);
    edtSenha.SetFocus;
    Exit;
  end;
  if cbxPropriedade.ItemIndex=-1 then
  begin
    MyShowMessage('Infome a Propriedade!',false);
    cbxPropriedade.SetFocus;
    Exit;
  end;

    if cbxPropriedade.ItemIndex>-1 then
     serviceDB.vNomePropriedade  := cbxPropriedade.Selected.Text;
    vIDPropriedadePropria       := LinkFillControlToFieldID2.BindList.GetSelectedValue.AsString;
    serviceDB.vRastreada        := serviceDB.VerificaRastreada(vIDPropriedadePropria);
    TreeRastreabilidade.Visible := serviceDB.vRastreada='1';

    if (edtLogin.Text='ADM') and (edtSenha.Text='ADMIN') then
    begin
      serviceDB.vNomeUserLogado := 'Field Pec';
      serviceDB.vIdUserLogado   := '0';
      lblUserLogado.Text := 'Usuario : '+serviceDB.vNomeUserLogado;
      HabilitaFuncoes('1');
      MudarAba(tbimenu,sender);
      if vwindows='Windows 10' then
       Notificacao;
    end
    else
    begin
      if serviceDB.ValidaLogin(edtLogin.Text,edtSenha.Text) then
      begin
       if fileExists(ExtractFilePath(ParamStr(0))+'Update_Field.exe') then
       begin
         if GetTesteWS='OK' then
         begin
           vVersao       :=   GetVersao;
           vVersaoAtual  := GetVersaoArq;
           if vVersaoAtual<>vVersao then
           begin
             try
               MyShowMessage('Existe uma atualização do sistema disponvel, deseja atualiza agora?',true);
               case vConfirma of
               1:begin
                   ShellExecute(GetDesktopWindow,'open',pchar(ExtractFilePath(ParamStr(0))+'Update_Field.exe'),nil,nil,sw_show);
                   Application.Terminate;
                 end;
               end;
               except
               on E: Exception do
               begin
                 ShowMessage(E.Message);
               end;
             end;
           end;
         end;
       end;
       LabelQtdeConfPasto;
       vIdMineralPadrao:= serviceDB.VerificaMineralPadrao;
       if vIdMineralPadrao.Length>0 then
        serviceDB.AtualizaPlaUsoMineralGeral(vIDPropriedadePropria);
       cbxAnoGMD.ItemIndex := cbxAnoGMD.Items.IndexOf(FormatDateTime('yyyy',date));
       serviceDBN.AbrirGMDAno(cbxAnoGMD.Selected.Text);
       lblUserLogado.Text := 'Usuario : '+serviceDB.vNomeUserLogado;

       HabilitaFuncoes(serviceDB.vTipoUser);
       if cbxPropriedade.ItemIndex>-1 then
        lblPropriedadeLogada.Text :=cbxPropriedade.Selected.Text;
       ChartAnimalCategoria;
       GeraDashConfinamento;
       MudarAba(tbimenu,sender);
       if vwindows='Windows 10' then
        Notificacao;
      end
      else
      begin
        MyShowMessage('Usuário ou Senha Invalidos!',false);
        Exit;
      end;
    end;
    vQry.Release;
    mnuAlteraAnimais.Visible := false;
 end
 else//base campo
 begin
  serviceDB.ConectaBD(1);
  serviceDB.ConectaBDCAMPO;
  serviceDB.SistemasClientes.Close;
  serviceDB.SistemasClientes.Open;
  if serviceDB.SistemasClientes.IsEmpty then
  begin
   MyShowMessage('Informe a Licença de Uso do sistema!',false);
   edtCodigoCliente.Text := '';
   layKey.Visible := true;
   Exit;
  end
  else
  begin
//    DataKey := ValidadeKey(serviceDB.TablekeyKEY.AsString);
//    if DataKey<date then
//    begin
//      MyShowMessage('Licença Vencida em :'+DateToStr(DataKey)+' Dias',false);
//      edtSerialHD.Text := SerialNum('C');
//      layKey.Visible := true;
//      Exit;
//    end
//    else
//    begin
//      if DaysBetween(date,DataKey)<=5 then
//      begin
//       if DaysBetween(date,DataKey)>0 then
//        MyShowMessage('Falta :'+intToStr(DaysBetween(date,DataKey))+' para vencer sua licença!',false)
//       else
//        MyShowMessage('Sua Licença expira amanha, entre em contato com suporte.',false)
//      end;
//    end;
  end;

  vQry := TFDQuery.Create(nil);
  vQry.Connection := serviceDB.FCon;
  if edtLogin.Text.Length=0 then
  begin
   MyShowMessage('Infome o Login do usuários!',false);
   edtLogin.SetFocus;
   Exit;
  end;
  if edtSenha.Text.Length=0 then
  begin
    MyShowMessage('Infome a Senha do usuários!', false);
    edtSenha.SetFocus;
    Exit;
  end;
  if rdBaseMaster.IsChecked then
   serviceDB.vNomePropriedade  := cbxPropriedade.Selected.Text;
  serviceDB.vRastreada        := serviceDB.VerificaRastreada(vIDPropriedadePropria);
  TreeRastreabilidade.Visible := serviceDB.vRastreada='1';
  vVersaoAtual                := GetVersaoArq;
  lblVersao.Text              := 'Versão: '+GetVersaoArq;
  if serviceDB.ValidaLogin(edtLogin.Text,edtSenha.Text) then
  begin
   LabelQtdeConfPasto;
   lblUserLogado.Text := 'Usuario : '+serviceDB.vNomeUserLogado;
   HabilitaFuncoes(serviceDB.vTipoUser);
   if rdBaseMaster.IsChecked then
    lblPropriedadeLogada.Text :=cbxPropriedade.Selected.Text;

   if DMBaseCampo.vIdOperacaoBaseCampo='3' then//saida
   begin
    serviceDb.AbreQryLoteSaida('','',
    FormatDateTime('mm/dd/yyyy',Date),
    FormatDateTime('mm/dd/yyyy',Date-7));
    serviceDB.TableRacas.Close;
    serviceDB.TableRacas.Open;
    serviceDB.TableCategorias.Close;
    serviceDB.TableCategorias.Open;
    frmSaidaGrupo := TfrmSaidaGrupo.Create(Self);
    try
      frmSaidaGrupo.ShowModal;
    finally
      frmSaidaGrupo.Release;
    end;
   end;

   if DMBaseCampo.vIdOperacaoBaseCampo='2' then//novos animais
   begin
     serviceDB.TableRacas.Close;
     serviceDB.TableRacas.Open;
     serviceDB.TableCategorias.Close;
     serviceDB.TableCategorias.Open;
     frmPrincipal.vMov :=1;
     try
       frmOpercaoEntrada := TfrmOpercaoEntrada.Create(Self);
       frmOpercaoEntrada.ShowModal;
     finally
       frmOpercaoEntrada.Release;
       frmPrincipal.vMov :=0;
     end;
   end;
   if DMBaseCampo.vIdOperacaoBaseCampo='1' then //movimentacao pesagem
   begin
      serviceDB.TableRacas.Close;
      serviceDB.TableRacas.Open;
      serviceDB.TableCategorias.Close;
      serviceDB.TableCategorias.Open;
      serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'EXITE');
      frmPrincipal.vMov :=1;
      try
        frmMovPesagemAnimal := TfrmMovPesagemAnimal.Create(Self);
        frmMovPesagemAnimal.ShowModal;
      finally
        frmMovPesagemAnimal.Release;
      end;
   end;
   if DMBaseCampo.vIdOperacaoBaseCampo='4' then //movimentacao pesagem
   begin
     MudarAba(tbiBCMulti,sender);
   end
  end
  else
  begin
    MyShowMessage('Usuário ou Senha Invalidos!',false);
    Exit;
  end;
  vQry.Release;
  mnuAlteraAnimais.Visible := false;
 end
end;

procedure TfrmPrincipal.btnEntrarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
    TRectangle(Sender).Opacity := 0.5;
end;

procedure TfrmPrincipal.btnEntrarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
      TRectangle(Sender).Opacity := 1;
end;

procedure TfrmPrincipal.btnEstoqueChipClick(Sender: TObject);
begin
try
   frmCadPedidoChip := TfrmCadPedidoChip.Create(Self);
   frmCadPedidoChip.ShowModal;
 finally
   frmCadPedidoChip.Release;
 end;
end;

procedure TfrmPrincipal.btnExportaAnimaisClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
  if SaveDialog1.Execute then
    frmPrincipal.ExpTXT(serviceDB.TTMP_ANIMAIS,SaveDialog1.FileName);
  frmPrincipal.MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmPrincipal.btnExportaGridClick(Sender: TObject);
//procedure StrToFile(const FileName, SourceString : string);
//  var
//  Stream : TFileStream;
//  begin
//  Stream:= TFileStream.Create(FileName, fmCreate);
//  try
//    Stream.WriteBuffer(Pointer(SourceString)^, Length(SourceString));
//  finally
//    Stream.Release;
//  end;
//  end;
//var
//  GridDataAsStr : String;
begin
//  if SaveDialog1.Execute then
//  begin
//   GridDataAsStr:= TCSVData.From(gridAnimais.Grid);
//   Memo1.Text :=  GridDataAsStr;
//   Memo1.Lines.SaveToFile(SaveDialog1.FileName);
//  end;
 if SaveDialog1.Execute then
   ExpTXT(qryGrid,SaveDialog1.FileName);
 MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmPrincipal.btnGerarCustoFixoClick(Sender: TObject);
begin
  serviceDB.TableCustoFixo.Close;
  serviceDB.TableCustoFixo.Open;
  serviceDB.TableCustoFixo.Insert;
  serviceDB.TableCustoFixoID_USUARIO.AsString                := serviceDB.vIdUserLogado;
  serviceDB.TableCustoFixoUSER_ULTIMA_ALTERACAO.AsString     := serviceDB.vIdUserLogado;
  serviceDB.TableCustoFixoULTIMA_ALTERACAO.AsDateTime        := Now;
  serviceDB.TableCustoFixoID_PROPRIEDADE.AsString := serviceDB.vIdPropriedade;
  serviceDB.TableCustoFixoANO.AsString            := cbxAnoCustoFixo.Selected.Text;
  try
    serviceDB.TableCustoFixo.ApplyUpdates(-1);
    MyShowMessage('Custo Fixo gerado com sucesso!!',false);
    btnGerarCustoFixo.Visible := serviceDB.AbrirCustoFixoAno(cbxAnoCustoFixo.Selected.Text);
    GeraGridCustoFixo;
  except
    on e : Exception do
     MyShowMessage('Erro ao gerar Custo Fixo: '+e.Message,false);
  end;
end;

procedure TfrmPrincipal.btnImportarClick(Sender: TObject);
var
 I:integer;
 chip,ncf:string;
begin
  for I := 0 to GridImportacao.RowCount-1 do
  begin
   if cbxPesquisarPor.ItemIndex=0 then //chip
   begin
     if serviceDB.VerificaIdentificacaoExit(GridImportacao.Cells[0,I]) then
       serviceDB.AtualizaStatusTMP_ANIMAL(GridImportacao.Cells[2,I],'2')//IDENTIFICACAO FILTRO NAO ENCONTRADA
     else
     begin
      if not serviceDB.VerificaIdentificacaoExit(GridImportacao.Cells[1,I]) then
       serviceDB.AtualizaStatusTMP_ANIMAL(GridImportacao.Cells[2,I],'4')//IDENTIFICACAO NOVA VINCULADA A UM ANIMAL ATIVO
      else
      begin
       serviceDB.AtualizaIdentificacao('2',GridImportacao.Cells[1,I],
        GridImportacao.Cells[0,I]);
        serviceDB.AtualizaStatusTMP_ANIMAL(GridImportacao.Cells[2,I],'3');
      end;
     end;
   end;

   if cbxPesquisarPor.ItemIndex=1 then //ncf
   begin
     if serviceDB.VerificaIdentificacaoExit(GridImportacao.Cells[1,I]) then
      serviceDB.AtualizaStatusTMP_ANIMAL(GridImportacao.Cells[2,I],'2')//IDENTIFICACAO FILTRO NAO ENCONTRADA
     else
     if not serviceDB.VerificaIdentificacaoExit(GridImportacao.Cells[0,I]) then
      serviceDB.AtualizaStatusTMP_ANIMAL(GridImportacao.Cells[2,I],'4')//IDENTIFICACAO NOVA VINCULADA A UM ANIMAL ATIVO
     else
     begin
      serviceDB.AtualizaIdentificacao('1',GridImportacao.Cells[0,I],
       GridImportacao.Cells[1,I]);
      serviceDB.AtualizaStatusTMP_ANIMAL(GridImportacao.Cells[2,I],'3')
     end;
   end;
  end;

  servicedb.AbreTMPAnimal(' and status IN(1)');
  lblTotalOK.Text := serviceDB.TTMP_ANIMAIS.RecordCount.ToString;

  servicedb.AbreTMPAnimal(' and status IN(2,4)');
  lblErro.Text := serviceDB.TTMP_ANIMAIS.RecordCount.ToString;


  if not serviceDB.TTMP_ANIMAIS.IsEmpty then
  begin
    MyShowMessage('Alguns animais não forama atualizados, confira na lista!',false);
  end
  else
  begin
   MyShowMessage('Animais atualizados com sucesso!',false);
   servicedb.AbreTMPAnimal('');
  end;
end;

procedure TfrmPrincipal.btnImprimirClick(Sender: TObject);
begin
  layTipoRel.Visible := true;
end;

procedure TfrmPrincipal.btnLocalizarAnimaisClick(Sender: TObject);
var
  dlg :TFrmmsgDlgRel;
  Task,Task1,Task2: ITask;
begin
  qryGrid.Aggregates.Clear;
  try
     TTHReadAbriQry;

   finally

   end;
end;

procedure TfrmPrincipal.btnLotesNutricionalClick(Sender: TObject);
begin
  frmLoteNutricional := TfrmLoteNutricional.Create(Self);
  try
    frmLoteNutricional.ShowModal;
  finally
    frmLoteNutricional.Release;
  end;
end;

procedure TfrmPrincipal.btnMoviBCClick(Sender: TObject);
begin
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'EXITE');
  frmPrincipal.vMov :=1;
  try
    frmMovPesagemAnimal := TfrmMovPesagemAnimal.Create(Self);
    frmMovPesagemAnimal.ShowModal;
  finally
    frmMovPesagemAnimal.Release;
  end;
end;

procedure TfrmPrincipal.btnNutricaoClick(Sender: TObject);
begin
  if btnNutricao.IsExpanded then
   btnNutricao.IsExpanded := false
  else
   btnNutricao.IsExpanded := true;
end;

procedure TfrmPrincipal.btnReprocessamentoClick(Sender: TObject);
begin
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  serviceDB.TableCurrais.Close;
  serviceDB.TableCurrais.Open;
  serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'EXITE');
  frmPrincipal.vMov  :=5;
  try
    frmMovPesagemAnimal := TfrmMovPesagemAnimal.Create(Self);
    frmMovPesagemAnimal.ShowModal;
  finally
    frmMovPesagemAnimal.Release;
  end;
end;

procedure TfrmPrincipal.btnValidaKeyClick(Sender: TObject);
begin
  MyShowMessage(Getlicenca(edtCodigoCliente.Text,'1'),false);

//  if ValidaKey(edtSerialHD.Text,edtKey.Text) then
//  begin
//    MyShowMessage('Chave Validada com Sucesso!',false);
//    btnEntrar.Enabled := true;
//    layKey.Visible    := false;
//  end
//  else
//  begin
//    MyShowMessage('Chave Invalida!',false);
//    Exit;
//  end;
end;

procedure TfrmPrincipal.btnVoltarClick(Sender: TObject);
begin
 layPopUpCad.Visible := false;
 TabControl1.Visible := true;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  GeraResumoDia(FormatDateTime('mm/dd/yyyy',edtDataBaseRel.Date));
  if not qryResumoDia.IsEmpty then
  begin
    ppReportResumoDia.Print;
  end
  else
   frmPrincipal.MyShowMessage('Não existe dados para esse filtro!',false);
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto2.Bitmap.LoadFromFile(OpenImg.FileName);
   vImgLogo2 := Base64FromBitmap(ImgFoto2.Bitmap);
 end;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  ImgFoto2.bitmap := nil;
end;

procedure TfrmPrincipal.CarregaCombos;
var
 vQryAux :TFDQuery;
begin
 edtLocalOrigem.Text :='';
 cbxFRaca.Items.Clear;
 cbxFCategoria.Items.Clear;
 cbxProdutorOrigem.Items.Clear;
 cbxProdutorDestino.Items.Clear;
 cbxProprietario.Items.Clear;
 cbxRetiro.Items.Clear;
 cbxProprietario.Items.Add('TODOS');
 cbxFRaca.Items.Add('TODOS');
 cbxFCategoria.Items.Add('TODOS');
 cbxProdutorOrigem.Items.Add('TODOS');
 cbxProdutorDestino.Items.Add('TODOS');
 cbxRetiro.Items.Add('TODOS');

 cbxRebanhof.Items.Clear;
 cbxRebanhof.Items.Add('TODOS');

 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM RETIRO');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('order by nome');
   Open;
   while not vQryAux.Eof do
   begin
     cbxRetiro.Items.AddObject(vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('ID').AsInteger));
     vQryAux.Next;
   end;
   cbxRetiro.ItemIndex := 0;

   Clear;
   Add('select * from AUX_REBANHO');
   Add('where status=1');
   Open;
   while not vQryAux.Eof do
   begin
     cbxRebanhof.Items.Add(vQryAux.FieldByName('Nome').AsString);
     vQryAux.Next;
   end;
   cbxRebanhof.ItemIndex := 0;

   Clear;
   Add('select * from raca');
   Add('where status=1');
   Open;
   while not vQryAux.Eof do
   begin
     cbxFRaca.Items.Add(vQryAux.FieldByName('nome').AsString);
     vQryAux.Next;
   end;
   cbxFRaca.ItemIndex := 0;

   Clear;
   Add('select * from categorias');
   Add('where status=1');
   Add('order by nome');
   Open;
   while not vQryAux.Eof do
   begin
     cbxFCategoria.Items.Add(vQryAux.FieldByName('nome').AsString);
     vQryAux.Next;
   end;
   cbxFCategoria.ItemIndex := 0;

   Clear;
   Add('select * from PRODUTORES');
   Add('where status=1');
   Add('order by nome');
   Open;
   while not vQryAux.Eof do
   begin
     cbxProdutorOrigem.Items.Add(vQryAux.FieldByName('nome').AsString);
     cbxProdutorDestino.Items.Add(vQryAux.FieldByName('nome').AsString);
     vQryAux.Next;
   end;
   cbxProdutorOrigem.ItemIndex  := 0;
   cbxProdutorDestino.ItemIndex := 0;

   Clear;
   Add('select * from PRODUTORES ppt');
   Add('where status=1 and ppt.id_propriedade='+serviceDB.vIdPropriedade);
   Add('order by nome');
   Open;
   while not vQryAux.Eof do
   begin
     cbxProprietario.Items.AddObject(vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('ID').AsInteger));
     vQryAux.Next;
   end;
   cbxProprietario.ItemIndex := 0;
 end;
end;


procedure TfrmPrincipal.cbxAnoCustoFixoChange(Sender: TObject);
begin
  btnGerarCustoFixo.Visible := serviceDB.AbrirCustoFixoAno(cbxAnoCustoFixo.Selected.Text);
  GeraGridCustoFixo;
end;

procedure TfrmPrincipal.cbxAnoGMDChange(Sender: TObject);
begin
 bntGMDAno.Visible := serviceDBN.AbrirGMDAno(cbxAnoGMD.Selected.Text);
end;

procedure TfrmPrincipal.cbxProp2Change(Sender: TObject);
begin
 if (cbxProp2.ItemIndex>-1) and (cbxProp2.Selected.Text.Length>0) then
 begin
   vIDPropriedadePropria       := LinkFillControlToFieldID.BindList.GetSelectedValue.AsString;
   serviceDB.vIdPropriedade    := vIDPropriedadePropria;
   serviceDB.vNomePropriedade  := cbxProp2.Selected.Text;
   serviceDB.vRastreada        := serviceDB.VerificaRastreada(vIDPropriedadePropria);
   TreeRastreabilidade.Visible := serviceDB.vRastreada='1';

   Treemnu.Enabled            := true;
   ChartAnimalCategoria;
   GeraDashConfinamento;
   layAlteraProp.Visible      := false;
   layDashB.Visible           := true;
 end;
end;

procedure TfrmPrincipal.cbxPropriedadeChange(Sender: TObject);
begin
  if cbxPropriedade.ItemIndex>-1 then
  begin
   serviceDB.vIdPropriedade    := LinkFillControlToFieldID2.BindList.GetSelectedValue.AsString;
  end;
end;

procedure TfrmPrincipal.cbxProprietarioChange(Sender: TObject);
begin
 if cbxProprietario.ItemIndex>0 then
   vIdProprietario := IntToStr(Integer(cbxProprietario.Items.Objects[cbxProprietario.ItemIndex]));
end;

procedure TfrmPrincipal.cbxRetiroChange(Sender: TObject);
begin
 if cbxRetiro.ItemIndex>0 then
   vIdRetiro:= IntToStr(Integer(cbxRetiro.Items.Objects[cbxRetiro.ItemIndex]));
end;

procedure TfrmPrincipal.ChangeByteOrder(var Data; Size: Integer);
var
  ptr : PChar;
  i : Integer;
  c : Char;
begin
  ptr := @Data;
  for i := 0 to (Size shr 1)-1 do
  begin
    c := ptr^;
    ptr^ := (ptr+1)^;
    (ptr+1)^ := c;
    Inc(ptr,2);
  end;
end;

procedure TfrmPrincipal.ChartAnimalCategoria;
var
 vQry,vQry1,vQry2,vQry3,vQry4,vQry5,vQry6,vQry7,vQry8:TFDQuery;
 vTotalAnimais:string;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.fCon;
 with vQry,vQry.SQL do
 begin
  Clear;
  Add('select * from  animal');
  Open;
 end;
 if not vQry.IsEmpty then
 begin
      vQry1            := TFDQuery.Create(nil);
      vQry1.Connection := serviceDB.fCon;
      vQry2            := TFDQuery.Create(nil);
      vQry2.Connection := serviceDB.fCon;
      vQry3            := TFDQuery.Create(nil);
      vQry3.Connection := serviceDB.fCon;
      vQry4            := TFDQuery.Create(nil);
      vQry4.Connection := serviceDB.fCon;
      vQry5            := TFDQuery.Create(nil);
      vQry5.Connection := serviceDB.fCon;
      vQry6            := TFDQuery.Create(nil);
      vQry6.Connection := serviceDB.fCon;
      vQry7            := TFDQuery.Create(nil);
      vQry7.Connection := serviceDB.fCon;
      vQry8            := TFDQuery.Create(nil);
      vQry8.Connection := serviceDB.fCon;

      TThread.CreateAnonymousThread(procedure()
      begin
      TThread.Synchronize(TThread.CurrentThread,
      procedure ()
      begin
         with vQry,vQry.SQL do
         begin
           Clear;
           Add('SELECT C.nome "Label",COUNT(*) "Value",');
           Add('(SELECT FIRST 1 RGB FROM cores');
           Add('ORDER BY (RAND()))');
           Add('FROM animal A');
           Add('JOIN categorias C ON A.id_categoria=C.id');
           Add('WHERE A.status=1');
           Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
           Add('GROUP BY nome');
           Open;
         end;
         with vQry1,vQry1.SQL do
         begin
           Clear;
           Add('SELECT C.nome "Label",COUNT(*) "Value",');
           Add('(SELECT FIRST 1 RGB FROM cores');
           Add('ORDER BY (RAND()))');
           Add('FROM animal A');
           Add('JOIN raca C ON A.id_raca=C.id');
           Add('WHERE A.status=1');
           Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
           Add('GROUP BY nome');
           Open;
         end;
         with vQry8,vQry8.SQL do
         begin
           Clear;
           Add('SELECT C.nome "Label",COUNT(*) "Value",');
           Add('(SELECT FIRST 1 RGB FROM cores');
           Add('ORDER BY (RAND()))');
           Add('FROM animal A');
           Add('JOIN aux_rebanho C ON A.id_rebanho=C.id');
           Add('WHERE A.status=1');
           Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
           Add('GROUP BY nome');
           Open;
         end;
         with vQry2,vQry2.SQL do
         begin
           Clear;
           Add('SELECT C.codigo "Label",COUNT(*) "Value",');
           Add('(SELECT FIRST 1 RGB FROM cores');
           Add('ORDER BY (RAND()))');
           Add('FROM animal A');
           Add('JOIN currais  C ON A.id_local=C.id');
           Add('WHERE A.status=1');
           Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
           Add('GROUP BY codigo');
           Open;
         end;
         with vQry3,vQry3.SQL do
         begin
           Clear;
           Add('SELECT C.codigo "Label",max(dateDiff(day from a.data_proc to current_date)) "Value"');
           Add(' FROM animal A');
           Add('JOIN currais C ON A.id_local=C.id');
           Add('WHERE A.status=1');
           Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
           Add('GROUP BY codigo');
           Open;
         end;
         with vQry4,vQry4.SQL do
         begin
           Clear;
           Add('SELECT COUNT(*) TOTAL_ANI ');
           Add('FROM animal A');
           Add('WHERE A.status=1');
           Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
           Open;
         end;
         lblPropriedadeLogada.Text := serviceDB.vNomePropriedade +' : '+vQry4.FieldByName('TOTAL_ANI').AsString +' Animais Ativos';

         with vQry5,vQry5.SQL do
         begin
           Clear;
           Add('SELECT FAIXA Faixa,SEXO Sexo,COUNT(*) Qtde FROM');
           Add(' (SELECT');
           Add('  CASE');
           Add('   WHEN SEXO=''M'' THEN ''MACHO''');
           Add('   WHEN SEXO=''F'' THEN ''FEMEA''');
           Add('  END SEXO,');
           Add('  CASE');
           Add('   WHEN IDADE_MESES >=0 AND IDADE_MESES<=12 THEN ''0 A 12''');
           Add('   WHEN IDADE_MESES >=13 AND IDADE_MESES<=24 THEN ''13 A 24''');
           Add('   WHEN IDADE_MESES >=25 AND IDADE_MESES<=36 THEN ''25 A 36''');
           Add('   WHEN IDADE_MESES >36  THEN ''MAIS 36''');
           Add('  END FAIXA');
           Add(' FROM');
           Add(' (SELECT C.SEXO,datediff(MONTH,DATA_NASCIMENTO,CURRENT_TIMESTAMP) IDADE_MESES FROM ANIMAL A');
           Add(' JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
           Add(' WHERE A.STATUS=1 AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade+')X)Y');
           Add(' GROUP BY FAIXA,SEXO');
           Add(' ORDER BY SEXO');
           try
            Open;
           except
             on E : Exception do
                ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
           end;
         end;
         with vQry6,vQry6.SQL do
         begin
           Clear;
           Add('SELECT');
           Add('Pasto "Label",');
           Add('QtdCab,');
           Add('peso_estimado,');
           Add('dias,');
           Add('UA "Value",');
           Add('area_hectares,');
           Add('CASE');
           Add(' WHEN (UA>0 AND area_hectares>0) then');
           Add('   (UA/area_hectares)');
           Add('  else');
           Add('   0');
           Add('end UAH,');
           Add('gpt/dias gmd,');
           Add('totalArroba');
           Add('FROM');
           Add('(select');
           Add(' Pasto,');
           Add(' SUM(peso) UA,');
           Add(' AVG(area_hectares)area_hectares,');
           Add(' COUNT(*) QtdCab,');
           Add('AVG(peso_estimado) peso_estimado,');
           Add(' avg(dias)+1dias,');
           Add(' avg(gpt)gpt,');
           Add(' sum(arroba) totalArroba');
           Add('from');
           Add('(');
           Add('select c.codigo Pasto,');
           Add('a.peso_estimado,');
           Add('(a.peso_estimado/450)peso,');
           Add('C.area_hectares,');
           Add('datediff(day from a.data_proc to current_timestamp) dias,');
           Add('(a.peso_estimado-a.peso_entrada) gpt,');
           Add('((peso_estimado/2)/15) arroba');
           Add('from animal a');
           Add('join currais c on c.id=a.id_local');
           Add('where a.status=1 and a.id_propriedade=:id_propriedade)');
           Add('GROUP BY Pasto)');
           ParamByName('id_propriedade').AsString := serviceDB.vIdPropriedade;
           Open;
         end;
         SerRel.AbreDiariasOcupacaoGrafico;

         with vQry7,vQry7.SQL do
         begin
           Clear;
           Add('SELECT');
           Add('Pasto "Label",');
           Add('QtdCab,');
           Add('peso_estimado,');
           Add('dias,');
           Add('UA,');
           Add('area_hectares,');
           Add('CASE');
           Add(' WHEN (UA>0 AND area_hectares>0) then');
           Add('   (UA/area_hectares)');
           Add('  else');
           Add('   0');
           Add('end "Value",');
           Add('gpt/dias gmd,');
           Add('totalArroba');
           Add('FROM');
           Add('(select');
           Add(' Pasto,');
           Add(' SUM(peso) UA,');
           Add(' AVG(area_hectares)area_hectares,');
           Add(' COUNT(*) QtdCab,');
           Add('AVG(peso_estimado) peso_estimado,');
           Add(' avg(dias)+1dias,');
           Add(' avg(gpt)gpt,');
           Add(' sum(arroba) totalArroba');
           Add('from');
           Add('(');
           Add('select c.codigo Pasto,');
           Add('a.peso_estimado,');
           Add('(a.peso_estimado/450)peso,');
           Add('C.area_hectares,');
           Add('datediff(day from a.data_proc to current_timestamp) dias,');
           Add('(a.peso_estimado-a.peso_entrada) gpt,');
           Add('((peso_estimado/2)/15) arroba');
           Add('from animal a');
           Add('join currais c on c.id=a.id_local');
           Add('where a.status=1 and a.id_propriedade=:id_propriedade)');
           Add('GROUP BY Pasto)');
           ParamByName('id_propriedade').AsString := serviceDB.vIdPropriedade;
           Open;
         end;
         if WebBrowserGeral<>nil
          then WebBrowserGeral.Release;
            try
             WebBrowserGeral        := TWebBrowser.Create(self);
//             WebBrowserGeral.Name   := 'WebBrowser';
             WebBrowserGeral.Parent := LayPieCategoria;
             WebBrowserGeral.Visible:= true;
             WebBrowserGeral.Align          := TAlignLayout.Client;
             WebCharts1
               //.BackgroundColor('#000000')
                .NewProject
                  .Jumpline
                  .Rows
                .&End
                .Jumpline
                .Rows
                   .Tag
                       .Add(
                         WebCharts1
                         .ContinuosProject
                           .Table
                              .TableClass
                                .tableSm
                                .tableHover
                                .tableBordered
                                .tableStriped
                                //.tableDark
                              .EndTableClass
                              .DataSet
                                .DataSet(vQry5)
                              .&End
                           .&End
                         .HTML
                       )
                      .&End
                .&End
                .Jumpline
                .Rows
                .&End
                  .Rows
                    .Tag
                      .Add(
                        WebCharts1
                        .ContinuosProject
                          .Charts
                            ._ChartType(bar)
                              .Attributes
                                .Name('AnimaisporCategoria')
                                .ColSpan(4)
                                .Options
                                  .Title
                                     .text('Animais por Categoria')
                                     .display(true)
                                     .position('top')
                                     .fontSize(15)
                                     .fontFamily('Arial')
                                     .fontColorHEX('#000000')
                                     .fontStyle('bold')
                                   .&End
                                  .Legend
                                    .display(false)
                                  .&End
                                .&End
                                 .Labelling
                                   .Format('0,000')
                                   .RGBColor('255,255,255,255')
                                   .FontSize(12)
                                   .FontStyle('bold') //normal, bold, italic
                                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                                 .&End
                                .DataSet
                                  .textLabel('Animais Por Categoria')
                                  .BackgroundColor('14,55,200')
      //                              .BorderColor('227,233,235')
                                  .DataSet(vQry)
                                .&End
                              .&End
                            .&End
                          .&End
                          .HTML
                      )
                    .&End
                    .Tag
                      .Add(
                        WebCharts1
                        .ContinuosProject
                          .Charts
                            ._ChartType(bar)
                              .Attributes
                                .Name('AnimaisRaca')
                                .ColSpan(4)
                                .Options
                                  .Title
                                     .text('Animais Por Raça')
                                     .display(true)
                                     .position('top')
                                     .fontSize(15)
                                     .fontFamily('Arial')
                                     .fontColorHEX('#000000')
                                     .fontStyle('bold')
                                  .&End
                                  .Legend
                                    .display(false)
                                  .&End
                                .&End
                                 .Labelling
                                   .Format('0,000')
                                   .RGBColor('255,255,255,255')
                                   .FontSize(12)
                                   .FontStyle('bold') //normal, bold, italic
                                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                                 .&End
                                .DataSet
                                  .textLabel('Animais Por Raça')
                                  .BackgroundColor('14,55,200')
                                  .DataSet(vQry1)
                                .&End
                              .&End
                            .&End
                          .&End
                          .HTML
                          )
                      .&End
                      .Tag
                      .Add(
                        WebCharts1
                        .ContinuosProject
                          .Charts
                            ._ChartType(bar)
                              .Attributes
                                .Name('AnimaisRebanho')
                                .ColSpan(4)
                                .Options
                                  .Title
                                     .text('Animais Por Rebanho')
                                     .display(true)
                                     .position('top')
                                     .fontSize(15)
                                     .fontFamily('Arial')
                                     .fontColorHEX('#000000')
                                     .fontStyle('bold')
                                  .&End
                                  .Legend
                                    .display(false)
                                  .&End
                                .&End
                                 .Labelling
                                   .Format('0,000')
                                   .RGBColor('255,255,255,255')
                                   .FontSize(12)
                                   .FontStyle('bold') //normal, bold, italic
                                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                                 .&End
                                .DataSet
                                  .textLabel('Animais Por Raça')
                                  .BackgroundColor('14,55,200')
                                  .DataSet(vQry8)
                                .&End
                              .&End
                            .&End
                          .&End
                          .HTML
                          )
                      .&End
                .&End
                .Jumpline
                .Rows
                .&End
                 .Rows
                     .Tag
                      .Add(
                        WebCharts1
                        .ContinuosProject
                          .Charts
                            ._ChartType(bar)
                              .Attributes
                                .Name('DiariasOcupacao')
                                .ColSpan(12)
                                .Options
                                  .Title
                                     .text('Diárias de Ocupação últimos 30 dias')
                                     .display(true)
                                     .position('top')
                                     .fontSize(15)
                                     .fontFamily('Arial')
                                     .fontColorHEX('#000000')
                                     .fontStyle('bold')
                                  .&End
                                  .Legend
                                    .display(false)
                                    .position('top')
                                  .&End
                                .&End
                                 .Labelling
                                   .Format('0,000')
                                   .RGBColor('255,255,255,255')
                                   .FontSize(12)
                                   .FontStyle('bold') //normal, bold, italic
                                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                                 .&End
                                 .DataSet
                                  .textLabel('Qtde. Cabeça')
                                  .Types('line')
                                  .BackgroundColor('1,1,1')
                                  .Fill(false)
                                  .BorderWidth(2)
                                  .BorderColor('30,182,203')
                                  .DataSet(vQry2)
                                .&End
                                .DataSet
                                  .textLabel('Diárias de Ocupação')
                                  .BackgroundColor('14,55,200')
                                  .DataSet(SerRel.qryDiariasGrafico)
                                .&End
                              .&End
                            .&End
                          .HTML
                      )
                    .&End
                 .&End
                .Jumpline
                .Rows
                .&End
                 .Rows
                     .Tag
                      .Add(
                        WebCharts1
                        .ContinuosProject
                          .Charts
                            ._ChartType(bar)
                              .Attributes
                                .Name('AnimaisLotacao')
                                .ColSpan(12)
                                .Options
                                  .Title
                                     .text(' ')
                                     .display(true)
                                     .position('top')
                                     .fontSize(15)
                                     .fontFamily('Arial')
                                     .fontColorHEX('#000000')
                                     .fontStyle('bold')
                                  .&End
                                  .Legend
                                    .display(true)
                                  .&End
                                .&End
                                 .Labelling
                                   .Format('0,000')
                                   .RGBColor('255,255,255,255')
                                   .FontSize(12)
                                   .FontStyle('bold') //normal, bold, italic
                                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                                 .&End
                                .DataSet
                                  .textLabel('Lotação')
                                  .BackgroundColor('14,55,200')
                                  .DataSet(vQry2)
                                .&End
                                .DataSet
                                  .textLabel('UA/Total')
                                  .Types('bar')
                                  .Fill(true)
                                  .BackgroundColor('227,233,235')
                                  .BorderColor('30,182,203')
                                  .DataSet(vQry6)
                                 .&End
                              .&End
                            .&End
                          .HTML
                      )
                    .&End
                 .&End
                 //***********************
                 .Jumpline
                  .Rows
                .&End
                 .Rows
                     .Tag
                      .Add(
                        WebCharts1
                        .ContinuosProject
                          .Charts
                            ._ChartType(bar)
                              .Attributes
                                .Name('UAUAH')
                                .ColSpan(12)
                                .Options
                                  .Title
                                     .text('UA/HE')
                                     .display(true)
                                     .position('top')
                                     .fontSize(15)
                                     .fontFamily('Arial')
                                     .fontColorHEX('#000000')
                                     .fontStyle('bold')
                                  .&End
                                  .Legend
                                    .display(FALSE)
                                  .&End
                                .&End
                                 .Labelling
                                   .Format('0.0[00]')
                                   .RGBColor('255,255,255,255')
                                   .FontSize(12)
                                   .FontStyle('bold') //normal, bold, italic
                                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                                 .&End
                                 .DataSet
                                    .textLabel('UA/HE')
                                    .Types('line')
                                    .BackgroundColor('1,1,1')
                                    .Fill(false)
                                    .BorderWidth(2)
                                    .BorderColor('30,182,203')
                                    .DataSet(vQry7)
                                  .&End

                              .&End
                            .&End
                          .HTML
                          )
                    .&End
                 .&End
                 //***********************

                 .Jumpline
                  .Rows
                .&End
                 .Rows
                     .Tag
                      .Add(
                        WebCharts1
                        .ContinuosProject
                        .Charts
                            ._ChartType(bar)
                              .Attributes
                                .Name('AnimaisDias')
                                .ColSpan(12)
                                .Options
                                  .Title
                                     .text('Dias de Cocho')
                                     .display(true)
                                     .position('top')
                                     .fontSize(15)
                                     .fontFamily('Arial')
                                     .fontColorHEX('#000000')
                                     .fontStyle('bold')
                                  .&End
                                  .Legend
                                    .display(false)
                                  .&End
                                .&End
                                 .Labelling
                                   .Format('0.0[00]')
                                   .RGBColor('255,255,255,255')
                                   .FontSize(12)
                                   .FontStyle('bold') //normal, bold, italic
                                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                                 .&End
                                 .DataSet
                                    .textLabel('UA/HE')
                                    .Types('line')
                                    .BackgroundColor('1,1,1')
                                    .Fill(false)
                                    .BorderWidth(2)
                                    .BorderColor('30,182,203')
                                    .DataSet(vQry3)
                                  .&End
                              .&End
                            .&End
                          .HTML
                      )
                    .&End
                 .&End
                 .Jumpline
                 .Jumpline
                 .WebBrowser(WebBrowserGeral)
                .Generated;
            except
              on E : Exception do
                ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
            end;
            vQry.Release;
            vQry1.Release;
            vQry2.Release;
            vQry3.Release;
            vQry4.Release;
            vQry5.Release;
            vQry6.Release;
            vQry7.Release;

       end);
      end).Start;
   end
   else
    vQry.Release;
end;

procedure TfrmPrincipal.chkAtivosPeriodoChange(Sender: TObject);
begin
  edtDeAtivos.Enabled    := chkAtivosPeriodo.IsChecked;
  edtAteAtivos.Enabled   := chkAtivosPeriodo.IsChecked;
end;

procedure TfrmPrincipal.chkPeriodoConfChange(Sender: TObject);
begin
  edtAteEntConf.Enabled  := chkPeriodoConf.IsChecked;
  edtDeEntConf.Enabled   := chkPeriodoConf.IsChecked;
end;

procedure TfrmPrincipal.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
 edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

procedure TfrmPrincipal.chkPeriodoReprocChange(Sender: TObject);
begin
  edtDataDeReproc.Enabled  := chkPeriodoReproc.IsChecked;
  edtDataAteReproc.Enabled := chkPeriodoReproc.IsChecked;
end;

procedure TfrmPrincipal.chkPeriodoSaidaChange(Sender: TObject);
begin
 edtFDataSaiDE.Enabled  := chkPeriodoSaida.IsChecked;
 edtFDataSaiAte.Enabled := chkPeriodoSaida.IsChecked;
end;

function TfrmPrincipal.DataExtenso(Data: TDateTime): String;
var
 NoDia : Integer;
 DiaDaSemana : array [1..7] of String;
 Meses : array [1..12] of String;
 Dia, Mes, Ano : Word;
begin
  { Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Terçafeira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'Sábado';
  { Meses do ano }
  Meses [1] := 'Janeiro';
  Meses [2] := 'Fevereiro';
  Meses [3] := 'Março';
  Meses [4] := 'Abril';
  Meses [5] := 'Maio';
  Meses [6] := 'Junho';
  Meses [7] := 'Julho';
  Meses [8] := 'Agosto';
  Meses [9] := 'Setembro';
  Meses [10]:= 'Outubro';
  Meses [11]:= 'Novembro';
  Meses [12]:= 'Dezembro';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  Result := DiaDaSemana[NoDia] + ', ' +
  IntToStr(Dia) + ' de ' + Meses[Mes]+ ' de ' + IntToStr(Ano);
end;

procedure TfrmPrincipal.EditButton1Click(Sender: TObject);
begin
  frmCadCategoria := TfrmCadCategoria.Create(nil);
  try
    frmCadCategoria.ShowModal;
  finally
    edtAlteraCategoria.text       := serviceDB.TableCategoriasNOME.AsString;
    edtAlteraCategoria.TagString  := serviceDB.TableCategoriasID.AsString;
    frmCadCategoria.Free;
  end;
end;

procedure TfrmPrincipal.EditButton4Click(Sender: TObject);
begin
 frmCadRacas := TfrmCadRacas.Create(nil);
  try
    frmCadRacas.ShowModal;
  finally
    edtAlteraRaca.text       := serviceDB.TableRacasNOME.AsString;
    edtAlteraRaca.TagString  := serviceDB.TableRacasID.AsString;
    frmCadRacas.Free;
  end;
end;

procedure TfrmPrincipal.EditButton6Click(Sender: TObject);
begin
  frmCadCurral := TfrmCadCurral.Create(nil);
  try
    frmPrincipal.vMov:=1;
    frmCadCurral.ShowModal;
  finally
    edtLocalOrigem.text      := serviceDB.TableCurraisCODIGO.AsString;
    frmCadCurral.Release;
  end;
end;

procedure TfrmPrincipal.EditButton6Enter(Sender: TObject);
begin
 EditButton6Click(Sender);
end;

procedure TfrmPrincipal.edtFrequenciaLimpaBebedouroKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmPrincipal.edtGmdPadraoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmPrincipal.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=vkReturn then
   btnEntrarClick(sender);
end;


procedure TfrmPrincipal.EntradaClick(Sender: TObject);
begin
  frmCadComunicadoEnt := TfrmCadComunicadoEnt.Create(Self);
  try
    frmCadComunicadoEnt.ShowModal;
  finally
    frmCadComunicadoEnt.Release;
  end;
end;

procedure TfrmPrincipal.ExpTXT(DataSet: TDataSet; Arq: string);
var
  i: integer;
  sl: TStringList;
  st: string;
begin
  DataSet.First;
  sl := TStringList.Create;
  try
    st := '';
    for i := 0 to DataSet.Fields.Count - 1 do
     IF DataSet.Fields[i].Visible then
      st := st + DataSet.Fields[i].DisplayLabel + ';';
    sl.Add(st);
    DataSet.First;
    while not DataSet.Eof do
    begin
      st := '';
      for i := 0 to DataSet.Fields.Count - 1 do
       IF DataSet.Fields[i].Visible then
        st := st + DataSet.Fields[i].DisplayText + ';';
      sl.Add(st);
      DataSet.Next;
    end;
    sl.SaveToFile(Arq);
  finally
     sl.free;
  end;
end;

procedure TfrmPrincipal.FDScript1Error(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  vErroUpdate := true;
  Append(arq);
  Writeln(arq,AException.ToString);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 vPath              := ExtractFilePath(ParamStr(0));
 PathPdfToText      := vPath+'BND\PdfToText.exe';
 PathSaveText       := vPath+'BND\Tempbnd.csv';
 PathLogo           := vPath+'LOGO\LOGO.PNG';
 PathLogoJPG        := vPath+'LOGO\LOGO.JPG';
 PathSQL            := vPath+'update\sql\2024-04-24.sql';
 PathSQLDML         := vPath+'update\sql\2021-02_dml.sql';
 PathSomErro        := vPath+'\sound\Erro.mp3';
 PathTamplateLaudoMorte := vPath+'\Tamplates\LaudoMorte.docx';
 PathTamplateLaudoVenda := vPath+'\Tamplates\LaudoVenda.docx';

 if not DirectoryExists(vPath+'update\sql\') then
   ForceDirectories(vPath+'update\sql\');

 if not DirectoryExists(vPath+'Assinaturas\') then
   ForceDirectories(vPath+'Assinaturas\');
 vPathAss        := vPath+'Assinaturas\';


 layImgAguarde.SendToBack;
 tbPrincipal.ActiveTab   := tbiApresentacao;
 tbPrincipal.TabPosition := TTabPosition.None;
 Timer1.Enabled          := true;
 layKey.Visible           := false;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  dlg :TFrmmsgDlg;

begin
 layPopUpCad.Visible         := false;
 vVersao                     := GetVersaoArq;
 lblVersao.Text              := 'Versão: '+vVersao;
 Treemnu.CollapseAll;
 layTipoRel.Visible := false;

 if serviceDB.ConectaBDCAMPO then
 begin
  layEscolheBase.Visible := true;
  DMBaseCampo.AbreConfigBaseCampo(vIdBaseCampo);
  if DMBaseCampo.vStatusBaseCampo=2 then
  begin
    MyShowMessage('Base Campo ja Finalizada!',false);
    AtualizaFieldConf(ExtractFilePath(ParamStr(0))+'fieldconf.ini','');
    Application.Terminate;
  end;
 end
 else
 begin
  btnSincronizaBaseCampo.Visible := false;
  serviceDB.ConectaBD(0);
  serviceDB.AtualizaDB(vVersao);

  layEscolheBase.Visible := false;
  serviceDB.PropriedadePropria.Filtered := false;
  serviceDB.PropriedadePropria.Close;
  serviceDB.PropriedadePropria.Open;
 end;

// if serviceDB.ConectaBDDEMO then
// begin
//    layEscolheBase.Visible := false;
//  serviceDB.PropriedadePropria.Filtered := false;
//  serviceDB.PropriedadePropria.Close;
//  serviceDB.PropriedadePropria.Open;
//  btnSincronizaBaseCampo.Enabled := FALSE;
// end
// else
// begin
//  Application.Terminate;
// end;

 layAtualizaGeral.Visible := false;
 layAlteracao.Visible := false;
 mnuAlteraAnimais.Visible := false;
 vPositionX     := imgApr.Position.X;
 vPositionY     := imgApr.Position.Y;
 timer1.Enabled := true;
 vwindows       := ObterVersaoWindows;
 recPst.Width   := (layPainel.Width -10)/2;
 recConf.Width  := (layPainel.Width -10)/2;

 recMachoPst.Width    := (recPst.Width-4)/2;
 recFemeaPst.Width    := (recPst.Width-4)/2;
 recMachoConf.Width   := (recConf.Width-4)/2;
 recFemeaConf.Width   := (recConf.Width-4)/2;



 TabControl1.ActiveTab := TabItem2;
 btnExportaGrid.Enabled := false;
 btnImprimir.Enabled    := false;
 if PathLogo.Length>0 then
 begin
  if FileExists(PathLogo) then
  begin
    strm:=Tmemorystream.Create;
    imgLogoCliente.Bitmap.LoadFromFile(PathLogo);
    imgLogoCliente.Bitmap.SaveToStream(strm);
  end;
 end;
end;

procedure TfrmPrincipal.GeraDashConfinamento;
var
 vQryAux,vQryAux1,vQryAux2,vQryAux3,vQryAux4,vQryAux5,vQryAux6,
 vQryAux7,vQryAux8,vQryAux9,vQryAux10:TFDQuery;
begin
  vQryAux := TFDQuery.Create(nil);
  vQryAux.Connection := serviceDB.FCon;

  vQryAux1 := TFDQuery.Create(nil);
  vQryAux1.Connection := serviceDB.FCon;

  vQryAux2 := TFDQuery.Create(nil);
  vQryAux2.Connection := serviceDB.FCon;

  vQryAux3 := TFDQuery.Create(nil);
  vQryAux3.Connection := serviceDB.FCon;

  vQryAux4 := TFDQuery.Create(nil);
  vQryAux4.Connection := serviceDB.FCon;

  vQryAux5 := TFDQuery.Create(nil);
  vQryAux5.Connection := serviceDB.FCon;

  vQryAux6 := TFDQuery.Create(nil);
  vQryAux6.Connection := serviceDB.FCon;

  vQryAux7 := TFDQuery.Create(nil);
  vQryAux7.Connection := serviceDB.FCon;

  vQryAux8 := TFDQuery.Create(nil);
  vQryAux8.Connection := serviceDB.FCon;

  vQryAux9 := TFDQuery.Create(nil);
  vQryAux9.Connection := serviceDB.FCon;

  vQryAux10 := TFDQuery.Create(nil);
  vQryAux10.Connection := serviceDB.FCon;

  with vQryAux,vQryAux.SQL do
  begin
    Clear;
    Add('SELECT');
    Add(' B.NOME "Label",');
    Add(' SUM(COALESCE(A.PREVISTO_MN_KG,0)) "Value"');
    Add('FROM FORNECIMENTO_CONF A');
    Add('JOIN RACAO B ON A.ID_RACAO=B.ID');
    Add('WHERE DATA_FORN=(select max(data_forn) from fornecimento_conf where status=1)'); //'CURRENT_DATE
    Add('GROUP BY B.NOME');
    Open;
  end;
  with vQryAux1,vQryAux1.SQL do
  begin
    Clear;
    Add('SELECT');
    Add(' B.NOME "Label",');
    Add(' SUM(COALESCE(A.REALIZADO_MN_KG,0)) "Value"');
    Add('FROM FORNECIMENTO_CONF A');
    Add('JOIN RACAO B ON A.ID_RACAO=B.ID');
    Add('WHERE DATA_FORN=(select max(data_forn) from fornecimento_conf where status=1)'); //'CURRENT_DATE
    Add('GROUP BY B.NOME');
    Open;
  end;


  with vQryAux8,vQryAux8.SQL do
  begin
    Clear;
    Add('SELECT');
    Add(' A.TRATO "Label",');
    Add(' sum(COALESCE(PREVISTO_MN_KG,0))"Value"');
    Add('FROM FORNECIMENTO_CONF A');
    Add('WHERE DATA_FORN=(select max(data_forn) from fornecimento_conf where status=1)'); //'CURRENT_DATE
    Add('GROUP BY A.TRATO');
    Open;
  end;

  with vQryAux9,vQryAux9.SQL do
  begin
    Clear;
    Add('SELECT');
    Add(' A.TRATO "Label",');
    Add(' SUM(COALESCE(A.REALIZADO_MN_KG,0)) "Value"');
    Add('FROM FORNECIMENTO_CONF A');
    Add('WHERE DATA_FORN=(select max(data_forn) from fornecimento_conf where status=1)'); //'CURRENT_DATE
    Add('GROUP BY A.TRATO');
    Open;
  end;

  with vQryAux10,vQryAux10.SQL do
  begin
    Clear;
    Add('SELECT');
    Add(' A.TRATO "Label",');
    Add(' sum(COALESCE(PREVISTO_MN_KG,0))-sum(COALESCE(REALIZADO_MN_KG,0)) "Value"');
    Add('FROM FORNECIMENTO_CONF A');
    Add('WHERE DATA_FORN=(select max(data_forn) from fornecimento_conf where status=1)'); //'CURRENT_DATE
    Add('GROUP BY A.TRATO');
    Open;
  end;

  with vQryAux2,vQryAux2.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('A.CODIGO "Label",B.DIAS_MEDIO "Value" FROM LOTE_NUTRICIONAL B');
    Add('JOIN CURRAIS A  ON A.ID=B.ID_LOCAL');
    Add('WHERE a.tipo=1 AND B.STATUS=1 AND B.QTDE_CAB>0');
    Add('ORDER BY SUBSTRING(A.CODIGO FROM 1 FOR POSITION(''-'' IN A.CODIGO)-1),');
    Add('SUBSTRING(A.CODIGO FROM (POSITION(''-'' IN A.CODIGO)+1) FOR CHAR_LENGTH(A.CODIGO))');
    Open;
  end;

  with vQryAux3,vQryAux3.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('A.CODIGO "Label",');
    Add('case');
    Add('when B.DIAS_MEDIO>0 THEN');
    Add(' (B.PESO_MEDIO-B.PESO_ENTRADA)/B.DIAS_MEDIO');
    Add(' else');
    Add('  0');
    Add('END "Value"');
    Add('FROM LOTE_NUTRICIONAL B');
    Add('JOIN CURRAIS A  ON A.ID=B.ID_LOCAL');
    Add('WHERE a.tipo=1 AND B.STATUS=1 AND B.QTDE_CAB>0');
    Add('ORDER BY SUBSTRING(A.CODIGO FROM 1 FOR POSITION(''-'' IN A.CODIGO)-1),');
    Add('SUBSTRING(A.CODIGO FROM (POSITION(''-'' IN A.CODIGO)+1) FOR CHAR_LENGTH(A.CODIGO))');
    Open;
  end;

//  with vQryAux4,vQryAux4.SQL do
//  begin
//    Clear;
//    Add('SELECT');
//    Add(' c.CODIGO||'' | ''||DIAS_MEDIO|| '' Dias'' "Label",');
//    Add(' avg(d.CONSUMO_MN) "Value" FROM LOTE_NUTRICIONAL a');
//    Add('JOIN CURRAIS c  ON c.ID=a.ID_LOCAL');
//    Add('JOIN ANIMAL_FORNECIMENTO_CONF d ON d.ID_LOTE=a.ID');
//    Add('WHERE A.STATUS=1 AND A.QTDE_CAB>0');
//    Add('GROUP BY c.CODIGO,a.DIAS_MEDIO');
//    Add('ORDER BY SUBSTRING(C.CODIGO FROM 1 FOR POSITION(''-'' IN C.CODIGO)-1),');
//    Add('SUBSTRING(C.CODIGO FROM (POSITION(''-'' IN C.CODIGO)+1) FOR CHAR_LENGTH(C.CODIGO))');
//    Open;
//  end;
//  with vQryAux5,vQryAux5.SQL do
//  begin
//    Clear;
//    Add('SELECT');
//    Add(' c.CODIGO||'' | ''||DIAS_MEDIO|| '' Dias'' "Label",');
//    Add(' avg(d.CONSUMO_MS) "Value" FROM LOTE_NUTRICIONAL a');
//    Add('JOIN CURRAIS c  ON c.ID=a.ID_LOCAL');
//    Add('JOIN ANIMAL_FORNECIMENTO_CONF d ON d.ID_LOTE=a.ID');
//    Add('WHERE A.STATUS=1 AND A.QTDE_CAB>0');
//    Add('GROUP BY c.CODIGO,a.DIAS_MEDIO');
//    Add('ORDER BY SUBSTRING(C.CODIGO FROM 1 FOR POSITION(''-'' IN C.CODIGO)-1),');
//    Add('SUBSTRING(C.CODIGO FROM (POSITION(''-'' IN C.CODIGO)+1) FOR CHAR_LENGTH(C.CODIGO))');
//    Open;
//  end;
//
//  with vQryAux6,vQryAux6.SQL do
//  begin
//    Clear;
//    Add('SELECT');
//    Add(' c.CODIGO||'' | ''||DIAS_MEDIO|| '' Dias'' "Label",');
//    Add(' avg(d.IMS_PV) "Value" FROM LOTE_NUTRICIONAL a');
//    Add('JOIN CURRAIS c  ON c.ID=a.ID_LOCAL');
//    Add('JOIN ANIMAL_FORNECIMENTO_CONF d ON d.ID_LOTE=a.ID');
//    Add('WHERE A.STATUS=1 AND A.QTDE_CAB>0');
//    Add('GROUP BY c.CODIGO,a.DIAS_MEDIO');
//    Add('ORDER BY SUBSTRING(C.CODIGO FROM 1 FOR POSITION(''-'' IN C.CODIGO)-1),');
//    Add('SUBSTRING(C.CODIGO FROM (POSITION(''-'' IN C.CODIGO)+1) FOR CHAR_LENGTH(C.CODIGO))');
//    Open;
//  end;
  with vQryAux7,vQryAux7.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('INSUMO,');
    Add('COALESCE(TOTALENTRADA,0)ENTRADAS,');
    Add('COALESCE(TOTAL_BAIXADO,TOTAL_SAIDA_MINERAL,0)SAIDAS,');
    Add('COALESCE(TOTALENTRADA,0)-');
    Add('(');
    Add(' COALESCE(TOTAL_BAIXADO,TOTAL_SAIDA_MINERAL,0)+');
    Add('   COALESCE(TOTAL_SAIDA_IND_MINERAL,0)+');
    Add('    COALESCE(TOTAL_SAIDA_IND_ALIMENTO,0)');
    Add(')SALDO');
    Add('FROM');
    Add('(SELECT');
    Add('B.ID ID_SUPLEMENTO,');
    Add('C.ID ID_ALIMENTO,');
    Add('COALESCE(B.NOME,C.NOME) Insumo,');
    Add('sum(a.PESO_FAZENDA) TotalEntrada');
    Add('FROM ESTOQUE_MINERAL_ENTRADA A');
    Add('LEFT JOIN SUPLEMENTO_MINERAL B ON A.ID_MINERAL=B.ID');
    Add('LEFT JOIN ALIMENTO C ON A.ID_ALIMENTO=C.ID');
    Add('GROUP BY B.NOME,C.NOME,B.ID,C.ID)Y');
    Add('LEFT JOIN');
    Add('(SELECT B.ID,B.NOME,SUM(A.KG_FABRICADO) TOTAL_BAIXADO FROM FABRICACAO_INSUMOS A');
    Add('JOIN ALIMENTO B ON A.ID_ALIMENTO=B.ID');
    Add('WHERE A.STATUS=1');
    Add('GROUP BY B.ID,B.NOME)W');
    Add('ON W.ID=ID_ALIMENTO');
    Add('LEFT JOIN');
    Add('(SELECT B.ID,B.NOME,');
    Add(' SUM(A.REALIZADO_COCHO_KG+REALIZADO_ESTOQUE_KG)TOTAL_SAIDA_MINERAL');
    Add(' FROM FORNECIMENTO A');
    Add(' JOIN SUPLEMENTO_MINERAL B ON A.ID_PRODUTO=B.ID');
    Add('WHERE A.STATUS=1');
    Add(' GROUP BY B.ID,B.NOME)K');
    Add(' ON K.ID=ID_SUPLEMENTO');
    Add('LEFT JOIN');
    Add('(SELECT B.ID,B.NOME,');
    Add(' SUM(AB.QTD_KG)TOTAL_SAIDA_IND_MINERAL');
    Add(' FROM BAIXA_ESTOQUE_INSUMO_IND AB');
    Add(' JOIN SUPLEMENTO_MINERAL B ON AB.ID_PRODUTO=B.ID');
    Add('WHERE AB.STATUS=1');
    Add(' GROUP BY B.ID,B.NOME)L');
    Add('ON L.ID=ID_SUPLEMENTO');
    Add('LEFT JOIN');
    Add('(SELECT B.ID,B.NOME,');
    Add(' SUM(AA.QTD_KG)TOTAL_SAIDA_IND_ALIMENTO');
    Add(' FROM BAIXA_ESTOQUE_INSUMO_IND AA');
    Add(' JOIN ALIMENTO B ON AA.ID_ALIMENTO=B.ID');
    Add('WHERE AA.STATUS=1');
    Add(' GROUP BY B.ID,B.NOME)M');
    Add('ON M.ID=Y.ID_ALIMENTO');
    Open;
  end;
    WebChartConf
    .BackgroundColor('#2e353b')
    .NewProject
      .Rows
      .Title
       .Configuracoes
        .H4('Previsto x Realizado Dia')
       .&End
      .&End
      .Tag
        .Add(
          WebChartConf
          .ContinuosProject
           .Charts
            ._ChartType(bar)
              .Attributes
                .Heigth(100)
                .Name('PrevistoRealizadoRacao')
                .ColSpan(12)
                .Options
                  .Title
                     .text('Previsto x Realizado Ração')
                     .display(true)
                     .position('top')
                     .fontSize(15)
                     .fontFamily('Arial')
                     .fontColorHEX('#FFFFFF')
                     .fontStyle('bold')
                  .&End
                  .Legend
                    .display(true)
                    .position('bottom')
                  .&End
                .&End
                 .Labelling
                   .Format('0,000')
                   .RGBColor('255,255,255,255')
                   .FontSize(12)
                   .FontStyle('bold') //normal, bold, italic
                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                 .&End
                 .DataSet
                  .textLabel('Previsto')
                  .BackgroundColor('1,1,1')
                  .Fill(false)
                  .BorderWidth(2)
                  .BackgroundColor('14,55,200')
                  .DataSet(vQryAux)
                .&End
                .DataSet
                  .textLabel('Realizado')
                  .BackgroundColor('0,102,0')
                  .DataSet(vQryAux1)
                .&End
              .&End
            .&End
           .&End
          .HTML
         )
        .&End
     .&End
    .Jumpline
    .Rows
     .Tag
        .Add(
          WebChartConf
          .ContinuosProject
           .Charts
            ._ChartType(bar)
              .Attributes
                .Heigth(100)
                .Name('PrevRealTrato')
                .ColSpan(12)
                .Options
                  .Title
                     .text('Previsto x Realizado Por Trato')
                     .display(true)
                     .position('top')
                     .fontSize(15)
                     .fontFamily('Arial')
                     .fontColorHEX('#FFFFFF')
                     .fontStyle('bold')
                  .&End
                  .Legend
                    .display(true)
                    .position('bottom')
                  .&End
                .&End
                 .Labelling
                   .Format('0,000')
                   .RGBColor('255,255,255,255')
                   .FontSize(12)
                   .FontStyle('bold') //normal, bold, italic
                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                 .&End
                 .DataSet
                  .textLabel('Previsto')
                  .BackgroundColor('1,1,1')
                  .Fill(false)
                  .BorderWidth(2)
                  .BackgroundColor('14,55,200')
                  .DataSet(vQryAux8)
                .&End
                .DataSet
                  .textLabel('Realizado')
                  .BackgroundColor('0,102,0')
                  .DataSet(vQryAux9)
                .&End
                .DataSet
                  .textLabel('Diferença')
                  .BackgroundColor('255, 180, 0')
                  .DataSet(vQryAux10)
                .&End
              .&End
            .&End
           .&End
          .HTML
         )
        .&End
     .&End
//     .Jumpline
//      .Rows
//      .&End
//       .Rows
//        .Tag
//         .Add(
//           WebChartConf
//          .ContinuosProject
//          .Charts
//            ._ChartType(bar)
//              .Attributes
//                .Heigth(100)
//                .Name('AnimaisConsumo')
//                .ColSpan(12)
//                .Options
//                  .Title
//                     .text('Consumo MN/MS/%PV')
//                     .display(true)
//                     .position('bottom')
//                     .fontSize(15)
//                     .fontFamily('Arial')
//                     .fontColorHEX('#FFFFFF')
//                     .fontStyle('bold')
//                  .&End
//                  .Legend
//                    .display(true)
//                    .position('bottom')
//                  .&End
//                  .Scales
//                    .Axes
//                      .yAxe
//                        .Stacked(true)
//                      .&End
//                    .&End
//                  .&End
//                .&End
//                 .Labelling
//                   .Format('0.0[00]')
//                   .RGBColor('255,255,255,255')
//                   .FontSize(12)
//                   .FontStyle('bold') //normal, bold, italic
//                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
//                 .&End
//                 .DataSet
//                    .textLabel('% PV')
//                    .Types('line')
//                    .BackgroundColor('0,102,0')
//                    .Fill(true)
//                    .BorderWidth(2)
//                    .BorderColor('0,0,0')
//                    .DataSet(vQryAux6)
//                  .&End
//                  .DataSet
//                    .textLabel('Consumo MS')
//                    .Types('line')
//                    .BackgroundColor('128,0,0')
//                    .Fill(true)
//                    .BorderWidth(2)
//                    .BorderColor('0,0,0')
//                    .DataSet(vQryAux5)
//                  .&End
//                 .DataSet
//                    .textLabel('Consumo MN')
//                    .Types('line')
//                    .BackgroundColor('30,182,203')
//                    .Fill(true)
//                    .BorderWidth(2)
//                    .BorderColor('0,0,0')
//                    .DataSet(vQryAux4)
//                  .&End
//              .&End
//            .&End
//          .HTML
//          )
//        .&End
//     .&End
     .Jumpline
      .Rows
      .&End
       .Rows
        .Tag
         .Add(
           WebChartConf
          .ContinuosProject
            .Charts
              ._ChartType(bar)
                .Attributes
                  .Heigth(100)
                  .Name('AnimaisDias')
                  .ColSpan(12)
                  .Options
                    .Title
                       .text('Dias de Cocho')
                       .display(true)
                       .position('top')
                       .fontSize(15)
                       .fontFamily('Arial')
                       .fontColorHEX('#FFFFFF')
                       .fontStyle('bold')
                    .&End
                    .Legend
                      .display(true)
                    .&End
                  .&End
                   .Labelling
                     .Format('0.0[00]')
                     .RGBColor('255,255,255,255')
                     .FontSize(12)
                     .FontStyle('bold') //normal, bold, italic
                     .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                   .&End
                   .DataSet
                      .textLabel('Dias Cocho')
                      .Types('line')
                      .BackgroundColor('1,1,1')
                      .Fill(false)
                      .BorderWidth(2)
                      .BorderColor('30,182,203')
                      .DataSet(vQryAux2)
                   .&End
                   .DataSet
                      .textLabel('GMD')
                      .BackgroundColor('0,102,0')
                      .Fill(false)
                      .BorderWidth(2)
                      .BorderColor('0,102,0')
                      .DataSet(vQryAux3)
                    .&End
                .&End
              .&End
            .HTML
          )
        .&End
     .&End
     .Jumpline
     .Jumpline
     .Rows
       .Title
        .Configuracoes
         .H4('Estoque Por Insumo')
        .&End
       .&End
       .Tag
         .Add(
           WebCharts1
           .ContinuosProject
             .Table
                .TableClass
                  .tableSm
                  .tableHover
                  .tableBordered
                  .tableStriped
                  .tableDark
                .EndTableClass
                .DataSet
                  .DataSet(vQryAux7)
                .&End
             .&End
           .HTML
           )
          .&End
      .&End
     .WebBrowser(WebConf)
     .Generated;
     vQryAux.Release;
     vQryAux1.Release;
     vQryAux2.Release;
     vQryAux3.Release;
     vQryAux4.Release;
     vQryAux5.Release;
     vQryAux6.Release;
     vQryAux7.Release;
     vQryAux8.Release;
     vQryAux9.Release;
     vQryAux10.Release;
end;

procedure TfrmPrincipal.GeraGridCustoFixo;
var
 i:integer;
 vQryAux :TFDQuery;
begin
   GridCustoFixo.RowCount :=1;
   I:=0;
   if serviceDB.TableCustoFixo.RecordCount>0 then
   begin
    serviceDB.TableCustoFixo.First;
    while not serviceDB.TableCustoFixo.Eof do
    begin
      GridCustoFixo.Cells[0,i]      := serviceDB.TableCustoFixoANO.AsString;
      GridCustoFixo.Cells[1,i]      := serviceDB.TableCustoFixoJANEIRO.AsString;
      GridCustoFixo.Cells[2,i]      := serviceDB.TableCustoFixoFEVEREIRO.AsString;
      GridCustoFixo.Cells[3,i]      := serviceDB.TableCustoFixoMARCO.AsString;
      GridCustoFixo.Cells[4,i]      := serviceDB.TableCustoFixoABRIL.AsString;
      GridCustoFixo.Cells[5,i]      := serviceDB.TableCustoFixoMAIO.AsString;
      GridCustoFixo.Cells[6,i]      := serviceDB.TableCustoFixoJUNHO.AsString;
      GridCustoFixo.Cells[7,i]      := serviceDB.TableCustoFixoJULHO.AsString;
      GridCustoFixo.Cells[8,i]      := serviceDB.TableCustoFixoAGOSTO.AsString;
      GridCustoFixo.Cells[9,i]      := serviceDB.TableCustoFixoSETEMBRO.AsString;
      GridCustoFixo.Cells[10,i]     := serviceDB.TableCustoFixoOUTUBRO.AsString;
      GridCustoFixo.Cells[11,i]     := serviceDB.TableCustoFixoNOVEMBRO.AsString;
      GridCustoFixo.Cells[12,i]     := serviceDB.TableCustoFixoDEZEMBRO.AsString;
      inc(i);
      serviceDB.TableCustoFixo.Next;
    end;
   end
   else
    GridCustoFixo.RowCount :=0;
   Application.ProcessMessages;
end;

procedure TfrmPrincipal.GeraResumoDia(Adata: string);
begin
 with frmPrincipal.qryResumoDia,frmPrincipal.qryResumoDia.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('TIPO,');
   Add('HoraInicio,');
   Add('HoraFim,');
   Add('SegundosTotal,');
   Add('qtdAnimais,');
   Add('PesoEnt,');
   Add('mediaAnimaisSegundo');
   Add('FROM');
   Add('(');
   Add('SELECT');
   Add('''ENTRADA''AS TIPO,');
   Add('Ent.*,');
   Add('CASE');
   Add('WHEN qtdAnimais>0 THEN');
   Add('(SegundosTotal/qtdAnimais)');
   Add('ELSE');
   Add('0');
   Add('END mediaAnimaisSegundo');
   Add('FROM');
   Add('(SELECT');
   Add('COALESCE(min(cast(a.DATAREG as time)),''00:00:00'') HoraInicio,');
   Add('COALESCE(max(cast(a.DATAREG as time)),''00:00:00'') HoraFim,');
   Add('COALESCE(datediff(SECOND from min(a.DATAREG) to max(a.DATAREG)),0)SegundosTotal,');
   Add('COALESCE(count(*),0) qtdAnimais,');
   Add('COALESCE(avg(a.peso_entrada),0)PesoEnt');
   Add('FROM ANIMAL a');
   Add('JOIN CURRAIS c ON  a.ID_LOCAL =c.ID');
   Add('WHERE a.DATA_PROC=:DATA_SAIDA AND A.STATUS>-1 and a.id_propriedade=:id_propriedade)ent');
   Add('UNION ALL');
   Add('SELECT');
   Add('''REPROCESSAMENTO'' AS TIPO,');
   Add('Ent.*,');
   Add('CASE');
   Add('WHEN qtdAnimais>0 THEN');
   Add('(SegundosTotal/qtdAnimais)');
   Add('ELSE');
   Add('0');
   Add('END mediaAnimaisSegundo');
   Add('FROM');
   Add('(SELECT');
   Add('min(COALESCE(NULLIF(cast(DATA_REPROCESSAMENTO AS time),''00:00:00.0000''),cast(a.DATA_ULTIMA_ALTERACAO AS time))) HoraInicio,');
   Add('max(COALESCE(NULLIF(cast(DATA_REPROCESSAMENTO AS time),''00:00:00.0000''),cast(a.DATA_ULTIMA_ALTERACAO AS time))) HoraFim,');
   Add('COALESCE(datediff(SECOND from ');
   Add('min(COALESCE(NULLIF(cast(DATA_REPROCESSAMENTO AS time),''00:00:00.0000''),cast(a.DATA_ULTIMA_ALTERACAO AS time))) to ');
   Add('max(COALESCE(NULLIF(cast(DATA_REPROCESSAMENTO AS time),''00:00:00.0000''),cast(a.DATA_ULTIMA_ALTERACAO AS time)))');
   Add('),0)SegundosTotal,');
   Add('COALESCE(count(*),0) qtdAnimais,');
   Add('COALESCE(avg(a.ultimo_peso),0)Peso');
   Add('FROM ANIMAL a');
   Add('JOIN CURRAIS c ON  a.ID_LOCAL =c.ID');
   Add('WHERE cast(a.DATA_REPROCESSAMENTO as date)=:DATA_SAIDA AND A.STATUS>-1 and a.id_propriedade=:id_propriedade');
   Add(')ent');
   Add('UNION ALL');
   Add('SELECT');
   Add('''SAIDA'' AS TIPO,');
   Add('Ent.*,');
   Add('CASE');
   Add('WHEN qtdAnimais>0 THEN');
   Add('(SegundosTotal/qtdAnimais)');
   Add('ELSE');
   Add('0');
   Add('END mediaAnimaisSegundo');
   Add('FROM');
   Add('(SELECT');
   Add('COALESCE(min(cast(A.DATA_ULTIMA_ALTERACAO as time)),''00:00:00'') HoraInicio,');
   Add('COALESCE(max(cast(a.DATA_ULTIMA_ALTERACAO as time)),''00:00:00'') HoraFim,');
   Add('COALESCE(datediff(SECOND from min(a.DATA_ULTIMA_ALTERACAO) to max(a.DATA_ULTIMA_ALTERACAO)),0)SegundosTotal,');
   Add('COALESCE(count(*),0) qtdAnimais,');
   Add('COALESCE(avg(a.ultimo_peso),0)Peso');
   Add('FROM ANIMAL a');
   Add('JOIN CURRAIS c ON  a.ID_LOCAL =c.ID');
   Add('WHERE cast(a.DATA_SAIDA as date)=:DATA_SAIDA AND A.STATUS>-1 and a.id_propriedade=:id_propriedade');
   Add(')ent');
   Add(')');
   ParamByName('DATA_SAIDA').AsString     := Adata;
   ParamByName('id_propriedade').AsString := serviceDB.vIdPropriedade;
   Open;
 end
end;

procedure TfrmPrincipal.GridCustoFixoEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
var
 vValor:string;
begin
 try
   vValor := GridCustoFixo.Cells[GridCustoFixo.col,GridCustoFixo.Row];
   GridCustoFixo.Selected :=-1;
   serviceDB.AtualizaCustoFixo(cbxAnoCustoFixo.Selected.Text,IntToStr(GridCustoFixo.Col),vValor);
   btnGerarCustoFixo.Visible := serviceDB.AbrirCustoFixoAno(cbxAnoCustoFixo.Selected.Text);
   GeraGridCustoFixo;
   if GridCustoFixo.col<13 then
    GridCustoFixo.Col := (GridCustoFixo.col+1);
    Application.ProcessMessages;
 except
   on e : Exception do
   MyShowMessage('Erro ao Atualizar Configuracao: '+e.Message,false)
  end;
end;

procedure TfrmPrincipal.gridGMDAnoEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  serviceDBN.GMD_ANUAL_FAZENDA.Edit;
  serviceDBN.GMD_ANUAL_FAZENDAGMD.AsString := gridGMDAno.Cells[2,gridGMDAno.Row];
  serviceDBN.GMD_ANUAL_FAZENDA.ApplyUpdates(-1);
end;

procedure TfrmPrincipal.HabilitaFuncoes(TipoUsuario: string);
begin
  vCadUsuario      := TipoUsuario='1';
  vCadPropriedade  := TipoUsuario='1';
  vCadEstrutura    := TipoUsuario='1';
  vCadRaca         := TipoUsuario='1';
  vCadCategoria    := TipoUsuario='1';
  vCadGTA          := TipoUsuario='1';
  vCadPropriedade  := TipoUsuario='1';
end;

procedure TfrmPrincipal.Image107Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TfrmPrincipal.Image10Click(Sender: TObject);
begin
 if layMnuDash.Width =250 then
 begin
   TreeViewItem13.Text  := '';
   TreeViewItem17.Text  := '';
   TreeViewItemFin.Text := '';
   layMnuDash.Width     := 60;
 end
 else
 begin
   TreeViewItem13.Text := 'Animais';
   TreeViewItem17.Text := 'Estoque';
   TreeViewItemFin.Text:= 'Financeiro';
   layMnuDash.Width    := 250;
 end;
end;

procedure TfrmPrincipal.Image161Click(Sender: TObject);
begin
 layPopUpCad.Visible := false;
 TabControl1.Visible := true;
end;

procedure TfrmPrincipal.Image22Click(Sender: TObject);
begin
  mnuAlteraAnimais.Visible := false;
  MudarAba(tbimenu,Sender);
end;

procedure TfrmPrincipal.Image30Click(Sender: TObject);
begin
 serviceConf.AtualizaLotesAtivos;
 ChartAnimalCategoria;
 GeraDashConfinamento;
 LabelQtdeConfPasto;
end;

procedure TfrmPrincipal.imgCloseClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TfrmPrincipal.imgMenuClick(Sender: TObject);
begin
 if layMnu.Visible =true then
  layMnu.Visible :=false
 else
  layMnu.Visible :=true
end;

procedure TfrmPrincipal.LabelQtdeConfPasto;
var
 vQry8 :TFDQuery;
begin
  vQry8              := TFDQuery.Create(nil);
  vQry8.Connection   := serviceDB.fCon;
  lblConfMacho.Text  :='0';
  lblConfFemea.Text  :='0';
  lblPastoMacho.Text :='0';
  lblPastoFemea.Text :='0';
  with vQry8,vQry8.SQL do
  begin
   Clear;
   Add('SELECT TIPO,SEXO,COUNT(*) QTD FROM(');
   Add('SELECT');
   Add('CASE');
   Add('WHEN B.TIPO=1 THEN ''CONFINAMENTO''');
   Add('ELSE ''PASTO''');
   Add('END TIPO,');
   Add('C.SEXO');
   Add('FROM ANIMAL A');
   Add('JOIN CURRAIS B ON A.ID_LOCAL=B.ID');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('WHERE A.STATUS=1 AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade+')');
   Add('GROUP BY TIPO,SEXO');
   Open;
   while not vQry8.eof do
   begin
     if FieldByName('Tipo').AsString ='CONFINAMENTO' then
     begin
       if FieldByName('sexo').AsString ='M' then
        lblConfMacho.Text  :=FieldByName('QTD').AsString;
       if FieldByName('sexo').AsString ='F' then
        lblConfFemea.Text  :=FieldByName('QTD').AsString;
     end;
     if FieldByName('Tipo').AsString ='PASTO' then
     begin
      if FieldByName('sexo').AsString ='M' then
        lblPastoMacho.Text  :=FieldByName('QTD').AsString;
      if FieldByName('sexo').AsString ='F' then
       lblPastoFemea.Text  :=FieldByName('QTD').AsString;
     end;
     vQry8.Next;
   end;
   Clear;
   Add('SELECT max(DATA_FORN)maxData FROM FORNECIMENTO_CONF');
   Add('WHERE STATUS=1');
   Open;
   lblUltimoFornecimento.Text := FieldByName('maxData').AsString;

   Clear;
   Add('SELECT max(DATA_FAB)maxData FROM FABRICACAO');
   Add('WHERE STATUS=1');
   Open;
   lblUltimaBaixaEstoque.Text := FieldByName('maxData').AsString;

   Clear;
   Add('SELECT max(A.DATA_PROC)maxData FROM ANIMAL a');
   Add('JOIN CURRAIS b ON a.ID_LOCAL=b.id AND tipo=1');
   Add('WHERE A.STATUS=1');
   Open;
   lblUltimaEntradaAnimal.Text := FieldByName('maxData').AsString;
  end;
end;

procedure TfrmPrincipal.MenuItem10Click(Sender: TObject);
begin
 edtConfirmaSenha.Text         := '';
 vAltera                       :=1;
 layAlteraPeso.Visible         :=false;
 edtValorAtual.Text            :='R$'+qryGridVALOR_COMPRA.AsString;
 layAlteraValorEntrada.Visible :=true;
 layAlteracao.Visible          :=true;
 layAlteraData.Visible         :=false;
 LayAlteraEraEntrada.Visible   :=false;
end;

procedure TfrmPrincipal.MenuItem1Click(Sender: TObject);
begin
 edtConfirmaSenha.Text         := '';
 vAltera                       :=4;
 layAlteraPeso.Visible         :=false;
 edtEraAtual.Text              :=qryGridIDADE_ENTRADA.AsString;
 layAlteraValorEntrada.Visible :=false;
 layAlteraData.Visible         :=false;
 LayAlteraEraEntrada.Visible   :=true;
 layAlteracao.Visible          :=true;
end;

procedure TfrmPrincipal.MenuItem2Click(Sender: TObject);
begin
 recAlteraRaca.Visible       := true;
 recAlterarCategoria.Visible := false;
 vAlteraRaca := 1;
 lblAlteraRacaCategoria.Text := 'Alteração de Raça';
 layPopUpCad.Visible         := true;
end;

procedure TfrmPrincipal.MenuItem3Click(Sender: TObject);
begin
 recAlteraRaca.Visible       := false;
 recAlterarCategoria.Visible := true;
 vAlteraRaca := 0;
 lblAlteraRacaCategoria.Text := 'Alteração de Categoria';
 layPopUpCad.Visible         := true;
end;

procedure TfrmPrincipal.MenuItem4Click(Sender: TObject);
begin
 edtConfirmaSenha.Text         := '';
 vAltera                       :=5;
 layAlteraPeso.Visible         :=false;
 edtDataEntConfAtual.Text      :=qryGridDATA_ENTRADA_CONF.AsString;
 layAlteraValorEntrada.Visible :=false;
 layAlteraData.Visible         :=false;
 layAlteracao.Visible          :=true;
 layAltera.Visible             :=true;
 LayAlteraEraEntrada.Visible   :=false;
end;

procedure TfrmPrincipal.MenuItem8Click(Sender: TObject);
begin
 edtConfirmaSenha.Text         := '';
 vAltera                       :=2;
 layAlteraPeso.Visible         :=true;
 edtPesoAtual.Text             :=qryGridPESO_ENT.AsString;
 layAlteraValorEntrada.Visible :=false;
 layAlteraData.Visible         :=false;
 layAlteracao.Visible          :=true;
 LayAlteraEraEntrada.Visible   :=false;
end;

procedure TfrmPrincipal.MenuItem9Click(Sender: TObject);
begin
 edtConfirmaSenha.Text         := '';
 vAltera                       :=3;
 layAlteraPeso.Visible         :=false;
 edtDataAtual.Text             :=qryGridDATA_ENT.AsString;
 layAlteraValorEntrada.Visible :=false;
 layAlteraData.Visible         :=true;
 layAlteracao.Visible          :=true;
 LayAlteraEraEntrada.Visible   :=false;
end;

procedure TfrmPrincipal.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmPrincipal.Notificacao;
var
  MyNotification: TNotification;
  iOcorrencia,iEvento:integer;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  try
    if (iOcorrencia>0) and (iEvento>0) then
    begin
      MyNotification.Name := 'NotificationOcorrencias';
      MyNotification.Title := 'FieldPec Tecnologia em Campo';
        MyNotification.AlertBody := 'Existe '+IntToStr(serviceDB.RetornaQtdOcorrencia(date))+
         ' Ocorrencias e '+IntToStr(serviceDB.RetornaQtdAgendamentos(date))
         +' Agendamento para o dia de hoje';
      NotificationCenter1.PresentNotification(MyNotification);
    end;
    if not serviceDB.VerificaFornecimentoIrregular then
    begin
      MyNotification.Name := 'NotificationOcorrencias';
      MyNotification.Title := 'FieldPec Tecnologia em Campo';
        MyNotification.AlertBody := 'Existe Fornecimento Irregular'+
         ' Favor corrigir na tela de forneciemnto';
      NotificationCenter1.PresentNotification(MyNotification);
    end;
  finally
    MyNotification.free;
  end;
end;

function TfrmPrincipal.ObterVersaoWindows: String;
var
  vNome,
  vVersao,
  vCurrentBuild: String;
  Reg: TRegistry;
begin
  Reg         := TRegistry.Create; //CriaAndo um Registro na Memória
  Reg.Access  := KEY_READ; //Colocando nosso Registro em modo Leitura
  Reg.RootKey := HKEY_LOCAL_MACHINE; //Definindo a Raiz

  //Abrindo a chave desejada
  Reg.OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\', true);

  //Obtendo os Parâmetros desejados
  vNome         := Reg.ReadString('ProductName');
  vVersao       := Reg.ReadString('CurrentVersion');
  vCurrentBuild := Reg.ReadString('CurrentBuild');

  //Montando uma String com a Versão e alguns detalhes
  Result := copy(vNome,0,10);
end;

procedure TfrmPrincipal.ppHeaderBand1BeforePrint(Sender: TObject);
begin
 if FileExists(PathLogoJPG)=true then
  ImgCli.Picture.LoadFromFile(PathLogoJPG)
 else
  ImgCli.Picture:=nil;
end;

procedure TfrmPrincipal.ppHeaderBand5BeforePrint(Sender: TObject);
begin
 if FileExists(PathLogoJPG)=true then
  ppImage3.Picture.LoadFromFile(PathLogoJPG)
 else
  ppImage3.Picture:=nil;
end;

procedure TfrmPrincipal.ppHeaderBand6BeforePrint(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
   procedure
   begin
    TThread.Synchronize(TThread.CurrentThread,
    procedure ()
    begin
      if FileExists(PathLogoJPG)=true then
      imgCli1.Picture.LoadFromFile(PathLogoJPG)
     else
      imgCli1.Picture:=nil;
    end);
   end).Start;
end;

procedure TfrmPrincipal.ppRepListaAfterPrint(Sender: TObject);
begin
  BindSourceDB3.DataSet    := qryGrid;
end;

procedure TfrmPrincipal.ppSummaryBand3AfterPrint(Sender: TObject);
var
 vQRY:TFDQuery;
begin
 vQRY := TFDQuery.Create(NIL);
 vQRY.Connection := serviceDb.FCon;
 with vQRY,vQRY.SQL do
 begin
   Clear;
   Add('SELECT COUNT(*),AVG(PESO_ENTRADA) qtd FROM ANIMAL an');
   Add('JOIN CATEGORIAS ca ON ca.id=an.ID_CATEGORIA');
   Add('WHERE an.STATUS=1 AND ca.SEXO=''M''');
   Add('AND an.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   ppLblTotalMacho.Text := FieldByName('qtd').AsString;

   Clear;
   Add('SELECT COUNT(*),AVG(PESO_ENTRADA) qtd FROM ANIMAL an');
   Add('JOIN CATEGORIAS ca ON ca.id=an.ID_CATEGORIA');
   Add('WHERE an.STATUS=1 AND ca.SEXO=''F''');
   Add('AND an.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   ppLblTotalFemea.Text := FieldByName('qtd').AsString;
 end;
 vQRY.Release;
end;

procedure TfrmPrincipal.rdBaseCampoChange(Sender: TObject);
begin
 if rdBaseCampo.IsChecked then
 begin
  serviceDB.ConectaBD(1);
  serviceDB.PropriedadePropria.Close;
  serviceDB.PropriedadePropria.Open;
  serviceDB.PropriedadePropria.Filtered := false;
  serviceDB.PropriedadePropria.Filter   := 'id='+DMBaseCampo.vIdPropriedadeBaseCampo;
  serviceDB.PropriedadePropria.Filtered := true;
  serviceDB.PropriedadePropria.RecordCount;
  cbxPropriedade.ItemIndex := cbxPropriedade.Items.IndexOf(serviceDB.PropriedadePropriaNOME.AsString);
  cbxPropriedade.Enabled := false;
  layEscolheBase.Visible := false;
  vIDPropriedadePropria       := DMBaseCampo.vIdPropriedadeBaseCampo;
  serviceDB.vIdPropriedade    := DMBaseCampo.vIdPropriedadeBaseCampo;
  btnSincronizaBaseCampo.Visible := true;
 end;
end;

procedure TfrmPrincipal.rdBaseMasterChange(Sender: TObject);
begin
 if rdBaseMaster.IsChecked then
 begin
   serviceDB.ConectaBD(0);
   vIdBaseCampo:='0';
   serviceDB.PropriedadePropria.Close;
   serviceDB.PropriedadePropria.Open;
   layEscolheBase.Visible         := false;
   btnSincronizaBaseCampo.Visible := false;
 end;
end;

procedure TfrmPrincipal.rdDetalhadoChange(Sender: TObject);
begin
 layTipoRel.Visible := false;
 if rdDetalhado.IsChecked then
   with qryGridPrint,qryGridPrint.SQL do
   begin
    Clear;
    Add('SELECT W.* FROM');
    Add('(');
    Add('SELECT y.*,');
    Add(' COALESCE(');
    Add('  CASE');
    Add('    WHEN y.PESO_SAIDA>0 THEN y.PESO_SAIDA-y.Peso_Ent');
    Add('   END,0) GTP_SAIDA,');
    Add(' COALESCE(');
    Add('  CASE');
    Add('    WHEN y.PESO_SAIDA>0 THEN ((y.PESO_SAIDA-y.Peso_Ent)/Y.DIAS)');
    Add('  END,0) GMD_SAIDA');
    Add('FROM');
    Add('(SELECT X.*,');
    Add(' case');
    Add('when x.IdadeAtual <=12                      then  ''0 A 12''');
    Add('when x.IdadeAtual >12 and x.IdadeAtual<=24  then ''13 A 24''');
    Add('when x.IdadeAtual >24 and x.IdadeAtual<=36  then ''25 A 36''');
    Add('when x.IdadeAtual >36                       then ''Mais 36''');
    Add('end FaixaIdade');
    Add('from');
    Add('(select');
    Add('cat.NOME CategoriaAtual,');
    Add('an.id animal_id,');
    Add('cu.codigo curral,');
    Add('cu.id_retiro,');
    Add('an.identificacao_1 ident_1,');
    Add('an.identificacao_2 ident_2,');
    Add('an.IDADE_MESES idade_entrada,');
    Add('CAST(an.DATA_NASCIMENTO AS DATE) nascimento,');
    Add('r.nome raca,');
    Add('c.nome categoria,');
    Add('an.data_proc data_ent,');
    Add('an.peso_entrada peso_Ent,');
    Add('COALESCE(cast(an.data_ultimo_peso as date),CAST(an.data_proc AS date)) dt_ultimo_peso,');
    Add('COALESCE(an.ultimo_peso,an.peso_entrada)ultimo_peso,');
    Add('g.numero gta,');
    Add('datediff(DAY FROM an.data_proc to COALESCE(an.DATA_SAIDA,CURRENT_DATE))+1 dias,');
    Add('datediff(MONTH FROM an.DATA_NASCIMENTO to COALESCE(an.DATA_SAIDA,CURRENT_DATE)) idadeAtual,');
    Add('an.DATA_SAIDA,');
    Add('an.PESO_SAIDA,');
    Add('gs.numero gta_Saida,');
    Add('prt.NOME  ProdutorOrigem,');
    Add('prts.NOME ProdutorDestinoSaida,');
    Add('c.SEXO,');
    Add('pro.NOME PropriedadeOrigem,');
    Add('prop.NOME Proprietario,');
    Add('an.VALOR_COMPRA,');
    Add('an.VALOR_VENDA,');
    Add('an.DATA_REPROCESSAMENTO,');
    Add('an.STATUS,');
    Add('axr.nome REBANHO,');
    Add('CCA.NUMERO,');
    Add('cp.nome CategoriaPadrao');
    Add('from animal AN');
    Add('join raca R ON AN.id_raca=R.id');
    Add('join categorias c on an.id_categoria=c.id');
    Add('join CATEGORIA_PADRAO cp on c.ID_CATEGORIA_PADRAO=cp.ID');
    Add('left join categorias cat on an.id_categoria_Atual=cat.id');
    Add('join currais cu on an.id_local=cu.id');
    Add('left join gta g on g.id=an.gta_id');
    Add('left join gta gs on gs.id=an.ID_GTA_SAIDA');
    Add('left join PRODUTORES prop ON prop.ID=an.ID_PRODUTOR');
    Add('LEFT JOIN PRODUTORES prt ON prt.ID=an.ID_PRODUTOR_ORIGEM');
    Add('LEFT JOIN PROPRIEDADES Pro ON pro.ID=prt.ID_PROPRIEDADE');
    Add('LEFT JOIN PRODUTORES prts ON prts.ID=an.ID_PRODUTOR_DESTINO_SAIDA');
    Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=an.ID_REBANHO');
    Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL CCA ON CCA.ID=an.ID_CONTRATO');
    Add('WHERE AN.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
    if cbxProprietario.ItemIndex>0 then
     Add('and PROP.ID='+vIdProprietario);
    Add('AND AN.STATUS<>-1)X)y)w');
      Add('where 1=1');
      if cbxStatus.ItemIndex>0 then
       Add('AND STATUS='+IntToStr(cbxStatus.ItemIndex));

      if cbxRetiro.ItemIndex>0 then
       Add('and ID_RETIRO='+vIdRetiro);

      if edtLocalOrigem.Text.Length>0 then
       Add('and CURRAL='+edtLocalOrigem.Text.QuotedString);

      if cbxRebanhof.ItemIndex>0 then
       Add('AND REBANHO='+cbxRebanhof.Selected.Text.QuotedString);

      if cbxFRaca.ItemIndex>0 then
       Add('and RACA='+cbxFRaca.Selected.Text.QuotedString);

      if cbxFCategoria.ItemIndex>0 then
       Add('and CategoriaAtual='+cbxFCategoria.Selected.Text.QuotedString);

      if edtFNumGTA.Text.Length>0 then
        Add('and GTA='+edtFNumGTA.Text.QuotedString);

      if edtGtaSaida.Text.Length>0 then
        Add('and GTA_SAIDA='+edtGtaSaida.Text.QuotedString);

      if edtIdent1.Text.Length>0 then
        Add('and IDENT_1='+edtIdent1.Text.QuotedString);

      if edtIdent2.Text.Length>0 then
        Add('and IDENT_2='+edtIdent2.Text.QuotedString);

      if edtNumContrato.Text.Length>0 then
        Add('and NUMERO='+edtNumContrato.Text.QuotedString);

      if edtLoteSaida.Text.Length>0 then
        Add('and ID_LOTESAIDA='+edtLoteSaida.Text);

      if edtBaseCampoF.Text.Length>0 then
        Add('and ID_BASE_CAMPO='+edtBaseCampoF.Text);

      if chkPeriodoProc.IsChecked then
      begin
       if edtFDataEntDE.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       if edtFDataEntATE.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataEntATE.SetFocus;
         Exit;
       end;
      if edtFDataEntATE.Date<edtFDataEntDE.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_ENT as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date)));
      end;

      if chkPeriodoReproc.IsChecked then
      begin
       if edtDataDeReproc.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial Reprocessamento');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       if edtDataAteReproc.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final Reprocessamento');
         edtFDataEntATE.SetFocus;
         Exit;
       end;
      if edtDataAteReproc.Date<edtDataDeReproc.Date then
       begin
         ShowMessage('Data Reprocessamento final nao pode ser menor que inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_REPROCESSAMENTO as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtDataDeReproc.Date))+' and '+
       QuotedStr(FormatDateTime('mm/dd/yyyy',edtDataATEReproc.Date)));
      end;



      if chkPeriodoSaida.IsChecked then
      begin
       if edtFDataSaiDE.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataSaiDE.SetFocus;
         Exit;
       end;
       if edtFDataSaiATE.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
      if edtFDataSaiATE.Date<edtFDataSaiDe.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_SAIDA as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiATE.Date)));
      end;

      if cbxProdutorOrigem.ItemIndex>0 then
       Add('and PRODUTORORIGEM='+cbxProdutorOrigem.Selected.Text.QuotedString);

      if cbxProdutorDestino.ItemIndex>0 then
       Add('and PRODUTORDESTINOSAIDA='+cbxProdutorDestino.Selected.Text.QuotedString);
      if cbxFaixaIdade.ItemIndex>0 then
       Add('and FaixaIdade='+cbxFaixaIdade.Selected.Text.QuotedString);
    try
     Open;
     if not IsEmpty then
      SerRel.ppRepLista.Print
     else
      MyShowMessage('Não existe dados para esse filtro!',false);
    except
     on E : Exception do
       begin
         ShowMessage('Exception message = '+E.Message);
       end;
    end;
  end;
end;

procedure TfrmPrincipal.rdResumidoChange(Sender: TObject);
begin
 layTipoRel.Visible := false;
 if rdResumido.IsChecked then
   with qryResumoPrint,qryResumoPrint.SQL do
   begin
      Clear;
      Add('SELECT');
      Add('CURRAL,');
      Add('RACA,');
      Add('CATEGORIAATUAL,');
      Add('MIN(DATA_ENT) MENOR_DATA_ENTRADA,');
      Add('MAX(DATA_ENT) MAIOR_DATA_ENTRADA,');
      Add('COUNT(*) TOTAL_ANIMAIS,');
      Add('AVG(PESO_ENT) PESO_MEDIO_ENTRADA,');
      Add('AVG(ULTIMO_PESO) PESO_MEDIO_ULTIMO,');
      Add('AVG(idadeAtual) idademEDIA,');
      Add('MAX(ULTIMO_PESO) ULTIMA_PESAGEM');
      Add('FROM');
      Add('(');
      Add('SELECT W.*,');
      Add('CASE');
      Add(' WHEN ultimo_peso>0 THEN (ultimo_peso-peso_Ent)/(cast(dt_ultimo_peso AS date)-cast(data_ent AS date)+1)');
      Add('else 0');
      Add('END gmdProjetado');
      Add('FROM');
      Add('(');
      Add('SELECT y.*,');
      Add(' COALESCE(');
      Add('  CASE');
      Add('    WHEN y.PESO_SAIDA>0 THEN y.PESO_SAIDA-y.Peso_Ent');
      Add('   END,0) GTP_SAIDA,');
      Add(' COALESCE(');
      Add('  CASE');
      Add('    WHEN y.PESO_SAIDA>0 THEN ((y.PESO_SAIDA-y.Peso_Ent)/Y.DIAS)');
      Add('  END,0) GMD_SAIDA');
      Add('FROM');
      Add('(SELECT X.*,');
      Add(' case');
      Add('when x.IdadeAtual <=12                      then  ''0 A 12''');
      Add('when x.IdadeAtual >12 and x.IdadeAtual<=24  then ''13 A 24''');
      Add('when x.IdadeAtual >24 and x.IdadeAtual<=36  then ''25 A 36''');
      Add('when x.IdadeAtual >36                       then ''Mais 36''');
      Add('end FaixaIdade');
      Add('from');
      Add('(select');
      Add('cat.NOME CategoriaAtual,');
      Add('an.id animal_id,');
      Add('cu.codigo curral,');
      Add('cu.id_retiro,');
      Add('an.identificacao_1 ident_1,');
      Add('an.identificacao_2 ident_2,');
      Add('an.IDADE_MESES idade_entrada,');
      Add('CAST(an.DATA_NASCIMENTO AS DATE) nascimento,');
      Add('r.nome raca,');
      Add('c.nome categoria,');
      Add('an.data_proc data_ent,');
      Add('an.peso_entrada peso_Ent,');
      Add('COALESCE(cast(an.data_ultimo_peso as date),CAST(an.data_proc AS date)) dt_ultimo_peso,');
      Add('COALESCE(an.ultimo_peso,an.peso_entrada)ultimo_peso,');
      Add('g.numero gta,');
      Add('datediff(DAY FROM an.data_proc to COALESCE(an.DATA_SAIDA,CURRENT_DATE))+1 dias,');
      Add('datediff(MONTH FROM an.DATA_NASCIMENTO to COALESCE(an.DATA_SAIDA,CURRENT_DATE)) idadeAtual,');
      Add('an.ID_LOTESAIDA,');
      Add('an.DATA_SAIDA,');
      Add('an.PESO_SAIDA,');
      Add('gs.numero gta_Saida,');
      Add('prt.NOME  ProdutorOrigem,');
      Add('prts.NOME ProdutorDestinoSaida,');
      Add('c.SEXO,');
      Add('pro.NOME PropriedadeOrigem,');
      Add('prop.NOME Proprietario,');
      Add('an.VALOR_COMPRA,');
      Add('an.VALOR_VENDA,');
      Add('an.DATA_REPROCESSAMENTO,');
      Add('an.STATUS,');
      Add('axr.nome REBANHO,');
      Add('CCA.NUMERO,');
      Add('CU.TIPO,');
      Add('AN.ID_BASE_CAMPO,');
      Add('an.PESO_ESTIMADO,');
      Add('an.ID_PRODUTOR');
      Add('from animal AN');
      Add('join raca R ON AN.id_raca=R.id');
      Add('join categorias c on an.id_categoria=c.id');
      Add('left join categorias cat on an.id_categoria_Atual=cat.id');
      Add('join currais cu on an.id_local=cu.id');
      Add('left join gta g on g.id=an.gta_id');
      Add('left join gta gs on gs.id=an.ID_GTA_SAIDA');
      Add('left join PRODUTORES prop ON prop.ID=an.ID_PRODUTOR');
      Add('LEFT JOIN PRODUTORES prt ON prt.ID=an.ID_PRODUTOR_ORIGEM');
      Add('LEFT JOIN PROPRIEDADES Pro ON pro.ID=prt.ID_PROPRIEDADE');
      Add('LEFT JOIN PRODUTORES prts ON prts.ID=an.ID_PRODUTOR_DESTINO_SAIDA');
      Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=an.ID_REBANHO');
      Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL CCA ON CCA.ID=an.ID_CONTRATO');
      Add('WHERE AN.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
      if cbxProprietario.ItemIndex>0 then
       Add('and PROP.ID='+vIdProprietario);
      Add('AND AN.STATUS<>-1)X)y)w)');
      Add('where 1=1');
      if cbxStatus.ItemIndex>0 then
       Add('AND STATUS='+IntToStr(cbxStatus.ItemIndex));

      if cbxRetiro.ItemIndex>0 then
       Add('and ID_RETIRO='+vIdRetiro);

      if edtLocalOrigem.Text.Length>0 then
       Add('and CURRAL='+edtLocalOrigem.Text.QuotedString);

      if cbxRebanhof.ItemIndex>0 then
       Add('AND REBANHO='+cbxRebanhof.Selected.Text.QuotedString);

      if cbxFRaca.ItemIndex>0 then
       Add('and RACA='+cbxFRaca.Selected.Text.QuotedString);

      if cbxFCategoria.ItemIndex>0 then
       Add('and CategoriaAtual='+cbxFCategoria.Selected.Text.QuotedString);

      if edtFNumGTA.Text.Length>0 then
        Add('and GTA='+edtFNumGTA.Text.QuotedString);

      if edtGtaSaida.Text.Length>0 then
        Add('and GTA_SAIDA='+edtGtaSaida.Text.QuotedString);

      if edtIdent1.Text.Length>0 then
        Add('and IDENT_1='+edtIdent1.Text.QuotedString);

      if edtIdent2.Text.Length>0 then
        Add('and IDENT_2='+edtIdent2.Text.QuotedString);

      if edtNumContrato.Text.Length>0 then
        Add('and NUMERO='+edtNumContrato.Text.QuotedString);

      if edtLoteSaida.Text.Length>0 then
        Add('and ID_LOTESAIDA='+edtLoteSaida.Text);

      if edtBaseCampoF.Text.Length>0 then
        Add('and ID_BASE_CAMPO='+edtBaseCampoF.Text);

      if chkPeriodoProc.IsChecked then
      begin
       if edtFDataEntDE.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       if edtFDataEntATE.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataEntATE.SetFocus;
         Exit;
       end;
      if edtFDataEntATE.Date<edtFDataEntDE.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_ENT as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date)));
      end;

      if chkPeriodoReproc.IsChecked then
      begin
       if edtDataDeReproc.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial Reprocessamento');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       if edtDataAteReproc.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final Reprocessamento');
         edtFDataEntATE.SetFocus;
         Exit;
       end;
      if edtDataAteReproc.Date<edtDataDeReproc.Date then
       begin
         ShowMessage('Data Reprocessamento final nao pode ser menor que inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_REPROCESSAMENTO as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtDataDeReproc.Date))+' and '+
       QuotedStr(FormatDateTime('mm/dd/yyyy',edtDataATEReproc.Date)));
      end;

      if chkPeriodoSaida.IsChecked then
      begin
       if edtFDataSaiDE.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataSaiDE.SetFocus;
         Exit;
       end;
       if edtFDataSaiATE.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
      if edtFDataSaiATE.Date<edtFDataSaiDe.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
       Add('and cast(DATA_SAIDA as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiATE.Date)));
      end;
      if cbxProdutorOrigem.ItemIndex>0 then
       Add('and PRODUTORORIGEM='+cbxProdutorOrigem.Selected.Text.QuotedString);

      if cbxProdutorDestino.ItemIndex>0 then
       Add('and PRODUTORDESTINOSAIDA='+cbxProdutorDestino.Selected.Text.QuotedString);
      if cbxFaixaIdade.ItemIndex>0 then
       Add('and FaixaIdade='+cbxFaixaIdade.Selected.Text.QuotedString);
      Add('GROUP BY  CURRAL,RACA,CATEGORIAATUAL');
    try
     Open;
     if not IsEmpty then
      ppRepResumoPrint.Print
     else
      MyShowMessage('Não existe dados para esse filtro!',false);
    except
     on E : Exception do
       begin
         ShowMessage('Exception message = '+E.Message);
       end;
    end;
  end;
end;

procedure TfrmPrincipal.ReCreateBrowser(URL: STRING);
begin
    vWebBrowser        := TWebBrowser.Create(LayDash);
    vWebBrowser.Name   := 'WebBrowser';
    vWebBrowser.Parent := LayDash; //set parent...can be panel, tabs etc
    vWebBrowser.Visible:= true;  //visible...by default true

    //don't set width/heigh/top/left before TWinControl(WebBrowser).Parent := Form1;
    vWebBrowser.Margins.Top    := 10;
    vWebBrowser.Margins.Left   := 10;
    vWebBrowser.Align          := TAlignLayout.Client;
    vWebBrowser.URL :=URL;
end;

procedure TfrmPrincipal.Rectangle15Click(Sender: TObject);
begin
 if vAlteraRaca=1 then
 begin
   if edtAlteraRaca.Text.Length=0 then
   begin
     MyShowMessage('Informe a Raça!',false);
     Exit;
   end;

   qryGrid.First;
   while not qryGrid.Eof do
   begin
     serviceDB.AlteraRacaAnimal(
      qryGridANIMAL_ID.AsString,
      serviceDB.vIdUserLogado,
      edtAlteraRaca.TagString);
     qryGrid.Next;
   end;
   MyShowMessage('Animais alterados com sucesso!!',false);
   btnLocalizarAnimaisClick(Sender);
   layPopUpCad.Visible := false;
 end
 else
 begin
   if edtAlteraCategoria.Text.Length=0 then
   begin
     MyShowMessage('Informe a Raça!',false);
     Exit;
   end;

   qryGrid.First;
   while not qryGrid.Eof do
   begin
     serviceDB.AlteraCategoriaAnimal(
      qryGridANIMAL_ID.AsString,
      serviceDB.vIdUserLogado,
      edtAlteraCategoria.TagString);
     qryGrid.Next;
   end;
   MyShowMessage('Animais alterados com sucesso!!',false);
   btnLocalizarAnimaisClick(Sender);
   layPopUpCad.Visible := false;

 end;
end;

procedure TfrmPrincipal.Rectangle48Click(Sender: TObject);
begin
 layPopUpCad.Visible := false;
 TabControl1.Visible := true;
end;

function TfrmPrincipal.RetornaSqlGrid: string;
var
 vSQL:string;
begin
  vSQL :=
      'SELECT W.* FROM'+
      '('+
      'SELECT y.*,'+
      '(SELECT FIRST 1 NOME FROM CATEGORIAS WHERE STATUS<>-1 AND SEXO=y.Sexo AND UPPER(FAIXA_ETARIA)=y.FaixaIdade) CategoriaAtual,'+
      'COALESCE(CASE'+
      'WHEN y.PESO_SAIDA>0 THEN y.PESO_SAIDA-y.Peso_Ent'+
      'END,0) GTP_SAIDA,'+
      'COALESCE(CASE'+
      'WHEN y.PESO_SAIDA>0 THEN ((y.PESO_SAIDA-y.Peso_Ent)/Y.DIAS)'+
      'END,0) GMD_SAIDA,'+
      '(y.CustoFixoAcumulado+y.CustoAlimentar)CustoTotal,'+
      '(y.CustoFixoAcumulado+y.CustoAlimentar+y.VALOR_COMPRA)CustoTotalMaisCompra,'+
      '(ConsumoTotal*100)/PesoAtual INGESTAO_PV'+
      'FROM'+
      '(SELECT X.*,'+
      '(X.PesoAtual-X.PESO_ENT)GTP,'+
      '((X.PesoAtual-X.PESO_ENT)/X.Dias)gmd,'+
      '(CustoFixoAcumulado/X.Dias)custofixoDia,'+
      '(CustoAlimentar/X.Dias)custoAlimDia,'+
      '(ConsumoTotalCab/X.Dias)ConsumoTotal,'+
      'case'+
      'when x.IdadeAtual <=12                      then  ''0 A 12'''+
      'when x.IdadeAtual >12 and x.IdadeAtual<=24  then ''13 A 24'''+
      'when x.IdadeAtual >24 and x.IdadeAtual<=36  then ''25 A 36'''+
      'when x.IdadeAtual >36                       then ''Mais 36'''+
      'end FaixaIdade'+
      'from'+
      '(select'+
      'an.id animal_id,'+
      'cu.codigo curral,'+
      'an.identificacao_1 ident_1,'+
      'an.identificacao_2 ident_2,'+
      'an.IDADE_MESES idade_entrada,'+
      'CAST(an.DATA_NASCIMENTO AS DATE) nascimento,'+
      'r.nome raca,'+
      'c.nome categoria,'+
      'an.data_proc data_ent,'+
      'an.peso_entrada peso_Ent,'+
      'COALESCE(cast(an.data_ultimo_peso as date),CAST(an.data_proc AS date)) dt_ultimo_peso,'+
      'COALESCE(an.ultimo_peso,an.peso_entrada)ultimo_peso,'+
      'g.numero gta,'+
      'datediff(DAY FROM an.data_proc to COALESCE(an.DATA_SAIDA,CURRENT_DATE))+1 dias,'+
      'datediff(MONTH FROM an.DATA_NASCIMENTO to COALESCE(an.DATA_SAIDA,CURRENT_DATE)) idadeAtual,'+
      'an.DATA_SAIDA,'+
      'an.PESO_SAIDA,'+
      '(SELECT * FROM RETORNA_PESO_MEDIO_ATUAL_IND(COALESCE(an.DATA_SAIDA,CURRENT_DATE),an.ID)) PesoAtual,'+
      '(SELECT * FROM RETORNA_CUSTO_FIXO_ANIMAL(an.ID)) CustoFixoAcumulado,'+
      'coalesce((select SUM(F.valor_forn) from animal_fornecimento f where f.status=1 and f.id_animal=AN.ID),0)CustoAlimentar,'+
      'coalesce((select SUM(F.KG_CAB) from animal_fornecimento f where f.status=1 and f.id_animal=AN.ID),0)ConsumoTotalCab,'+
      'gs.numero gta_Saida,'+
      'prt.NOME  ProdutorOrigem,'+
      'prts.NOME ProdutorDestinoSaida,'+
      'c.SEXO,'+
      'pro.NOME PropriedadeOrigem,'+
      'an.VALOR_COMPRA,'+
      'an.VALOR_VENDA'+
      'from animal AN'+
      'join raca R ON AN.id_raca=R.id'+
      'join categorias c on an.id_categoria=c.id'+
      'join currais cu on an.id_local=cu.id'+
      'left join gta g on g.id=an.gta_id'+
      'left join gta gs on gs.id=an.ID_GTA_SAIDA'+
      'LEFT JOIN PRODUTORES prt ON prt.ID=an.ID_PRODUTOR_ORIGEM'+
      'LEFT JOIN PROPRIEDADES Pro ON pro.ID=prt.ID_PROPRIEDADE'+
      'LEFT JOIN PRODUTORES prts ON prts.ID=an.ID_PRODUTOR_DESTINO_SAIDA';

      if cbxStatus.ItemIndex>0 then
       vSQL:=vSQL+'where AN.STATUS='+IntToStr(cbxStatus.ItemIndex)+')X)y)w'
      else
       vSQL:=vSQL+'where AN.STATUS<>-1)X)y)w';
      vSQL:=vSQL+'where 1=1';
      if edtLocalOrigem.Text.Length>0 then
       vSQL:=vSQL+'and CURRAL='+edtLocalOrigem.Text.QuotedString;
      if cbxFRaca.ItemIndex>0 then
       vSQL:=vSQL+'and RACA:='+cbxFRaca.Selected.Text.QuotedString;
      if cbxFCategoria.ItemIndex>0 then
       vSQL:=vSQL+'and CategoriaAtual='+cbxFCategoria.Selected.Text.QuotedString;
      if edtFNumGTA.Text.Length>0 then
        vSQL:=vSQL+'and GTA='+edtFNumGTA.Text.QuotedString;
      if edtGtaSaida.Text.Length>0 then
        vSQL:=vSQL+'and GTA_SAIDA='+edtGtaSaida.Text.QuotedString;
      if edtIdent1.Text.Length>0 then
        vSQL:=vSQL+'and IDENT_1='+edtIdent1.Text.QuotedString;
      if edtIdent2.Text.Length>0 then
        vSQL:=vSQL+'and IDENT_2='+edtIdent2.Text.QuotedString;
      if chkPeriodoProc.IsChecked then
      begin
       if edtFDataEntDE.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       if edtFDataEntATE.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataEntATE.SetFocus;
         Exit;
       end;
       if edtFDataEntATE.Date<edtFDataEntDE.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataEntDE.SetFocus;
         Exit;
       end;
       vSQL:=vSQL+'and cast(DATA_ENT as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date));
      end;
      if chkPeriodoSaida.IsChecked then
      begin
       if edtFDataSaiDE.Text.Length=0 then
       begin
         ShowMessage('Informe a data inicial');
         edtFDataSaiDE.SetFocus;
         Exit;
       end;
       if edtFDataSaiATE.Text.Length=0 then
       begin
         ShowMessage('Informe a data Final');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
      if edtFDataSaiATE.Date<edtFDataSaiDe.Date then
       begin
         ShowMessage('Data final nao pode ser menor que inicial');
         edtFDataSaiATE.SetFocus;
         Exit;
       end;
       vSQL:=vSQL+'and cast(DATA_SAIDA as date) between '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiATE.Date));
      end;
      if cbxProdutorOrigem.ItemIndex>0 then
       vSQL:=vSQL+'and PRODUTORORIGEM='+cbxProdutorOrigem.Selected.Text.QuotedString;
      if cbxProdutorDestino.ItemIndex>0 then
       vSQL:=vSQL+'and PRODUTORDESTINOSAIDA='+cbxProdutorDestino.Selected.Text.QuotedString;
      if cbxFaixaIdade.ItemIndex>0 then
       vSQL:=vSQL+'and FaixaIdade='+cbxFaixaIdade.Selected.Text.QuotedString;
end;

procedure TfrmPrincipal.SearchEditButton12Click(Sender: TObject);
var
 Txt         : TextFile;
 Quebra      : TStringList;
 Arq,Identificacao1,Identificacao2,Data,PESO: String;
 vData:TDateTime;
 I,Contador,Irregular:integer;
 vQryAux:TFDQuery;
begin
 if (cbxPesquisarPor.ItemIndex=-1) then
 begin
   MyShowMessage('Informe uma identificação!!',false);
   Exit;
 end;
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
   end;
   while not Eoln(txt) do
   begin
    Quebra.Clear;
    Readln(txt,Arq);
    ExtractStrings([';'],[],pchar(Arq),Quebra);
      if i>0 then
      begin
         Identificacao1 := Quebra.Strings[0];
         Identificacao2 := Quebra.Strings[1];

         if (Identificacao1.Length>0) then
         begin
           with vQryAux,vQryAux.SQL do
           begin
             Clear;
             Add('INSERT INTO TMP_ANIMAL(');
             Add('IDENTIFICACAO_1,');
             Add('IDENTIFICACAO_2');
             Add(')VALUES(');
             Add(':CHIP,');
             Add(':SISBOV');
             Add(')');
             ParamByName('CHIP').AsString      := Identificacao1;
             ParamByName('SISBOV').AsString    := Identificacao2;
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
 end;
 serviceDB.AbreTMPAnimal('');
end;

function TfrmPrincipal.SerialNum(FDrive: String): String;
var
  Serial:DWord;
  DirLen,Flags: DWord;
  DLabel : Array[0..11] of Char;
begin
 Try
  GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
  Result := IntToHex(Serial,8);
 Except
  Result :='';
 end;
end;

procedure TfrmPrincipal.SomarColunasGridForn;
begin
 if qryGrid.RecordCount>0 then
 begin
  lblTotalAnimais.Text :='Total Animais: '+intToStr(qryGrid.RecordCount);
  with qryGrid.Aggregates.Add do
  begin
    Name := 'PESO_ENT';
    Expression := 'AVG(PESO_ENT)';
    Active := True;
  end;
  qryGrid.AggregatesActive := True;
  lblMediaPesoEnt.Text :='Média Peso Entrada: '+FormatFloat('####,##0.00',qryGrid.Aggregates[0].Value);

  with qryGrid.Aggregates.Add do
  begin
    Name := 'PESO_ESTIMADO';
    Expression := 'AVG(PESO_ESTIMADO)';
    Active := True;
  end;
  qryGrid.AggregatesActive := True;
  lblMediaPesoProj.Text :='Média Peso Proj.: '+FormatFloat('####,##0.00',qryGrid.Aggregates[1].Value);

  with qryGrid.Aggregates.Add do
  begin
    Name := 'ULTIMO_PESO';
    Expression := 'AVG(ULTIMO_PESO)';
    Active := True;
  end;
  qryGrid.AggregatesActive := True;
  lblMediaPesoUltimo.Text :='Média Último Peso: '+FormatFloat('####,##0.00',qryGrid.Aggregates[2].Value);

  with qryGrid.Aggregates.Add do
  begin
    Name := 'DIAS';
    Expression := 'AVG(DIAS)';
    Active := True;
  end;
  qryGrid.AggregatesActive := True;
  lblDiasMedio.Text :='Dias Média: '+FormatFloat('####,##0.00',qryGrid.Aggregates[3].Value);

  with qryGrid.Aggregates.Add do
  begin
    Name := 'IDADEATUAL';
    Expression := 'AVG(IDADEATUAL)';
    Active := True;
  end;
  qryGrid.AggregatesActive := True;
  lblIdadeMedia.Text :='Média Idade: '+FormatFloat('####',qryGrid.Aggregates[4].Value);
  qryGrid.Aggregates.Clear;
 end
 else
 begin
   lblTotalAnimais.Text    :='Total Animais: 0';
   lblMediaPesoEnt.Text    :='Média Peso Entrada: 0';
   lblMediaPesoProj.Text   :='Média Peso Proj.: 0';
   lblMediaPesoUltimo.Text :='Média Último Peso: 0';
   lblDiasMedio.Text       :='Dias Média: 0';
   lblIdadeMedia.Text      :='Média Idade: 0';
 end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if cbxProp2.ItemIndex=-1 then
  begin
    MyShowMessage('Selecione uma propriedade!!',false);
    Exit;
  end;
  Treemnu.Enabled       := true;
  layAlteraProp.Visible := false;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
var
 vVersao:string;
begin
  iTimer := iTimer+1;
  if(vPositionX=trunc(ImgApr.Position.X)) then
  begin
     ImgApr.AnimateFloat('Position.X',ImgApr.Width*2,1.2
      ,TAnimationType.InOut,TInterpolationType.Back);
     ImgApr.AnimateFloat('Position.Y',1,0.5,TAnimationType.InOut,TInterpolationType.Back);
  end
  else
  begin
     ImgApr.AnimateFloat('Position.X',vPositionX,1.2
      ,TAnimationType.InOut,TInterpolationType.Back);
     ImgApr.AnimateFloat('Position.Y',vPositionY,0.5,TAnimationType.InOut,TInterpolationType.Back);
  end;
  if iTimer=5 then
  begin
   Timer1.Enabled := false;
   btnGerarCustoFixo.Visible := false;
   edtLogin.Text := serviceDB.RetornaUltimoAcesso;
   MudarAba(tbiLogin,sender);
  end;
end;

procedure TfrmPrincipal.TimerAguardeTimer(Sender: TObject);
begin
  if(vPositionX=trunc(layImgAguarde.Position.X)) then
  begin
     layImgAguarde.AnimateFloat('Position.X',-500,1.2
      ,TAnimationType.InOut,TInterpolationType.Back);
     layImgAguarde.AnimateFloat('Position.Y',1,0.5,TAnimationType.InOut,TInterpolationType.Back);
     Exit;
  end;
  if(layImgAguarde.Position.X=-500) THEN
  begin
   layImgAguarde.AnimateFloat('Position.X',vPositionX+500,1.2
   ,TAnimationType.InOut,TInterpolationType.Back);
   layImgAguarde.AnimateFloat('Position.Y',vPositionY,0.5,TAnimationType.InOut,TInterpolationType.Back);
   Exit;
  end;
  if trunc(layImgAguarde.Position.X)=500 THEN
  begin
   layImgAguarde.AnimateFloat('Position.X',vPositionX,1.2
   ,TAnimationType.InOut,TInterpolationType.Back);
   layImgAguarde.AnimateFloat('Position.Y',vPositionY,0.5,TAnimationType.InOut,TInterpolationType.Back);
   Exit;
  end
end;



procedure TfrmPrincipal.TreeAlteraPropriedadeClick(Sender: TObject);
begin
 layAlteraProp.Visible         := true;
 TreeMovimentacoes.IsExpanded  := false;
 TreeAnimais.IsExpanded        := false;
 TreeReports.IsExpanded        := false;
 TreeSuplementos.IsExpanded    := false;
 TreeRastreabilidade.IsExpanded:= false;
 Treemnu.Enabled               := false;
 layDashB.Visible              := false;
 TreeAuxiliares.IsExpanded     := false;
end;

procedure TfrmPrincipal.TreeAnimaisClick(Sender: TObject);
begin
   TreeMeteorologia.IsExpanded   :=false;
   TreeRastreabilidade.IsExpanded:=false;
   TreeMovimentacoes.IsExpanded  :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeReports.IsExpanded        :=false;
   TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
   TreeViewISanidade.IsExpanded  :=false;
   TreeAuxiliares.IsExpanded     :=false;

   if TreeAnimais.IsExpanded then
     TreeAnimais.IsExpanded:=false
   else
    TreeAnimais.IsExpanded := true;

end;

procedure TfrmPrincipal.TreeAtualizaGMDClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
 vConfirma:integer;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja realmente atualizar o GMD de todos animais, esse operação pode ser demorada?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    vConfirma := dlg.vBntConfirmaMsg
  end);
  if vConfirma=1 then
  begin
   Animacao.Start;
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
     laymnu.Enabled          := false;
     layAtualizaGeral.Visible:= true;
     LayPieCategoria.Visible := false;
    end);
    if vIdMineralPadrao.Length>0 then
     serviceDB.AtualizaPlaUsoMineralGeral(vIDPropriedadePropria);
    serviceDB.AtualizaAnimaisFazenda;
    TThread.Synchronize(nil, procedure
    begin
      layAtualizaGeral.Visible:= false;
      LayPieCategoria.Visible := true;
      Animacao.Stop;
      laymnu.Enabled          := true;
    end);
   end).Start;
  end;
end;

procedure TfrmPrincipal.TreeAuxiliaresClick(Sender: TObject);
begin
 if TreeAuxiliares.IsExpanded=true then
    TreeAuxiliares.IsExpanded:=false
 else
    TreeAuxiliares.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeAuxMotivoMovClick(Sender: TObject);
begin
  frmCadAuxMov := TfrmCadAuxMov.Create(Self);
  try
    frmCadAuxMov.ShowModal;
  finally
    frmCadAuxMov.Release;
  end;
end;

procedure TfrmPrincipal.TreeBaseCampoClick(Sender: TObject);
begin
 frmBaseCampo  := TfrmBaseCampo.Create(Self);
 try
    frmBaseCampo.ShowModal;
 finally
    frmBaseCampo.Release;
 end;
end;

procedure TfrmPrincipal.TreeBebedouroClick(Sender: TObject);
begin
 frmBebedouro  := TfrmBebedouro.Create(Self);
 try
    frmBebedouro.ShowModal;
 finally
    frmBebedouro.Release;
 end;
end;

procedure TfrmPrincipal.FileCopy(const sourcefilename, targetfilename,fileName: String);
var
  ShFileOpStruct : TShFileOpStruct;
  ZipFile: TZipFile;
  vRename,vRename2:string;
begin
 ZipFile := TZipFile.Create;

 if FileExists(targetfilename+'bkp_'+FormatDateTime('ddmmyyyyhhmm',now)) then
   DeleteFile(pwideChar(targetfilename+'bkp_'+FormatDateTime('ddmmyyyyhhmm',date)));

 if not FileExists(targetfilename+'bkp_'+FormatDateTime('ddmmyyyyhhmm',now)) then
 begin
  FillChar(ShFileOpStruct,Sizeof(TShFileOpStruct),0);
  with ShFileOpStruct do begin
    wFunc := FO_COPY; {Parametro de c�pia do arquivo ou pasta}
    pFrom := PChar(sourcefilename +#0); {diret�rio origem}
    pTo := PChar(targetfilename + #0); {diret�rio  destino}
    fFlags := FOF_ALLOWUNDO or FOF_SIMPLEPROGRESS or FOF_NOCONFIRMATION;
  end;
  try
  ShFileOperation(ShFileOpStruct);
  RenameFile(targetfilename+'\'+fileName,
   targetfilename+'bkp_'+FormatDateTime('ddmmyyyyhhmm',now));
  vRename := targetfilename+'bkp_'+FormatDateTime('ddmmyyyyhhmm',now)+'.zip';
  vRename2:= targetfilename+'bkp_'+FormatDateTime('ddmmyyyyhhmm',now);
  ZipFile.Open(vRename, zmWrite);
  ZipFile.Add(targetfilename+'bkp_'+FormatDateTime('ddmmyyyyhhmm',now));
  ZipFile.Free;
  DeleteFile(pwideChar(vRename2));
  except
    on E : Exception do
      ShowMessage(' Houve um erro na cópia das imagens: ' + E.Message);
  end;
 end;
end;


procedure TfrmPrincipal.TreebkpDBClick(Sender: TObject);
var
 vPathBKP,vPathBkpNow:string;
begin
  try
   vPathBKP := ExtractFilePath(ParamStr(0))+'bkpDB\';
   if not DirectoryExists(vPathBKP) then
     CreateDir(vPathBKP);
   vPathBkpNow:= vPathBKP+'Field_bkp_'+FormatDateTime('ddmm_yyyy_hh_mm',now);
   if not FileExists(vPathBkpNow) then
    FileCopy(serviceDB.vDataBase,vPathBkp,serviceDB.vNomeBase);
    MyShowMessage('Backup criado com sucesso!',false);
  except
    on E : Exception do
     begin
       ShowMessage('Exception message = '+E.Message);
     end;
  end;
end;

procedure TfrmPrincipal.TreeBNDClick(Sender: TObject);
begin
  serviceDB.BND.Close;
  serviceDB.BND.Open;
  serviceDB.qryProdutorProprio.Close;
  serviceDB.qryProdutorProprio.Open;
  frmCadBND := TfrmCadBND.Create(Self);
  try
    frmCadBND.ShowModal;
  finally
    frmCadBND.Release;
  end;
end;

procedure TfrmPrincipal.TreeCategoriasClick(Sender: TObject);
begin
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  frmCadCategoria := TfrmCadCategoria.Create(Self);
   try
     frmCadCategoria.ShowModal;
   finally
     frmCadCategoria.Release;
   end;
end;

procedure TfrmPrincipal.TreeCentroCustoClick(Sender: TObject);
begin
 frmAuxCentroCusto := TfrmAuxCentroCusto.Create(Self);
  try
    frmAuxCentroCusto.ShowModal;
  finally
    frmAuxCentroCusto.Release;
  end;
end;

procedure TfrmPrincipal.TreeCertificadoraClick(Sender: TObject);
begin
  serviceDB.TableRCertificadora.Close;
  serviceDB.TableRCertificadora.Open;
  frmCadCertificadora := TfrmCadCertificadora.Create(Self);
  try
    frmCadCertificadora.ShowModal;
  finally
    frmCadCertificadora.Release;
  end;
end;

procedure TfrmPrincipal.TreeCompradorClick(Sender: TObject);
begin
  serviceDB.TableRCertificadora.Close;
  serviceDB.TableRCertificadora.Open;
  frmCadCompradorGado := TfrmCadCompradorGado.Create(Self);
  try
    frmCadCompradorGado.ShowModal;
  finally
    frmCadCompradorGado.Release;
  end;
end;

procedure TfrmPrincipal.TreeComReidentClick(Sender: TObject);
begin
  frmCadComunicadoReident := TfrmCadComunicadoReident.Create(Self);
  try
    frmCadComunicadoReident.ShowModal;
  finally
    frmCadComunicadoReident.Release;
  end;
end;

procedure TfrmPrincipal.TreeComunicadosClick(Sender: TObject);
begin
 if TreeComunicados.IsExpanded then
  TreeComunicados.IsExpanded := false
 else
  TreeComunicados.IsExpanded := true;
end;

procedure TfrmPrincipal.TreeCurraisClick(Sender: TObject);
begin
   vTipoCurral :='1';
   serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'');
   frmCadCurral := TfrmCadCurral.Create(Self);
   try
     frmCadCurral.ShowModal;
   finally
     frmCadCurral.Release;
   end;
end;

procedure TfrmPrincipal.TreeCurralConfClick(Sender: TObject);
begin
   vMov :=0;
   vTipoCurral :='1';
   serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'1');
   frmCadCurralConf := TfrmCadCurralConf.Create(Self);
   try
      frmCadCurralConf.ShowModal;
   finally
      frmCadCurralConf.Release;
   end;
end;

procedure TfrmPrincipal.TreeCustoFixoClick(Sender: TObject);
begin
 frmCustoFixo  := TfrmCustoFixo.Create(Self);
 try
    frmCustoFixo.ShowModal;
 finally
    frmCustoFixo.Release;
 end;
end;

procedure TfrmPrincipal.TreeDashEstoqueClick(Sender: TObject);
begin
 frmDashBoard := TfrmDashBoard.Create(Self);
  try
    frmDashBoard.ShowModal;
  finally
    frmDashBoard.Release;
  end;
end;

procedure TfrmPrincipal.TreeDiariasOcupacaoClick(Sender: TObject);
begin
  frmDiariasOcupacao := TfrmDiariasOcupacao.Create(Self);
  try
    frmDiariasOcupacao.ShowModal;
  finally
    frmDiariasOcupacao.Release;
  end;
end;

procedure TfrmPrincipal.TreeMapaGadoClick(Sender: TObject);
begin
 SerRel.AbreMapaGado(serviceDB.vIdPropriedade);
end;

procedure TfrmPrincipal.TreeMedicoVetClick(Sender: TObject);
begin
 frmCadVeterinario := TfrmCadVeterinario.Create(Self);
  try
    frmCadVeterinario.ShowModal;
  finally
    frmCadVeterinario.Release;
  end;
end;

procedure TfrmPrincipal.TreeMeteorologiaClick(Sender: TObject);
begin
 if TreeMeteorologia.IsExpanded then
   TreeMeteorologia.IsExpanded :=false
 else
  TreeMeteorologia.IsExpanded  := true;
end;

procedure TfrmPrincipal.TreeMorteClick(Sender: TObject);
begin
  frmMorte := TfrmMorte.Create(Self);
  try
    frmMorte.ShowModal;
  finally
    frmMorte.Release;
  end;
end;

procedure TfrmPrincipal.TreeMotivoAplicacaoClick(Sender: TObject);
begin
  frmAuxMotivoAplicacao := TfrmAuxMotivoAplicacao.Create(Self);
  try
    frmAuxMotivoAplicacao.ShowModal;
  finally
    frmAuxMotivoAplicacao.Release;
  end;
end;

procedure TfrmPrincipal.TreeMovimentacoesClick(Sender: TObject);
begin
   TreeMeteorologia.IsExpanded   :=false;
   TreeRastreabilidade.IsExpanded:=false;
   TreeAnimais.IsExpanded        :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeReports.IsExpanded        :=false;
   TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
   TreeViewISanidade.IsExpanded  :=false;
   TreeAuxiliares.IsExpanded     :=false;

   if TreeMovimentacoes.IsExpanded=true then
     TreeMovimentacoes.IsExpanded:=false
    else
     TreeMovimentacoes.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeMovPesoClick(Sender: TObject);
begin
  frmMovimentacaoGrupo := TfrmMovimentacaoGrupo.Create(Self);
  try
    frmMovimentacaoGrupo.ShowModal;
  finally
    frmMovimentacaoGrupo.Release;
  end;
end;

procedure TfrmPrincipal.TreeNascimentoClick(Sender: TObject);
begin
  frmNascimento := TfrmNascimento.Create(Self);
  try
    frmNascimento.ShowModal;
  finally
    frmNascimento.Release;
  end;
end;

procedure TfrmPrincipal.TreeNotasdeCochoClick(Sender: TObject);
begin
  frmCadAuxNotaCocho := TfrmCadAuxNotaCocho.Create(Self);
  try
    frmCadAuxNotaCocho.ShowModal;
  finally
    frmCadAuxNotaCocho.Release;
  end;
end;

procedure TfrmPrincipal.TreePastoClick(Sender: TObject);
begin
   vcadConf                      :=0;
   TreeMeteorologia.IsExpanded   :=false;
   TreeRastreabilidade.IsExpanded:=false;
   TreeAnimais.IsExpanded        :=false;
   TreeMovimentacoes.IsExpanded  :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeReports.IsExpanded        :=false;
   TreeViewISanidade.IsExpanded  :=false;
   TreeAuxiliares.IsExpanded     := false;
   TreeEstoque.IsExpanded        := false;
   TreeConfinamento.IsExpanded   :=false;
   if TreePasto.IsExpanded=true then
      TreePasto.IsExpanded:=false
   else
      TreePasto.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreePlanejamentoClick(Sender: TObject);
begin
  frmPlanNutriConfi := TfrmPlanNutriConfi.Create(Self);
  try
    frmPlanNutriConfi.ShowModal;
  finally
    frmPlanNutriConfi.Release;
  end;
end;

procedure TfrmPrincipal.TreePlanTratosClick(Sender: TObject);
begin
  frmCadPlanTratosPadrao := TfrmCadPlanTratosPadrao.Create(Self);
  try
    frmCadPlanTratosPadrao.ShowModal;
  finally
    frmCadPlanTratosPadrao.Release;
  end;
end;

procedure TfrmPrincipal.TreePluviometriaClick(Sender: TObject);
begin
  frmPluviometria := TfrmPluviometria.Create(Self);
  try
    frmPluviometria.ShowModal;
  finally
    frmPluviometria.Release;
  end;
end;

procedure TfrmPrincipal.TreePluviometroClick(Sender: TObject);
begin
  frmPluviometro := TfrmPluviometro.Create(Self);
  try
    frmPluviometro.ShowModal;
  finally
    frmPluviometro.Release;
  end;
end;

procedure TfrmPrincipal.TreePreMisturaClick(Sender: TObject);
begin
 vCadConf :=1;
 try
   frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(Self);
   frmCadSuplementoMineral.ShowModal;
 finally
   frmCadSuplementoMineral.Release;
 end;
end;

procedure TfrmPrincipal.TreeProdutorPropriedadeOrigemClick(Sender: TObject);
begin
   vPropriedadePropria :='0';
   serviceDB.AbreQryPropriedades('0');
   frmCadPropriedades := TfrmCadPropriedades.Create(Self);
   try
     frmCadPropriedades.ShowModal;
   finally
     frmCadPropriedades.Release;
   end;
end;

procedure TfrmPrincipal.TreePropProdClick(Sender: TObject);
begin
   vPropriedadePropria :='1';
   serviceDB.AbreQryPropriedades('1');
   frmCadPropriedades := TfrmCadPropriedades.Create(Self);
   try
     frmCadPropriedades.ShowModal;
   finally
     frmCadPropriedades.Release;
   end;
end;

procedure TfrmPrincipal.TreeRacaoConfClick(Sender: TObject);
begin
  frmCadRacao := TfrmCadRacao.Create(Self);
  try
    frmCadRacao.ShowModal;
  finally
    frmCadRacao.Release;
  end;
end;

procedure TfrmPrincipal.TreeRacasClick(Sender: TObject);
begin
  serviceDB.TableRacas.Active := false;
  serviceDB.TableRacas.Active := true;

  frmCadRacas := TfrmCadRacas.Create(Self);
   try
     frmCadRacas.ShowModal;
   finally
     frmCadRacas.Release;
   end;
end;

procedure TfrmPrincipal.TreeRastreabilidadeClick(Sender: TObject);
begin
   TreeMeteorologia.IsExpanded  :=false;
   TreeAnimais.IsExpanded       :=false;
   TreeMovimentacoes.IsExpanded :=false;
   TreeSuplementos.IsExpanded   :=false;
   TreeReports.IsExpanded       :=false;
   TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
   TreeViewISanidade.IsExpanded :=false;
   TreeAuxiliares.IsExpanded    :=false;
   if TreeRastreabilidade.IsExpanded=true then
      TreeRastreabilidade.IsExpanded:=false
   else
      TreeRastreabilidade.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeRateioCustoClick(Sender: TObject);
begin
  frmReteioOutrosCustos := TfrmReteioOutrosCustos.Create(Self);
  try
    frmReteioOutrosCustos.ShowModal;
  finally
    frmReteioOutrosCustos.Release;
  end;
end;

procedure TfrmPrincipal.TreeRebanhoClick(Sender: TObject);
begin
  frmCadRebanho := TfrmCadRebanho.Create(Self);
  try
    frmCadRebanho.ShowModal;
  finally
    frmCadRebanho.Release;
  end;
end;

procedure TfrmPrincipal.TreeRelAnimaisRebanhoClick(Sender: TObject);
begin
 SerRel.AbreRelAnimaisAtivosRebanho;
 if SerRel.qryRelRebanhoAtivos.IsEmpty then
 begin
   MyShowMessage('Sem dados para gerar o relatorio!!',false);
   Exit;
 end
 else
  SerRel.ppRepRebanhoAtivo.Print;
end;

procedure TfrmPrincipal.TreeRelEntradasClick(Sender: TObject);
begin
  frmFiltrosRel := TfrmFiltrosRel.Create(Self);
  frmFiltrosRel.TabControl1.ActiveTab := frmFiltrosRel.tbiRelEntradaAni;
  try
    frmFiltrosRel.ShowModal;
  finally
    frmFiltrosRel.Release;
  end;
end;

procedure TfrmPrincipal.TreeRelForClick(Sender: TObject);
begin
  vTipoRel      := 'FORN';
  frmFiltrosRel := TfrmFiltrosRel.Create(Self);
  frmFiltrosRel.TabControl1.ActiveTab := frmFiltrosRel.tbiFRelForn;
  try
    frmFiltrosRel.ShowModal;
  finally
    frmFiltrosRel.Release;
  end;
end;

procedure TfrmPrincipal.TreeRelGenLotesAtivosClick(Sender: TObject);
var
  dlg :TFrmmsgDlgRel;
  Task,Task1,Task2: ITask;
begin
 if TreeViewItem22.IsExpanded then
    TreeViewItem22.IsExpanded:=false
  else
    TreeViewItem22.IsExpanded := true;
end;

procedure TfrmPrincipal.TreeRelHistObsClick(Sender: TObject);
begin
  frmRelHistObsManejo := TfrmRelHistObsManejo.Create(Self);
  try
    frmRelHistObsManejo.ShowModal;
  finally
    frmRelHistObsManejo.Release;
  end;
end;

procedure TfrmPrincipal.TreeRelSaidaClick(Sender: TObject);
begin
  frmRelSaida := TfrmRelSaida.Create(Self);
  try
    frmRelSaida.ShowModal;
  finally
    frmRelSaida.Release;
  end;
end;

procedure TfrmPrincipal.TreeReportsClick(Sender: TObject);
begin
   TreeMeteorologia.IsExpanded   :=false;
   TreeRastreabilidade.IsExpanded:=false;
   TreeAnimais.IsExpanded        :=false;
   TreeMovimentacoes.IsExpanded  :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
   TreeAuxiliares.IsExpanded     :=false;

   if TreeReports.IsExpanded=true then
      TreeReports.IsExpanded:=false
   else
      TreeReports.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeReportsDashClick(Sender: TObject);
begin
 TreeRastreabilidade.IsExpanded:=false;
 TreeAnimais.IsExpanded        :=false;
 TreeMovimentacoes.IsExpanded  :=false;
 TreeSuplementos.IsExpanded    :=false;
 TreeReports.IsExpanded        :=false;
 TreeEstoque.IsExpanded        :=false;
 TreePasto.IsExpanded          :=false;
 TreeConfinamento.IsExpanded   :=false;
 TreeViewISanidade.IsExpanded  :=false;
 TreeAuxiliares.IsExpanded     :=false;
 MudarAba(tbiDashBoard,sender);
end;

procedure TfrmPrincipal.TreeResponsavelRastreClick(Sender: TObject);
begin
  frmCadRespRastreabilidade := TfrmCadRespRastreabilidade.Create(Self);
  try
    frmCadRespRastreabilidade.ShowModal;
  finally
    frmCadRespRastreabilidade.Release;
  end;
end;

procedure TfrmPrincipal.TreeRetiradaChipClick(Sender: TObject);
begin
 try
   frmRetiradaChip := TfrmRetiradaChip.Create(Self);
   frmRetiradaChip.ShowModal;
 finally
   frmRetiradaChip.Release;
 end;
end;

procedure TfrmPrincipal.TreeRetirosClick(Sender: TObject);
begin
   serviceDB.AbrirRetirosPropriedade;
   frmCadRetiro := TfrmCadRetiro.Create(Self);
   try
     frmCadRetiro.ShowModal;
   finally
     frmCadRetiro.Release;
   end;
end;

procedure TfrmPrincipal.TreeSaidasClick(Sender: TObject);
begin
  serviceDb.AbreQryLoteSaida('','',
  FormatDateTime('mm/dd/yyyy',Date),
  FormatDateTime('mm/dd/yyyy',Date-7));
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  frmSaidaGrupo := TfrmSaidaGrupo.Create(Self);
  try
    frmSaidaGrupo.ShowModal;
  finally
    frmSaidaGrupo.Release;
  end;
end;

procedure TfrmPrincipal.TreeScoreClick(Sender: TObject);
begin
 frmScorePasto  := TfrmScorePasto.Create(Self);
 try
    frmScorePasto.ShowModal;
 finally
    frmScorePasto.Release;
 end;
end;

procedure TfrmPrincipal.TreeSuplementosClick(Sender: TObject);
begin
  vCadConf :=0;
  if TreeSuplementos.IsExpanded then
    TreeSuplementos.IsExpanded:=false
  else
    TreeSuplementos.IsExpanded := true;
end;

procedure TfrmPrincipal.TreeUsersClick(Sender: TObject);
begin
   TreeRastreabilidade.IsExpanded:=false;
   TreeAnimais.IsExpanded        :=false;
   TreeMovimentacoes.IsExpanded  :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeReports.IsExpanded        :=false;
   TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
   TreeViewISanidade.IsExpanded  :=false;
   TreeAuxiliares.IsExpanded     := false;
   serviceDB.AbreQryUsuario(ServiceDB.vIdPropriedade);
   frmCadUsers := TfrmCadUsers.Create(Self);
   try
     frmCadUsers.ShowModal;
   finally
     frmCadUsers.Release;
   end;
end;

procedure TfrmPrincipal.TreeViewComSaidaClick(Sender: TObject);
begin
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  frmSaidaGrupo := TfrmSaidaGrupo.Create(Self);
  try
    frmSaidaGrupo.ShowModal;
  finally
    frmSaidaGrupo.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewGTAClick(Sender: TObject);
begin
 frmCadGTA := TfrmCadGTA.Create(self);
 try
  frmCadGTA.ShowModal;
 finally
  frmCadGTA.Release;
 end;
end;

procedure TfrmPrincipal.TreeViewImportacaoClick(Sender: TObject);
begin
 TreeComunicados.IsExpanded    := false;
 if TreeViewImportacao.IsExpanded then
  TreeViewImportacao.IsExpanded := false
 else
  TreeViewImportacao.IsExpanded := true;
end;

procedure TfrmPrincipal.TreeViewImportDataLiebracaoClick(Sender: TObject);
begin
  frmImportaDataLiberacao := TfrmImportaDataLiberacao.Create(Self);
  try
    frmImportaDataLiberacao.ShowModal;
  finally
    frmImportaDataLiberacao.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewISanidadeClick(Sender: TObject);
begin
   TreeMeteorologia.IsExpanded   :=false;
   TreeRastreabilidade.IsExpanded:=false;
   TreeAnimais.IsExpanded        :=false;
   TreeMovimentacoes.IsExpanded  :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeReports.IsExpanded        :=false;
   TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
   TreeAuxiliares.IsExpanded     :=false;

   if TreeViewISanidade.IsExpanded=true then
      TreeViewISanidade.IsExpanded:=false
   else
      TreeViewISanidade.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeViewItem10Click(Sender: TObject);
begin
  serviceDB.TableFarmacos.Close;
  serviceDB.TableFarmacos.Open;
  frmCadFarmaco := TfrmCadFarmaco.Create(Self);
  try
    frmCadFarmaco.ShowModal;
  finally
    frmCadFarmaco.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem11Click(Sender: TObject);
begin
  frmEstoqueFarmaco := TfrmEstoqueFarmaco.Create(Self);
  try
    frmEstoqueFarmaco.ShowModal;
  finally
    frmEstoqueFarmaco.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem12Click(Sender: TObject);
begin
   frmTTA := TfrmTTA.Create(Self);
  try
    frmTTA.ShowModal;
  finally
    frmTTA.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem13Click(Sender: TObject);
begin
  if serviceDB.vPainelAnimais.Length=0 then
  begin
    MyShowMessage('Informe o link  do painel no arquivo .ini',false);
  end
  else
  begin
    if vWebBrowser<>nil  then vWebBrowser.Release;
    TThread.CreateAnonymousThread(procedure()
    begin
     TThread.Synchronize(TThread.CurrentThread,
     procedure ()
     begin
       ReCreateBrowser(serviceDB.vPainelAnimais);
     end);
    end).Start;
  end;
end;

procedure TfrmPrincipal.TreeViewItem14Click(Sender: TObject);
begin
  SerRel.RelEstoquePrev.Close;
  SerRel.RelEstoquePrev.Open;
  SerRel.RepRelEstoquePrev.Print;
end;

procedure TfrmPrincipal.TreeViewItem15Click(Sender: TObject);
begin
  frmHistMovimentacao := TfrmHistMovimentacao.Create(Self);
  try
    frmHistMovimentacao.ShowModal;
  finally
    frmHistMovimentacao.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem16Click(Sender: TObject);
begin
  frmGraficoConsumo := TfrmGraficoConsumo.Create(Self);
  try
    frmGraficoConsumo.ShowModal;
  finally
    frmGraficoConsumo.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem17Click(Sender: TObject);
begin
  if serviceDB.vPainelEstoque.Length=0 then
  begin
    MyShowMessage('Informe o link  do painel no arquivo .ini',false);
  end
  else
  begin
    if vWebBrowser<>nil  then vWebBrowser.Release;
    TThread.CreateAnonymousThread(procedure()
    begin
     TThread.Synchronize(TThread.CurrentThread,
     procedure ()
     begin
       ReCreateBrowser(serviceDB.vPainelEstoque);
     end);
    end).Start;
  end;
end;

procedure TfrmPrincipal.TreeViewItem18Click(Sender: TObject);
begin
 if TreeViewItem18.IsExpanded then
  TreeViewItem18.IsExpanded:=false
 else
  TreeViewItem18.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeViewItem1Click(Sender: TObject);
begin
   try
    frmCadPlanNutri := TfrmCadPlanNutri.Create(Self);
    frmCadPlanNutri.ShowModal;
  finally
    frmCadPlanNutri.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem20Click(Sender: TObject);
begin
  frmDashLotes := tfrmDashLotes.Create(Self);
  try
    frmDashLotes.ShowModal;
  finally
    frmDashLotes.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem21Click(Sender: TObject);
begin
 if TreeViewItem21.IsExpanded=true then
  TreeViewItem21.IsExpanded:=false
 else
  TreeViewItem21.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeViewItem23Click(Sender: TObject);
begin
  if TreeViewItem23.IsExpanded then
    TreeViewItem23.IsExpanded:=false
  else
    TreeViewItem23.IsExpanded := true;
end;

function TfrmPrincipal.BitmapFromBase64(const base64: string): FMX.Graphics.TBitmap;
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
      Result := FMX.Graphics.TBitmap.Create;
      try
        Result.LoadFromStream(Output);
      except
        Result.free;
        raise;
      end;
    finally
      Output.free;
    end;
  finally
    Input.free;
  end;
end;


procedure TfrmPrincipal.TreeViewItem2Click(Sender: TObject);
begin
 TreeRastreabilidade.IsExpanded:=false;
 TreeAnimais.IsExpanded        :=false;
 TreeMovimentacoes.IsExpanded  :=false;
 TreeSuplementos.IsExpanded    :=false;
 TreeReports.IsExpanded        :=false;
 TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
 TreeViewISanidade.IsExpanded  :=false;
 TreeAuxiliares.IsExpanded     :=false;

//
// serviceDB.qryConfigPadrao.Close;
// serviceDB.qryConfigPadrao.Open;
// serviceDB.qryConfigPadrao.Filtered := false;
// serviceDB.qryConfigPadrao.Filter   := 'ID_PROPRIEDADE='+serviceDB.vIdPropriedade;
// serviceDB.qryConfigPadrao.Filtered := true;

 serviceDB.AbreConfigFazenda(serviceDB.vIdPropriedade);
 serviceDB.qryConfigPadrao.Edit;
 if serviceDB.AbrirCustoFixoAno(FormatDateTime('yyyy',date)) then
 begin
   btnGerarCustoFixo.Visible  := true;
   GridCustoFixo.RowCount     := 0;
 end
 else
 begin
  GeraGridCustoFixo;
  btnGerarCustoFixo.Visible := false;
 end;
 cbxAnoCustoFixo.ItemIndex  := cbxAnoCustoFixo.Items.IndexOf(FormatDateTime('yyyy',date));
 cbxTipoMedia.ItemIndex     := serviceDB.qryConfigPadraoTIPO_MEDIA_VALOR_KG.AsInteger;
 cbxConfigGMD.ItemIndex     := serviceDB.qryConfigPadraoGMD.AsInteger;
 edtGmdPadrao.Text          := serviceDB.qryConfigPadraoGMD_PADRAO.AsString;
 edtConsumoPVPadrao.Text    := serviceDB.qryConfigPadraoCONSUMO_PV_PADRAO.AsString;
 edtFrequenciaLimpaBebedouro.Text := serviceDB.qryConfigPadraoFREQ_LIMPA_BEBEDOURO.AsString;
 if serviceDB.qryConfigPadraoESTOQUE_CHIP.AsString='' then
 begin
   cbxEstoqueChip.ItemIndex :=0
 end
 else
 begin
  cbxEstoqueChip.ItemIndex := serviceDB.qryConfigPadraoESTOQUE_CHIP.AsInteger;
 end;

  if not serviceDBN.AbrirGMDAno(cbxAnoGMD.Selected.Text) then
  begin
     bntGMDAno.Visible   := false;
  end
  else
  begin
    bntGMDAno.Visible   := true;
    gridGMDAno.RowCount := 0;
  end;

  edtCidadeCliente.Text            := serviceDB.qryConfigPadraoCIDADE.AsString;
  edtNomeCliente.Text              := serviceDB.qryConfigPadraoNOME_CLIENTE.AsString;
  EDTCnpjCliente.Text              := serviceDB.qryConfigPadraoCNPJ.AsString;
  edtTelefoneCliente.Text          := serviceDB.qryConfigPadraoFONE.AsString;
  edtCep.Text                      := serviceDB.qryConfigPadraoCEP.AsString;
  edtEndereco.Text                 := serviceDB.qryConfigPadraoENDERECO.AsString;
  cbxUF.ItemIndex                  := cbxUF.Items.IndexOf(serviceDB.qryConfigPadraoUF.AsString);

   if serviceDB.qryConfigPadraoLOGO.AsString.Length>100 then
   begin
    ImgFoto1.Bitmap    := BitmapFromBase64(serviceDB.qryConfigPadraoLOGO.AsString);
    vImgLogo           := serviceDB.qryConfigPadraoLOGO.AsString;
   end;

   if serviceDB.qryConfigPadraoLOGO_2.AsString.Length>100 then
   begin
    ImgFoto2.Bitmap    := BitmapFromBase64(serviceDB.qryConfigPadraoLOGO_2.AsString);
    vImgLogo2          := serviceDB.qryConfigPadraoLOGO_2.AsString;
   end;

 MudarAba(tbiConfig,sender);
end;

procedure TfrmPrincipal.TreeViewItem30Click(Sender: TObject);
begin
  frmPlanUsoMineral := TfrmPlanUsoMineral.Create(Self);
  try
    frmPlanUsoMineral.ShowModal;
  finally
    frmPlanUsoMineral.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem31Click(Sender: TObject);
begin
  try
    frmIntegracaoTerceiros := TfrmIntegracaoTerceiros.Create(Self);
    frmIntegracaoTerceiros.ShowModal;
  finally
    frmIntegracaoTerceiros.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem35Click(Sender: TObject);
begin
  frmHistMovRebanho := TfrmHistMovRebanho.Create(Self);
  try
    frmHistMovRebanho.ShowModal;
  finally
    frmHistMovRebanho.Release;
  end;

end;

procedure TfrmPrincipal.TreeViewItem36Click(Sender: TObject);
begin
  frmRelFinanceiro := TfrmRelFinanceiro.Create(Self);
  try
    frmRelFinanceiro.ShowModal;
  finally
    frmRelFinanceiro.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem3Click(Sender: TObject);
begin
 frmCadFornecedorMineral := tfrmCadFornecedorMineral.Create(nil);
  try
    frmCadFornecedorMineral.ShowModal;
  finally
    frmCadFornecedorMineral.Release;
  end;
end;
procedure TfrmPrincipal.TreeViewItem40Click(Sender: TObject);
begin
  frmRelatorioZooConf := TfrmRelatorioZooConf.Create(Self);
  try
    frmRelatorioZooConf.ShowModal;
  finally
    frmRelatorioZooConf.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem41Click(Sender: TObject);
begin
  frmFiltrosRel := TfrmFiltrosRel.Create(Self);
  frmFiltrosRel.TabControl1.ActiveTab := frmFiltrosRel.tbiRelSani;
  try
    frmFiltrosRel.ShowModal;
  finally
    frmFiltrosRel.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem42Click(Sender: TObject);
begin
  frmBaixaManualFarmaco := TfrmBaixaManualFarmaco.Create(Self);
  try
    frmBaixaManualFarmaco.ShowModal;
  finally
    frmBaixaManualFarmaco.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem43Click(Sender: TObject);
begin
 SerRel.FarmacoSaldo.Close;
 SerRel.FarmacoSaldo.Open;
 if SerRel.FarmacoSaldo.IsEmpty then
 begin
  MyShowMessage('Sem dados para gerar esse relatório',false);
  Exit;
 end;
 SerRel.ppRepFarmacoSaldo.PrintReport;
end;

procedure TfrmPrincipal.TreeVagaoClick(Sender: TObject);
begin
   frmCadVagao := TfrmCadVagao.Create(Self);
   try
      frmCadVagao.ShowModal;
   finally
      frmCadVagao.Release;
   end;
end;

procedure TfrmPrincipal.TreeViewAuxiliaresClick(Sender: TObject);
begin
 if TreeViewAuxiliares.IsExpanded=true then
   TreeViewAuxiliares.IsExpanded:=false
 else
  TreeViewAuxiliares.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeViewItem4Click(Sender: TObject);
begin
 frmFabricaNew.ShowModal;
end;

procedure TfrmPrincipal.TreeViewItem5Click(Sender: TObject);
begin
 if TreeViewItem5.IsExpanded=true then
   TreeViewItem5.IsExpanded:=false
 else
   TreeViewItem5.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeLeituraCochoClick(Sender: TObject);
begin
  frmLeituradeCocho := TfrmLeituradeCocho.Create(Self);
  try
    frmLeituradeCocho.ShowModal;
  finally
    frmLeituradeCocho.Release;
  end;
end;

procedure TfrmPrincipal.btnSaidaBCClick(Sender: TObject);
begin
  serviceDb.AbreQryLoteSaida('','',
  FormatDateTime('mm/dd/yyyy',Date),
  FormatDateTime('mm/dd/yyyy',Date-7));
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  frmSaidaGrupo := TfrmSaidaGrupo.Create(Self);
  try
    frmSaidaGrupo.ShowModal;
  finally
    frmSaidaGrupo.Release;
  end;
end;

procedure TfrmPrincipal.btnSincronizaBaseCampoClick(Sender: TObject);
var
 vQry : TFDQuery;
begin
  serviceDB.vSyncBC :=1;
  serviceDB.ConectaBD(0);
//  serviceDB.Tablekey.Close;
//  serviceDB.Tablekey.Open;
//  serviceDB.Tablekey.Filtered:= false;
//  serviceDB.Tablekey.Filter  := 'STATUS=1';
//  serviceDB.Tablekey.Filtered:= true;
//  if serviceDB.Tablekey.IsEmpty then
//  begin
//   MyShowMessage('Informe a Licença de Uso do sistema!',false);
//   edtSerialHD.Text := SerialNum('C');
//   layKey.Visible := true;
//   Exit;
//  end
//  else
//  begin
//    DataKey := ValidadeKey(serviceDB.TablekeyKEY.AsString);
//    if DataKey<date then
//    begin
//      MyShowMessage('Licença Vencida em :'+DateToStr(DataKey)+' Dias',false);
//      edtSerialHD.Text := SerialNum('C');
//      layKey.Visible := true;
//      Exit;
//    end
//    else
//    begin
//      if DaysBetween(date,DataKey)<=5 then
//      begin
//       if DaysBetween(date,DataKey)>0 then
//        MyShowMessage('Falta :'+intToStr(DaysBetween(date,DataKey))+' para vencer sua licença!',false)
//       else
//        MyShowMessage('Sua Licença expira amanha, entre em contato com suporte.',false)
//      end;
//    end;
//  end;

  vQry := TFDQuery.Create(nil);
  vQry.Connection := serviceDB.FCon;
  if edtLogin.Text.Length=0 then
  begin
   MyShowMessage('Infome o Login do usuários!',false);
   edtLogin.SetFocus;
   Exit;
  end;
  if edtSenha.Text.Length=0 then
  begin
    MyShowMessage('Infome a Senha do usuários!', false);
    edtSenha.SetFocus;
    Exit;
  end;
  if cbxPropriedade.ItemIndex>-1 then
   serviceDB.vNomePropriedade  := cbxPropriedade.Selected.Text;
  serviceDB.vRastreada        := serviceDB.VerificaRastreada(vIDPropriedadePropria);
  TreeRastreabilidade.Visible := serviceDB.vRastreada='1';
  lblVersao.Text              := 'Versão: '+GetVersaoArq;
  if serviceDB.ValidaLogin(edtLogin.Text,edtSenha.Text) then
  begin
   LabelQtdeConfPasto;
   lblUserLogado.Text := 'Usuario : '+serviceDB.vNomeUserLogado;
   HabilitaFuncoes(serviceDB.vTipoUser);
   if cbxPropriedade.ItemIndex>-1 then
    lblPropriedadeLogada.Text :=cbxPropriedade.Selected.Text;
   DMBaseCampo.RetonaDadosCadBaseCampo(vIdBaseCampo);
   serviceDB.ConectaBD(0);
   serviceDB.ConectaBDCAMPO;
   MudarAba(tbiSyncBaseCampo,Sender);
  end
  else
  begin
    MyShowMessage('Usuário ou Senha Invalidos!',false);
    Exit;
  end;
  vQry.Release;
  mnuAlteraAnimais.Visible := false;
end;

procedure TfrmPrincipal.btnSuplementosClick(Sender: TObject);
begin
  try
    frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(Self);
    frmCadSuplementoMineral.ShowModal;
  finally
    frmCadSuplementoMineral.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem6Click(Sender: TObject);
begin
 vCadConf :=0;
 vForn :=1;
 vMov  :=0;
 try
    frmCadFornecimento := TfrmCadFornecimento.Create(Self);
    frmCadFornecimento.ShowModal;
  finally
    frmCadFornecimento.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem7Click(Sender: TObject);
begin
   TreeRastreabilidade.IsExpanded:=false;
   TreeAnimais.IsExpanded        :=false;
   TreeMovimentacoes.IsExpanded  :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeReports.IsExpanded        :=false;
   TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
   TreeViewISanidade.IsExpanded  :=false;
   TreeAuxiliares.IsExpanded     :=false;
  try
    frmCadCalendario := TfrmCadCalendario.Create(Self);
    frmCadCalendario.ShowModal;
  finally
    frmCadCalendario.Release;
  end;
end;

procedure TfrmPrincipal.TreeRelGMDClick(Sender: TObject);
begin
  frmRelGMD := TfrmRelGMD.Create(Self);
  try
    frmRelGMD.ShowModal;
  finally
    frmRelGMD.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem8Click(Sender: TObject);
begin
 if TreeViewItem8.IsExpanded then
   TreeViewItem8.IsExpanded := false
 else
   TreeViewItem8.IsExpanded := true;
end;

procedure TfrmPrincipal.TreeViewItem8EntradaEstoqueClick(Sender: TObject);
begin
  frmEntradaEstoqueMineral := TfrmEntradaEstoqueMineral.Create(Self);
  try
    serviceDB.AbrirGridEstoque(Date-30,date,'Todos','',serviceDB.vIdpropriedade,'');
    frmEntradaEstoqueMineral.ShowModal;
  finally
    frmEntradaEstoqueMineral.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItem9Click(Sender: TObject);
begin
  serviceDB.TableFornecedorFarmaco.Close;
  serviceDB.TableFornecedorFarmaco.Open;
  frmCadFabricanteFarmaco := TfrmCadFabricanteFarmaco.Create(Self);
  try
    frmCadFabricanteFarmaco.ShowModal;
  finally
    frmCadFabricanteFarmaco.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItemEntradasClick(Sender: TObject);
begin
  frmCadBaixaEstoqueInd := TfrmCadBaixaEstoqueInd.Create(Self);
  try
    frmCadBaixaEstoqueInd.ShowModal;
  finally
    frmCadBaixaEstoqueInd.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewItemFinClick(Sender: TObject);
begin
  if serviceDB.vPainelFinanceiro.Length=0 then
  begin
    MyShowMessage('Informe o link  do painel no arquivo .ini',false);
  end
  else
  begin
    if vWebBrowser<>nil  then vWebBrowser.Release;
    TThread.CreateAnonymousThread(procedure()
    begin
     TThread.Synchronize(TThread.CurrentThread,
     procedure ()
     begin
       ReCreateBrowser(serviceDB.vPainelFinanceiro);
     end);
    end).Start;
  end;
end;

procedure TfrmPrincipal.TreeViewListaAnimalClick(Sender: TObject);
begin
 CarregaCombos;
 btnExportaGrid.Enabled := false;
 mnuAlteraAnimais.Visible := true;
 cbxStatus.ItemIndex :=1;
 MudarAba(tbiListaAnimais,sender);
end;

procedure TfrmPrincipal.TreeViewMorteClick(Sender: TObject);
begin
  frmComunicadoMorte := TfrmComunicadoMorte.Create(Self);
  try
    frmComunicadoMorte.ShowModal;
  finally
    frmComunicadoMorte.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewNascimentoClick(Sender: TObject);
begin
  frmComunicadoNascimento := TfrmComunicadoNascimento.Create(Self);
  try
    frmComunicadoNascimento.ShowModal;
  finally
    frmComunicadoNascimento.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewPrevisaoClick(Sender: TObject);
begin
  frmPrevisao := TfrmPrevisao.Create(Self);
   try
     frmPrevisao.ShowModal;
   finally
     frmPrevisao.Release;
   end;
end;

procedure TfrmPrincipal.TreeViewPropriedadesClick(Sender: TObject);
begin
   TreeRastreabilidade.IsExpanded:=false;
   TreeAnimais.IsExpanded        :=false;
   TreeMovimentacoes.IsExpanded  :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeReports.IsExpanded        :=false;
   TreeEstoque.IsExpanded        :=false;
   TreePasto.IsExpanded          :=false;
   TreeConfinamento.IsExpanded   :=false;
   TreeViewISanidade.IsExpanded  :=false;
   TreeAuxiliares.IsExpanded     := false;
   serviceDB.TablePropriedades.Close;
   serviceDB.TablePropriedades.Open;
   serviceDB.TableProdutores.Open;
   frmCadPropriedades := TfrmCadPropriedades.Create(Self);
   try
     frmCadPropriedades.ShowModal;
   finally
     frmCadPropriedades.Release;
   end;
end;

procedure TfrmPrincipal.TreeViewProtocoloClick(Sender: TObject);
begin
  frmCadProtocolo := TfrmCadProtocolo.Create(Self);
  try
    frmCadProtocolo.ShowModal;
  finally
    frmCadProtocolo.Release;
  end;
end;

procedure TfrmPrincipal.TreeViewTratamentosClick(Sender: TObject);
begin
  frmTratamentoSani := TfrmTratamentoSani.Create(Self);
  try
    frmTratamentoSani.ShowModal;
  finally
    frmTratamentoSani.Release;
  end;
end;

procedure TfrmPrincipal.TTHReadAbriQry;
begin
   CustomThread(
     procedure()
     begin
      //Inicia Thread
       vPositionX := layImgAguarde.Position.X;
       vPositionY := layImgAguarde.Position.Y;
       layImgAguarde.BringToFront;
       btnExportaGrid.Enabled := false;
       btnimprimir.Enabled := false;
     end,
     procedure()
     begin
       //Ação Principal
       AbrirQryGrid;
     end,
     procedure()
//     var
//      i:integer;
     begin
//       i:=0;
//       qryGrid.First;
//       gridAnimais.RowCount := qryGrid.RecordCount;
//       while not qryGrid.Eof do
//       begin
//        gridAnimais.Cells[0,i] := qrygridPROPRIETARIO.AsString;
//        inc(i);
//        qryGrid.Next;
//       end;
     end,
      procedure(const AException : string)
     begin
       //Ação de erro
     end,
     True
   );
end;

function TfrmPrincipal.ValidadeKey(Chave: String): TDate;
var
 Data,
 Dias,
 Dia,Mes,Ano,vData,Sistema,vSerial:string;
begin
  if Chave.Length>10 then
  begin
    vSerial := copy(Chave,0,pos('SE',Chave)-1);
    Data   := copy(Chave,(pos('SE',Chave)+2),8);
    Dias   := copy(Chave,pos('SE',Chave)+10,4);
    Sistema:= copy(Chave,pos('SE',Chave)+14,1);
    Dia :=(copy(Data,7,2));
    Mes :=(copy(Data,5,2));
    Ano :=(copy(Data,0,4));
    Result :=strToDate(Dia+'/'+Mes+'/'+Ano);
  end;
end;

function TfrmPrincipal.ValidaKey(Serial,Chave: String): Boolean;
var
 Data,
 Dias,
 Dia,Mes,Ano,vData,Sistema,vSerial:string;
begin
  if Chave.Length>10 then
  begin
    vSerial := copy(Chave,0,pos('SE',Chave)-1);
    Data   := copy(Chave,(pos('SE',Chave)+2),8);
    Dias   := copy(Chave,pos('SE',Chave)+10,4);
    Sistema:= copy(Chave,pos('SE',Chave)+14,1);
  end;
  if not ServiceDB.ValidaLicencaJaUsada(Chave) then
  begin
   Result:= false;
   Exit;
  end;

  if UpperCase(Serial)<>UpperCase(vSerial) then
    Result := false
  else
   if Sistema<>'0' then
    Result := false
  else
   if(Dias.Length=0) or (Dias='0') then
    Result := false
  else
  begin
     Dia :=(copy(Data,7,2));
     Mes :=(copy(Data,5,2));
     Ano :=(copy(Data,0,4));
     vDataKey:=Dia+'/'+Mes+'/'+Ano;
     serviceDB.InativaKey;
     serviceDB.Tablekey.Insert;
     serviceDB.TablekeyKEY.AsString      := Chave;
     try
       serviceDB.Tablekey.ApplyUpdates(-1);
      except
       on E : Exception do
       begin
         ShowMessage('Exception message = '+E.Message);
       end;
     end;
     Result := true;
  end;
end;



procedure TfrmPrincipal.TreeEntradasClick(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
 procedure
 begin
  TThread.Synchronize( nil,
  procedure
  begin
    serviceDB.TableRacas.Close;
    serviceDB.TableRacas.Open;
    serviceDB.TableCategorias.Close;
    serviceDB.TableCategorias.Open;
    vMov :=1;
    serviceDB.AbrirEntradaAnimalGrid(date,date-7,'Todos');
    frmEntradaGrupo := TfrmEntradaGrupo.Create(Self);
    try
      frmEntradaGrupo.ShowModal;
    finally
      frmEntradaGrupo.Release;
    end;
  end);
  end).Start;
end;

procedure TfrmPrincipal.TreeEstoqueAtualCustoMedioClick(Sender: TObject);
begin
 dmRelConf.RelEstoqueAtualCustoMedio;
 if dmRelConf.RealEstoqueAtual.RecordCount>0 then
  dmRelConf.ppRepEstoqueAtual.Print
 else
  MyShowMessage('Sem dados para gerar esse relatório',false);
end;

procedure TfrmPrincipal.TreeEstoqueClick(Sender: TObject);
begin
 TreeMeteorologia.IsExpanded   :=false;
 TreeRastreabilidade.IsExpanded:=false;
 TreeAnimais.IsExpanded        :=false;
 TreeMovimentacoes.IsExpanded  :=false;
 TreeSuplementos.IsExpanded    :=false;
 TreeReports.IsExpanded        :=false;
 TreeViewISanidade.IsExpanded  :=false;
 TreeAuxiliares.IsExpanded     := false;
 TreePasto.IsExpanded          := false;
 TreeConfinamento.IsExpanded   :=false;
 if TreeEstoque.IsExpanded=true then
    TreeEstoque.IsExpanded:=false
 else
    TreeEstoque.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeEstoquedeBrincosClick(Sender: TObject);
begin
  serviceDB.TablePedidoBrinco.Close;
  serviceDB.TablePedidoBrinco.Open;
  frmCadPedido := TfrmCadPedido.Create(Self);
  try
    frmCadPedido.ShowModal;
  finally
    frmCadPedido.Release;
  end;
end;

procedure TfrmPrincipal.TreeEstruturasClick(Sender: TObject);
begin
   vMov        :=0;
   vCadCurral  :=1;
   vTipoCurral :='0';
   serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'0');
   frmCadCurral := TfrmCadCurral.Create(Self);
   try
      frmCadCurral.ShowModal;
   finally
      frmCadCurral.Release;
   end;
end;

procedure TfrmPrincipal.TreeExportarClick(Sender: TObject);
begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
      procedure
      begin
        with serviceDB.qryRelResumoGeral,serviceDB.qryRelResumoGeral.SQL do
        begin
         Clear;
         Add('SELECT * FROM VIEW_RESUMO_ATIVOS_GERAL WHERE ID_PROPRIEDADE=:ID_PROPRIEDADE');
         ParamByName('ID_PROPRIEDADE').AsString := serviceDB.vIdPropriedade;
         try
          Open;
          if not IsEmpty then
          begin
           if SaveDialog1.Execute then
           begin
             ExpTXT(serviceDB.qryRelResumoGeral,SaveDialog1.FileName);
             MyShowMessage('Arquivo gerado com sucesso!',false);
           end;
          end
          else
           MyShowMessage('Sem dados para gerar Arquivo!',false);
         except
         end
        end;
      end)
    end).Start;
end;

procedure TfrmPrincipal.TreeExportarSexoClick(Sender: TObject);
begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
      procedure
      begin
        with qryRelResumoGeralSe,qryRelResumoGeralSe.SQL do
        begin
         Clear;
         Add('SELECT * FROM VIEW_RESUMO_ATIVOS_GERAL_SEXO WHERE ID_PROPRIEDADE=:ID_PROPRIEDADE');
         ParamByName('ID_PROPRIEDADE').AsString := serviceDB.vIdPropriedade;
         try
          Open;
          if not IsEmpty then
          begin
           if SaveDialog1.Execute then
           begin
             ExpTXT(qryRelResumoGeralse,SaveDialog1.FileName);
             MyShowMessage('Arquivo gerado com sucesso!',false);
           end;
          end
          else
           MyShowMessage('Sem dados para gerar Arquivo!',false);
         except
         end;
        end;
      end)
    end).Start;
end;

procedure TfrmPrincipal.TreeConfinamentoClick(Sender: TObject);
begin
   vCadConf                      :=1;
   TreeMeteorologia.IsExpanded   :=false;
   TreeRastreabilidade.IsExpanded:=false;
   TreeAnimais.IsExpanded        :=false;
   TreeMovimentacoes.IsExpanded  :=false;
   TreeSuplementos.IsExpanded    :=false;
   TreeReports.IsExpanded        :=false;
   TreeViewISanidade.IsExpanded  :=false;
   TreeAuxiliares.IsExpanded     := false;
   TreeEstoque.IsExpanded        := false;
   TreePasto.IsExpanded          := false;

   if TreeConfinamento.IsExpanded=true then
      TreeConfinamento.IsExpanded:=false
   else
      TreeConfinamento.IsExpanded:=true;
end;

procedure TfrmPrincipal.TreeContratoCompraClick(Sender: TObject);
begin
 frmContratoCompra := TfrmContratoCompra.Create(Self);
  try
    frmContratoCompra.ShowModal;
  finally
    frmContratoCompra.Release;
  end;
end;

procedure TfrmPrincipal.TreeFornecedorBrincosClick(Sender: TObject);
begin
  serviceDB.TableRFornecedorBrincos.Close;
  serviceDB.TableRFornecedorBrincos.Open;
  frmCadFornBrincos := TfrmCadFornBrincos.Create(Self);
  try
    frmCadFornBrincos.ShowModal;
  finally
    frmCadFornBrincos.Release;
  end;
end;

procedure TfrmPrincipal.TreeFornRacaoClick(Sender: TObject);
begin
  frmFornecimentoConf := TfrmFornecimentoConf.Create(Self);
  try
    frmFornecimentoConf.ShowModal;
  finally
    frmFornecimentoConf.Release;
  end;
end;

procedure TfrmPrincipal.TreeGerenteOperacionalClick(Sender: TObject);
begin
  frmCadGerenteOperacional := TfrmCadGerenteOperacional.Create(Self);
  try
    frmCadGerenteOperacional.ShowModal;
  finally
    frmCadGerenteOperacional.Release;
  end;
end;

procedure TfrmPrincipal.TreeGTAClick(Sender: TObject);
begin
  MudarAba(tbiAux,sender);
end;

procedure TfrmPrincipal.TreeImportalBrincosClick(Sender: TObject);
begin
 layPopUpCad.Visible := true;
 layAlteraRacaCategoria.Visible := false;
 layIMportaLincagem.Visible     := true;
 TabControl1.Visible := false;
end;

procedure TfrmPrincipal.TreeImprimirClick(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
      procedure
      begin
        with serviceDB.qryRelResumoGeral,serviceDB.qryRelResumoGeral.SQL do
        begin
         Clear;
         Add('SELECT * FROM VIEW_RESUMO_ATIVOS_GERAL WHERE ID_PROPRIEDADE=:ID_PROPRIEDADE');
         ParamByName('ID_PROPRIEDADE').AsString := serviceDB.vIdPropriedade;
         try
          Open;
           ppRepGeral.Print;
         except
         end
        end;
      end)
    end).Start;
end;

procedure TfrmPrincipal.TreeImprimirSexoClick(Sender: TObject);
begin
   TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
      procedure
      begin
        with qryRelResumoGeralSe,qryRelResumoGeralSe.SQL do
        begin
         Clear;
         Add('SELECT * FROM VIEW_RESUMO_ATIVOS_GERAL_SEXO WHERE ID_PROPRIEDADE=:ID_PROPRIEDADE');
         ParamByName('ID_PROPRIEDADE').AsString := serviceDB.vIdPropriedade;
          Open;
          ppRepGeralSexo.Print;
        end;
      end)
    end).Start;
end;

procedure TfrmPrincipal.TreeInsumosClick(Sender: TObject);
begin
 try
   frmCadAlimento := TfrmCadAlimento.Create(Self);
   frmCadAlimento.ShowModal;
 finally
   frmCadAlimento.Release;
 end;
end;

procedure TfrmPrincipal.TreeListaAnimaisClick(Sender: TObject);
begin
  CarregaCombos;
  MudarAba(tbiListaAnimais,sender);
end;



end.
