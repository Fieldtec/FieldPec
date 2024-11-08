unit UMorte;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.Effects, FMX.ListBox,System.DateUtils,
  FMX.DateTimeCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.Components, Data.Bind.DBScope, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Grid, ppParameter, ppDesignLayer, ppCtrls, ppVar,
  ppBands, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe, FMX.Memo, FMX.Memo.Types,System.Win.ComObj,UServiceNew,FMX.Surfaces;

type
  TfrmMorte = class(TfrmCadPadrao)
    LayoutGridDet: TLayout;
    GridDet: TStringGrid;
    Layout1: TLayout;
    Label3: TLabel;
    Layout3: TLayout;
    Layout4Morte: TLayout;
    Edit1: TEdit;
    laydados: TLayout;
    Layout11Morte: TLayout;
    Rectangle3Morte: TRectangle;
    Layout12Morte: TLayout;
    Layout13Morte: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    edtIdadeMeses: TEdit;
    edtRaca: TEdit;
    edtCategoria: TEdit;
    edtDias: TEdit;
    Á: TShadowEffect;
    layDadosAnimal: TLayout;
    Rectangle12Morte: TRectangle;
    Layout25Morte: TLayout;
    Layout45Morte: TLayout;
    Label27: TLabel;
    Label29: TLabel;
    Label33: TLabel;
    edtUltimoProc: TEdit;
    edtUltimoPeso: TEdit;
    edtLocalAtual: TEdit;
    LayDadosMorte: TLayout;
    Layout7Morte: TLayout;
    Layout8Morte: TLayout;
    Label7: TLabel;
    lblDatMorte: TLabel;
    edtCausaMorte: TEdit;
    EditButton1: TEditButton;
    edtDataMorte: TDateEdit;
    Rectangle1Morte: TRectangle;
    Layout5: TLayout;
    Rectangle2Morte: TRectangle;
    Layout6Morte: TLayout;
    Layout9Morte: TLayout;
    Label4Morte: TLabel;
    Label5Morte: TLabel;
    edtChip: TEdit;
    edtIdentificacao: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    TreeViewItemPrint: TTreeViewItem;
    TreeViewItem3: TTreeViewItem;
    Image10: TImage;
    Label14: TLabel;
    cbxTipoMorte: TComboBox;
    Image3: TImage;
    cbxFiltroProdutor: TComboBox;
    Label23: TLabel;
    btnFiltar: TSpeedButton;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label4: TLabel;
    edtFDataEntDE: TDateEdit;
    Label5: TLabel;
    chkPeriodoProc: TCheckBox;
    Label8: TLabel;
    tbiListaAnimal: TTabItem;
    LayoutLista: TLayout;
    Layout15: TLayout;
    Layout46: TLayout;
    Rectangle13: TRectangle;
    Label24: TLabel;
    Layout47: TLayout;
    Layout17: TLayout;
    layAni: TLayout;
    Layout35: TLayout;
    Layout36: TLayout;
    GroupBox2: TGroupBox;
    lblRaca: TLabel;
    cbxFRaca: TComboBox;
    Label20: TLabel;
    cbxFCategoria: TComboBox;
    btnFiltraAnimal: TSpeedButton;
    Image23: TImage;
    memoExcel: TMemo;
    Label13: TLabel;
    cbxLocalAtual: TComboBox;
    GroupBox4: TGroupBox;
    Layout59: TLayout;
    Layout60: TLayout;
    Label50: TLabel;
    edtArquivoAnimais: TEdit;
    btnBuscaArquivo: TEditButton;
    Layout38: TLayout;
    gridAnimais: TStringGrid;
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
    btnConfirmaAnimais: TRectangle;
    Layout42: TLayout;
    Image6: TImage;
    Label38: TLabel;
    bntCancelarAni: TRectangle;
    Layout48: TLayout;
    Image7: TImage;
    Label40: TLabel;
    Layout44: TLayout;
    Layout45: TLayout;
    Rectangle7: TRectangle;
    Label15: TLabel;
    gridAnimaisSelecionados: TStringGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    SISBOV: TStringColumn;
    StringColumn4: TStringColumn;
    Layout37: TLayout;
    Layout40: TLayout;
    Layout41: TLayout;
    Layout64: TLayout;
    laybtns: TLayout;
    SpeedButton1: TSpeedButton;
    Image17: TImage;
    SpeedButton2: TSpeedButton;
    Image18: TImage;
    edtQtdAnimaisSaida: TEdit;
    edtBuscaAnimal: TEditButton;
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
    qryGridAnimalID_PASTO: TIntegerField;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    BindSourceDB5: TBindSourceDB;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    BindSourceDB6: TBindSourceDB;
    LinkFillControlToFieldID2: TLinkFillControlToField;
    SpeedButton4: TSpeedButton;
    Image4: TImage;
    Label9: TLabel;
    cbxCausaMorteF: TComboBox;
    edtChipF: TEdit;
    Label16: TLabel;
    TreeExcel: TTreeViewItem;
    TreeViewItem2: TTreeViewItem;
    Image8: TImage;
    Image9: TImage;
    SaveDialog1: TSaveDialog;
    TreeLaudo: TTreeViewItem;
    TreeViewItem4: TTreeViewItem;
    Image11: TImage;
    Image13: TImage;
    SaveDialog2: TSaveDialog;
    tbiLaudo: TTabItem;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    TreeView1: TTreeView;
    TreeNovoLaudo: TTreeViewItem;
    Image14: TImage;
    TreeEditarLaudo: TTreeViewItem;
    Image15: TImage;
    TreeExcluirLaudo: TTreeViewItem;
    Image16: TImage;
    TreeViewItem7: TTreeViewItem;
    TreeViewItem8: TTreeViewItem;
    Image19: TImage;
    Image20: TImage;
    Layout6: TLayout;
    Rectangle3: TRectangle;
    GroupBox5: TGroupBox;
    edtNCFLaudoF: TEdit;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    GroupBox6: TGroupBox;
    edtPerLaudoATE: TDateEdit;
    Label19: TLabel;
    edtPerLaudoDE: TDateEdit;
    Label21: TLabel;
    edtChipLaudoF: TEdit;
    Label25: TLabel;
    StringGrid2: TStringGrid;
    Layout7: TLayout;
    StringGrid3: TStringGrid;
    Layout8: TLayout;
    Label26: TLabel;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    layPopUpCad: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Label18: TLabel;
    Image21: TImage;
    Layout12: TLayout;
    btnConfirmar: TRectangle;
    Label22: TLabel;
    btnVoltar: TLabel;
    Layout13: TLayout;
    Layout14: TLayout;
    Label28: TLabel;
    edtAnimal: TEdit;
    ClearEditButton1: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    Label30: TLabel;
    lblDataMorte: TLabel;
    Label31: TLabel;
    lblCausaMorte: TLabel;
    Layout16: TLayout;
    Layout18: TLayout;
    Label32: TLabel;
    edtVeterinario: TEdit;
    ClearEditButton2: TClearEditButton;
    SearchEditButton2: TSearchEditButton;
    Layout19: TLayout;
    Layout20: TLayout;
    Label34: TLabel;
    edtOperacaoAtual: TEdit;
    ClearEditButton3: TClearEditButton;
    SearchEditButton3: TSearchEditButton;
    Layout21: TLayout;
    Layout22: TLayout;
    Layout23: TLayout;
    Layout24: TLayout;
    Label41: TLabel;
    edtHistAnteMortem: TMemo;
    Layout25: TLayout;
    btnAbreImgInicial: TRectangle;
    Layout26: TLayout;
    Rectangle23: TRectangle;
    ImgFoto1: TImage;
    Layout27: TLayout;
    Label45: TLabel;
    btnEditarFotoBomba: TButton;
    btnDeletaFotoBomba: TButton;
    btnImgStop: TRectangle;
    Layout28: TLayout;
    Layout29: TLayout;
    Label46: TLabel;
    btnEditarFotoHorimetro: TButton;
    Button2: TButton;
    Rectangle24: TRectangle;
    ImgFoto2: TImage;
    ShadowEffect1: TShadowEffect;
    Rectangle17: TRectangle;
    Layout30: TLayout;
    Layout31: TLayout;
    Label47: TLabel;
    btnEditarFotoHodometro: TButton;
    Button3: TButton;
    Rectangle18: TRectangle;
    ImgFoto3: TImage;
    Rectangle4: TRectangle;
    Layout32: TLayout;
    Layout33: TLayout;
    Label42: TLabel;
    Button1: TButton;
    Button4: TButton;
    RecImgFoto4: TRectangle;
    ImgFoto4: TImage;
    OpenImg: TOpenDialog;
    Rectangle5: TRectangle;
    Label43: TLabel;
    Layout49: TLayout;
    Image22: TImage;
    SaveLaudo: TOpenDialog;
    HorzScrollBox1: THorzScrollBox;
    Rectangle6: TRectangle;
    Layout50: TLayout;
    Layout51: TLayout;
    Label44: TLabel;
    Button5: TButton;
    Button6: TButton;
    RecImgFoto5: TRectangle;
    ImgFoto5: TImage;
    Rectangle8: TRectangle;
    Layout52: TLayout;
    Layout53: TLayout;
    Label48: TLabel;
    Button7: TButton;
    Button8: TButton;
    RecImgFoto6: TRectangle;
    ImgFoto6: TImage;
    Label49: TLabel;
    Label51: TLabel;
    edtGerenteOP: TEdit;
    ClearEditButton5: TClearEditButton;
    SearchEditButton5: TSearchEditButton;
    edtResponsavelRastreabilidaed: TEdit;
    ClearEditButton6: TClearEditButton;
    SearchEditButton6: TSearchEditButton;
    Label52: TLabel;
    edtCapatazEPP: TEdit;
    ClearEditButton7: TClearEditButton;
    SearchEditButton7: TSearchEditButton;
    Label53: TLabel;
    cbxAssVeterinario: TComboBox;
    Label54: TLabel;
    cbxAssCapataz: TComboBox;
    Label35: TLabel;
    edtCapataz: TEdit;
    ClearEditButton4: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
    Label55: TLabel;
    cbxASSCapatazGerel: TComboBox;
    Label56: TLabel;
    Label57: TLabel;
    cbxAssGerenteOP: TComboBox;
    cbxAssResponsavelRast: TComboBox;
    btnAssinarVeterinario: TButton;
    btnAssinarCapataz: TButton;
    btnAssinarCapatazGeral: TButton;
    btnAssinarGerente: TButton;
    btnAssinarResponsavel: TButton;
    layValidaSenha: TLayout;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Layout234: TLayout;
    Layout235: TLayout;
    Layout236: TLayout;
    Label103: TLabel;
    Image161: TImage;
    Layout237: TLayout;
    Rectangle48: TRectangle;
    Label104: TLabel;
    Label58: TLabel;
    Layout238: TLayout;
    Layout240: TLayout;
    Rectangle49: TRectangle;
    edtSenha: TEdit;
    procedure FormShow(Sender: TObject);
    procedure edtChipKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtIdentificacaoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EditButton1Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeViewItemPrintClick(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
    procedure edtBuscaAnimalClick(Sender: TObject);
    procedure btnFiltraAnimalClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbxLocalAtualChange(Sender: TObject);
    procedure cbxFCategoriaChange(Sender: TObject);
    procedure cbxFRacaChange(Sender: TObject);
    procedure btnConfirmaAnimaisClick(Sender: TObject);
    procedure bntCancelarAniClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure TreeExcelClick(Sender: TObject);
    procedure TreeLaudoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure GridDetCellDblClick(const Column: TColumn; const Row: Integer);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure SearchEditButton4Click(Sender: TObject);
    procedure btnEditarFotoBombaClick(Sender: TObject);
    procedure btnEditarFotoHorimetroClick(Sender: TObject);
    procedure btnEditarFotoHodometroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnDeletaFotoBombaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure TreeNovoLaudoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure TreeEditarLaudoClick(Sender: TObject);
    procedure TreeViewItem7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure TreeExcluirLaudoClick(Sender: TObject);
    procedure SearchEditButton5Click(Sender: TObject);
    procedure SearchEditButton6Click(Sender: TObject);
    procedure SearchEditButton7Click(Sender: TObject);
    procedure Image161Click(Sender: TObject);
    procedure Label58Click(Sender: TObject);
    procedure Rectangle48Click(Sender: TObject);
    procedure btnAssinarVeterinarioClick(Sender: TObject);
    procedure btnAssinarCapatazClick(Sender: TObject);
    procedure btnAssinarCapatazGeralClick(Sender: TObject);
    procedure btnAssinarGerenteClick(Sender: TObject);
    procedure btnAssinarResponsavelClick(Sender: TObject);
  private
    procedure LimpaCampos;
    procedure CarregaComboLocalAtaulF;
    procedure CarregaCausaMorteF;
  public
    vIdAnimal,vIdCausaMorte,vIdProdutor,vIdLocal,
    vIdCatFiltro,vIdRacaFiltro,
    vImg1,vImg2,vImg3,vImg4,vImg5,vImg6 :string;
    vOp,ICount,vLaudo,vLiberaAss:integer;
    procedure BuscaDadosAnimal(Tipo, Numero, PropID: String);
    function  PesquisaIDGrid(id: string): integer;
    procedure DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
    procedure SomarColunasGridForn;
    procedure ExpTXT(DataSet: TDataSet; Arq: string);
    function PreencherDadosArquivo(const NomeArquivo,vPath: string): Boolean;
    function Base64FromBitmap(vBitmap: TBitmap): string;
    function BitmapFromBase64(const base64: string): TBitmap;
    procedure BMPtoJPG(InputBitmap: TBitmap; outputjpgfilename: string);
    function CopySemCortarPalavra(Texto: String; Tamanho: Integer): String;
  end;

var
  frmMorte: TfrmMorte;

implementation

{$R *.fmx}
uses UServiceDB, UPrincipal, UAuxMorte, UMsgDlg, ServiceRel, UMedicoVeterinario,
  UCadOperacao, UCapataz,Soap.EncdDecd, UResponsavelRastreabilidade,
  UGerenteOperacional;

function TfrmMorte.CopySemCortarPalavra(Texto: String; Tamanho: Integer): String;
begin
   if (length(Texto) > Tamanho) then
   begin
      while ((Copy(Texto, Tamanho, 1) <> ' ') and (Tamanho < length(Texto))) do
      begin
         Inc(Tamanho);
      end;
   end;
   Result := Copy(Texto, 0, Tamanho);
end;

function TfrmMorte.BitmapFromBase64(const base64: string): TBitmap;
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

procedure TfrmMorte.BMPtoJPG(InputBitmap: TBitmap; outputjpgfilename: string);
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

function TfrmMorte.Base64FromBitmap(vBitmap: TBitmap): string;
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


procedure TfrmMorte.EditButton1Click(Sender: TObject);
begin
  serviceDB.qryAuxMorte.Close;
  serviceDB.qryAuxMorte.Open;
  frmCadAuxMorte := TfrmCadAuxMorte.Create(nil);
  try
    frmCadAuxMorte.ShowModal;
  finally
    edtCausaMorte.text         := serviceDB.qryAuxMorteNOME.AsString;
    vIdCausaMorte              := serviceDB.qryAuxMorteID.AsString;
    frmCadAuxMorte.Free;
  end;
end;

procedure TfrmMorte.edtBuscaAnimalClick(Sender: TObject);
var
 i:integer;
 dlg :TFrmmsgDlg;
begin
 edtIdentificacao.Text :='';
 edtChip.Text          :='';
 ICount :=0;
 serviceDB.TableRacas.Close;
 serviceDB.TableRacas.Open;
 serviceDB.TableCategorias.Close;
 serviceDB.TableCategorias.Open;
 CarregaComboLocalAtaulF;
 gridAnimaisSelecionados.RowCount :=0;
 SomarColunasGridForn;
 TbPrincipal.ActiveTab := tbiListaAnimal;
end;

procedure TfrmMorte.CarregaCausaMorteF;
begin
 cbxCausaMorteF.Items.Clear;
 cbxCausaMorteF.Items.Add('Todas');
 serviceDB.qryAuxMorte.Close;
 serviceDB.qryAuxMorte.Open;
 serviceDB.qryAuxMorte.First;
 while not serviceDB.qryAuxMorte.eof do
 begin
   cbxCausaMorteF.Items.Add(serviceDB.qryAuxMorteNOME.AsString);
   serviceDB.qryAuxMorte.Next;
 end;
 cbxCausaMorteF.ItemIndex :=0;
end;

procedure TfrmMorte.CarregaComboLocalAtaulF;
begin
 serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'');
 cbxLocalAtual.Items.Clear;
 serviceDB.TableCurrais.first;
 cbxLocalAtual.Items.Add('Todos');
 while not serviceDB.TableCurrais.eof do
 begin
   cbxLocalAtual.Items.AddObject(serviceDB.TableCurraisCODIGO.AsString,TObject(serviceDB.TableCurraisID.AsInteger));
   serviceDB.TableCurrais.Next;
 end;
 cbxLocalAtual.ItemIndex :=0;
