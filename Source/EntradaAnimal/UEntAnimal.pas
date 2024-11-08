 unit UEntAnimal;

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
  Winsoft.FireMonkey.FComPort;

type
  TfrmOpercaoEntrada = class(TForm)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    layBase: TLayout;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    BindSourceDB5: TBindSourceDB;
    StyleBook1: TStyleBook;
    BindSourceDB6: TBindSourceDB;
    BindSourceDB7: TBindSourceDB;
    BindSourceDB8: TBindSourceDB;
    BindSourceDB9: TBindSourceDB;
    BindSourceDB10: TBindSourceDB;
    PopupMenu1: TPopupMenu;
    mnuStrGridEdit: TMenuItem;
    mnuStrGridExcluir: TMenuItem;
    layPerifericos: TLayout;
    Rectangle50: TRectangle;
    Image6: TImage;
    ShadowEffect33: TShadowEffect;
    GridLayout1: TGridLayout;
    Layout69: TLayout;
    Layout70: TLayout;
    Layout71: TLayout;
    Layout73: TLayout;
    Image10: TImage;
    Layout74: TLayout;
    Label36: TLabel;
    Layout75: TLayout;
    Image7: TImage;
    Layout76: TLayout;
    Label37: TLabel;
    Layout84: TLayout;
    Image12: TImage;
    Layout85: TLayout;
    Label41: TLabel;
    Layout86: TLayout;
    chkUsaBalanca: TSwitch;
    Label42: TLabel;
    recBalanca: TRectangle;
    RecLeitorChip: TRectangle;
    recRFID: TRectangle;
    Layout87: TLayout;
    chkUsaBastao: TSwitch;
    Label43: TLabel;
    Layout88: TLayout;
    chkRFID: TSwitch;
    Label44: TLabel;
    Layout89: TLayout;
    Layout90: TLayout;
    Layout91: TLayout;
    Layout92: TLayout;
    Layout93: TLayout;
    Layout94: TLayout;
    Label45: TLabel;
    Label46: TLabel;
    cbxBalancaModelo: TComboBox;
    Label50: TLabel;
    Label52: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    cbxChipModelo: TComboBox;
    cbxRFIDModelo: TComboBox;
    cbxBalancaPorta: TComboBox;
    cbxChipPorta: TComboBox;
    cbxRFIDPorta: TComboBox;
    recAllWhite: TRectangle;
    imgApr: TImage;
    ShadowEffect16: TShadowEffect;
    layGTAEntNovos: TLayout;
    Rectangle3: TRectangle;
    ShadowEffect2: TShadowEffect;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Rectangle24: TRectangle;
    Label4: TLabel;
    lblProdOrigemGTA: TLabel;
    Layout12: TLayout;
    Rectangle28: TRectangle;
    Label9: TLabel;
    lblTotalAnimaisGTA: TLabel;
    Label11: TLabel;
    lblTotalAnimaisProc: TLabel;
    Layout13: TLayout;
    Rectangle29: TRectangle;
    Rectangle30: TRectangle;
    Rectangle47: TRectangle;
    Label33: TLabel;
    Rectangle48: TRectangle;
    Label34: TLabel;
    Layout17: TLayout;
    Layout40: TLayout;
    Rectangle31: TRectangle;
    Layout41: TLayout;
    Rectangle32: TRectangle;
    Label47: TLabel;
    Layout45: TLayout;
    Rectangle33: TRectangle;
    Label49: TLabel;
    lblGTA0a12M: TLabel;
    Label53: TLabel;
    lblProc0a12M: TLabel;
    Layout49: TLayout;
    Rectangle34: TRectangle;
    Label58: TLabel;
    lblGTA0a12F: TLabel;
    Label62: TLabel;
    lblProc0a12F: TLabel;
    Layout53: TLayout;
    Rectangle35: TRectangle;
    Layout57: TLayout;
    Rectangle36: TRectangle;
    Label64: TLabel;
    Layout58: TLayout;
    Rectangle37: TRectangle;
    Label65: TLabel;
    lblGTAMais36M: TLabel;
    Label67: TLabel;
    lblProcMais36M: TLabel;
    Layout59: TLayout;
    Rectangle38: TRectangle;
    Label69: TLabel;
    lblGTAMais36F: TLabel;
    Label71: TLabel;
    lblProcMais36F: TLabel;
    Layout60: TLayout;
    Rectangle39: TRectangle;
    Layout61: TLayout;
    Rectangle40: TRectangle;
    Label73: TLabel;
    Layout62: TLayout;
    Rectangle41: TRectangle;
    Label74: TLabel;
    lblGTA25A36M: TLabel;
    Label76: TLabel;
    lblProc25A36M: TLabel;
    Layout63: TLayout;
    Rectangle42: TRectangle;
    Label78: TLabel;
    lblGTA25A36F: TLabel;
    Label80: TLabel;
    lblProc25A36F: TLabel;
    Layout64: TLayout;
    Rectangle43: TRectangle;
    Layout65: TLayout;
    Rectangle44: TRectangle;
    Label82: TLabel;
    Layout66: TLayout;
    Rectangle45: TRectangle;
    Label83: TLabel;
    lblGTA13A24M: TLabel;
    Label85: TLabel;
    lblProc13A24M: TLabel;
    Layout67: TLayout;
    Rectangle46: TRectangle;
    Label87: TLabel;
    lblGTA13A24F: TLabel;
    Label89: TLabel;
    lblProc13A24F: TLabel;
    Layout4: TLayout;
    Rectangle15: TRectangle;
    Label3: TLabel;
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
    Rectangle16: TRectangle;
    Layout18: TLayout;
    Label27: TLabel;
    edtIdadeMeses: TEdit;
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
    Layout24: TLayout;
    Rectangle19: TRectangle;
    ShadowEffect6: TShadowEffect;
    Layout47: TLayout;
    Layout48: TLayout;
    Layout50: TLayout;
    Rectangle22: TRectangle;
    Label31: TLabel;
    cbxCurralPasto: TComboBox;
    Rectangle49: TRectangle;
    Label35: TLabel;
    edtObservacao: TEdit;
    Layout51: TLayout;
    LayApartacao: TLayout;
    GridAnimaisProcEntrada: TStringGrid;
    laySuperior: TLayout;
    Rectangle5: TRectangle;
    lblStatusTela: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    LinkFillControlToFieldNUMERO: TLinkFillControlToField;
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
    LinkGridToDataSourceBindSourceDB6: TLinkGridToDataSource;
    Layout52: TLayout;
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
    StringColumn6: TStringColumn;
    StringColumn7: TStringColumn;
    StringColumn8: TStringColumn;
    StringColumn9: TStringColumn;
    StringColumn10: TStringColumn;
    Layout7: TLayout;
    Rectangle6: TRectangle;
    Label10: TLabel;
    Layout14: TLayout;
    Image2: TImage;
    Image3: TImage;
    ShadowEffect9: TShadowEffect;
    Rectangle7: TRectangle;
    layInfGrid: TLayout;
    recInfGrif: TRectangle;
    layEstatisticaGrid: TLayout;
    Label500000: TLabel;
    lblGridInfQtdCab: TLabel;
    Label12: TLabel;
    lblGridInfoMediaPeso: TLabel;
    ImageList1: TImageList;
    LayBndOutroEras: TLayout;
    Rectangle8: TRectangle;
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
    Rectangle20: TRectangle;
    LaySanidade: TLayout;
    Layout27: TLayout;
    Rectangle23: TRectangle;
    Image13: TImage;
    ShadowEffect15: TShadowEffect;
    Layout31: TLayout;
    Rectangle27: TRectangle;
    Label19: TLabel;
    Layout32: TLayout;
    Image14: TImage;
    Layout26: TLayout;
    Label20: TLabel;
    Switch1: TSwitch;
    Rectangle51: TRectangle;
    Layout33: TLayout;
    Label21: TLabel;
    cbxProtocolo: TComboBox;
    Layout34: TLayout;
    GridConfigProtocolo: TStringGrid;
    BindSourceDB11: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB11: TLinkGridToDataSource;
    Rectangle52: TRectangle;
    Layout35: TLayout;
    Label22: TLabel;
    BindSourceDB12: TBindSourceDB;
    BindSourceDB13: TBindSourceDB;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    LayProtocolo: TLayout;
    edtFarmacoExtra: TEdit;
    EditButton2: TEditButton;
    edtFarmacoTipoDoseExtra: TEdit;
    Layout28: TLayout;
    Layout29: TLayout;
    Label8: TLabel;
    Switch2: TSwitch;
    Label18: TLabel;
    edtFarmacoExtraDosePesoKGExtra: TEdit;
    edtFarmacoExtraDosePesoExtra: TEdit;
    edtFarmacoDoseFixaExtra: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    layTratamentoExtra: TLayout;
    Rectangle25: TRectangle;
    Layout30: TLayout;
    Layout36: TLayout;
    Label30: TLabel;
    Label38: TLabel;
    cbxAplicadorEsquerdo: TComboBox;
    Label39: TLabel;
    cbxAplicadorDireito: TComboBox;
    BindSourceDB14: TBindSourceDB;
    LinkFillControlToFieldNAME: TLinkFillControlToField;
    LinkFillControlToField3: TLinkFillControlToField;
    Label40: TLabel;
    edtCarenciaDias: TEdit;
    Layout37: TLayout;
    Rectangle26: TRectangle;
    Label48: TLabel;
    cbxTipoIdentificacao: TComboBox;
    Label51: TLabel;
    cbxUsarIdent2: TComboBox;
    edtProdutorOrigemBND: TEdit;
    EditButton3: TEditButton;
    Label14: TLabel;
    OpenDialog1: TOpenDialog;
    Rectangle53: TRectangle;
    edtPathPdf: TEdit;
    btnBuscaArquivo: TEditButton;
    Label56: TLabel;
    Label57: TLabel;
    lblUltimaBnd: TLabel;
    lblQtdAnimaisArquivo: TLabel;
    Layout20: TLayout;
    chkBNDOrigem: TSwitch;
    lblAguarde: TLabel;
    StringColumn1: TStringColumn;
    Rectangle54: TRectangle;
    Layout38: TLayout;
    Label15: TLabel;
    BindSourceDB15: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    edtRebanhoDestino: TEdit;
    EditButton4: TEditButton;
    Rectangle55: TRectangle;
    Label59: TLabel;
    edtContratoCompra: TEdit;
    EditButton5: TEditButton;
    btnNovaGta: TButton;
    Layout43: TLayout;
    Label60: TLabel;
    SwitcSoChip: TSwitch;
    Rectangle56: TRectangle;
    cbxGTAEntrada: TComboBox;
    LinkFillControlToFieldID2: TLinkFillControlToField;
    Rectangle57: TRectangle;
    Label61: TLabel;
    cbxDestinoAnimal: TComboBox;
    layProtocoloSani: TLayout;
    Rectangle58: TRectangle;
    Rectangle59: TRectangle;
    Label63: TLabel;
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
    ComBastao: TFComPort;
    ComRFID: TFComPort;
    ComBalanca: TFComPort;
    StringColumn2: TStringColumn;
    layTipoPesagem: TLayout;
    Rectangle60: TRectangle;
    Layout44: TLayout;
    Label66: TLabel;
    cbxTipoPesagem: TComboBox;
    Layout56: TLayout;
    btnConfirmaTipo: TRectangle;
    Layout68: TLayout;
    Image9: TImage;
    Label68: TLabel;
    ShadowEffect13: TShadowEffect;
    RecTipoLote: TRectangle;
    recPopup: TRectangle;
    Layout96: TLayout;
    Layout97: TLayout;
    Layout98: TLayout;
    Label100: TLabel;
    Image41: TImage;
    Layout99: TLayout;
    Layout101: TLayout;
    btnConfirmar: TRectangle;
    Label101: TLabel;
    Rectangle72: TRectangle;
    cbxTipoLote: TComboBox;
    layMnuBar: TLayout;
    Rectangle61: TRectangle;
    bntMnuConfiguracao: TRectangle;
    Label70: TLabel;
    bntMnuSanidade: TRectangle;
    Label72: TLabel;
    bntMenuApartacao: TRectangle;
    Label75: TLabel;
    Layout39: TLayout;
    Image5: TImage;
    procedure FormCreate(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridApartacaoEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure btnRemoveAparteClick(Sender: TObject);
    procedure cbxGTAEntradaChange(Sender: TObject);
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
    procedure edtPesoKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure cbxCurralPastoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtObservacaoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure Image14Click(Sender: TObject);
    procedure cbxProtocoloChange(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
    procedure Switch2Switch(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure edtFarmacoDoseFixaExtraKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtFarmacoExtraDosePesoExtraKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtFarmacoExtraDosePesoKGExtraKeyUp(Sender: TObject;
      var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure cbxAplicadorEsquerdoChange(Sender: TObject);
    procedure cbxAplicadorDireitoChange(Sender: TObject);
    procedure btnBuscaArquivoClick(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure chkBNDOrigemSwitch(Sender: TObject);
    procedure edtIdadeMesesKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditButton4Click(Sender: TObject);
    procedure edtRebanhoDestinoClick(Sender: TObject);
    procedure chkConfinamentoChange(Sender: TObject);
    procedure btnAddApartacaoClick(Sender: TObject);
    procedure EditButton5Click(Sender: TObject);
    procedure btnNovaGtaClick(Sender: TObject);
    procedure btnConfirmaTipoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Image41Click(Sender: TObject);
    procedure bntMnuConfiguracaoClick(Sender: TObject);
    procedure bntMnuSanidadeClick(Sender: TObject);
    procedure bntMenuApartacaoClick(Sender: TObject);
    procedure btnCancelLoginMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfirmaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfirmaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    private
    { Private declarations }
    public
     vTipoApartacao,vIdGTA,vIdCategoria,vIdRaca,vTipoCurral,vIdLocal,vRespRFID,vIdProdutorOri,vIdProdutor,vSexoAnimal,
     vIdProtocolo,vIdProdutoExtra,vIdAplicadorDireito,vIdAplicadorEsquerdo,
     vidAnimal,vTipoDosagemExtra,vIdProdutorOrigemBND,vIdRebanho,vIdLote,vIdContrato,vValorCompra:string;
     FlagSolicitaPeso,vFunction,vAnimalEdit,vTemBND,vChecaEstoqueChip,
     vVerificaGTAEstoqueChip,vTipoValor:integer;
     vIniLeituraRFID,vIniLeituraRFIDControle:Boolean;
     VvalorCabGTA,vValorCompraContrato,vPesoTotalContrato:Double;
     procedure CarregaCurralPastoGrupo;
     procedure GeraGridApartacao(idPropriedade:string);
     procedure AdicionaAparte(idCurral,NomeCurral,PesoMinimo,PesoMaximo,TipoPesagem:string);
     procedure AbreQryGTAProc(Tipo, IdPropriedade: string);
     procedure AtualizaGTA(Id:String);
     procedure ConectaBalanca(vCom, vModelo: string);
     function  LimpaPeso(Peso: String): string;
     procedure ConectaBastao(vCom, vModelo: string);
     procedure ConctaRFIDSerial(vCom, vModelo: string);
     procedure abrirConfiguracaoManejo;
     procedure LimpaCampos;
     procedure InfoGridProc;
     procedure MyShowMessage(msg: string;btnCancel:Boolean);
     procedure CalculaDose;
     procedure AtualizaValotesContrato;

  end;

var
  frmOpercaoEntrada: TfrmOpercaoEntrada;
type
  TOpenComboBox = class(TComboBox);

implementation

{$R *.fmx}

uses UCadCategoria, UCadGTA, UCadPadrao, UCadRaca, UCadUsers, UCurrais,
  UPrincipal, UPropriedadeParceira, UServiceDB, UMsgDlg, UFarmacos, ServiceDB2,
  UAuxRebanho, ServiceRel, USeviceConfinamento, UCurralConfinamento, UMsgDlgRel,
  ContratoCompra;

procedure TfrmOpercaoEntrada.MyShowMessage(msg: string;btnCancel:Boolean);
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

procedure TfrmOpercaoEntrada.ComBastaoRxChar(Sender: TObject);
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
      edtIdentificacao1.Text := StringReplace(vChip,' ','',[rfReplaceAll]);
   if vModelo='ALLFLEX' then
   begin
    if edtIdentificacao1.Text.Length=0 then
    begin
     edtIdentificacao1.Text := StringReplace(vChip,' ','',[rfReplaceAll]);
      if edtIdentificacao2.Enabled then
       edtIdentificacao2.SetFocus
      else
      edtPeso.SetFocus;
    end;
   end;
   if vModelo='TRU-TEST' then
   begin
    if edtIdentificacao1.Text.Length=0 then
    begin
     vChip := StringReplace(vChip,' ','',[rfReplaceAll]);
     if vChip.Length<15 then
      vChip:='9'+vChip;
     edtIdentificacao1.Text :=StringReplace(vChip,' ','',[rfReplaceAll]);
     if edtIdentificacao2.Enabled then
       edtIdentificacao2.SetFocus
      else
      edtPeso.SetFocus
    end
   end;
 end;
end;

procedure TfrmOpercaoEntrada.ComRFIDRxChar(Sender: TObject);
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

procedure TfrmOpercaoEntrada.ConctaRFIDSerial(vCom, vModelo: string);
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
procedure TfrmOpercaoEntrada.ConectaBastao(vCom, vModelo: string);
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

procedure TfrmOpercaoEntrada.EditButton2Click(Sender: TObject);
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

procedure TfrmOpercaoEntrada.EditButton3Click(Sender: TObject);
var
 UltimaBND:String;
begin
  serviceDB.AbreQryPropriedades('0');
  frmCadPropriedades   := TfrmCadPropriedades.Create(Self);
  frmPrincipal.vCadGTA :=true;
  try
    frmCadPropriedades.ShowModal;
    vIdProdutorOrigemBND      := serviceDB.TableProdutoresID.AsString;
    edtProdutorOrigemBND.Text := serviceDB.TableProdutoresNOME.AsString;
    UltimaBND                 := serviceDB.RetornaUltimaBND(vIdProdutorOrigemBND);
    if UltimaBND.Length=0 then
    begin
      MyShowMessage('Nenhuma BND Encontrada para Esse produtor!',false);
      lblUltimaBnd.Text         :='...';
      lblQtdAnimaisArquivo.Text  :='...';
      vTemBND:=0;
      Exit;
    end
    else
    begin
      lblUltimaBnd.Text         :='Ultima BND:'+UltimaBND;
      lblQtdAnimaisArquivo.Text :='Total Animais:'+serviceDB.RetornaTotalAnimaisBND(vIdProdutorOrigemBND);
      vTemBND:=1;
    end;
  finally
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmOpercaoEntrada.EditButton4Click(Sender: TObject);
begin
  frmCadRebanho := TfrmCadRebanho.Create(nil);
  try
    frmCadRebanho.ShowModal;
  finally
    edtRebanhoDestino.text       := serviceDBN.TAuxRebanhoNOME.AsString;
    vIdRebanho                   := serviceDBN.TAuxRebanhoID.AsString;
    frmCadRebanho.Free;
  end;
end;

procedure TfrmOpercaoEntrada.EditButton5Click(Sender: TObject);
begin
 frmContratoCompra := TfrmContratoCompra.Create(nil);
  try
    frmContratoCompra.ShowModal;
  finally
    edtContratoCompra.text        := ServiceConf.TContratoCompraNUMERO.AsString+' | '+ServiceConf.TContratoCompraPRODUTOR_ORIGEM.AsString;
    vIdContrato                   := ServiceConf.TContratoCompraID.AsString;
    vValorCompraContrato          := ServiceConf.TContratoCompraVALOR_TOTAL.AsFloat;
    vTipoValor                    := ServiceConf.TContratoCompraTIPO_VALOR.AsInteger;
    vPesoTotalContrato            := ServiceConf.TContratoCompraTOTALPESO.AsFloat;
    frmContratoCompra.Free;
  end;
end;

procedure TfrmOpercaoEntrada.LimpaCampos;
begin
 edtIdentificacao1.Text   :='';
 edtIdentificacao2.Text   :='';
 edtPeso.Text             :='';
 edtObservacao.Text       :='';
 cbxCurralPasto.ItemIndex :=-1;
 edtIdentificacao2.Enabled := not SwitcSoChip.IsChecked;
end;

function TfrmOpercaoEntrada.LimpaPeso(Peso: String): string;
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

procedure TfrmOpercaoEntrada.ConectaBalanca(vCom, vModelo: string);
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

procedure TfrmOpercaoEntrada.GeraGridApartacao(idPropriedade:string);
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

procedure TfrmOpercaoEntrada.AbreQryGTAProc(Tipo, IdPropriedade: string);
begin
  serviceDB.AbreQryGTAProc('E',frmPrincipal.vIDPropriedadePropria);
end;

procedure TfrmOpercaoEntrada.abrirConfiguracaoManejo;
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

  if serviceDB.TableConfigManejoMODELO_BASTAO.AsString.Length>0 then
   cbxChipModelo.ItemIndex    := cbxChipModelo.Items.IndexOf(serviceDB.TableConfigManejoMODELO_BASTAO.AsString)
  else
   cbxChipModelo.ItemIndex    := -1;

  chkUsaBastao.IsChecked      := serviceDB.TableConfigManejoUSA_CHIP.AsInteger=1;
  chkUsaBalanca.IsChecked     := serviceDB.TableConfigManejoUSA_BALANCA.AsInteger=1;
  chkRFID.IsChecked           := serviceDB.TableConfigManejoUSA_RFID.AsInteger=1;
  chkBNDOrigem.IsChecked      := serviceDB.TableConfigManejoCHECA_BND_ORIGEM.AsInteger=1;

  edtProdutorOrigemBND.Enabled := chkBNDOrigem.IsChecked;
  edtPathPdf.Enabled           := chkBNDOrigem.IsChecked;
  SwitcSoChip.IsChecked        := serviceDB.TableConfigManejoSO_CHIP.AsInteger=1;

end;

procedure TfrmOpercaoEntrada.AdicionaAparte(idCurral, NomeCurral, PesoMinimo,
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

procedure TfrmOpercaoEntrada.AtualizaGTA(Id: String);
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
   Add('where G.status=1 and G.ID=:IdGTA');
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
       serviceDB.AbreQryGTAProc('E',serviceDB.vIdPropriedade);
     end);
     Exit;
   end;
end;

procedure TfrmOpercaoEntrada.AtualizaValotesContrato;
begin
 ServiceConf.TContratoAtualizaValores.Close;
 ServiceConf.TContratoAtualizaValores.ParamByName('ID').AsInteger := vIdContrato.ToInteger;
 ServiceConf.TContratoAtualizaValores.Open;

 vValorCompraContrato          := ServiceConf.TContratoAtualizaValoresVALOR_TOTAL.AsFloat;
 vTipoValor                    := ServiceConf.TContratoAtualizaValoresTIPO_VALOR.AsInteger;
 vPesoTotalContrato            := ServiceConf.TContratoAtualizaValoresTOTALPESO.AsFloat;
end;

procedure TfrmOpercaoEntrada.btnAddApartacaoClick(Sender: TObject);
begin
  cbxTipoPesagem.ItemIndex :=-1;
  layTipoPesagem.Visible   := true;
end;

procedure TfrmOpercaoEntrada.btnBuscaArquivoClick(Sender: TObject);
var
I,X           : Integer;
 Txt         : TextFile;
 Quebra      : TStringList;
 vPathGeral,Arq,vConsulta:string;
 vQryAux:TFDQuery;
 vSISBOV,vNASCIMENTO,vRACA,vSEXO,vINCLUSAO,vINVENTARIO:string;
 myThread : TThread;
begin
 if OpenDialog1.Execute then
   edtPathPdf.Text     := OpenDialog1.FileName;
 if edtPathPdf.Text.Length>3 then
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
  X:=0;

  if edtProdutorOrigemBND.Text.Length=0 then
  begin
    myShowMessage('Informe o Produtor de Origem da BND!',FALSE);
    Exit;
  end;

  Arq       := frmPrincipal.PathSaveText;
  vPathGeral:= frmPrincipal.PathPdfToText+' '+
  edtPathPdf.Text+' '+Arq;
  Winexec(PAnsiChar(AnsiString(vPathGeral)),SW_NORMAL);
  sleep(5000);
  Quebra  := TStringList.Create;
  AssignFile(Txt,Arq);
  reset(txt);
  with vQryAux,vQryAux.SQL do
  begin
    Clear;
    Add('DELETE FROM TMP_BND_OUTRO_ERAS');
    ExecSQL;
  end;
  myThread := TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize(nil,procedure
    begin
      lblAguarde.Visible := true;
      imgClose.Enabled   := false;
    end);
    while not Eoln(txt) do
    begin
      Quebra.Clear;
      Readln(txt,Arq);
      ExtractStrings([';'],[],pchar(Arq),Quebra);
      if i>0 then
      begin
         vSISBOV     :=Quebra.Strings[0];
         vNASCIMENTO :=Quebra.Strings[1];
         vRACA       :=Quebra.Strings[2];
         vSEXO       :=Quebra.Strings[3];
         vINCLUSAO   :=Quebra.Strings[4];
         vINVENTARIO :=Quebra.Strings[5];
         if COPY(vSEXO,0,1)='F' then
          vSexo :='FEMEA';
         vConsulta   := serviceDB.ConsultaSisbovBndProdutor(vSISBOV,vIdProdutorOrigemBND);
         if vConsulta<>'0' then
         begin
          TThread.Synchronize(nil,procedure
          begin
           myShowMessage('Sisbov :'+vSISBOV+' já cadastrado na BND do Produtor :'+vConsulta+#13+
           ' Para importar novamente é necessario excuir a BND desse produtor.',false)
          end);
          X :=1;
          Break
         end;
         with vQryAux,vQryAux.SQL do
         begin
           Clear;
           Add('INSERT INTO TMP_BND_OUTRO_ERAS(ID_PRODUTOR, SISBOV, NASCIMENTO, RACA, SEXO, INCLUSAO, INVENTARIO)');
           Add('VALUES(:ID_PRODUTOR, :SISBOV, :NASCIMENTO, :RACA, :SEXO, :INCLUSAO, :INVENTARIO)');
           ParamByName('ID_PRODUTOR').AsString :=vIdProdutorOrigemBND;
           ParamByName('SISBOV').AsString      :=vSISBOV;
           ParamByName('NASCIMENTO').AsDate    :=strToDate(vNASCIMENTO);
           ParamByName('RACA').AsString        :=vRACA;
           ParamByName('SEXO').AsString        :=vSEXO;
           ParamByName('INCLUSAO').AsDate      :=strToDate(vINCLUSAO);
           ParamByName('INVENTARIO').AsString  :=vINVENTARIO;
           ExecSQL;
         end;
      end;
      inc(i);
      TThread.Synchronize(nil,procedure
      begin
       lblQtdAnimaisArquivo.Text   := IntToStr(i);
      end);
    end;
    TThread.Synchronize(nil,procedure
    begin
      vTemBND            := 1;
      lblAguarde.Visible := false;
      myShowMessage('BND Importada com sucesso!!',false);
      imgClose.Enabled   := true;
    end);
  end);
  myThread.Start;
end;

procedure TfrmOpercaoEntrada.btnCancelarClick(Sender: TObject);
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

procedure TfrmOpercaoEntrada.btnCancelLoginMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
    TRectangle(Sender).Opacity := 0.5;
end;

procedure TfrmOpercaoEntrada.btnConfirmaClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
  vNumeroGTA:string;
  I:integer;
begin
  if (edtIdentificacao1.Text.Length=0)and(edtIdentificacao2.Text.Length=0) then
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
  end
  else
  begin
    if edtIdentificacao1.Text.Length>1 then
    begin
      if  (vAnimalEdit=0)and(not serviceDB.VerificaIdentificacaoExit(edtIdentificacao1.Text)) then
       begin
        dlg := TFrmmsgDlg.Create(nil);
        dlg.Position := TFormPosition.ScreenCenter;
        dlg.msg.Text := 'Ja existe um animal com essa identificação Eletronica!';
        dlg.btnCancel.Visible := false;
        dlg.ShowModal(
        procedure(ModalResult: TModalResult)
        begin
          btnConfirma.Enabled := false;
          edtIdentificacao1.SetFocus;
        end);
        Exit;
      end;
    end
    else
    begin
      if(vAnimalEdit=0)and(not serviceDB.VerificaIdentificacaoExit(edtIdentificacao2.Text)) then
      begin
        dlg := TFrmmsgDlg.Create(nil);
        dlg.Position := TFormPosition.ScreenCenter;
        dlg.msg.Text := 'Ja existe um animal com essa identificação 2!';
        dlg.btnCancel.Visible := false;
        dlg.ShowModal(
        procedure(ModalResult: TModalResult)
        begin
          btnConfirma.Enabled := false;
          edtIdentificacao1.SetFocus;
        end);
        Exit;
      end;
    end
  end;
  if (vAnimalEdit=0)and(ServiceDB.vRastreada='1') and (frmPrincipal.vMov<>5) then
  begin
     if serviceDB.ChecaBrincoEstoque(edtIdentificacao2.Text,vIdProdutor) then
     begin
      myShowMessage('SISBOV não localizado no estoque',false);
      edtIdentificacao2.SetFocus;
      exit;
     end;
  end;

  if(frmPrincipal.vMov=5)and(chkBNDOrigem.IsChecked)then
  begin
     if serviceDB.ChecaBndProdutorOutroEras(vIdProdutorOrigemBND,edtIdentificacao2.Text) then
     begin
       MyShowMessage('SISBOV Não encontrado na BND de Origem',false);
     end;
  end;

  if cbxRaca.ItemIndex=-1 then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe uma Raça do Animal!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      cbxRaca.SetFocus;
    end);
    Exit;
  end;
  if cbxCategoria.ItemIndex=-1 then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe uma Categoria do Animal!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      cbxCategoria.SetFocus;
    end);
    Exit;
  end;
  if (frmPrincipal.vMov=5)and(chkBNDOrigem.IsChecked) then
  begin
    if (vSexoAnimal)<>copy(UpperCase(serviceDB.vSexoBndOutroEras),0,1) then
    begin
      MyShowMessage('Sexo diferente da BND!',false);
      Exit;
    end
  end;

  if edtIdadeMeses.Text.Length=0 then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe uma (Era) Idade em meses do Animal!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtIdadeMeses.SetFocus;
    end);
    Exit;
  end;
  if edtPeso.Text.Length=0 then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Peso do Animal!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtPeso.SetFocus;
    end);
    Exit;
  end;
  if cbxCurralPasto.ItemIndex=-1 then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Local destino do animal!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      cbxCurralPasto.SetFocus;
    end);
    Exit;
  end
  else
  begin
   if serviceDB.RetornaLotacaoCurral(vIdLocal)<=0 then
   begin
     MyShowMessage('Capacidade do curral ja foi atingida',false);
     exit;
   end;
  end;
  if cbxDestinoAnimal.ItemIndex=-1 then
  begin
     MyShowMessage('Informe o desino dos animais!',false);
     exit;
   end;

  if cbxGTAEntrada.ItemIndex=-1 then
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe uma GTA do Animal!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      cbxGTAEntrada.SetFocus;
    end);
    Exit;
  end
  else
  begin
  //********************************
  if(StrToInt(edtIdadeMeses.Text)<=12) AND (vSexoAnimal='M') then
   begin
     if lblGTA0a12M.Text=lblPROC0a12M.Text then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Não existe saldo na GTA para sexo: Macho e Idade '+edtIdadeMeses.text+' Meses!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMeses.SetFocus;
       end);
       Exit;
     end;
   end;
   if(StrToInt(edtIdadeMeses.Text)>12)and((StrToInt(edtIdadeMeses.Text)<25))  AND (vSexoAnimal='M') then
   begin
     if lblGTA13A24M.Text=lblProc13A24M.Text then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Não existe saldo na GTA para sexo: Macho e Idade '+edtIdadeMeses.text+' Meses!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMeses.SetFocus;
       end);
       Exit;
     end;
   end;
   if(StrToInt(edtIdadeMeses.Text)>24)and((StrToInt(edtIdadeMeses.Text)<=36))  AND (vSexoAnimal='M') then
   begin
     if lblGTA25A36M.Text=lblProc25A36M.Text then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Não existe saldo na GTA para sexo: Macho e Idade '+edtIdadeMeses.text+' Meses!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMeses.SetFocus;
       end);
       Exit;
     end;
   end;
   if(StrToInt(edtIdadeMeses.Text)>36)AND (vSexoAnimal='M') then
   begin
     if lblGTAMais36M.Text=lblProcMais36M.Text then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Não existe saldo na GTA para sexo: Macho e Idade '+edtIdadeMeses.text+' Meses!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMeses.SetFocus;
       end);
       Exit;
     end;
   end;
   if(StrToInt(edtIdadeMeses.Text)<=12) AND (vSexoAnimal='F') then
   begin
     if lblGTA0a12F.Text=lblProc0a12F.Text then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Não existe saldo na GTA para sexo: Femea e Idade '+edtIdadeMeses.text+' Meses!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMeses.SetFocus;
       end);
       Exit;
     end;
   end;
   if(StrToInt(edtIdadeMeses.Text)>12)and((StrToInt(edtIdadeMeses.Text)<25))  AND (vSexoAnimal='F') then
   begin
     if lblGTA13A24F.Text=lblProc13A24F.Text then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Não existe saldo na GTA para sexo: Femea e Idade '+edtIdadeMeses.text+' Meses!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMeses.SetFocus;
       end);
       Exit;
     end;
   end;
   if(StrToInt(edtIdadeMeses.Text)>24)and((StrToInt(edtIdadeMeses.Text)<=36))  AND (vSexoAnimal='F') then
   begin
     if lblGTA25A36F.Text=lblProc25A36F.Text then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Não existe saldo na GTA para sexo: Femea e Idade '+edtIdadeMeses.text+' Meses!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMeses.SetFocus;
       end);
       Exit;
     end;
   end;
   if(StrToInt(edtIdadeMeses.Text)>36)AND (vSexoAnimal='F') then
   begin
     if lblGTAMais36F.Text=lblProcMais36F.Text then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Não existe saldo na GTA para sexo: Femea e Idade '+edtIdadeMeses.text+' Meses!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMeses.SetFocus;
       end);
       Exit;
     end;
   end;
   if edtRebanhoDestino.Text.Length=0 then
   begin
    MyShowMessage('Informe o Rebanho!!',false);
    Exit;
   end;
   if edtContratoCompra.Text.Length=0 then
  begin
    MyShowMessage('Informe o contrato de compra',false);
    Exit;
  end;
  //**********CHECK ERA GTA**********************
  end;
  try
   vNumeroGTA := cbxGTAEntrada.Selected.Text;
   if vTipoValor<>1 then
    VvalorCabGTA := serviceDB.RetornaValorContrado(vValorCompraContrato,vTipoValor,edtPeso.Text.ToDouble,vPesoTotalContrato)
   else
    VvalorCabGTA:= vValorCompraContrato;

   vValorCompra := VvalorCabGTA.ToString;

   vValorCompra:= StringReplace(vValorCompra,',','.',[rfReplaceAll]) ;
   if vAnimalEdit=0 then
   begin
    serviceDB.InsereAnimal(vIdLocal, vIdCategoria,vIdRaca,FormatDateTime('mm/dd/yyyy',date),edtIdadeMeses.Text,
     StringReplace(edtPeso.Text,',','.',[rfReplaceAll]),
     vIDPRODUTOR,vIDPRODUTORORI,vIdGTA,edtObservacao.Text,edtIdentificacao1.Text,edtIdentificacao2.Text,vValorCompra,'1','COMPRA',vIdRebanho,vIdlOTE,
     vIdContrato,vTipoCurral,cbxDestinoAnimal.Selected.Text,vTipoApartacao);

     serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'NOVO');
     vAnimalEdit := 0;
     vidAnimal   := serviceDB.RetornaMaxIDAnimal;

     //AplicaProtocoloNew(idProtocolo, idAnimal, DataAplicacao,
     //idLocal, TipoAplicacao, idResponsavelEsquerda, idResponsavelDireita,IDBASE,
     //vTipoTratamento,vIdFarmaco,vTipoDose,vDiasCarencia,vDoseFixa: string);

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
   end;
   if vAnimalEdit=1 then
   begin
     serviceDB.UpdateAnimal(serviceDB.qryGriAniProcID.AsString,vIdLocal,vIdCategoria,vIDRaca,edtIdentificacao1.Text,
      edtIdentificacao2.Text,dateToStr(date),vIDGTA,edtIdadeMeses.Text,StringReplace(edtPeso.Text,',','.',[rfReplaceAll])
      ,serviceDB.vIdUserLogado,
      vIdProdutor,vIdProdutorOri,VvalorCabGTA.ToString,vIdRebanho,vIdLote,vIdContrato,cbxDestinoAnimal.Selected.Text);
      vAnimalEdit :=0;
      serviceDB.AtualizaSaldoGTA(vIdGTA);
      serviceDB.AtualizaGTAProc(vIdGTA);
      AtualizaGTA(vIdGTA);
   end;
    if cbxGTAEntrada.ItemIndex>-1 then
    begin
      serviceDB.AbreQryGTAProc('E',serviceDB.vIdPropriedade);
      cbxGTAEntrada.ItemIndex := cbxGTAEntrada.Items.IndexOf(vNumeroGTA);
    end;
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
    serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'NOVO');
  except
   on E: Exception do
   begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Erro ao inserir o animal:'+e.message;
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
     end);
     Exit;
   end;
  end;
  edtIdentificacao2.Enabled := not SwitcSoChip.IsChecked;
  if vTipoValor=2 then
   AtualizaValotesContrato;
