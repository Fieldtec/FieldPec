unit UMovimentacaoGrupo;

interface

uses
 System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.DateTimeCtrls, FMX.EditBox, FMX.NumberBox, FMX.ListBox,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.TabControl,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,FireDAC.Comp.Client,Winapi.Windows,
  FMX.Effects, FMX.Grid.Style, Fmx.Bind.Grid, Data.Bind.Grid, FMX.ScrollBox,
  FMX.Grid, FMX.TreeView, ppParameter, ppDesignLayer, ppCtrls, ppVar, ppBands,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  FMX.Memo, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FMX.Memo.Types, FMX.Ani;

type
  TfrmMovimentacaoGrupo = class(TForm)
    laybase: TLayout;
    laySuperior: TLayout;
    Rectangle1: TRectangle;
    lblStatusTela: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    Rectangle5: TRectangle;
    Layout8: TLayout;
    ToolBar1: TToolBar;
    laySaidaVenda: TLayout;
    Layout15: TLayout;
    Rectangle7: TRectangle;
    Layout16: TLayout;
    Layout17: TLayout;
    Label16: TLabel;
    Label17: TLabel;
    Layout18: TLayout;
    ComboBox3: TComboBox;
    edtDestinoMov: TEdit;
    EditButtonDestino: TEditButton;
    Layout24: TLayout;
    Rectangle9: TRectangle;
    Layout25: TLayout;
    Layout28: TLayout;
    edtDataSaida: TDateEdit;
    Layout26: TLayout;
    lblData: TLabel;
    Label25: TLabel;
    Layout3D1: TLayout3D;
    LayValueDadosPastoDestino: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    layCapDadosPastoDestino: TLayout;
    lblTotalAnimaisSaidaDestino: TLabel;
    lblDiasMedioSaidaDestino: TLabel;
    lblPesoMedEntSaidaDestino: TLabel;
    lblPesoMedAtualSaidaDestino: TLabel;
    lblMotivo: TLabel;
    edtMotivoMov: TEdit;
    EditButton2: TEditButton;
    edtQtdAnimaisSaida: TEdit;
    Image3: TImage;
    layBtnControls: TLayout;
    SEffectBtnConfirm1: TShadowEffect;
    btnConfirmaSaida: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    SEffectBtnConfirm: TShadowEffect;
    Rectangle2: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    SEffectBtnCancel: TShadowEffect;
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    tbiCad: TTabItem;
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
    Rectangle3: TRectangle;
    Label5: TLabel;
    Label6: TLabel;
    dataInicioF: TDateEdit;
    dataFimF: TDateEdit;
    Label7: TLabel;
    cbxPastoOrigem: TComboBox;
    btnFiltar: TSpeedButton;
    btnRel: TRectangle;
    Layout2: TLayout;
    Image4: TImage;
    Label14: TLabel;
    ShadowEffect1: TShadowEffect;
    StringGrid1: TStringGrid;
    layResumoGrafico: TLayout;
    Rectangle4: TRectangle;
    lblTotalAnimais: TLabel;
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
    Label15: TLabel;
    ShadowEffect3: TShadowEffect;
    btnCancel: TRectangle;
    Layout19: TLayout;
    Image9: TImage;
    Label20: TLabel;
    ShadowEffect5: TShadowEffect;
    msg: TLabel;
    layAlteraPeso: TLayout;
    Rectangle8: TRectangle;
    Layout20: TLayout;
    Label21: TLabel;
    Label22: TLabel;
    edtPesoAtual: TEdit;
    edtNovoPesoEnt: TEdit;
    layAlteraValorEntrada: TLayout;
    Rectangle10: TRectangle;
    Layout21: TLayout;
    Label23: TLabel;
    Label24: TLabel;
    edtValorAtual: TEdit;
    edtNovoValor: TEdit;
    layAlteraData: TLayout;
    Rectangle11: TRectangle;
    Layout22: TLayout;
    Label26: TLabel;
    Label27: TLabel;
    edtDataAtual: TEdit;
    edtNovaData: TDateEdit;
    Label28: TLabel;
    BindingsList1: TBindingsList;
    Label29: TLabel;
    ppDBMovAnimais: TppDBPipeline;
    ppDBMovAnimaisppField1: TppField;
    ppDBMovAnimaisppField2: TppField;
    ppDBMovAnimaisppField3: TppField;
    ppDBMovAnimaisppField4: TppField;
    ppDBMovAnimaisppField5: TppField;
    ReportMovAnimais: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape7: TppShape;
    ppLabel37: TppLabel;
    ppImage4: TppImage;
    ppLabel38: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel39: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLine6: TppLine;
    ppDBText27: TppDBText;
    ppDBText25: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel47: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppShape8: TppShape;
    ppDBCalc10: TppDBCalc;
    ppLabel48: TppLabel;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    layTipoMov: TLayout;
    Rectangle50: TRectangle;
    Image24: TImage;
    ShadowEffect48: TShadowEffect;
    GridLayout1: TGridLayout;
    btnEntGrupo: TRectangle;
    Label51: TLabel;
    Image45: TImage;
    btnEntInd: TRectangle;
    Label52: TLabel;
    Image46: TImage;
    tbiListaAnimal: TTabItem;
    Layout27: TLayout;
    layAni: TLayout;
    Layout35: TLayout;
    Layout36: TLayout;
    GroupBox2: TGroupBox;
    Label31: TLabel;
    edtIdent1: TEdit;
    Label32: TLabel;
    edtIdent2: TEdit;
    lblRaca: TLabel;
    cbxFRaca: TComboBox;
    Label33: TLabel;
    cbxFCategoria: TComboBox;
    btnFiltraAnimal: TSpeedButton;
    Image23: TImage;
    memoExcel: TMemo;
    Label34: TLabel;
    cbxFaixaIdade: TComboBox;
    Layout38: TLayout;
    Layout39: TLayout;
    Label37: TLabel;
    lblTotalAnimaisGrid: TLabel;
    Label39: TLabel;
    lblMediaPesoGrid: TLabel;
    layAniSelect: TLayout;
    Layout43: TLayout;
    Label36: TLabel;
    lblTotalSelecionado: TLabel;
    Layout34: TLayout;
    ShadowEffect6: TShadowEffect;
    btnConfirmaAnimais: TRectangle;
    Layout42: TLayout;
    Image6: TImage;
    Label38: TLabel;
    ShadowEffect7: TShadowEffect;
    Layout44: TLayout;
    Layout45: TLayout;
    Rectangle12: TRectangle;
    Label35: TLabel;
    gridAnimaisSelecionados: TStringGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    Layout37: TLayout;
    Layout40: TLayout;
    Layout41: TLayout;
    SpeedButton1: TSpeedButton;
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
    qryGridAnimalFAIXA: TStringField;
    BindSourceDB2: TBindSourceDB;
    gridAnimais: TStringGrid;
    BindingsList2: TBindingsList;
    LinkGridToDataSource2: TLinkGridToDataSource;
    EditButton1: TEditButton;
    Layout55: TLayout;
    Rectangle15: TRectangle;
    Label41: TLabel;
    Layout56: TLayout;
    Image13: TImage;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Image5: TImage;
    Layout23: TLayout;
    laybtns: TLayout;
    SpeedButton2: TSpeedButton;
    Image11: TImage;
    chkInserePeso: TCheckBox;
    edtPesoMedio: TEdit;
    StringColumn4: TStringColumn;
    qryGridAnimalID_PRODUTOR: TIntegerField;
    SpeedButton3: TSpeedButton;
    Image12: TImage;
    SpeedButton4: TSpeedButton;
    Image14: TImage;
    btnReprocessamento: TRectangle;
    Label30: TLabel;
    Image15: TImage;
    TreeReportReident: TTreeViewItem;
    Image16: TImage;
    TreeViewItem1: TTreeViewItem;
    TreeViewItem2: TTreeViewItem;
    Image17: TImage;
    Image18: TImage;
    GridReidentificados: TStringGrid;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    SaveDialog1: TSaveDialog;
    brnMovRebanhoGrupo: TRectangle;
    Label42: TLabel;
    Image19: TImage;
    layMovContratoProdutor: TLayout;
    Rectangle13: TRectangle;
    Layout30: TLayout;
    Layout31: TLayout;
    Layout32: TLayout;
    lblRebanhoDestino: TLabel;
    edtRebanhoDestino: TEdit;
    EditButton4: TEditButton;
    Label18: TLabel;
    cbxRebanhoLista: TComboBox;
    ListBoxItem2: TListBoxItem;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    btnLimpaFiltros: TSpeedButton;
    Image20: TImage;
    lblPastoCurral: TLabel;
    qryGridAnimalREBANHO: TStringField;
    qryGridAnimalIDREBANHO: TIntegerField;
    Column1: TColumn;
    btnImportaPlanilha: TSpeedButton;
    Image21: TImage;
    layImportacao: TLayout;
    Layout9: TLayout;
    Rectangle14: TRectangle;
    Layout33: TLayout;
    Layout46: TLayout;
    Layout49: TLayout;
    edtArquivo: TEdit;
    EditButton3: TEditButton;
    Label44: TLabel;
    rdChip: TRadioButton;
    rdSisbov: TRadioButton;
    Layout47: TLayout;
    Rectangle16: TRectangle;
    Layout50: TLayout;
    Image22: TImage;
    Label45: TLabel;
    SaveDialog2: TSaveDialog;
    cbxTipoPeso: TComboBox;
    lblTipoPeso: TLabel;
    btnTransferenciaGrupo: TRectangle;
    Label46: TLabel;
    Image25: TImage;
    lblContratoDestino: TLabel;
    edtContratoDestino: TEdit;
    EditButton5: TEditButton;
    btnMovContrato: TRectangle;
    Label19: TLabel;
    Image26: TImage;
    Label43: TLabel;
    edtContratoF: TEdit;
    qryGridAnimalID_CONTRATO: TIntegerField;
    qryGridAnimalNUM_CONTRATO: TStringField;
    StringColumn5: TStringColumn;
    lblProdutorDestino: TLabel;
    cbxProdutorDestino: TComboBox;
    btnMovProdDestino: TRectangle;
    Label47: TLabel;
    Image27: TImage;
    cbxProdutorF: TComboBox;
    Label48: TLabel;
    StringColumn6: TStringColumn;
    btnBloquearAnimais: TRectangle;
    Label49: TLabel;
    Image28: TImage;
    layBloqueioAnimais: TLayout;
    Rectangle17: TRectangle;
    Layout52: TLayout;
    Layout53: TLayout;
    Layout54: TLayout;
    lblMotivoBloqueio: TLabel;
    edtObservacaoBloqueio: TEdit;
    chkIncluirPeso: TCheckBox;
    StringColumn7: TStringColumn;
    StringColumn8: TStringColumn;
    qryGridAnimalIDCURRAL: TIntegerField;
    edtLocalOrigem: TEdit;
    EditButton6: TEditButton;
    ClearEditButton1: TClearEditButton;
    btnMovLoteCurral: TRectangle;
    Label8: TLabel;
    Image29: TImage;
    layMovEntreCurral: TLayout;
    Rectangle6: TRectangle;
    Layout11: TLayout;
    Rectangle26: TRectangle;
    Label55: TLabel;
    Layout13: TLayout;
    Image39: TImage;
    Rectangle27: TRectangle;
    Label56: TLabel;
    Image40: TImage;
    Layout10: TLayout;
    Layout29: TLayout;
    Label9: TLabel;
    Layout51: TLayout;
    Label10: TLabel;
    edtLoteOrigem: TEdit;
    EditButton7: TEditButton;
    edtCurralLoteDestino: TEdit;
    EditButton8: TEditButton;
    Layout57: TLayout;
    btnConfirma: TRectangle;
    Layout58: TLayout;
    Image31: TImage;
    Label11: TLabel;
    Label12: TLabel;
    cbxDestinoAnimal: TComboBox;
    Label13: TLabel;
    cbxStatusConferencia: TComboBox;
    layAguardeSync: TLayout;
    recAguarde: TRectangle;
    layAguardeLBL: TLayout;
    lblAguarde: TLabel;
    imgSync: TImage;
    Animacao: TFloatAnimation;
    Label50: TLabel;
    edtGTA_F: TEdit;
    BindSourceDB5: TBindSourceDB;
    BindSourceDB6: TBindSourceDB;
    LinkFillControlToField: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    btnexportaNaoEncontrados: TSpeedButton;
    Image30: TImage;
    gridNaoEncontrados: TStringGrid;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    RecTipoLote: TRectangle;
    recPopup: TRectangle;
    Layout96: TLayout;
    Layout97: TLayout;
    Layout98: TLayout;
    Label100: TLabel;
    Layout99: TLayout;
    Layout101: TLayout;
    Rectangle18: TRectangle;
    Label101: TLabel;
    Rectangle72: TRectangle;
    cbxTipoLote: TComboBox;
    procedure EditButtonOrigemClick(Sender: TObject);
    procedure EditButtonDestinoClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnConfirmaSaidaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtQtdAnimaisSaidaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure imgCloseClick(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
    procedure btnEntIndClick(Sender: TObject);
    procedure btnEntGrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxFCategoriaChange(Sender: TObject);
    procedure cbxFRacaChange(Sender: TObject);
    procedure btnFiltraAnimalClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnConfirmaAnimaisClick(Sender: TObject);
    procedure bntCancelarAniClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkInserePesoChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnReprocessamentoClick(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure brnMovRebanhoGrupoClick(Sender: TObject);
    procedure btnLimpaFiltrosClick(Sender: TObject);
    procedure cbxRebanhoListaChange(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure TreeReportReidentClick(Sender: TObject);
    procedure edtRebanhoDestinoClick(Sender: TObject);
    procedure edtRebanhoDestinoEnter(Sender: TObject);
    procedure btnImportaPlanilhaClick(Sender: TObject);
    procedure btnTransferenciaGrupoClick(Sender: TObject);
    procedure btnMovContratoClick(Sender: TObject);
    procedure EditButton5Click(Sender: TObject);
    procedure btnMovProdDestinoClick(Sender: TObject);
    procedure cbxProdutorFChange(Sender: TObject);
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure btnBloquearAnimaisClick(Sender: TObject);
    procedure EditButton6Click(Sender: TObject);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure edtLocalOrigemEnter(Sender: TObject);
    procedure Image39Click(Sender: TObject);
    procedure btnMovLoteCurralClick(Sender: TObject);
    procedure EditButton8Click(Sender: TObject);
    procedure EditButton7Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnexportaNaoEncontradosClick(Sender: TObject);
    procedure Rectangle18Click(Sender: TObject);
  private
    vIdCurralDestino,vIdCurralOriLote,vIdMotivo,vIdCurral:string;
    procedure LimpaCampos;
  public
    var
      vIdCurralOrigemF,vIdCatFiltro,vIdRacaFintro,vIdRebanhoOrigem,vIdRebanhoDestino,
      vidRebenhoOrigemLista,vIdLote,vIdContratoLista,vIdContratoDestino,
      vIdProdFiltro,vIdProdDestino,vIdProdutorLista:string;
      vTipoLocalDestino,vMovRebanho,vImportacao,vTipoMovConf,
      vTransferencia,vMovContrato,vMovProdutor,vMovBloquear:integer;
    procedure AtualizaLabelPastoOrigemSaida(vTipo,Pasto, vData: string);
    procedure SomarColunasGrid;
    procedure SomarColunasGridForn;
    procedure CarregaCombo;
    function  PesquisaIDGrid(id: string): integer;
    procedure DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
    procedure LimpaCamposSaida;
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
    procedure CarregaProdutorDestino;
  end;

var
  frmMovimentacaoGrupo: TfrmMovimentacaoGrupo;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB, UCurrais, UAuxMotivoMovimentacao, UAuxMotivoMorte,
  UMovimentacaoPesagemAnimal, UMsgDlg, ServiceDB2, UAuxRebanho,
  USeviceConfinamento, ContratoCompra, UCurralConfinamento, ULoteNutricional;
//  UServiceRel;

procedure TfrmMovimentacaoGrupo.DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
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


procedure TfrmMovimentacaoGrupo.bntCancelarAniClick(Sender: TObject);
begin
 edtQtdAnimaisSaida.Text := '0';
 TbPrincipal.ActiveTab   := tbiCad;
 LimpaCamposSaida;
end;

procedure TfrmMovimentacaoGrupo.brnMovRebanhoGrupoClick(Sender: TObject);
begin
 vTransferencia :=0;
 vMovRebanho    :=1;
 vMovContrato   :=0;
 vMovProdutor   :=0;
 cbxTipoPeso.Visible   := false;
 edtPesoMedio.Visible   := false;
 laySaidaVenda.Visible  := false;
 edtMotivoMov.Visible   := false;
 lblMotivo.Visible      := false;
 chkInserePeso.Visible  := false;
 cbxTipoPeso.Enabled    := false;
 lblTipoPeso.Visible    := false;
 layTipoMov.Visible     := false;
 edtPesoMedio.Visible   := false;
 layBloqueioAnimais.Visible := false;
 tbPrincipal.ActiveTab  := tbiCad;
 lblContratoDestino.Visible := false;
 edtContratoDestino.Visible := false;
 lblProdutorDestino.Visible := false;
 cbxProdutorDestino.Visible := false;
 chkIncluirPeso.Visible     := true;
end;

procedure TfrmMovimentacaoGrupo.btnBloquearAnimaisClick(Sender: TObject);
begin
 vTransferencia :=0;
 vMovRebanho    :=0;
 vMovProdutor   :=0;
 vMovContrato   :=0;
 vMovBloquear   :=1;
 cbxTipoPeso.Visible   := false;
 edtPesoMedio.Visible   := false;
 laySaidaVenda.Visible  := false;
 edtMotivoMov.Visible   := false;
 lblMotivo.Visible      := false;
 chkInserePeso.Visible  := false;
 cbxTipoPeso.Enabled    := false;
 lblTipoPeso.Visible    := false;
 layTipoMov.Visible     := false;
 edtPesoMedio.Visible   := false;
 tbPrincipal.ActiveTab  := tbiCad;
 layMovContratoProdutor.Visible := false;
 lblContratoDestino.Visible := false;
 edtContratoDestino.Visible := false;
 lblRebanhoDestino.Visible  := false;
 edtRebanhoDestino.Visible  := false;
 lblProdutorDestino.Visible := false;
 cbxProdutorDestino.Visible := false;
 layBloqueioAnimais.Visible := true;
 chkIncluirPeso.Visible     := false;
end;

procedure TfrmMovimentacaoGrupo.btnCancelarClick(Sender: TObject);
begin
  LimpaCampos;
  close;
  frmPrincipal.MudarAba(frmPrincipal.tbiMenu,sender);
end;

procedure TfrmMovimentacaoGrupo.btnConfirmaAnimaisClick(Sender: TObject);
begin
  edtQtdAnimaisSaida.Text := lblTotalSelecionado.Text;
  chkInserePeso.IsChecked := (vImportacao=1) and (chkIncluirPeso.IsChecked);
  edtPesoMedio.Enabled    := not chkIncluirPeso.IsChecked;
  TbPrincipal.ActiveTab   := tbiCad;
end;

procedure TfrmMovimentacaoGrupo.btnConfirmaClick(Sender: TObject);
begin
 if edtLoteOrigem.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Lote de Origem',false);
  Exit;
 end;
 if edtCurralLoteDestino.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Curral de Destino',false);
  Exit;
 end;
 try
   ServiceConf.MovimentaLoteEntreCurral(vIdLote, vIdCurralOriLote,vIdCurralDestino);
   MyShowMessage('Lote Movimentado com Sucesso!',false);
   layMovEntreCurral.Visible := false;
  except
 end;
end;

procedure TfrmMovimentacaoGrupo.btnConfirmaSaidaClick(Sender: TObject);
var
 vValorVenda:String;
 dlg : TFrmmsgDlg;
begin
   if(edtQtdAnimaisSaida.Text='0') then
   begin
    MyShowMessage('Informe os animais',false);
    Exit;
   end;
   if(vMovRebanho=0)and(vMovContrato=0)and(vMovProdutor=0)and(vMovBloquear=0) then
   begin
     if(edtDestinoMov.Text.Length=0)  then
     begin
      MyShowMessage('Informe o Pasto Destino dos animais',false);
      Exit;
     end;
     if(edtQtdAnimaisSaida.Text='0') then
     begin
      MyShowMessage('Informe os animais',false);
      Exit;
     end;
     if(edtDataSaida.Text.Length=0)then
     begin
      MyShowMessage('Informe a data da Movimentação dos animais',false);
      Exit;
     end;

     if (chkInserePeso.IsChecked) and (not chkIncluirPeso.IsChecked) then
     begin
       if (edtPesoMedio.Text='') or (edtPesoMedio.Text='0') then
       begin
          MyShowMessage('Informe o peso médio da movimentação!',false);
          Exit;
       end;
       if cbxTipoPeso.ItemIndex=-1 then
       begin
          MyShowMessage('Informe o tipo de pesagem!',false);
          Exit;
       end;
     end;
//     if (vTipoMovConf=1) and (chkInserePeso.IsChecked=false) then
//     begin
//       MyShowMessage('Movimentação entrada confinamento exige um peso,'+#13+' deseja manter o último peso do animal como de entrada no confinamento??',true);
//        case frmPrincipal.vConfirma of
//        1:
//        begin
//
//        end;
//        0:
//         begin
//           exit;
//         end;
//        end;
//
//     end;

     gridAnimaisSelecionados.SelectRow(0);
     try
       TThread.CreateAnonymousThread(
       procedure
       var
        I,X:integer;
       begin
         TThread.Synchronize(nil,procedure
         begin
           layAguardeSync.Visible := true;
         end);

         for X := 0 to gridAnimaisSelecionados.RowCount-1 do
         begin

          if vIdMotivo='100001' then
          begin
            serviceDB.MovimentaAnimalIndEntradaConfRefugo(
                  gridAnimaisSelecionados.Cells[0,x],
                  gridAnimaisSelecionados.Cells[8,x],
                  vIdCurralDestino,
                  FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
                  vIdMotivo);
          end;

          if(vTipoMovConf=1) and (chkInserePeso.IsChecked=false) then
           begin
                serviceDB.MovimentaAnimalIndEntradaConf(
                  gridAnimaisSelecionados.Cells[0,x],
                  gridAnimaisSelecionados.Cells[8,x],
                  vIdCurralDestino,
                  FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
                  vIdMotivo,VIDLOTE,'0','',cbxDestinoAnimal.Selected.Text);
           end;



           if(vTipoMovConf=1) and (chkInserePeso.IsChecked) then
           begin
             if chkIncluirPeso.IsChecked then
              serviceDB.MovimentaAnimalIndEntradaConf(
                gridAnimaisSelecionados.Cells[0,x],
                gridAnimaisSelecionados.Cells[8,x],
                vIdCurralDestino,
                FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
                vIdMotivo,VIDLOTE,'1',gridAnimaisSelecionados.Cells[7,x],
                cbxDestinoAnimal.Selected.Text)
              else
                serviceDB.MovimentaAnimalIndEntradaConf(
                gridAnimaisSelecionados.Cells[0,x],
                gridAnimaisSelecionados.Cells[8,x],
                vIdCurralDestino,
                FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
                vIdMotivo,VIDLOTE,'1',edtPesoMedio.Text,cbxDestinoAnimal.Selected.Text)
           end;
           if (vTipoMovConf<>1)and(vIdMotivo<>'100001') then
            serviceDB.MovimentaAnimalInd(
             gridAnimaisSelecionados.Cells[0,x],
             gridAnimaisSelecionados.Cells[8,x],
             vIdCurralDestino,
             FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,
            vIdMotivo,VIDLOTE,cbxDestinoAnimal.Selected.Text);

          if chkInserePeso.IsChecked then
           if chkIncluirPeso.IsChecked then
            serviceDB.InserePeso(gridAnimaisSelecionados.Cells[0,x],serviceDB.vIdUserLogado,
            StringReplace(gridAnimaisSelecionados.Cells[7,x],',','.',[rfReplaceAll]) ,
             UpperCase(cbxTipoPeso.Selected.Text),gridAnimaisSelecionados.Cells[3,gridAnimaisSelecionados.RowCount-1],'0'
            ,vIdCurralDestino,
            FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,frmPrincipal.vIdBaseCampo)
           else
             serviceDB.InserePeso(gridAnimaisSelecionados.Cells[0,x],serviceDB.vIdUserLogado,
            StringReplace(edtPesoMedio.Text,',','.',[rfReplaceAll]) ,
             UpperCase(cbxTipoPeso.Selected.Text),gridAnimaisSelecionados.Cells[3,gridAnimaisSelecionados.RowCount-1],'0'
            ,vIdCurralDestino,
            FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,frmPrincipal.vIdBaseCampo);

             TThread.Synchronize(nil,procedure
             begin
               lblAguarde.Text := 'Movimentando :'+X.ToString;
             end);

         end;
         TThread.Synchronize(nil,procedure
         begin
           layAguardeSync.Visible := false;
           dlg := TFrmmsgDlg.Create(nil);
           dlg.Position := TFormPosition.ScreenCenter;
           dlg.msg.Text := 'Movimentacao Realizada com sucesso!!';
           dlg.btnCancel.Visible := false;
           dlg.ShowModal(
           procedure(ModalResult: TModalResult)
           begin
             layAguardeSync.Visible := false;
             LimpaCampos;
             CarregaCombo;
             LimpaCamposSaida;
             laySuperior.Visible   := true;
             TbPrincipal.ActiveTab := tbilISTA;
             serviceDB.AtualizaLotacaoGeral(serviceDB.vIdPropriedade);
           end);
         end);
       end).Start;
       except
        on E : Exception do
        begin
         MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
         end;
     end;
   end
   else
   begin
    if vMovRebanho=1 then
    begin
       if(edtRebanhoDestino.Text.Length=0)then
       begin
        MyShowMessage('Informe o Rebanho Destino dos animais',false);
        Exit;
       end;
       if(edtQtdAnimaisSaida.Text='0') then
       begin
        MyShowMessage('Informe os animais',false);
        Exit;
       end;

       TThread.CreateAnonymousThread(
       procedure
       var
        I,X:integer;
       begin
         TThread.Synchronize(nil,procedure
         begin
           layAguardeSync.Visible := true;
         end);
         for X := 0 to gridAnimaisSelecionados.RowCount-1 do
         begin
           vidRebenhoOrigemLista:= gridAnimaisSelecionados.Cells[4,x];
          if not chkIncluirPeso.IsChecked then
           serviceDB.MovimentaAnimalRebanho(
           gridAnimaisSelecionados.Cells[0,x],
           vidRebenhoOrigemLista,
           vIdRebanhoDestino,
           FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,'0')
          else
           serviceDB.MovimentaAnimalRebanho(
           gridAnimaisSelecionados.Cells[0,x],
           vidRebenhoOrigemLista,
           vIdRebanhoDestino,
           FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,gridAnimaisSelecionados.Cells[7,x]);

           if chkIncluirPeso.IsChecked then
           serviceDB.InserePeso(gridAnimaisSelecionados.Cells[0,x],serviceDB.vIdUserLogado,
            StringReplace(gridAnimaisSelecionados.Cells[7,x],',','.',[rfReplaceAll]) ,
             'CONTROLE',gridAnimaisSelecionados.Cells[3,gridAnimaisSelecionados.RowCount-1],'0'
            ,gridAnimaisSelecionados.Cells[8,x],
            FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString,frmPrincipal.vIdBaseCampo);

            serviceDB.MovimentaAnimalRebanhoReproc(gridAnimaisSelecionados.Cells[0,x],
             vidRebenhoOrigemLista,vIdRebanhoDestino,
             FormatDateTime('mm/dd/yyyy',edtDataSaida.Date),'0');
            TThread.Synchronize(nil,procedure
             begin
               lblAguarde.Text := 'Movimentando :'+X.ToString;
             end);
         end;
       end).Start;
        TThread.Synchronize(nil,procedure
        begin
         layAguardeSync.Visible := false;
         dlg := TFrmmsgDlg.Create(nil);
         dlg.Position := TFormPosition.ScreenCenter;
         dlg.msg.Text := 'Movimentacao Realizada com sucesso!!';
         dlg.btnCancel.Visible := false;
         dlg.ShowModal(
         procedure(ModalResult: TModalResult)
         begin
           layAguardeSync.Visible := false;
           vMovRebanho :=0;
           LimpaCampos;
           CarregaCombo;
           LimpaCamposSaida;
           laySuperior.Visible   := true;
           TbPrincipal.ActiveTab := tbilISTA;
           serviceDB.AtualizaLotacaoGeral(serviceDB.vIdPropriedade);
         end);
        end);
    end;
   end;
   if vMovContrato=1 then
   begin
     if(edtContratoDestino.Text.Length=0)then
     begin
      MyShowMessage('Informe o Contrato Destino dos animais',false);
      Exit;
     end;
     if(edtQtdAnimaisSaida.Text='0') then
     begin
      MyShowMessage('Informe os animais',false);
      Exit;
     end;

     TThread.CreateAnonymousThread(
     procedure
     var
      I,X:integer;
     begin
       TThread.Synchronize(nil,procedure
       begin
         layAguardeSync.Visible := true;
       end);
       for X := 0 to gridAnimaisSelecionados.RowCount-1 do
       begin
         vIdContratoLista:= gridAnimaisSelecionados.Cells[5,x];
         serviceDB.MovimentaAnimalCONTRATO(
         gridAnimaisSelecionados.Cells[0,x],
         vIdContratoLista,
         vIdContratoDestino,
         FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString);
         TThread.Synchronize(nil,procedure
         begin
           lblAguarde.Text := 'Movimentando :'+X.ToString;
         end);
       end;
     end).Start;
     TThread.Synchronize(nil,procedure
     begin
       layAguardeSync.Visible := false;
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Movimentacao Realizada com sucesso!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         layAguardeSync.Visible := false;
         vMovRebanho :=0;
         LimpaCampos;
         CarregaCombo;
         LimpaCamposSaida;
         laySuperior.Visible   := true;
         TbPrincipal.ActiveTab := tbilISTA;
         serviceDB.AtualizaLotacaoGeral(serviceDB.vIdPropriedade);
       end);
     end);
   end;

   if vMovProdutor=1 then
   begin
     if(vIdProdDestino.Length=0)then
     begin
      MyShowMessage('Informe o Produtor Destino dos animais',false);
      Exit;
     end;
     if(edtQtdAnimaisSaida.Text='0') then
     begin
      MyShowMessage('Informe os animais',false);
      Exit;
     end;

     TThread.CreateAnonymousThread(
     procedure
     var
      I,X:integer;
     begin
       TThread.Synchronize(nil,procedure
       begin
         layAguardeSync.Visible := true;
       end);
       for X := 0 to gridAnimaisSelecionados.RowCount-1 do
       begin
         vIdProdutorLista:= gridAnimaisSelecionados.Cells[6,x];
         serviceDB.MovimentaAnimalProdutor(
         gridAnimaisSelecionados.Cells[0,x],
         vIdProdutorLista,
         vIdProdDestino,
         FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString);
         TThread.Synchronize(nil,procedure
         begin
           lblAguarde.Text := 'Movimentando :'+X.ToString;
         end);
       end;
     end).Start;
      TThread.Synchronize(nil,procedure
      begin
       layAguardeSync.Visible := false;
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Movimentacao Realizada com sucesso!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         layAguardeSync.Visible := false;
         vMovRebanho :=0;
         LimpaCampos;
         CarregaCombo;
         LimpaCamposSaida;
         laySuperior.Visible   := true;
         TbPrincipal.ActiveTab := tbilISTA;
         serviceDB.AtualizaLotacaoGeral(serviceDB.vIdPropriedade);
       end);
      end);
   end;
   if vMovBloquear=1 then
   begin
     if(cbxStatusConferencia.ItemIndex=-1) then
     begin
      MyShowMessage('Informe o status da Conferência!',false);
      Exit;
     end;

     if(edtObservacaoBloqueio.Text.Length=0)then
     begin
      MyShowMessage('Informe o Motivo do Bloqueio',false);
      Exit;
     end;
     if(edtQtdAnimaisSaida.Text='0') then
     begin
      MyShowMessage('Informe os animais',false);
      Exit;
     end;

     TThread.CreateAnonymousThread(
     procedure
     begin
      TThread.Synchronize(nil,
      procedure
      var
       I,X:integer;
      begin
       layAguardeSync.Visible := true;
       for X := 0 to gridAnimaisSelecionados.RowCount-1 do
       begin
         serviceDB.BloqueiaAnimaisGrupo(
         gridAnimaisSelecionados.Cells[0,x],
         edtObservacaoBloqueio.Text,
         intToStr(cbxStatusConferencia.ItemIndex));
         TThread.Synchronize(nil,procedure
         begin
           lblAguarde.Text := 'Movimentando :'+X.ToString;
         end);
       end;
      end);
     end).Start;
      TThread.Synchronize(nil,procedure
      begin
       layAguardeSync.Visible := false;
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Animais Bloqueados com Sucesso!!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         vMovRebanho :=0;
         LimpaCampos;
         CarregaCombo;
         LimpaCamposSaida;
         laySuperior.Visible   := true;
         TbPrincipal.ActiveTab := tbilISTA;
         serviceDB.AtualizaLotacaoGeral(serviceDB.vIdPropriedade);
       end);
      end);
   end;
