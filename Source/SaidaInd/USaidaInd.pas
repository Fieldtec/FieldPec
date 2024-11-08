unit USaidaInd;

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
  FMX.ListView, System.ImageList, FMX.ImgList,Winapi.Windows,
  System.Math.Vectors, FMX.DateTimeCtrls, FMX.NumberBox, FMX.Controls3D,
  FMX.Layers3D, FMX.Media,MMSystem, Winsoft.FireMonkey.FComPort;

type
  TfrmSaidaInd = class(TForm)
    layBase: TLayout;
    recAllWhite: TRectangle;
    imgApr: TImage;
    ShadowEffect16: TShadowEffect;
    MenuBar1: TMenuBar;
    mnuConfig: TMenuItem;
    ShadowEffect26: TShadowEffect;
    mnuApartacao: TMenuItem;
    Layout39: TLayout;
    Image5: TImage;
    ShadowEffect7: TShadowEffect;
    layGTAEntNovos: TLayout;
    Rectangle3: TRectangle;
    ShadowEffect2: TShadowEffect;
    Layout9: TLayout;
    Rectangle22: TRectangle;
    Label31: TLabel;
    cbxLoteSaida: TComboBox;
    LayDadosAnimal: TLayout;
    Rectangle11: TRectangle;
    ShadowEffect3: TShadowEffect;
    Layout6: TLayout;
    Layout8: TLayout;
    Layout2: TLayout;
    Rectangle13: TRectangle;
    Layout15: TLayout;
    Label7: TLabel;
    Rectangle14: TRectangle;
    Layout16: TLayout;
    Label23: TLabel;
    Rectangle9: TRectangle;
    Layout4: TLayout;
    Label3: TLabel;
    edtLocalAtual: TEdit;
    Layout50: TLayout;
    layIdentificacoes: TLayout;
    Rectangle17: TRectangle;
    ShadowEffect5: TShadowEffect;
    Layout25: TLayout;
    Layout42: TLayout;
    Rectangle18: TRectangle;
    Layout46: TLayout;
    RecIdent1: TRectangle;
    edtIdentificacao1: TEdit;
    Layout21: TLayout;
    Label28: TLabel;
    layConfiguraRFID: TLayout;
    btnLerTag: TRectangle;
    Layout22: TLayout;
    Image4: TImage;
    Label16: TLabel;
    ShadowEffect11: TShadowEffect;
    Rectangle12: TRectangle;
    Layout23: TLayout;
    Image8: TImage;
    Label17: TLabel;
    ShadowEffect12: TShadowEffect;
    RecIdent2: TRectangle;
    Label29: TLabel;
    edtIdentificacao2: TEdit;
    Rectangle21: TRectangle;
    lblPesoBalanca: TLabel;
    edtPeso: TEdit;
    layDadosPesoAnimalExistente: TLayout;
    Rectangle19: TRectangle;
    ShadowEffect6: TShadowEffect;
    Layout47: TLayout;
    Layout48: TLayout;
    Rectangle15: TRectangle;
    Layout10: TLayout;
    Label4: TLabel;
    edtDtUltimoPeso: TEdit;
    Rectangle20: TRectangle;
    Layout11: TLayout;
    Label8: TLabel;
    edtUltimoPeso: TEdit;
    Rectangle23: TRectangle;
    Layout12: TLayout;
    Label9: TLabel;
    edtgmdUltimoPeso: TEdit;
    Rectangle24: TRectangle;
    Layout13: TLayout;
    Label11: TLabel;
    edtPesoProj: TEdit;
    Rectangle25: TRectangle;
    Layout17: TLayout;
    Label18: TLabel;
    edtDias: TEdit;
    Rectangle16: TRectangle;
    Layout18: TLayout;
    Label27: TLabel;
    edtIdadeMeses: TEdit;
    Rectangle26: TRectangle;
    Layout26: TLayout;
    Label19: TLabel;
    edtGtpUltimo: TEdit;
    Layout51: TLayout;
    GridAnimaisProcEntrada: TStringGrid;
    layInfGrid: TLayout;
    recInfGrif: TRectangle;
    layEstatisticaGrid: TLayout;
    Rectangle28: TRectangle;
    Label24: TLabel;
    lblGMDMedio: TLabel;
    Rectangle29: TRectangle;
    Label500000: TLabel;
    lblGridInfQtdCab: TLabel;
    Rectangle30: TRectangle;
    Label22: TLabel;
    lblGTPMedio: TLabel;
    Rectangle31: TRectangle;
    Label12: TLabel;
    lblGridInfoMediaPeso: TLabel;
    Layout19: TLayout;
    ShadowEffect4: TShadowEffect;
    btnConfirma: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    SEffectBtnConfirm: TShadowEffect;
    btnCancelar: TRectangle;
    Layout1: TLayout;
    Image1: TImage;
    Label13: TLabel;
    ShadowEffect10: TShadowEffect;
    layPerifericos: TLayout;
    Rectangle50: TRectangle;
    GridLayout1: TGridLayout;
    Layout69: TLayout;
    recBalanca: TRectangle;
    Layout73: TLayout;
    Image10: TImage;
    Layout74: TLayout;
    Label36: TLabel;
    Layout86: TLayout;
    chkUsaBalanca: TSwitch;
    Label42: TLabel;
    Layout89: TLayout;
    Label46: TLabel;
    cbxBalancaModelo: TComboBox;
    Layout92: TLayout;
    Label45: TLabel;
    cbxBalancaPorta: TComboBox;
    Layout70: TLayout;
    RecLeitorChip: TRectangle;
    Layout75: TLayout;
    Image7: TImage;
    Layout76: TLayout;
    Label37: TLabel;
    Layout87: TLayout;
    chkUsaBastao: TSwitch;
    Label43: TLabel;
    Layout90: TLayout;
    Label50: TLabel;
    cbxChipModelo: TComboBox;
    Layout93: TLayout;
    Label52: TLabel;
    cbxChipPorta: TComboBox;
    Layout71: TLayout;
    recRFID: TRectangle;
    Layout84: TLayout;
    Image12: TImage;
    Layout85: TLayout;
    Label41: TLabel;
    Layout88: TLayout;
    chkRFID: TSwitch;
    Label44: TLabel;
    Layout91: TLayout;
    Label55: TLabel;
    cbxRFIDModelo: TComboBox;
    Layout94: TLayout;
    Label54: TLabel;
    cbxRFIDPorta: TComboBox;
    Image6: TImage;
    ShadowEffect33: TShadowEffect;
    laySuperior: TLayout;
    Rectangle5: TRectangle;
    lblStatusTela: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    LayApartacao: TLayout;
    Layout52: TLayout;
    Rectangle7: TRectangle;
    Image3: TImage;
    ShadowEffect9: TShadowEffect;
    Layout7: TLayout;
    Rectangle6: TRectangle;
    Label10: TLabel;
    Layout14: TLayout;
    Image2: TImage;
    StyleBook1: TStyleBook;
    PopupMenu1: TPopupMenu;
    mnuStrGridEdit: TMenuItem;
    mnuStrGridExcluir: TMenuItem;

    ImageList1: TImageList;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    BindSourceDB5: TBindSourceDB;
    Rectangle32: TRectangle;
    Label25: TLabel;
    CbxVeiculo: TComboBox;
    Rectangle1: TRectangle;
    Layout63: TLayout;
    Layout66: TLayout;
    ComboBox3: TComboBox;
    Layout49: TLayout;
    Label5: TLabel;
    Layout53: TLayout;
    edtQtdVeiculos: TEdit;
    Label47: TLabel;
    Layout54: TLayout;
    edtCapacidadeVeiculo: TEdit;
    Label48: TLabel;
    btnGerarVeiculos: TRectangle;
    Layout55: TLayout;
    Image14: TImage;
    Label49: TLabel;
    ShadowEffect1: TShadowEffect;
    gridVeiculos: TStringGrid;
    Rectangle4: TRectangle;
    Label6: TLabel;
    lblQtdeVeiculos: TLabel;
    Label51: TLabel;
    lblCapacidadeTotal: TLabel;
    Label26: TLabel;
    lblLotacaoTotal: TLabel;
    tbPrincipal: TTabControl;
    tbiSaiInd: TTabItem;
    tbiCadLoteSaida: TTabItem;
    Rectangle2: TRectangle;
    Layout5: TLayout;
    ToolBarConfirma: TToolBar;
    Layout24: TLayout;
    ShadowEffect13: TShadowEffect;
    btnConfirmaLs: TRectangle;
    Layout30: TLayout;
    Image11: TImage;
    Label2: TLabel;
    ShadowEffect14: TShadowEffect;
    Image13: TImage;
    Layout56: TLayout;
    Rectangle10: TRectangle;
    Layout57: TLayout;
    Layout58: TLayout;
    NumberBox2: TNumberBox;
    Layout60: TLayout;
    Label30: TLabel;
    edtProdutorOriLs: TEdit;
    EditButton3: TEditButton;
    Layout61: TLayout;
    edtProdutorDestinoLS: TEdit;
    EditButton4: TEditButton;
    Label32: TLabel;
    Layout59: TLayout;
    Label53: TLabel;
    edtDataEmbarqueLS: TDateEdit;
    btnCriarLote: TRectangle;
    Layout65: TLayout;
    Image15: TImage;
    lblButonConfirma: TLabel;
    ShadowEffect15: TShadowEffect;
    layVeiculos: TLayout;
    Rectangle33: TRectangle;
    Layout29: TLayout;
    Layout64: TLayout;
    Rectangle34: TRectangle;
    Label34: TLabel;
    Label38: TLabel;
    Layout31: TLayout;
    ComboBox1: TComboBox;
    Layout32: TLayout;
    Label39: TLabel;
    Layout33: TLayout;
    edtQtdVeiculosLs: TEdit;
    Label40: TLabel;
    Layout34: TLayout;
    edtCapacidadeVeiculoLS: TEdit;
    Label56: TLabel;
    Rectangle35: TRectangle;
    Layout35: TLayout;
    Image16: TImage;
    Label57: TLabel;
    ShadowEffect17: TShadowEffect;
    gridVeiculosEmbarque: TStringGrid;
    Rectangle36: TRectangle;
    Label58: TLabel;
    lblQtdVeiculos: TLabel;
    Label60: TLabel;
    lblCapacidadeVeiculos: TLabel;
    Label62: TLabel;
    lblLotacaoVeiculos: TLabel;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB52: TLinkGridToDataSource;
    edtCategoria: TEdit;
    edtRaca: TEdit;
    Rectangle27: TRectangle;
    Label20: TLabel;
    edtCapVeiculoSelect: TEdit;
    Rectangle37: TRectangle;
    Label21: TLabel;
    edtLotacaoVeiculoSelect: TEdit;
    Rectangle38: TRectangle;
    Label64: TLabel;
    edtPlacaVeiculoSelect: TEdit;
    layDadosVeiculo: TLayout;
    btnAlteraPlacaVeiculo: TRectangle;
    Layout27: TLayout;
    Label65: TLabel;
    ShadowEffect18: TShadowEffect;
    BindingsList2: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    LinkFillControlToFieldCODIGO: TLinkFillControlToField;
    LinkGridToDataSource1: TLinkGridToDataSource;
    PopupMenu2: TPopupMenu;
    MenuItemEstornaAnimal: TMenuItem;
    MenuBar2: TMenuBar;
    Layout28: TLayout;
    Image18: TImage;
    ShadowEffect20: TShadowEffect;
    mnuAlterarPesoSaida: TMenuItem;
    layAlteracao: TLayout;
    RecStatusAcao: TRectangle;
    Layout36: TLayout;
    Layout37: TLayout;
    Image19: TImage;
    Layout38: TLayout;
    Layout40: TLayout;
    Layout41: TLayout;
    ShadowEffect19: TShadowEffect;
    Layout43: TLayout;
    ShadowEffect21: TShadowEffect;
    btnConfirmar: TRectangle;
    Layout44: TLayout;
    Image20: TImage;
    Label66: TLabel;
    ShadowEffect22: TShadowEffect;
    btnCancel: TRectangle;
    Layout45: TLayout;
    Image21: TImage;
    Label67: TLabel;
    ShadowEffect23: TShadowEffect;
    msg: TLabel;
    layAlteraPeso: TLayout;
    Rectangle39: TRectangle;
    Layout62: TLayout;
    Label68: TLabel;
    Label69: TLabel;
    edtPesoAtual: TEdit;
    edtNovoPesoSaida: TEdit;
    Layout67: TLayout;
    Rectangle40: TRectangle;
    Label70: TLabel;
    cbxTipoIdentificacao: TComboBox;
    Label71: TLabel;
    cbxUsarIdent2: TComboBox;
    Rectangle8: TRectangle;
    Layout20: TLayout;
    chkBND: TCheckBox;
    chkLiberacaoBND: TCheckBox;
    chkCarenciaMedicamento: TCheckBox;
    Rectangle41: TRectangle;
    Layout68: TLayout;
    Label14: TLabel;
    edtDataLiberacaoBND: TEdit;
    Rectangle42: TRectangle;
    Layout72: TLayout;
    chkSexo: TCheckBox;
    cbxSexoChk: TComboBox;
    Rectangle43: TRectangle;
    btnEraPorVeiculo: TRectangle;
    Layout77: TLayout;
    Label15: TLabel;
    ShadowEffect24: TShadowEffect;
    Rectangle49: TRectangle;
    Label35: TLabel;
    edtObservacao: TEdit;
    Layout78: TLayout;
    Label72: TLabel;
    edtRebanho: TEdit;
    Rectangle44: TRectangle;
    btnVincularGTA: TRectangle;
    Layout79: TLayout;
    Label73: TLabel;
    ShadowEffect25: TShadowEffect;
    PopupGTA: TPopupMenu;
    mnuLimpaGTA: TMenuItem;
    Layout80: TLayout;
    Rectangle56: TRectangle;
    Label74: TLabel;
    SwitcSoChip: TSwitch;
    Layout81: TLayout;
    Layout82: TLayout;
    Label75: TLabel;
    cbxBloqueio: TComboBox;
    Label76: TLabel;
    edtBloqueado: TEdit;
    Label77: TLabel;
    chkSemPeso: TSwitch;
    Label78: TLabel;
    chkLerConfirma: TSwitch;
    MediaPlayer1: TMediaPlayer;
    Layout83: TLayout;
    Rectangle45: TRectangle;
    Label79: TLabel;
    edtFiltroChip: TEdit;
    etdFiltroSisbov: TEdit;
    btnBuscaGrid: TButton;
    ClearEditButton1: TClearEditButton;
    ClearEditButton2: TClearEditButton;
    Layout95: TLayout;
    btnEditarLS: TRectangle;
    Layout3: TLayout;
    Image9: TImage;
    Label1: TLabel;
    ShadowEffect8: TShadowEffect;
    btnNovoLS: TRectangle;
    Layout96: TLayout;
    Image22: TImage;
    Label59: TLabel;
    ShadowEffect27: TShadowEffect;
    ComRFID: TFComPort;
    ComBalanca: TFComPort;
    ComBastao: TFComPort;
    Layout97: TLayout;
    Label33: TLabel;
    cbxTipo: TComboBox;
    Layout98: TLayout;
    Label61: TLabel;
    cbxTipoVeiculo: TComboBox;
    Rectangle46: TRectangle;
    Label63: TLabel;
    edtPlacaCarreta: TEdit;
    Rectangle47: TRectangle;
    Label80: TLabel;
    edtMotorista: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure mnuConfigClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddApartacaoClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure edtIdentificacao1KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtIdentificacao1Exit(Sender: TObject);
    procedure edtIdentificacao2Exit(Sender: TObject);
    procedure edtIdentificacao2KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure mnuApartacaoClick(Sender: TObject);
    procedure edtPesoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtPesoExit(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnLerTagClick(Sender: TObject);
    procedure Rectangle12Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtIdadeMesesKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbxCurralPastoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtObservacaoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure mnuStrGridEditClick(Sender: TObject);
    procedure mnuStrGridExcluirClick(Sender: TObject);
    procedure ComBastaoRxChar(Sender: TObject);
    procedure ComRFIDRxChar(Sender: TObject);
    procedure edtPesoEnter(Sender: TObject);
    procedure edtPesoChangeTracking(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtGtpUltimoChangeTracking(Sender: TObject);
    procedure btnGerarVeiculosClick(Sender: TObject);
    procedure btnEditarLSClick(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure btnCriarLoteClick(Sender: TObject);
    procedure btnConfirmaLsClick(Sender: TObject);
    procedure CbxVeiculoChange(Sender: TObject);
    procedure cbxLoteSaidaChange(Sender: TObject);
    procedure CbxVeiculoClick(Sender: TObject);
    procedure Rectangle35Click(Sender: TObject);
    procedure btnAlteraPlacaVeiculoClick(Sender: TObject);
    procedure edtPlacaVeiculoSelectKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure MenuItemEstornaAnimalClick(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure gridVeiculosEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure edtCapVeiculoSelectKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtCapVeiculoSelectKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure mnuAlterarPesoSaidaClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridVeiculosCellClick(const Column: TColumn; const Row: Integer);
    procedure btnEraPorVeiculoClick(Sender: TObject);
    procedure btnVincularGTAClick(Sender: TObject);
    procedure mnuLimpaGTAClick(Sender: TObject);
    procedure chkSemPesoSwitch(Sender: TObject);
    procedure btnBuscaGridClick(Sender: TObject);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure ClearEditButton2Click(Sender: TObject);
    procedure edtFiltroChipKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure etdFiltroSisbovKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnNovoLSClick(Sender: TObject);
    procedure gridVeiculosEmbarqueEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure edtCapVeiculoSelectExit(Sender: TObject);
    procedure edtPlacaVeiculoSelectExit(Sender: TObject);
    procedure edtPlacaCarretaExit(Sender: TObject);
    procedure edtMotoristaExit(Sender: TObject);
    private
    { Private declarations }
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
    public
     vIdVeiculoEra,
     vSexoCHK,
     vDataLiberacao,
     vIdGTA,vIdCategoria,vIdRaca,vIdLocal,vRespRFID,vIdProdutorOri,vIdProdutor,vSexoAnimal,
     VvalorCabGTA,vIDAnimal,vIdent2,vIdLocalAtual,vProdutorOrigem,vPrpriedadeOrigem,
     vIdDestinoVenda,vPrpriedadeDestino,vLoteSaida,vIDVeiculo,vIdProdutorProp,
     vIdProdutorDestino:string;
     FlagSolicitaPeso,vFunction,vAnimalEdit,vDiasUltimoPeso,vBloquioAnimal,vEditaLS:integer;
     vIniLeituraRFID,vIniLeituraRFIDControle:Boolean;
     vDataUltimoPeso:TDate;
     vUltimoPeso:Double;
     procedure CarregaCurralPastoGrupo;
     procedure GeraGridApartacao(idPropriedade:string);
     procedure AdicionaAparte(idCurral,NomeCurral,PesoMinimo,PesoMaximo:string);
     procedure AbreQryGTAProc(Tipo, IdPropriedade: string);
     procedure ConectaBalanca(vCom, vModelo: string);
     function  LimpaPeso(Peso: String): string;
     procedure ConectaBastao(vCom, vModelo: string);
     procedure ConctaRFIDSerial(vCom, vModelo: string);
     procedure abrirConfiguracaoManejo;
     procedure InsereLogReprocessamento(idAnimal,Tipo:String);
     procedure LimpaCampos;
     procedure InfoGridProc;
     function  BuscaDadosAnimal(Identificacao,Tipo:string):Boolean;
     procedure InfoGridVeiculos;
     procedure CarregaComboLoteSaida;
     procedure CarregaComboVeiculoSaida(ls:String);
     procedure EmiteSomErro;
     procedure InfoGridVeiculosLoteSaida;
     procedure SalvaAlteracaoVeiculo;

  end;

var
  frmSaidaInd: TfrmSaidaInd;
type
  TOpenComboBox = class(TComboBox);

implementation

{$R *.fmx}

uses UCadCategoria, UCadGTA, UCadPadrao, UCadRaca, UCadUsers, UCurrais,
  UPrincipal, UPropriedadeParceira, UServiceDB, UMsgDlg, USaidaGrupo,
  ServiceDB2, ServiceRel, UVeiculosEmbarque;

procedure TfrmSaidaInd.InfoGridVeiculos;
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
   if TryStrToFloat(gridVeiculos.Cells[2,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(gridVeiculos.Cells[3,I],Val1) then
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

procedure TfrmSaidaInd.InfoGridVeiculosLoteSaida;
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
  for I := 0 to gridVeiculosEmbarque.RowCount-1 do
  begin
   if TryStrToFloat(gridVeiculosEmbarque.Cells[2,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(gridVeiculosEmbarque.Cells[3,I],Val1) then
    Sum1 := Sum1 + Val1;
  end;
  if I>0 then
  begin
   lblQtdVeiculos.Text              := IntToStr(gridVeiculosEmbarque.RowCount);
   lblCapacidadeVeiculos.Text       := intToStr(trunc(sum));
   lblLotacaoVeiculos.Text          := intToStr(trunc(sum1));
  end
  else
  begin
    lblQtdVeiculos.Text              := IntToStr(gridVeiculosEmbarque.RowCount);
    lblCapacidadeVeiculos.Text       := '0';
    lblLotacaoVeiculos.Text          := '0';
  end;
end;

procedure TfrmSaidaInd.CbxVeiculoChange(Sender: TObject);
begin
 if CbxVeiculo.ItemIndex>-1 then
 begin
   vIDVeiculo := IntToStr(Integer(CbxVeiculo.Items.Objects[CbxVeiculo.ItemIndex]));
   serviceDB.AbreQryVeiculosEmbarque(vIDVeiculo);
   edtCapVeiculoSelect.Text     := serviceDB.qryVeiculosEmbarqueCAPACIDADE.Asstring;
   edtLotacaoVeiculoSelect.Text := serviceDB.qryVeiculosEmbarqueLOTACAO.Asstring;
   edtPlacaVeiculoSelect.Text   := serviceDB.qryVeiculosEmbarquePLACA.Asstring;

   edtPlacaCarreta.Text         := serviceDB.qryVeiculosEmbarquePLACA_CR.Asstring;
   edtMotorista.Text            := serviceDB.qryVeiculosEmbarqueMotorista.Asstring;


   edtPlacaVeiculoSelect.Enabled:= false;
   edtCapVeiculoSelect.Enabled  := false;
   layDadosVeiculo.Visible      := true;
   if not chkSemPeso.IsChecked then
    edtPeso.Enabled             := true;
 end;
end;

procedure TfrmSaidaInd.CbxVeiculoClick(Sender: TObject);
begin
  if cbxLoteSaida.ItemIndex=-1 then
  begin
   MyShowMessage('Informe o lote de saida!',false);
   Exit;
  end;
end;

procedure TfrmSaidaInd.chkSemPesoSwitch(Sender: TObject);
begin
 if chkSemPeso.IsChecked then
  chkUsaBalanca.IsChecked := false;
end;

procedure TfrmSaidaInd.ClearEditButton1Click(Sender: TObject);
begin
 edtFiltroChip.Text:='';
 btnBuscaGridClick(sender);
end;

procedure TfrmSaidaInd.ClearEditButton2Click(Sender: TObject);
begin
 etdFiltroSisbov.Text:='';
 btnBuscaGridClick(sender);
end;

procedure TfrmSaidaInd.ComBastaoRxChar(Sender: TObject);
var
 vChip,vModelo:string;
 pos900:integer;
begin
 vChip  :='';
 vModelo := UpperCase(cbxChipModelo.Selected.Text);
 vChip   := trim(ComBastao.ReadUtf8);
 if vModelo='ALLTAGS' then
  if edtIdentificacao1.Text.Length=0 then
    edtIdentificacao1.Text := StringReplace(vChip,' ','',[rfReplaceAll]);
 if vModelo='ALLFLEX' then
 begin
  if edtIdentificacao1.Text.Length=0 then
  begin
   edtIdentificacao1.Text := StringReplace(vChip,' ','',[rfReplaceAll]);
   edtIdentificacao1Exit(Sender);
  end;
 end;
 if vModelo='TRU-TEST' then
 begin
  if edtIdentificacao1.Text.Length=0 then
  begin
   edtIdentificacao1.Text :=StringReplace(vChip,' ','',[rfReplaceAll]);
   edtIdentificacao1Exit(Sender);
  end
 end;
end;

procedure TfrmSaidaInd.ComRFIDRxChar(Sender: TObject);
var
 vTag:string;
begin
  vTag:='';
  if ComRFID.Active then
   vTag := ComRFID.ReadAnsiString;
  if vTag.Length>0 then
  begin
    vTag := copy(vTag,0,pos('&',vTag));
    vTag := StringReplace(StringReplace(vTag,'$','',[rfReplaceAll]),'&','',[rfReplaceAll]);
    if vTag.Length>0 then
    begin
      edtIdentificacao1.Text := vTag;
      Application.ProcessMessages;
    end;
    vTag :='';
  end;
  Sleep(100);
end;

procedure TfrmSaidaInd.ConctaRFIDSerial(vCom, vModelo: string);
var
 vComInt:string;
 I:integer;
begin
   if vModelo='Ideal' then
   begin
    vFunction:=1;
    vCom   := vCom;
    vComInt:=StringReplace(vCom,'COM','',[rfReplaceAll]);
    if StrToInt(vComInt)>9 then
      vCom := '\\.\'+vCom;
     if ComRFID.Active then
       ComRFID.Active:= false;

      ComRFID.DeviceName := vCom;
      ComRFID.Parity     := TParity.paNone;
      ComRFID.DataBits   := TDataBits.db8;
      ComRFID.StopBits   := TStopBits.sb1;
      ComRFID.BaudRate   := TBaudRate.br115200;
      try
       ComRFID.Active :=true;
       ComRFID.WriteBytes([$AA,$01,$01,$00,$00,$14,$14]);
       while I<=5 do
        begin
          if vRespRFID.Length>0 then
          begin
            Break
          end
          else
          begin
           if I>=5 then
           begin
             ComRFID.Active:= false;
             ComRFID.Close;
             Break
           end
           else
            Sleep(1000);
           inc(i);
          end;
        end;
       except
        on E: Exception do
        end;
       end;
     if ComRFID.Active then
     begin
        ComRFID.WriteBytes([$AA,$02,$FF,$00,$00,$A4,$0F]);
        vIniLeituraRFID       := true;
        btnLerTag.Enabled  := true;
        layConfiguraRFID.Visible := true;
        edtIdentificacao1.Text:='RFID CONECTADO';
     end
     else
     begin
        edtIdentificacao1.Text:='RFID NÃO CONECTADO';
        layConfiguraRFID.Visible := false;
     end;
     layConfiguraRFID.Visible := false;
end;


{ TForm1 }
procedure TfrmSaidaInd.ConectaBastao(vCom, vModelo: string);
var
 chip:String;
 pos900 : integer;
 VComIn : string;
begin
  VComIn := StringReplace(vCom,'COM','',[rfReplaceAll]);
  if StrToInt(VComIn)>9 then
   vCom := '\\.\'+cbxChipPorta.Selected.Text;

  if UpperCase(vModelo)='ALLFLEX' then
  begin
    ComBastao.DeviceName := vCom;
    ComBastao.Parity     := TParity.paNone;
    ComBastao.DataBits   := TDataBits.db8;
    ComBastao.StopBits   := TStopBits.sb1;
    ComBastao.BaudRate   := TBaudRate.br9600;
    ComBastao.Active :=true;
  end;

  if UpperCase(vModelo)='TRU-TEST' then
  begin
    ComBastao.DeviceName := vCom;
    ComBastao.Parity     := TParity.paNone;
    ComBastao.DataBits   := TDataBits.db8;
    ComBastao.StopBits   := TStopBits.sb1;
    ComBastao.BaudRate   := TBaudRate.br9600;
    ComBastao.Active :=true;
  end;

  if UpperCase(vModelo)='ALLTAGS' then
  begin
    ComBastao.DeviceName := vCom;
    ComBastao.Parity     := TParity.paNone;
    ComBastao.DataBits   := TDataBits.db8;
    ComBastao.StopBits   := TStopBits.sb1;
    ComBastao.BaudRate   := TBaudRate.br9600;
    ComBastao.Active :=true;
  end;
end;

procedure TfrmSaidaInd.EditButton3Click(Sender: TObject);
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
    edtProdutorOriLs.Text        := serviceDB.TableProdutoresNOME.AsString;
    vPrpriedadeOrigem            := serviceDB.TableProdutoresID_PROPRIEDADE.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmSaidaInd.EditButton4Click(Sender: TObject);
begin
   serviceDB.TablePropriedades.Close;
   serviceDB.TablePropriedades.Open;
   serviceDB.TablePropriedades.Filtered := false;
   serviceDB.TablePropriedades.Filter   := 'id<>'+serviceDB.vIdPropriedade;
   serviceDB.TablePropriedades.Filtered := true;
   serviceDB.TableProdutores.Open;
  frmCadPropriedades := TfrmCadPropriedades.Create(nil);
  try
    frmPrincipal.vCadGTA :=true;
    frmCadPropriedades.ShowModal;
  finally
    vIdDestinoVenda              := serviceDB.TableProdutoresID.AsString;
    edtProdutorDestinoLS.Text    := serviceDB.TableProdutoresNOME.AsString;
    vPrpriedadeDestino           := serviceDB.TableProdutoresID_PROPRIEDADE.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmSaidaInd.LimpaCampos;
begin
 edtIdentificacao1.Text     :='';
 edtIdentificacao2.Text     :='';
 if chkSemPeso.IsChecked then
  edtPeso.Text              :='0'
 else
  edtPeso.Text              :='';
 edtObservacao.Text         :='';
 edtDias.Text               :='';
 edtLocalAtual.Text         :='';
 edtPesoProj.Text           :='';
 edtgmdUltimoPeso.Text      :='';
 edtGtpUltimo.Text          :='';
 edtIdadeMeses.Text         :='';
 edtDtUltimoPeso.Text       :='';
 edtUltimoPeso.Text         :='';
 edtRaca.Text               :='';
 edtCategoria.Text          :='';
 vIdent2                    :='';
  if SwitcSoChip.IsChecked then
  begin
   edtIdentificacao2.Enabled    := false;
   edtIdentificacao1.Enabled    := true;
  end
  else
  begin
   edtIdentificacao2.Enabled    := true;
   edtIdentificacao1.Enabled    := true;
  end;
end;

function TfrmSaidaInd.LimpaPeso(Peso: String): string;
var
 x,sti: integer;
 st: string;
begin
  st:='';
  for x:=1 to length(Peso) do
  begin
  if (Peso[x] in ['0'..'9','.',',']) then
  st:=st + Peso[x];
  end;
  TryStrToInt(st,sti);
   result:=intToStr(sti);
end;

procedure TfrmSaidaInd.MenuItemEstornaAnimalClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
  vIdLs,vIdVeiculo,vIdAnimal:string;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente Estornar esse animal?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      vIdAnimal   := serviceDB.qryGriAniReProcLSID.AsString;
      vIdLs       := serviceDB.qryGriAniReProcLSID_LOTESAIDA.AsString;
      vIdVeiculo  := serviceDB.qryGriAniReProcLSID_VEICULO_SAIDA.AsString;

      serviceDB.EstornarAnimal(vIdAnimal,vIdLs);
      serviceDB.AbreqryGriAniReProcLS(vIdLs);
      if vIdVeiculo.Length>0 then
       serviceDB.AtualizaLotacaoVeiculo(vIdVeiculo);
      CarregaComboVeiculoSaida(vIdLs);
      CbxVeiculo.ItemIndex:=-1;
      layDadosVeiculo.Visible:= false;
      if SwitcSoChip.IsChecked then
      begin
       edtIdentificacao2.Enabled    := false;
       edtIdentificacao1.Enabled    := true;
      end
      else
      begin
       edtIdentificacao2.Enabled    := true;
       edtIdentificacao1.Enabled    := true;
      end;
    end;
  end);
end;

procedure TfrmSaidaInd.ConectaBalanca(vCom, vModelo: string);
var
 Peso:String;
 PesoI:integer;
 VComIn:string;
 aTaskBalanca:iTask;
begin
  VComIn := StringReplace(vCom,'COM','',[rfReplaceAll]);
  if StrToInt(VComIn)>9 then
      vCom := '\\.\'+cbxBalancaPorta.Selected.Text;

  if UpperCase(vModelo)='IDEAL' then
  begin
    ComBalanca.DeviceName := vCom;
    ComBalanca.Parity     := TParity.paNone;
    ComBalanca.DataBits   := TDataBits.db8;
    ComBalanca.StopBits   := TStopBits.sb1;
    ComBalanca.BaudRate   := TBaudRate.br9600;
    try
      ComBalanca.Active :=true;
      aTaskBalanca := TTask.Create (procedure ()
      begin
        while ComBalanca.Active=true do
        begin
         Peso := ComBalanca.ReadUtf8;
         if peso.Length>2 then
         begin
            Peso := trim(StringReplace(copy(Peso,0,8),'=','',[rfReplaceAll]));
            if TryStrToInt(Peso,PesoI) then
             Peso:='';
            sleep(700);
            if FlagSolicitaPeso>0 then
            begin
              TThread.Synchronize(nil,procedure
              begin
                 edtPeso.Text := IntToStr(PesoI);
                 FlagSolicitaPeso :=0;
              end);
            end;
         end;
        end;
      end);
      aTaskBalanca.Start;
    except
       MessageDlg('Erro ao conectaro ao Balança?', System.UITypes.TMsgDlgType.mtError,
      [System.UITypes.TMsgDlgBtn.mbYes
      ], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
       Exit;
      end);
    end
  end;
  if UpperCase(vModelo)='BACKHAUSER' then
  begin
    ComBalanca.DeviceName := vCom;
    ComBalanca.Parity     := TParity.paNone;
    ComBalanca.DataBits   := TDataBits.db8;
    ComBalanca.StopBits   := TStopBits.sb1;
    ComBalanca.BaudRate   := TBaudRate.br9600;
    ComBalanca.Active :=true;
    aTaskBalanca := TTask.Create (procedure ()
    begin
     while ComBalanca.Active=true do
      begin
       Peso := ComBalanca.ReadUtf8;
       sleep(300);
       if FlagSolicitaPeso>0 then
       begin
        TThread.Synchronize(nil,procedure
        begin
          edtPeso.Text := trim(Peso);
           FlagSolicitaPeso :=0;
        end);
       end;
         Peso:='';
      end;
    end);
    aTaskBalanca.Start;
  end;
  if UpperCase(vModelo)='TRU TEST' then
  begin
    ComBalanca.DeviceName := vCom;
    ComBalanca.Parity     := TParity.paNone;
    ComBalanca.DataBits   := TDataBits.db8;
    ComBalanca.StopBits   := TStopBits.sb1;
    ComBalanca.BaudRate   := TBaudRate.br9600;
    ComBalanca.Active :=true;
    aTaskBalanca := TTask.Create (procedure ()
    begin
     while ComBalanca.Active=true do
      begin
       ComBalanca.WriteUtf8('{RW}');
       sleep(700);
       Peso := ComBalanca.ReadUtf8;
       if peso.Length>0 then
       begin
        if FlagSolicitaPeso>0 then
        begin
         TThread.Synchronize(nil,procedure
         begin
          edtPeso.Text := LimpaPeso(peso);
          Peso:='';
          FlagSolicitaPeso :=0;
         end);
        end;
       end;
     end
    end);
    aTaskBalanca.Start;
  end;
  if UpperCase(vModelo)='DIGISTAR' then
  begin
    ComBalanca.DeviceName := vCom;
    ComBalanca.Parity     := TParity.paEven;
    ComBalanca.DataBits   := TDataBits.db7;
    ComBalanca.StopBits   := TStopBits.sb1;
    ComBalanca.BaudRate   := TBaudRate.br9600;
    try
      ComBalanca.Active :=true;
    except
       MessageDlg('Erro ao conectar ao Balança!!', System.UITypes.TMsgDlgType.mtError,
      [System.UITypes.TMsgDlgBtn.mbYes
      ], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
       Exit;
      end);
    end
  end;
  if UpperCase(vModelo)='COIMMA' then
  begin
    ComBalanca.DeviceName := vCom;
    ComBalanca.Parity     := TParity.paNone;
    ComBalanca.DataBits   := TDataBits.db8;
    ComBalanca.StopBits   := TStopBits.sb1;
    ComBalanca.BaudRate   := TBaudRate.br9600;
    ComBalanca.Active     :=true;
    aTaskBalanca := TTask.Create (procedure ()
    begin
     while ComBalanca.Active=true do
      begin
       Peso := ComBalanca.ReadUtf8;
       if Peso.Length>0 then
       begin
         Peso := Copy(Peso,0,Pos('k',Peso)-1);
         sleep(200);
         if FlagSolicitaPeso>0 then
         begin
           if Peso.Length>0 then
           begin
            TThread.Synchronize(nil,procedure
            begin
               edtPeso.Text := trim(Peso);
               FlagSolicitaPeso :=0;
            end);
           end;
         end;
       end;
      end;
    end);
    aTaskBalanca.Start;
  end;


  if UpperCase(vModelo)='TOLEDO' then
  begin
    ComBalanca.DeviceName := vCom;
    ComBalanca.Parity     := TParity.paNone;
    ComBalanca.DataBits   := TDataBits.db8;
    ComBalanca.StopBits   := TStopBits.sb1;
    ComBalanca.BaudRate   := TBaudRate.br9600;
    ComBalanca.Active :=true;
    aTaskBalanca := TTask.Create (procedure ()
    begin
     while ComBalanca.Active=true do
      begin
       Peso := ComBalanca.ReadUtf8;
       sleep(300);
       if FlagSolicitaPeso>0 then
       begin
          TThread.Synchronize(nil,procedure
          begin
             edtPeso.Text := trim(Peso);
             FlagSolicitaPeso :=0;
          end);
       end;
      end;
    end);
    aTaskBalanca.Start;
  end;
  if UpperCase(vModelo)='TOLEDO MGR 4000' then
  begin
    ComBalanca.DeviceName := vCom;
    ComBalanca.Parity     := TParity.paNone;
    ComBalanca.DataBits   := TDataBits.db8;
    ComBalanca.StopBits   := TStopBits.sb1;
    ComBalanca.BaudRate   := TBaudRate.br9600;
    ComBalanca.Active :=true;
    aTaskBalanca := TTask.Create (procedure ()
    begin
     while ComBalanca.Active=true do
      begin
       Peso := ComBalanca.ReadUtf8;
       sleep(300);
       if FlagSolicitaPeso>0 then
       begin
          TThread.Synchronize(nil,procedure
          begin
             edtPeso.Text := trim(Peso);
             FlagSolicitaPeso :=0;
          end);
       end;
      end;
    end);
    aTaskBalanca.Start;
  end;
end;

procedure TfrmSaidaInd.GeraGridApartacao(idPropriedade:string);
var
 i:integer;
 vQryAux :TFDQuery;
begin
end;

procedure TfrmSaidaInd.gridVeiculosCellClick(const Column: TColumn;
  const Row: Integer);
begin
 vIdVeiculoEra := serviceDB.qryVeiculos.FieldByName('ID').AsString;
end;

procedure TfrmSaidaInd.gridVeiculosEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  serviceDB.qryVeiculos.ApplyUpdates(-1);
end;

procedure TfrmSaidaInd.gridVeiculosEmbarqueEditingDone(Sender: TObject;
  const ACol, ARow: Integer);
begin
  serviceDB.qryVeiculos.ApplyUpdates(-1);
end;

procedure TfrmSaidaInd.AbreQryGTAProc(Tipo, IdPropriedade: string);
begin
  serviceDB.AbreQryGTAProc('E',frmPrincipal.vIDPropriedadePropria);
end;

procedure TfrmSaidaInd.abrirConfiguracaoManejo;
begin
  serviceDB.TableConfigManejo.Close;
  serviceDB.TableConfigManejo.Open;

  if serviceDB.TableConfigManejoPORTA_COM_BALANCA.AsString.Length>0 then
   cbxBalancaPorta.ItemIndex := cbxBalancaPorta.Items.IndexOf(serviceDB.TableConfigManejoPORTA_COM_BALANCA.AsString)
  else
   cbxBalancaPorta.ItemIndex :=-1;

  if serviceDB.TableConfigManejoPORTA_COM_RFID.AsString.Length>0 then
   cbxRFIDPorta.ItemIndex    := cbxRFIDPorta.Items.IndexOf(serviceDB.TableConfigManejoPORTA_COM_RFID.AsString)
  else
   cbxRFIDPorta.ItemIndex    := -1;

  if serviceDB.TableConfigManejoPORTA_COM_BASTAO.AsString.Length>0 then
   cbxChipPorta.ItemIndex    := cbxChipPorta.Items.IndexOf(serviceDB.TableConfigManejoPORTA_COM_BASTAO.AsString)
  else
   cbxChipPorta.ItemIndex    := -1;

  if serviceDB.TableConfigManejoMODELO_BALANCA.AsString.Length>0 then
   cbxBalancaModelo.ItemIndex := cbxBalancaModelo.Items.IndexOf(serviceDB.TableConfigManejoMODELO_BALANCA.AsString)
  else
   cbxBalancaModelo.ItemIndex := -1;

  if serviceDB.TableConfigManejoMODELO_RFID.AsString.Length>0 then
   cbxRFIDModelo.ItemIndex    := cbxRFIDModelo.Items.IndexOf(serviceDB.TableConfigManejoMODELO_RFID.AsString)
  else
   cbxRFIDModelo.ItemIndex    := -1;
  if serviceDB.TableConfigManejoMODELO_BASTAO.AsString.Length >0 then
   cbxChipModelo.ItemIndex    := cbxChipModelo.Items.IndexOf(serviceDB.TableConfigManejoMODELO_BASTAO.AsString)
  else
   cbxChipModelo.ItemIndex    := -1;
  if serviceDB.TableConfigManejoTIPO_IDENTIFICACAO.AsString.Length >0 then
    cbxTipoIdentificacao.ItemIndex := serviceDB.TableConfigManejoTIPO_IDENTIFICACAO.AsInteger
  else
    cbxTipoIdentificacao.ItemIndex := -1;

   if serviceDB.TableConfigManejoTIPO_IDENTIFICACAO.AsString.Length >0 then
    cbxTipoIdentificacao.ItemIndex := serviceDB.TableConfigManejoTIPO_IDENTIFICACAO.AsInteger
  else
    cbxTipoIdentificacao.ItemIndex := -1;

  if serviceDB.TableConfigManejoQTD_IDENTIFICACAO.AsString.Length>0 then
  begin
    if serviceDB.TableConfigManejoQTD_IDENTIFICACAO.AsInteger=1 then
     cbxUsarIdent2.ItemIndex        := 0;
    if serviceDB.TableConfigManejoQTD_IDENTIFICACAO.AsInteger=2 then
     cbxUsarIdent2.ItemIndex        := 1
  end
  else
   cbxUsarIdent2.ItemIndex        := -1;

  chkUsaBastao.IsChecked      := serviceDB.TableConfigManejoUSA_CHIP.AsInteger=1;
  chkUsaBalanca.IsChecked     := serviceDB.TableConfigManejoUSA_BALANCA.AsInteger=1;
  chkRFID.IsChecked           := serviceDB.TableConfigManejoUSA_RFID.AsInteger=1;
  SwitcSoChip.IsChecked       := serviceDB.TableConfigManejoSO_CHIP.AsInteger=1;
  chkSemPeso.IsChecked        := serviceDB.TableConfigManejoSAIDA_SEM_PESO.AsInteger=1;
end;

procedure TfrmSaidaInd.AdicionaAparte(idCurral, NomeCurral, PesoMinimo,
  PesoMaximo: string);
begin
  serviceDB.FCon.Commit;
  Application.ProcessMessages;
  serviceDB.qryApartacao.close;
  serviceDB.qryApartacao.Open;
  serviceDB.qryApartacao.Filtered := false;
  serviceDB.qryApartacao.Filter   := 'ID='+idCurral;
  serviceDB.qryApartacao.Filtered := true;
  if serviceDB.qryApartacao.RecordCount>0 then
  begin
   serviceDB.qryApartacao.Delete;
   serviceDB.qryApartacao.ApplyUpdates(-1);
   serviceDB.qryApartacao.Close;
   serviceDB.qryApartacao.Open;
  end;
   serviceDB.qryApartacao.Insert;
   serviceDB.qryApartacaoID_PROPRIEDADE.AsString  := frmPrincipal.vIDPropriedadePropria;
   serviceDB.qryApartacaoID_USUARIO.AsString      := serviceDB.vIdUserLogado;
   serviceDB.qryApartacaoID_CURRAL_PASTO.AsString := idCurral;
   serviceDB.qryApartacaoCURRAL_PASTO.AsString    := NomeCurral;
   serviceDB.qryApartacaoPESO_MINIMO.AsString     := PesoMinimo;
   serviceDB.qryApartacaoPESO_MAXIMO.AsString     := PesoMaximo;
   try
     serviceDB.qryApartacao.ApplyUpdates(-1);
     serviceDB.FCon.Commit;
     Application.ProcessMessages;
     GeraGridApartacao(frmPrincipal.vIDPropriedadePropria);
   except
     on E: Exception do
      ShowMessage('Erro Ao Inserir Aparte:'+E.Message);
   end;
end;



procedure TfrmSaidaInd.btnAddApartacaoClick(Sender: TObject);
begin
  serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'');
  serviceDB.AtualizaLotacaoGeral(ServiceDB.vIdPropriedade);
  frmPrincipal.vMov :=1;
  try
    frmCadCurral := TfrmCadCurral.Create(Self);
    frmCadCurral.ShowModal;
  finally
    AdicionaAparte(serviceDB.TableCurraisID.AsString,
    serviceDB.TableCurraisCODIGO.AsString,
    serviceDB.TableCurraisPESO_MINIMO.AsString,
    serviceDB.TableCurraisPESO_MAXIMO.AsString);
    frmCadCurral.Free;
  end;
   serviceDB.qryApartacao.Close;
   serviceDB.qryApartacao.Open;
end;

procedure TfrmSaidaInd.btnAlteraPlacaVeiculoClick(Sender: TObject);
begin
 edtPlacaVeiculoSelect.Enabled := true;
 edtPlacaCarreta.Enabled := true;
 edtMotorista.Enabled := true;
 edtCapVeiculoSelect.Enabled   := true;
end;

procedure TfrmSaidaInd.btnBuscaGridClick(Sender: TObject);
var
 vFiltro:string;
begin
 serviceDB.qryGriAniReProcLS.Filtered := false;
 vFiltro:='1=1';
 if edtFiltroChip.Text.Length>0 then
  vFiltro:= vFiltro+' and IDENTIFICACAO_1='+edtFiltroChip.Text.QuotedString;
 if etdFiltroSisbov.Text.Length>0 then
  vFiltro:= vFiltro+' and IDENTIFICACAO_2='+etdFiltroSisbov.Text.QuotedString;
 if vFiltro<>'1=1' then
 begin
  serviceDB.qryGriAniReProcLS.Filter   := vFiltro;
  serviceDB.qryGriAniReProcLS.Filtered := true;
 end
 else
  serviceDB.qryGriAniReProcLS.Filtered := false;
end;

procedure TfrmSaidaInd.btnCancelarClick(Sender: TObject);
var
 vPeso:string;
begin
 recAllWhite.Fill.Color := TAlphaColorRec.White;
 if edtPeso.Text.Length>0 then
  vPeso := StringReplace(edtPeso.Text,',','.',[rfReplaceAll])
 else
  vPeso := '0';
 if(vIDAnimal.Length>0) AND ((edtIdentificacao1.Text.Length>0) OR (edtIdentificacao2.Text.Length>0)) then

 serviceDB.InsereRefugoSaida(
  vIDAnimal,
  cbxLoteSaida.Selected.Text,
  edtIdentificacao1.Text.QuotedString,
  edtIdentificacao2.Text.QuotedString,
  vPeso
 );
 LimpaCampos;
 TThread.CreateAnonymousThread(procedure()
  begin
    TThread.Synchronize(TThread.CurrentThread,
    procedure ()
    begin
     if edtIdentificacao1.Enabled then
      edtIdentificacao1.SetFocus
     else
      edtIdentificacao2.SetFocus;
    end);
   end).Start;
end;

procedure TfrmSaidaInd.btnCancelClick(Sender: TObject);
begin
 layAlteracao.Visible := false;
end;

procedure TfrmSaidaInd.btnConfirmaClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
  vCarencia:string;
begin
  if(CbxVeiculo.ItemIndex=-1) then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Veículo!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      CbxVeiculo.SetFocus;
    end);
    Exit;
  end;

  if(cbxLoteSaida.ItemIndex=-1) then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Lote de Saída!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      cbxLoteSaida.SetFocus;
    end);
    Exit;
  end;

  if(edtIdentificacao1.Text.Length=0)and(edtIdentificacao2.Text.Length=0) then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe pelo menos uma identificação do Animal!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtIdentificacao1.SetFocus;
    end);
    Exit;
  end;
  if (edtPeso.text.Length=0)and(not chkSemPeso.IsChecked) then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o peso do Animal!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtPeso.SetFocus;
    end);
    Exit;
  end;
  if chkSexo.IsChecked then
  begin
    if cbxSexoChk.ItemIndex=0 then
    begin
      if vSexoCHK<>'M' then
      begin
        EmiteSomErro;
        MyShowMessage('Sexo do animal diferente do Checado nas configuraçoes do Manejo '+#13+
        'Sexo do check Macho, sexo do animal Femea',false);
        Exit;
      end;
    end;
    if cbxSexoChk.ItemIndex=1 then
    begin
      if vSexoCHK<>'F' then
      begin
        EmiteSomErro;
        MyShowMessage('Sexo do animal diferente do Checado nas configuraçoes do Manejo '+#13+
        'Sexo do check: Femea, sexo do animal: Macho',false);
        Exit;
      end;
    end;
  end;
  if chkBND.IsChecked then
  begin
    if serviceDB.ChecaBndProdutor(vIdProdutor,vIdent2) then
    begin
       EmiteSomErro;
       myShowMessage('Animal Não encontrado na BND',false);
       exit;
    end;
  end;
  if chkLiberacaoBND.IsChecked then
  begin
    if vDataLiberacao.Length=0 then
    begin
       EmiteSomErro;
       myShowMessage('Animal sem data de liberação',false);
       exit;
    end
   else
   begin
    if strToDate(vDataLiberacao)>date then
    begin
      EmiteSomErro;
      myShowMessage('Animal não liberado,'+#13+' data de liberação:'+vDataLiberacao,FALSE);
      exit;
    end;
   end;
  end;
  if chkCarenciaMedicamento.IsChecked then
  begin
    vCarencia :='';
    vCarencia :=serviceDB.VerificaCarenciaMedicamento(vIDAnimal,dateToStr(Date));
    if vCarencia.Length>0 then
    begin
      EmiteSomErro;
      myShowMessage('Medicamento em Carência'+#13+' Medicamento: '+vCarencia,FALSE);
      exit;
    end;
  end;
  if (vBloquioAnimal=1) AND (edtBloqueado.Text<>'NÃO APTO') then
  begin
    EmiteSomErro;
    myShowMessage('Animal não esta de acordo com o conferência do lote!',FALSE);
    exit;
  end;
  if (vBloquioAnimal=2) AND (edtBloqueado.Text<>'APTO') then
  begin
    EmiteSomErro;
    myShowMessage('Animal não esta de acordo com o conferência do lote!',FALSE);
    exit;
  end;
  if (vBloquioAnimal=0) AND (edtBloqueado.Text<>'NEUTRO') then
  begin
    EmiteSomErro;
    myShowMessage('Animal não esta de acordo com o conferencia do lote!',FALSE);
    exit;
  end;
  try
    serviceDB.UpdateAnimalSaida(vIDAnimal,serviceDB.vIdUserLogado,vIdVeiculo,
    edtPeso.Text,cbxLoteSaida.Selected.text,vIdProdutor,vIdLocalAtual,edtObservacao.Text);
    InsereLogReprocessamento(vIDAnimal,'2');
    vAnimalEdit :=0;
    InfoGridProc;
    LimpaCampos;
    TThread.CreateAnonymousThread(procedure()
    begin
      TThread.Synchronize(TThread.CurrentThread,
      procedure ()
      begin
       if edtIdentificacao1.Enabled then
        edtIdentificacao1.SetFocus
       else
        edtIdentificacao2.SetFocus;
      end);
    end).Start;
    serviceDB.AtualizaLotacaoVeiculo(vIDVeiculo);
    serviceDB.AtualizaLotacao(vIdLocalAtual);
    serviceDB.AbreQryVeiculosEmbarque(vIDVeiculo);
    edtCapVeiculoSelect.Text     := serviceDB.qryVeiculosEmbarqueCAPACIDADE.Asstring;
    edtLotacaoVeiculoSelect.Text := serviceDB.qryVeiculosEmbarqueLOTACAO.Asstring;
    edtPlacaVeiculoSelect.Text   := serviceDB.qryVeiculosEmbarquePLACA.Asstring;
    edtPlacaVeiculoSelect.Enabled:= edtPlacaVeiculoSelect.Text.Length=0;
    
    serviceDB.AbreqryGriAniReProcLS(cbxLoteSaida.Selected.Text);
    if StrToInt(edtLotacaoVeiculoSelect.Text)=StrToInt(edtCapVeiculoSelect.Text) then
    begin
      CarregaComboVeiculoSaida(cbxLoteSaida.Selected.Text);
      layDadosVeiculo.Visible      := false;
      edtIdentificacao1.Enabled    := false;
      edtIdentificacao2.Enabled    := false;
      EmiteSomErro;
      MyShowMessage('Veículo Lotado selecione outro!!',false);
    end;
    InfoGridProc;
  except
   on E: Exception do
   begin
     EmiteSomErro;
     MyShowMessage('Erro ao inserir o animal:'+e.message,false);
     Exit;
   end;
  end;
end;

procedure TfrmSaidaInd.btnConfirmaLsClick(Sender: TObject);
begin
 layPerifericos.Visible :=true;
 CarregaComboLoteSaida;
 tbPrincipal.ActiveTab := tbiSaiInd;
end;

procedure TfrmSaidaInd.btnConfirmarClick(Sender: TObject);
begin
 if edtNovoPesoSaida.Text.Length=0 then
 begin
  MyShowMessage('Informe o Novo Peso de Saída',false);
  edtProdutorOriLs.SetFocus;
  Exit;
 end;
 try
  serviceDB.AlteraPesoSaidaTelaProc(
   cbxLoteSaida.Selected.Text,
   serviceDB.qryGriAniReProcLSID.AsString,StringReplace(edtNovoPesoSaida.Text,',','.',[rfReplaceAll])
   );
   MyShowMessage('Peso de Saída alterado com sucesso!',false);
   layAlteracao.Visible := false;
   serviceDB.AbreqryGriAniReProcLS(cbxLoteSaida.Selected.Text);
   edtIdentificacao1.SetFocus;
 except
 end;
end;

procedure TfrmSaidaInd.btnCriarLoteClick(Sender: TObject);
var
 vBloqueio:string;
begin
   if(edtProdutorOriLs.Text.Length=0)then
   begin
     MyShowMessage('Informe o produtor de Origem',false);
     edtProdutorOriLs.SetFocus;
     Exit;
   end;
  if(edtProdutorDestinoLS.Text.Length=0)then
   begin
     MyShowMessage('Informe o produtor de Destino',false);
     edtProdutorDestinoLS.SetFocus;
     Exit;
   end;
   if(edtDataEmbarqueLS.Text.Length=0)then
   begin
     MyShowMessage('Informe a Data de Embarque',false);
     edtDataEmbarqueLS.SetFocus;
     Exit;
   end;
   vBloqueio := IntToStr(cbxBloqueio.ItemIndex);
   try
    if vEditaLS=0 then
    begin
     vLoteSaida := serviceDB.InsereRetornaLoteSaida(
      vProdutorOrigem,
      vPrpriedadeOrigem,
      vIdDestinoVenda,
      vPrpriedadeDestino,
      dateToStr(edtDataEmbarqueLS.Date),
      vBloqueio);
      MyShowMessage('Lote gerado com sucesso!',false);
      layVeiculos.Enabled     :=true;
    end
    else
    begin
      serviceDB.EditaRetornaLoteSaida(
       cbxLoteSaida.Selected.Text,
       vProdutorOrigem,
       vPrpriedadeOrigem,
       vIdDestinoVenda,
       vPrpriedadeDestino,
       dateToStr(edtDataEmbarqueLS.Date),
       vBloqueio);


        vIdProdutorProp                := serviceDB.RetornaProdutorPropLs(cbxLoteSaida.Selected.Text);
        vIdProdutorDestino             := serviceDB.RetornaProdutorPropLsDestino(cbxLoteSaida.Selected.Text);
        vBloquioAnimal                 := serviceDB.RetornaBloqueioAnimai(cbxLoteSaida.Selected.Text);
        edtCapVeiculoSelect.Text       :='0';
        edtLotacaoVeiculoSelect.Text   :='0';
        edtPlacaVeiculoSelect.Text     :='';
        layDadosVeiculo.Visible        := false;
        if not chkSemPeso.IsChecked then
         edtPeso.Enabled             := true;
        CarregaComboVeiculoSaida(cbxLoteSaida.Selected.Text);
        serviceDB.AbreqryGriAniReProcLS(cbxLoteSaida.Selected.Text);
        if SwitcSoChip.IsChecked then
        begin
         edtIdentificacao2.Enabled    := false;
         edtIdentificacao1.Enabled    := true;
        end
        else
        begin
         edtIdentificacao2.Enabled    := true;
         edtIdentificacao1.Enabled    := true;
        end;
        InfoGridProc;

        MyShowMessage('Lote Editado com sucesso!',false);
        tbPrincipal.ActiveTab := tbiSaiInd;
    end;

   except

   end;
end;

procedure TfrmSaidaInd.btnEraPorVeiculoClick(Sender: TObject);
begin
if vIdVeiculoEra.Length=0 then
 begin
  MyShowMessage('Selecione um veículo!',false);
  Exit;
 end
 else
 begin
   SerRel.AbreEraEmbarque(vLoteSaida,vIdVeiculoEra);
   if not serRel.qryRelEraEmbaque.IsEmpty then
    serRel.ppRepRelEraEmbaque.Print
   else
   begin
     MyShowMessage('Veiculo Sem dados para gerar esse relatorio!',false);
   end;
 end;
end;

procedure TfrmSaidaInd.btnGerarVeiculosClick(Sender: TObject);
var
 i,vMaxId :integer;
begin
 if edtQtdVeiculos.Text.Length=0 then
 begin
   myShowMessage('Informa a quantidade de Veiculos a serem gerados!',false);
   edtQtdVeiculos.SetFocus;
   Exit;
 end;
 if edtCapacidadeVeiculo.Text.Length=0 then
 begin
   myShowMessage('Informa a Capacidade dos Veiculos a serem gerados!',false);
   edtCapacidadeVeiculo.SetFocus;
   Exit;
 end;
 if cbxTipoVeiculo.ItemIndex=-1 then
 begin
   myShowMessage('Informa o Tipo dos Veiculos a serem gerados!',false);
   cbxTipoVeiculo.SetFocus;
   Exit;
 end;
 vMaxId := strToInt(serviceDB.RetornaMaxIdTruck)+1;
 for I := 0 to  strToInt(edtQtdVeiculos.text) -1 do
 begin
   if frmPrincipal.vIdBaseCampo='0' then
  begin
   serviceDB.qryVeiculos.Close;
   serviceDB.qryVeiculos.Open;
   serviceDB.qryVeiculos.Insert;
   serviceDB.qryVeiculosID_LOTESAIDA.AsString  := cbxLoteSaida.Selected.Text;
   serviceDB.qryVeiculosCAPACIDADE.AsString    := edtCapacidadeVeiculo.Text;
   serviceDB.qryVeiculosID_USER.AsString       := serviceDB.vIdUserLogado;
   serviceDB.qryVeiculosTipo.AsString          := cbxTipoVeiculo.Selected.Text;
   serviceDB.qryVeiculosNOME.AsString          := 'Veiculo-'+serviceDB.RetornaMaxTruck(cbxLoteSaida.Selected.Text);
   serviceDB.qryVeiculosID_BASE_CAMPO.AsString :='0';
   try
    serviceDB.qryVeiculos.ApplyUpdates(-1);
   except
    on E: Exception do
      myShowMessage('Erro Ao Gerar Veiculo(s):'+E.Message,false);
   end
  end
  else
  begin
   serviceDB.qryVeiculos.Close;
   serviceDB.qryVeiculos.Open;
   serviceDB.qryVeiculos.Insert;
   serviceDB.qryVeiculosID.AsInteger           := vMaxId+I;
   serviceDB.qryVeiculosID_LOTESAIDA.AsString  := cbxLoteSaida.Selected.Text;
   serviceDB.qryVeiculosCAPACIDADE.AsString    := edtCapacidadeVeiculo.Text;
   serviceDB.qryVeiculosTipo.AsString          := cbxTipoVeiculo.Selected.Text;
   serviceDB.qryVeiculosID_USER.AsString       := serviceDB.vIdUserLogado;
   serviceDB.qryVeiculosNOME.AsString          := 'Veiculo-'+serviceDB.RetornaMaxTruck(cbxLoteSaida.Selected.Text);
   serviceDB.qryVeiculosID_BASE_CAMPO.AsString :=frmPrincipal.vIdBaseCampo;
   try
    serviceDB.qryVeiculos.ApplyUpdates(-1);
   except
    on E: Exception do
      myShowMessage('Erro Ao Gerar Veiculo(s):'+E.Message,false);
   end
  end;
 end;
 serviceDB.AbreQryVeiculos(cbxLoteSaida.Selected.Text);
end;

procedure TfrmSaidaInd.MyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TfrmSaidaInd.btnLerTagClick(Sender: TObject);
var
 vFileList   : TStringList;
 vFileStream : TStream;
 DirArq,Arq,vTagNew,dirParam,Dir  : string;
 qtdLinha    : integer;
begin
  if ComRFID.Active then
  begin
    vFunction:=3;
    ComRFID.WriteBytes([$AA,$02,$FF,$00,$00,$A4,$0F]);
    sleep(200);
    vFunction:=2;
    ComRFID.WriteBytes([$AA,$02,$10,$00,$02,$01,$01,$71,$AD]);
    vIniLeituraRFIDControle := true;
  end;
  FlagSolicitaPeso:=0;
  edtIdentificacao1.SetFocus;
end;

procedure TfrmSaidaInd.btnNovoLSClick(Sender: TObject);
begin
   vEditaLS:=0;
   ToolBarConfirma.Visible      := true;
   edtProdutorDestinoLS.Text := '';
   edtProdutorOriLs.Text     := '';
   cbxBloqueio.ItemIndex     := -1;
   layVeiculos.Enabled       := FALSE;
   lblButonConfirma.Text     := 'Criar';
   tbPrincipal.ActiveTab     := tbiCadLoteSaida;
end;

procedure TfrmSaidaInd.btnEditarLSClick(Sender: TObject);
begin
 vEditaLS:=1;
 if cbxLoteSaida.ItemIndex>-1 then
 begin
   ToolBarConfirma.Visible      := false;
   serviceDB.AbreLoteSaidaPorID(cbxLoteSaida.Selected.Text);
   edtProdutorDestinoLS.Text    := serviceDB.qryGridLoteSaidaPRODUTORDESTINO.AsString;
   vIdDestinoVenda              := serviceDB.qryGridLoteSaidaID_PRODUTOR_DESTINO.AsString;
   vPrpriedadeDestino           := serviceDB.qryGridLoteSaidaIDPROPRIEDADEDESTINO.AsString;
   edtDataEmbarqueLS.Date       := serviceDB.qryGridLoteSaidaDATA_EMBARQUE.AsDateTime;

   edtProdutorOriLs.Text        := serviceDB.qryGridLoteSaidaPRODUTORORIGEM.AsString;
   vProdutorOrigem              := serviceDB.qryGridLoteSaidaID_PRODUTOR_ORIGEM.AsString;
   edtProdutorOriLs.Text        := serviceDB.qryGridLoteSaidaPRODUTORORIGEM.AsString;
   vPrpriedadeOrigem            := serviceDB.qryGridLoteSaidaIDPROPRIEDADEORIGEM.AsString;

   cbxBloqueio.ItemIndex     := serviceDB.qryGridLoteSaidaBLOQUEIO.AsInteger;

   layVeiculos.Enabled       := true;
   serviceDB.AbreQryVeiculos(cbxLoteSaida.Selected.Text);
   lblButonConfirma.Text     := 'Editar';
   tbPrincipal.ActiveTab     := tbiCadLoteSaida;
 end
 else
  MyShowMessage('Selecione o lote!',false);
end;

procedure TfrmSaidaInd.btnVincularGTAClick(Sender: TObject);
var
 vQrt:TFDQuery;
begin
 frmVeiculosEmbarquer := TfrmVeiculosEmbarquer.Create(Self);
  try
    frmVeiculosEmbarquer.vIdLs :=cbxLoteSaida.Selected.Text;
    frmVeiculosEmbarquer.ShowModal;
  finally
    frmVeiculosEmbarquer.Free;
  end;
end;

function TfrmSaidaInd.BuscaDadosAnimal(Identificacao,
  Tipo: string): Boolean;
var
 vQryAux : TFDQuery;
begin
 serviceDB.fCon.Commit;
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT A.*,c.NOME CATEGORIA,r.NOME RACA,CU.CODIGO LOCAL,');
   Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO CURRENT_DATE) ERA_ATUAL,');
   Add('DATEDIFF(DAY FROM DATA_ULTIMO_PESO TO CURRENT_DATE)+1 DIAS,');
   Add('(SELECT * FROM RETORNA_PESO_MEDIO_ATUAL_IND(CURRENT_DATE,A.ID))PESO_PROJ');
   Add('FROM ANIMAL A');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('WHERE A.STATUS=1 AND A.ID_PRODUTOR='+vIdProdutorProp);
   Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   if Tipo='1' then
    Add('AND A.IDENTIFICACAO_1=:IDENT');
   if Tipo='2' then
    Add('AND A.IDENTIFICACAO_2=:IDENT');
   ParamByName('IDENT').AsString :=Identificacao;
   Open;

   if not vQryAux.IsEmpty then
   begin
     vIDAnimal    := vQryAux.FieldByName('ID').AsString;
     vIdCategoria := vQryAux.FieldByName('ID_CATEGORIA').AsString;
     vIdRaca      := vQryAux.FieldByName('ID_RACA').AsString;
     vIdLocalAtual:= vQryAux.FieldByName('ID_LOCAL').AsString;
     vIdProdutor  := vQryAux.FieldByName('ID_PRODUTOR').AsString;
     edtCategoria.Text      := vQryAux.FieldByName('CATEGORIA').AsString;
     edtRaca.Text           := vQryAux.FieldByName('RACA').AsString;
     edtLocalAtual.Text     :=vQryAux.FieldByName('LOCAL').AsString;
     edtIdadeMeses.Text     :=vQryAux.FieldByName('ERA_ATUAL').AsString;
     edtObservacao.Text     :=vQryAux.FieldByName('OBSERVACAO').AsString;
     edtDtUltimoPeso.Text   :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsString;
     vDataUltimoPeso        :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsDateTime;
     vUltimoPeso            :=vQryAux.FieldByName('ULTIMO_PESO').AsFloat;
     edtUltimoPeso.Text     :=vQryAux.FieldByName('ULTIMO_PESO').AsString;
     edtPesoProj.Text       :=vQryAux.FieldByName('PESO_PROJ').AsString;
     edtIdentificacao2.Text :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
     if vQryAux.FieldByName('DATA_LIBERACAO').AsString.Length>0 then
      edtDataLiberacaoBND.Text  :=vQryAux.FieldByName('DATA_LIBERACAO').AsString
     else
      edtDataLiberacaoBND.Text  :='Sem Dados!';

     vIdent2                :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
     if edtIdentificacao1.Text.Length=0 then
       edtIdentificacao1.Text :=vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
     edtDias.Text           := intToStr(trunc(vDataUltimoPeso-date)+1);
     vDiasUltimoPeso        := trunc(vDataUltimoPeso-date)+1;
     Result := true;
   end
   else
   begin
     vIdCategoria           := '';
     vIdRaca                := '';
     vIdLocal               := '';
     edtCategoria.Text      := '';
     edtRaca.Text           := '';
     edtLocalAtual.Text     := '';
     edtIdadeMeses.Text     := '';
     Result := false;
   end
 end;
 vQryAux.Free;
end;

procedure TfrmSaidaInd.CarregaComboLoteSaida;
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

procedure TfrmSaidaInd.CarregaComboVeiculoSaida(ls: String);
var
 vQryAux:TFDQuery;
 I :INTEGER;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 CbxVeiculo.Items.Clear;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM VEICULOS_EMBARQUE');
   Add('WHERE STATUS=1 AND LOTADO=0 AND ID_LOTESAIDA='+ls);
   Add('ORDER BY ID');
   Open;
   while not vQryAux.eof  do
   begin
     CbxVeiculo.Items.AddObject(vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('ID').AsInteger));
     vQryAux.Next;
   end;
   for i := 0 to CbxVeiculo.Count - 1 do
   begin
     CbxVeiculo.ListBox.ListItems[i].TextSettings.Font.Size := 20;
     CbxVeiculo.ListBox.ListItems[i].StyledSettings := CbxVeiculo.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
   end;
 end;
 vQryAux.Free;
end;

procedure TfrmSaidaInd.CarregaCurralPastoGrupo;
begin
end;

procedure TfrmSaidaInd.cbxCurralPastoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
 begin
   edtObservacao.SetFocus;
 end;
end;

procedure TfrmSaidaInd.cbxLoteSaidaChange(Sender: TObject);
begin
 if cbxLoteSaida.ItemIndex>-1 then
 begin
  vIdProdutorProp                := serviceDB.RetornaProdutorPropLs(cbxLoteSaida.Selected.Text);
  vIdProdutorDestino             := serviceDB.RetornaProdutorPropLsDestino(cbxLoteSaida.Selected.Text);
  vBloquioAnimal                 := serviceDB.RetornaBloqueioAnimai(cbxLoteSaida.Selected.Text);
  edtCapVeiculoSelect.Text       :='0';
  edtLotacaoVeiculoSelect.Text   :='0';
  edtPlacaVeiculoSelect.Text     :='';
  layDadosVeiculo.Visible        := false;
  if not chkSemPeso.IsChecked then
   edtPeso.Enabled             := true;
  CarregaComboVeiculoSaida(cbxLoteSaida.Selected.Text);
  serviceDB.AbreqryGriAniReProcLS(cbxLoteSaida.Selected.Text);
  
  LimpaCampos;
  InfoGridProc;
 end;
end;

procedure TfrmSaidaInd.edtCapVeiculoSelectExit(Sender: TObject);
begin
 SalvaAlteracaoVeiculo;
end;

procedure TfrmSaidaInd.edtCapVeiculoSelectKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
  edtIdentificacao1.SetFocus;
end;

procedure TfrmSaidaInd.edtCapVeiculoSelectKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13)or(key=9) then
   edtIdentificacao1.SetFocus;
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmSaidaInd.edtFiltroChipKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) then
 begin
  btnBuscaGridClick(sender);
 end
