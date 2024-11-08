unit UTTA;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.DateTimeCtrls,DB, FMX.Memo, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ppParameter, ppDesignLayer,
  ppCtrls, ppVar, ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, FMX.Memo.Types;

type
  TfrmTTA = class(TfrmCadPadrao)
    Layout1: TLayout;
    Label3: TLabel;
    GridAnimaisTTA: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layNovoComunicado: TLayout;
    Rectangle4TTA: TRectangle;
    Layout14Morte: TLayout;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Rectangle5: TRectangle;
    edtObs: TEdit;
    Label13: TLabel;
    Rectangle2: TRectangle;
    Layout16Morte: TLayout;
    Layout17Morte: TLayout;
    Label8: TLabel;
    edtDataTTA: TDateEdit;
    Layout15Morte: TLayout;
    Label9: TLabel;
    Rectangle3: TRectangle;
    cbxProdutorOrigem: TComboBox;
    Label4: TLabel;
    Layout4: TLayout;
    SpeedButton1: TSpeedButton;
    Image7: TImage;
    SpeedButton2: TSpeedButton;
    Image8: TImage;
    cbxProdutorDestino: TComboBox;
    Layout3: TLayout;
    Layout5: TLayout;
    LBLALGUMA: TLabel;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    LinkFillControlToFieldID: TLinkFillControlToField;
    edtTTANum: TEdit;
    Label6: TLabel;
    edtSerieTTA: TEdit;
    Label7: TLabel;
    cbxUF: TComboBox;
    Label10: TLabel;
    edtTotalAnimais: TEdit;
    Layout6: TLayout;
    Rectangle6: TRectangle;
    TreeView1: TTreeView;
    TreeViewItem1: TTreeViewItem;
    Image3: TImage;
    TreeViewItem2: TTreeViewItem;
    Image4: TImage;
    TreeViewItem3: TTreeViewItem;
    Image6: TImage;
    LayoutLista: TLayout;
    Layout17: TLayout;
    layAni: TLayout;
    Layout35: TLayout;
    Layout36: TLayout;
    GroupBox2: TGroupBox;
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
    Label11: TLabel;
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
    Image10: TImage;
    Label38: TLabel;
    bntCancelarAni: TRectangle;
    Layout48: TLayout;
    Image11: TImage;
    Label40: TLabel;
    Layout44: TLayout;
    Layout45: TLayout;
    Rectangle7: TRectangle;
    Label23: TLabel;
    gridAnimaisSelecionados: TStringGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    StringColumn4: TStringColumn;
    Layout37: TLayout;
    Layout40: TLayout;
    Layout41: TLayout;
    SpeedButton3: TSpeedButton;
    SpeedButtonVoltaTudo: TSpeedButton;
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
    SpeedButtonMandaTudo: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label12: TLabel;
    Layout7: TLayout;
    Label15: TLabel;
    lblTotalAniTTA: TLabel;
    TreeViewItem4: TTreeViewItem;
    Image9: TImage;
    cbxStatus: TComboBox;
    Label16: TLabel;
    btnBuscar: TSpeedButton;
    Image13: TImage;
    ppDBComTTA: TppDBPipeline;
    ppReportTTA: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape14: TppShape;
    ppShape11: TppShape;
    ppShape5: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel17: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText34: TppDBText;
    ppShape12: TppShape;
    ppLabel4: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppLabel16: TppLabel;
    ppLabel40: TppLabel;
    ppDBText31: TppDBText;
    ppDBText15: TppDBText;
    ppDBText41: TppDBText;
    ppLabel41: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape7: TppShape;
    ppDBText14: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    ppLabel18: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppShape6: TppShape;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel2: TppLabel;
    TreeViewItem5: TTreeViewItem;
    Image14: TImage;
    ppLabel21: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbxProdutorOrigemChange(Sender: TObject);
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure btnFiltraAnimalClick(Sender: TObject);
    procedure cbxFCategoriaChange(Sender: TObject);
    procedure cbxLocalAtualChange(Sender: TObject);
    procedure cbxFRacaChange(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure SpeedButtonMandaTudoClick(Sender: TObject);
    procedure SpeedButtonVoltaTudoClick(Sender: TObject);
    procedure btnConfirmaAnimaisClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure TreeViewItem4Click(Sender: TObject);
    procedure cbxUFExit(Sender: TObject);
    procedure cbxProdutorOrigemExit(Sender: TObject);
    procedure cbxProdutorDestinoExit(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure TreeViewItem5Click(Sender: TObject);
  private
    procedure LimpaCampos;
    procedure SomarColunasGridForn;
    procedure CarregaComboLocalAtaulF;
    function  PesquisaIDGrid(id: string): integer;
    procedure DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
  public
    vIdProdOrigem,
    vIdProdDestino,vIdCategoria,vIdRaca:string;
    vIdLocal,vFiltro :string;
  end;

var
  frmTTA: TfrmTTA;

implementation

{$R *.fmx}

uses UServiceDB;

function TfrmTTA.PesquisaIDGrid(id: string): integer;
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

procedure TfrmTTA.CarregaComboLocalAtaulF;
begin
 serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'');
 cbxLocalAtual.Items.Clear;
 serviceDB.TableCurrais.Close;
 serviceDB.TableCurrais.Open;
 serviceDB.TableCurrais.first;
 cbxLocalAtual.Items.Add('Todos');
 while not serviceDB.TableCurrais.eof do
 begin
   cbxLocalAtual.Items.AddObject(serviceDB.TableCurraisCODIGO.AsString,TObject(serviceDB.TableCurraisID.AsInteger));
   serviceDB.TableCurrais.Next;
 end;
 cbxLocalAtual.ItemIndex :=0;

 serviceDB.TableCategorias.Close;
 serviceDB.TableCategorias.Open;
 serviceDB.TableCategorias.First;
 cbxFCategoria.Items.Clear;
 serviceDB.TableCategorias.Close;
 serviceDB.TableCategorias.Open;
 cbxFCategoria.Items.Add('Todos');
 while not serviceDB.TableCategorias.eof do
 begin
   cbxFCategoria.Items.AddObject(serviceDB.TableCategoriasNOME.AsString,TObject(serviceDB.TableCategoriasID.AsInteger));
   serviceDB.TableCategorias.Next;
 end;
 cbxFCategoria.ItemIndex :=0;

 cbxFRaca.Items.Clear;
 serviceDB.TableRacas.Close;
 serviceDB.TableRacas.Open;
 serviceDB.TableRacas.First;
 cbxFRaca.Items.Add('Todos');
 while not serviceDB.TableRacas.eof do
 begin
   cbxFRaca.Items.AddObject(serviceDB.TableRacasNome.AsString,TObject(serviceDB.TableRacasID.AsInteger));
   serviceDB.TableRacas.Next;
 end;
 cbxFRaca.ItemIndex :=0;
end;

procedure TfrmTTA.SomarColunasGridForn;
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

procedure TfrmTTA.btnBuscarClick(Sender: TObject);
begin
 vFiltro :='';
 if edtFiltroName.Text.Length>0 then
    vFiltro :=' AND TT.TTA_NUM='+edtFiltroName.Text;
 if cbxStatus.ItemIndex>0 then
    vFiltro := vFiltro+' AND TT.STATUS='+IntToStr(cbxStatus.ItemIndex);
 serviceDB.AbreTTA(vFiltro);
end;

procedure TfrmTTA.btnConfirmaAnimaisClick(Sender: TObject);
var
 I:integer;
 vQryAux:TFDQuery;
 VidAnimal,vIdTTA,vIdUsuario:string;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection:=serviceDB.FCon;
 if gridAnimaisSelecionados.RowCount=0 then
 begin
   myShowMessage('Selecione os animais!',false);
   Exit;
 end;
 for I := 0 to gridAnimaisSelecionados.RowCount-1  do
 begin
    Vidanimal  := gridAnimaisSelecionados.Cells[0,I];
    vIdTTA     := serviceDB.TableTTAID.AsString;
    vIdUsuario := serviceDB.vIdUserLogado;
    with vQryAux,vQryAux.SQL do
    begin
      Clear;
      Add('INSERT INTO TTA_ANIMAIS(ID_TTA,ID_ANIMAL,ID_USUARIO)VALUES');
      Add('(:ID_TTA,:ID_ANIMAL,:ID_USUARIO)');
      ParamByName('ID_TTA').AsString          :=vIdTTA;
      ParamByName('ID_ANIMAL').AsString       :=Vidanimal;
      ParamByName('ID_USUARIO').AsString      :=vIdUsuario;
      vQryAux.ExecSQL;
    end;
 end;
 serviceDB.AbreTTA('');
 myShowMessage('Animais Transferidos com Sucesso!',false);
 MudarAba(tbiMnu,sender);
end;

procedure TfrmTTA.btnFiltraAnimalClick(Sender: TObject);
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
   Add('and an.ID_PRODUTOR='+ serviceDB.TableTTAID_PRODUTOR_ORIGEM.AsString);
   if cbxLocalAtual.ItemIndex>0 then
     Add('AND AN.ID_LOCAL='+vIdLocal);
   if cbxFRaca.ItemIndex>0 then
    Add('AND AN.ID_RACA='+vIdRaca);
   if cbxFCategoria.ItemIndex>0 then
    Add('AND AN.ID_CATEGORIA='+vIdCategoria);
   if edtIdent1.Text.Length>0 then
    Add('AND AN.identificacao_1='+edtIdent1.Text.QuotedString);
   if edtIdent2.Text.Length>0 then
    Add('AND AN.identificacao_2='+edtIdent2.Text.QuotedString);
   Add(')x)y');
   if cbxFaixaIdade.ItemIndex>0 then
    Add('WHERE FAIXA='+cbxFaixaIdade.Selected.Text.QuotedString);
   Open;
 end;
 SomarColunasGridForn;
end;

procedure TfrmTTA.cbxFCategoriaChange(Sender: TObject);
begin
  if cbxFCategoria.ItemIndex>0 then
   vIdCategoria := IntToStr(Integer(cbxFCategoria.Items.Objects[cbxFCategoria.ItemIndex]));
end;

procedure TfrmTTA.cbxFRacaChange(Sender: TObject);
begin
   if cbxFRaca.ItemIndex>0 then
    vIdRaca := IntToStr(Integer(cbxFRaca.Items.Objects[cbxFRaca.ItemIndex]));
end;

procedure TfrmTTA.cbxLocalAtualChange(Sender: TObject);
begin
   if cbxLocalAtual.ItemIndex>0 then
    vIdLocal := IntToStr(Integer(cbxLocalAtual.Items.Objects[cbxLocalAtual.ItemIndex]));
end;

procedure TfrmTTA.cbxProdutorDestinoChange(Sender: TObject);
begin
 if cbxProdutorDestino.ItemIndex>-1 then
  vIdProdDestino := LinkFillControlToFieldID.BindList.GetSelectedValue.AsString;
end;

procedure TfrmTTA.cbxProdutorDestinoExit(Sender: TObject);
begin
   TThread.CreateAnonymousThread(
   procedure
   begin
    TThread.Synchronize(nil,procedure
    begin
      edtObs.SetFocus;
    end);
   end).Start;
end;

procedure TfrmTTA.cbxProdutorOrigemChange(Sender: TObject);
begin
 if cbxProdutorOrigem.ItemIndex>-1 then
  vIdProdOrigem := LinkFillControlToFieldNOME.BindList.GetSelectedValue.AsString;
end;

procedure TfrmTTA.cbxProdutorOrigemExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
   procedure
   begin
    TThread.Synchronize(nil,procedure
    begin
      cbxProdutorDestino.SetFocus;
    end);
   end).Start;