end;

procedure TfrmMovimentacaoGrupo.btnEntGrupoClick(Sender: TObject);
begin
  chkIncluirPeso.Visible     := false;
  vMovRebanho  :=0;
  vMovContrato :=0;
  vMovProdutor :=0;
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'EXITE');
  frmPrincipal.vMov :=1;
  layTipoMov.Visible := false;
  try
    frmMovPesagemAnimal := TfrmMovPesagemAnimal.Create(Self);
    frmMovPesagemAnimal.ShowModal;
  finally
    frmMovPesagemAnimal.Free;
//    serviceDB.AbrirEntradaAnimalGrid(dataFimF.Date,dataInicioF.Date,cbxPastoDestinoF.Selected.Text);
//    SomarColunasGrid;
  end;
end;

procedure TfrmMovimentacaoGrupo.btnEntIndClick(Sender: TObject);
begin
  chkIncluirPeso.Visible := true;
  vTransferencia         :=0;
  vMovRebanho            :=0;
  vMovContrato           :=0;
  vMovProdutor           :=0;
  laySaidaVenda.Visible  := true;
  edtMotivoMov.Visible   := true;
  lblMotivo.Visible      := true;
  chkInserePeso.Visible  := true;
  edtPesoMedio.Visible   := true;
  cbxTipoPeso.Visible    := true;
  lblTipoPeso.Visible    := true;
  layTipoMov.Visible     := false;
  layMovContratoProdutor.Visible := false;
  layBloqueioAnimais.Visible     := false;
  tbPrincipal.ActiveTab          := tbiCad;