end;

procedure TfrmSaidaInd.edtGtpUltimoChangeTracking(Sender: TObject);
var
 gmd :string;
 dias:integer;
begin
 if edtGtpUltimo.Text.Length>0 then
 begin
   gmd                   := FormatFloat('0.00',strToFloat(edtGtpUltimo.Text)/edtDias.Text.ToInteger);
   edtgmdUltimoPeso.Text := gmd;
 end;
end;

procedure TfrmSaidaInd.edtIdadeMesesKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13)or(key=9) then
   edtIdentificacao1.SetFocus;
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmSaidaInd.edtIdentificacao1Exit(Sender: TObject);
 var
 vQryAux : TFDQuery;
 dlg :TFrmmsgDlg;
begin
 serviceDB.fCon.Commit;
 vSexoCHK :='';
 if edtIdentificacao1.Text.Length>0 then
 begin
  vQryAux            := TFDQuery.Create(nil);
  vQryAux.Connection := serviceDB.fCon;
  with vQryAux,vQryAux.SQL do
  begin
   Clear;
   Add('SELECT A.*,p.NOME PRODUTOR,c.NOME CATEGORIA,C.SEXO,r.NOME RACA,CU.CODIGO LOCAL,');
   Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO CURRENT_DATE) ERA_ATUAL,');
   Add('DATEDIFF(DAY FROM DATA_ULTIMO_PESO TO CURRENT_DATE)+1 DIAS,');
   Add('A.peso_estimado PESO_PROJ');
   Add(',AXR.NOME REBANHO,');
   Add('case ');
   Add(' when bloqueio=0 then ''NEUTRO''');
   Add(' when bloqueio=1 then ''NÃO APTO''');
   Add(' when bloqueio=2 then ''APTO''');
   Add('end bloqueado');
   Add('FROM ANIMAL A');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('JOIN PRODUTORES P ON A.ID_PRODUTOR=P.ID');
   Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
   Add('WHERE A.STATUS=1 AND A.IDENTIFICACAO_1=:IDENT');
   ParamByName('IDENT').AsString := edtIdentificacao1.text;
   Open;
   if not vQryAux.IsEmpty then
   begin
    if(vQryAux.FieldByName('ID_PROPRIEDADE').AsString.Length>0)and
     (serviceDB.vIdPropriedade<>vQryAux.FieldByName('ID_PROPRIEDADE').AsString) then
    begin
     EmiteSomErro;
     if serviceDB.vNomePropriedade.Length=0 then
      serviceDB.vNomePropriedade := serviceDB.RetornaPropriedade(serviceDB.vIdPropriedade);
     MyShowMessage('Animal ativo em outra propriedade!'+#13+
      'Propriedade Logada : '+serviceDB.vNomePropriedade+#13+
      'ID Propriedade Animal : '+serviceDB.RetornaPropriedade(FieldByName('ID_PROPRIEDADE').AsString),false);
     Exit;
    end;//se a propriedade for diferente
    recAllWhite.Fill.Color := TAlphaColorRec.White;
    vSexoCHK     := vQryAux.FieldByName('SEXO').AsString;
    vIDAnimal    := vQryAux.FieldByName('ID').AsString;
    vIdCategoria := vQryAux.FieldByName('ID_CATEGORIA').AsString;
    vIdRaca      := vQryAux.FieldByName('ID_RACA').AsString;
    vIdLocalAtual:= vQryAux.FieldByName('ID_LOCAL').AsString;
    vIdProdutor  := vQryAux.FieldByName('ID_PRODUTOR').AsString;
    edtCategoria.Text      := vQryAux.FieldByName('CATEGORIA').AsString;
    edtRaca.Text           := vQryAux.FieldByName('RACA').AsString;
    edtLocalAtual.Text     :=vQryAux.FieldByName('LOCAL').AsString;
    edtIdadeMeses.Text     :=vQryAux.FieldByName('ERA_ATUAL').AsString;
    edtObservacao.Text     :=vQryAux.FieldByName('OBSERVACAO').AsString;
    edtDtUltimoPeso.Text   :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsString;
    vDataUltimoPeso        :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsDateTime;
    vUltimoPeso            :=vQryAux.FieldByName('ULTIMO_PESO').AsFloat;
    edtUltimoPeso.Text     :=vQryAux.FieldByName('ULTIMO_PESO').AsString;
    edtPesoProj.Text       :=vQryAux.FieldByName('PESO_PROJ').AsString;
    edtIdentificacao2.Text :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
    vIdent2                :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
    edtBloqueado.Text      := vQryAux.FieldByName('bloqueado').AsString;
    if edtIdentificacao1.Text.Length=0 then
     edtIdentificacao1.Text :=vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
    edtDias.Text           :=vQryAux.FieldByName('DIAS').AsString;
    vDiasUltimoPeso        := trunc(vDataUltimoPeso-date)+1;
    edtRebanho.Text        := vQryAux.FieldByName('REBANHO').AsString;
    if vQryAux.FieldByName('DATA_LIBERACAO').AsString.Length>0 then
    begin
     vDataLiberacao  := vQryAux.FieldByName('DATA_LIBERACAO').AsString;
     edtDataLiberacaoBND.Text := vDataLiberacao;
    end
    else
     edtDataLiberacaoBND.Text := 'Sem dados!';
    btnConfirma.Enabled := true;
    if (chkLerConfirma.IsChecked) and (chkSemPeso.IsChecked)
    and(edtIdentificacao1.Text.Length>0)then
     btnConfirmaClick(sender)
    else
    begin
     TThread.CreateAnonymousThread(
     procedure
     begin
      TThread.Synchronize( nil,
      procedure
      begin
       if edtIdentificacao2.Enabled then
        edtIdentificacao2.SetFocus
       else
        if edtPeso.Enabled then
         edtPeso.SetFocus
        else
         edtObservacao.SetFocus;
      end);
     end).Start;
    end;
   end//se tiver ativo
   else
   begin
    Clear;
    Add('SELECT A.*,p.NOME PRODUTOR,c.NOME CATEGORIA,C.SEXO,r.NOME RACA,CU.CODIGO LOCAL,');
    Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO CURRENT_DATE) ERA_ATUAL,');
    Add('DATEDIFF(DAY FROM DATA_PROC TO CURRENT_DATE)+1 DIAS,');
    Add('A.peso_estimado PESO_PROJ');
    Add(',AXR.NOME REBANHO,');
    Add('case ');
    Add(' when bloqueio=0 then ''NEUTRO''');
    Add(' when bloqueio=1 then ''NÃO APTO''');
    Add(' when bloqueio=2 then ''APTO''');
    Add('end bloqueado');
    Add('FROM ANIMAL A');
    Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
    Add('JOIN RACA R ON R.ID=A.ID_RACA');
    Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
    Add('JOIN PRODUTORES P ON A.ID_PRODUTOR=P.ID');
    Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
    Add('WHERE  A.IDENTIFICACAO_1=:IDENT');
    ParamByName('IDENT').AsString := edtIdentificacao1.text;
    Open;
    if vQryAux.IsEmpty then
    begin
     EmiteSomErro;
     MyShowMessage('Identificação não encontrada no banco de dados!',false);
     Exit;
    end;
    if vQryAux.FieldByName('STATUS').AsInteger<>1 then//INATIVO OU EMBARCADO
    begin
     if vQryAux.FieldByName('ID_LOTESAIDA').AsString.Length>0 then
     begin
      EmiteSomErro;
      MyShowMessage('Animal ja embarcado no lote de saída ='+vQryAux.FieldByName('ID_LOTESAIDA').AsString,false);
      Exit;
     end;
     EmiteSomErro;
     MyShowMessage('Animal Inativo no sistema!',false);
     Exit;
    end;
   end//se nao estiver ativo
  end;//with vQryAux
 end;//if edtIdentificacao1
