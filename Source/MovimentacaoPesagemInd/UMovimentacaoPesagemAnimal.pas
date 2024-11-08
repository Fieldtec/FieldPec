unit UMovimentacaoPesagemAnimal;

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
  FMX.NumberBox, Winsoft.FireMonkey.FComPort;

type
   TfrmMovPesagemAnimal = class(TForm)
    layBase: TLayout;
    StyleBook1: TStyleBook;
    PopupMenu1: TPopupMenu;
    mnuStrGridEdit: TMenuItem;
    mnuStrGridExcluir: TMenuItem;
    recAllWhite: TRectangle;
    imgApr: TImage;
    ShadowEffect16: TShadowEffect;
    MenuBar1: TMenuBar;
    mnuConfig: TMenuItem;
    ShadowEffect26: TShadowEffect;
    Layout39: TLayout;
    Image5: TImage;
    ShadowEffect7: TShadowEffect;
    layGTAEntNovos: TLayout;
    layProdutores: TLayout;
    Rectangle1: TRectangle;
    ShadowEffect1: TShadowEffect;
    Layout3: TLayout;
    Layout5: TLayout;
    Rectangle2: TRectangle;
    Rectangle4: TRectangle;
    Label2: TLabel;
    edtProdutorOrigem: TEdit;
    EditButton1: TEditButton;
    Label6: TLabel;
    edtPropriedadeOrigem: TEdit;
    Rectangle10: TRectangle;
    Label1: TLabel;
    edtProdutorDestino: TEdit;
    btnBuscarOrigem: TEditButton;
    Label5: TLabel;
    edtPropriedadeDestino: TEdit;
    LayDadosAnimal: TLayout;
    Rectangle11: TRectangle;
    ShadowEffect3: TShadowEffect;
    Layout6: TLayout;
    Layout8: TLayout;
    Layout2: TLayout;
    Rectangle13: TRectangle;
    Layout15: TLayout;
    Label7: TLabel;
    cbxCategoria: TComboBox;
    Rectangle14: TRectangle;
    Layout16: TLayout;
    Label23: TLabel;
    cbxRaca: TComboBox;
    layIdentificacoes: TLayout;
    Rectangle17: TRectangle;
    ShadowEffect5: TShadowEffect;
    Layout25: TLayout;
    Layout42: TLayout;
    Rectangle18: TRectangle;
    Layout46: TLayout;
    RecIdent1: TRectangle;
    edtIdentificacao1: TEdit;
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
    Layout51: TLayout;
    GridAnimaisProcEntrada: TStringGrid;
    layInfGrid: TLayout;
    recInfGrif: TRectangle;
    layEstatisticaGrid: TLayout;
    Label500000: TLabel;
    lblGridInfQtdCab: TLabel;
    Label12: TLabel;
    lblGridInfoMediaPeso: TLabel;
    mnuApartacao: TMenuItem;
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
    Rectangle9: TRectangle;
    Layout4: TLayout;
    Label3: TLabel;
    edtLocalAtual: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToFieldCODIGO: TLinkFillControlToField;
    Rectangle22: TRectangle;
    Label31: TLabel;
    cbxCurralPasto: TComboBox;
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
    BindSourceDB4: TBindSourceDB;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    Label22: TLabel;
    Label24: TLabel;
    lblGTPMedio: TLabel;
    lblGMDMedio: TLabel;
    Rectangle28: TRectangle;
    Rectangle29: TRectangle;
    Rectangle30: TRectangle;
    Rectangle31: TRectangle;
    layPerifericos: TLayout;
    Rectangle50: TRectangle;
    Image6: TImage;
    ShadowEffect33: TShadowEffect;
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
    Layout20: TLayout;
    Rectangle8: TRectangle;
    Label14: TLabel;
    cbxTipoIdentificacao: TComboBox;
    Label15: TLabel;
    cbxUsarIdent2: TComboBox;
    laySuperior: TLayout;
    Rectangle5: TRectangle;
    lblStatusTela: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    Rectangle27: TRectangle;
    Label20: TLabel;
    Label21: TLabel;
    chkPesar: TSwitch;
    chkManterCurralAtual: TSwitch;
    mnuSanidade: TMenuItem;
    ImageList1: TImageList;
    LaySanidade: TLayout;
    Layout27: TLayout;
    Rectangle32: TRectangle;
    Image13: TImage;
    ShadowEffect15: TShadowEffect;
    Layout24: TLayout;
    Label25: TLabel;
    Switch1: TSwitch;
    LayProtocolo: TLayout;
    Rectangle51: TRectangle;
    Layout33: TLayout;
    Label26: TLabel;
    cbxProtocolo: TComboBox;
    Layout34: TLayout;
    GridConfigProtocolo: TStringGrid;
    Rectangle52: TRectangle;
    Layout35: TLayout;
    Layout28: TLayout;
    Label30: TLabel;
    Switch2: TSwitch;
    Layout29: TLayout;
    Label33: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    layTratamentoExtra: TLayout;
    edtFarmacoExtra: TEdit;
    EditButton2: TEditButton;
    edtFarmacoTipoDoseExtra: TEdit;
    edtFarmacoExtraDosePesoKGExtra: TEdit;
    edtFarmacoExtraDosePesoExtra: TEdit;
    edtFarmacoDoseFixaExtra: TEdit;
    edtCarenciaDias: TEdit;
    Rectangle33: TRectangle;
    Layout30: TLayout;
    Layout36: TLayout;
    Label48: TLabel;
    cbxAplicadorEsquerdo: TComboBox;
    Label49: TLabel;
    cbxAplicadorDireito: TComboBox;
    Label51: TLabel;
    Layout31: TLayout;
    Rectangle34: TRectangle;
    Label53: TLabel;
    Layout32: TLayout;
    Image14: TImage;
    BindSourceDB6: TBindSourceDB;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    BindSourceDB8: TBindSourceDB;
    LinkFillControlToFieldNAME: TLinkFillControlToField;
    LinkFillControlToFieldID: TLinkFillControlToField;
    layReprocessamento: TLayout;
    Rectangle35: TRectangle;
    ShadowEffect13: TShadowEffect;
    Layout38: TLayout;
    Label56: TLabel;
    Rectangle36: TRectangle;
    edtPastoOrigemReproc: TEdit;
    edtBuscaLoteReproc: TEditButton;
    Label57: TLabel;
    lblTotalAnimaisLoteReproc: TLabel;
    Label58: TLabel;
    lblSemIdentificacaoReproc: TLabel;
    Label59: TLabel;
    lblIdentificadosReproc: TLabel;
    layDadosReproc: TLayout;
    Rectangle37: TRectangle;
    Label60: TLabel;
    ComboBox1: TComboBox;
    Label61: TLabel;
    ComboBox2: TComboBox;
    RecReprocessamento: TRectangle;
    Label62: TLabel;
    Label63: TLabel;
    chkAtualizaPesoEntReproc: TSwitch;
    chkAtualizaDataEnt: TSwitch;
    layReident2: TLayout;
    chkReiden2: TCheckBox;
    layReident1: TLayout;
    chkReident1: TCheckBox;
    Layout41: TLayout;
    Rectangle40: TRectangle;
    Label65: TLabel;
    ComboBox3: TComboBox;
    Label67: TLabel;
    ComboBox4: TComboBox;
    Layout43: TLayout;
    Rectangle42: TRectangle;
    ShadowEffect17: TShadowEffect;
    Layout44: TLayout;
    Layout45: TLayout;
    Layout49: TLayout;
    Rectangle43: TRectangle;
    Label69: TLabel;
    lblProdOrigemGTA: TLabel;
    Layout53: TLayout;
    Rectangle44: TRectangle;
    Label70: TLabel;
    lblTotalAnimaisGTA: TLabel;
    Label71: TLabel;
    lblTotalAnimaisProc: TLabel;
    Layout56: TLayout;
    Rectangle45: TRectangle;
    Rectangle46: TRectangle;
    Rectangle47: TRectangle;
    Label72: TLabel;
    Rectangle48: TRectangle;
    Label73: TLabel;
    Layout57: TLayout;
    Layout58: TLayout;
    Rectangle53: TRectangle;
    Layout59: TLayout;
    Rectangle54: TRectangle;
    Label74: TLabel;
    Layout60: TLayout;
    Rectangle55: TRectangle;
    Label75: TLabel;
    lblGTA0a12M: TLabel;
    Label76: TLabel;
    lblProc0a12M: TLabel;
    Layout61: TLayout;
    Rectangle56: TRectangle;
    Label77: TLabel;
    lblGTA0a12F: TLabel;
    Label78: TLabel;
    lblProc0a12F: TLabel;
    Layout62: TLayout;
    Rectangle57: TRectangle;
    Layout63: TLayout;
    Rectangle58: TRectangle;
    Label79: TLabel;
    Layout64: TLayout;
    Rectangle59: TRectangle;
    Label80: TLabel;
    lblGTAMais36M: TLabel;
    Label81: TLabel;
    lblProcMais36M: TLabel;
    Layout65: TLayout;
    Rectangle60: TRectangle;
    Label82: TLabel;
    lblGTAMais36F: TLabel;
    Label83: TLabel;
    lblProcMais36F: TLabel;
    Layout66: TLayout;
    Rectangle61: TRectangle;
    Layout67: TLayout;
    Rectangle62: TRectangle;
    Label84: TLabel;
    Layout68: TLayout;
    Rectangle63: TRectangle;
    Label85: TLabel;
    lblGTA25A36M: TLabel;
    Label86: TLabel;
    lblProc25A36M: TLabel;
    Layout72: TLayout;
    Rectangle64: TRectangle;
    Label87: TLabel;
    lblGTA25A36F: TLabel;
    Label88: TLabel;
    lblProc25A36F: TLabel;
    Layout77: TLayout;
    Rectangle65: TRectangle;
    Layout78: TLayout;
    Rectangle66: TRectangle;
    Label89: TLabel;
    Layout79: TLayout;
    Rectangle67: TRectangle;
    Label90: TLabel;
    lblGTA13A24M: TLabel;
    Label91: TLabel;
    lblProc13A24M: TLabel;
    Layout80: TLayout;
    Rectangle68: TRectangle;
    Label92: TLabel;
    lblGTA13A24F: TLabel;
    Label93: TLabel;
    lblProc13A24F: TLabel;
    Layout81: TLayout;
    Rectangle69: TRectangle;
    cbxGTAEntrada: TComboBox;
    Label94: TLabel;
    Rectangle3: TRectangle;
    ShadowEffect2: TShadowEffect;
    Layout9: TLayout;
    Layout50: TLayout;
    Rectangle49: TRectangle;
    Label35: TLabel;
    edtObservacao: TEdit;
    Label64: TLabel;
    edtRebanhoDestino: TEdit;
    EditButton4: TEditButton;
    Label66: TLabel;
    edtNumContrato: TEdit;
    EditButton3: TEditButton;
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
    BindSourceDB9: TBindSourceDB;
    LinkFillControlToFieldNUMERO: TLinkFillControlToField;
    Layout37: TLayout;
    Rectangle38: TRectangle;
    Label95: TLabel;
    SwitcSoChip: TSwitch;
    Rectangle39: TRectangle;
    Layout40: TLayout;
    Label96: TLabel;
    cbxBloqueio: TComboBox;
    cbxDestinoAnimal: TComboBox;
    Label97: TLabel;
    edtGtpUltimo: TNumberBox;
    layProtocoloSani: TLayout;
    Rectangle70: TRectangle;
    Rectangle71: TRectangle;
    Label98: TLabel;
    gridProtocolo: TStringGrid;
    Column1: TColumn;
    Column2: TColumn;
    FloatColumn1: TFloatColumn;
    Column3: TColumn;
    Column4: TColumn;
    Column5: TColumn;
    Column6: TColumn;
    Column7: TColumn;
    Column8: TColumn;
    Column9: TColumn;
    ComRFID: TFComPort;
    ComBalanca: TFComPort;
    ComBastao: TFComPort;
    LayApartacao: TLayout;
    Layout52: TLayout;
    Rectangle7: TRectangle;
    Layout54: TLayout;
    btnAddApartacao: TRectangle;
    Layout55: TLayout;
    Image23: TImage;
    Label32: TLabel;
    ShadowEffect8: TShadowEffect;
    btnRemoveAparte: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    SEffectBtnCancel: TShadowEffect;
    GridApartacao: TStringGrid;
    StringColumn5: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn6: TStringColumn;
    StringColumn7: TStringColumn;
    StringColumn8: TStringColumn;
    StringColumn9: TStringColumn;
    StringColumn10: TStringColumn;
    StringColumn1: TStringColumn;
    Image3: TImage;
    ShadowEffect9: TShadowEffect;
    layTipoPesagem: TLayout;
    Rectangle6: TRectangle;
    Layout7: TLayout;
    Label10: TLabel;
    cbxTipoPesagem: TComboBox;
    Layout14: TLayout;
    Rectangle41: TRectangle;
    Label68: TLabel;
    Layout82: TLayout;
    Image2: TImage;
    Layout83: TLayout;
    btnConfirmaTipo: TRectangle;
    Layout95: TLayout;
    Image9: TImage;
    Label99: TLabel;
    ShadowEffect14: TShadowEffect;
    RecTipoLote: TRectangle;
    recPopup: TRectangle;
    Layout96: TLayout;
    Layout97: TLayout;
    Layout98: TLayout;
    Label100: TLabel;
    Layout99: TLayout;
    Layout101: TLayout;
    btnConfirmar: TRectangle;
    Label101: TLabel;
    Rectangle72: TRectangle;
    cbxTipoLote: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure mnuConfigClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridApartacaoEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure btnAddApartacaoClick(Sender: TObject);
    procedure btnRemoveAparteClick(Sender: TObject);
    procedure cbxCategoriaChange(Sender: TObject);
    procedure cbxRacaChange(Sender: TObject);
    procedure cbxCurralPastoChange(Sender: TObject);
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
    procedure cbxCurralPastoExit(Sender: TObject);
    procedure mnuStrGridEditClick(Sender: TObject);
    procedure mnuStrGridExcluirClick(Sender: TObject);
    procedure ComBastaoRxChar(Sender: TObject);
    procedure ComRFIDRxChar(Sender: TObject);
    procedure edtPesoEnter(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtGtpUltimoChangeTracking(Sender: TObject);
    procedure mnuSanidadeClick(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
    procedure cbxProtocoloChange(Sender: TObject);
    procedure Switch2Switch(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure cbxAplicadorEsquerdoChange(Sender: TObject);
    procedure cbxAplicadorDireitoChange(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure edtBuscaLoteReprocClick(Sender: TObject);
    procedure edtIdentificacao1Enter(Sender: TObject);
    procedure edtIdentificacao2Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkReident1Change(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure edtRebanhoDestinoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtRebanhoDestinoClick(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure cbxGTAEntradaChange(Sender: TObject);
    procedure chkReiden2Change(Sender: TObject);
    procedure btnConfirmaTipoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    private
    { Private declarations }
    public
     vIdRebanho,vIdGTA,vIdCategoria,vIdRaca,vIdLote,vIdLocal,vRespRFID,vIdProdutorOri,vIdProdutor,vSexoAnimal,
     VvalorCabGTA,vIDAnimal,vIdent2,vIdent1,vIdLocalAtual,vIdProtocolo,vTipoDosagemExtra,vIdContrato,vIdProdutoExtra,
     vIdAplicadorDireito,vIdAplicadorEsquerdo,vIdCurralOrigemReproc,vIdRebanhoDestino,
     vIdRebanhoDestinoNovo,vIdRebanhoDestinoInsert,vTipoPesagem:string;
     FlagSolicitaPeso,vFunction,vAnimalEdit,vDiasUltimoPeso:integer;
     vIniLeituraRFID,vIniLeituraRFIDControle:Boolean;
     vDataUltimoPeso:TDate;
     vUltimoPeso:Double;
     vTipoMovi:integer;
     procedure CarregaCurralPastoGrupo;
     procedure GeraGridApartacao(idPropriedade:string);
     procedure AdicionaAparte(idCurral,NomeCurral,PesoMinimo,PesoMaximo,TipoPesagem:string);
     procedure AbreQryGTAProc(Tipo, IdPropriedade: string);
     procedure ConectaBalanca(vCom, vModelo: string);
     function  LimpaPeso(Peso: String): string;
     procedure ConectaBastao(vCom, vModelo: string);
     procedure ConctaRFIDSerial(vCom, vModelo: string);
     procedure abrirConfiguracaoManejo;
     procedure InsereLogReprocessamento(idAnimal,Tipo:String);
     procedure LimpaCampos;
     procedure InfoGridProc;
     function  BuscaDadosAnimal(Identificacao,Tipo,Operacao:string):Boolean;
     procedure BuscaDadosAnimalEdit(IdAnimal: string);

     procedure MyShowMessage(msg: string;btnCancel:Boolean);
     procedure AtualizaResumoReproc(idLocal:string);
     procedure AtualizaGTA(Id: String);
     procedure CalculaDose;
  end;

var
  frmMovPesagemAnimal: TfrmMovPesagemAnimal;
type
  TOpenComboBox = class(TComboBox);

implementation

{$R *.fmx}

uses UCadCategoria, UCadGTA, UCadPadrao, UCadRaca, UCadUsers, UCurrais,
  UPrincipal, UPropriedadeParceira, UServiceDB, UMsgDlg, UFarmacos, UMsgDlgRel,
  ServiceDB2, UAuxRebanho, ServiceRel, USeviceConfinamento, ContratoCompra;

procedure TfrmMovPesagemAnimal.ComBastaoRxChar(Sender: TObject);
var
 vChip,vModelo:string;
 pos900:integer;
begin
 vChip  :='';
 vModelo := UpperCase(cbxChipModelo.Selected.Text);
 vChip   := trim(ComBastao.ReadUtf8);
 if vChip.Length>10 then
 begin
   if vModelo='ALLTAGS' then
    if edtIdentificacao1.Text.Length=0 then
      edtIdentificacao1.Text := vChip;
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
     vChip := StringReplace(vChip,' ','',[rfReplaceAll]);
     if vChip.Length<15 then
        vChip:='9'+vChip;
     edtIdentificacao1.Text :=  StringReplace(vChip,' ','',[rfReplaceAll]);
     edtIdentificacao1Exit(Sender);
    end
   end;
 end;
end;

procedure TfrmMovPesagemAnimal.ComRFIDRxChar(Sender: TObject);
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

procedure TfrmMovPesagemAnimal.ConctaRFIDSerial(vCom, vModelo: string);
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
         ShowMessage('Erro:'+e.Message);
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
procedure TfrmMovPesagemAnimal.ConectaBastao(vCom, vModelo: string);
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

procedure TfrmMovPesagemAnimal.EditButton2Click(Sender: TObject);
var
 I : integer;
begin
  frmCadFarmaco := TfrmCadFarmaco.Create(Self);
  try
    frmCadFarmaco.ShowModal;
    if frmCadFarmaco.vFarmacoSelecionado=1 then
    begin
      vIdProdutoExtra                     := serviceDB.TableFarmacosID.AsString;
      for I := 0 to GridConfigProtocolo.RowCount-1 do
      begin
        if vIdProdutoExtra=GridConfigProtocolo.Cells[6,i] then
        begin
          MyShowMessage('Farmaco já em uso no Protocolo Selecionado!',false);
          edtFarmacoExtra.Text                := '';
          edtFarmacoTipoDoseExtra.Text        := '';
          edtFarmacoDoseFixaExtra.Text        := '';
          edtFarmacoExtraDosePesoExtra.Text   := '';
          edtFarmacoExtraDosePesoKGExtra.Text := '';
          edtCarenciaDias.Text                := '';
          Exit;
        end;
      end;
      vIdProdutoExtra                     := serviceDB.TableFarmacosID.AsString;
      vTipoDosagemExtra                   := serviceDB.TableFarmacosTIPO_APICACAO.AsString;
      edtFarmacoExtra.Text                := serviceDB.TableFarmacosNOME.AsString;
      edtFarmacoTipoDoseExtra.Text        := serviceDB.TableFarmacosTIPO_APLICACAO_STR.AsString;
      edtFarmacoDoseFixaExtra.Text        := serviceDB.TableFarmacosML_DOSE_FIXA.AsString;
      edtFarmacoExtraDosePesoExtra.Text   := serviceDB.TableFarmacosML_DOSE_PV.AsString;
      edtFarmacoExtraDosePesoKGExtra.Text := serviceDB.TableFarmacosKG_DOSE_PV.AsString;
      edtCarenciaDias.Text                := serviceDB.TableFarmacosCARENCIA_DIA.AsString;
      if serviceDB.TableFarmacosTIPO_APICACAO.AsInteger=0 then
      begin
        edtFarmacoDoseFixaExtra.Enabled         := true;
        edtFarmacoExtraDosePesoExtra.Enabled    := false;
        edtFarmacoExtraDosePesoKGExtra.Enabled  := false;
      end;
      if serviceDB.TableFarmacosTIPO_APICACAO.AsInteger=1 then
      begin
       edtFarmacoExtraDosePesoExtra.Enabled    := true;
       edtFarmacoExtraDosePesoKGExtra.Enabled  := true;
       edtFarmacoDoseFixaExtra.Enabled         := false;
      end;
    end;
  finally
    frmCadFarmaco.Free;
  end;
end;

procedure TfrmMovPesagemAnimal.EditButton3Click(Sender: TObject);
begin
  frmContratoCompra := TfrmContratoCompra.Create(nil);
  try
    frmContratoCompra.ShowModal;
  finally
    edtNumContrato.text           := ServiceConf.TContratoCompraNUMERO.AsString+' | '+ServiceConf.TContratoCompraPRODUTOR_ORIGEM.AsString;
    vIdContrato                   := ServiceConf.TContratoCompraID.AsString;
    frmContratoCompra.Free;
  end;
end;

procedure TfrmMovPesagemAnimal.EditButton4Click(Sender: TObject);
begin
 frmCadRebanho := TfrmCadRebanho.Create(nil);
  try
    frmCadRebanho.ShowModal;
  finally
    edtRebanhoDestino.text          := serviceDBN.TAuxRebanhoNOME.AsString;
    vIdRebanhoDestinoNovo           := serviceDBN.TAuxRebanhoID.AsString;
    frmCadRebanho.Free;
  end;
end;

procedure TfrmMovPesagemAnimal.LimpaCampos;
begin
 edtLocalAtual.Text         :='';
 layReident1.Visible        := false;
 layReident2.Visible        := false;
 chkReident1.IsChecked      := false;
 chkReiden2.IsChecked       := false;
 edtIdentificacao1.Text     :='';
 edtIdentificacao2.Text     :='';
 edtPeso.Text               :='';
 edtObservacao.Text         :='';
 edtDias.Text               :='';
 edtPesoProj.Text           :='';
 edtgmdUltimoPeso.Text      :='';
 edtGtpUltimo.Text          :='';
 edtDtUltimoPeso.Text       :='';
 edtUltimoPeso.Text         :='';
 edtIdentificacao2.Enabled  := not SwitcSoChip.IsChecked;
 edtIdentificacao1.Enabled  := cbxUsarIdent2.ItemIndex=1;

 if frmPrincipal.vMov<>5 then
 begin
   cbxCurralPasto.ItemIndex   :=-1;
   edtIdadeMeses.Text         :='';
   cbxRaca.ItemIndex          :=-1;
   cbxCategoria.ItemIndex     :=-1;
   vIdRebanhoDestinoInsert    :='';
   vIdRebanhoDestinoNovo      :='';
   cbxBloqueio.ItemIndex      :=-1;
 end;
end;

function TfrmMovPesagemAnimal.LimpaPeso(Peso: String): string;
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

procedure TfrmMovPesagemAnimal.ConectaBalanca(vCom, vModelo: string);
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

procedure TfrmMovPesagemAnimal.GeraGridApartacao(idPropriedade:string);
var
 i:integer;
 vQryAux :TFDQuery;
begin
   cbxCurralPasto.Items.Clear;
   vQryAux := TFDQuery.Create(nil);
   vQryAux.Connection := serviceDB.fCon;
   GridApartacao.RowCount :=1000;
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('SELECT ap.*,cu.CAPACIDADE,cu.LOTACAO,cu.id idCurral,TIPO_PESAGEM');
     Add('FROM APARTACAO AP');
     Add('JOIN currais CU ON CU.id=AP.id_curral_pasto');
     Add('WHERE AP.STATUS=1');
     Add('AND AP.ID_PROPRIEDADE=:ID_PROPRIEDADE');
     ParamByName('ID_PROPRIEDADE').AsString := idPropriedade;
     Open;
     I:=0;
     if vQryAux.RecordCount>0 then
     begin
      while not vQryAux.Eof do
      begin
        GridApartacao.Cells[0,i]     := vQryAux.FieldByName('CURRAL_PASTO').AsString;
        GridApartacao.Cells[1,i]     := vQryAux.FieldByName('TIPO_PESAGEM').AsString;
        GridApartacao.Cells[2,i]     := vQryAux.FieldByName('PESO_MINIMO').AsString;
        GridApartacao.Cells[3,i]     := vQryAux.FieldByName('PESO_MAXIMO').AsString;
        GridApartacao.Cells[4,i]     := vQryAux.FieldByName('ID').AsString;
        GridApartacao.Cells[5,i]     := vQryAux.FieldByName('CAPACIDADE').AsString;
        GridApartacao.Cells[6,i]     := vQryAux.FieldByName('LOTACAO').AsString;
        GridApartacao.Cells[7,i]     := vQryAux.FieldByName('idCurral').AsString;
        cbxCurralPasto.Items.AddObject(vQryAux.FieldByName('CURRAL_PASTO').AsString,
          TObject(vQryAux.FieldByName('ID_CURRAL_PASTO').AsInteger));
        cbxCurralPasto.ListItems[i].TagString := vQryAux.FieldByName('TIPO_PESAGEM').AsString;
        inc(i);
        vQryAux.Next;
      end;
      for i := 0 to cbxCurralPasto.Count - 1 do
      begin
       cbxCurralPasto.ListBox.ListItems[i].TextSettings.Font.Size := 20;
       cbxCurralPasto.ListBox.ListItems[i].StyledSettings := cbxCurralPasto.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
      end;
     end
     else
     begin
      GridApartacao.RowCount :=0;
     end;
   end;
   GridApartacao.RowCount := I;
   serviceDB.fCon.Commit;
   Application.ProcessMessages;
end;

procedure TfrmMovPesagemAnimal.AbreQryGTAProc(Tipo, IdPropriedade: string);
begin
  serviceDB.AbreQryGTAProc('E',frmPrincipal.vIDPropriedadePropria);
end;

procedure TfrmMovPesagemAnimal.abrirConfiguracaoManejo;
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

  chkUsaBastao.IsChecked      := serviceDB.TableConfigManejoUSA_CHIP.AsInteger=1;
  chkUsaBalanca.IsChecked     := serviceDB.TableConfigManejoUSA_BALANCA.AsInteger=1;
  chkRFID.IsChecked           := serviceDB.TableConfigManejoUSA_RFID.AsInteger=1;
  SwitcSoChip.IsChecked       := serviceDB.TableConfigManejoSO_CHIP.AsInteger=1;

  chkAtualizaDataEnt.IsChecked           := false;
  chkAtualizaPesoEntReproc.IsChecked     := false;

  if serviceDB.TableConfigManejoQTD_IDENTIFICACAO.AsString.Length>0 then
  begin
    if serviceDB.TableConfigManejoQTD_IDENTIFICACAO.AsInteger=1 then
     cbxUsarIdent2.ItemIndex        := 0;
    if serviceDB.TableConfigManejoQTD_IDENTIFICACAO.AsInteger=2 then
     cbxUsarIdent2.ItemIndex        := 1
  end
  else
   cbxUsarIdent2.ItemIndex        := -1;
end;

procedure TfrmMovPesagemAnimal.AdicionaAparte(idCurral, NomeCurral, PesoMinimo,
  PesoMaximo,TipoPesagem: string);
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
   serviceDB.qryApartacaoTIPO_PESAGEM.AsString    := TipoPesagem;
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



procedure TfrmMovPesagemAnimal.AtualizaResumoReproc(idLocal: string);
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select count(*) qtd from animal a');
   Add('where id>1 and status=1 and a.id_local=:id_local');
   Add('and a.identificacao_1 is null and a.identificacao_2 is null');
   ParamByName('id_local').AsString := idlocal;
   Open;
   lblSemIdentificacaoReproc.Text := FieldByName('qtd').AsString;

   Clear;
   Add('select count(*) qtd from animal a');
   Add('where id>1 and status=1 and a.id_local=:id_local');
   Add('and (a.identificacao_1 is not null or a.identificacao_2 is not null)');
   ParamByName('id_local').AsString := idlocal;
   Open;
   lblIdentificadosReproc.Text := FieldByName('qtd').AsString;

   Clear;
   Add('select count(*) qtd from animal a');
   Add('where id>1 and status=1 and a.id_local=:id_local');
   ParamByName('id_local').AsString := idlocal;
   Open;
   lblTotalAnimaisLoteReproc.Text := FieldByName('qtd').AsString;
 end;
 vQry.Free;
end;

procedure TfrmMovPesagemAnimal.btnAddApartacaoClick(Sender: TObject);
begin
  cbxTipoPesagem.ItemIndex :=-1;
  layTipoPesagem.Visible := true;
end;

procedure TfrmMovPesagemAnimal.btnCancelarClick(Sender: TObject);
begin
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

procedure TfrmMovPesagemAnimal.btnConfirmaClick(Sender: TObject);
var
 vTipoCurral,vBloqueio,vPesoEntrada,vDataEntrada,
 vAtualizaDataEnt,vAtualizaPesoEnt:string;
 I:Integer;
begin
  if cbxBloqueio.ItemIndex=0 then
   vBloqueio:='1';

  if cbxBloqueio.ItemIndex=1 then
   vBloqueio:='0';

  if cbxBloqueio.ItemIndex=-1 then
   vBloqueio:='0';

  if (edtIdentificacao1.Text.Length=0)and(edtIdentificacao2.Text.Length=0) then
  begin
    MyShowMessage('Informe pelo menos uma identificação do Animal!!',false);
    btnConfirma.Enabled := false;
    Exit;
  end;
  if cbxRaca.ItemIndex=-1 then
  begin
    MyShowMessage('Informe uma Raça do Animal!!',false);
    btnConfirma.Enabled := false;
    Exit;
  end;
  if cbxCategoria.ItemIndex=-1 then
  begin
    MyShowMessage('Informe uma Categoria do Animal!!',false);
    btnConfirma.Enabled := false;
    Exit;
  end;
  if cbxDestinoAnimal.ItemIndex=-1 then
  begin
    MyShowMessage('Informe uma Destino para o Animal!!',false);
    btnConfirma.Enabled := false;
    Exit;
  end;
  if edtRebanhoDestino.Text.Length=0 then
  begin
   MyShowMessage('Informe o rebanho do animal!!',false);
   Exit;
  end;
  if chkPesar.IsChecked then
  begin
   if edtPeso.Text.Length=0 then
    begin
     MyShowMessage('Informe o Peso do Animal!!',false);
     Exit;
    end;
    if chkAtualizaPesoEntReproc.IsChecked then
    begin
      vPesoEntrada     := edtPeso.Text;
      vAtualizaPesoEnt := '1';
    end
    else
    begin
     vPesoEntrada     := '';
    end;
    vPesoEntrada     := edtPeso.Text;
  end;
  if frmPrincipal.vMov=5 then //se for reproc
  begin
   if edtPastoOrigemReproc.Text.Length=0 then
   begin
    MyShowMessage('Selecione o Local de Origem dos Animais',false);
    btnConfirma.Enabled := false;
    Exit
   end;
  end;
  if chkAtualizaDataEnt.IsChecked then
  begin
   vDataEntrada     := DateTimeToStr(NOW);
   vAtualizaDataEnt :='1';
  end
  else
   vDataEntrada := '';

  if chkManterCurralAtual.IsChecked=false then
  begin
    if cbxCurralPasto.ItemIndex=-1 then
    begin
      MyShowMessage('Informe o Local destino do animal!!',false);
      Exit;
    end
    else
    if serviceDB.RetornaLotacaoCurral(vIdLocal)<=0 then
    begin
     MyShowMessage('Capacidade do curral ja foi atingida',false);
     exit;
    end;
    vTipoCurral := ServiceConf.RetornaTipoCurral(vIdLocal);
  end
  else
   vIdLocal := vIdLocalAtual;
  if vIdRebanhoDestinoNovo.Length>0 then
   vIdRebanhoDestinoInsert  :=vIdRebanhoDestinoNovo
  else
    vIdRebanhoDestinoInsert :=vIdRebanhoDestino;
  //se nao for rastreada permite reidentificar
  if serviceDB.vRastreada='0' then
  begin
    if chkReiden2.IsChecked then
    begin
     if vIdent2<>edtIdentificacao2.Text then
      serviceDB.InsereReidentificacaoMovimentacao(vidAnimal,'2',edtIdentificacao2.Text,
       vIdent2,frmPrincipal.vIdBaseCampo);
    end;
    if chkReident1.IsChecked then
    begin
     if vIdent1<>edtIdentificacao1.Text then
      serviceDB.InsereReidentificacaoMovimentacao(vidAnimal,'1',edtIdentificacao1.Text,
       vIdent1,frmPrincipal.vIdBaseCampo);
    end;
  end;
  try
    if frmPrincipal.vMov=1 then
    begin
      serviceDB.UpdateAnimalReproc(vIDAnimal,vIdLocal,vIdCategoria,vIDRaca,edtIdentificacao1.Text,
       edtIdentificacao2.Text,'',edtPeso.Text,edtObservacao.Text,vIdRebanhoDestinoInsert,vIdLote,
       vIdContrato,vTipoCurral,intToStr(vTipoMovi),frmPrincipal.vIdBaseCampo,
       DateTimeToStr(now),vBloqueio,cbxDestinoAnimal.Selected.Text,vAtualizaDataEnt,vAtualizaPesoEnt);
    end;
    if frmPrincipal.vMov=5 then
    begin
      serviceDB.UpdateAnimalReproc(vIDAnimal,
      vIdLocal,
      vIdCategoria,
      vIDRaca,
      edtIdentificacao1.Text,
      edtIdentificacao2.Text,
      vDataEntrada,
      StringReplace(vPesoEntrada,',','.',[rfReplaceAll]),
      edtObservacao.Text,
      vIdRebanhoDestinoInsert,
      vIdLote,
      vIdContrato,
      vTipoCurral,
      intToStr(vTipoMovi),
      frmPrincipal.vIdBaseCampo,
      DateTimeToStr(now),
      vBloqueio,cbxDestinoAnimal.Selected.Text,vAtualizaDataEnt,vAtualizaPesoEnt);
      if serviceDB.vRastreada='1' then
      begin
       serviceDB.AtualizaGTAReProc(vIdGTA);
       AtualizaGTA(vIdGTA);
       serviceDB.AtualizaEstoqueReproc;
      end;
    end;
    if (chkPesar.IsChecked)  then
    begin
     if chkAtualizaPesoEntReproc.IsChecked then
      serviceDB.AtualizaPesoEntrada(vIDAnimal, serviceDB.vIdUserLogado,
        StringReplace(edtPeso.Text,',','.',[rfReplaceAll]),
       vIdProdutor,vTipoCurral,'')
     else
     begin
       serviceDB.InserePeso(vIDAnimal,serviceDB.vIdUserLogado,
       StringReplace(edtPeso.Text,',','.',[rfReplaceAll]) ,serviceDB.vTipoPesagem,vIdProdutor,'0',vIdLocal,
       FormatDateTime('mm/dd/yyyy',date).QuotedString,frmPrincipal.vIdBaseCampo);
     end;
    end;

      if (vIdLocalAtual<>vIdLocal) then
        serviceDB.InsereMovimentacao(vIDAnimal,'9000',FormatDateTime('mm/dd/yyyy',date) ,vIdLocalAtual,vIdLocal,
        frmPrincipal.vIdBaseCampo);

      if Switch1.IsChecked then
       begin
         for I := 0 to gridProtocolo.RowCount-1 do
         begin
           serviceDB.AplicaProtocoloNew(
             vidProtocolo,
             vidAnimal,
             FormatDateTime('mm/dd/yyyy',date),
             vIdLocal,
             '1',
             vIdAplicadorEsquerdo,
             vIdAplicadorDireito,
             frmPrincipal.vIdBaseCampo,
             gridProtocolo.Cells[7,I],
             gridProtocolo.Cells[4,I],
             gridProtocolo.Cells[5,I],
             gridProtocolo.Cells[6,I],
             StringReplace(gridProtocolo.Cells[2,I],',','.',[rfReplaceAll])
             );
         end
       end;
       if Switch2.IsChecked then
       begin
         serviceDB.AplicaTratamentoExtra(vIdProdutoExtra,vidAnimal,FormatDateTime('mm/dd/yyyy',date),
          vIdLocal,'1',vIdAplicadorEsquerdo, vIdAplicadorDireito,vTipoDosagemExtra,edtFarmacoDoseFixaExtra.Text,
          edtFarmacoExtraDosePesoExtra.Text,edtFarmacoExtraDosePesoKGExtra.Text,edtCarenciaDias.Text,
          frmPrincipal.vIdBaseCampo);
       end;
      if vIdRebanhoDestinoNovo.Length>0 then
      begin
       if vIdRebanhoDestinoNovo<>vIdRebanhoDestino then
       begin
        serviceDB.MovimentaAnimalRebanhoReproc(vidAnimal,vIdRebanhoDestino,
         vIdRebanhoDestinoNovo,FormatDateTime('mm/dd/yyyy',date),frmPrincipal.vIdBaseCampo);
       end;
      end;
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
      serviceDB.AtualizaLotacao(vIdLocal);
      serviceDB.AtualizaLotacao(vIdLocalAtual);
      serviceDB.AbreqryGriAniReProc;
      InfoGridProc;
      if frmPrincipal.vMov=5 then
        AtualizaResumoReproc(vIdCurralOrigemReproc);
  except
   on E: Exception do
   begin
     MyShowMessage('Erro ao inserir o animal:'+e.message,false);
     Exit;
   end;
  end;
end;

procedure TfrmMovPesagemAnimal.btnConfirmarClick(Sender: TObject);
begin
 if cbxTipoLote.ItemIndex=-1 then
 begin
   MyShowMessage('Selecione o tipo de lote',false);
   Exit;
 end;
 try
   ServiceConf.CriarLoteNutricional(vIdLocal,FormatDateTime('mm/dd/yyyy',date),cbxTipoLote.ItemIndex.ToString);

   AdicionaAparte(vIdLocal,
   serviceDB.TableCurraisCODIGO.AsString,
   serviceDB.TableCurraisPESO_MINIMO.AsString,
   serviceDB.TableCurraisPESO_MAXIMO.AsString,
   cbxTipoPesagem.Selected.Text);

   RecTipoLote.Visible    := false;
   frmCadCurral.Free;
  except
  on E : Exception do
   begin
     MyShowMessage('Erro ao criar lote : ',false);
   end;
 end;
end;

procedure TfrmMovPesagemAnimal.btnConfirmaTipoClick(Sender: TObject);
var
  Resposta : string;
begin
  if cbxTipoPesagem.ItemIndex>-1 then
  begin
    layTipoPesagem.Visible := false;
    if cbxTipoPesagem.ItemIndex=0 then
     serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'')
    else
     serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'1');
    serviceDB.AtualizaLotacaoGeral(ServiceDB.vIdPropriedade);
    frmPrincipal.vMov :=1;
    try
      frmCadCurral := TfrmCadCurral.Create(nil);
      frmCadCurral.ShowModal;
     finally
      if serviceDB.TableCurraisID.AsString.Length>0 then
      begin
        vIdLocal := serviceDB.TableCurraisID.AsString;
        if serviceDB.TableCurraisTIPO.AsInteger=1 then
        begin
          if ServiceConf.VerificaLoteAtivo(vIdLocal) then
          begin
            MyShowMessage('Curral não posso lote nutricional, deseja criar?',true);
            case frmPrincipal.vConfirma of
              1:
              begin
                  RecTipoLote.Visible := true;
              end;
              2:
               begin
                 MyShowMessage('Operação Abortada',false);
               end;
              end;
          end
          else
          begin
           AdicionaAparte(vIdLocal,
           serviceDB.TableCurraisCODIGO.AsString,
           serviceDB.TableCurraisPESO_MINIMO.AsString,
           serviceDB.TableCurraisPESO_MAXIMO.AsString,
           cbxTipoPesagem.Selected.Text);
           frmCadCurral.Release;
          end;
        end
        else
        begin
         AdicionaAparte(vIdLocal,
         serviceDB.TableCurraisCODIGO.AsString,
         serviceDB.TableCurraisPESO_MINIMO.AsString,
         serviceDB.TableCurraisPESO_MAXIMO.AsString,
         cbxTipoPesagem.Selected.Text);
         frmCadCurral.Release;
        end;
       end
       else
       begin
        frmCadCurral.Release;
       end;
    end;
     serviceDB.qryApartacao.Close;
     serviceDB.qryApartacao.Open;
  end
  else
  begin
     MyShowMessage('Informe o Tipo de Entrada',false);
     Exit;
  end;
end;

procedure TfrmMovPesagemAnimal.btnLerTagClick(Sender: TObject);
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

procedure TfrmMovPesagemAnimal.btnRemoveAparteClick(Sender: TObject);
begin
 if GridApartacao.RowCount>0 then
 begin
   serviceDB.DeletaApartacao(GridApartacao.Cells[4,GridApartacao.Row]);
   GeraGridApartacao(frmPrincipal.vIDPropriedadePropria);
 end;
 serviceDB.qryApartacao.Close;
 serviceDB.qryApartacao.Open;
end;



function TfrmMovPesagemAnimal.BuscaDadosAnimal(Identificacao,
  Tipo,Operacao: string): Boolean;
var
 vQryAux : TFDQuery;
begin
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 if Operacao='1' then
 begin
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('SELECT A.*,');
     Add('coalesce(CA.NOME,c.NOME) CATEGORIA,');
     Add('r.NOME RACA,CU.CODIGO LOCAL,');
     Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO CURRENT_DATE) ERA_ATUAL,');
     Add('DATEDIFF(DAY FROM DATA_ULTIMO_PESO TO CURRENT_DATE)+1 DIAS,');
     Add('PESO_ESTIMADO PESO_PROJ,');
     Add('AXR.NOME REBANHO,');
     Add('AXR.ID IDREBANHO,');
     Add('CCA.NUMERO');
     Add('FROM ANIMAL A');
     Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
     Add('JOIN CATEGORIAS CA ON CA.ID=A.ID_CATEGORIA_ATUAL');
     Add('JOIN RACA R ON R.ID=A.ID_RACA');
     Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
     Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
     Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL CCA ON CCA.ID=A.ID_CONTRATO');
     Add('WHERE A.STATUS=1 AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
     if Tipo='1' then
      Add('AND A.IDENTIFICACAO_1=:IDENT');
     if Tipo='2' then
      Add('AND A.IDENTIFICACAO_2=:IDENT');
     ParamByName('IDENT').AsString :=Identificacao;
     Open;
     if not vQryAux.IsEmpty then
     begin
       vIDAnimal    := vQryAux.FieldByName('ID').AsString;
       vIdRebanhoDestino      :=vQryAux.FieldByName('IDREBANHO').AsString;
       edtRebanhoDestino.Text :=vQryAux.FieldByName('REBANHO').AsString;
       vIdCategoria := vQryAux.FieldByName('ID_CATEGORIA').AsString;
       vIdRaca      := vQryAux.FieldByName('ID_RACA').AsString;
       vIdLocalAtual:= vQryAux.FieldByName('ID_LOCAL').AsString;
       vIdProdutor  :=  vQryAux.FieldByName('ID_PRODUTOR').AsString;
       cbxCategoria.ItemIndex := cbxCategoria.Items.IndexOf(vQryAux.FieldByName('CATEGORIA').AsString);
       cbxRaca.ItemIndex      := cbxRaca.Items.IndexOf(vQryAux.FieldByName('RACA').AsString);
       edtLocalAtual.Text     :=vQryAux.FieldByName('LOCAL').AsString;
       edtIdadeMeses.Text     :=vQryAux.FieldByName('ERA_ATUAL').AsString;
       edtObservacao.Text     :=vQryAux.FieldByName('OBSERVACAO').AsString;
       edtDtUltimoPeso.Text   :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsString;
       vDataUltimoPeso        :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsDateTime;
       vUltimoPeso            :=vQryAux.FieldByName('ULTIMO_PESO').AsFloat;
       edtUltimoPeso.Text     :=vQryAux.FieldByName('ULTIMO_PESO').AsString;
       edtPesoProj.Text       :=vQryAux.FieldByName('PESO_PROJ').AsString;
       vIdent2                :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
       vIdent1                :=vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
       edtDias.Text           :=vQryAux.FieldByName('DIAS').AsString;
       edtNumContrato.Text    :=vQryAux.FieldByName('NUMERO').AsString;
       vIdContrato            :=vQryAux.FieldByName('ID_CONTRATO').AsString;
       cbxDestinoAnimal.ItemIndex      := cbxDestinoAnimal.Items.IndexOf(vQryAux.FieldByName('DESTINO').AsString);
       if vQryAux.FieldByName('Bloqueio').AsInteger=0 then
        cbxBloqueio.ItemIndex :=1;
       if vQryAux.FieldByName('Bloqueio').AsInteger=1 then
        cbxBloqueio.ItemIndex :=0;
       if edtIdentificacao1.Text.Length=0 then
       begin
         edtIdentificacao1.Text:= vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
         edtIdentificacao1.Enabled := false;
       end;


       if edtIdentificacao2.Text.Length=0 then
         edtIdentificacao2.Text:= vQryAux.FieldByName('IDENTIFICACAO_2').AsString;

       vDiasUltimoPeso        := trunc(vDataUltimoPeso-date)+1;
       Result := true;
     end
     else
     begin
       vIdCategoria           := '';
       vIdRaca                := '';
       vIdLocal               := '';
       cbxCategoria.ItemIndex := -1;
       cbxRaca.ItemIndex      := -1;
       edtLocalAtual.Text     := '';
       edtIdadeMeses.Text     := '';
       vIdRebanhoDestino      :='';
       edtRebanhoDestino.Text :='';
       Result := false;
     end
   end;
 end;
 if Operacao='5' then
 begin
  with vQryAux,vQryAux.SQL do
  begin
     Clear;
     Add('SELECT first 1 A.*,c.NOME CATEGORIA,r.NOME RACA,CU.CODIGO LOCAL,');
     Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO CURRENT_DATE) ERA_ATUAL,');
     Add('DATEDIFF(DAY FROM DATA_ULTIMO_PESO TO CURRENT_DATE)+1 DIAS,');
     Add('PESO_ESTIMADO PESO_PROJ,');
     Add('AXR.NOME REBANHO,');
     Add('AXR.ID IDREBANHO,');
     Add('CCA.NUMERO');
     Add('FROM ANIMAL A');
     Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
     Add('JOIN RACA R ON R.ID=A.ID_RACA');
     Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
     Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
     Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL CCA ON CCA.ID=A.ID_CONTRATO');
     Add('WHERE A.STATUS=1 AND A.id_local='+vIdCurralOrigemReproc);
     if vIdGTA.Length>0 then
      Add('AND A.GTA_ID='+vIdGTA);
     Add('AND A.IDENTIFICACAO_1 IS NULL AND A.IDENTIFICACAO_2 IS NULL');
     Open;
     if not vQryAux.IsEmpty then
     begin
       vIDAnimal    := vQryAux.FieldByName('ID').AsString;
       vIdRebanhoDestino      :=vQryAux.FieldByName('IDREBANHO').AsString;
       edtRebanhoDestino.Text :=vQryAux.FieldByName('REBANHO').AsString;
       vIdCategoria := vQryAux.FieldByName('ID_CATEGORIA').AsString;
       vIdRaca      := vQryAux.FieldByName('ID_RACA').AsString;
       vIdLocalAtual:= vQryAux.FieldByName('ID_LOCAL').AsString;
       vIdProdutor  :=  vQryAux.FieldByName('ID_PRODUTOR').AsString;
       cbxCategoria.ItemIndex := cbxCategoria.Items.IndexOf(vQryAux.FieldByName('CATEGORIA').AsString);
       cbxRaca.ItemIndex      := cbxRaca.Items.IndexOf(vQryAux.FieldByName('RACA').AsString);
       edtLocalAtual.Text     :=vQryAux.FieldByName('LOCAL').AsString;
       edtIdadeMeses.Text     :=vQryAux.FieldByName('ERA_ATUAL').AsString;
       edtObservacao.Text     :=vQryAux.FieldByName('OBSERVACAO').AsString;
       edtDtUltimoPeso.Text   :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsString;
       vDataUltimoPeso        :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsDateTime;
       vUltimoPeso            :=vQryAux.FieldByName('ULTIMO_PESO').AsFloat;
       edtUltimoPeso.Text     :=vQryAux.FieldByName('ULTIMO_PESO').AsString;
       edtPesoProj.Text       :=vQryAux.FieldByName('PESO_PROJ').AsString;
       vIdent2                :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
       edtDias.Text           :=vQryAux.FieldByName('DIAS').AsString;
       edtNumContrato.Text    :=vQryAux.FieldByName('NUMERO').AsString;
       vIdContrato            :=vQryAux.FieldByName('ID_CONTRATO').AsString;

       if edtIdentificacao1.Text.Length=0 then
       begin
         edtIdentificacao1.Text:= vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
         edtIdentificacao1.Enabled := false;
       end;


       if edtIdentificacao2.Text.Length=0 then
         edtIdentificacao2.Text:= vQryAux.FieldByName('IDENTIFICACAO_2').AsString;

       vDiasUltimoPeso        := trunc(vDataUltimoPeso-date)+1;
       Result := true;
     end
     else
     begin
       vIdCategoria           := '';
       vIdRaca                := '';
       vIdLocal               := '';
       cbxCategoria.ItemIndex := -1;
       cbxRaca.ItemIndex      := -1;
       edtLocalAtual.Text     := '';
       edtIdadeMeses.Text     := '';
       vIdRebanhoDestino      :='';
       edtRebanhoDestino.Text :='';
       Result := false;
     end
  end;
 end;
 vQryAux.Free;
end;

procedure TfrmMovPesagemAnimal.BuscaDadosAnimalEdit(IdAnimal: string);
var
 vQryAux : TFDQuery;
begin
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT A.*,c.NOME CATEGORIA,r.NOME RACA,CU.CODIGO LOCAL,');
   Add('DATEDIFF(MONTH FROM DATA_NASCIMENTO TO CURRENT_DATE) ERA_ATUAL,');
   Add('DATEDIFF(DAY FROM DATA_PROC TO CURRENT_DATE)+1 DIAS,');
   Add('PESO_ESTIMADO PESO_PROJ,');
   Add('AXR.NOME REBANHO,');
   Add('AXR.ID IDREBANHO,');
   Add('CO.numero||''-''||PCO.nome NUMERO');
   Add('FROM ANIMAL A');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CURRAIS CU ON CU.ID=A.ID_LOCAL');
   Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=A.ID_REBANHO');
   Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL CCA ON CCA.ID=A.ID_CONTRATO');
   Add('LEFT JOIN contrato_compra_animal CO ON id_contrato=CO.id');
   Add('LEFT JOIN produtores PCO ON PCO.ID=CO.id_produtor_origem');
   Add('WHERE A.ID='+IdAnimal);
   Open;
   if not vQryAux.IsEmpty then
   begin
     vIDAnimal              := vQryAux.FieldByName('ID').AsString;
     vIdRebanhoDestino      :=vQryAux.FieldByName('IDREBANHO').AsString;
     edtRebanhoDestino.Text :=vQryAux.FieldByName('REBANHO').AsString;
     vIdCategoria           := vQryAux.FieldByName('ID_CATEGORIA').AsString;
     vIdRaca                := vQryAux.FieldByName('ID_RACA').AsString;
     vIdLocalAtual          := vQryAux.FieldByName('ID_LOCAL').AsString;
     vIdProdutor            :=  vQryAux.FieldByName('ID_PRODUTOR').AsString;
     cbxCategoria.ItemIndex := cbxCategoria.Items.IndexOf(vQryAux.FieldByName('CATEGORIA').AsString);
     cbxRaca.ItemIndex      := cbxRaca.Items.IndexOf(vQryAux.FieldByName('RACA').AsString);
     edtLocalAtual.Text     :=vQryAux.FieldByName('LOCAL').AsString;
     edtIdadeMeses.Text     :=vQryAux.FieldByName('ERA_ATUAL').AsString;
     edtObservacao.Text     :=vQryAux.FieldByName('OBSERVACAO').AsString;
     edtDtUltimoPeso.Text   :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsString;
     vDataUltimoPeso        :=vQryAux.FieldByName('DATA_ULTIMO_PESO').AsDateTime;
     vUltimoPeso            :=vQryAux.FieldByName('ULTIMO_PESO').AsFloat;
     edtUltimoPeso.Text     :=vQryAux.FieldByName('ULTIMO_PESO').AsString;
     edtPeso.Text           :=vQryAux.FieldByName('ULTIMO_PESO').AsString;
     edtPesoProj.Text       :=vQryAux.FieldByName('PESO_PROJ').AsString;
     vIdent2                :=vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
     vIdent1                :=vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
     edtDias.Text           :=vQryAux.FieldByName('DIAS').AsString;
     edtNumContrato.Text    :=vQryAux.FieldByName('NUMERO').AsString;
     vIdContrato            :=vQryAux.FieldByName('ID_CONTRATO').AsString;
     cbxCurralPasto.ItemIndex := cbxCurralPasto.Items.IndexOf(serviceDB.qryGriAniReProcLOCAL.AsString);
     if edtIdentificacao1.Text.Length=0 then
     begin
       edtIdentificacao1.Text:= vQryAux.FieldByName('IDENTIFICACAO_1').AsString;
       edtIdentificacao1.Enabled := false;
     end;
     if edtIdentificacao2.Text.Length=0 then
       edtIdentificacao2.Text:= vQryAux.FieldByName('IDENTIFICACAO_2').AsString;
     vDiasUltimoPeso        := trunc(vDataUltimoPeso-date)+1;
   end
   else
   begin
     vIdCategoria           := '';
     vIdRaca                := '';
     vIdLocal               := '';
     cbxCategoria.ItemIndex := -1;
     cbxRaca.ItemIndex      := -1;
     edtLocalAtual.Text     := '';
     edtIdadeMeses.Text     := '';
     vIdRebanhoDestino      :='';
     edtRebanhoDestino.Text :='';
   end
 end;
 vQryAux.Free;
end;


procedure TfrmMovPesagemAnimal.CarregaCurralPastoGrupo;
var
 vQryAux : TFDQuery;
 i       : integer;
begin
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM CURRAIS');
   Add('WHERE STATUS<>-1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   while not vQryAux.Eof do
   begin
    cbxCurralPasto.Items.Add(vQryAux.FieldByName('CODIGO').AsString);
    vQryAux.Next;
   end;
 end;
 vQryAux.Free;
end;

procedure TfrmMovPesagemAnimal.cbxAplicadorDireitoChange(Sender: TObject);
begin
 if cbxAplicadorDireito.ItemIndex>-1 then
   vIdAplicadorDireito := LinkFillControlToFieldNAME.BindList.GetSelectedValue.AsString;
end;

procedure TfrmMovPesagemAnimal.cbxAplicadorEsquerdoChange(Sender: TObject);
begin
 if cbxAplicadorEsquerdo.ItemIndex>-1 then
   vIdAplicadorEsquerdo := LinkFillControlToFieldID.BindList.GetSelectedValue.AsString;
end;

procedure TfrmMovPesagemAnimal.cbxCategoriaChange(Sender: TObject);
begin
 if cbxCategoria.ItemIndex>-1 then
  vIdCategoria := LinkFillControlToField1.BindList.GetSelectedValue.AsString;
 vSexoAnimal := serviceDB.RetornaSexoCat(vIdCategoria);
end;

procedure TfrmMovPesagemAnimal.cbxCurralPastoChange(Sender: TObject);
begin
  if cbxCurralPasto.ItemIndex>-1 then
  begin
   vIdLocal := IntToStr(Integer(cbxCurralPasto.Items.Objects[cbxCurralPasto.ItemIndex]));
   vIdLote  := ServiceConf.RetornaLoteLocal(vidLocal);
   vTipoPesagem := serviceDBN.RetornaTipoPesagemApartacao(vIdLocal);
   if vTipoPesagem='ENTRADA CONFINAMENTO' then
    vTipoMovi:=1
   else
    vTipoMovi:=0;
  end;
end;

procedure TfrmMovPesagemAnimal.cbxCurralPastoExit(Sender: TObject);
begin
 TOpenComboBox(cbxCurralPasto).Popup.IsOpen := False;
end;

procedure TfrmMovPesagemAnimal.cbxCurralPastoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
     begin
      edtRebanhoDestino.SetFocus;
     end);
   end).Start
 end;
end;

procedure TfrmMovPesagemAnimal.cbxGTAEntradaChange(Sender: TObject);
begin
 if cbxGTAEntrada.ItemIndex>-1 then
 begin
  vIdGTA := LinkFillControlToFieldNUMERO.BindList.GetSelectedValue.AsString;
  serviceDB.AtualizaGTAReProc(vIdGTA);
  AtualizaGTA(vIdGTA);
 end;
end;

procedure TfrmMovPesagemAnimal.AtualizaGTA(Id: String);
var
  dlg :TFrmmsgDlg;
  vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT G.*,P.NOME PRODUTOR_ORI FROM GTA G ');
   Add('JOIN PRODUTORES P ON P.ID=G.ID_PRODUTOR_ORIGEM');
   Add('where G.status=10 and G.ID=:IdGTA');
   ParamByName('IdGTA').AsString := Id;
   Open;
   if not vQryAux.IsEmpty then
   begin
     lblProdOrigemGTA.Text     := vQryAux.FieldByName('PRODUTOR_ORI').AsString;
     vIdProdutorOri            := vQryAux.FieldByName('ID_PRODUTOR_ORIGEM').AsString;
     vIdProdutor               := vQryAux.FieldByName('ID_PRODUTOR_DESTINO').AsString;
     lblTotalAnimaisGTA.Text   := vQryAux.FieldByName('TOTAL_GTA').AsString;
     lblTotalAnimaisProc.Text  := vQryAux.FieldByName('TOTAL_BRINCADOS').AsString;

     lblGTA0a12M.Text          := vQryAux.FieldByName('ZERO_A_12_MACHO').AsString;
     lblGTA0a12F.Text          := vQryAux.FieldByName('ZERO_A_12_FEMEA').AsString;
     lblGTA13A24M.Text         := vQryAux.FieldByName('TREZE_A_24_MACHO').AsString;
     lblGTA13A24F.Text         := vQryAux.FieldByName('TREZE_A_24_FEMEA').AsString;
     lblGTA25A36M.Text         := vQryAux.FieldByName('VITE_CINCO_A_36_MACHO').AsString;
     lblGTA25A36F.Text         := vQryAux.FieldByName('VITE_CINCO_A_36_FEMEA').AsString;
     lblGTAMais36M.Text        := vQryAux.FieldByName('MAIS_36_MACHO').AsString;
     lblGTAMais36F.Text        := vQryAux.FieldByName('MAIS_36_FEMEA').AsString;

     lblPROC0a12M.Text         := vQryAux.FieldByName('ZERO_A_12_MACHO_PROC').AsString;
     lblPROC0a12F.Text         := vQryAux.FieldByName('ZERO_A_12_FEMEA_PROC').AsString;
     lblPROC13A24M.Text        := vQryAux.FieldByName('TREZE_A_24_MACHO_PROC').AsString;
     lblPROC13A24F.Text        := vQryAux.FieldByName('TREZE_A_24_FEMEA_PROC').AsString;
     lblPROC25A36M.Text        := vQryAux.FieldByName('VITE_CINCO_A_36_MACHO_PROC').AsString;
     lblPROC25A36F.Text        := vQryAux.FieldByName('VITE_CINCO_A_36_FEMEA_PROC').AsString;
     lblPROCMais36M.Text       := vQryAux.FieldByName('MAIS_36_MACHO_PROC').AsString;
     lblPROCMais36F.Text       := vQryAux.FieldByName('MAIS_36_FEMEA_PROC').AsString;
    end
    else
    begin
       lblProdOrigemGTA.Text     := '';
       lblTotalAnimaisGTA.Text   := '0';
       lblTotalAnimaisProc.Text  := '0';
       lblGTA0a12M.Text          := '0';
       lblGTA0a12F.Text          := '0';
       lblGTA13A24M.Text         := '0';
       lblGTA13A24F.Text         := '0';
       lblGTA25A36M.Text         := '0';
       lblGTA25A36F.Text         := '0';
       lblGTAMais36M.Text        := '0';
       lblGTAMais36F.Text        := '0';
       lblPROC0a12M.Text         := '0';
       lblPROC0a12F.Text         := '0';
       lblPROC13A24M.Text        := '0';
       lblPROC13A24F.Text        := '0';
       lblPROC25A36M.Text        := '0';
       lblPROC25A36F.Text        := '0';
       lblPROCMais36M.Text       := '0';
       lblPROCMais36F.Text       := '0';
    end
  end;
   if serviceDB.qryGtaProcTOTAL_BRINCADOS.AsInteger >= serviceDB.qryGtaProcTOTAL_GTA.AsInteger then
   begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'GTA Lotada selecione outra GTA!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
       lblProdOrigemGTA.Text     := '';
       lblTotalAnimaisGTA.Text   := '0';
       lblTotalAnimaisProc.Text  := '0';
       lblGTA0a12M.Text          := '0';
       lblGTA0a12F.Text          := '0';
       lblGTA13A24M.Text         := '0';
       lblGTA13A24F.Text         := '0';
       lblGTA25A36M.Text         := '0';
       lblGTA25A36F.Text         := '0';
       lblGTAMais36M.Text        := '0';
       lblGTAMais36F.Text        := '0';
       lblPROC0a12M.Text         := '0';
       lblPROC0a12F.Text         := '0';
       lblPROC13A24M.Text        := '0';
       lblPROC13A24F.Text        := '0';
       lblPROC25A36M.Text        := '0';
       lblPROC25A36F.Text        := '0';
       lblPROCMais36M.Text       := '0';
       lblPROCMais36F.Text       := '0';
       serviceDB.AbreQryGTAReProc('E',serviceDB.vIdPropriedade);
     end);
     Exit;
   end;
end;


procedure TfrmMovPesagemAnimal.cbxProtocoloChange(Sender: TObject);
begin
 if cbxProtocolo.ItemIndex>-1 then
 begin
   vIdProtocolo := LinkFillControlToFieldNOME.BindList.GetSelectedValue.AsString;
   serviceDB.AbreQryProtocoloFarmacoProc(vIdProtocolo);
 end;
end;

procedure TfrmMovPesagemAnimal.cbxRacaChange(Sender: TObject);
begin
 if cbxRaca.ItemIndex>-1 then
  vIdRaca := LinkFillControlToField2.BindList.GetSelectedValue.AsString;
end;

procedure TfrmMovPesagemAnimal.chkReiden2Change(Sender: TObject);
begin
 edtIdentificacao2.Enabled := chkReiden2.IsChecked;
end;

procedure TfrmMovPesagemAnimal.chkReident1Change(Sender: TObject);
begin
 edtIdentificacao1.Enabled := chkReident1.IsChecked;
end;

procedure TfrmMovPesagemAnimal.edtBuscaLoteReprocClick(Sender: TObject);
begin
 serviceDB.AtualizaLotacaoGeral(ServiceDB.vIdPropriedade);
 frmPrincipal.vMov :=5;
  try
    frmCadCurral := TfrmCadCurral.Create(nil);
    serviceDB.AbreQryCurraisComAnimais(ServiceDB.vIdPropriedade);
    frmCadCurral.ShowModal;
  finally
    edtPastoOrigemReproc.text            := serviceDB.TableCurraisCODIGO.AsString;
    vIdCurralOrigemReproc                := serviceDB.TableCurraisID.AsString;
    AtualizaResumoReproc(vIdCurralOrigemReproc);
    if lblSemIdentificacaoReproc.Text = '0' then
    begin
     MyShowMessage('Local nao possui animais sem identificação!!',false);
     edtPastoOrigemReproc.text            := '';
     vIdCurralOrigemReproc                := '';
    end;
    frmCadCurral.Free;
  end;
end;

procedure TfrmMovPesagemAnimal.edtGtpUltimoChangeTracking(Sender: TObject);
var
 gmd :string;
begin
 if (edtGtpUltimo.Text.Length>0)and (edtDias.Text.Length>0) then
 begin
   gmd                   := FormatFloat('0.00',(strToFloat(edtGtpUltimo.Text))/
    strToFloat(edtDias.Text));
   edtgmdUltimoPeso.Text := gmd;
 end;
end;

procedure TfrmMovPesagemAnimal.edtIdadeMesesKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13)or(key=9) then
   edtIdentificacao1.SetFocus;
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmMovPesagemAnimal.edtIdentificacao1Enter(Sender: TObject);
begin
 if frmPrincipal.vMov=5 then
 begin
   if edtPastoOrigemReproc.Text.Length=0 then
   begin
    MyShowMessage('Selecione o Local de Origem dos Animais',false);
    Exit
   end;
 end;