end;

procedure TfrmOpercaoEntrada.btnConfirmaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  TRectangle(Sender).Opacity := 0.5;
end;

procedure TfrmOpercaoEntrada.btnConfirmaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
       TRectangle(Sender).Opacity := 1;
end;

procedure TfrmOpercaoEntrada.btnConfirmarClick(Sender: TObject);
begin
 if cbxTipoLote.ItemIndex=-1 then
 begin
  MyShowMessage('Selecione o tipo de lote!',false);
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

procedure TfrmOpercaoEntrada.btnConfirmaTipoClick(Sender: TObject);
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

procedure TfrmOpercaoEntrada.btnLerTagClick(Sender: TObject);
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

procedure TfrmOpercaoEntrada.btnNovaGtaClick(Sender: TObject);
begin
 frmCadGTA := TfrmCadGTA.Create(self);
 try
  frmCadGTA.ShowModal;
 finally
  serviceDB.AbreQryGTAProc('E',serviceDB.vIdPropriedade);
  frmCadGTA.Free;
 end;
end;

procedure TfrmOpercaoEntrada.btnRemoveAparteClick(Sender: TObject);
begin
 if GridApartacao.RowCount>0 then
 begin
   serviceDB.DeletaApartacao(GridApartacao.Cells[4,GridApartacao.Row]);
   GeraGridApartacao(frmPrincipal.vIDPropriedadePropria);
 end;
 serviceDB.qryApartacao.Close;
 serviceDB.qryApartacao.Open;
