unit UEntradaEstoqueMineral;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.EditBox, FMX.NumberBox, FMX.DateTimeCtrls,Winapi.Windows,
  ppParameter, ppDesignLayer, ppCtrls, ppVar, ppBands, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmEntradaEstoqueMineral = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    layResumoGrafico: TLayout;
    Rectangle6: TRectangle;
    lblTotalPeso: TLabel;
    lblValorTotal: TLabel;
    Layout46000000: TLayout;
    Rectangle16000000: TRectangle;
    Layout490000000000000: TLayout;
    Layout47000000000: TLayout;
    Label31000000000: TLabel;
    layCapDadosPasto: TLayout;
    Layout48000000000: TLayout;
    cbxCurralPastoGrupo: TComboBox;
    LayValueDadosPasto: TLayout;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Label3: TLabel;
    Layout5: TLayout;
    Layout6: TLayout;
    ComboBox1: TComboBox;
    Layout7: TLayout;
    Label5: TLabel;
    edtEmissaoNF: TDateEdit;
    Layout8: TLayout;
    Rectangle3: TRectangle;
    Layout9: TLayout;
    Layout10: TLayout;
    Label9: TLabel;
    Layout11: TLayout;
    Label13: TLabel;
    Label14: TLabel;
    Layout12: TLayout;
    ComboBox2: TComboBox;
    Layout13: TLayout;
    edtQuebraPeso: TNumberBox;
    Label10: TLabel;
    cbxTipoEmbalagem: TComboBox;
    LLNA: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    edtDataIniF: TDateEdit;
    edtDataFimF: TDateEdit;
    btnRel: TRectangle;
    Layout14: TLayout;
    Image4: TImage;
    Label16: TLabel;
    ShadowEffect1: TShadowEffect;
    Label4: TLabel;
    edtNumNF: TEdit;
    lbll: TLabel;
    edtProduto: TEdit;
    btnBuscaProduto: TEditButton;
    edtPesoTotalFaz: TEdit;
    ppDBEstoqueEnt: TppDBPipeline;
    ppReportEstoqueEnt: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape9: TppShape;
    ppLabel40: TppLabel;
    ppImage5: TppImage;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLine7: TppLine;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLabel51: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppShape10: TppShape;
    ppDBCalc11: TppDBCalc;
    ppLabel52: TppLabel;
    ppLabel56: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppLabel57: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLabel58: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppLabel59: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    btnFiltar: TSpeedButton;
    Image23: TImage;
    rdAlimento: TRadioButton;
    rdProdAcabado: TRadioButton;
    Layout15: TLayout;
    Rectangle4: TRectangle;
    Layout16: TLayout;
    Layout17: TLayout;
    Label17: TLabel;
    Layout18: TLayout;
    Label22: TLabel;
    Layout19: TLayout;
    ComboBox3: TComboBox;
    Layout20: TLayout;
    edtFornecedor: TEdit;
    EditButton1: TEditButton;
    Label18: TLabel;
    edtSaldoAtual: TNumberBox;
    Label11: TLabel;
    edtDataEntradaFaz: TDateEdit;
    Label6: TLabel;
    edtValorTotalNF: TNumberBox;
    Label7: TLabel;
    edtPesoTotalNF: TNumberBox;
    Label8: TLabel;
    edtValorKGNF: TNumberBox;
    btnEstoqueAtual: TRectangle;
    Layout21: TLayout;
    Image3: TImage;
    Label19: TLabel;
    ShadowEffect2: TShadowEffect;
    btnEstoquePosicao: TRectangle;
    Layout22: TLayout;
    Image6: TImage;
    Label20: TLabel;
    ShadowEffect3: TShadowEffect;
    Layout23: TLayout;
    Layout24: TLayout;
    Label21: TLabel;
    Layout25: TLayout;
    rdAlimentoF: TRadioButton;
    RadioButton2: TRadioButton;
    Layout26: TLayout;
    ComboBox4: TComboBox;
    Layout27: TLayout;
    edtProdutoF: TEdit;
    EditButton2: TEditButton;
    btnExportar: TRectangle;
    Layout28: TLayout;
    Image7: TImage;
    Label23: TLabel;
    ShadowEffect4: TShadowEffect;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    FDQuery1: TFDQuery;
    btnExportaEntrada: TRectangle;
    Layout29: TLayout;
    Image8: TImage;
    Label24: TLabel;
    ShadowEffect5: TShadowEffect;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    Layout30: TLayout;
    Rectangle5: TRectangle;
    Layout31: TLayout;
    Layout32: TLayout;
    Label25: TLabel;
    Layout33: TLayout;
    Label28: TLabel;
    Layout34: TLayout;
    ComboBox5: TComboBox;
    Layout35: TLayout;
    edtObservacao: TEdit;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);

    procedure btnFiltarClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
    procedure edtValorTotalNFChangeTracking(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtPesoTotalFazKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbxTipoEmbalagemExit(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure edtDataEntradaFazClosePicker(Sender: TObject);
    procedure edtPesoTotalNFChangeTracking(Sender: TObject);
    procedure btnEstoqueAtualClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnEstoquePosicaoClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnExportaEntradaClick(Sender: TObject);
  private
    { Private declarations }
  public
    vIdProduto,vIdFornecedor,vKGEmbalagem,vTipo :string;
    procedure SomarColunasGrid;
    procedure CarregaCombo;
    procedure limpaCampos;
    procedure ExpTXT(DataSet: TDataSet; Arq: string);
  end;

var
  frmEntradaEstoqueMineral: TfrmEntradaEstoqueMineral;

implementation

{$R *.fmx}

uses UServiceDB, USuplementoMineral, UPrincipal, UMsgDlg, UAlimentos,
  ServiceDB2, UFornecedorSuplemento, UCurralConfinamento, USeviceConfinamento,
  ServiceRel, UdmReportConf;

procedure TfrmEntradaEstoqueMineral.SomarColunasGrid;
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
   if TryStrToFloat(StringGrid1.Cells[6,I],Val) then
    Sum := Sum + Val
   else
    Sum :=0;

   if TryStrToFloat(StringGrid1.Cells[7,I],Val1) then
    Sum1:= Sum1 + Val1
   else
    Sum1:=0;

  end;
  if Sum>0 then
   lblTotalPeso.Text  := 'Peso Total: '+FloatToStr(Sum)
  else
   lblTotalPeso.Text  := 'Peso Total:0';
  if Sum1>0 then
   lblValorTotal.Text := 'Valor Total: '+FormatFloat('R$ ####,##.00',(Sum1/StringGrid1.RowCount))
  else
   lblValorTotal.Text := 'Valor Total:0'
end;


procedure TfrmEntradaEstoqueMineral.btnBuscaProdutoClick(Sender: TObject);
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
    edtSaldoAtual.Text         := serviceDBN.RetornaSaldoAtualEntradaNF(
    vIdProduto,
    QuotedStr(FormatDateTime('mm/dd/yyyy',edtDataEntradaFaz.Date)));
    serviceDBN.ALIMENTOSSALDO_ATUAL.AsString;
    vKGEmbalagem               := serviceDBN.ALIMENTOSPESO_EMBALAGEM.AsString;
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
      edtSaldoAtual.Text         := serviceDBN.ALIMENTOSSALDO_ATUAL.AsString;
      vKGEmbalagem               := serviceDB.SuplementoMineralPESO_EMBALAGEM.AsString;
      frmCadSuplementoMineral.Free;
    end;
 end;
end;

procedure TfrmEntradaEstoqueMineral.btnCancelarClick(Sender: TObject);
begin
 limpaCampos;
 tbPrincipal.ActiveTab := tbiMnu;
end;

procedure TfrmEntradaEstoqueMineral.btnConfirmaClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
 if edtFornecedor.Text.Length=0 then
 begin
   MyShowMessage('Informe o Fornecedor!',false);
   Exit;
 end;
 if edtNumNF.Text.Length=0 then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Numero da NF!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtNumNF.SetFocus;
    end);
    Exit;
 end;

 if(edtValorTotalNF.Text.Length=0)or(edtValorTotalNF.Value<=0) then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Valor total da NF!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtValorTotalNF.SetFocus;
    end);
    Exit;
 end;

 if (edtPesoTotalNF.Text.Length=0)or(edtPesoTotalNF.Value<=0)  then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Peso Total da NF!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtPesoTotalNF.SetFocus;
    end);
    Exit;
 end;

 if edtProduto.Text.Length=0 then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Produto da NF!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtProduto.SetFocus;
    end);
    Exit;
 end;

 if(edtPesoTotalFaz.Text.Length=0)  then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Peso Total da Fazenda!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtPesoTotalFaz.SetFocus;
    end);
    Exit;
 end;
 if not(serviceDB.VerificaNFCadastrada(edtNumNF.Text,vIdProduto)) then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Já Existe uma NF com esse número e esse item cadastrada!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtNumNF.SetFocus;
    end);
    Exit;
 end;
 try
   serviceDB.InsereEntradaEstoque(
    vIdProduto,
    serviceDB.vIdUserLogado,
    FormatDateTime('mm/dd/yyyy',edtDataEntradaFaz.Date),
    edtNumNF.Text,
    FormatDateTime('mm/dd/yyyy',edtEmissaoNF.Date),
    StringReplace(edtValorTotalNF.Text,',','.',[rfReplaceAll]),
    StringReplace(edtPesoTotalNF.Text,',','.',[rfReplaceAll]),
    StringReplace(edtValorKGNF.Text,',','.',[rfReplaceAll]),
    StringReplace(edtPesoTotalFaz.Text,',','.',[rfReplaceAll]),
    StringReplace(edtQuebraPeso.Text,',','.',[rfReplaceAll]),
    cbxTipoEmbalagem.Selected.Text,
    StringReplace(vKGEmbalagem,',','.',[rfReplaceAll]),
    vIdFornecedor,vTipo,
    edtObservacao.Text);

    serviceDB.InsereLogEntradaEstoquePeso(serviceDB.vIdUserLogado,edtNumNF.Text,'CADASTRO NF ENTRADA');

    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Entrada Realizada com sucesso!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      serviceDB.AbrirGridEstoque(Date-30,date,'Todos','',serviceDB.vIdpropriedade,'');
      tbPrincipal.ActiveTab := tbimnu;
    end);
 except

 end;

