unit UEntradaGrupo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.DateTimeCtrls, FMX.EditBox, FMX.NumberBox, FMX.ListBox,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.TabControl,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,FireDAC.Comp.Client,Winapi.Windows,
  FMX.Effects, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.TreeView,
  Fmx.Bind.Grid, Data.Bind.Grid, FMX.Menus, ppParameter, ppDesignLayer, ppCtrls,
  ppVar, ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FMX.TMSBaseControl, FMX.TMSGridCell, FMX.TMSGridOptions,
  FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSGrid, FMX.GridExcelIO;

type
  TfrmEntradaGrupo = class(TForm)
    laybase: TLayout;
    laySuperior: TLayout;
    Rectangle1: TRectangle;
    lblStatusTela: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    layLista: TLayout;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    ToolBar4: TToolBar;
    LinkFillControlToField3: TLinkFillControlToField;
    layBtnControls: TLayout;
    SEffectBtnConfirm1: TShadowEffect;
    btnConfirma: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    SEffectBtnConfirm: TShadowEffect;
    btnCancelar: TRectangle;
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
    Image3: TImage;
    Layout10: TLayout;
    RecLista: TRectangle;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    StringGrid1: TStringGrid;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Label2: TLabel;
    dataInicioF: TDateEdit;
    dataFimF: TDateEdit;
    Label9: TLabel;
    cbxPastoDestinoF: TComboBox;
    btnFiltar: TSpeedButton;
    btnRel: TRectangle;
    Layout8: TLayout;
    Image4: TImage;
    Label10: TLabel;
    ShadowEffect1: TShadowEffect;
    Rectangle5: TRectangle;
    layResumoGrafico: TLayout;
    Rectangle6: TRectangle;
    lblTotalAnimais: TLabel;
    lblMediaPeso: TLabel;
    ppDBEntrdasAnimal: TppDBPipeline;
    ppDBEntrdasAnimalppField1: TppField;
    ppDBEntrdasAnimalppField2: TppField;
    ppDBEntrdasAnimalppField3: TppField;
    ppDBEntrdasAnimalppField4: TppField;
    ppDBEntrdasAnimalppField5: TppField;
    ppDBEntrdasAnimalppField6: TppField;
    ppReportEntradasAnimal: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel10: TppLabel;
    ppImage2: TppImage;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel17: TppLabel;
    ppLabel15: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine4: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppShape3: TppShape;
    ppDBCalc4: TppDBCalc;
    ppLabel14: TppLabel;
    ppLabel20: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    layTipoEntradas: TLayout;
    Rectangle50: TRectangle;
    Image24: TImage;
    ShadowEffect48: TShadowEffect;
    LinkFillControlToField4: TLinkFillControlToField;
    Layout25: TLayout;
    btnEntGrupo: TRectangle;
    Label51: TLabel;
    Image45: TImage;
    btnImportaArquivo: TRectangle;
    Label22: TLabel;
    Image5: TImage;
    Layout26: TLayout;
    layArquivo: TLayout;
    Rectangle11: TRectangle;
    Layout28: TLayout;
    Layout29: TLayout;
    Label24: TLabel;
    Layout30: TLayout;
    Label26: TLabel;
    Layout31: TLayout;
    ComboBox2: TComboBox;
    Layout32: TLayout;
    Label27: TLabel;
    OpenDialog1: TOpenDialog;
    layDadosGeral: TLayout;
    LayoutDados1: TLayout;
    Rectangle16000000: TRectangle;
    Layout490000000000000: TLayout;
    Layout47000000000: TLayout;
    Label31000000000: TLabel;
    lbll: TLabel;
    layCapDadosPasto: TLayout;
    Label7: TLabel;
    lblCapacidade: TLabel;
    lblLotacao: TLabel;
    Label19: TLabel;
    Layout48000000000: TLayout;
    cbxCurralPastoGrupo: TComboBox;
    edtLoteEntGrupo: TEdit;
    EditButton2: TEditButton;
    LayValueDadosPasto: TLayout;
    lblDtUltimaEntrada: TLabel;
    lblCapacidadeValor: TLabel;
    lblLotacaoValor: TLabel;
    lblCustoFixoOop: TLabel;
    layDados2: TLayout;
    Rectangle3: TRectangle;
    laySubDados2: TLayout;
    Layout4: TLayout;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Layout5: TLayout;
    ComboBox1: TComboBox;
    cbxRaca: TComboBox;
    cbxCategoria: TComboBox;
    edtQtdAniGrupo: TEdit;
    LayDados3: TLayout;
    Rectangle4: TRectangle;
    laySubDados3: TLayout;
    Layout520000000000: TLayout;
    lblPesoMed: TLabel;
    lblIdadeMedia: TLabel;
    Layout5300000: TLayout;
    edtTable: TNumberBox;
    edtIdadeMedia: TEdit;
    edtPesoMedGrupo: TEdit;
    layDados4: TLayout;
    Rectangle10: TRectangle;
    Layout22: TLayout;
    Layout23: TLayout;
    Layout24: TLayout;
    NumberBox1: TNumberBox;
    qryAniTMP: TFDQuery;
    Layout55: TLayout;
    Rectangle15: TRectangle;
    Label31: TLabel;
    Layout56: TLayout;
    Image13: TImage;
    btnEntInd: TRectangle;
    Label52: TLabel;
    Image46: TImage;
    TreeEntradaOutroEras: TTreeViewItem;
    Image6: TImage;
    Label6: TLabel;
    cbxtipoCurral: TComboBox;
    ClearEditButton2: TClearEditButton;
    Label11: TLabel;
    edtRebanhoDestino: TEdit;
    EditButton4: TEditButton;
    BindSourceDB4: TBindSourceDB;
    layImportando: TLayout;
    Rectangle8: TRectangle;
    Image1: TImage;
    ShadowEffect2: TShadowEffect;
    Layout6: TLayout;
    Layout12: TLayout;
    Rectangle14: TRectangle;
    Label15: TLabel;
    lblCountImportando: TLabel;
    lblContrato: TLabel;
    edtContratoCompra: TEdit;
    EditButton1: TEditButton;
    Label23: TLabel;
    edtGTA: TEdit;
    btnBuscaGTA: TEditButton;
    ClearEditButton1: TClearEditButton;
    lblValoR: TLabel;
    edtValorCompraGrupo: TEdit;
    Layout11: TLayout;
    Rectangle12: TRectangle;
    Layout13: TLayout;
    Layout14: TLayout;
    Layout15: TLayout;
    NumberBox3: TNumberBox;
    Label21: TLabel;
    Label20: TLabel;
    edtProdutorOrigem: TEdit;
    edtBuscaProdutorOrigem: TEditButton;
    ClearEditButton3: TClearEditButton;
    edtProdutorDestino: TEdit;
    edtBuscaProdutorDestino: TEditButton;
    ClearEditButton4: TClearEditButton;
    Label12: TLabel;
    Layout2: TLayout;
    Rectangle9: TRectangle;
    rdValorContrato: TRadioButton;
    rdValorGTA: TRadioButton;
    Label3900000: TLabel;
    edtDataEntGroup: TDateEdit;
    Label13: TLabel;
    cbxDestinoAnimal: TComboBox;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout234: TLayout;
    Layout235: TLayout;
    Layout236: TLayout;
    Label103: TLabel;
    Layout237: TLayout;
    Label109: TLabel;
    lblTotalAnimaisContrato: TLabel;
    Label110: TLabel;
    lblTotalVinculados: TLabel;
    layResumoContrato: TLayout;
    Layout16: TLayout;
    Layout17: TLayout;
    Label14: TLabel;
    Layout18: TLayout;
    ShadowEffect3: TShadowEffect;
    btnConfirmar: TRectangle;
    Layout19: TLayout;
    Image7: TImage;
    Label16: TLabel;
    ShadowEffect4: TShadowEffect;
    TMSFMXGridExcelIO1: TTMSFMXGridExcelIO;
    layGridValidacao: TLayout;
    Rectangle7: TRectangle;
    Layout3: TLayout;
    Layout9: TLayout;
    NumberBox2: TNumberBox;
    GridImportacao: TTMSFMXGrid;
    qryAniTMPID: TIntegerField;
    qryAniTMPIDENTIFICACAO_1: TStringField;
    qryAniTMPIDENTIFICACAO_2: TStringField;
    qryAniTMPPESO_ENTRADA: TFMTBCDField;
    qryAniTMPIDADE_MESES: TIntegerField;
    qryAniTMPDATAREG: TSQLTimeStampField;
    qryAniTMPID_USUARIO: TIntegerField;
    qryAniTMPSTATUS: TIntegerField;
    qryAniTMPREBANHO: TStringField;
    qryAniTMPPASTO: TStringField;
    qryAniTMPCATEGORIA: TStringField;
    qryAniTMPDATA_ENTRADA: TDateField;
    qryAniTMPRACA: TStringField;
    qryAniTMPNUMERO_CONTRATO: TStringField;
    qryAniTMPNUMERO_GTA: TStringField;
    qryAniTMPRACA_NOME: TStringField;
    qryAniTMPCATEGORIA_NOME: TStringField;
    qryAniTMPREBANHO_NOME: TStringField;
    qryAniTMPCURRAL: TStringField;
    qryAniTMPTIPO: TIntegerField;
    qryAniTMPVALOR_COMPRA: TFMTBCDField;
    qryAniTMPGTA_ID: TIntegerField;
    qryAniTMPID_PROPRIEDADE: TIntegerField;
    qryAniTMPID_PRODUTOR_DESTINO: TIntegerField;
    qryAniTMPID_PRODUTOR_ORIGEM: TIntegerField;
    qryAniTMPID_CONTRATO: TIntegerField;
    Rectangle19: TRectangle;
    lblQtdRegArquivo: TLabel;
    edtArquivoAnimais: TEdit;
    btnBuscaArquivo: TEditButton;
    Label17: TLabel;
    RecTipoLote: TRectangle;
    Rectangle13: TRectangle;
    Layout96: TLayout;
    Layout97: TLayout;
    Layout98: TLayout;
    Label100: TLabel;
    Layout99: TLayout;
    Layout101: TLayout;
    Rectangle16: TRectangle;
    Label101: TLabel;
    Rectangle72: TRectangle;
    cbxTipoLote: TComboBox;
    procedure btnConfirmaClick(Sender: TObject);
    procedure cbxRacaChange(Sender: TObject);
    procedure cbxCategoriaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtQtdAniGrupoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtValorCompraGrupoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtNovoPesoEntKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtNovoValorKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnBuscaGTAClick(Sender: TObject);
    procedure edtBuscaProdutorDestinoClick(Sender: TObject);
    procedure edtBuscaProdutorOrigemClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnEntIndClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnEntGrupoClick(Sender: TObject);
    procedure btnImportaArquivoClick(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure cbxCategoriaExit(Sender: TObject);
    procedure edtDataEntGroupExit(Sender: TObject);
    procedure btnIndOutroErasClick(Sender: TObject);
    procedure TreeEntradaOutroErasClick(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure edtRebanhoDestinoEnter(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure Image161Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnBuscaArquivoClick(Sender: TObject);
    procedure Rectangle16Click(Sender: TObject);
  private
    var
     vIdCurral,vIdDestinoVenda,vIdMotivo,vProdutorDestino,vProdutorOrigem,vIDContrato,vIdGTA,
     vIdadeMedia,vPesoMedGrupo,ORIGEM_DADOS,vIdRebanhoDestino,vIdLote,vTipoCurral:string;
     vIdRaca,vIdCategoria,vAltera,vTotalAnimaisGTA,vImportacao,vTipoValorContrato,vValorContrato:integer;
     vPesoTotalContrato :Double;
     function CountPos(const subtext: string; Text: string): Integer;

  public
    { Public declarations }
     procedure CarregaCombo;
     procedure CarregaComboPasto;
     procedure SomarColunasGrid;
     function  NumLinhasArq(Arqtexto:String): integer;
     procedure MyShowMessage(msg: string;btnCancel:Boolean);
     procedure DelayedSetFocus(control: TControl);
  end;

var
  frmEntradaGrupo: TfrmEntradaGrupo;

implementation

{$R *.fmx}

uses UPrincipal, UCurrais, UServiceDB, UPropriedadeParceira, UAuxMotivoMorte,
   UMsgDlg, UCadGTA, UEntAnimal, UCurralConfinamento, ServiceDB2, UAuxRebanho,
  USeviceConfinamento, ContratoCompra;

function TfrmEntradaGrupo.NumLinhasArq(Arqtexto:String): integer;
var
  f: Textfile;
  linha, cont:integer;
begin
 linha := 0;
 cont := 0;
 assignFile(f,Arqtexto);
 Reset(f);
 While not eof(f) Do
 begin
  ReadLn(f);
  Cont := Cont + 1;
 end;
 closefile(f);
result := cont;
end;

procedure TfrmEntradaGrupo.Rectangle16Click(Sender: TObject);
var
 vResult :string;
begin
  if cbxTipoLote.ItemIndex=-1 then
  begin
    MyShowMessage('Selecione o tipo de lote!',false);
    Exit;
  end;

  try
    vResult:=ServiceConf.CriarLoteNutricional(vIdCurral,
     FormatDateTime('mm/dd/yyyy',edtDataEntGroup.Date),cbxTipoLote.ItemIndex.ToString);
    if vResult<>'OK' then
    begin
      edtLoteEntGrupo.Text          := '';
      lblDtUltimaEntrada.Text       := '';
      lblCapacidadeValor.Text       := '';
      lblCustoFixoOop.Text          := '';
      lblLotacaoValor.Text          := '';
      LayValueDadosPasto.Visible    := false;
      layCapDadosPasto.Visible      := false;
    end
    else
    begin
      edtLoteEntGrupo.Text          := serviceDB.TableCurraisCODIGO.AsString;
      lblDtUltimaEntrada.Text       := serviceDB.RetornaUltimaEntradaPasto(vIdCurral);
      lblCapacidadeValor.Text       := serviceDB.TableCurraisCAPACIDADE.AsString;
      lblCustoFixoOop.Text          := serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString;
      lblLotacaoValor.Text          := serviceDB.TableCurraisLOTACAO.AsString;
      LayValueDadosPasto.Visible    := true;
      layCapDadosPasto.Visible      := true;
    end;
    RecTipoLote.Visible    := false;
    frmCadCurralConf.Release;
  except
  on E : Exception do
   begin
     MyShowMessage('Erro ao criar lote : ',false);
   end;
  end;
end;

procedure TfrmEntradaGrupo.btnBuscaArquivoClick(Sender: TObject);
var
 I:Integer;
 chip,ncf,peso,idade,
 raca,rebanho,pasto,categoria,dataEntrada,Contrato,GTA: string;
 racaid,rebanhoid,pastoid,categoriaid,Contratoid,GTAid:string;
 Irregular,IrregularGeral,IdadeI:integer;
 pesoF:Double;
 vDtaValida:TDateTime;
begin
 serviceDB.DeletaAnimalTMP;
 if OpenDialog1.Execute then
 begin
  edtArquivoAnimais.Text := OpenDialog1.FileName;
  TMSFMXGridExcelIO1.XLSImport(OpenDialog1.FileName);
  lblQtdRegArquivo.Text := intToStr(GridImportacao.RowCount-1);
 end;
 GridImportacao.Cells[11,0]     := 'Validação';
 GridImportacao.ColumnWidths[0] := 120;
 GridImportacao.ColumnWidths[1] := 120;
 GridImportacao.ColumnWidths[2] := 120;
 GridImportacao.ColumnWidths[3] := 120;
 GridImportacao.ColumnWidths[4] := 120;
 GridImportacao.ColumnWidths[5] := 120;
 GridImportacao.ColumnWidths[6] := 120;
 GridImportacao.ColumnWidths[7] := 120;
 GridImportacao.ColumnWidths[8] := 120;
 GridImportacao.ColumnWidths[9] := 120;
 GridImportacao.ColumnWidths[10]:= 500;
 IrregularGeral                 :=0;
 for I := 0 to GridImportacao.RowCount-1 do
 begin
   if i>0 then
   begin
     Irregular    :=0;
     GTA          :='';
     GTAId        :='';
     chip         := (GridImportacao.Cells[0,I]);
     ncf          := (GridImportacao.Cells[1,I]);
     idade        := (GridImportacao.Cells[2,I]);
     peso         := (GridImportacao.Cells[3,I]);
     raca         := (GridImportacao.Cells[4,I]);
     rebanho      := (GridImportacao.Cells[5,I]);
     pasto        := (GridImportacao.Cells[6,I]);
     categoria    := (GridImportacao.Cells[7,I]);
     dataEntrada  := (GridImportacao.Cells[8,I]);
     Contrato     := (GridImportacao.Cells[9,I]);

     if chip<>''  then
      if not serviceDB.VerificaIdentificacaoExit(chip) then
      begin
       GridImportacao.Cells[10,I] :='Chip já utilizada em um animal Ativo : '+Chip;
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
      end;

     if(chip.Length=0)and(ncf.Length=0) then
     begin
      GridImportacao.Cells[10,I] :='Chip em Banco, pelo menos uma deve ser preenchida!';
      layDadosGeral.Enabled  := false;
      INC(Irregular);
      INC(IrregularGeral);
     end;
     if (ncf.Length>0) then
      if not serviceDB.VerificaIdentificacaoExit(ncf) then
      begin
       GridImportacao.Cells[10,I] :='NCF/SISBOV já utilizada em um animal Ativo : '+ncf;
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
      end;
     if not TryStrToInt(Idade,IdadeI)then
     begin
       GridImportacao.Cells[10,I] :='Idade da Linha: '+IntToStr(I)+' Invalida';
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
     end;
     if not TryStrToFloat(peso,pesoF)then
     begin
       GridImportacao.Cells[10,I] :='Peso da Linha: '+IntToStr(I)+' Invalido';
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
     end;
     //##
     if raca.Length=0 then
     begin
       GridImportacao.Cells[10,I] :='Raça em Branco na Linha: '+IntToStr(I)+' Invalido';
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
     end
     else
     begin
       racaId :=serviceDB.RetornaIdRaca(raca);
       if racaId.Length=0 then
       begin
        GridImportacao.Cells[10,I] :='Raça Não Encontrado: '+raca+' '+IntToStr(I)+' Invalido';
        layDadosGeral.Enabled  := false;
        INC(Irregular);
        INC(IrregularGeral);
       end;
     end;

     if rebanho.Length=0 then
     begin
       GridImportacao.Cells[10,I] :='Rebanho em Branco na Linha: '+IntToStr(I)+' Invalido';
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
     end
     else
     begin
       RebanhoId :=serviceDB.RetornaIdRebanho(rebanho);
       if RebanhoId.Length=0 then
       begin
        GridImportacao.Cells[10,I] :='Rebanho Não Encontrado: '+Rebanho+' '+IntToStr(I)+' Invalido';
        layDadosGeral.Enabled  := false;
        INC(Irregular);
        INC(IrregularGeral);
       end;
     end;

     if pasto.Length=0 then
     begin
       GridImportacao.Cells[10,I] :='Pasto/Curral em Branco na Linha: '+IntToStr(I)+' Invalido';
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
     end
     else
     begin
       pastoId := serviceDB.RetornaIdPastp(pasto);
       if pastoId.Length=0 then
       begin
        GridImportacao.Cells[10,I] :='Pasto/Curral Não Encontrado:'+pasto+' '+IntToStr(I)+' Invalido';
        layDadosGeral.Enabled  := false;
        INC(Irregular);
        INC(IrregularGeral);
       end;
     end;

     if categoria.Length=0 then
     begin
       GridImportacao.Cells[10,I] :='Categoria em Branco na Linha: '+IntToStr(I)+' Invalido';
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
     end
     else
     begin
       categoriaId := serviceDB.RetornaIdCategoria(categoria);
       if categoriaId.Length=0 then
       begin
        GridImportacao.Cells[10,I] :='Categoria Não Encontrado:'+categoria+' '+IntToStr(I)+' Invalido';
        layDadosGeral.Enabled  := false;
        INC(Irregular);
        INC(IrregularGeral);
       end;
     end;
     if not TryStrToDate(dataEntrada,vDtaValida)then
     begin
       GridImportacao.Cells[10,I] :='Data Invalida na Linha: '+IntToStr(I)+' Invalida';
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
     end;
     if Contrato.Length=0 then
     begin
       GridImportacao.Cells[10,I] :='Contrato em Branco na Linha: '+IntToStr(I)+' Invalido';
       layDadosGeral.Enabled  := false;
       INC(Irregular);
       INC(IrregularGeral);
     end
     else
     begin
       contratoId := serviceDB.RetornaIdContrato(Contrato);
       if contratoId.Length=0 then
       begin
        GridImportacao.Cells[10,I] :='Contrato Não Encontrado:'+Contrato+' '+IntToStr(I)+' Invalido';
        layDadosGeral.Enabled  := false;
        INC(Irregular);
        INC(IrregularGeral);
       end;
     end;
     if GTA.Length>0 then
     begin
       GTAId := serviceDB.RetornaIdGTA(GTA);
       if GTAId.Length=0 then
       begin
        GridImportacao.Cells[10,I] :='GTA Não Encontrado:'+GTA+' '+IntToStr(I)+' Invalido';
        layDadosGeral.Enabled  := false;
        INC(Irregular);
        INC(IrregularGeral);
       end;
     end;
     if Irregular=0 then
     begin
       GridImportacao.Cells[10,I] :='OK';
       serviceDB.InsereAnimalTMP(
        chip,
        ncf,
        Idade,
        StringReplace(Peso,',','.',[rfReplaceAll]),
        racaid,
        rebanhoid,
        categoriaid,
        pastoid,
        dataEntrada,
        contratoId,
        GTAId
        );
     end;
   end;
 end;
 if IrregularGeral>0 then
 begin
   MyShowMessage('Existe irregularidade no arquivo favor corrigi antes!',false);
   layBtnControls.Enabled := FALSE;
 end
 else
   layBtnControls.Enabled := true;
end;

procedure TfrmEntradaGrupo.btnBuscaGTAClick(Sender: TObject);
begin
   edtProdutorOrigem.Text     := '';
   edtProdutorDestino.Text    := '';
   vProdutorDestino           := '';
   vProdutorOrigem            := '';
   serviceDB.AbreGTAEntradaGrupo(serviceDB.vIdPropriedade);
   frmCadGTA := TfrmCadGTA.Create(nil);
   try
    frmCadGTA.ShowModal;
   finally
    vTotalAnimaisGTA           := serviceDB.TableGTATOTAL_GTA.AsInteger-serviceDB.TableGTATOTAL_BRINCADOS.AsInteger;
    vIdGTA                     := serviceDB.TableGTAID.AsString;
    edtGTA.text                := serviceDB.TableGTANUMERO.AsString+'-'+serviceDB.TableGTASERIE.AsString+'-'+serviceDB.TableGTAUF.AsString;
    vProdutorDestino           := serviceDB.TableGTAID_PRODUTOR_DESTINO.AsString;
    vProdutorOrigem            := serviceDB.TableGTAID_PRODUTOR_ORIGEM.AsString;
    edtProdutorOrigem.Text     := serviceDB.TableGTANOME.AsString;
    edtProdutorDestino.Text    := serviceDB.TableGTANOME_1.AsString;
    if rdValorGTA.IsChecked then
     edtValorCompraGrupo.Text   := FloattoStr(serviceDB.TableGTAVALOR_CAB.AsFloat+

    serviceDB.TableGTAVALOR_FRETE_CAB.AsFloat+serviceDB.TableGTAVALOR_COMISSAO_CAB.AsFloat);
    if vIdGTA='' then
    begin
     edtProdutorOrigem.Enabled   := true;
     edtProdutorDestino.Enabled  := true;
     edtValorCompraGrupo.Enabled := true;
    end
    else
    begin
     edtProdutorOrigem.Enabled   := false;
     edtProdutorDestino.Enabled  := false;
     edtValorCompraGrupo.Enabled := false;
    end;
    frmCadGTA.Free;
  end;
  if (edtQtdAniGrupo.Text.Length>0) and (vIdGTA<>'') then
  begin
    if strToInt(edtQtdAniGrupo.Text)>(serviceDB.RetornaSaldoGTA(vIdGTA)) then
    begin
      MyShowMessage('Qtde. de animais maior que o salda da GTA!',false);
      edtGTA.Text :='';
      vIdGTA      :='';
      edtProdutorOrigem.Enabled   := true;
      edtProdutorDestino.Enabled  := true;
      edtValorCompraGrupo.Enabled := true;
    end;
  end;
end;

procedure TfrmEntradaGrupo.btnCancelarClick(Sender: TObject);
begin
 edtQtdAniGrupo.Text           :='';
 edtIdadeMedia.Text            :='';
 edtPesoMedGrupo.Text          :='';
 cbxRaca.ItemIndex             := -1;
 cbxCategoria.ItemIndex        := -1;
 cbxCurralPastoGrupo.ItemIndex := -1;
 edtValorCompraGrupo.Text      :='0';
 edtDataEntGroup.Text          :='';
 LayValueDadosPasto.Visible    := false;
 layCapDadosPasto.Visible      := false;
 edtLoteEntGrupo.Text          :='';
 edtProdutorOrigem.Text        :='';
 edtProdutorDestino.Text       :='';
 edtGTA.Text                   :='';
 tbPrincipal.ActiveTab         := tbiLista;
end;

procedure TfrmEntradaGrupo.btnConfirmaClick(Sender: TObject);
var
 vValorCompra,vConfereProdutor:String;
 dlg :TFrmmsgDlg;
begin
 edtTable.SetFocus;
 if vImportacao=0 then
 begin
   if edtContratoCompra.Text.Length=0 then
   begin
     MyShowMessage('Informe o Contrato!',false);
     Exit;
   end;
   if (rdValorGTA.IsChecked) and (edtGTA.Text.Length=0) then
   begin
     MyShowMessage('Informe a GTA!',false);
     Exit;
   end;
   if(serviceDB.vRastreada='1')and (vIdGTA.Length=0)then
   begin
     MyShowMessage('GTA é obrigatoria para propriedades rastreadas!',false);
     Exit;
   end;

   if cbxDestinoAnimal.ItemIndex=-1 then
   begin
     MyShowMessage('Informe o destino dos animais!',false);
     Exit;
   end;

   if edtRebanhoDestino.Text.Length=0 then
   begin
     MyShowMessage('Informe o Rebanho dos animais!',false);
     Exit;
   end;

   if edtLoteEntGrupo.Text.Length=0 then
   begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Informe o Local Destino!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
      end);
      Exit;
   end;
   if edtDataEntGroup.Text.Length=0 then
   begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Informe a Data de Entrada dos animais!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        edtDataEntGroup.SetFocus;
      end);
      Exit;
   end;

   if edtPesoMedGrupo.Text.Length=0 then
   begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Informe o peso Medio dos animais!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        edtPesoMedGrupo.SetFocus;
      end);
      Exit;
   end;
    if cbxRaca.ItemIndex=-1 then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Informe a Raça!';
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
       dlg.msg.Text := 'Informe a Categoria!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         cbxCategoria.SetFocus;
       end);
       Exit;
     end;
     if edtIdadeMedia.Text.Length=0 then
     begin
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Informe a Idade em Meses!';
       dlg.btnCancel.Visible := false;
       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         edtIdadeMedia.SetFocus;
       end);
       Exit;
     end;
     if(edtLoteEntGrupo.Text.Length=0)then
     begin
      ShowMessage('Informe o lote dos animais');
      Exit;
     end;
     if(edtQtdAniGrupo.Text.Length=0) or (edtQtdAniGrupo.Text='0') then
     begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Informe a quantidade de animais!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        edtQtdAniGrupo.SetFocus;
      end);
      Exit;
     end;

     if (vIdGTA.Length=0)then
     begin
       if edtProdutorOrigem.Text.Length=0 then
       begin
          dlg := TFrmmsgDlg.Create(nil);
          dlg.Position := TFormPosition.ScreenCenter;
          dlg.msg.Text := 'Informe o Produtor de Origem ou a GTA!';
          dlg.btnCancel.Visible := false;
          dlg.ShowModal(
          procedure(ModalResult: TModalResult)
          begin
            edtProdutorOrigem.SetFocus;
          end);
          Exit;
       end;
       if edtProdutorDestino.Text.Length=0 then
       begin
          dlg := TFrmmsgDlg.Create(nil);
          dlg.Position := TFormPosition.ScreenCenter;
          dlg.msg.Text := 'Informe o Produtor de Destino ou a GTA!';
          dlg.btnCancel.Visible := false;
          dlg.ShowModal(
          procedure(ModalResult: TModalResult)
          begin
            edtProdutorDestino.SetFocus;
          end);
          Exit;
       end;
     end;
     if (vIdGTA<>'0')and(vIdGTA.Length>0)and(strToInt(edtQtdAniGrupo.Text)>vTotalAnimaisGTA) then
     begin
        dlg := TFrmmsgDlg.Create(nil);
        dlg.Position := TFormPosition.ScreenCenter;
        dlg.msg.Text := 'Quantidade de Animais não pode ser maior que a GTA!';
        dlg.btnCancel.Visible := false;
        dlg.ShowModal(
        procedure(ModalResult: TModalResult)
        begin
          edtQtdAniGrupo.SetFocus;
        end);
        Exit;
     end;
     if vIdGTA.Length=0 then
       vIdGTA :='0';


      if vTipoValorContrato<>1 then
        vValorCompra :=
         serviceDB.RetornaValorContrado(edtValorCompraGrupo.Text.ToDouble,vTipoValorContrato,edtPesoMedGrupo.Text.ToDouble,vPesoTotalContrato).ToString
       else
        vValorCompra:= StringReplace(edtValorCompraGrupo.Text,',','.',[rfReplaceAll]);

      vValorCompra:= StringReplace(vValorCompra,',','.',[rfReplaceAll]) ;


      if cbxtipoCurral.ItemIndex=1 then
      begin
        if vIdLote ='' then
         vIdLote := ServiceConf.RetornaLoteLocalNome(edtLoteEntGrupo.Text)
      end;
     try
      TThread.Synchronize(nil, procedure
       var
         I:integer;
      begin
       layImportando.Visible := true;
       Application.ProcessMessages;
       Sleep(1000);

       for I := 1 to strToInt(edtQtdAniGrupo.Text) do
       begin
         lblCountImportando.Text := I.ToString;
         serviceDB.InsereAnimal(
         vIdCurral,
         intToStr(vIdCategoria),
         intToStr(vIdRaca),
         FormatDateTime('mm/dd/yyyy',edtDataEntGroup.date),
         edtIdadeMedia.Text,
         StringReplace(edtPesoMedGrupo.Text,',','.',[rfReplaceAll]),
         vProdutorDestino,
         vProdutorOrigem,
         vIdGTA,'','','',vValorCompra,'2',ORIGEM_DADOS,
         vIdRebanhoDestino,vIdLote,vIDContrato,
         intToStr(cbxtipoCurral.ItemIndex),cbxDestinoAnimal.Selected.Text,
         intToStr(cbxtipoCurral.ItemIndex));
       end;
       serviceDB.VerificaAtualizaPlaUsoMineral(vIdCurral);
       if(serviceDB.vRastreada='1')then
        serviceDB.AtualizaGTAStatus(vIdGTA);
       layImportando.Visible   := false;
       ServiceConf.ResumoContrato.Close;
       ServiceConf.ResumoContrato.ParamByName('id').AsInteger := vIdContrato.ToInteger;
       ServiceConf.ResumoContrato.Open;
       lblTotalAnimaisContrato.Text := ServiceConf.ResumoContrato.fieldByName('TOTAL_ANIMAIS').AsString;
       lblTotalVinculados.Text      := ServiceConf.ResumoContrato.fieldByName('ANIMAI_VINCULADOS').AsString;
       layResumoContrato.Visible    := true;
      end);
     except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
     end;
 end//vImportacao=0;
 else
 begin
     if(GridImportacao.RowCount=0) then
     begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Informe a quantidade de animais!';
      dlg.btnCancel.Visible := false;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        edtQtdAniGrupo.SetFocus;
      end);
      Exit;
     end;
     try
       qryAniTMP.Close;
       qryAniTMP.Open;
       qryAniTMP.First;
      TThread.CreateAnonymousThread(procedure
      var
       x:integer;
      begin
       TThread.Synchronize(nil, procedure
       begin
        x:=0;
        layImportando.Visible   := true;
        lblCountImportando.Text :='0';
       end);


       while not qryAniTMP.eof do
       begin
         if qryAniTMPIDADE_MESES.AsInteger>0 then
           vIdadeMedia := qryAniTMPIDADE_MESES.AsString
         else
           vIdadeMedia := edtIdadeMedia.Text;

         if qryAniTMPPESO_ENTRADA.AsInteger>0 then
           vPesoMedGrupo := qryAniTMPPESO_ENTRADA.AsString
         else
           vPesoMedGrupo := StringReplace(edtPesoMedGrupo.Text,',','.',[rfReplaceAll]);

         if qryAniTMPGTA_ID.AsString.Length=0 then
          vIdGTA :='0'
         else
          vIdGTA := qryAniTMPGTA_ID.AsString;

        if qryAniTMPVALOR_COMPRA.AssTring.Length>0 then
          vValorCompra:= StringReplace(qryAniTMPVALOR_COMPRA.AssTring,',','.',[rfReplaceAll])
        else
          vValorCompra:= '0';

         if ((qryAniTMPGTA_ID.AsString.Length>0) and (qryAniTMPGTA_ID.AsString<>'0'))
          and ((qryAniTMPID_CONTRATO.AsString.Length>0) and (qryAniTMPID_CONTRATO.AsString<>'0')) then
         begin
           vConfereProdutor :=serviceDB.VerificaProdutorContratoGTA(qryAniTMPGTA_ID.AsString,qryAniTMPID_CONTRATO.AsString);
           if vConfereProdutor.Length>0 then
           begin
             MyShowMessage(vConfereProdutor,false);
             Exit;
           end;
         end;

         serviceDB.InsereAnimal(
         qryAniTMPPASTO.AsString,
         qryAniTMPCATEGORIA.AsString,
         qryAniTMPRACA.AsString,
         FormatDateTime('mm/dd/yyyy',qryAniTMPDATA_ENTRADA.AsDateTime),
         qryAniTMPIDADE_MESES.AsString,
         StringReplace(qryAniTMPPESO_ENTRADA.Text,',','.',[rfReplaceAll]),
         qryAniTMPID_PRODUTOR_DESTINO.AsString,
         qryAniTMPID_PRODUTOR_ORIGEM.AsString,
         qryAniTMPGTA_ID.AsString,
         '',
         qryAniTMPIDENTIFICACAO_1.AsString,
         qryAniTMPIDENTIFICACAO_2.AsString,
         StringReplace(qryAniTMPVALOR_COMPRA.AsString,',','.',[rfReplaceAll]),
         '3',ORIGEM_DADOS,
         qryAniTMPREBANHO.AsString,
          ServiceConf.RetornaLoteLocalNome(qryAniTMPPASTO.AsString),
         qryAniTMPID_CONTRATO.AsString,
         ServiceConf.RetornaTipoCurral(qryAniTMPPASTO.AsString),
         '',
         qryAniTMPTIPO.AsString);
         inc(x);
         vIdContrato := qryAniTMPID_CONTRATO.AsString;
         TThread.Synchronize(nil, procedure
         begin
          lblCountImportando.Text :=intToStr(x);
         end);
         qryAniTMP.Next;
       end;
       TThread.Synchronize(nil, procedure
       begin
        layImportando.Visible   := false;
        ServiceConf.ResumoContrato.Close;
        ServiceConf.ResumoContrato.ParamByName('id').AsInteger := vIdContrato.ToInteger;
        ServiceConf.ResumoContrato.Open;
        lblTotalAnimaisContrato.Text := ServiceConf.ResumoContrato.fieldByName('TOTAL_ANIMAIS').AsString;
        lblTotalVinculados.Text      := ServiceConf.ResumoContrato.fieldByName('ANIMAI_VINCULADOS').AsString;
        layResumoContrato.Visible    := true;
       end);
      end).Start;
     except
       on E : Exception do
       begin
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        layImportando.Visible        := false;
       end;
     end;
    if vIdGTA.Length>0 then
    begin
      serviceDB.AtualizaSaldoGTA(vIdGTA);
      serviceDB.AtualizaGTAProc(vIdGTA);
    end;
 end;