end;

procedure TfrmOpercaoEntrada.CalculaDose;
var
 I :Integer;
begin
  for I := 0 to gridProtocolo.RowCount-1 do
  begin
    if gridProtocolo.Cells[1,I]='PESO' then
     gridProtocolo.Cells[2,I]:=
        FloatToStr(strToFloat(gridProtocolo.Cells[3,I]) *
         (StrToFloat(edtPeso.Text)/strToFloat(gridProtocolo.Cells[3,I])));
  end;
end;

procedure TfrmOpercaoEntrada.CarregaCurralPastoGrupo;
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

procedure TfrmOpercaoEntrada.cbxAplicadorDireitoChange(Sender: TObject);
begin
 if cbxAplicadorDireito.ItemIndex>-1 then
   vIdAplicadorDireito := LinkFillControlToFieldNAME.BindList.GetSelectedValue.AsString;
end;

procedure TfrmOpercaoEntrada.cbxAplicadorEsquerdoChange(Sender: TObject);
begin
 if cbxAplicadorEsquerdo.ItemIndex>-1 then
   vIdAplicadorEsquerdo := LinkFillControlToField3.BindList.GetSelectedValue.AsString;
end;

procedure TfrmOpercaoEntrada.cbxCategoriaChange(Sender: TObject);
begin
 if cbxCategoria.ItemIndex>-1 then
  vIdCategoria := LinkFillControlToField2.BindList.GetSelectedValue.AsString;
 vSexoAnimal := serviceDB.RetornaSexoCat(vIdCategoria);