end;

procedure TfrmMovimentacaoGrupo.btnexportaNaoEncontradosClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
 vTipo:integer;
begin
 if rdChip.IsChecked then
  vTipo := 1;

 if rdSisbov.IsChecked then
  vTipo := 2;

 serviceDBN.AbreNaoEncontrados(vTipo);
 if SaveDialog1.Execute then
 begin
   csv:= tstringlist.create;
   for row:= 1 to gridNaoEncontrados.rowcount do
    begin
     s:= '';
     if row=1 then
     begin
       for col:= 0 to gridNaoEncontrados.ColumnCount-1 do
        s:= s + gridNaoEncontrados.Columns[col].Header + ';';
       csv.add(s)
     end
     else
     begin
       for col:= 0 to gridNaoEncontrados.ColumnCount-1 do
        s:= s + gridNaoEncontrados.Cells[col, row-1] + ';';
       csv.add(s)
     end;
    end;
   csv.savetofile(SaveDialog1.FileName);
   csv.free;
 end;
end;

procedure TfrmMovimentacaoGrupo.btnFiltarClick(Sender: TObject);
begin
 serviceDB.AbrirMovAnimalGrid(dataFimF.Date,dataInicioF.Date,cbxPastoOrigem.Selected.Text,
 '','');
 serviceDBN.AbreLogReidentificados(dataInicioF.Date,dataFimF.Date);
 SomarColunasGrid;
