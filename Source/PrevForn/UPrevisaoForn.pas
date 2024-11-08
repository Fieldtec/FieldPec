unit UPrevisaoForn;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.DateTimeCtrls, FMX.StdCtrls,
  FMX.ListBox, FMX.Objects, FMX.Controls.Presentation, FMX.Layouts,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Edit, FMX.EditBox, FMX.NumberBox, FMX.Effects, FMX.TreeView,Winapi.Windows,
  ppParameter, ppDesignLayer, ppCtrls, ppVar, ppBands, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, FMX.TabControl,
  FMX.SpinBox;

type
  TfrmPrevisao = class(TForm)
    laybase: TLayout;
    laySuperior: TLayout;
    Rectangle1: TRectangle;
    Label2: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    layLista: TLayout;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    Layout46000000: TLayout;
    Rectangle16000000: TRectangle;
    Layout490000000000000: TLayout;
    Layout47000000000: TLayout;
    Label31000000000: TLabel;
    lbll: TLabel;
    Layout48000000000: TLayout;
    cbxCurralPastoGrupo: TComboBox;
    Layout7: TLayout;
    GroupBox1: TGroupBox;
    edtDataBaseF: TDateEdit;
    Layout2: TLayout;
    layResumoGrafico: TLayout;
    lblTotalCabeca: TLabel;
    lblConsumoTotal: TLabel;
    Rectangle3: TRectangle;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    btnGerarFiltraPrev: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    SEffectBtnConfirm: TShadowEffect;
    layMnuPadrao: TLayout;
    imgMenu: TImage;
    layMnu: TLayout;
    recMnu: TRectangle;
    Treemnu: TTreeView;
    TreeItemNovo: TTreeViewItem;
    Image2: TImage;
    TreeItemExcluir: TTreeViewItem;
    Image1: TImage;
    layGeraPrev: TLayout;
    Layout3: TLayout;
    Rectangle4: TRectangle;
    Layout4: TLayout;
    Layout5: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Layout6: TLayout;
    ComboBox1: TComboBox;
    edtDataBase: TDateEdit;
    Layout8: TLayout;
    btnGerarPrev: TRectangle;
    Layout9: TLayout;
    Image3: TImage;
    Label6: TLabel;
    ShadowEffect1: TShadowEffect;
    Label1: TLabel;
    edtDataFim: TDateEdit;
    Label7: TLabel;
    cbxPasto: TComboBox;
    BindSourceDB3: TBindSourceDB;
    lblIngestaoPV: TLabel;
    Image7: TImage;
    TreeViewRel: TTreeViewItem;
    Image4: TImage;
    DBPipelinePrevisao: TppDBPipeline;
    ReportPrevisao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppImage1: TppImage;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine2: TppLine;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine3: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppLine5: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel15: TppLabel;
    ppDBText9: TppDBText;
    Layout10: TLayout;
    Image5: TImage;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Label8: TLabel;
    Rectangle7: TRectangle;
    Layout11: TLayout;
    Label9: TLabel;
    Layout12: TLayout;
    chkDom: TCheckBox;
    chkSab: TCheckBox;
    chkSex: TCheckBox;
    chkQui: TCheckBox;
    chkQua: TCheckBox;
    chkTer: TCheckBox;
    chkSeg: TCheckBox;
    Rectangle8: TRectangle;
    ppLabel20: TppLabel;
    ppDBText10: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLabel21: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppShape4: TppShape;
    ppLabel7: TppLabel;
    ppShape5: TppShape;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel8: TppLabel;
    ppLabel16: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppShape6: TppShape;
    Label10: TLabel;
    cbxProdutoPrev: TComboBox;
    GroupBox2: TGroupBox;
    chkTodos: TCheckBox;
    chkSomenteProduto: TCheckBox;
    StringGrid2: TStringGrid;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    ppReportSint: TppReport;
    ppParameterList2: TppParameterList;
    ppDBPipelineSint: TppDBPipeline;
    ppLabel45: TppLabel;
    ppLabel10: TppLabel;
    ppLabel46: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel47: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppLabel48: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    TreeViewItem1: TTreeViewItem;
    TreeViewItem2: TTreeViewItem;
    Image6: TImage;
    Image8: TImage;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    edtDias: TSpinBox;
    edtFrequencia: TSpinBox;
    Label11: TLabel;
    cbxMineralF: TComboBox;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppShape11: TppShape;
    ppShape13: TppShape;
    procedure imgCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure btnGerarPrevClick(Sender: TObject);
    procedure btnGerarFiltraPrevClick(Sender: TObject);
    procedure TreeViewRelClick(Sender: TObject);
    procedure edtDiasKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Image5Click(Sender: TObject);
    procedure cbxProdutoPrevChange(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
  private
    vIdProduto:string;
    procedure SomarColunasGridForn;
    procedure CarregaComboPasto;
    procedure CarregaComboProduto;
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
    function  RetornaDataFornecimento(vDataControle:TDate;
    vDom,vSeg,vTer,vQua,vQui,vSex,vSab:Boolean):TDate;
  public
    { Public declarations }
  end;

var
  frmPrevisao: TfrmPrevisao;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB, UMsgDlg, ServiceDB2;

procedure TfrmPrevisao.imgCloseClick(Sender: TObject);
begin
  close;
  frmPrincipal.MudarAba(frmPrincipal.tbiMenu,sender);
end;

procedure TfrmPrevisao.imgMenuClick(Sender: TObject);
begin
 if layMnu.Visible=false then
   layMnu.Visible:=true
 else
   layMnu.Visible:=false
end;

procedure TfrmPrevisao.MyShowMessage(msg: string; btnCancel: Boolean);
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

function TfrmPrevisao.RetornaDataFornecimento(vDataControle: TDate; vDom, vSeg,
  vTer, vQua, vQui, vSex, vSab: boolean): TDate;
var
 vControle:integer;
 vDataContr:TDate;
begin
  vDataContr := vDataControle-1;
  repeat
    vControle :=0;
    vDataContr := vDataContr+1;
    if dayofweek(vDataContr)=1 then
    begin
     if vDom then
      vControle:=1;
    end;
    if dayofweek(vDataContr)=2 then
    begin
     if vSeg then
      vControle:=1;
    end;
    if dayofweek(vDataContr)=3 then
    begin
     if vTer then
      vControle:=1;
    end;
    if dayofweek(vDataContr)=4 then
    begin
     if vQua then
      vControle:=1;
    end;
    if dayofweek(vDataContr)=5 then
    begin
      if vQui then
      vControle:=1;
    end;
    if dayofweek(vDataContr)=6 then
    begin
      if vSex then
      vControle:=1;
    end;
    if dayofweek(vDataContr)=7 then
    begin
      if vSab then
      vControle:=1;
    end;
  until vControle=0;
  Result := vDataContr;
end;

procedure TfrmPrevisao.btnGerarFiltraPrevClick(Sender: TObject);
begin
  serviceDB.AbrirPrevGrid(edtDataBaseF.Date,edtDataFim.Date,cbxPasto.Selected.Text,cbxMineralF.Selected.Text);
  SomarColunasGridForn;
end;

procedure TfrmPrevisao.btnGerarPrevClick(Sender: TObject);
var
 i,CountDias:integer;
 vDadaControle    : TDate;
 vDadaMaxControle : TDate;
 dlg : TFrmmsgDlg;
 vDom,vSeg,vTer,vQua,vQui,vSex,vSab,vDiasTotal :integer;
begin
 if edtDias.Text.Length=0 then
 begin
   MyShowMessage('Informe os Dias para gerar a Previsão!',false);
   Exit;
 end;
 if edtFrequencia.Text.Length=0 then
 begin
   MyShowMessage('Informe a Frequencia de Fornecimento para gerar a Previsão!',false);
   Exit;
 end;
 if cbxProdutoPrev.ItemIndex =-1 then
 begin
   MyShowMessage('Informe o Produto para gerar a Previsão!',false);
   Exit;
 end;
 if (chkTodos.IsChecked)and(chkSomenteProduto.IsChecked)then
 begin
   MyShowMessage('Informe o Tipo Previsão!',false);
   Exit;
 end;
 if cbxProdutoPrev.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Mineral!',false);
   Exit;
 end;
 CountDias:=0;
 if chkDom.IsChecked then
  CountDias := CountDias+1;
 if chkSab.IsChecked then
  CountDias := CountDias+1;
 if chkSex.IsChecked then
  CountDias := CountDias+1;
 if chkQui.IsChecked then
  CountDias := CountDias+1;
 if chkQua.IsChecked then
  CountDias := CountDias+1;
 if chkTer.IsChecked then
  CountDias := CountDias+1;
 if chkSeg.IsChecked then
  CountDias := CountDias+1;

 edtFrequencia.value := 7-CountDias;

 vDiasTotal      := trunc((edtDias.Value) * (edtFrequencia.value));
 vDadaControle   := edtDataBase.Date;
 vDadaMaxControle:= edtDataBase.Date+(strToInt(edtDias.Text)*7);
 with serviceDB.qryAuxDelete,serviceDB.qryAuxDelete.SQL do
 begin
   Clear;
   Add('DELETE FROM PREVISAO_FORN_DIA WHERE ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   if vIdProduto.Length>0 then
    Add(' AND ID_PRODUTO='+vIdProduto);
   ExecSQL;
 end;
 for I := 1 to vDiasTotal do
 begin
  vDadaControle := RetornaDataFornecimento(vDadaControle,chkDom.IsChecked, chkSeg.IsChecked,
  chkTer.IsChecked, chkQua.IsChecked, chkQui.IsChecked, chkSex.IsChecked, chkSab.IsChecked);
  serviceDB.GeraPrevisao(vDadaControle,vIdProduto,vDiasTotal,trunc(edtDias.value*7));
  vDadaControle := vDadaControle + 1;
 end;

 dlg := TFrmmsgDlg.Create(nil);
 dlg.Position := TFormPosition.ScreenCenter;
 dlg.msg.Text := 'Previsao Gerada com Sucesso!';
 dlg.lblBtnConfirm.Text := 'Ok';
 dlg.btnCancel.Visible := false;
 dlg.ShowModal(
 procedure(ModalResult: TModalResult)
 begin
   serviceDB.AbrirPrevGrid(edtDataBaseF.date,edtDataFim.Date,cbxPasto.Selected.Text,cbxMineralF.Selected.Text);
   SomarColunasGridForn;
   layGeraPrev.Visible := false;
 end);
end;

procedure TfrmPrevisao.CarregaComboPasto;
begin
 serviceDB.TableCurrais.Close;
 serviceDB.TableCurrais.Open;
 cbxPasto.Items.Clear;
 cbxPasto.Items.Add('Todos');

 cbxMineralF.Items.Clear;
 cbxMineralF.Items.Add('Todos');
 while not serviceDB.TableCurrais.Eof do
 begin
   cbxPasto.Items.Add(serviceDB.TableCurraisCODIGO.AsString);
   serviceDB.TableCurrais.Next;
 end;
 cbxPasto.ItemIndex :=0;


 serviceDB.AbreSuplementoMineral;
 while not serviceDB.SuplementoMineral.eof do
 begin
   cbxMineralF.Items.AddObject(serviceDB.SuplementoMineralNOME.AsString,TObject(serviceDB.SuplementoMineralID.AsInteger));
   serviceDB.SuplementoMineral.Next;
 end;
 cbxMineralF.ItemIndex :=0;
end;

procedure TfrmPrevisao.CarregaComboProduto;
begin
 cbxProdutoPrev.Items.Clear;
 serviceDB.AbreSuplementoMineral;
 while not serviceDB.SuplementoMineral.eof do
 begin
   cbxProdutoPrev.Items.AddObject(serviceDB.SuplementoMineralNOME.AsString,TObject(serviceDB.SuplementoMineralID.AsInteger));
   serviceDB.SuplementoMineral.Next;
 end;
 cbxProdutoPrev.ItemIndex :=-1;
end;

procedure TfrmPrevisao.cbxProdutoPrevChange(Sender: TObject);
begin
  if cbxProdutoPrev.ItemIndex>-1 then
   vIdProduto := IntToStr(Integer(cbxProdutoPrev.Items.Objects[cbxProdutoPrev.ItemIndex]));
end;

procedure TfrmPrevisao.edtDiasKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmPrevisao.FormCreate(Sender: TObject);
begin
 serviceDBN.VerificaDestinoPlanNutricional;
 CarregaComboPasto;
 layGeraPrev.Visible := false;
end;

procedure TfrmPrevisao.Image5Click(Sender: TObject);
begin
 layGeraPrev.Visible := false;
end;

procedure TfrmPrevisao.SomarColunasGridForn;
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
  Sum2:= 0;
  for I := 0 to StringGrid2.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid2.Cells[3,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(StringGrid2.Cells[5,I],Val1) then
    Sum1:= Sum1 + Val1;
  end;
  lblTotalCabeca.Text  := 'Qtde. Total de Cabeças: '+FloatToStr(Sum);
  lblConsumoTotal.Text := 'Consumo Total: '+FormatFloat('####,##.00',Sum1)+'kg';
  
end;

procedure TfrmPrevisao.TreeItemExcluirClick(Sender: TObject);
var
 i:integer;
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja realmente deletar as previsoes dessa data: '+edtDataBaseF.Text+'?';
  dlg.lblBtnConfirm.Text := 'Ok';
  dlg.btnCancel.Visible  := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1 then
    begin
      serviceDB.DeletaPrevisao(edtDataBaseF.Date);
      serviceDB.AbrirPrevGrid(edtDataBaseF.date,edtDataFim.Date,cbxPasto.Selected.Text,cbxMineralF.Selected.Text);
      SomarColunasGridForn;
    end
    else
    begin
      Exit;
    end;
  end);
end;

procedure TfrmPrevisao.TreeItemNovoClick(Sender: TObject);
begin
  CarregaComboProduto;
  chkSomenteProduto.IsChecked    := false;
  chkTodos.IsChecked             := false;
  edtDias.Text         :='';
  edtFrequencia.Text   :='';
  layGeraPrev.Visible  := true;
end;

procedure TfrmPrevisao.TreeViewItem1Click(Sender: TObject);
begin
  ppReportSint.Print;
end;

procedure TfrmPrevisao.TreeViewItem2Click(Sender: TObject);
begin
  ReportPrevisao.Print;
end;

procedure TfrmPrevisao.TreeViewRelClick(Sender: TObject);
begin
 if TreeViewRel.IsExpanded then
  TreeViewRel.IsExpanded := false
 else
  TreeViewRel.IsExpanded := true;

end;

end.