end;

procedure TfrmOpercaoEntrada.cbxCurralPastoChange(Sender: TObject);
begin
  if cbxCurralPasto.ItemIndex>-1 then
  begin
   vIdLocal       := IntToStr(Integer(cbxCurralPasto.Items.Objects[cbxCurralPasto.ItemIndex]));
   vIdLote        := ServiceConf.RetornaLoteLocal(vidLocal);
   vTipoCurral    := ServiceConf.RetornaTipoCurral(vidLocal);
   if cbxCurralPasto.ListItems[cbxCurralPasto.ItemIndex].TagString='ENTRADA' then
    vTipoApartacao := '0'
   else
    vTipoApartacao := '1';
  end;
end;

procedure TfrmOpercaoEntrada.cbxCurralPastoExit(Sender: TObject);
begin
 TOpenComboBox(cbxCurralPasto).Popup.IsOpen := False;
end;

procedure TfrmOpercaoEntrada.cbxCurralPastoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
 begin
   edtObservacao.SetFocus;
 end;
end;

procedure TfrmOpercaoEntrada.cbxCurralPastoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=vkf12 then
   if btnConfirma.Enabled then
    btnConfirmaClick(sender);
  if key=vkf4 then btnCancelarClick(sender);
end;

procedure TfrmOpercaoEntrada.cbxGTAEntradaChange(Sender: TObject);
begin
 if cbxGTAEntrada.ItemIndex>-1 then
 begin
  vIdGTA := LinkFillControlToFieldID2.BindList.GetSelectedValue.AsString;