end;

procedure TfrmEntradaGrupo.btnConfirmarClick(Sender: TObject);
begin
 GridImportacao.RowCount       := 0;
 layResumoContrato.Visible     := false;
 edtQtdAniGrupo.Text           :='';
 edtIdadeMedia.Text            :='';
 edtPesoMedGrupo.Text          :='';
 cbxRaca.ItemIndex             := -1;
 cbxCategoria.ItemIndex        := -1;
 cbxCurralPastoGrupo.ItemIndex := -1;
 edtValorCompraGrupo.Text      :='0';
 edtDataEntGroup.Text          :='';
 LayValueDadosPasto.Visible    := false;
 layCapDadosPasto.Visible      := false;
 edtLoteEntGrupo.Text          :='';
 tbPrincipal.ActiveTab         := tbiLista;
end;

procedure TfrmEntradaGrupo.btnEntGrupoClick(Sender: TObject);
begin
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  frmPrincipal.vMov :=1;
  layTipoEntradas.Visible := false;
  try
    frmOpercaoEntrada := TfrmOpercaoEntrada.Create(Self);
    frmOpercaoEntrada.ShowModal;
  finally
    frmOpercaoEntrada.Free;
     frmPrincipal.vMov :=0;
    serviceDB.AbrirEntradaAnimalGrid(dataFimF.Date,dataInicioF.Date,cbxPastoDestinoF.Selected.Text);
    SomarColunasGrid;
  end;