end;

procedure TfrmMorte.edtChipKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key =13 then
 begin
   if edtChip.Text.Length>0 then
   begin
     edtQtdAnimaisSaida.Text :='0';
     BuscaDadosAnimal('1', edtChip.Text, frmPrincipal.vIDPropriedadePropria);
   end;
 end;
end;

procedure TfrmMorte.edtIdentificacaoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key =13 then
 begin
   if edtIdentificacao.Text.Length>0 then
   begin
     edtQtdAnimaisSaida.Text :='0';
     BuscaDadosAnimal('2', edtIdentificacao.Text, frmPrincipal.vIDPropriedadePropria);
   end;
 end;
end;

procedure TfrmMorte.FormShow(Sender: TObject);
begin
 layPopUpCad.Visible     := false;
 vLaudo :=0;
 CarregaCausaMorteF;
 serviceDB.AbreProdutorProprio;
 cbxFiltroProdutor.Items.Clear;
 cbxFiltroProdutor.Items.Add('Todos');
 while not serviceDB.qryProdutorProprio.Eof do
 begin
   cbxFiltroProdutor.Items.Add(serviceDB.qryProdutorProprioNOME.AsString);
   serviceDB.qryProdutorProprio.Next;
 end;
 cbxFiltroProdutor.ItemIndex :=0;
 btnFiltarClick(Sender);