end;

procedure TfrmSaidaInd.edtIdentificacao1KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
 begin
  if edtIdentificacao2.Enabled=false then
  begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
      procedure
      begin
        if edtPeso.Enabled then
         edtPeso.SetFocus
        else
         edtObservacao.SetFocus;
       end
      );
    end
    ).Start;
  end
  else
  begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
      procedure
      begin
         edtIdentificacao2.SetFocus;
       end
      );
    end
    ).Start;
  end
 end;
end;

procedure TfrmSaidaInd.edtIdentificacao2Exit(Sender: TObject);
var
 vQryAux : TFDQuery;
 dlg :TFrmmsgDlg;
 vManejoDG_SISBOV:string;
begin
 serviceDB.fCon.Commit;
 vDataLiberacao :='';
 if edtIdentificacao2.Text.Length>0 then
 begin
  if (serviceDB.vRastreada='1') and (edtIdentificacao2.Text.Length=7) then
  begin
   vManejoDG_SISBOV :=  serviceDBN.ConsultaManejoDigito(edtIdentificacao2.Text);
   if vManejoDG_SISBOV.Length>0 then
    edtIdentificacao2.Text := vManejoDG_SISBOV;
  end;
  if edtIdentificacao2.Text.Length>15 then
   if copy(edtIdentificacao2.Text,0,1)='0' then
  edtIdentificacao2.Text := copy(edtIdentificacao2.Text,2,edtIdentificacao2.Text.Length);
  vQryAux            := TFDQuery.Create(nil);
  vQryAux.Connection := serviceDB.fCon;
  vSexoCHK           :='';
  with vQryAux,vQryAux.SQL do
  begin
    Clear;
    Add('SELECT A.*,p.NOME PRODUTOR,c.NOME CATEGORIA,C.SEXO,r.NOME RACA,CU.CODIGO LOCAL,');
    Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO CURRENT_DATE) ERA_ATUAL,');
    Add('DATEDIFF(DAY FROM DATA_PROC TO CURRENT_DATE)+1 DIAS,');
    Add('(SELECT * FROM RETORNA_PESO_MEDIO_ATUAL_IND(CURRENT_DATE,A.ID))PESO_PROJ');
    Add(',AXR.NOME REBANHO,');
    Add('case');
    Add('when bloqueio=0 then ''NEUTRO''');
    Add('when bloqueio=1 then ''NÃO APTO''');
    Add('when bloqueio=2 then ''APTO''');
    Add('end bloqueado,');
    Add('PR.NOME PROPRIEDADE');
    Add('FROM ANIMAL A');
    Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
    Add('JOIN RACA R ON R.ID=A.ID_RACA');
    Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
    Add('JOIN PRODUTORES P ON A.ID_PRODUTOR=P.ID');
    Add('JOIN PROPRIEDADES PR ON A.ID_PROPRIEDADE=PR.ID');
    Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
    Add('WHERE A.STATUS=1 AND A.IDENTIFICACAO_2=:IDENT');
    Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
    ParamByName('IDENT').AsString := edtIdentificacao2.text;
    Open;
    if not vQryAux.IsEmpty then
    begin
     if(vQryAux.FieldByName('ID_PROPRIEDADE').AsString.Length>0)and
     (serviceDB.vIdPropriedade<>vQryAux.FieldByName('ID_PROPRIEDADE').AsString) then//produtor diferente do lote de saida
     begin
       EmiteSomErro;
       MyShowMessage('Animal ativo em outra propriedade!'+#13+
       'Propriedade Logada : '+serviceDB.vNomePropriedade+#13+
       'Propriedade Animal : '+FieldByName('PROPRIEDADE').AsString,false);
       Exit;
     end;//Propriedade diferente do lote de saida
     btnConfirma.Enabled := true;
     recAllWhite.Fill.Color := TAlphaColorRec.White;
     vSexoCHK     := vQryAux.FieldByName('SEXO').AsString;
     vIDAnimal    := vQryAux.FieldByName('ID').AsString;
     vIdCategoria := vQryAux.FieldByName('ID_CATEGORIA').AsString;
     vIdRaca      := vQryAux.FieldByName('ID_RACA').AsString;
     vIdLocalAtual:= vQryAux.FieldByName('ID_LOCAL').AsString;
     vIdProdutor  := vQryAux.FieldByName('ID_PRODUTOR').AsString;
     edtCategoria.Text      := vQryAux.FieldByName('CATEGORIA').AsString;
     edtRaca.Text           := vQryAux.FieldByName('RACA').AsString;
     edtLocalAtual.Text     :=vQryAux.FieldByName('LOCAL').AsString;
     edtIdadeMeses.Text     :=vQryAux.FieldByName('ERA_ATUAL').AsString;
     edtObservacao.Text     :=vQryAux.FieldByName('OBSERVACAO').AsString;
     edtDtUltimoPeso.Text   :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsString;
     vDataUltimoPeso        :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsDateTime;
     vUltimoPeso            :=vQryAux.FieldByName('ULTIMO_PESO').AsFloat;
     edtUltimoPeso.Text     :=vQryAux.FieldByName('ULTIMO_PESO').AsString;
     edtPesoProj.Text       :=vQryAux.FieldByName('PESO_PROJ').AsString;
     edtIdentificacao2.Text :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
     vIdent2                :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
     if edtIdentificacao1.Text.Length=0 then
       edtIdentificacao1.Text :=vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
     edtDias.Text           :=vQryAux.FieldByName('DIAS').AsString;
     vDiasUltimoPeso        := trunc(vDataUltimoPeso-date)+1;
     edtRebanho.Text        := vQryAux.FieldByName('REBANHO').AsString;
     edtBloqueado.Text      := vQryAux.FieldByName('bloqueado').AsString;
     if vQryAux.FieldByName('DATA_LIBERACAO').AsString.Length>0 then
     begin
       vDataLiberacao  := vQryAux.FieldByName('DATA_LIBERACAO').AsString;
       edtDataLiberacaoBND.Text := vDataLiberacao;
     end
     else
      edtDataLiberacaoBND.Text := 'Sem dados!';
     if chkBND.IsChecked then
     begin
       if serviceDB.ChecaBndProdutor(vIdProdutor,vIdent2) then
       begin
         EmiteSomErro;
         myShowMessage('Animal Não encontrado na BND',false);
         exit;
       end;
     end;
     if chkLiberacaoBND.IsChecked then
     begin
       if vDataLiberacao.Length=0 then
       begin
         EmiteSomErro;
         myShowMessage('Animal sem data de liberação',false);
         exit;
       end
       else
       begin
         if strToDate(vDataLiberacao)>date then
         begin
           EmiteSomErro;
           myShowMessage('Animal não liberado,'+#13+' data de liberação:'+vDataLiberacao,FALSE);
           exit;
         end;
       end;
     end;
     if (chkLerConfirma.IsChecked) and (chkSemPeso.IsChecked) then
      btnConfirmaClick(sender);
    end//se estiver ativo
    else
    begin
     Clear;
     Add('SELECT A.*,p.NOME PRODUTOR,c.NOME CATEGORIA,C.SEXO,r.NOME RACA,CU.CODIGO LOCAL,');
     Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO CURRENT_DATE) ERA_ATUAL,');
     Add('DATEDIFF(DAY FROM DATA_PROC TO CURRENT_DATE)+1 DIAS,');
     Add('(SELECT * FROM RETORNA_PESO_MEDIO_ATUAL_IND(CURRENT_DATE,A.ID))PESO_PROJ');
     Add(',AXR.NOME REBANHO,');
     Add('case ');
     Add(' when bloqueio=1 then ''SIM''');
     Add(' else ''NÃO''');
     Add('end bloqueado');
     Add('FROM ANIMAL A');
     Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
     Add('JOIN RACA R ON R.ID=A.ID_RACA');
     Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
     Add('JOIN PRODUTORES P ON A.ID_PRODUTOR=P.ID');
     Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
     Add('WHERE A.IDENTIFICACAO_2=:IDENT');
     Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
     ParamByName('IDENT').AsString := edtIdentificacao2.text;
     Open;
     if vQryAux.IsEmpty then
     begin
      EmiteSomErro;
      MyShowMessage('Identificação não encontrada nessa Propriedade!',false);
      Exit;
     end;
     if vQryAux.FieldByName('STATUS').AsInteger<>1 then//INATIVO OU EMBARCADO
     begin
      if vQryAux.FieldByName('ID_LOTESAIDA').AsString.Length>0 then
      begin
       EmiteSomErro;
       MyShowMessage('Animal ja embarcado no lote de saída ='+vQryAux.FieldByName('ID_LOTESAIDA').AsString,false);
       Exit;
      end;
       EmiteSomErro;
       MyShowMessage('Animal Inativo no sistema!',false);
       Exit;
     end;
    end//se for inativo
  end;
 end;