//  VvalorCabGTA:= serviceDB.RetornaValorCabGTA(vIdGTA);
  serviceDB.AtualizaGTAProc(vIdGTA);
  AtualizaGTA(vIdGTA);

  if vChecaEstoqueChip=1 then
    vVerificaGTAEstoqueChip := serviceDB.ChecarEstoqueChipGTA(vIdGTA)
  else
   vVerificaGTAEstoqueChip  := 0;
 end;
end;

procedure TfrmOpercaoEntrada.cbxProtocoloChange(Sender: TObject);
begin
 if cbxProtocolo.ItemIndex>-1 then
 begin
   vIdProtocolo := LinkFillControlToFieldNOME.BindList.GetSelectedValue.AsString;
   serviceDB.AbreQryProtocoloFarmacoProc(vIdProtocolo);
 end;
end;

procedure TfrmOpercaoEntrada.cbxRacaChange(Sender: TObject);
begin
 if cbxRaca.ItemIndex>-1 then
  vIdRaca := LinkFillControlToField1.BindList.GetSelectedValue.AsString;
end;

procedure TfrmOpercaoEntrada.chkBNDOrigemSwitch(Sender: TObject);
begin
  edtProdutorOrigemBND.Enabled := chkBNDOrigem.IsChecked;
  edtPathPdf.Enabled           := chkBNDOrigem.IsChecked;