end;

procedure TfrmMovimentacaoGrupo.btnFiltraAnimalClick(Sender: TObject);
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
         Add('an.id animal_id,');
         Add('cu.ID IDcurral,');
         Add('cu.codigo curral,');
         Add('an.identificacao_1 ident_1,');
         Add('an.identificacao_2 ident_2,');
         Add('r.nome raca,');
         Add('c.nome categoria,');
         Add('an.data_proc data_ent,');
         Add('an.peso_entrada peso_Ent,');
         Add('coalesce(an.data_ultimo_peso,cast(an.data_proc as date))dt_ultimo_peso,');
         if (vImportacao=1) and (chkIncluirPeso.IsChecked) then
          Add('coalesce(T.PESO_ENTRADA,an.ultimo_peso,an.peso_entrada) ultimo_peso,')
         else
          Add('coalesce(an.ultimo_peso,an.peso_entrada) ultimo_peso,');
         Add('g.serie||g.uf||g.numero gta,');
         Add('(select * from  RETORNA_PESO_MEDIO_ATUAL_IND(current_date,an.id)) PESO_PROJ,');
         Add('datediff(month,an.data_nascimento,current_timestamp) IDADE_ATUAL,');
         Add('an.ID_PRODUTOR,');
         Add('AXR.NOME REBANHO,');
         Add('AXR.ID IDREBANHO,');
         Add('COALESCE(an.ID_CONTRATO,0) ID_CONTRATO,');
         Add('COALESCE(CCA.NUMERO,0) NUM_CONTRATO');
         Add('from animal AN');
         if (vImportacao=1) and (rdChip.IsChecked) then
          Add('JOIN TMP_ANIMAL T ON T.IDENTIFICACAO_1=AN.IDENTIFICACAO_1');
         if (vImportacao=1) and (rdSisbov.IsChecked) then
          Add('JOIN TMP_ANIMAL T ON T.IDENTIFICACAO_2=AN.IDENTIFICACAO_2');
         Add('join raca R ON AN.id_raca=R.id');
         Add('join categorias c on an.id_categoria=c.id');
         Add('join currais cu on an.id_local=cu.id');
         Add('left join gta g on g.id=an.gta_id');
         Add('LEFT JOIN AUX_REBANHO AXR ON AXR.ID=an.ID_REBANHO');
         Add('LEFT JOIN CONTRATO_COMPRA_ANIMAL cca  ON CCA.ID=an.ID_CONTRATO');
         Add('where AN.STATUS=1');
         Add('and an.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
         if (edtGTA_F.Text.Length>0) then
          Add('AND g.NUMERO='+edtGTA_F.Text.QuotedString);
         if cbxRebanhoLista.ItemIndex>-1 then
          Add('AND AXR.ID='+vIdRebanhoOrigem);
         if cbxFRaca.ItemIndex>-1 then
          Add('AND AN.ID_RACA='+vIdRacaFintro);
         if cbxFCategoria.ItemIndex>-1 then
          Add('AND AN.ID_CATEGORIA='+vIdCatFiltro);
         if edtIdent1.Text.Length>0 then
          Add('AND AN.identificacao_1='+edtIdent1.Text.QuotedString);
         if edtIdent2.Text.Length>0 then
          Add('AND AN.identificacao_2='+edtIdent2.Text.QuotedString);
         if edtContratoF.Text.Length>0 then
          Add('and cca.NUMERO='+edtContratoF.Text.QuotedString);
         if cbxProdutorF.ItemIndex>0 then
          Add('and an.ID_PRODUTOR='+vIdProdFiltro);
         if edtLocalOrigem.Text.Length>0 then
          Add('and an.ID_LOCAL='+vIdCurralOrigemF);
         Add(')x)y');
         if cbxFaixaIdade.ItemIndex>0 then
          Add('WHERE FAIXA='+cbxFaixaIdade.Selected.Text.QuotedString);
         qryGridAnimal.SQL.Text;
         Open;
       end;
       SomarColunasGridForn;
end;

procedure TfrmMovimentacaoGrupo.btnImportaPlanilhaClick(Sender: TObject);
begin
  vImportacao               :=1;
  layImportacao.Visible     :=true;
  edtIdent1.Text            :='';
  edtIdent2.Text            :='';
  cbxFRaca.ItemIndex        :=-1;
  cbxFaixaIdade.ItemIndex   :=-1;
  cbxFCategoria.ItemIndex   :=-1;
  cbxRebanhoLista.ItemIndex :=-1;
end;

procedure TfrmMovimentacaoGrupo.btnLimpaFiltrosClick(Sender: TObject);
begin
 edtIdent1.Text :='';
 edtIdent2.Text :='';
 cbxFRaca.ItemIndex        :=-1;
 edtLocalOrigem.Text       :='';
 cbxFaixaIdade.ItemIndex   :=0;
 cbxFCategoria.ItemIndex   :=-1;
 cbxRebanhoLista.ItemIndex :=-1;
end;

procedure TfrmMovimentacaoGrupo.btnMovContratoClick(Sender: TObject);
begin
 vTransferencia :=0;
 vMovRebanho    :=0;
 vMovProdutor   :=0;
 vMovContrato   :=1;
 cbxTipoPeso.Visible   := false;
 edtPesoMedio.Visible   := false;
 laySaidaVenda.Visible  := false;
 edtMotivoMov.Visible   := false;
 lblMotivo.Visible      := false;
 chkInserePeso.Visible  := false;
 cbxTipoPeso.Enabled    := false;
 lblTipoPeso.Visible    := false;
 layTipoMov.Visible     := false;
 edtPesoMedio.Visible   := false;
 layBloqueioAnimais.Visible := false;
 tbPrincipal.ActiveTab  := tbiCad;
 layMovContratoProdutor.Visible := true;
 lblContratoDestino.Visible := true;
 edtContratoDestino.Visible := true;
 lblRebanhoDestino.Visible  := false;
 edtRebanhoDestino.Visible  := false;
 lblProdutorDestino.Visible := false;
 cbxProdutorDestino.Visible := false;
 chkIncluirPeso.Visible     := false;
end;

procedure TfrmMovimentacaoGrupo.btnMovLoteCurralClick(Sender: TObject);
begin
 edtLoteOrigem.Text        :='';
 edtCurralLoteDestino.Text :='';
 layMovEntreCurral.Visible := True;
end;

procedure TfrmMovimentacaoGrupo.btnMovProdDestinoClick(Sender: TObject);
begin
 vTransferencia :=0;
 vMovRebanho    :=0;
 vMovProdutor   :=1;
 vMovContrato   :=0;
 cbxTipoPeso.Visible    := false;
 edtPesoMedio.Visible   := false;
 laySaidaVenda.Visible  := false;
 edtMotivoMov.Visible   := false;
 lblMotivo.Visible      := false;
 chkInserePeso.Visible  := false;
 cbxTipoPeso.Enabled    := false;
 lblTipoPeso.Visible    := false;
 layTipoMov.Visible     := false;
 edtPesoMedio.Visible   := false;
 layBloqueioAnimais.Visible := false;
 tbPrincipal.ActiveTab  := tbiCad;
 layMovContratoProdutor.Visible := true;
 lblContratoDestino.Visible := false;
 edtContratoDestino.Visible := false;
 lblRebanhoDestino.Visible  := false;
 edtRebanhoDestino.Visible  := false;
 lblProdutorDestino.Visible := true;
 cbxProdutorDestino.Visible := true;
 chkIncluirPeso.Visible     := false;

end;

procedure TfrmMovimentacaoGrupo.btnRelClick(Sender: TObject);
begin
  ReportMovAnimais.Print;
end;

procedure TfrmMovimentacaoGrupo.btnReprocessamentoClick(Sender: TObject);
begin
  chkIncluirPeso.Visible     := false;
  vMovRebanho  :=0;
  vMovContrato :=0;
  vMovProdutor :=0;
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  serviceDB.AbreQryAnimaisProc(serviceDB.vIdPropriedade,'EXITE');
  frmPrincipal.vMov  :=5;
  layTipoMov.Visible := false;
  try
    frmMovPesagemAnimal := TfrmMovPesagemAnimal.Create(Self);
    frmMovPesagemAnimal.ShowModal;
  finally
    frmMovPesagemAnimal.Free;
  end;
end;

procedure TfrmMovimentacaoGrupo.btnTransferenciaGrupoClick(Sender: TObject);
begin
  vTransferencia         :=1;
  lblData.Text           :='Data Transferência';
  vMovRebanho            :=0;
  laySaidaVenda.Visible  := true;
  edtMotivoMov.Visible   := true;
  lblMotivo.Visible      := true;
  chkInserePeso.Visible  := true;
  edtPesoMedio.Visible   := true;
  cbxTipoPeso.Visible    := true;
  lblTipoPeso.Visible    := true;
  layTipoMov.Visible     := false;
  tbPrincipal.ActiveTab  := tbiCad;
end;

procedure TfrmMovimentacaoGrupo.CarregaCombo;
begin
 serviceDB.TableCurrais.Close;
 serviceDB.TableCurrais.Open;
 cbxPastoOrigem.Items.Clear;
 cbxPastoOrigem.Items.Add('Todos');
 while not serviceDB.TableCurrais.Eof do
 begin
   cbxPastoOrigem.Items.Add(serviceDB.TableCurraisCODIGO.AsString);
   serviceDB.TableCurrais.Next;
 end;
 cbxPastoOrigem.ItemIndex   :=0;

 serviceDB.MotivoMovimentacao.Close;
 serviceDB.MotivoMovimentacao.Open;
end;

procedure TfrmMovimentacaoGrupo.CarregaProdutorDestino;
var
 vQryAux : TFDQuery;
begin
  vQryAux := TFDQuery.Create(nil);
  vQryAux.Connection := serviceDB.fCon;
  cbxProdutorDestino.Items.Clear;
  cbxProdutorF.Items.Clear;
  cbxProdutorF.Items.Add('Todos');
  with vQryAux,vQryAux.sql do
  begin
   Clear;
   Add('SELECT * FROM PRODUTORES');
   Add('where status=1 and ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   while not vQryAux.Eof do
   begin
     cbxProdutorDestino.Items.AddObject(
      vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('id').AsInteger)
     );
     cbxProdutorF.Items.AddObject(
      vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('id').AsInteger)
     );
     vQryAux.Next;
   end;
   cbxProdutorF.ItemIndex := 0;
   cbxProdutorDestino.ItemIndex := -1;
  end;
  vQryAux.Free;