end;

procedure TfrmMovPesagemAnimal.edtIdentificacao1Exit(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
   if edtIdentificacao1.Text.Length>0 then
   begin
     if frmPrincipal.vMov=5 then
     begin
       if edtPastoOrigemReproc.Text.Length=0 then
       begin
        MyShowMessage('Selecione o Local de Origem dos Animais',false);
        btnConfirma.Enabled := false;
        Exit
       end;
       if not serviceDB.VerificaIdentificacaoExit(edtIdentificacao1.Text) then
       begin
        MyShowMessage('Identificação em uso!',false);
        btnConfirma.Enabled := false;
        Exit;
       end;
       vIDAnimal          := serviceDB.RetornaIdAnimalReprocSemIdentificacao(vIdCurralOrigemReproc);
       vIdProdutor        := serviceDB.qryAnimalReprocSemIdentID_PRODUTOR.AsString;
       vIdLocalAtual      := serviceDB.qryAnimalReprocSemIdentID_LOCAL.AsString;
       vIdRebanhoDestino  := serviceDB.qryAnimalReprocSemIdentID_REBANHO.AsString;

       edtLocalAtual.Text := serviceDB.qryAnimalReprocSemIdentCURRAL_PASTO.AsString;
       edtDias.Text       :=
        intToStr(DaysBetween(serviceDB.qryAnimalReprocSemIdentDATA_PROC.AsDateTime,DATE));
       edtUltimoPeso.Text := serviceDB.qryAnimalReprocSemIdentULTIMO_PESO.AsString;
       edtIdadeMeses.Text := serviceDB.qryAnimalReprocSemIdentIDADE_MESES.AsString;
       vUltimoPeso        := serviceDB.qryAnimalReprocSemIdentULTIMO_PESO.AsFloat;

       if serviceDB.qryAnimalReprocSemIdentDATA_ULTIMO_PESO.AsString.Length>0 then
        edtDtUltimoPeso.Text := serviceDB.qryAnimalReprocSemIdentDATA_ULTIMO_PESO.AsString
       else
        edtDtUltimoPeso.Text := serviceDB.qryAnimalReprocSemIdentDATA_PROC.AsString;

       TThread.CreateAnonymousThread(
       procedure
       begin
         TThread.Synchronize( nil,
          procedure
          begin
            btnConfirma.Enabled := true;
            if edtIdentificacao2.Enabled then
              edtIdentificacao2.SetFocus
            else
             edtPeso.SetFocus
          end
         );
       end
       ).Start;
     end
     else
     begin
      if not chkReident1.IsChecked then
      begin
       if BuscaDadosAnimal(edtIdentificacao1.Text,'1',intToStr(frmPrincipal.vMov)) then
       begin
          TThread.CreateAnonymousThread(
          procedure
          begin
            TThread.Synchronize( nil,
              procedure
              begin
                layReident1.Visible       := (serviceDB.vRastreada='0') and (frmPrincipal.vMov<>5);
                layReident2.Visible       := (serviceDB.vRastreada='0') and (frmPrincipal.vMov<>5);
                edtIdentificacao1.Enabled := false;
                btnConfirma.Enabled := true;
                if edtIdentificacao2.Enabled then
                 edtIdentificacao2.SetFocus
                else
                 edtPeso.SetFocus
              end
            );
          end
          ).Start;
       end
       else
       begin
        MyShowMessage('Animal nao encontrado!',false);
        btnConfirma.Enabled := false;
        edtIdentificacao1.SetFocus;
        Exit;
       end;
      end
      else
      begin
        if not serviceDB.VerificaIdentificacaoExit(edtIdentificacao1.Text) then
        begin
           MyShowMessage('Identificação em uso!',false);
           btnConfirma.Enabled := false;
           Exit;
        end
        else
        begin
         TThread.CreateAnonymousThread(
         procedure
         begin
          TThread.Synchronize( nil,
          procedure
          begin
            btnConfirma.Enabled := true;
            if edtIdentificacao2.Enabled then
             edtIdentificacao2.SetFocus
            else
             edtPeso.SetFocus
          end);
         end).Start;
        end;
      end;
     end
   end;
end;

procedure TfrmMovPesagemAnimal.edtIdentificacao1KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
 begin
  if edtIdentificacao2.Enabled then
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
  else
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
end;

procedure TfrmMovPesagemAnimal.edtIdentificacao2Enter(Sender: TObject);
begin
 if frmPrincipal.vMov=5 then
 begin
   if edtPastoOrigemReproc.Text.Length=0 then
   begin
    MyShowMessage('Selecione o Local de Origem dos Animais',false);
    Exit
   end;
 end;
end;

procedure TfrmMovPesagemAnimal.edtIdentificacao2Exit(Sender: TObject);
var
  dlg :TFrmmsgDlg;
    vManejoDG_SISBOV:string;
begin
 if edtIdentificacao2.Text.Length>0 then
 begin
   if (serviceDB.vRastreada='1') and (edtIdentificacao2.Text.Length=7) then
   begin
    vManejoDG_SISBOV :=  serviceDBN.ConsultaManejoDigito(edtIdentificacao2.Text);
    if vManejoDG_SISBOV.Length>0 then
      edtIdentificacao2.Text := vManejoDG_SISBOV;
   end;
   if edtIdentificacao2.Text.Length>15 then
   begin
     if copy(edtIdentificacao2.Text,0,1)='0' then
      edtIdentificacao2.Text := copy(edtIdentificacao2.Text,2,edtIdentificacao2.Text.Length)
   end;

   if frmPrincipal.vMov=5 then
   begin
     if edtPastoOrigemReproc.Text.Length=0 then
     begin
      MyShowMessage('Selecione o Local de Origem dos Animais',false);
      Exit
     end;


      if (serviceDB.vRastreada='1')then
      begin
        if edtIdentificacao1.Text.Length>1 then
        begin
          if(vAnimalEdit=0)and(not serviceDB.VerificaIdentificacaoExit(edtIdentificacao1.Text)) then
           begin
            MyShowMessage('Ja existe um animal com essa identificação Eletronica!',false);
            btnConfirma.Enabled := false;
            edtIdentificacao1.SetFocus;
            Exit;
          end;
        end
        else
        begin
          if(vAnimalEdit=0)and(not serviceDB.VerificaIdentificacaoExit(edtIdentificacao2.Text)) then
          begin
            MyShowMessage('Ja existe um animal com essa identificação 2!',false);
            btnConfirma.Enabled := false;
            edtIdentificacao1.SetFocus;
            Exit;
          end;
        end;
        if serviceDB.ChecaBrincoEstoque(edtIdentificacao2.Text,vIdProdutor) then
         begin
          myShowMessage('SISBOV não localizado no estoque',false);
          edtIdentificacao2.SetFocus;
          exit;
         end;
      end;

     if not serviceDB.VerificaIdentificacaoExit(edtIdentificacao2.Text) then
     begin
       MyShowMessage('Identificação em uso!',false);
       btnConfirma.Enabled := false;
       Exit;
     end;
     vIDAnimal          := serviceDB.RetornaIdAnimalReprocSemIdentificacao(vIdCurralOrigemReproc);
     vIdProdutor        := serviceDB.qryAnimalReprocSemIdentID_PRODUTOR.AsString;
     vIdLocalAtual      := serviceDB.qryAnimalReprocSemIdentID_LOCAL.AsString;
     edtLocalAtual.Text := serviceDB.qryAnimalReprocSemIdentCURRAL_PASTO.AsString;
     vIdRebanhoDestino  := serviceDB.qryAnimalReprocSemIdentID_REBANHO.AsString;
     edtDias.Text       :=
      intToStr(DaysBetween(serviceDB.qryAnimalReprocSemIdentDATA_PROC.AsDateTime,DATE));

      if serviceDB.qryAnimalReprocSemIdentDATA_ULTIMO_PESO.AsString.Length>0 then
        edtDtUltimoPeso.Text := serviceDB.qryAnimalReprocSemIdentDATA_ULTIMO_PESO.AsString
      else
        edtDtUltimoPeso.Text := serviceDB.qryAnimalReprocSemIdentDATA_PROC.AsString;


     edtIdadeMeses.Text := serviceDB.qryAnimalReprocSemIdentIDADE_MESES.AsString;
     vUltimoPeso        := serviceDB.qryAnimalReprocSemIdentULTIMO_PESO.AsFloat;

     TThread.CreateAnonymousThread(
     procedure
     begin
       TThread.Synchronize( nil,
        procedure
        begin
          btnConfirma.Enabled := true;
          if edtPeso.Enabled then
           edtPeso.SetFocus
          else
           edtObservacao.SetFocus;
        end
       );
     end
     ).Start;
   end;

   if not chkReiden2.IsChecked then
   begin
     if BuscaDadosAnimal(edtIdentificacao2.Text,'2',intToStr(frmPrincipal.vMov)) then
     begin
      TThread.CreateAnonymousThread(
      procedure
      begin
        TThread.Synchronize( nil,
          procedure
          begin
            layReident1.Visible       := (serviceDB.vRastreada='0') and (frmPrincipal.vMov<>5);
            layReident2.Visible       := (serviceDB.vRastreada='0') and (frmPrincipal.vMov<>5);
            btnConfirma.Enabled := true;
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
       layReident1.Visible       := false;
       layReident2.Visible       := false;
       chkReident1.IsChecked     := false;
       chkReiden2.IsChecked      := false;
       MyShowMessage('Animal nao encontrado!',false);
       btnConfirma.Enabled := false;
       edtIdentificacao1.SetFocus;
       Exit;
     end;
   end
   else
   begin
     if not serviceDB.VerificaIdentificacaoExit(edtIdentificacao2.Text) then
     begin
       MyShowMessage('Identificação em uso!',false);
       btnConfirma.Enabled := false;
       Exit;
     end
     else
     begin
      TThread.CreateAnonymousThread(
      procedure
      begin
        TThread.Synchronize( nil,
          procedure
          begin
            btnConfirma.Enabled := true;
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
 end;
end;

procedure TfrmMovPesagemAnimal.edtIdentificacao2KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13)or(key=9) then
 begin
  if edtPeso.Enabled then
  begin
   TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
      procedure
      begin
         edtPeso.SetFocus;
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
         edtObservacao.SetFocus;
       end
      );
    end
    ).Start;
   end
 end;
end;

procedure TfrmMovPesagemAnimal.edtObservacaoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
   btnConfirmaClick(Sender);
end;

procedure TfrmMovPesagemAnimal.edtPesoEnter(Sender: TObject);
begin
 if ComBalanca.Active=true then
  FlagSolicitaPeso:=1;
end;

procedure TfrmMovPesagemAnimal.CalculaDose;
var
 I :Integer;
begin
  for I := 0 to gridProtocolo.RowCount-1 do
  begin
    if gridProtocolo.Cells[1,I]='PESO' then
     gridProtocolo.Cells[2,I]:=
        FloatToStr(strToFloat(gridProtocolo.Cells[3,I]) *
         (StrToFloat(edtPeso.Text)/strToFloat(gridProtocolo.Cells[9,I])));
  end;
end;

procedure TfrmMovPesagemAnimal.edtPesoExit(Sender: TObject);
var
 vAparte:string;
 dlg :TFrmmsgDlg;
 vConta:double;
begin
 if edtPeso.Text.Length>0 then
 begin
  if(Switch1.IsChecked)and(gridProtocolo.RowCount>0) then
     CalculaDose;
  if (edtPeso.Text.Length>0) and (vUltimoPeso>0) then
  begin
    vConta                :=  (strToFloat(edtPeso.Text)-vUltimoPeso);
    edtGtpUltimo.value    :=   vConta;
  end;
  if not chkManterCurralAtual.IsChecked then
  begin
   vAparte:=serviceDB.CarregaCurralApartacao(StringReplace(edtPeso.Text,',','.',[rfReplaceAll]));
   if vAparte.Length>0 then
   begin
    cbxCurralPasto.ItemIndex := cbxCurralPasto.Items.IndexOf(vAparte);
    cbxCurralPasto.SetFocus;
   end
   else
   begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Nenhum Curral encontrada para essa peso!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        cbxCurralPasto.ItemIndex :=-1;
        cbxCurralPasto.SetFocus;
      end);
   end;
  end
  else
  begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
        procedure
        begin
          edtObservacao.SetFocus;
        end
      );
    end
    ).Start;
  end;
 end;
 if ComBalanca.Active=true then
  FlagSolicitaPeso:=0;