end;

procedure TfrmEntradaGrupo.btnEntIndClick(Sender: TObject);
begin
   if serviceDB.vRastreada='1' then
    MyShowMessage('Antenção propriedade rastreada, entrada em grupo não gerar a documentação necessaria,'+
     'para gera os comunicado o usuario deve reprocessar os animais',false);

   layGridValidacao.Visible      := false;
   vImportacao                   :=0;
   layArquivo.Visible            := false;
   layDadosGeral.Enabled         := true;
   edtQtdAniGrupo.Text           :='';
   edtIdadeMedia.Text            :='';
   edtPesoMedGrupo.Text          :='';
   cbxRaca.ItemIndex             := -1;
   cbxCategoria.ItemIndex        := -1;
   cbxCurralPastoGrupo.ItemIndex := -1;
   edtValorCompraGrupo.Text      :='0';
   edtDataEntGroup.Text          :='';
   LayValueDadosPasto.Visible    := false;
   layCapDadosPasto.Visible      := false;
   edtLoteEntGrupo.Text          :='';
   edtProdutorOrigem.Text        :='';
   edtProdutorDestino.Text       :='';
   edtGTA.Text                   :='';
   edtProdutorOrigem.Enabled     := true;
   edtProdutorDestino.Enabled    := true;
   layTipoEntradas.Visible       := false;
   LayoutDados1.Visible          := true;
   layDados2.Visible             := true;
   layDados3.Visible             := true;

   CarregaCombo;
   tbPrincipal.ActiveTab         := tbiCad;