end;

procedure TfrmMovimentacaoGrupo.cbxFCategoriaChange(Sender: TObject);
begin
 if cbxFCategoria.ItemIndex>-1 then
  vIdCatFiltro   := LinkFillControlToField2.BindList.GetSelectedValue.AsString
 else
  vIdCatFiltro   :='0';
end;

procedure TfrmMovimentacaoGrupo.cbxFRacaChange(Sender: TObject);
begin
 if cbxFRaca.ItemIndex>-1 then
  vIdRacaFintro   := LinkFillControlToField.BindList.GetSelectedValue.AsString
 else
  vIdRacaFintro   :='0';
end;

procedure TfrmMovimentacaoGrupo.cbxProdutorDestinoChange(Sender: TObject);
begin
 if cbxProdutorDestino.ItemIndex>-1 then
  vIdProdDestino    := IntToStr(Integer(cbxProdutorDestino.Items.Objects[cbxProdutorDestino.ItemIndex]));
end;

procedure TfrmMovimentacaoGrupo.cbxProdutorFChange(Sender: TObject);
begin
 if cbxProdutorF.ItemIndex>0 then
  vIdProdFiltro    := IntToStr(Integer(cbxProdutorF.Items.Objects[cbxProdutorF.ItemIndex]));
end;

procedure TfrmMovimentacaoGrupo.cbxRebanhoListaChange(Sender: TObject);
begin
 if cbxRebanhoLista.ItemIndex>-1 then
  vIdRebanhoOrigem   := LinkFillControlToFieldID.BindList.GetSelectedValue.AsString
 else
  vIdRebanhoOrigem   :='';