end;

procedure TfrmMovPesagemAnimal.edtPesoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
 if(key=13)or(key=9) then
   edtPesoExit(sender);

end;

procedure TfrmMovPesagemAnimal.edtRebanhoDestinoClick(Sender: TObject);
begin
 EditButton4Click(Sender);
end;

procedure TfrmMovPesagemAnimal.edtRebanhoDestinoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
     begin
      edtObservacao.SetFocus;
     end);
   end).Start
 end;
end;

procedure TfrmMovPesagemAnimal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 serviceDBN.VerificaDestinoPlanNutricional;
end;

procedure TfrmMovPesagemAnimal.FormCreate(Sender: TObject);
begin
  layPerifericos.Visible := false;
  FlagSolicitaPeso       :=0;
  RecTipoLote.Visible    := false;
end;

procedure TfrmMovPesagemAnimal.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=vkf1 then mnuConfigClick(Sender);
  if key=vkf2 then mnuApartacaoClick(Sender);
  if key=vkf3 then mnuSanidadeClick(Sender);
  if key=vkf5 then
  begin
    if ComBalanca.Active=true then
      FlagSolicitaPeso:=1;
  end;
  if key=vkf12 then
  begin
    if btnConfirma.Enabled then
      btnConfirmaClick(sender);
  end;
  if key=vkf4 then btnCancelarClick(sender);