end;

procedure TfrmOpercaoEntrada.chkConfinamentoChange(Sender: TObject);
begin
  serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'');
  serviceDB.AtualizaLotacaoGeral(ServiceDB.vIdPropriedade);
  frmPrincipal.vMov :=1;
  frmPrincipal.vTipoCurral:='1';
  try
    frmCadCurralConf := frmCadCurralConf.Create(Self);
    frmCadCurralConf.ShowModal;
   finally
    if serviceDB.TableCurraisID.AsString.Length>0 then
    begin
      AdicionaAparte(serviceDB.TableCurraisID.AsString,
      serviceDB.TableCurraisCODIGO.AsString,
      serviceDB.TableCurraisPESO_MINIMO.AsString,
      serviceDB.TableCurraisPESO_MAXIMO.AsString,
      '');
      frmCadCurralConf.Free;
     end;
     frmCadCurralConf.Free;
  end;
   serviceDB.qryApartacao.Close;
   serviceDB.qryApartacao.Open;
end;

procedure TfrmOpercaoEntrada.edtFarmacoDoseFixaExtraKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmOpercaoEntrada.edtFarmacoExtraDosePesoExtraKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmOpercaoEntrada.edtFarmacoExtraDosePesoKGExtraKeyUp(
  Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmOpercaoEntrada.edtIdadeMesesKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13)or(key=9) then
 begin
   if edtIdentificacao1.Enabled then
   begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
        procedure
        begin
          edtIdentificacao1.SetFocus;
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

procedure TfrmOpercaoEntrada.edtIdadeMesesKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmOpercaoEntrada.edtIdentificacao1Exit(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
  if edtIdentificacao1.Text.Length>0 then
   begin
     if (vChecaEstoqueChip=1) and (vVerificaGTAEstoqueChip=0) then
     begin
       if serviceDB.ChecarEstoqueChip(edtIdentificacao1.Text) then
       begin
         MyShowMessage('Chip nao encontrado no estoque!',false);
         btnConfirma.Enabled := false;
         Exit;
       end
       else
        btnConfirma.Enabled := true;
     end;
     if serviceDB.VerificaIdentificacaoExit(edtIdentificacao1.Text) then
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
            end
          );
        end
        ).Start;
     end
     else
     begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Ja existe um animal com essa identificação!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        btnConfirma.Enabled := false;
        edtIdentificacao1.SetFocus;
      end);
      Exit;
     end;
   end;
end;

procedure TfrmOpercaoEntrada.edtIdentificacao1KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
 begin
  if edtIdentificacao2.Enabled then
   edtIdentificacao2.SetFocus
  else
   edtPeso.SetFocus
 end;
end;

procedure TfrmOpercaoEntrada.edtIdentificacao2Exit(Sender: TObject);
var
  dlg :TFrmmsgDlg;
  vManejoDG_SISBOV:string;