end;

procedure TfrmMovimentacaoGrupo.chkInserePesoChange(Sender: TObject);
begin
 edtPesoMedio.Enabled := chkInserePeso.IsChecked;
 cbxTipoPeso.Enabled  := chkInserePeso.IsChecked;
end;

procedure TfrmMovimentacaoGrupo.ClearEditButton1Click(Sender: TObject);
begin
 vIdCurralOrigemF:='';
end;

procedure TfrmMovimentacaoGrupo.SomarColunasGrid;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
begin
  Sum := 0;
  for I := 0 to StringGrid1.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid1.Cells[2,I],Val) then
    Sum := Sum + Val
   else
    Sum :=0;
  end;
  if Sum>0 then
   lblTotalAnimais.Text  := 'Qtde. Total de Cabeças: '+FloatToStr(Sum)
  else
   lblTotalAnimais.Text  := 'Qtde. Total de Cabeças:0';
end;

procedure TfrmMovimentacaoGrupo.SomarColunasGridForn;
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
  lblMediaPesoGrid.Text        := FormatFloat('####,##.00',(Sum/gridAnimais.RowCount));
end;

procedure TfrmMovimentacaoGrupo.SpeedButton1Click(Sender: TObject);
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
    gridAnimaisSelecionados.Cells[3,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalID_PRODUTOR.AsString;
    gridAnimaisSelecionados.Cells[4,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIDREBANHO.AsString;
    gridAnimaisSelecionados.Cells[5,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalID_CONTRATO.AsString;
    gridAnimaisSelecionados.Cells[6,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalID_PRODUTOR.AsString;
    gridAnimaisSelecionados.Cells[7,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalULTIMO_PESO.AsString;
    gridAnimaisSelecionados.Cells[8,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIDCURRAL.AsString;
    lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
    gridAnimais.SelectRow(gridAnimais.Row+1);
  end;
end;

procedure TfrmMovimentacaoGrupo.SpeedButton2Click(Sender: TObject);
begin
 if gridAnimaisSelecionados.Row>-1 then
  DeleteRow(gridAnimaisSelecionados.Row, gridAnimaisSelecionados);
  lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmMovimentacaoGrupo.SpeedButton3Click(Sender: TObject);
var
 I:Integer;
begin
    I := 0;
    qryGridAnimal.First;
    gridAnimaisSelecionados.RowCount := qryGridAnimal.RecordCount;
    while not qryGridAnimal.eof do
    begin
      if PesquisaIDGrid(qryGridAnimalANIMAL_ID.AsString)=0 then
      begin
       gridAnimaisSelecionados.Cells[0,I]     := qryGridAnimalANIMAL_ID.AsString;
       gridAnimaisSelecionados.Cells[1,I]     := qryGridAnimalIDENT_1.AsString;
       gridAnimaisSelecionados.Cells[2,I]     := qryGridAnimalIDENT_2.AsString;
       gridAnimaisSelecionados.Cells[3,I]     := qryGridAnimalID_PRODUTOR.AsString;
       gridAnimaisSelecionados.Cells[4,I]     := qryGridAnimalIDREBANHO.AsString;
       gridAnimaisSelecionados.Cells[5,I]     := qryGridAnimalID_CONTRATO.AsString;
       gridAnimaisSelecionados.Cells[6,I]     := qryGridAnimalID_PRODUTOR.AsString;
       gridAnimaisSelecionados.Cells[7,I]     := qryGridAnimalULTIMO_PESO.AsString;
       gridAnimaisSelecionados.Cells[8,I]     := qryGridAnimalIDCURRAL.AsString;
      end;
      INC(I);
      qryGridAnimal.Next;
    end;
    lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmMovimentacaoGrupo.SpeedButton4Click(Sender: TObject);
var
  I:integer;
begin
  for I := 0 to gridAnimaisSelecionados.RowCount-1 do
  begin
    DeleteRow(I, gridAnimaisSelecionados);
  end;
  lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmMovimentacaoGrupo.TreeItemNovoClick(Sender: TObject);
begin
  TreeReportReident.IsExpanded := false;
  LimpaCampos;
  layTipoMov.Visible := true;
//  tbPrincipal.ActiveTab := tbiCad;
end;

procedure TfrmMovimentacaoGrupo.TreeReportReidentClick(Sender: TObject);
begin
 if TreeReportReident.IsExpanded then
  TreeReportReident.IsExpanded := false
 else
  TreeReportReident.IsExpanded:= TRUE;
end;

procedure TfrmMovimentacaoGrupo.TreeViewItem2Click(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
 serviceDBN.AbreLogReidentificados(dataInicioF.Date,dataFimF.Date);
 if SaveDialog1.Execute then
 begin
   csv:= tstringlist.create;
   for row:= 1 to GridReidentificados.rowcount do
    begin
     s:= '';
     if row=1 then
     begin
       for col:= 0 to GridReidentificados.ColumnCount-1 do
        s:= s + GridReidentificados.Columns[col].Header + ';';
       csv.add(s)
     end
     else
     begin
       for col:= 0 to GridReidentificados.ColumnCount-1 do
        s:= s + GridReidentificados.Cells[col, row-1] + ';';
       csv.add(s)
     end;
    end;
   csv.savetofile(SaveDialog1.FileName);
   csv.free;
 end;
end;

procedure TfrmMovimentacaoGrupo.edtLocalOrigemEnter(Sender: TObject);
begin
  EditButton6Click(Sender);
end;

procedure TfrmMovimentacaoGrupo.edtQtdAnimaisSaidaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmMovimentacaoGrupo.edtRebanhoDestinoClick(Sender: TObject);
begin
 EditButton2Click(Sender);
end;

procedure TfrmMovimentacaoGrupo.edtRebanhoDestinoEnter(Sender: TObject);
begin
 EditButton4Click(Sender);
end;

procedure TfrmMovimentacaoGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 serviceDBN.VerificaDestinoPlanNutricional;
 frmPrincipal.vMov :=0;
end;

procedure TfrmMovimentacaoGrupo.FormCreate(Sender: TObject);
begin
 layTipoMov.Visible      := false;
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiLista;
 layAlteracao.Visible       := false;
 dataInicioF.Date           := date-7;
 CarregaCombo;
end;

procedure TfrmMovimentacaoGrupo.FormShow(Sender: TObject);
begin
  RecTipoLote.Visible := false;
  btnexportaNaoEncontrados.Visible :=false;
  layAguardeSync.Visible    := false;
  layMovEntreCurral.Visible := false;
  CarregaProdutorDestino;
  edtPesoMedio.Enabled   := false;
  cbxTipoPeso.Enabled    := false;
  layImportacao.Visible  := false;
  serviceDB.TableCurrais.Close;
  serviceDB.TableCurrais.Open;

  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;

  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;

  serviceDB.AbrirMovAnimalGrid(date,date-7,'Todos','Todos','Todos');
  vMovRebanho:=0;
  layTipoMov.Visible :=false;
end;

procedure TfrmMovimentacaoGrupo.Image13Click(Sender: TObject);
begin
 layTipoMov.Visible := false;
end;

procedure TfrmMovimentacaoGrupo.Image22Click(Sender: TObject);
begin
 layImportacao.Visible := false;
end;

procedure TfrmMovimentacaoGrupo.Image39Click(Sender: TObject);
begin
 layMovEntreCurral.Visible := false;
end;

procedure TfrmMovimentacaoGrupo.imgCloseClick(Sender: TObject);
begin
 if tbPrincipal.TabIndex=1 then
 begin
  tbPrincipal.ActiveTab := tbiLista;
 end;
 if tbPrincipal.TabIndex=2 then
 begin
  tbPrincipal.ActiveTab := tbiCad;
 end
 else
 begin
  close;
  frmPrincipal.MudarAba(frmPrincipal.tbiMenu,sender);
 end;
end;

procedure TfrmMovimentacaoGrupo.EditButton1Click(Sender: TObject);
var
 dlg :TFrmmsgDlg;
begin
 vImportacao           := 0;
 layImportacao.Visible := false;
 edtLocalOrigem.Visible := true;
 lblPastoCurral.Visible := true;

 serviceDB.TableRacas.Close;
 serviceDB.TableRacas.Open;

 serviceDB.TableCategorias.Close;
 serviceDB.TableCategorias.Open;

 serviceDBN.TAuxRebanho.Close;
 serviceDBN.TAuxRebanho.Open;
 gridAnimaisSelecionados.RowCount :=0;
 TbPrincipal.ActiveTab := tbiListaAnimal;
end;

procedure TfrmMovimentacaoGrupo.EditButton2Click(Sender: TObject);
begin
 serviceDB.MotivoMovimentacao.Close;
 serviceDB.MotivoMovimentacao.Open;
 frmCadAuxMov := TfrmCadAuxMov.Create(nil);
  try
    frmCadAuxMov.ShowModal;
  finally
    edtMotivoMov.text        := serviceDB.MotivoMovimentacaoNOME.AsString;
    vIdMotivo                := serviceDB.MotivoMovimentacaoID.AsString;
    cbxDestinoAnimal.Enabled := vIdMotivo<>'100001';
    cbxTipoPeso.Enabled      := vIdMotivo<>'100001';
    edtPesoMedio.Enabled     := vIdMotivo<>'100001';
    chkInserePeso.IsChecked  := False;
    chkInserePeso.Enabled    := vIdMotivo<>'100001';
    frmCadAuxMov.Free;
  end;
end;

procedure TfrmMovimentacaoGrupo.EditButton3Click(Sender: TObject);
var
 Txt         : TextFile;
 Quebra      : TStringList;
 Arq,Identificacao1,Data,PESO: String;
 vData:TDateTime;
 I,Contador,Irregular:integer;
 vQryAux:TFDQuery;
begin
 if (not rdChip.IsChecked)and(not rdSisbov.IsChecked) then
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
         if chkIncluirPeso.IsChecked then
          PESO := Quebra.Strings[1];
         if (Identificacao1.Length>0) then
         begin
           with vQryAux,vQryAux.SQL do
           begin
             Clear;
             Add('INSERT INTO TMP_ANIMAL(');
             if rdChip.IsChecked then
              Add('IDENTIFICACAO_1');
             if rdSisbov.IsChecked then
              Add('IDENTIFICACAO_2');
             if chkIncluirPeso.IsChecked then
              Add(',PESO_ENTRADA');
             Add(')VALUES(');
             Add(':SISBOV');
             if chkIncluirPeso.IsChecked then
              Add(',:PESO');
             Add(')');
             ParamByName('SISBOV').AsString      := Identificacao1;
             if chkIncluirPeso.IsChecked then
              ParamByName('PESO').AsString       := Peso;
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
     MyShowMessage('Dados Importados com Sucesso!'+#13+
      ' Os animais encontrados no arquivos serão filtrados no Grid',false);
    vImportacao           := 1;
    btnexportaNaoEncontrados.Visible :=True;
    btnFiltraAnimalClick(Sender);
   end;
 end;
end;

procedure TfrmMovimentacaoGrupo.EditButton4Click(Sender: TObject);
begin
 frmCadRebanho := TfrmCadRebanho.Create(nil);
  try
    frmCadRebanho.ShowModal;
  finally
    edtRebanhoDestino.text       := serviceDBN.TAuxRebanhoNOME.AsString;
    vIdRebanhoDestino            := serviceDBN.TAuxRebanhoID.AsString;
    frmCadRebanho.Free;
  end;
end;

procedure TfrmMovimentacaoGrupo.EditButton5Click(Sender: TObject);
begin
 frmContratoCompra := TfrmContratoCompra.Create(nil);
  try
    frmContratoCompra.ShowModal;
  finally
    edtContratoDestino.text      := ServiceConf.TContratoCompraNUMERO.AsString+'-'+ServiceConf.TContratoCompraPRODUTOR_DESTINO.AsString;
    vIdContratoDestino           := ServiceConf.TContratoCompraID.AsString;
    frmContratoCompra.Free;
  end;
end;

procedure TfrmMovimentacaoGrupo.EditButton6Click(Sender: TObject);
begin
  frmCadCurral := TfrmCadCurral.Create(nil);
  try
    frmPrincipal.vMov:=1;
    frmCadCurral.ShowModal;
  finally
    edtLocalOrigem.text      := serviceDB.TableCurraisCODIGO.AsString;
    vIdCurralOrigemF         := serviceDB.TableCurraisID.AsString;
    frmCadCurral.Free;
  end;
end;

procedure TfrmMovimentacaoGrupo.EditButton7Click(Sender: TObject);
begin
  frmLoteNutricional := TfrmLoteNutricional.Create(nil);
  try
    frmLoteNutricional.ShowModal;
  finally
    edtLoteOrigem.text       := ServiceConf.TLoteNutricionalID.AsString;
    vIdLote                  := ServiceConf.TLoteNutricionalID.AsString;
    vIdCurralOriLote         := ServiceConf.TLoteNutricionalID_LOCAL.AsString;
    frmLoteNutricional.Free;
  end;
end;

procedure TfrmMovimentacaoGrupo.EditButton8Click(Sender: TObject);
begin
 serviceDB.TableCurrais.Close;
 serviceDB.TableCurrais.Open;
 frmCadCurralConf := TfrmCadCurralConf.Create(nil);
  try
    serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'1');
    frmPrincipal.vMov :=1;
    frmCadCurralConf.ShowModal;
  finally
    edtCurralLoteDestino.text         := serviceDB.TableCurraisCODIGO.AsString;
    vIdCurralDestino                  := serviceDB.TableCurraisID.AsString;
    if not ServiceConf.VerificaLoteAtivo(vIdCurralDestino) then
    begin
      MyShowMessage('Curral Ja não possui lote nutricional!',false);
      edtCurralLoteDestino.text :='';
    end;
    frmCadCurralConf.Release;
  end;
end;

procedure TfrmMovimentacaoGrupo.EditButtonDestinoClick(Sender: TObject);
begin
 serviceDB.TableCurrais.Close;
 serviceDB.TableCurrais.Open;
 frmCadCurral := TfrmCadCurral.Create(nil);
  try
    serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'');
    frmPrincipal.vMov :=1;
    frmCadCurral.ShowModal;
  finally
    edtDestinoMov.text                := serviceDB.TableCurraisCODIGO.AsString;
    vIdCurralDestino                  := serviceDB.TableCurraisID.AsString;
    vTipoLocalDestino                 := serviceDB.TableCurraisTIPO.AsInteger;
    if serviceDB.TableCurraisTIPO.AsInteger=1 then
    begin
      if ServiceConf.VerificaLoteAtivo(vIdCurralDestino) then
      begin
        MyShowMessage('Curral não possui lote nutricional, deseja criar?',true);
        case frmPrincipal.vConfirma of
          1:
          begin
            RecTipoLote.Visible    := true;
          end;
          2:
           begin
             MyShowMessage('Operação Abortada',false);
           end;
        end;
      end;
    end;
    vIdLote                           := ServiceConf.RetornaLoteLocal(vIdCurralDestino);
    AtualizaLabelPastoOrigemSaida('D',serviceDB.TableCurraisID.AsString,
    FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString);
    LayValueDadosPastoDestino.Visible := true;
    layCapDadosPastoDestino.Visible   := true;
    frmCadCurral.Free;
  end;
end;

procedure TfrmMovimentacaoGrupo.EditButtonOrigemClick(Sender: TObject);
begin
 serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'');
 frmCadCurral := TfrmCadCurral.Create(nil);
  try
    frmPrincipal.vMov :=1;
    frmCadCurral.ShowModal;
  finally
    AtualizaLabelPastoOrigemSaida('O',serviceDB.TableCurraisid.AsString,
    FormatDateTime('mm/dd/yyyy',edtDataSaida.Date).QuotedString);
    edtPesoMedio.Text                 :='';
    edtPesoMedio.Enabled              := false;
    chkInserePeso.IsChecked           := false;
    frmCadCurral.Free;
  end;
end;

procedure TfrmMovimentacaoGrupo.LimpaCampos;
begin
 edtDestinoMov.Text       :='';
 edtMotivoMov.Text        :='';
 edtQtdAnimaisSaida.Text  :='0';
 layCapDadosPastoDestino.Visible := false;
 LayValueDadosPastoDestino.Visible := false;
end;

procedure TfrmMovimentacaoGrupo.LimpaCamposSaida;
begin
   edtQtdAnimaisSaida.Text       :='';
   cbxFRaca.ItemIndex            :=-1;
   cbxFCategoria.ItemIndex       :=-1;
   edtIdent1.Text                :='';
   edtIdent2.Text                :='';
end;

procedure TfrmMovimentacaoGrupo.MyShowMessage(msg: string; btnCancel: Boolean);
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

function TfrmMovimentacaoGrupo.PesquisaIDGrid(id: string): integer;
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

procedure TfrmMovimentacaoGrupo.Rectangle18Click(Sender: TObject);
begin
 if cbxTipoLote.ItemIndex=-1 then
 begin
  MyShowMessage('Selecione o tipo de lote!',false);
  Exit;
 end;
 try
   ServiceConf.CriarLoteNutricional(vIdCurralDestino,FormatDateTime('mm/dd/yyyy',date),cbxTipoLote.ItemIndex.ToString);
   RecTipoLote.Visible := false;
  except
  on E : Exception do
   begin
     MyShowMessage('Erro ao criar lote : ',false);
   end;
 end;
end;

procedure TfrmMovimentacaoGrupo.AtualizaLabelPastoOrigemSaida(vTipo,Pasto, vData: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select');
   Add('ID_LOCAL,');
   Add(' count(*) QTD_ANIMAIS,');
   Add(' AVG(COALESCE(ULTIMO_PESO,PESO_ENTRADA))PESOENT,');
   Add(' AVG(PESO_ESTIMADO)PESO_ATUAL,');
   Add(' AVG(CURRENT_DATE-CAST(A.DATA_PROC AS DATE)+1)DIAS');
   Add('from ANIMAL a');
   Add('WHERE STATUS=1 AND a.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND ID_LOCAL='+Pasto);
   Add('GROUP BY  ID_LOCAL');
   Open;
   if vTipo<>'O' then
   begin
     lblTotalAnimaisSaidaDestino.Text:= FieldByName('QTD_ANIMAIS').AsString;
     lblPesoMedAtualSaidaDestino.Text:= FieldByName('PESO_ATUAL').AsString;
     lblPesoMedEntSaidaDestino.Text  := FieldByName('PESOENT').AsString;
     lblDiasMedioSaidaDestino.Text   := FieldByName('DIAS').AsString;
   end;
 end;
end;

end.