end;

procedure TfrmMovPesagemAnimal.FormShow(Sender: TObject);
begin
  RecTipoLote.Visible := false;
  cbxTipoPesagem.Items.Clear;
  cbxTipoPesagem.Items.Add('CONTROLE');
  cbxTipoPesagem.Items.Add('ENTRADA CONFINAMENTO');
  cbxTipoPesagem.ItemIndex :=-1;

  if frmPrincipal.vIdBaseCampo<>'0' then
   frmMovPesagemAnimal.Caption := 'Movimentação e Pesagens Offline';
  layProtocoloSani.Visible   := false;
  layReident1.Visible        := false;
  layReident2.Visible        := false;
  layReprocessamento.Visible := frmPrincipal.vMov=5;
  RecReprocessamento.Visible := frmPrincipal.vMov=5;
  LayApartacao.Visible := false;
  chkPesar.IsChecked   := true;
  GeraGridApartacao(serviceDB.vIdPropriedade);
  abrirConfiguracaoManejo;
  serviceDB.TableUsuarioFaz.Close;
  serviceDB.TableUsuarioFaz.Open;
  serviceDB.AbreqryGriAniReProc;
  edtIdentificacao1.Enabled    := cbxUsarIdent2.ItemIndex=1;
  edtIdentificacao2.Enabled    := not SwitcSoChip.IsChecked;
  InfoGridProc;
  vAnimalEdit :=0;
  serviceDB.TableProtocoloTelaProc.Close;
  serviceDB.TableProtocoloTelaProc.Open;
  abrirConfiguracaoManejo;
  layPerifericos.Visible := true;
  recAllWhite.Enabled    := false;
  chkReident1.Visible    := serviceDB.vRastreada='0';
  chkReiden2.Visible     := serviceDB.vRastreada='0';
  layGTAEntNovos.Visible :=(serviceDB.vRastreada='1')and(frmPrincipal.vMov=5);
  if (serviceDB.vRastreada='1')and(frmPrincipal.vMov=5)then
   serviceDB.AbreQryGTAReProc('E',frmPrincipal.vIDPropriedadePropria);