end;

procedure TfrmSaidaInd.edtIdentificacao2KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
if (key=13) or (key=9) then
 begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
      procedure
      begin
         if edtPeso.Enabled then
          edtPeso.SetFocus
         else
          edtObservacao.SetFocus;
       end
      );
    end
    ).Start;
 end;
end;

procedure TfrmSaidaInd.edtMotoristaExit(Sender: TObject);
begin
  SalvaAlteracaoVeiculo;
end;

procedure TfrmSaidaInd.edtObservacaoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
   btnConfirmaClick(Sender);
end;

procedure TfrmSaidaInd.edtPesoChangeTracking(Sender: TObject);
var
 vPesoD:double;
begin
  if (edtPeso.Text.Length>0)and(vUltimoPeso>0) then
  begin
    if TryStrToFloat(edtPeso.Text,vPesoD) then
     edtGtpUltimo.Text     :=  FormatFloat('0.00',(vPesoD-vUltimoPeso))
    else
     MyShowMessage('Peso Invalido',false);
  end;
end;

procedure TfrmSaidaInd.edtPesoEnter(Sender: TObject);
begin
 if ComBalanca.Active=true then
  FlagSolicitaPeso:=1;
end;

procedure TfrmSaidaInd.edtPesoExit(Sender: TObject);
begin
 if ComBalanca.Active=true then
  FlagSolicitaPeso:=0;