end;

procedure TfrmEntradaEstoqueMineral.btnEstoqueAtualClick(Sender: TObject);
begin
//  SerRel.AbreEstoqueAtual('');
  dmRelConf.RelEstoqueAtualCustoMedio;
  if dmRelConf.RealEstoqueAtual.RecordCount>0 then
  dmRelConf.ppRepEstoqueAtual.Print
 else
  MyShowMessage('Sem dados para gerar esse relatório',false);
end;

procedure TfrmEntradaEstoqueMineral.btnEstoquePosicaoClick(Sender: TObject);
VAR
 vTipo:string;
begin

 if edtProdutoF.Text.Length=0 then
 begin
   MyShowMessage('Informe um produto!',false);
   Exit;
 end;
 if rdAlimentoF.IsChecked then
  vTipo:='0'
 else
  vTipo :='1';

 SerRel.AbreEstoqueExtrato(
  FormatDateTime('mm/dd/yyyy',edtDataIniF.Date).QuotedString,
  FormatDateTime('mm/dd/yyyy',edtDataFimF.Date).QuotedString,
  vIdProduto,
  vTipo);
  if not SerRel.EstoqueExtrato.IsEmpty then
   SerRel.ppRepEstoqueExtrato.Print
  else
  begin
    MyShowMessage('Sem dados para gerar o relatório',false);
  end;