end;

procedure TfrmMovPesagemAnimal.GridApartacaoEditingDone(Sender: TObject;
  const ACol, ARow: Integer);
begin
serviceDB.AtualizaPesoParte(
  GridApartacao.Cells[4,GridApartacao.Row],
  GridApartacao.Cells[2,GridApartacao.Row],
  GridApartacao.Cells[3,GridApartacao.Row],
  GridApartacao.Cells[5,GridApartacao.Row],
  GridApartacao.Cells[7,GridApartacao.Row]);
  GeraGridApartacao(frmPrincipal.vIDPropriedadePropria);

end;

procedure TfrmMovPesagemAnimal.Image14Click(Sender: TObject);
var
 I:integer;
begin
 if Switch1.IsChecked then
 begin
   layProtocoloSani.Visible   := true;
   if cbxProtocolo.ItemIndex=-1 then
   begin
     MyShowMessage('Selecione o protocolo!!',false);
     Exit;
   end;
   gridProtocolo.RowCount := 0;
   gridProtocolo.RowCount := GridConfigProtocolo.RowCount;

   for I := 0 to GridConfigProtocolo.RowCount-1 do
   begin
     gridProtocolo.Cells[0,I] := GridConfigProtocolo.Cells[0,I];
     gridProtocolo.Cells[1,I] := GridConfigProtocolo.Cells[1,I];
     gridProtocolo.Cells[4,I] := GridConfigProtocolo.Cells[6,I];
     gridProtocolo.Cells[5,I] := GridConfigProtocolo.Cells[7,I];
     gridProtocolo.Cells[6,I] := GridConfigProtocolo.Cells[5,I];
     gridProtocolo.Cells[7,I] := GridConfigProtocolo.Cells[8,I];
     gridProtocolo.Cells[8,I] := vIdProtocolo;
     gridProtocolo.Cells[9,I] := GridConfigProtocolo.Cells[4,I];

     if (GridConfigProtocolo.Cells[2,I].Length>0)AND(GridConfigProtocolo.Cells[2,I]<>'0') then
     begin
      gridProtocolo.Cells[2,I] := GridConfigProtocolo.Cells[2,I];
      gridProtocolo.Cells[3,I] := GridConfigProtocolo.Cells[2,I];
     end;

     if (GridConfigProtocolo.Cells[3,I].Length>0) AND (GridConfigProtocolo.Cells[3,I]<>'0') then
     begin
      gridProtocolo.Cells[2,I] := GridConfigProtocolo.Cells[3,I];
      gridProtocolo.Cells[3,I] := GridConfigProtocolo.Cells[3,I];
     end;

   end;
 end
 else
  layProtocoloSani.Visible   := false;
 if Switch2.IsChecked then
 begin
   if edtFarmacoExtra.Text.Length=0 then
   begin
     MyShowMessage('Selecione o Farmaco Extra!!',false);
     Exit;
   end;
 end;
 recAllWhite.Enabled := true;
 LaySanidade.Visible := false;