end;

procedure TfrmSaidaInd.edtPesoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13)or(key=9) then
  if btnConfirma.Enabled then
   btnConfirmaClick(sender);
end;

procedure TfrmSaidaInd.edtPlacaCarretaExit(Sender: TObject);
begin
  SalvaAlteracaoVeiculo;
end;

procedure TfrmSaidaInd.edtPlacaVeiculoSelectExit(Sender: TObject);
begin
 SalvaAlteracaoVeiculo;
end;

procedure TfrmSaidaInd.edtPlacaVeiculoSelectKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
  edtIdentificacao1.SetFocus;
end;

procedure TfrmSaidaInd.EmiteSomErro;
begin
  TThread.Synchronize( nil,
  procedure
  begin
   recAllWhite.Fill.Color := TAlphaColorRec.red;
  end);
  TThread.CreateAnonymousThread(
  procedure
  begin
    Beep(2000,2000);
    recAllWhite.Fill.Color := TAlphaColorRec.red;
    btnConfirma.Enabled := false;
    edtIdentificacao1.Text     :='';
    if chkSemPeso.IsChecked then
     edtPeso.Text              :='0'
    else
     edtPeso.Text              :='';
    edtObservacao.Text         :='';
    edtDias.Text               :='';
    edtLocalAtual.Text         :='';
    edtPesoProj.Text           :='';
    edtgmdUltimoPeso.Text      :='';
    edtGtpUltimo.Text          :='';
    edtIdadeMeses.Text         :='';
    edtDtUltimoPeso.Text       :='';
    edtUltimoPeso.Text         :='';
    edtRaca.Text               :='';
    edtCategoria.Text          :='';
    vIdent2                    :='';
    vIdCategoria               := '';
    vIdRaca                    := '';
    vIdLocal                   := '';
    edtCategoria.Text          := '';
    edtRaca.Text               := '';
   edtLocalAtual.Text          := '';
   edtIdadeMeses.Text          := '';
   edtRebanho.Text             := '';
   edtBloqueado.Text           := '';
   if SwitcSoChip.IsChecked then
    begin
     edtIdentificacao2.Enabled    := false;
     edtIdentificacao1.Enabled    := true;
    end
    else
    begin
     edtIdentificacao2.Enabled    := true;
     edtIdentificacao1.Enabled    := true;
    end;
   btnConfirma.Enabled := false;
  end
  ).Start;