end;

procedure TfrmEntradaGrupo.btnEntrarClick(Sender: TObject);
begin
  serviceDB.AbrirEntradaAnimalGrid(dataInicioF.date,dataFimF.date,cbxPastoDestinoF.Selected.Text);
  ppReportEntradasAnimal.Print;
end;

procedure TfrmEntradaGrupo.btnFiltarClick(Sender: TObject);
begin
 serviceDB.AbrirEntradaAnimalGrid(dataFimF.Date,dataInicioF.Date,cbxPastoDestinoF.Selected.Text);
 SomarColunasGrid;
end;

procedure TfrmEntradaGrupo.btnImportaArquivoClick(Sender: TObject);
begin
   layGridValidacao.Visible      := true;
   vImportacao                   :=1;
   edtArquivoAnimais.Text        :='';
   lblQtdRegArquivo.Text         :='0';
   layArquivo.Visible            := true;
   layDadosGeral.Enabled         := false;
   edtQtdAniGrupo.Text           :='';
   edtIdadeMedia.Text            :='';
   edtPesoMedGrupo.Text          :='';
   cbxRaca.ItemIndex             := -1;
   cbxCategoria.ItemIndex        := -1;
   cbxCurralPastoGrupo.ItemIndex := -1;
   edtValorCompraGrupo.Text      :='0';
   edtDataEntGroup.Text          :='';
   LayValueDadosPasto.Visible    := false;
   layCapDadosPasto.Visible      := false;
   edtLoteEntGrupo.Text          :='';
   edtProdutorOrigem.Text        :='';
   edtProdutorDestino.Text       :='';
   edtGTA.Text                   :='';
   edtProdutorOrigem.Enabled     := false;
   edtProdutorDestino.Enabled    := false;
   layTipoEntradas.Visible       := false;
   tbPrincipal.ActiveTab         := tbiCad;
   CarregaCombo;
   edtQtdAniGrupo.Enabled        := false;
   LayoutDados1.Visible          := false;
   layDados2.Visible             := false;
   layDados3.Visible             := false;
   layDados4.Visible             := false;
   layDadosGeral.Visible         := false;