end;

procedure TfrmMovPesagemAnimal.Image2Click(Sender: TObject);
begin
 LayApartacao.Visible := false;
 recAllWhite.Enabled  := true;
end;

procedure TfrmMovPesagemAnimal.Image5Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMovPesagemAnimal.imgCloseClick(Sender: TObject);
var
 dir,dirParam,vCom,vComInt :string;
 I :INTEGER;
 dlg :TFrmmsgDlg;
begin
 edtPeso.Enabled        := chkPesar.IsChecked;
 cbxCurralPasto.Enabled := chkManterCurralAtual.IsChecked=false;
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
   serviceDB.TableConfigManejoUSA_CHIP.AsInteger              := ord(chkUsaBastao.IsChecked);
   serviceDB.TableConfigManejoUSA_BALANCA.AsInteger           := ord(chkUsaBalanca.IsChecked);
   serviceDB.TableConfigManejoUSA_RFID.AsInteger              := ord(chkRFID.IsChecked);
   serviceDB.TableConfigManejoATUALIZA_DT_ENTRADA.AsInteger   := ord(chkAtualizaDataEnt.IsChecked);
   serviceDB.TableConfigManejoATUALIZA_PESO_ENTRADA.AsInteger := ord(chkAtualizaPesoEntReproc.IsChecked);
   serviceDB.TableConfigManejoSO_CHIP.AsInteger               := ord(SwitcSoChip.IsChecked);
   try
    serviceDB.TableConfigManejo.ApplyUpdates(-1);
    layPerifericos.Visible := false;

    edtIdentificacao1.Enabled := cbxUsarIdent2.ItemIndex=1;
    layPerifericos.Visible := false;
   except
    on E: Exception do
      ShowMessage('Erro Ao Inserir Configuração:'+E.Message);
   end;
   recAllWhite.Enabled    := true;
   edtIdentificacao2.Enabled := not SwitcSoChip.IsChecked;