end;
procedure TfrmMorte.GridDetCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 if vLaudo=1 then
 begin
   if serviceDB.TableAnimaisMorteIDENTIFICACAO_1.AsString.Length>0 then
     edtAnimal.Text :=serviceDB.TableAnimaisMorteIDENTIFICACAO_1.AsString
   else
     edtAnimal.Text :=serviceDB.TableAnimaisMorteIDENTIFICACAO_2.AsString;

   edtAnimal.TagString:= serviceDB.TableAnimaisMorteID.AsString;

   if not serviceDB.VerificaLaudoAnimal('M', edtAnimal.TagString) then
   begin
     edtAnimal.Text :='';
     MyShowMessage('Animal ja possiu laudo!',false);
     Exit;
   end;

   lblCausaMorte.Text := serviceDB.TableAnimaisMorteMOTIVO.AsString;
   lblDataMorte.Text  := serviceDB.TableAnimaisMorteDATA_SAIDA.AsString;
   tbPrincipal.ActiveTab := tbiLaudo;
   layPopUpCad.Visible := true;
 end;
end;

procedure TfrmMorte.Image161Click(Sender: TObject);
begin
 layValidaSenha.Visible := false;
end;

procedure TfrmMorte.Image21Click(Sender: TObject);
begin
 layPopUpCad.Visible := false;
end;

procedure TfrmMorte.Image22Click(Sender: TObject);
begin
 MudarAba(tbiMnu,sender);
end;

procedure TfrmMorte.Label58Click(Sender: TObject);
begin
 layValidaSenha.Visible := false;
end;

procedure TfrmMorte.LimpaCampos;
begin
 edtChip.Text             := '';
 edtIdentificacao.Text    := '';
 edtLocalAtual.Text       := '';
 edtRaca.text             := '';
 edtCategoria.Text        := '';
 edtIdadeMeses.Text       := '';
 edtUltimoProc.Text       := '';
 edtUltimoPeso.Text       := '';
end;

procedure TfrmMorte.SpeedButton1Click(Sender: TObject);
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
    lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
    gridAnimais.SelectRow(gridAnimais.Row+1);
  end;
end;

procedure TfrmMorte.SpeedButton2Click(Sender: TObject);
begin
 if gridAnimaisSelecionados.Row>-1 then
  DeleteRow(gridAnimaisSelecionados.Row, gridAnimaisSelecionados);
 lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmMorte.SpeedButton3Click(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro:=' and l.tipo=1';
 if edtChipLaudoF.Text.Length>0 then
  vFiltro := vFiltro+' AND A.IDENTIFICACAO_1='+edtChipLaudoF.Text;
 if edtNCFLaudoF.Text.Length>0 then
   vFiltro := vFiltro+' AND A.IDENTIFICACAO_2='+edtNCFLaudoF.Text;
 vFiltro := vFiltro+' AND A.DATA_SAIDA BETWEEN '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtPerLaudoDE.Date))+' and '+
  QuotedStr(FormatDateTime('mm/dd/yyyy',edtPerLaudoATE.Date));
 ServiceNew.AbreLaudo(vFiltro);
end;

procedure TfrmMorte.SpeedButton4Click(Sender: TObject);
begin
 edtQtdAnimaisSaida.Text := lblTotalSelecionado.Text;
 MudarAba(tbiCad,Sender);
end;

function TfrmMorte.PesquisaIDGrid(id: string): integer;
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

function TfrmMorte.PreencherDadosArquivo(const NomeArquivo,vPath: string): Boolean;
var
  WordApp: Variant;
  Documento: Olevariant;
  vIdentificacao,vFaixaEra,vCopy :string;
