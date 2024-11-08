unit UBaixaEstoque;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ListBox, FMX.DateTimeCtrls,
  FMX.ActnList, System.Actions, FMX.TabControl, FMX.ScrollBox, FMX.Grid,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.Memo, FMX.Memo.Types, FMX.Effects;

type
  TfrmCadBaixaEstoqueInd = class(TfrmCadPadrao)
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label12: TLabel;
    edtFDataEntDE: TDateEdit;
    Label13: TLabel;
    Label14: TLabel;
    cbxCentroCustoF: TComboBox;
    Label16: TLabel;
    cbxTipoBaixaF: TComboBox;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout67: TLayout;
    Rectangle32: TRectangle;
    PTIMA: TLayout;
    Layout68: TLayout;
    Layout69: TLayout;
    lbltipo: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbxTipoBaixa: TComboBox;
    cbxCentroCusto: TComboBox;
    dataFab: TDateEdit;
    Layout46000000: TLayout;
    Rectangle16000000: TRectangle;
    Layout490000000000000: TLayout;
    Layout47000000000: TLayout;
    Label31000000000: TLabel;
    layCapDadosPasto: TLayout;
    lbll: TLabel;
    rdAlimento: TRadioButton;
    rdProdAcabado: TRadioButton;
    Layout48000000000: TLayout;
    cbxCurralPastoGrupo: TComboBox;
    LayValueDadosPasto: TLayout;
    edtProduto: TEdit;
    btnBuscaProduto: TEditButton;
    Label9: TLabel;
    edtKGTotal: TEdit;
    qryAux: TFDQuery;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Label7: TLabel;
    edtObs: TMemo;
    btnRel: TRectangle;
    Layout14: TLayout;
    Image4: TImage;
    Label3: TLabel;
    ShadowEffect1: TShadowEffect;
    btnExportaEntrada: TRectangle;
    Layout29: TLayout;
    Image8: TImage;
    Label24: TLabel;
    ShadowEffect5: TShadowEffect;
    btnFiltar: TSpeedButton;
    Image23: TImage;
    SaveDialog1: TSaveDialog;
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure cbxCentroCustoChange(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
    procedure btnExportaEntradaClick(Sender: TObject);
  private
    procedure ExpTXT(DataSet: TDataSet; Arq: string);
  public
    vIdProduto,vTipo,vIdCentroCusto,vValorKg:string;
    procedure CarregaCombo;
    procedure Filtro;
  end;

var
  frmCadBaixaEstoqueInd: TfrmCadBaixaEstoqueInd;

implementation

{$R *.fmx}

uses USeviceConfinamento, UServiceDB, UAlimentos, USuplementoMineral,
  ServiceDB2, UPrevisaoForn, UPrincipal;

procedure TfrmCadBaixaEstoqueInd.Filtro;
var
 vFiltro,
 vDataIni,
 vDataFim:string;
begin
 vDataIni := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date);
 vDataFim := FormatDateTime('mm/dd/yyyy',edtFDataEntAte.Date);
 vFiltro  := ' AND A.DATA BETWEEN '+vDataIni.QuotedString+' AND '+vDataFim.QuotedString;
 if edtFiltroName.Text.Length>0 then
  vFiltro  := vFiltro+' AND COALESCE(B.NOME,C.NOME) LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
 if cbxCentroCustoF.ItemIndex>0 then
  vFiltro  := vFiltro+' AND D.NOME LIKE '+QuotedStr('%'+cbxCentroCustoF.Selected.Text+'%');
 if cbxTipoBaixaF.ItemIndex>0 then
  vFiltro  := vFiltro+' AND A.TIPO_BAIXA='+intToStr(cbxTipoBaixaF.ItemIndex);
 ServiceConf.AbrirBaixaEstoque(vFiltro);
 btnExportaEntrada.Enabled  :=  not ServiceConf.TBaixaEstoque.IsEmpty;
 btnRel.Enabled             :=  not ServiceConf.TBaixaEstoque.IsEmpty;