end;

procedure TfrmSaidaInd.etdFiltroSisbovKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) then
 begin
  btnBuscaGridClick(sender);
 end
end;

procedure TfrmSaidaInd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 serviceDBN.VerificaDestinoPlanNutricional;
end;

procedure TfrmSaidaInd.FormCreate(Sender: TObject);
begin
  LayApartacao.Visible             := false;
  tbPrincipal.TabPosition          := TTabPosition.None;
  tbPrincipal.ActiveTab            := tbisaiInd;
  FlagSolicitaPeso                 :=0;
  layDadosVeiculo.Visible          :=false;
  GridAnimaisProcEntrada.RowCount  :=0;
end;

procedure TfrmSaidaInd.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=vkf1 then mnuConfigClick(Sender);
  if key=vkf2 then mnuApartacaoClick(Sender);
  if key=vkf5 then
  begin
    if ComBalanca.Active=true then
      FlagSolicitaPeso:=1;
  end;
  if (key=vkf12) and (btnConfirma.Enabled) then btnConfirmaClick(sender);
  if key=vkf3  then btnCancelarClick(sender);
end;

procedure TfrmSaidaInd.FormShow(Sender: TObject);
begin
  LayApartacao.Visible := false;
  layAlteracao.Visible := false;
  abrirConfiguracaoManejo;
  CarregaComboLoteSaida;
  InfoGridProc;
  vAnimalEdit :=0;
  edtIdentificacao1.Enabled   := false;
  edtIdentificacao2.Enabled   := false;
  layPerifericos.Visible      := true;
  recAllWhite.Enabled         := false;