//   lblIdadeMedia.Visible         := false;
//   lblPesoMed.Visible            := false;
//   edtIdadeMedia.Visible         := false;
//   edtPesoMedGrupo.Visible       := false;
end;

procedure TfrmEntradaGrupo.btnIndOutroErasClick(Sender: TObject);
begin
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  frmPrincipal.vMov :=5;
  layTipoEntradas.Visible := false;
  try
    frmOpercaoEntrada := TfrmOpercaoEntrada.Create(Self);
    frmOpercaoEntrada.ShowModal;
  finally
    frmOpercaoEntrada.Free;
     frmPrincipal.vMov :=0;
    serviceDB.AbrirEntradaAnimalGrid(dataFimF.Date,dataInicioF.Date,cbxPastoDestinoF.Selected.Text);
    SomarColunasGrid;
  end;
end;

procedure TfrmEntradaGrupo.btnRelClick(Sender: TObject);
begin
 ppReportEntradasAnimal.Print;
end;

procedure TfrmEntradaGrupo.CarregaCombo;
var
 i:integer;
begin
 serviceDB.TableRacas.Close;
 serviceDB.TableRacas.Open;
 cbxRaca.Items.Clear;
 cbxCategoria.Items.Clear;
 serviceDB.TableRacas.First;
 while not serviceDB.TableRacas.Eof do
 begin
  cbxRaca.Items.AddObject(serviceDB.TableRacasNOME.AsString,TObject(serviceDB.TableRacasID.AsInteger));
  serviceDB.TableRacas.Next;
 end;
 for i := 0 to cbxRaca.Count - 1 do
 begin
   cbxRaca.ListBox.ListItems[i].TextSettings.Font.Size := 20;
   cbxRaca.ListBox.ListItems[i].StyledSettings :=  cbxRaca.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
 end;

 serviceDB.TableCategorias.Close;
 serviceDB.TableCategorias.Open;
 cbxCategoria.Items.Clear;
 serviceDB.TableCategorias.First;
 while not serviceDB.TableCategorias.Eof do
 begin
  cbxCategoria.Items.AddObject(serviceDB.TableCategoriasNOME.AsString,TObject(serviceDB.TableCategoriasID.AsInteger));
  serviceDB.TableCategorias.Next;
 end;
 for i := 0 to cbxCategoria.Count - 1 do
 begin
   cbxCategoria.ListBox.ListItems[i].TextSettings.Font.Size := 20;
   cbxCategoria.ListBox.ListItems[i].StyledSettings :=  cbxCategoria.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
 end;