end;

procedure TfrmCadBaixaEstoqueInd.FormShow(Sender: TObject);
begin
  btnExportaEntrada.Enabled := false;
  btnRel.Enabled            := false;
  CarregaCombo;
  edtFDataEntDE.Date  := date-7;
  edtFDataEntATE.Date := date;
  Filtro;
  inherited;
end;

procedure TfrmCadBaixaEstoqueInd.btnConfirmaClick(Sender: TObject);
var
 vIdFabricacao:String;
 I: Integer;
 vRealizado:Double;
begin
 if(edtKGTotal.Text.Length=0) or (edtKGTotal.Text='0') then
 begin
   MyShowMessage('Qtde deve ser maior que zero!!',false);
   Exit;
 end;
 if(edtProduto.Text.Length=0) then
 begin
   MyShowMessage('Informe o Produto!!',false);
   Exit;
 end;
 if cbxCentroCusto.ItemIndex =-1 then
 begin
   MyShowMessage('Informe o Centro Custo!!',false);
   Exit;
 end;
 if cbxTipoBaixa.ItemIndex =-1 then
 begin
   MyShowMessage('Informe o Tipo de Baixa!!',false);
   Exit;
 end;

 ServiceConf.TBaixaEstoque.Close;
 ServiceConf.TBaixaEstoque.Open;
 ServiceConf.TBaixaEstoque.Insert;
 if rdProdAcabado.IsChecked then
  ServiceConf.TBaixaEstoqueID_PRODUTO.AsString        := vIdProduto;
 if rdAlimento.IsChecked then
  ServiceConf.TBaixaEstoqueID_ALIMENTO.AsString       := vIdProduto;

 ServiceConf.TBaixaEstoqueDATA.AsDateTime             := dataFab.Date;
 ServiceConf.TBaixaEstoqueQTD_KG.AsString             := edtKGTotal.Text;
 ServiceConf.TBaixaEstoqueVALOR_KG.AsString           := vValorKg;
 ServiceConf.TBaixaEstoqueID_USUARIO.AsString         := serviceDB.vIdUserLogado;
 ServiceConf.TBaixaEstoqueID_PROPRIEDADE.AsString     := serviceDB.vIdPropriedade;
 ServiceConf.TBaixaEstoqueID_CENTRO_CUSTO.AsString    := vIdCentroCusto;
 case cbxTipoBaixa.ItemIndex of
  0:ServiceConf.TBaixaEstoqueTIPO_BAIXA.AsInteger     := 1;
  1:ServiceConf.TBaixaEstoqueTIPO_BAIXA.AsInteger     := 2;
  3:ServiceConf.TBaixaEstoqueTIPO_BAIXA.AsInteger     := 3;
 end;
 if edtObs.Text.Length>0 then
  ServiceConf.TBaixaEstoqueOBSERVACAO.AsString         := edtObs.Text;
 try
  ServiceConf.TBaixaEstoque.ApplyUpdates(-1);
  MyShowMessage('Baixa cadastrada com sucesso!',false);
  Filtro;
 except
  on E: Exception do
    MyShowMessage('Erro ao inserir Fabricação : '+e.Message,false);
 end;
 MudarAba(tbiMnu,sender);
 inherited;
end;

procedure TfrmCadBaixaEstoqueInd.btnExportaEntradaClick(Sender: TObject);
begin
 if SaveDialog1.Execute then
   ExpTXT(ServiceConf.TBaixaEstoque,SaveDialog1.FileName);
 MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmCadBaixaEstoqueInd.ExpTXT(DataSet: TDataSet; Arq: string);
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