end;

procedure TfrmSaidaInd.Image18Click(Sender: TObject);
begin
 CarregaComboLoteSaida;
 tbPrincipal.ActiveTab := tbiSaiInd;
end;

procedure TfrmSaidaInd.Image2Click(Sender: TObject);
begin
 CarregaComboVeiculoSaida(cbxLoteSaida.Selected.Text);
 recAllWhite.Enabled  := true;
 LayApartacao.Visible := false;
end;

procedure TfrmSaidaInd.Image5Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmSaidaInd.imgCloseClick(Sender: TObject);
var
 dir,dirParam,vCom,vComInt :string;
 I :INTEGER;
 dlg :TFrmmsgDlg;
begin
 if serviceDB.TableConfigManejo.State<>dsEdit then
 begin
   serviceDB.TableConfigManejo.Close;
   serviceDB.TableConfigManejo.Open;
   serviceDB.TableConfigManejo.Edit;
 end;
 if chkUsaBalanca.IsChecked then
 begin
   if cbxBalancaPorta.ItemIndex=-1 then
   begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Infome a porta da Balança';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      cbxBalancaPorta.SetFocus;
    end);
    Exit;
   end
   else
   begin
     serviceDB.TableConfigManejoPORTA_COM_BALANCA.AsString := cbxBalancaPorta.Selected.Text;
     vCom := cbxBalancaPorta.Selected.Text;
   end;
   if cbxBalancaModelo.ItemIndex=-1 then
   begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Infome o Modelo da Balança!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       cbxBalancaModelo.SetFocus;
     end);
     Exit;
   end
   else
    serviceDB.TableConfigManejoMODELO_BALANCA.AsString := cbxBalancaModelo.Selected.Text;
   if ComBalanca.Active=false then
    ConectaBalanca(vCom,cbxBalancaModelo.Selected.Text);
   lblPesoBalanca.Text :='Peso(F5)';
 end
 else
  lblPesoBalanca.Text :='Peso';

  if cbxBalancaPorta.ItemIndex>-1 then
   serviceDB.TableConfigManejoPORTA_COM_BALANCA.AsString := cbxBalancaPorta.Selected.Text;

  if cbxBalancaModelo.ItemIndex>-1 then
   serviceDB.TableConfigManejoMODELO_BALANCA.AsString := cbxBalancaModelo.Selected.Text;

 if chkUsaBastao.IsChecked then//bastao#########################################
 begin
   cbxUsarIdent2.ItemIndex  :=1;
   if cbxChipPorta.ItemIndex=-1 then
   begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Infome a porta da Bastão!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       chkUsaBastao.SetFocus;
     end);
     Exit;
   end
   else
    serviceDB.TableConfigManejoPORTA_COM_BASTAO.AsString:= cbxChipPorta.Selected.Text;

   if cbxChipModelo.ItemIndex=-1 then
   begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Infome o Modelo da Bastão!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       cbxBalancaModelo.SetFocus;
     end);
     Exit;
   end
   else
    serviceDB.TableConfigManejoPORTA_COM_BASTAO.AsString := cbxChipPorta.Selected.Text;

   if cbxChipPorta.Selected.Text<>'SIMULA TECLADO' then
   begin
    if ComBastao.Active=false then
     ConectaBastao(cbxChipPorta.Selected.Text,cbxChipModelo.Selected.Text);
   end;
 end//bastao###################################################################
 else
  cbxUsarIdent2.ItemIndex  :=0;

 if cbxChipPorta.ItemIndex>-1 then
  serviceDB.TableConfigManejoPORTA_COM_BASTAO.AsString:= cbxChipPorta.Selected.Text;

 if cbxChipModelo.ItemIndex>-1 then
  serviceDB.TableConfigManejoMODELO_BASTAO.AsString:= cbxChipModelo.Selected.Text;

 if chkRFID.IsChecked then
 begin
   if cbxRFIDPorta.Selected.Text.Length=-1 then
   begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Iforme a Porta RFID!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       cbxRFIDPorta.SetFocus;
     end);
     Exit;
   end
   else
    serviceDB.TableConfigManejoPORTA_COM_RFID.AsString := cbxRFIDPorta.Selected.Text;

   if cbxRFIDModelo.ItemIndex=-1 then
   begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Infome o Modelo do RFID!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       cbxRFIDMODELO.SetFocus;
     end);
     Exit;
   end
   else
    serviceDB.TableConfigManejoMODELO_RFID.AsString := cbxRFIDModelo.Selected.Text;
   ConctaRFIDSerial(cbxRFIDPorta.Selected.Text,cbxRFIDModelo.Selected.Text)
 end
 else
  layConfiguraRFID.Visible:= false;

 if cbxRFIDModelo.ItemIndex>-1 then
  serviceDB.TableConfigManejoMODELO_RFID.AsString := cbxRFIDModelo.Selected.Text;

 if cbxRFIDPorta.ItemIndex>-1 then
  serviceDB.TableConfigManejoPORTA_COM_RFID.AsString := cbxRFIDPorta.Selected.Text;



 if cbxUsarIdent2.ItemIndex = -1 then
 begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Infome se vai usar a segunda identificação!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
       cbxUsarIdent2.SetFocus;
     end);
     Exit;
 end
 else
 begin
   if cbxUsarIdent2.ItemIndex = 1 then
     serviceDB.TableConfigManejoQTD_IDENTIFICACAO.AsInteger := 2
    else
     serviceDB.TableConfigManejoQTD_IDENTIFICACAO.AsInteger := 1;
 end;
   serviceDB.TableConfigManejoUSA_CHIP.AsInteger         := ord(chkUsaBastao.IsChecked);
   serviceDB.TableConfigManejoUSA_BALANCA.AsInteger      := ord(chkUsaBalanca.IsChecked);
   serviceDB.TableConfigManejoUSA_RFID.AsInteger         := ord(chkRFID.IsChecked);
   serviceDB.TableConfigManejoSO_CHIP.AsInteger          := ord(SwitcSoChip.IsChecked);
   serviceDB.TableConfigManejoSAIDA_SEM_PESO.AsInteger   := ord(chkSemPeso.IsChecked);
   try
    serviceDB.TableConfigManejo.ApplyUpdates(-1);
    layPerifericos.Visible := false;
    if chkSemPeso.IsChecked then
    begin
      edtPeso.Enabled   := false;
      edtPeso.Text      :='0';
    end
    else
     edtPeso.Enabled    := true;

    edtIdentificacao1.Enabled := cbxUsarIdent2.ItemIndex=1;
    layPerifericos.Visible := false;
   except
    on E: Exception do
      ShowMessage('Erro Ao Inserir Configuração:'+E.Message);
   end;
   recAllWhite.Enabled         := true;

  if SwitcSoChip.IsChecked then
  begin
   edtIdentificacao2.Enabled    := false;
   edtIdentificacao1.Enabled    := true;
  end
  else
  begin
   edtIdentificacao2.Enabled    := true;
   edtIdentificacao1.Enabled    := true;
  end;