begin
  WordApp:= CreateOleObject('Word.Application');
  try
    if ServiceNew.LAUDO_REPORTIDENTIFICACAO_1.AsString.Length>0 then
     vIdentificacao := ServiceNew.LAUDO_REPORTIDENTIFICACAO_1.AsString
    else
     vIdentificacao := ServiceNew.LAUDO_REPORTIDENTIFICACAO_2.AsString;

    WordApp.Visible := False;
    Documento := WordApp.Documents.Open(NomeArquivo);
    Documento.Content.Find.Execute(FindText := '[NProcesso]', ReplaceWith := ServiceNew.LAUDO_REPORTID.AsString);
    Documento.Content.Find.Execute(FindText := '[NIdentificacao]', ReplaceWith :=vIdentificacao);
    Documento.Content.Find.Execute(FindText := '[TLocal]', ReplaceWith :=ServiceNew.LAUDO_REPORTPRODUTORDESTINO.AsString);

    Documento.Content.Find.Execute(FindText := '[TNomePecuarista]', ReplaceWith := ServiceNew.LAUDO_REPORTPRODUTOR.AsString);

    Documento.Content.Find.Execute(FindText := '[TNomeVeterinario]', ReplaceWith := ServiceNew.LAUDO_REPORTVETERINARIO.AsString);
    Documento.Content.Find.Execute(FindText := '[TCRM]', ReplaceWith := ServiceNew.LAUDO_REPORTCRM.AsString);
    Documento.Content.Find.Execute(FindText := '[TNomeCapataz]', ReplaceWith := ServiceNew.LAUDO_REPORTCAPATAZ.AsString);
    Documento.Content.Find.Execute(FindText := '[TRacaCategoria]', ReplaceWith := ServiceNew.LAUDO_REPORTRACA.AsString+'/'+
     ServiceNew.LAUDO_REPORTCATEGORIA.AsString);

    if ServiceNew.LAUDO_REPORTIDADE_MORTE.AsInteger<=12 then
     vFaixaEra :='0 a 12';

    if (ServiceNew.LAUDO_REPORTIDADE_MORTE.AsInteger>12) and
     (ServiceNew.LAUDO_REPORTIDADE_MORTE.AsInteger<=24)then
     vFaixaEra :='13 a 24';

    if (ServiceNew.LAUDO_REPORTIDADE_MORTE.AsInteger>24) and
     (ServiceNew.LAUDO_REPORTIDADE_MORTE.AsInteger<=36)then
     vFaixaEra :='25 a 36';

    if (ServiceNew.LAUDO_REPORTIDADE_MORTE.AsInteger>36)then
     vFaixaEra :='Mais de 36';

    Documento.Content.Find.Execute(FindText := '[TFaixaEra]', ReplaceWith := vFaixaEra);
    Documento.Content.Find.Execute(FindText := '[TDataUnidade]', ReplaceWith := ServiceNew.LAUDO_REPORTDATA_ENTRADA.AsString);
    Documento.Content.Find.Execute(FindText := '[TOperacaoVigente]', ReplaceWith := ServiceNew.LAUDO_REPORTOPERACAO.AsString);
    Documento.Content.Find.Execute(FindText := '[TCausaMorte]', ReplaceWith := ServiceNew.LAUDO_REPORTMOTIVO.AsString);

    if ServiceNew.LAUDO_REPORTHIST_ANTE_MORTEM.AsString.Length>255 then
    begin
      vCopy := CopySemCortarPalavra(ServiceNew.LAUDO_REPORTHIST_ANTE_MORTEM.AsString,200);
      Documento.Content.Find.Execute(FindText := '[THistoricoAnteMortem]', ReplaceWith := vCopy);
      Documento.Content.Find.Execute(FindText := '[THistoricoAnteMortem2]', ReplaceWith :=
        Copy(ServiceNew.LAUDO_REPORTHIST_ANTE_MORTEM.AsString,
              vCopy.Length,ServiceNew.LAUDO_REPORTHIST_ANTE_MORTEM.AsString.Length)
      );
    end
    else
    begin
     Documento.Content.Find.Execute(FindText := '[THistoricoAnteMortem]', ReplaceWith := ServiceNew.LAUDO_REPORTHIST_ANTE_MORTEM.AsString);
     Documento.Content.Find.Execute(FindText := '[THistoricoAnteMortem2]', ReplaceWith := '');
    end;




//    if ServiceNew.imgLAUDO_REPORTIMG2.AsString.Length>100 then
//     ImgFoto2.Bitmap := BitmapFromBase64(ServiceNew.imgLAUDO_REPORTIMG2.AsString);
//
//    if ServiceNew.imgLAUDO_REPORTIMG3.AsString.Length>100 then
//     ImgFoto3.Bitmap := BitmapFromBase64(ServiceNew.imgLAUDO_REPORTIMG3.AsString);
//
//    if ServiceNew.imgLAUDO_REPORTIMG4.AsString.Length>100 then
//     ImgFoto4.Bitmap := BitmapFromBase64(ServiceNew.imgLAUDO_REPORTIMG4.AsString);
//
//
//    Documento.ActiveDocument.InlineShapes.LoadLangFromStrings();

    Documento.SaveAs(vPath+'LAUDO_REPORT_'+ServiceNew.LAUDO_REPORTID.AsString+'.docx')
  finally
    WordApp.Quit;
  end;
end;

procedure TfrmMorte.Rectangle48Click(Sender: TObject);
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
   MyShowMessage('Senha Invalida!',false);
 end;
end;

procedure TfrmMorte.DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
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

procedure TfrmMorte.btnFiltarClick(Sender: TObject);
var
 vFiltro:string;
begin
 if edtChipF.Text.Length>0 then
  vFiltro := vFiltro+' AND A.IDENTIFICACAO_1='+edtChipF.Text.QuotedString;
 if edtFiltroName.Text.Length>0 then
   vFiltro := vFiltro+' AND A.IDENTIFICACAO_2='+edtFiltroName.Text.QuotedString;
 if cbxFiltroProdutor.ItemIndex>0 then
   vFiltro := vFiltro+' AND P.NOME='+cbxFiltroProdutor.Selected.Text.QuotedString;
 if chkPeriodoProc.IsChecked then
   vFiltro := vFiltro+' AND A.DATA_SAIDA BETWEEN '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date));
 if cbxCausaMorteF.ItemIndex>0 then
   vFiltro := vFiltro+' AND ax.NOME='+cbxCausaMorteF.Selected.Text.QuotedString;
 serviceDB.AbreAnimaisMorte(serviceDB.vIdPropriedade,vFiltro);
end;