procedure TfrmCadBaixaEstoqueInd.btnFiltarClick(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmCadBaixaEstoqueInd.btnRelClick(Sender: TObject);
begin
  BindSourceDB1.DataSet := nil;
  ServiceConf.ppRepEstoqueAtual.Print;
  BindSourceDB1.DataSet := ServiceConf.TBaixaEstoque;
end;

procedure TfrmCadBaixaEstoqueInd.CarregaCombo;
begin
 cbxCentroCusto.Items.Clear;
 cbxCentroCustoF.Items.Clear;
 cbxCentroCustoF.Items.Add('Todos');
 with qryAux,qryAux.SQL do
 begin
  Clear;
  Add('SELECT * FROM AUX_CENTRO_CUSTO');
  Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
  Open;
  while not qryAux.Eof do
  begin
    cbxCentroCusto.Items.AddObject(FieldByName('NOME').AsString,
     TObject(FieldByName('ID').AsInteger));
    cbxCentroCustoF.Items.Add(FieldByName('NOME').AsString);
    qryAux.Next;
  end;
  cbxCentroCusto.ItemIndex  :=-1;
  cbxCentroCustoF.ItemIndex :=0;
 end;
end;

procedure TfrmCadBaixaEstoqueInd.cbxCentroCustoChange(Sender: TObject);
begin
  if cbxCentroCusto.ItemIndex>-1 then
   vIdCentroCusto := IntToStr(Integer(cbxCentroCusto.Items.Objects[cbxCentroCusto.ItemIndex]));
end;

procedure TfrmCadBaixaEstoqueInd.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir essa Fabricação??',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceConf.TBaixaEstoque.Edit;
       ServiceConf.TBaixaEstoqueSTATUS.AsInteger               :=-1;
       ServiceConf.TBaixaEstoqueID_USUARIO_ALTERACAO.AsString  :=serviceDB.vIdUserLogado;
       ServiceConf.TBaixaEstoqueDATA_ALTERACAO.AsDateTime      :=now;
       ServiceConf.TBaixaEstoque.ApplyUpdates(-1);
       ServiceConf.TBaixaEstoque.Close;
       ServiceConf.TBaixaEstoque.Open;
       MyShowMessage('Registro excluido com Sucesso!',false);
       Filtro;
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

procedure TfrmCadBaixaEstoqueInd.TreeItemNovoClick(Sender: TObject);
begin
  ServiceConf.TBaixaEstoque.Close;
  ServiceConf.TBaixaEstoque.Open;
  ServiceConf.TBaixaEstoque.Insert;
  edtKGTotal.Text            := '';
  edtProduto.Text            := '';
  edtKGTotal.Text            := '';
  edtObs.Text                := '';
  cbxCentroCusto.ItemIndex   := -1;
  cbxTipoBaixa.ItemIndex     := -1;
  inherited;
end;

procedure TfrmCadBaixaEstoqueInd.btnBuscaProdutoClick(Sender: TObject);
var
 vFloat:Double;
begin
 if rdAlimento.IsChecked then
 begin
  vTipo:='I';
  frmCadAlimento := TfrmCadAlimento.Create(nil);
  try
    frmCadAlimento.ShowModal;
  finally
    edtProduto.text            := serviceDBN.ALIMENTOSNOME.AsString;
    vIdProduto                 := serviceDBN.ALIMENTOSID.AsString;
    vValorKg                   := serviceDBN.ALIMENTOSCUSTO_MEDIO.AsString;
    frmCadAlimento.Free;
  end;
 end
 else
 begin
   vTipo:='P';
   serviceDB.AbreSuplementoMineral;
   frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(nil);
    try
      frmPrincipal.vForn :=1;
      frmCadSuplementoMineral.ShowModal;
    finally
      edtProduto.text            := serviceDB.SuplementoMineralNOME.AsString;
      vIdProduto                 := serviceDB.SuplementoMineralID.AsString;
      vValorKg                   := serviceDB.SuplementoMineralVALOR_KG.AsString;
      frmCadSuplementoMineral.Free;
    end;
 end;
end;

end.