end;

procedure TfrmTTA.cbxUFExit(Sender: TObject);
begin
   TThread.CreateAnonymousThread(
   procedure
   begin
    TThread.Synchronize(nil,procedure
    begin
      cbxProdutorOrigem.SetFocus;
    end);
   end).Start;
end;

procedure TfrmTTA.FormShow(Sender: TObject);
begin
 serviceDB.AbreProdutorProprio;
 TreeView1.Enabled         := false;
 layNovoComunicado.Visible := False;
 serviceDB.AbreTTA('');
end;

procedure TfrmTTA.LimpaCampos;
begin
 edtObs.Text                  :='';
 edtDataTTA.Text              :='';
 edtTTANum.Text               :='';
 edtSerieTTA.Text             :='';
 edtTotalAnimais.Text         :='0';
 cbxUF.ItemIndex              :=-1;
 cbxProdutorOrigem.ItemIndex  :=-1;
 cbxProdutorDestino.ItemIndex :=-1;
end;

procedure TfrmTTA.SpeedButton1Click(Sender: TObject);
begin
 layNovoComunicado.Visible := false;
 serviceDB.AbreTTA('');
end;

procedure TfrmTTA.SpeedButton2Click(Sender: TObject);
begin
  if edtDataTTA.Text.Length=0 then
  begin
    MyShowMessage('Informe a data da TTA',false);
    Exit;
  end;
  if edtTTANum.Text.Length=0 then
  begin
    MyShowMessage('Informe o Número da TTA',false);
    Exit;
  end;
  if edtSerieTTA.Text.Length=0 then
  begin
    MyShowMessage('Informe a Série da TTA',false);
    Exit;
  end;
  if cbxUF.ItemIndex=-1 then
  begin
    MyShowMessage('Informe a UF da TTA',false);
    Exit;
  end;
  if cbxProdutorOrigem.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o Produtor de Origem da TTA',false);
    Exit;
  end;
  if cbxProdutorDestino.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o Produtor de Destino da TTA',false);
    Exit;
  end;
  if vIdProdOrigem=vIdProdDestino then
  begin
    MyShowMessage('Produtor de Destino não pode ser o Mesmo de Origem TTA',false);
    Exit;
  end;

  if serviceDB.TableTTA.State= dsInsert then
   serviceDB.TableTTANUMERO.AsString             := serviceDB.RetornaNumeroComTTA(serviceDB.vIdPropriedade);
  serviceDB.TableTTATTA_NUM.AsString             := edtTTANum.Text;
  serviceDB.TableTTASERIE.AsString               := edtSerieTTA.Text;
  serviceDB.TableTTAUF.AsString                  := cbxUF.Selected.Text;
  serviceDB.TableTTADATA_TRANFERENCIA.AsDateTime := edtDataTTA.Date;
  serviceDB.TableTTAID_USUARIO.AsString          := serviceDB.vIdUserLogado;
  serviceDB.TableTTAID_ALTERACAO.AsString        := serviceDB.vIdUserLogado;
  serviceDB.TableTTADATA_ALTERACAO.AsDateTime    := Now;
  serviceDB.TableTTAID_PROPRIEDADE.AsString      := serviceDB.vIdPropriedade;
  serviceDB.TableTTAID_PRODUTOR_ORIGEM.AsString  := vIdProdOrigem;
  serviceDB.TableTTAID_PRODUTOR_DESTINO.AsString := vIdProdDestino;
  serviceDB.TableTTAOBSERVACAO.AsString          := edtObs.Text;
  try
    serviceDB.TableTTA.ApplyUpdates(-1);
    serviceDB.AbreTTA('');
    layNovoComunicado.Visible := false;
  except
    on E: Exception do
      myShowMessage('Erro Ao Atualizar Registro:'+E.Message,FALSE);
  end;