end;

procedure TfrmEntradaGrupo.CarregaComboPasto;
begin
 serviceDB.TableCurrais.Close;
 serviceDB.TableCurrais.Open;
 cbxPastoDestinoF.Items.Clear;
 cbxPastoDestinoF.Items.Add('Todos');
 while not serviceDB.TableCurrais.Eof do
 begin
   cbxPastoDestinoF.Items.Add(serviceDB.TableCurraisCODIGO.AsString);
   serviceDB.TableCurrais.Next;
 end;
 cbxPastoDestinoF.ItemIndex :=0;
end;

procedure TfrmEntradaGrupo.cbxCategoriaChange(Sender: TObject);
begin
   if cbxCategoria.ItemIndex>-1 then
    vIdCategoria := Integer(cbxCategoria.Items.Objects[cbxCategoria.ItemIndex]);
end;

procedure TfrmEntradaGrupo.DelayedSetFocus(control: TControl);
begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
         procedure
         begin
           control.SetFocus;
         end
      );
    end
  ).Start;
end;

procedure TfrmEntradaGrupo.cbxCategoriaExit(Sender: TObject);
begin
  DelayedSetFocus(edtGTA);
end;

procedure TfrmEntradaGrupo.cbxRacaChange(Sender: TObject);
begin
   if cbxRaca.ItemIndex>-1 then
    vIdRaca := Integer(cbxRaca.Items.Objects[cbxRaca.ItemIndex]);