procedure TfrmMorte.TreeEditarLaudoClick(Sender: TObject);
begin
 if ServiceNew.ConectaBancoImagens then
 begin
    if ServiceNew.LAUDOIDENTIFICACAO_1.AsString.Length>0 then
    edtAnimal.Text := ServiceNew.LAUDOIDENTIFICACAO_1.AsString
   else
   edtAnimal.Text      := ServiceNew.LAUDOIDENTIFICACAO_2.AsString;
   edtAnimal.TagString := ServiceNew.LAUDOID_MORTE.AsString;
   edtVeterinario.Text := ServiceNew.LAUDOVETERINARIO.AsString;
   edtVeterinario.TagString   := ServiceNew.LAUDOID_VETERINARIO.AsString;
   edtCapataz.Text            := ServiceNew.LAUDOCAPATAZ.AsString;
   edtCapataz.TagString       := ServiceNew.LAUDOID_CAPATAZ.AsString;
   edtOperacaoAtual.Text      := ServiceNew.LAUDOOPERACAO.AsString;
   edtOperacaoAtual.TagString := ServiceNew.LAUDOID_OPERACAO_VIGENTE.AsString;
   lblDataMorte.Text          := ServiceNew.LAUDODATA_MORTE.AsString;
   lblCausaMorte.Text         := ServiceNew.LAUDOMOTIVO.AsString;
   edtResponsavelRastreabilidaed.Text      := ServiceNew.LAUDORESPONSAVEL_RASTREABILIDADE.AsString;
   edtResponsavelRastreabilidaed.TagString := ServiceNew.LAUDOID_RESPONSAVEL_RAST.AsString;
   edtGerenteOP.Text                       := ServiceNew.LAUDOGERENTE_OPERACIONAL.AsString;
   edtGerenteOP.TagString                  := ServiceNew.LAUDOID_GERENTE_OP.AsString;

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

   cbxAssVeterinario.ItemIndex       := ServiceNew.LAUDOCHECK_ASS_VETERINARIO.AsInteger;
   cbxAssCapataz.ItemIndex           := ServiceNew.LAUDOCHECK_CAPATAZ_EPE.AsInteger;
   cbxASSCapatazGerel.ItemIndex      := ServiceNew.LAUDOCHECK_ASS_CAPATAZ.AsInteger;
   cbxAssGerenteOP.ItemIndex         := ServiceNew.LAUDOCHECK_GERENTE_OP.AsInteger;
   cbxAssResponsavelRast.ItemIndex   := ServiceNew.LAUDOCHECK_RESPONSAVEL_RAST.AsInteger;


   edtCapatazEPP.Text                      := ServiceNew.LAUDOCAPATAZ_EPE.AsString;
   edtCapatazEPP.TagString                 := ServiceNew.LAUDOID_CAPATAZ_EPE.AsString;

   edtHistAnteMortem.Text   := ServiceNew.LAUDOHIST_ANTE_MORTEM.AsString;
   ServiceNew.VerificaExisteImagemLaudo(ServiceNew.LAUDOID.AsString);

   if ServiceNew.imgLaudoIMG.AsString.Length>100 then
   begin
    ImgFoto1.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoIMG.AsString);
    vImg1           := ServiceNew.imgLaudoIMG.AsString
   end;

   if ServiceNew.imgLaudoIMG2.AsString.Length>100 then
   begin
    ImgFoto2.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoIMG2.AsString);
    vImg2           := ServiceNew.imgLaudoIMG2.AsString
   end;

   if ServiceNew.imgLaudoIMG3.AsString.Length>100 then
   begin
    ImgFoto3.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoIMG3.AsString);
    vImg3           := ServiceNew.imgLaudoIMG3.AsString
   end;

   if ServiceNew.imgLaudoIMG4.AsString.Length>100 then
   begin
    ImgFoto4.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoIMG4.AsString);
    vImg4           := ServiceNew.imgLaudoIMG4.AsString
   end;

   if ServiceNew.imgLaudoIMG5.AsString.Length>100 then
   begin
    ImgFoto5.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoIMG5.AsString);
    vImg5           := ServiceNew.imgLaudoIMG5.AsString
   end;

   if ServiceNew.imgLaudoIMG6.AsString.Length>100 then
   begin
    ImgFoto6.Bitmap := BitmapFromBase64(ServiceNew.imgLaudoIMG6.AsString);
    vImg6           := ServiceNew.imgLaudoIMG6.AsString
   end;

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

   vLaudo :=0;
   ServiceNew.LAUDO.Edit;
   layPopUpCad.Visible := true;
 end;
end;

procedure TfrmMorte.TreeExcelClick(Sender: TObject);
var
 vDataDe,vDataAte,vFiltro:string;
begin
 if edtFiltroName.Text.Length>0 then
  vFiltro := vFiltro+' AND CHIP='+edtChipF.Text;

 if edtFiltroName.Text.Length>0 then
   vFiltro := vFiltro+' AND SISBOV='+edtFiltroName.Text;

 if cbxFiltroProdutor.ItemIndex>0 then
   vFiltro := vFiltro+' AND PRODUTOR='+cbxFiltroProdutor.Selected.Text.QuotedString;

 if cbxCausaMorteF.ItemIndex>0 then
   vFiltro := vFiltro+' AND MOTIVO='+cbxCausaMorteF.Selected.Text.QuotedString;

 vDataDe  := QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date));
 vDataAte := QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date));
 SerRel.AbreRelMorte(vDataDe,vDataAte,vFiltro);
 if not SerRel.qryRelMorte.IsEmpty then
 begin
  if SaveDialog1.Execute then
   ExpTXT(SerRel.qryRelMorte,SaveDialog1.FileName);
  MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
 end
 else
  MyShowMessage('Sem dados para gerar o relatório!',false);
end;

procedure TfrmMorte.TreeExcluirLaudoClick(Sender: TObject);
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
       ServiceNew.LAUDO.Edit;
       ServiceNew.LAUDOSTATUS.AsInteger := -1;
       ServiceNew.LAUDO.ApplyUpdates(-1);

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
          MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
     end;
    end;
  end);
  Exit;
 end;
end;

procedure TfrmMorte.ExpTXT(DataSet: TDataSet; Arq: string);
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
      st := st + DataSet.Fields[i].DisplayLabel + ';';
    sl.Add(st);
    DataSet.First;
    while not DataSet.Eof do
    begin
      st := '';
      for i := 0 to DataSet.Fields.Count - 1 do
        st := st + DataSet.Fields[i].DisplayText + ';';
      sl.Add(st);
      DataSet.Next;
    end;
    sl.SaveToFile(Arq);
  finally
     sl.free;
  end;
end;

procedure TfrmMorte.TreeItemEditarClick(Sender: TObject);
begin
  vIdProdutor                  :=serviceDB.TableComunicadoMorteID_PRODUTOR.AsString;
  vOp                          :=2;
end;

procedure TfrmMorte.TreeItemExcluirClick(Sender: TObject);
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
       serviceDB.DeletaMorteAnimais(serviceDB.TableAnimaisMorteID.AsString);
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
          MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
     end;
    end;
  end);
  Exit;
 end;
end;

procedure TfrmMorte.TreeItemNovoClick(Sender: TObject);
begin
 vLaudo :=1;
 LimpaCampos;
 MudarAba(tbiCad,Sender);
end;

procedure TfrmMorte.TreeLaudoClick(Sender: TObject);
begin
 ServiceNew.AbreLaudo(' and l.tipo=1');
 MudarAba(tbiLaudo,sender);
end;

procedure TfrmMorte.TreeNovoLaudoClick(Sender: TObject);
begin
 if ServiceNew.ConectaBancoImagens then
 begin
   vLaudo :=1;
   edtAnimal.Text          :='';
   edtVeterinario.Text     :='';
   edtOperacaoAtual.Text   :='';
   edtHistAnteMortem.Text  :='';
   edtGerenteOP.Text       :='';
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
   ServiceNew.LAUDO.Insert;
   layPopUpCad.Visible     := true;
 end;

end;

procedure TfrmMorte.TreeViewItem2Click(Sender: TObject);
var
 vDiasProc :integer;
begin
 vIdAnimal                := serviceDB.DetComunicadoMorteID.AsString;
 edtLocalAtual.Text       := serviceDB.DetComunicadoMorteULTIMO_LOCAL.AsString;
 edtRaca.text             := serviceDB.DetComunicadoMorteRACA.AsString;
 edtCategoria.Text        := serviceDB.DetComunicadoMorteCATEGORIA.AsString;
 edtIdadeMeses.Text       := IntToStr(MonthsBetween(date,serviceDB.DetComunicadoMorteDATA_NASCIMENTO.AsDateTime));
 edtUltimoProc.Text       := serviceDB.DetComunicadoMorteDATA_ULTIMO_PESO.AsString;
 edtUltimoPeso.Text       := serviceDB.DetComunicadoMorteULTIMO_PESO.AsString;
 vDiasProc                := DaysBetween(now,serviceDB.DetComunicadoMorteDATA_PROC.AsDateTime);
 edtDias.Text             := intToStr(vDiasProc);
 edtIdentificacao.Text    := serviceDB.DetComunicadoMorteIDENTIFICACAO_2.AsString;
 edtChip.Text             := serviceDB.DetComunicadoMorteIDENTIFICACAO_1.AsString;
 edtCausaMorte.Text       := serviceDB.DetComunicadoMorteMOTIVO.AsString;
 vIdCausaMorte            := serviceDB.DetComunicadoMorteID_MOTIVO_MORTE.AsString;
 vIdProdutor              := serviceDB.DetComunicadoMorteID_PRODUTOR.AsString;
 edtChip.Enabled          := false;
 edtIdentificacao.Enabled := false;
 cbxTipoMorte.ItemIndex   := serviceDB.DetComunicadoMorteTIPO_MORTE.AsInteger;
 MudarAba(tbiCad,sender);