end;

procedure TfrmSaidaInd.InfoGridProc;
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
  for I := 0 to GridAnimaisProcEntrada.RowCount-1 do
  begin
   if TryStrToFloat(GridAnimaisProcEntrada.Cells[7,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(GridAnimaisProcEntrada.Cells[9,I],Val1) then
    Sum1 := Sum1 + Val1;
   if TryStrToFloat(GridAnimaisProcEntrada.Cells[10,I],Val2) then
    Sum2 := Sum2 + Val2;
  end;
  if I>0 then
  begin
   lblGridInfoMediaPeso.Text    := FormatFloat('0.00',(Sum/GridAnimaisProcEntrada.RowCount));
   lblGTPMedio.Text             := FormatFloat('0.00',(Sum1/GridAnimaisProcEntrada.RowCount));
   lblGMDMedio.Text             := FormatFloat('0.00',(Sum2/GridAnimaisProcEntrada.RowCount));
   lblGridInfQtdCab.Text        := IntToStr(GridAnimaisProcEntrada.RowCount);
  end
  else
  begin
   lblGridInfoMediaPeso.Text    := '0,00';
   lblGTPMedio.Text             := '0,00';
   lblGMDMedio.Text             := '0,00';
   lblGridInfQtdCab.Text        := '0';
  end;
end;

procedure TfrmSaidaInd.InsereLogReprocessamento(
  idAnimal,Tipo: String);
var
 dlg : TFrmmsgDlg;
 vQryAux:TFDQuery;
begin
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('DELETE FROM LOG_REPROCESAMENTO');
  Add('WHERE ID_PROPRIEDADE='+serviceDB.vIdPropriedade+' AND ID_ANIMAL='+idAnimal+' AND CAST(DATA_REGISTRO AS DATE)=CURRENT_DATE');
  Add('AND TIPO='+Tipo);
  ExecSQL;

  Clear;
  Add('INSERT INTO LOG_REPROCESAMENTO(ID_USUARIO,ID_ANIMAL,ID_PROPRIEDADE,Tipo)VALUES(:ID_USUARIO,:ID_ANIMAL,:ID_PROPRIEDADE,:TIPO)');
  ParamByName('ID_USUARIO').AsString      :=serviceDB.vIdUserLogado;
  ParamByName('ID_ANIMAL').AsString       :=idAnimal;
  ParamByName('ID_PROPRIEDADE').AsString  :=serviceDB.vIdPropriedade;
  ParamByName('TIPO').AsString            :=TIPO;
  try
   ExecSQL;
   except
    on E: Exception do
   begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Erro ao inserir o LOG Reprocessamento:'+e.message;
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
     end);
     Exit;
   end;
 end
 end;
end;

procedure TfrmSaidaInd.mnuAlterarPesoSaidaClick(Sender: TObject);
begin
 edtPesoAtual.Text    := serviceDB.qryGriAniReProclsPESO_SAIDA.Text;
 edtPesoAtual.Enabled := false;
 edtNovoPesoSaida.Text:= '';
 layAlteracao.Visible := true;
end;

procedure TfrmSaidaInd.mnuApartacaoClick(Sender: TObject);
begin
  vIdVeiculoEra:='';
  if cbxLoteSaida.ItemIndex=-1 then
  begin
   MyShowMessage('Informe o lote de saida!',false);
   Exit;
  end
  else
  begin
   serviceDB.AbreQryVeiculos(cbxLoteSaida.Selected.Text);
   LayApartacao.Visible := true;
   recAllWhite.Enabled  := false;
  end;
end;

procedure TfrmSaidaInd.mnuConfigClick(Sender: TObject);
begin
   abrirConfiguracaoManejo;
   recAllWhite.Enabled         := false;
   layPerifericos.Visible      := true;
end;

procedure TfrmSaidaInd.mnuLimpaGTAClick(Sender: TObject);
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
        serviceDB.DesvinculaGTAVeiculo(vIdVeiculoEra,'');
        serviceDB.AbreQryVeiculos(cbxLoteSaida.Selected.Text);
      except
      on E : Exception do
       begin
         MyShowMessage('Erro ao Desvincular Veiculo da GTA:'+E.Message,false);
       end;
      end;
    end;
  end);
end;

procedure TfrmSaidaInd.mnuStrGridEditClick(Sender: TObject);
var
 vGTAID:String;
begin
  LimpaCampos;
  vAnimalEdit   := 1;
  vGTAID        := serviceDB.qryGriAniProcGTA_ID.AsString;
  vIdCategoria  := serviceDB.qryGriAniProcID_CATEGORIA.AsString;
  vIdRaca       := serviceDB.qryGriAniProcID_RACA.AsString;
  vIdLocal      := serviceDB.qryGriAniProcID_LOCAL.AsString;
  vIdProdutorOri:= serviceDB.qryGriAniProcID_PRODUTOR_ORIGEM.AsString;
  vIdProdutor   := serviceDB.qryGriAniProcID_PRODUTOR.AsString;
  VvalorCabGTA  := serviceDB.qryGriAniProcValor_compra.AsString;

  serviceDB.LimpaGTAAnimalID(serviceDB.qryGriAniProcID.AsString);
  serviceDB.AtualizaGTAProc(vGTAID);
  edtIdentificacao1.Text:=  serviceDB.qryGriAniProcIDENTIFICACAO_1.AsString;
  edtIdentificacao2.Text:=  serviceDB.qryGriAniProcIDENTIFICACAO_2.AsString;
  serviceDB.AbreQryGTAProcEdit(serviceDB.qryGriAniProcGTA_ID.AsString);
//  cbxCurralPasto.ItemIndex := cbxCurralPasto.Items.IndexOf(serviceDB.qryGriAniProcCURRAL_PASTO.AsString);
  edtRaca.Text       := serviceDB.qryGriAniProcRACA_NOME.AsString;
  edtCategoria.Text  := serviceDB.qryGriAniProcCATEGORIA_NOME.AsString;
  edtIdadeMeses.Text := serviceDB.qryGriAniProcIDADE_MESES.AsString;
  edtPeso.Text       := serviceDB.qryGriAniProcPESO_ENTRADA.AsString;
  edtObservacao.Text := serviceDB.qryGriAniProcOBSERVACAO.AsString;
end;

procedure TfrmSaidaInd.mnuStrGridExcluirClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
   dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Deseja Realmente Deletar esse Animal!!';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
       if dlg.vBntConfirmaMsg=1 then
       begin
         serviceDB.InativaAnimal(serviceDB.qryGriAniProcID.AsString);
         serviceDB.AtualizaGTAProc(serviceDB.qryGriAniProcGTA_ID.AsString);
         AbreQryGTAProc('E',frmPrincipal.vIDPropriedadePropria);
         serviceDB.AtualizaLotacao(serviceDB.qryGriAniProcID_LOCAL.AsString);
         serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'NOVO');
         InfoGridProc;
       end
    end);
    Exit;

end;

procedure TfrmSaidaInd.Rectangle12Click(Sender: TObject);
begin
 vIniLeituraRFIDControle:= false;
 btnLerTag.Enabled      := true;
end;

procedure TfrmSaidaInd.Rectangle35Click(Sender: TObject);
var
 i :integer;
begin
 if edtQtdVeiculosLs.Text.Length=0 then
 begin
   myShowMessage('Informa a quantidade de Veiculos a serem gerados!',false);
   edtQtdVeiculos.SetFocus;
   Exit;
 end;
 if edtQtdVeiculosLs.Text.Length=0 then
 begin
   myShowMessage('Informa a Capacidade dos Veiculos a serem gerados!',false);
   edtCapacidadeVeiculo.SetFocus;
   Exit;
 end;
 if cbxTipo.ItemIndex=-1 then
 begin
   myShowMessage('Informa o Tipo do Veiculo a serem gerados!',false);
   cbxTipo.SetFocus;
   Exit;
 end;
 for I := 0 to  strToInt(edtQtdVeiculosLs.text) -1 do
 begin
  if frmPrincipal.vIdBaseCampo='0' then
  begin
   serviceDB.qryVeiculos.Close;
   serviceDB.qryVeiculos.Open;
   serviceDB.qryVeiculos.Insert;
   serviceDB.qryVeiculosID_LOTESAIDA.AsString := vLoteSaida;
   serviceDB.qryVeiculosCAPACIDADE.AsString   := edtCapacidadeVeiculoLS.Text;
   serviceDB.qryVeiculosTipo.AsString         := cbxTipo.Selected.Text;
   serviceDB.qryVeiculosID_USER.AsString      := serviceDB.vIdUserLogado;
   serviceDB.qryVeiculosNOME.AsString         := 'Veiculo-'+serviceDB.RetornaMaxTruck(vLoteSaida);
   serviceDB.qryVeiculosID_BASE_CAMPO.AsString :=frmPrincipal.vIdBaseCampo;
   serviceDB.qryVeiculos.ApplyUpdates(-1);
  end
  else
  begin
   serviceDB.qryVeiculos.Close;
   serviceDB.qryVeiculos.Open;
   serviceDB.qryVeiculos.Insert;
   serviceDB.qryVeiculosID.AsString            := intToStr(strToInt(vLoteSaida)+I);
   serviceDB.qryVeiculosID_LOTESAIDA.AsString  := vLoteSaida;
   serviceDB.qryVeiculosTipo.AsString          := cbxTipo.Selected.Text;
   serviceDB.qryVeiculosCAPACIDADE.AsString    := edtCapacidadeVeiculoLS.Text;
   serviceDB.qryVeiculosID_USER.AsString       := serviceDB.vIdUserLogado;
   serviceDB.qryVeiculosNOME.AsString          := 'Veiculo-'+serviceDB.RetornaMaxTruck(vLoteSaida);
   serviceDB.qryVeiculosID_BASE_CAMPO.AsString :=frmPrincipal.vIdBaseCampo;
   serviceDB.qryVeiculos.ApplyUpdates(-1);
  end;
 end;
 serviceDB.AbreQryVeiculos(vLoteSaida);
 InfoGridVeiculosLoteSaida;
end;



procedure TfrmSaidaInd.SalvaAlteracaoVeiculo;
begin
 if(edtCapVeiculoSelect.Text.Length=0) then
 begin
  MyShowMessage('Informe a Capacidade do Veículo',false);
  edtCapVeiculoSelect.Text := edtLotacaoVeiculoSelect.Text;
  exit;
 end;
 if(edtCapVeiculoSelect.Text.Length>0) then
 begin
  if StrToInt(edtCapVeiculoSelect.Text)< StrToInt(edtLotacaoVeiculoSelect.Text) then
  begin
    MyShowMessage('Capacidade não pode ser menor que a quantidade de animais',false);
    edtCapVeiculoSelect.Text := edtLotacaoVeiculoSelect.Text;
    exit;
  end
 end;
 serviceDB.AtualizaPLacaVeiculo(vIDVeiculo,edtPlacaVeiculoSelect.Text,edtCapVeiculoSelect.Text,edtPlacaCarreta.Text, edtMotorista.Text);
 edtPlacaVeiculoSelect.Enabled  := false;
 edtPlacaCarreta.Enabled        := false;
 edtMotorista.Enabled           := false;
 edtCapacidadeVeiculo.Enabled   := false;
end;

end.