end;

function TfrmEntradaGrupo.CountPos(const subtext: string;
  Text: string): Integer;
begin
 if (Length(subtext) = 0) or (Length(Text) = 0) or (Pos(subtext, Text) = 0)
  then
    Result := 0
  else
    Result := (Length(Text) - Length(StringReplace(Text, subtext, '',
      [rfReplaceAll]))) div Length(subtext);
end;

procedure TfrmEntradaGrupo.EditButton1Click(Sender: TObject);
begin
   edtProdutorOrigem.Text     := '';
   edtProdutorDestino.Text    := '';
   vProdutorDestino           := '';
   vProdutorOrigem            := '';
   frmContratoCompra := TfrmContratoCompra.Create(nil);
   try
    frmContratoCompra.ShowModal;
   finally
    edtContratoCompra.text        := ServiceConf.TContratoCompraNUMERO.AsString+' | '+ServiceConf.TContratoCompraPRODUTOR_ORIGEM.AsString;
    vIdContrato                   := ServiceConf.TContratoCompraID.AsString;
    vProdutorDestino              := ServiceConf.TContratoCompraID_PRODUTOR_DESTINO.AsString;
    vProdutorOrigem               := ServiceConf.TContratoCompraID_PRODUTOR_ORIGEM.AsString;
    edtProdutorOrigem.Text        := ServiceConf.TContratoCompraPRODUTOR_ORIGEM.AsString;
    edtProdutorDestino.Text       := ServiceConf.TContratoCompraPRODUTOR_DESTINO.AsString;
    vTipoValorContrato            := ServiceConf.TContratoCompraTIPO_VALOR.AsInteger;
    vValorContrato                := ServiceConf.TContratoCompraTIPO_VALOR.AsInteger;
    vPesoTotalContrato            := ServiceConf.TContratoCompraTOTALPESO.AsFloat;
    if rdValorContrato.IsChecked then
    begin
      if(vTipoValorContrato=1) then
      begin
        lblValoR.Text := 'Valor Cabeça';
        edtValorCompraGrupo.Text    := ServiceConf.TContratoCompraVALOR_TOTAL.AsString;
      end;
      if(vTipoValorContrato=0) then
      begin
        lblValoR.Text := 'Valor Por @';
        edtValorCompraGrupo.Text    := ServiceConf.TContratoCompraVALOR_TOTAL.AsString;
      end;
      if(vTipoValorContrato=2) then
      begin
        lblValoR.Text := 'Rateio por peso';
        edtValorCompraGrupo.Text    := ServiceConf.TContratoCompraVALOR_TOTAL.AsString;
      end;
    end;

    edtProdutorOrigem.Enabled   := false;
    edtProdutorDestino.Enabled  := false;
    edtValorCompraGrupo.Enabled := false;
    frmContratoCompra.Free;
  end;
end;

procedure TfrmEntradaGrupo.EditButton2Click(Sender: TObject);
var
 vResult :string;
begin
  if edtDataEntGroup.Text.Length=0 then
  begin
   MyShowMessage('Informe a Data de Entrada!',false);
   Exit;
  end;

  if cbxtipoCurral.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o tipo!',false);
    Exit;
  end;
  if cbxtipoCurral.ItemIndex=0 then
  begin
    serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'0');
    frmPrincipal.vMov :=5;
    frmCadCurral := TfrmCadCurral.Create(nil);
    try
      frmCadCurral.ShowModal;
    finally
     if serviceDB.TableCurraisID.AsString.Length>0 then
     begin
      vIdCurral                     := serviceDB.TableCurraisID.AsString;
      vTipoCurral                   := serviceDB.TableCurraisTIPO.AsString;
      vIdLote                       := ServiceConf.RetornaLoteLocal(vIdCurral);
      edtLoteEntGrupo.Text          := serviceDB.TableCurraisCODIGO.AsString;
      lblDtUltimaEntrada.Text       := serviceDB.RetornaUltimaEntradaPasto(vIdCurral);
      lblCapacidadeValor.Text       := serviceDB.TableCurraisCAPACIDADE.AsString;
      lblCustoFixoOop.Text          := serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString;
      lblLotacaoValor.Text          := serviceDB.TableCurraisLOTACAO.AsString;
      LayValueDadosPasto.Visible    := true;
      layCapDadosPasto.Visible      := true;
      frmCadCurral.Free;
     end
     else
      frmCadCurral.Free;
    end;
  end
  else
  begin
    serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'1');
    frmCadCurralConf := TfrmCadCurralConf.Create(nil);
    try
      frmCadCurralConf.ShowModal;
    finally
     if serviceDB.TableCurraisID.AsString.Length>0 then
     begin
      vIdCurral                     := serviceDB.TableCurraisID.AsString;
      if ServiceConf.VerificaLoteAtivo(vIdCurral) then
        begin
          MyShowMessage('Curral não posso lote nutricional, deseja criar o lote nessa data de entrada:'+edtDataEntGroup.Text,true);
          case frmPrincipal.vConfirma of
            1:
            begin
              RecTipoLote.Visible := true;
            end;
          end;
        end
        else
        begin
          edtLoteEntGrupo.Text          := serviceDB.TableCurraisCODIGO.AsString;
          lblDtUltimaEntrada.Text       := serviceDB.RetornaUltimaEntradaPasto(vIdCurral);
          lblCapacidadeValor.Text       := serviceDB.TableCurraisCAPACIDADE.AsString;
          lblCustoFixoOop.Text          := serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString;
          lblLotacaoValor.Text          := serviceDB.TableCurraisLOTACAO.AsString;
          LayValueDadosPasto.Visible    := true;
          layCapDadosPasto.Visible      := true;
          vIdLote                       := ServiceConf.RetornaLoteLocal(serviceDB.TableCurraisID.AsString);
          frmCadCurralConf.Release
        end;
     end
     else
      frmCadCurralConf.Release;
    end;
  end;