end;

procedure TfrmMorte.TreeViewItem7Click(Sender: TObject);
var
 vPath,vFaixaEra:string;
begin
 if ServiceNew.ConectaBancoImagens then
 begin

   if ServiceNew.LAUDOIDADE_MORTE.AsInteger<=12 then
    vFaixaEra :='0 a 12';

   if (ServiceNew.LAUDOIDADE_MORTE.AsInteger>12) and
    (ServiceNew.LAUDOIDADE_MORTE.AsInteger<=24)then
    vFaixaEra :='13 a 24';

   if (ServiceNew.LAUDOIDADE_MORTE.AsInteger>24) and
    (ServiceNew.LAUDOIDADE_MORTE.AsInteger<=36)then
    vFaixaEra :='25 a 36';

   if (ServiceNew.LAUDOIDADE_MORTE.AsInteger>36)then
    vFaixaEra :='Mais de 36';

   SaveLaudo.FileName  := 'Laudo';
   if SaveLaudo.Execute then
   begin
     vPath := ExtractFilePath(SaveLaudo.FileName);

     serviceDB.AbreConfigFazenda(serviceDB.vIdPropriedade);
     ServiceNew.VerificaExisteImagemLaudo(ServiceNew.LAUDOID.AsString);

     ServiceNew.LAUDO_REPORT.Close;
     ServiceNew.LAUDO_REPORT.ParamByName('ID').AsInteger := ServiceNew.LAUDOID.AsInteger;
     ServiceNew.LAUDO_REPORT.Open;

     ServiceNew.pplblEraLaudo.Caption       := vFaixaEra;
     ServiceNew.ppRepLaudo2.ShowPrintDialog := false;
     ServiceNew.ppRepLaudo2.DeviceType      := 'PDF';
     ServiceNew.ppRepLaudo2.TextFileName    := vPath+'Laudo_Assinaturas'+ServiceNew.LAUDO_REPORTID.AsString+'.PDF';
     ServiceNew.ppRepLaudo2.Print;

     ServiceNew.ppRepTamplateMorte.ShowPrintDialog := false;
     ServiceNew.ppRepTamplateMorte.DeviceType      := 'PDF';
     ServiceNew.ppRepTamplateMorte.TextFileName    := vPath+'Laudo_Morte_'+ServiceNew.LAUDO_REPORTID.AsString+'.PDF';
     ServiceNew.ppRepTamplateMorte.Print;



     ServiceNew.ppRepLaudoFotos.ShowPrintDialog := false;
     ServiceNew.ppRepLaudoFotos.DeviceType      := 'PDF';
     ServiceNew.ppRepLaudoFotos.TextFileName    := vPath+'Laudo_'+ServiceNew.LAUDO_REPORTID.AsString+'_Fotos.PDF';
     ServiceNew.ppRepLaudoFotos.Print;


     ServiceNew.TableAnimalSanidade.Close;
     ServiceNew.TableAnimalSanidade.ParamByName('id').AsInteger := ServiceNew.LAUDO_REPORTID_MORTE.AsInteger;
     ServiceNew.TableAnimalSanidade.Open;

     if not ServiceNew.TableAnimalSanidade.isempty  then
     begin
      ServiceNew.ppReportSanidadeAnalitico.ShowPrintDialog := false;
      ServiceNew.ppReportSanidadeAnalitico.DeviceType      := 'PDF';
      ServiceNew.ppReportSanidadeAnalitico.TextFileName    := vPath+'Historico_Sanitario_Laudo_'+ServiceNew.LAUDO_REPORTID.AsString+'_Fotos.PDF';
      ServiceNew.ppReportSanidadeAnalitico.Print;
     end;


  //   if not FileExists(frmPrincipal.PathTamplateLaudoMorte) then
  //   begin
  //     MyShowMessage('Tamplate não localizado!',false);
  //     Exit;
  //   end
  //   else
  //   begin
  //     PreencherDadosArquivo(frmPrincipal.PathTamplateLaudoMorte,vPath);
  //   end;

     MyShowMessage('Arquivos salvos no seguinte diretorios : '+#13+vPath,false);

   end;
 end;
end;

procedure TfrmMorte.TreeViewItemPrintClick(Sender: TObject);
var
 vDataDe,vDataAte,vFiltro:string;
begin
 if edtFiltroName.Text.Length>0 then
  vFiltro := vFiltro+' AND CHIP='+edtChipF.Text;

 if edtFiltroName.Text.Length>0 then
   vFiltro := vFiltro+' AND SISBOV='+edtFiltroName.Text;

 if cbxFiltroProdutor.ItemIndex>0 then
   vFiltro := vFiltro+' AND PRODUTOR='+cbxFiltroProdutor.Selected.Text.QuotedString;

 if cbxCausaMorteF.ItemIndex>0 then
   vFiltro := vFiltro+' AND MOTIVO='+cbxCausaMorteF.Selected.Text.QuotedString;

 vDataDe  := QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date));
 vDataAte := QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date));
 SerRel.AbreRelMorte(vDataDe,vDataAte,vFiltro);
 if not SerRel.qryRelMorte.IsEmpty then
   SerRel.ppReportRelMorte.PrintReport
 else
  MyShowMessage('Sem dados para gerar o relatório!',false);
end;

procedure TfrmMorte.bntCancelarAniClick(Sender: TObject);
begin
 edtQtdAnimaisSaida.Text := '0';
 MudarAba(tbiCad,Sender);
 LimpaCampos;
end;

procedure TfrmMorte.btnAssinarCapatazClick(Sender: TObject);
begin
 vLiberaAss :=2;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmMorte.btnAssinarCapatazGeralClick(Sender: TObject);
begin
 vLiberaAss :=3;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmMorte.btnAssinarGerenteClick(Sender: TObject);
begin
 vLiberaAss :=4;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmMorte.btnAssinarResponsavelClick(Sender: TObject);
begin
 vLiberaAss :=5;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmMorte.btnAssinarVeterinarioClick(Sender: TObject);
begin
 vLiberaAss :=1;
 edtSenha.Text :='';
 layValidaSenha.Visible := true;
end;

procedure TfrmMorte.btnCancelarClick(Sender: TObject);
begin
 LimpaCampos;
 MudarAba(tbiMnu,Sender);
end;

procedure TfrmMorte.btnConfirmaAnimaisClick(Sender: TObject);
begin
 edtQtdAnimaisSaida.Text := lblTotalSelecionado.Text;
 MudarAba(tbiCad,Sender);
end;

procedure TfrmMorte.btnConfirmaClick(Sender: TObject);
var
 X:integer;