begin
  if edtIdentificacao2.Text.Length>0 then
   begin
     if (serviceDB.vRastreada='1') and (edtIdentificacao2.Text.Length=7) then
     begin
      vManejoDG_SISBOV :=  serviceDBN.ConsultaManejoDigitoEstoque(edtIdentificacao2.Text);
      if vManejoDG_SISBOV.Length>0 then
        edtIdentificacao2.Text := vManejoDG_SISBOV;
     end;
     if serviceDB.VerificaIdentificacaoExit(edtIdentificacao2.Text) then
     begin
        if (ServiceDB.vRastreada='1') and (frmPrincipal.vMov<>5) then
        begin
           if cbxGTAEntrada.ItemIndex=-1 then
           begin
            myShowMessage('Selecione a GTA!!',false);
            cbxGTAEntrada.SetFocus;
            exit;
           end;
           if edtIdentificacao2.Text.Length>15 then
           begin
             if copy(edtIdentificacao2.Text,0,1)='0' then
              edtIdentificacao2.Text := copy(edtIdentificacao2.Text,2,edtIdentificacao2.Text.Length)
             else
             begin
               myShowMessage('SISBOV INVALIDO',false);
               edtIdentificacao2.SetFocus;
               exit;
             end;
           end;
           if (vAnimalEdit=0)and(serviceDB.ChecaBrincoEstoque(edtIdentificacao2.Text,vIdProdutor)) then
           begin
            myShowMessage('SISBOV não localizado no estoque',false);
            edtIdentificacao2.SetFocus;
            exit;
           end;
        end;
        if (frmPrincipal.vMov=5) and (chkBNDOrigem.IsChecked) then
        begin
         if serviceDB.ChecaBndProdutorOutroEras(vIdProdutorOrigemBND,edtIdentificacao2.Text) then
         begin
          MyShowMessage('SISBOV Não encontrado na BND de Origem',false);
          Exit;
          edtIdadeMeses.Text     :='';
          cbxRaca.ItemIndex      :=-1;
          cbxCategoria.ItemIndex :=-1;
         end
         else
         begin
          if serviceDB.vDnBndOutroEras.Length>0 then
           edtIdadeMeses.Text     := intToStr(MonthsBetween(strToDate(serviceDB.vDnBndOutroEras),date));
          if serviceDB.vRacaBndOutroEras.Length>0 then
           cbxRaca.ItemIndex      := cbxRaca.Items.IndexOf(UpperCase(serviceDB.vRacaBndOutroEras));
         end;
        end;
        TThread.CreateAnonymousThread(
        procedure
        begin
          TThread.Synchronize( nil,
            procedure
            begin
              btnConfirma.Enabled := true;
              edtPeso.SetFocus;
            end
          );
        end
        ).Start;
     end
     else
     begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Ja existe um animal com essa identificação!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        btnConfirma.Enabled := false;
        edtIdentificacao2.SetFocus;
      end);
      Exit;
     end;
   end;
end;

procedure TfrmOpercaoEntrada.edtIdentificacao2KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
var
 vManejoDG_SISBOV :string;
begin
 if(key=13)or(key=9) then
 begin
   TThread.CreateAnonymousThread(procedure()
    begin
      TThread.Synchronize(TThread.CurrentThread,
      procedure ()
      begin
       edtPeso.SetFocus;
      end);
    end).Start;
 end;
end;

procedure TfrmOpercaoEntrada.edtObservacaoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
   btnConfirmaClick(Sender);
end;

procedure TfrmOpercaoEntrada.edtObservacaoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=vkf12 then
   if btnConfirma.Enabled then
    btnConfirmaClick(sender);
 if key=vkf4 then btnCancelarClick(sender);
end;

procedure TfrmOpercaoEntrada.edtPesoEnter(Sender: TObject);
begin
 if ComBalanca.Active=true then
  FlagSolicitaPeso:=1;
end;

procedure TfrmOpercaoEntrada.edtPesoExit(Sender: TObject);
var
 vAparte:string;
 dlg :TFrmmsgDlg;
 I   : Integer;
begin
 if edtPeso.Text.Length>0 then
 begin
   if(Switch1.IsChecked)and(gridProtocolo.RowCount>0) then
     CalculaDose;

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
   for I := 0 to gridProtocolo.RowCount-1 do
    if gridProtocolo.Cells[1,I]='PESO'  then
     gridProtocolo.Cells[2,I] := GridConfigProtocolo.Cells[3,I];
 end;
 if ComBalanca.Active=true then
  FlagSolicitaPeso:=0;
end;

procedure TfrmOpercaoEntrada.edtPesoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13)or(key=9) then
    cbxCurralPasto.SetFocus;
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;

end;

procedure TfrmOpercaoEntrada.edtPesoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=vkf12 then
   if btnConfirma.Enabled then
    btnConfirmaClick(sender);
  if key=vkf4 then btnCancelarClick(sender);
end;

procedure TfrmOpercaoEntrada.edtRebanhoDestinoClick(Sender: TObject);
begin
 EditButton4Click(Sender);
end;

procedure TfrmOpercaoEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 serviceDBN.VerificaDestinoPlanNutricional;
end;

procedure TfrmOpercaoEntrada.FormCreate(Sender: TObject);
begin
  layPerifericos.Visible := false;
  FlagSolicitaPeso       :=0;
end;

procedure TfrmOpercaoEntrada.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=vkf1 then bntMnuConfiguracaoClick(Sender);
  if key=vkf2 then bntMenuApartacaoClick(Sender);
  if key=vkf3 then bntMnuSanidadeClick(Sender);
  if key=vkf5 then
  begin
    if ComBalanca.Active=true then
      FlagSolicitaPeso:=1;
  end;
end;

procedure TfrmOpercaoEntrada.FormShow(Sender: TObject);
begin
  RecTipoLote.Visible := false;
  serviceDB.qryConfigPadrao.Close;
  serviceDB.qryConfigPadrao.Open;
  if serviceDB.qryConfigPadraoESTOQUE_CHIP.AsString.Length>0 then
   vChecaEstoqueChip := serviceDB.qryConfigPadraoESTOQUE_CHIP.AsInteger
  else
   vChecaEstoqueChip := 0;

  cbxTipoPesagem.Items.Clear;
  cbxTipoPesagem.Items.Add('ENTRADA');
  cbxTipoPesagem.Items.Add('ENTRADA CONFINAMENTO');
  cbxTipoPesagem.ItemIndex :=-1;
//
  layProtocoloSani.Visible := false;
  btnNovaGta.Visible := serviceDB.vRastreada='0';
  serviceDBN.TAuxRebanho.Close;
  serviceDBN.TAuxRebanho.Open;
  serviceDB.TableUsuarioFaz.Close;
  serviceDB.TableUsuarioFaz.Open;
  LayProtocolo.Enabled       := false;
  LayApartacao.Visible       := false;
  LaySanidade.Visible        := false;
  layTratamentoExtra.Enabled := false;
  serviceDB.AbreQryGTAProc('E',serviceDB.vIdPropriedade);
  GeraGridApartacao(serviceDB.vIdPropriedade);
  abrirConfiguracaoManejo;
  serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'NOVO');
  InfoGridProc;
  vAnimalEdit :=0;
  edtIdentificacao1.Enabled    := serviceDB.TableConfigManejoPORTA_COM_BASTAO.AsString.Length>0;
  if serviceDB.vRastreada='1' then
  begin
    LayBndOutroEras.Visible        := frmPrincipal.vMov =5;
    cbxTipoIdentificacao.ItemIndex := 0;
    cbxTipoIdentificacao.Enabled   := false;
  end
  else
   LayBndOutroEras.Visible        := false;

  serviceDB.TableProtocoloTelaProc.Close;
  serviceDB.TableProtocoloTelaProc.Open;

  abrirConfiguracaoManejo;
//  recAllWhite.Enabled    := false;
  layPerifericos.Visible := true;
  lblAguarde.Visible     := false;
end;