end;

procedure TfrmTTA.SpeedButton3Click(Sender: TObject);
begin
  if PesquisaIDGrid(qryGridAnimalANIMAL_ID.AsString)>0 then
  begin
    MyShowMessage('Animal ja selecionado!',false);
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

procedure TfrmTTA.DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
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

procedure TfrmTTA.SpeedButton4Click(Sender: TObject);
begin
 if gridAnimaisSelecionados.Row>-1 then
  DeleteRow(gridAnimaisSelecionados.Row, gridAnimaisSelecionados);
 lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmTTA.SpeedButtonMandaTudoClick(Sender: TObject);
var
 I:Integer;
begin
  I :=1;
  qryGridAnimal.First;
  while not qryGridAnimal.Eof do
  begin
    if PesquisaIDGrid(qryGridAnimalANIMAL_ID.AsString)=0 then
    begin
     gridAnimaisSelecionados.RowCount            :=gridAnimaisSelecionados.RowCount+1;
     gridAnimaisSelecionados.Cells[0,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalANIMAL_ID.AsString;
     gridAnimaisSelecionados.Cells[1,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIDENT_1.AsString;
     gridAnimaisSelecionados.Cells[2,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalIDENT_2.AsString;
     gridAnimaisSelecionados.Cells[3,gridAnimaisSelecionados.RowCount-1]     := qryGridAnimalID_PASTO.AsString;
    end;
    qryGridAnimal.Next;
  end;
  lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmTTA.SpeedButtonVoltaTudoClick(Sender: TObject);
var
 i:integer;
begin
  for I := 0 to gridAnimaisSelecionados.RowCount-1 do
  begin
   if gridAnimaisSelecionados.Row>-1 then
    DeleteRow(I, gridAnimaisSelecionados);
   lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
  end;
end;

procedure TfrmTTA.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  if serviceDB.TableTTAID.AsInteger>0 then
  begin
    TreeView1.Enabled         := true;
    lblTotalAniTTA.Text       := serviceDB.TableTTATOTAL_ANIMAIS.AsString;
  end;
end;

procedure TfrmTTA.TreeItemEditarClick(Sender: TObject);
begin
 serviceDB.AbreProdutorProprio;
 edtObs.Text                  := serviceDB.TableTTAOBSERVACAO.AsString;
 edtDataTTA.Date              := serviceDB.TableTTADATA_TRANFERENCIA.AsDateTime;
 edtTTANum.Text               := serviceDB.TableTTATTA_NUM.AsString;
 edtSerieTTA.Text             := serviceDB.TableTTASERIE.AsString;
 cbxUF.ItemIndex              := cbxUF.Items.IndexOf(serviceDB.TableTTAUF.AsString);
 cbxProdutorOrigem.ItemIndex  := cbxProdutorOrigem.Items.IndexOf(serviceDB.TableTTAPRODUTORORIGEM.AsString);
 cbxProdutorDestino.ItemIndex := cbxProdutorDestino.Items.IndexOf(serviceDB.TableTTAPRODUTORDESTINO.AsString);
 serviceDB.TableTTA.Edit;
 layNovoComunicado.Visible    := true;
 vIdProdOrigem                := serviceDB.TableTTAID_PRODUTOR_ORIGEM.AsString;
 vIdProdDestino               := serviceDB.TableTTAID_PRODUTOR_DESTINO.AsString;
 edtTotalAnimais.Text         := serviceDB.TableTTATOTAL_ANIMAIS.AsString;
 cbxProdutorOrigem.Enabled    := serviceDB.TableTTATOTAL_ANIMAIS.AsInteger=0;
 cbxProdutorDestino.Enabled   := serviceDB.TableTTATOTAL_ANIMAIS.AsInteger=0;
end;

procedure TfrmTTA.TreeItemExcluirClick(Sender: TObject);
begin
  if serviceDB.TableTTATOTAL_ANIMAIS.AsInteger>0 then
  begin
   MyShowMessage('Existe animais Vinculado a essa TTA impossivel Deletar!',false);
   Exit;
  end;
  MyShowMessage('Deseja Realmente Deletar essa TTA?',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableTTA.Edit;
       serviceDB.TableTTASTATUS.AsInteger :=-1;
       serviceDB.TableTTAID_ALTERACAO.AsString     := serviceDB.vIdUserLogado;
       serviceDB.TableTTADATA_ALTERACAO.AsDateTime := now;
       serviceDB.TableTTA.ApplyUpdates(-1);
       serviceDB.AbreTTA('');
       MyShowMessage('Registro Excluido com Sucesso!',false);
      except
      on E : Exception do
       begin
         MyShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmTTA.TreeItemNovoClick(Sender: TObject);
begin
 LimpaCampos;
 ServiceDB.TableTTA.Insert;
 layNovoComunicado.Visible := true;
end;

procedure TfrmTTA.TreeViewItem1Click(Sender: TObject);
begin
  if serviceDB.TableTTASTATUS.AsInteger=2 then
  begin
    MyShowMessage('TTA Fechada impossivel incluir animais!!',false);
    Exit;
  end;
  CarregaComboLocalAtaulF;
  MudarAba(tbiCad,Sender);
end;

procedure TfrmTTA.TreeViewItem3Click(Sender: TObject);
var
 I:integer;
 vQryAux:TFDQuery;
 VidAnimal,vIdTTA,vIdUsuario:string;
begin
  if serviceDB.TableTTASTATUS.AsInteger=2 then
  begin
    MyShowMessage('TTA Fechada impossivel Excluir animais!!',false);
    Exit;
  end;
  MyShowMessage('Deseja Realmente Deletar essa Animal?',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
     vQryAux:=TFDQuery.Create(nil);
     vQryAux.Connection:=serviceDB.FCon;
     with vQryAux,vQryAux.SQL do
     begin
       Clear;
       Add('UPDATE tta_animais SET STATUS=-1');
       Add('WHERE ID='+serviceDB.TableTTAAnimaisID.AsString);
       ExecSQL;
       serviceDB.AbreTTA('');
     end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmTTA.TreeViewItem4Click(Sender: TObject);
begin
 if serviceDB.TableTTATOTAL_ANIMAIS.AsInteger=0 then
  begin
   MyShowMessage('Nenhum animal Vinculado a essa TTA impossivel Fechar!',false);
   Exit;
  end;
  MyShowMessage('Deseja Realmente Fechar essa TTA?',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableTTA.Edit;
       serviceDB.TableTTASTATUS.AsInteger          :=2;
       serviceDB.TableTTAID_ALTERACAO.AsString     := serviceDB.vIdUserLogado;
       serviceDB.TableTTADATA_ALTERACAO.AsDateTime := now;
       serviceDB.TableTTA.ApplyUpdates(-1);
       serviceDB.FechaTTA(serviceDB.TableTTAID.AsString);
       serviceDB.AbreTTA('');
       MyShowMessage('Registro Atualizados com Sucesso!',false);
      except
      on E : Exception do
       begin
         MyShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmTTA.TreeViewItem5Click(Sender: TObject);
begin
 if serviceDB.TableTTASTATUS.AsInteger<>2 then
 begin
   MyShowMessage('TTA deve estar fechada para impressão!',false);
   Exit;
 end
 else
  ppReportTTA.Print;
end;

end.