begin
 if edtCausaMorte.Text.Length=0 then
 begin
   myShowMessage('Informe a Causa da Morte',false);
   Exit;
 end;
 if edtDataMorte.Text.Length=0 then
 begin
   myShowMessage('Informe a data da Morte',false);
   Exit
 end;
 if cbxTipoMorte.ItemIndex=-1 then
 begin
   myShowMessage('Informe o tipo de morte!',false);
   Exit;
 end;
 try
   if edtQtdAnimaisSaida.Text='0' then
   begin
    serviceDB.MorteAnimal(vIdAnimal, VIdCausaMorte, edtDataMorte.Text,
    IntToStr(cbxTipoMorte.ItemIndex));
   end
   else
   begin
     gridAnimaisSelecionados.SelectRow(0);
     for X := 0 to gridAnimaisSelecionados.RowCount-1 do
     begin
        try
          serviceDB.MorteAnimal(
           gridAnimaisSelecionados.Cells[0,X],
           VIdCausaMorte, edtDataMorte.Text,
           IntToStr(cbxTipoMorte.ItemIndex));
       except
         on E : Exception do
          MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
       end;
     end;
   end;
   myShowMessage('Morte realizada com sucesso!',false);
   CarregaCausaMorteF;
   serviceDB.AbreAnimaisMorte(serviceDB.vIdPropriedade,'');
   MudarAba(tbiMnu,sender);
 except
   on E : Exception do
    myShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
 end;
end;

procedure TfrmMorte.btnConfirmarClick(Sender: TObject);
var
 vInsert,vIdMax :integer;
begin
  if serviceNew.LAUDO.State=dsInsert then
   vInsert :=1
  else
   vInsert :=0;

  if edtAnimal.Text.Length=0 then
  begin
   MyShowMessage('Informe o animal',false);
   Exit;
  end;
  if edtVeterinario.Text.Length=0 then
  begin
   MyShowMessage('Informe o Veterinario',false);
   Exit;
  end;
  if edtOperacaoAtual.Text.Length=0 then
  begin
   MyShowMessage('Informe a Operação',false);
   Exit;
  end;

  if edtGerenteOP.Text.Length=0 then
  begin
   MyShowMessage('Informe o Gerente Operacional',false);
   Exit;
  end;

  if edtResponsavelRastreabilidaed.Text.Length=0 then
  begin
   MyShowMessage('Informe o Responsavel pela Rastreabilidade',false);
   Exit;
  end;

  if edtCapataz.Text.Length=0 then
  begin
   MyShowMessage('Informe o Capataz Geral',false);
   Exit;
  end;

  if edtCapatazEPP.Text.Length=0 then
  begin
   MyShowMessage('Informe o Capataz EPE',false);
   Exit;
  end;

  ServiceNew.LAUDOID_MORTE.AsString                := edtAnimal.TagString;
  ServiceNew.LAUDOID_VETERINARIO.AsString          := edtVeterinario.TagString;
  ServiceNew.LAUDOID_CAPATAZ.AsString              := edtCapataz.TagString;
  ServiceNew.LAUDOID_OPERACAO_VIGENTE.AsString     := edtOperacaoAtual.TagString;
  ServiceNew.LAUDOID_USUARIO.AsString              := serviceDB.vIdUserLogado;
  ServiceNew.LAUDOHIST_ANTE_MORTEM.AsString        := edtHistAnteMortem.Text;
  ServiceNew.LAUDOID_GERENTE_OP.AsString           := edtGerenteOP.TagString;
  ServiceNew.LAUDOID_RESPONSAVEL_RAST.AsString     := edtResponsavelRastreabilidaed.TagString;
  ServiceNew.LAUDOID_CAPATAZ_EPE.AsString          := edtCapatazEPP.TagString;

  ServiceNew.LAUDOCHECK_ASS_CAPATAZ.AsInteger      := cbxASSCapatazGerel.ItemIndex;
  ServiceNew.LAUDOCHECK_ASS_VETERINARIO.AsInteger  := cbxAssVeterinario.ItemIndex;
  ServiceNew.LAUDOCHECK_GERENTE_OP.AsInteger       := cbxAssGerenteOP.ItemIndex;
  ServiceNew.LAUDOCHECK_CAPATAZ_EPE.AsInteger      := cbxAssCapataz.ItemIndex;
  ServiceNew.LAUDOCHECK_RESPONSAVEL_RAST.AsInteger := cbxAssResponsavelRast.ItemIndex;


  ServiceNew.LAUDOTIPO.AsInteger               := 1;
  try
    ServiceNew.LAUDO.ApplyUpdates(-1);


    if vInsert=1  then
     vIdMax :=  serviceDB.RetornaMaxID('LAUDO').ToInteger
    else
     vIdMax := ServiceNew.LAUDOID.AsInteger;



    if ServiceNew.VerificaExisteImagemLaudo(vIdMax.ToString) then
       ServiceNew.imgLaudo.Insert
    else
       ServiceNew.imgLaudo.Edit;

    ServiceNew.imgLaudoID_LAUDO.AsInteger  := vIdMax;
    ServiceNew.imgLaudoID_USUARIO.AsString := serviceDB.vIdUserLogado;
    ServiceNew.imgLaudoIMG.AsString        := vImg1;
    ServiceNew.imgLaudoIMG2.AsString       := vImg2;
    ServiceNew.imgLaudoIMG3.AsString       := vImg3;
    ServiceNew.imgLaudoIMG4.AsString       := vImg4;
    ServiceNew.imgLaudoIMG5.AsString       := vImg5;
    ServiceNew.imgLaudoIMG6.AsString       := vImg6;
    ServiceNew.imgLaudo.ApplyUpdates(-1);
    ServiceNew.AbreLaudo(' and l.tipo=1 ');
    layPopUpCad.Visible := false;
  except
    on E : Exception do
          MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
  end;
end;

procedure TfrmMorte.btnDeletaFotoBombaClick(Sender: TObject);
begin
 ImgFoto1.bitmap := nil;
 vImg1 :='';
end;

procedure TfrmMorte.btnEditarFotoBombaClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto1.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg1 := Base64FromBitmap(ImgFoto1.Bitmap);
 end;
end;

procedure TfrmMorte.btnEditarFotoHodometroClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto3.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg3 := Base64FromBitmap(ImgFoto3.Bitmap);
 end;
end;

procedure TfrmMorte.btnEditarFotoHorimetroClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto2.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg2 := Base64FromBitmap(ImgFoto2.Bitmap);
 end;
end;