procedure TfrmOpercaoEntrada.GridApartacaoEditingDone(Sender: TObject;
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

procedure TfrmOpercaoEntrada.Image14Click(Sender: TObject);
var
 I:integer;
begin
 if Switch1.IsChecked then
 begin
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
 end;
 if Switch2.IsChecked then
 begin
   if edtFarmacoExtra.Text.Length=0 then
   begin
     MyShowMessage('Selecione o Farmaco Extra!!',false);
     Exit;
   end;
 end;
 LaySanidade.Visible := false;
 recAllWhite.Enabled := true;
end;

procedure TfrmOpercaoEntrada.Image2Click(Sender: TObject);
begin
 LayApartacao.Visible := false;
 recAllWhite.Enabled  := true;
end;

procedure TfrmOpercaoEntrada.Image41Click(Sender: TObject);
begin
 RecTipoLote.Visible := false;
end;

procedure TfrmOpercaoEntrada.Image5Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmOpercaoEntrada.imgCloseClick(Sender: TObject);
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
// if cbxTipoIdentificacao.ItemIndex=-1 then
// begin
//    dlg := TFrmmsgDlg.Create(nil);
//    dlg.Position := TFormPosition.ScreenCenter;
//    dlg.msg.Text := 'Infome o tipo de Identificação!';
//    dlg.btnCancel.Visible := false;
//    dlg.ShowModal(
//    procedure(ModalResult: TModalResult)
//    begin
//      cbxTipoIdentificacao.SetFocus;
//    end);
//    Exit;
// end
// else
//  serviceDB.TableConfigManejoTIPO_IDENTIFICACAO.AsInteger := cbxTipoIdentificacao.ItemIndex;

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
   cbxUsarIdent2.ItemIndex  :=1;
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
     dlg.msg.Text := 'Infome sim ou não para uso de Chip!';
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
   serviceDB.TableConfigManejoCHECA_BND_ORIGEM.AsInteger := ord(chkBNDOrigem.IsChecked);

   if frmPrincipal.vMov=5 then

   if chkBNDOrigem.IsChecked then
   begin
    if edtProdutorOrigemBND.Text.Length=0 then
    begin
      MyShowMessage('Informe o Produtor da BND de Origem!',false);
      Exit;
    end;
    if vTemBND=0 then
    begin
      MyShowMessage('Produtor de Origem não tem BND Importada!',false);
      Exit;
    end;
   end;
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

procedure TfrmOpercaoEntrada.InfoGridProc;
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
   if TryStrToFloat(GridAnimaisProcEntrada.Cells[2,I],Val) then
    Sum := Sum + Val;
  end;
  if I>0 then
  begin
   lblGridInfoMediaPeso.Text    := FormatFloat('####,##.00',(Sum/GridAnimaisProcEntrada.RowCount));
   lblGridInfQtdCab.Text        := IntToStr(GridAnimaisProcEntrada.RowCount);
  end
  else
  begin
    lblGridInfoMediaPeso.Text   := '0,00';
    lblGridInfQtdCab.Text        := '0';
  end;
end;

procedure TfrmOpercaoEntrada.mnuStrGridEditClick(Sender: TObject);
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
  vIdRebanho    := serviceDB.qryGriAniProcID_REBANHO.AsString;
  vIdContrato   := serviceDB.qryGriAniProcID_CONTRATO.AsString;

  serviceDB.LimpaGTAAnimalID(serviceDB.qryGriAniProcID.AsString);
  serviceDB.AtualizaGTAProc(vGTAID);
  cbxGTAEntrada.ItemIndex := cbxGTAEntrada.Items.IndexOf(serviceDB.qryGtaProcNUMERO.AsString);
  edtIdentificacao1.Text:=  serviceDB.qryGriAniProcIDENTIFICACAO_1.AsString;
  edtIdentificacao2.Text:=  serviceDB.qryGriAniProcIDENTIFICACAO_2.AsString;
  serviceDB.AbreQryGTAProcEdit(serviceDB.qryGriAniProcGTA_ID.AsString);
  cbxGTAEntrada.ItemIndex := cbxGTAEntrada.Items.IndexOf(serviceDB.qryGriAniProcGTA.AsString);
  cbxCurralPasto.ItemIndex := cbxCurralPasto.Items.IndexOf(serviceDB.qryGriAniProcCURRAL_PASTO.AsString);
  cbxRaca.ItemIndex := cbxRaca.Items.IndexOf(serviceDB.qryGriAniProcRACA_NOME.AsString);
  cbxCategoria.ItemIndex := cbxCategoria.Items.IndexOf(serviceDB.qryGriAniProcCATEGORIA_NOME.AsString);
  cbxDestinoAnimal.ItemIndex := cbxDestinoAnimal.Items.IndexOf(serviceDB.qryGriAniProcDestino.AsString);
  edtIdadeMeses.Text := serviceDB.qryGriAniProcIDADE_MESES.AsString;
  edtPeso.Text       := serviceDB.qryGriAniProcPESO_ENTRADA.AsString;
  edtObservacao.Text := serviceDB.qryGriAniProcOBSERVACAO.AsString;
  edtIdentificacao2.Enabled := false;
  edtRebanhoDestino.Text    := serviceDB.qryGriAniProcREBANHO.AsString;
  edtContratoCompra.Text    := serviceDB.qryGriAniProcCONTRATO.AsString;
end;

procedure TfrmOpercaoEntrada.mnuStrGridExcluirClick(Sender: TObject);
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
//         serviceDB.AtualizaGTAProc(serviceDB.qryGriAniProcGTA_ID.AsString);
         cbxGTAEntrada.ItemIndex := cbxGTAEntrada.Items.IndexOf(serviceDB.qryGtaProcNUMERO.AsString);
         AbreQryGTAProc('E',frmPrincipal.vIDPropriedadePropria);
         serviceDB.AtualizaLotacao(serviceDB.qryGriAniProcID_LOCAL.AsString);
         serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'NOVO');
         InfoGridProc;
       end
    end);
    Exit;

end;

procedure TfrmOpercaoEntrada.Rectangle12Click(Sender: TObject);
begin
 vIniLeituraRFIDControle:= false;
 btnLerTag.Enabled      := true;
end;

procedure TfrmOpercaoEntrada.bntMnuConfiguracaoClick(Sender: TObject);
begin
   abrirConfiguracaoManejo;
   recAllWhite.Enabled    := false;
   layPerifericos.Visible := true;
   lblAguarde.Visible     := false;
end;

procedure TfrmOpercaoEntrada.bntMnuSanidadeClick(Sender: TObject);
begin
  serviceDB.AbreUsuariosFazenda;
  recAllWhite.Enabled := false;
  LaySanidade.Visible := true;
end;

procedure TfrmOpercaoEntrada.bntMenuApartacaoClick(Sender: TObject);
begin
   layTipoPesagem.Visible := false;
   recAllWhite.Enabled    := false;
   GeraGridApartacao(serviceDB.vIdPropriedade);
   LayApartacao.Visible := true;
end;

procedure TfrmOpercaoEntrada.Switch1Switch(Sender: TObject);
begin
 if not Switch1.IsChecked then
 begin
   LayProtocolo.Enabled     := false;
   layProtocoloSani.Visible := false;
   cbxProtocolo.ItemIndex   :=-1;
   serviceDB.TableProtocoloFarmacoProc.close;
   cbxAplicadorEsquerdo.ItemIndex :=-1;
   cbxAplicadorDireito.ItemIndex  :=-1;
 end
 else
 begin
  layProtocoloSani.Visible := true;
  LayProtocolo.Enabled     := true;
  Switch2.IsChecked        := false;
 end;
end;

procedure TfrmOpercaoEntrada.Switch2Switch(Sender: TObject);
begin
 if not Switch1.IsChecked then
   layTratamentoExtra.Enabled := false
 else
  layTratamentoExtra.Enabled := true;
end;

end.