end;

procedure TfrmEntradaEstoqueMineral.btnExportaEntradaClick(Sender: TObject);
BEGIN
 if SaveDialog1.Execute then
   ExpTXT(serviceDB.EntradaEstoqueMineral,SaveDialog1.FileName);
 MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmEntradaEstoqueMineral.btnExportarClick(Sender: TObject);
VAR
 vTipo:string;
begin

 if edtProdutoF.Text.Length=0 then
 begin
   MyShowMessage('Informe um produto!',false);
   Exit;
 end;
 if rdAlimentoF.IsChecked then
  vTipo:='0'
 else
  vTipo :='1';

 SerRel.AbreEstoqueExtrato(
  FormatDateTime('mm/dd/yyyy',edtDataIniF.Date).QuotedString,
  FormatDateTime('mm/dd/yyyy',edtDataFimF.Date).QuotedString,
  vIdProduto,
  vTipo);


  if SaveDialog1.Execute then
   ExpTXT(SerRel.EstoqueExtrato,SaveDialog1.FileName);
 MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);

end;

procedure TfrmEntradaEstoqueMineral.ExpTXT(DataSet: TDataSet; Arq: string);
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

procedure TfrmEntradaEstoqueMineral.btnFiltarClick(Sender: TObject);
var
 vTipoAlim:string;
begin
  if rdAlimentoF.IsChecked then
   vTipoAlim:='0'
  else
   vTipoAlim:='1';

  serviceDB.AbrirGridEstoque(
  edtDataIniF.Date,
  edtDataFimF.Date,
  edtProdutoF.Text,
  edtFiltroName.Text,
  serviceDB.vIdPropriedade,
  vTipoAlim);
  SomarColunasGrid;
end;

procedure TfrmEntradaEstoqueMineral.btnRelClick(Sender: TObject);
begin
  ppReportEstoqueEnt.Print;
end;

procedure TfrmEntradaEstoqueMineral.CarregaCombo;
begin
end;