procedure TfrmMorte.btnFiltraAnimalClick(Sender: TObject);
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
   Add('r.nome raca,');
   Add('c.nome categoria,');
   Add('an.data_proc data_ent,');
   Add('an.peso_entrada peso_Ent,');
   Add('coalesce(an.data_ultimo_peso,cast(an.data_proc as date))dt_ultimo_peso,');
   Add('coalesce(an.ultimo_peso,an.peso_entrada) ultimo_peso,');
   Add('g.serie||g.uf||g.numero gta,');
   Add('(select * from  RETORNA_PESO_MEDIO_ATUAL_IND(current_date,an.id)) PESO_PROJ,');
   Add('datediff(month,an.data_nascimento,current_timestamp) IDADE_ATUAL');
   Add('from animal AN');
   Add('join raca R ON AN.id_raca=R.id');
   Add('join categorias c on an.id_categoria=c.id');
   Add('join currais cu on an.id_local=cu.id');
   Add('left join gta g on g.id=an.gta_id');
   Add('where AN.STATUS=1');
   Add('and an.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   if cbxLocalAtual.ItemIndex>0 then
     Add('AND AN.ID_LOCAL='+vIdLocal);
   if cbxFRaca.ItemIndex>-1 then
    Add('AND AN.ID_RACA='+vIdRacaFiltro);
   if cbxFCategoria.ItemIndex>-1 then
    Add('AND AN.ID_CATEGORIA='+vIdCatFiltro);
   Add(')x)y');

   Open;
 end;
 SomarColunasGridForn;
end;

procedure TfrmMorte.btnVoltarClick(Sender: TObject);
begin
 layPopUpCad.Visible := false;
end;

procedure TfrmMorte.btnVoltarPadraoClick(Sender: TObject);
begin
 edtQtdAnimaisSaida.Text := lblTotalSelecionado.Text;
 MudarAba(tbiMnu,Sender);
end;

procedure TfrmMorte.SearchEditButton1Click(Sender: TObject);
begin
  MyShowMessage('Selecione a Morte',false);
  layPopUpCad.Visible := false;
  MudarAba(tbiMnu,sender);
end;

procedure TfrmMorte.SearchEditButton2Click(Sender: TObject);
begin
  frmCadVeterinario := TfrmCadVeterinario.Create(nil);
  try
    frmCadVeterinario.ShowModal;
  finally
    edtVeterinario.Text      := ServiceNew.MEDICO_VETERINARIONOME.AsString;
    edtVeterinario.TagString := ServiceNew.MEDICO_VETERINARIOID.AsString;
  end;
end;

procedure TfrmMorte.SearchEditButton3Click(Sender: TObject);
begin
  frmCadOperacao := TfrmCadOperacao.Create(nil);
  try
    frmCadOperacao.ShowModal;
  finally
    edtOperacaoAtual.Text      := ServiceNew.OPERACAONOME.AsString;
    edtOperacaoAtual.TagString := ServiceNew.OPERACAOID.AsString;
  end;
end;

procedure TfrmMorte.SearchEditButton4Click(Sender: TObject);
begin
  frmCadCapataz := TfrmCadCapataz.Create(nil);
  try
    frmCadCapataz.ShowModal;
  finally
    edtCapataz.Text      := ServiceNew.CAPATAZNOME.AsString;
    edtCapataz.TagString := ServiceNew.CAPATAZID.AsString;
  end;
end;

procedure TfrmMorte.SearchEditButton5Click(Sender: TObject);
begin
  frmCadGerenteOperacional := TfrmCadGerenteOperacional.Create(nil);
  try
    frmCadGerenteOperacional.ShowModal;
  finally
    edtGerenteOP.Text      := ServiceNew.GERENTE_OPERACIONALNOME.AsString;
    edtGerenteOP.TagString := ServiceNew.GERENTE_OPERACIONALID.AsString;
  end;
end;

procedure TfrmMorte.SearchEditButton6Click(Sender: TObject);
begin
  frmCadRespRastreabilidade := TfrmCadRespRastreabilidade.Create(nil);
  try
    frmCadRespRastreabilidade.ShowModal;
  finally
    edtResponsavelRastreabilidaed.Text      := ServiceNew.RESPONSAVEL_RASTREABILIDADENOME.AsString;
    edtResponsavelRastreabilidaed.TagString := ServiceNew.RESPONSAVEL_RASTREABILIDADEID.AsString;
  end;
end;

procedure TfrmMorte.SearchEditButton7Click(Sender: TObject);
begin
  frmCadCapataz := TfrmCadCapataz.Create(nil);
  try
    frmCadCapataz.ShowModal;
  finally
    edtCapatazEPP.Text      := ServiceNew.CAPATAZNOME.AsString;
    edtCapatazEPP.TagString := ServiceNew.CAPATAZID.AsString;
  end;
end;

procedure TfrmMorte.SomarColunasGridForn;
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

procedure TfrmMorte.BuscaDadosAnimal(Tipo, Numero, PropID: String);
var
 vDiasProc :integer;
begin
     if not serviceDB.AbreQryAnimaisExixtentesMorte(Tipo,Numero,PropID) then
     begin
       vIdAnimal                := serviceDB.qryAnimalExistenteID.AsString;
       edtLocalAtual.Text       := serviceDB.qryAnimalExistenteCURRAL_PASTO.AsString;
       edtRaca.text             := serviceDB.qryAnimalExistenteRACA_NOME.AsString;
       edtCategoria.Text        := serviceDB.qryAnimalExistenteCATEGORIA_NOME.AsString;
       edtIdadeMeses.Text       := IntToStr(MonthsBetween(date,serviceDB.qryAnimalExistenteDATA_NASCIMENTO.AsDateTime));
       edtUltimoProc.Text       := serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsString;
       edtUltimoPeso.Text       := serviceDB.qryAnimalExistenteULTIMO_PESO.AsString;
       edtLocalAtual.Text       := serviceDB.qryAnimalExistenteCURRAL_PASTO.AsString;
       vDiasProc                := DaysBetween(now,serviceDB.qryAnimalExistenteDATAREG.AsDateTime);
       edtDias.Text             := intToStr(vDiasProc);
       if Tipo='1' then
        edtIdentificacao.Text   := serviceDB.qryAnimalExistenteIDENTIFICACAO_2.AsString;
       if Tipo='2' then
        edtChip.Text            := serviceDB.qryAnimalExistenteIDENTIFICACAO_1.AsString;
       laydados.Visible         := true;
       LayDadosMorte.Visible    := true;
       edtCausaMorte.SetFocus;
     end
     else
     begin
       vIdAnimal                := '';
       edtLocalAtual.Text       := '';
       edtRaca.text             := '';
       edtCategoria.Text        := '';
       edtIdadeMeses.Text       := '';
       edtUltimoProc.Text       := '';
       edtUltimoPeso.Text       := '';
       edtLocalAtual.Text       := '';
       edtDias.Text             := '';
       edtIdentificacao.Text    := '';
       edtChip.Text             := '';
       myShowMessage('Animal Nao Encontrado',false);
     end;
end;


procedure TfrmMorte.Button1Click(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto4.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg4 := Base64FromBitmap(ImgFoto4.Bitmap);
 end;
end;

procedure TfrmMorte.Button2Click(Sender: TObject);
begin
 ImgFoto2.bitmap := nil;
 vImg2 :='';
end;

procedure TfrmMorte.Button3Click(Sender: TObject);
begin
 ImgFoto3.bitmap := nil;
 vImg3 :='';
end;

procedure TfrmMorte.Button4Click(Sender: TObject);
begin
 ImgFoto4.bitmap := nil;
 vImg4 :='';
end;

procedure TfrmMorte.Button5Click(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto5.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg5 := Base64FromBitmap(ImgFoto5.Bitmap);
 end;
end;

procedure TfrmMorte.Button6Click(Sender: TObject);
begin
   ImgFoto5.bitmap := nil;
   vImg5 :='';
end;

procedure TfrmMorte.Button7Click(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto6.Bitmap.LoadFromFile(OpenImg.FileName);
   vImg6 := Base64FromBitmap(ImgFoto6.Bitmap);
 end;
end;

procedure TfrmMorte.Button8Click(Sender: TObject);
begin
 ImgFoto6.bitmap := nil;
 vImg6 :='';
end;

procedure TfrmMorte.cbxFCategoriaChange(Sender: TObject);
begin
if cbxFCategoria.ItemIndex>-1 then
  vIdCatFiltro   := LinkFillControlToFieldID2.BindList.GetSelectedValue.AsString
 else
  vIdCatFiltro   :='0';
end;

procedure TfrmMorte.cbxFRacaChange(Sender: TObject);
begin
 if cbxFRaca.ItemIndex>-1 then
  vIdRacaFiltro   := LinkFillControlToFieldNOME.BindList.GetSelectedValue.AsString
 else
  vIdRacaFiltro   :='0';
end;

procedure TfrmMorte.cbxLocalAtualChange(Sender: TObject);
begin
  if cbxLocalAtual.ItemIndex>0 then
   vIdLocal := IntToStr(Integer(cbxLocalAtual.Items.Objects[cbxLocalAtual.ItemIndex]));
end;

procedure TfrmMorte.chkPeriodoProcChange(Sender: TObject);
begin
  edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
  edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

end.