end;

procedure TfrmEntradaGrupo.EditButton4Click(Sender: TObject);
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

procedure TfrmEntradaGrupo.edtBuscaProdutorDestinoClick(Sender: TObject);
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
    vProdutorDestino              := serviceDB.TableProdutoresID.AsString;
    edtProdutorDestino.Text       := serviceDB.TableProdutoresNOME.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmEntradaGrupo.edtBuscaProdutorOrigemClick(Sender: TObject);
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
    vProdutorOrigem              := serviceDB.TableProdutoresID.AsString;
    edtProdutorOrigem.Text       := serviceDB.TableProdutoresNOME.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmEntradaGrupo.edtDataEntGroupExit(Sender: TObject);
begin
 DelayedSetFocus(edtProdutorOrigem);
end;

procedure TfrmEntradaGrupo.edtNovoPesoEntKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmEntradaGrupo.edtNovoValorKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmEntradaGrupo.edtQtdAniGrupoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmEntradaGrupo.edtRebanhoDestinoEnter(Sender: TObject);
begin
 EditButton4Click(Sender);
end;

procedure TfrmEntradaGrupo.edtValorCompraGrupoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmEntradaGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  serviceDBN.VerificaDestinoPlanNutricional;
  frmPrincipal.vMov :=0;
end;

procedure TfrmEntradaGrupo.FormCreate(Sender: TObject);
begin
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiLista;
 LayValueDadosPasto.Visible := false;
 layCapDadosPasto.Visible   := false;
 edtDataEntGroup.Date       := date;
 dataInicioF.Date           := date-7;
 layTipoEntradas.Visible    := false;
 CarregaComboPasto;
end;

procedure TfrmEntradaGrupo.FormShow(Sender: TObject);
begin
 RecTipoLote.Visible          := false;
 layResumoContrato.Visible    := false;
 layImportando.Visible        := false;
 TreeEntradaOutroEras.Visible := serviceDB.vRastreada='1';
 LayValueDadosPasto.Visible   := false;
 layCapDadosPasto.Visible     := false;
 edtDataEntGroup.Date         := date;
end;

procedure TfrmEntradaGrupo.Image13Click(Sender: TObject);
begin
 layTipoEntradas.Visible := false;
end;

procedure TfrmEntradaGrupo.Image161Click(Sender: TObject);
var
 dlg :TFrmmsgDlg;
begin
 layResumoContrato.Visible := false;
 dlg := TFrmmsgDlg.Create(nil);
 dlg.Position := TFormPosition.ScreenCenter;
 dlg.msg.Text := 'Animais Gerados com sucesso!!';
 dlg.btnCancel.Visible := false;
 dlg.ShowModal(
 procedure(ModalResult: TModalResult)
 begin
   serviceDB.AtualizaLotacao(vIdCurral);
   edtQtdAniGrupo.Text           :='';
   edtIdadeMedia.Text            :='';
   edtPesoMedGrupo.Text          :='';
   cbxRaca.ItemIndex             := -1;
   cbxCategoria.ItemIndex        := -1;
   cbxCurralPastoGrupo.ItemIndex := -1;
   edtValorCompraGrupo.Text      :='0';
   edtDataEntGroup.Text          :='';
   LayValueDadosPasto.Visible    := false;
   layCapDadosPasto.Visible      := false;
   edtLoteEntGrupo.Text          :='';
   serviceDB.AbrirEntradaAnimalGrid(dataInicioF.Date,dataFimF.Date,cbxPastoDestinoF.Selected.Text);
   tbPrincipal.ActiveTab         := tbiLista;
 end);
end;

procedure TfrmEntradaGrupo.imgCloseClick(Sender: TObject);
begin
 if tbPrincipal.TabIndex=1 then
 begin
  tbPrincipal.ActiveTab := tbiLista;
  edtQtdAniGrupo.Text           :='';
  edtIdadeMedia.Text            :='';
  edtPesoMedGrupo.Text          :='';
  cbxRaca.ItemIndex             := -1;
  cbxCategoria.ItemIndex        := -1;
  cbxCurralPastoGrupo.ItemIndex := -1;
  edtValorCompraGrupo.Text      :='0';
  edtDataEntGroup.Text          :='';
  LayValueDadosPasto.Visible    := false;
  layCapDadosPasto.Visible      := false;
  edtLoteEntGrupo.Text          :='';

 end
 else
 begin
  close;
  frmPrincipal.MudarAba(frmPrincipal.tbiMenu,sender);
 end;
end;



procedure TfrmEntradaGrupo.MyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TfrmEntradaGrupo.SomarColunasGrid;
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
  for I := 0 to StringGrid1.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid1.Cells[2,I],Val) then
    Sum := Sum + Val
   else
    Sum :=0;

   if TryStrToFloat(StringGrid1.Cells[4,I],Val1) then
    Sum1:= Sum1 + Val1
   else
    Sum1:=0;

  end;
  if Sum>0 then
   lblTotalAnimais.Text  := 'Qtde. Total de Cabeças: '+FloatToStr(Sum)
  else
   lblTotalAnimais.Text  := 'Qtde. Total de Cabeças:0';
  if Sum1>0 then
   lblMediaPeso.Text := 'Média de Peso de Entrada: '+FormatFloat('####,##.00',(Sum1/StringGrid1.RowCount))+'kg'
  else
   lblMediaPeso.Text := 'Média de Peso de Entrada: 0kg'
end;

procedure TfrmEntradaGrupo.TreeEntradaOutroErasClick(Sender: TObject);
begin
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  frmPrincipal.vMov :=5;
  layTipoEntradas.Visible := false;
  try
    frmOpercaoEntrada := TfrmOpercaoEntrada.Create(Self);
    frmOpercaoEntrada.ShowModal;
  finally
    frmOpercaoEntrada.Free;
     frmPrincipal.vMov :=0;
    serviceDB.AbrirEntradaAnimalGrid(dataFimF.Date,dataInicioF.Date,cbxPastoDestinoF.Selected.Text);
    SomarColunasGrid;
  end;
end;

procedure TfrmEntradaGrupo.TreeItemExcluirClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja realmente deletar essa entrada?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1 then
    begin
     try
       serviceDB.DeletaEntradaAnimais(
       FormatDateTime('yyyy-mm-dd',serviceDB.qryGridEntradaAnimaisDATA_ENTRADA.AsDateTime).QuotedString,
       serviceDB.vIdUserLogado,
       serviceDB.qryGridEntradaAnimaisID_PASTO.AsString);
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Entrada excluida com sucesso!!';
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

procedure TfrmEntradaGrupo.TreeItemNovoClick(Sender: TObject);
begin
  layTipoEntradas.Visible   := true;
  btnImportaArquivo.Visible := serviceDB.vRastreada='0'
end;

end.