procedure TfrmEntradaEstoqueMineral.cbxTipoEmbalagemExit(Sender: TObject);
begin
 DelayedSetFocus(edtDataEntradaFaz);
end;

procedure TfrmEntradaEstoqueMineral.EditButton1Click(Sender: TObject);
begin
 frmCadFornecedorMineral := TfrmCadFornecedorMineral.Create(nil);
  try
    frmCadFornecedorMineral.ShowModal;
  finally
    edtFornecedor.text         := serviceDB.FornecedorSupleMineralRAZAO_SOCIAL.AsString;
    vIdFornecedor              := serviceDB.FornecedorSupleMineralID.AsString;
    frmCadFornecedorMineral.Free;
  end;
end;

procedure TfrmEntradaEstoqueMineral.EditButton2Click(Sender: TObject);
begin
 if rdAlimentoF.IsChecked then
 begin
  vTipo:='I';
  frmCadAlimento := TfrmCadAlimento.Create(nil);
  try
    frmCadAlimento.ShowModal;
  finally
    edtProdutoF.text            := serviceDBN.ALIMENTOSNOME.AsString;
    vIdProduto                  := serviceDBN.ALIMENTOSID.AsString;
    frmCadAlimento.Free;
  end;
 end
 else
 begin
   vTipo:='P';
   frmPrincipal.vCadConf :=1;
   serviceDB.AbreSuplementoMineral;
   frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(nil);
    try
      frmPrincipal.vForn :=1;
      frmCadSuplementoMineral.ShowModal;
    finally
      edtProdutoF.text            := serviceDB.SuplementoMineralNOME.AsString;
      vIdProduto                 := serviceDB.SuplementoMineralID.AsString;
      frmCadSuplementoMineral.Free;
    end;
 end;
end;

procedure TfrmEntradaEstoqueMineral.edtDataEntradaFazClosePicker(
  Sender: TObject);
begin
  if vIdProduto.Length>0 then
  edtSaldoAtual.Text         := serviceDBN.RetornaSaldoAtualEntradaNF(
    vIdProduto,
    QuotedStr(FormatDateTime('mm/dd/yyyy',edtDataEntradaFaz.Date)));
end;

procedure TfrmEntradaEstoqueMineral.edtPesoTotalFazKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmEntradaEstoqueMineral.edtPesoTotalNFChangeTracking(
  Sender: TObject);
begin
 if (edtValorTotalNF.Value>0) and (edtPesoTotalNF.Value>0) then
   edtValorKGNF.Value := edtValorTotalNF.Value/edtPesoTotalNF.Value;
end;

procedure TfrmEntradaEstoqueMineral.edtValorTotalNFChangeTracking(
  Sender: TObject);
begin
 if (edtValorTotalNF.Value>0) and (edtPesoTotalnf.Value>0) then
   edtValorKGNF.Value := edtValorTotalNF.Value/edtPesoTotalnf.Value;
end;

procedure TfrmEntradaEstoqueMineral.FormCreate(Sender: TObject);
begin
  CarregaCombo;
  inherited;
end;

procedure TfrmEntradaEstoqueMineral.limpaCampos;
begin
 edtProduto.Text      :='';
 edtNumNF.Text        :='';
 edtEmissaoNF.Text    :='';
 edtValorTotalNF.Text :='';
 edtPesoTotalNF.Text  :='';
 edtValorKGNF.Text    :='';
 edtPesoTotalFaz.Text :='';
 edtQuebraPeso.Text   :='';
end;

procedure TfrmEntradaEstoqueMineral.TreeItemExcluirClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin

    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Deseja Realmente Excluir a Nota Fiscal: '+serviceDB.EntradaEstoqueMineralNUMERO_NF.AsString+' ?';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      if dlg.vBntConfirmaMsg=1 then
      begin
       serviceDB.InativaNF(serviceDB.EntradaEstoqueMineralID.AsString);
       serviceDB.InsereLogEntradaEstoquePeso(serviceDB.vIdUserLogado,serviceDB.EntradaEstoqueMineralNUMERO_NF.AsString ,'NF EXCLUIDA');
       serviceDB.AbrirGridEstoque(edtDataIniF.Date,edtDataFimF.Date,EDTProdutoF.Text,edtFiltroName.Text,serviceDB.vIdpropriedade,'');
       SomarColunasGrid;
      end;
    end);
    Exit;
end;

procedure TfrmEntradaEstoqueMineral.TreeItemNovoClick(Sender: TObject);
begin
  ServiceConf.AtualizaSaldoAtualInsumoeProduto;
  limpaCampos;
  tbPrincipal.ActiveTab := tbiCad;
end;

end.