end;

procedure TfrmMovPesagemAnimal.InfoGridProc;
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
   if TryStrToFloat(GridAnimaisProcEntrada.Cells[8,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(GridAnimaisProcEntrada.Cells[9,I],Val1) then
    Sum1 := Sum1 + Val1;
   if TryStrToFloat(GridAnimaisProcEntrada.Cells[10,I],Val2) then
    Sum2 := Sum2 + Val2;
  end;
  if I>0 then
  begin
   lblGridInfoMediaPeso.Text    := FormatFloat('####,##.00',(Sum/GridAnimaisProcEntrada.RowCount));
   lblGTPMedio.Text             := FormatFloat('####,##.00',(Sum1/GridAnimaisProcEntrada.RowCount));
   lblGMDMedio.Text             := FormatFloat('####,##.00',(Sum2/GridAnimaisProcEntrada.RowCount));
   lblGridInfQtdCab.Text        := IntToStr(GridAnimaisProcEntrada.RowCount);
  end
  else
  begin
    lblGridInfoMediaPeso.Text    := '0,00';
    lblGridInfQtdCab.Text        := '0';
    lblGTPMedio.Text             := '0,00';
    lblGMDMedio.Text             := '0,00';
  end;
end;

procedure TfrmMovPesagemAnimal.InsereLogReprocessamento(
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


procedure TfrmMovPesagemAnimal.mnuApartacaoClick(Sender: TObject);
begin
   GeraGridApartacao(serviceDB.vIdPropriedade);
   cbxTipoPesagem.ItemIndex :=-1;
   LayApartacao.Visible   := true;
   layTipoPesagem.Visible := false;
   recAllWhite.Enabled    := false;
end;

procedure TfrmMovPesagemAnimal.mnuConfigClick(Sender: TObject);
begin
   abrirConfiguracaoManejo;
   layPerifericos.Visible := true;
end;

procedure TfrmMovPesagemAnimal.mnuSanidadeClick(Sender: TObject);
begin
  serviceDB.AbreUsuariosFazenda;
  LaySanidade.Visible := true;
  recAllWhite.Enabled    := false;
end;

procedure TfrmMovPesagemAnimal.mnuStrGridEditClick(Sender: TObject);
var
 vGTAID:String;
begin
  LimpaCampos;
  serviceDB.LimpaDadosAnimalExistente(serviceDB.qryGriAniReProcID.AsString);
  BuscaDadosAnimalEdit(serviceDB.qryGriAniReProcID.AsString);
end;

procedure TfrmMovPesagemAnimal.mnuStrGridExcluirClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
   dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Deseja Realmente Deletar esse Registro?';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
       if dlg.vBntConfirmaMsg=1 then
       begin
        try
         serviceDB.InativaReprocessamento(
         serviceDB.qryGriAniReProcID.AsString,
         serviceDB.qryGriAniReProcIDPESO.AsString,
         FormatDateTime('dd/mm/yyyy',serviceDB.qryGriAniReProcDATA_REPROCESSAMENTO.AsDateTime),
         serviceDB.qryGriAniReProcID_LOCAL.AsString);
         serviceDB.AbreqryGriAniReProc;
        except
         on E: Exception do
          myShowMessage('Erro ao Exlcuir Registro :'+e.Message,false)
        end;
       end
    end);
    Exit;

end;

procedure TfrmMovPesagemAnimal.MyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TfrmMovPesagemAnimal.Rectangle12Click(Sender: TObject);
begin
 vIniLeituraRFIDControle:= false;
 btnLerTag.Enabled      := true;
end;

procedure TfrmMovPesagemAnimal.Switch1Switch(Sender: TObject);
begin
 if not Switch1.IsChecked then
 begin
   LayProtocolo.Enabled := false;
   cbxProtocolo.ItemIndex :=-1;
   serviceDB.TableProtocoloFarmacoProc.close;
   cbxAplicadorEsquerdo.ItemIndex :=-1;
   cbxAplicadorDireito.ItemIndex  :=-1;
 end
 else
 begin
  LayProtocolo.Enabled := true;
  Switch2.IsChecked    := false;
 end;

end;

procedure TfrmMovPesagemAnimal.Switch2Switch(Sender: TObject);
begin
 if not Switch1.IsChecked then
   layTratamentoExtra.Enabled := false
 else
  layTratamentoExtra.Enabled := true;
end;

end.



