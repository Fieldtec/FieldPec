unit USuplementoMineral;

interface


uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.EditBox, FMX.NumberBox,Winapi.Windows, FMX.Effects,Data.db, FMX.ListBox,
  FMX.SpinBox, FMX.DateTimeCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ppDB, ppParameter, ppDesignLayer, ppBands, ppClass,
  ppVar, ppCtrls, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe;

type
  TfrmCadSuplementoMineral = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Layout1: TLayout;
    Layout3: TLayout;
    Label3: TLabel;
    Layout4: TLayout;
    edtNome: TEdit;
    Layout5: TLayout;
    Layout6: TLayout;
    Label5: TLabel;
    Label4: TLabel;
    Layout7: TLayout;
    edtFornecedor: TEdit;
    edtGMD: TNumberBox;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    lbledtEstoqueMin: TLabel;
    lbledtPesoEmbalagem: TLabel;
    EditButton1: TEditButton;
    Label8: TLabel;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle5: TRectangle;
    Label9: TLabel;
    edtConsumoEsperado: TEdit;
    edtEstoqueMin: TEdit;
    edtPesoEmbalagem: TEdit;
    edtValorKG: TEdit;
    lbledtEstoqueMinDias: TLabel;
    edtEstoqueMinDias: TEdit;
    lbledtCmCocho: TLabel;
    edtCmCocho: TEdit;
    Label12: TLabel;
    igestaoPV: TEdit;
    TreeViewItem1: TTreeViewItem;
    Image3: TImage;
    lblcbxTipo: TLabel;
    cbxTipo: TComboBox;
    layFormulacao: TLayout;
    Rectangle6: TRectangle;
    TreeView1: TTreeView;
    TreeViewItem2: TTreeViewItem;
    Image4: TImage;
    TreeViewItem4: TTreeViewItem;
    Image7: TImage;
    BindSourceDB2: TBindSourceDB;
    layNovoAlimento: TLayout;
    Rectangle4: TRectangle;
    Layout12: TLayout;
    Rectangle7: TRectangle;
    Layout13: TLayout;
    Label13: TLabel;
    Label16: TLabel;
    Layout14: TLayout;
    edtAlimentoADD: TEdit;
    btnBuscaAlim: TEditButton;
    Edit2: TEdit;
    Rectangle8: TRectangle;
    Layout15: TLayout;
    Label15: TLabel;
    Label17: TLabel;
    Layout16: TLayout;
    Edit4: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Layout17: TLayout;
    btnAddAlimento: TRectangle;
    Layout18: TLayout;
    Image8: TImage;
    Label20: TLabel;
    edtCancelaAlimento: TRectangle;
    Layout19: TLayout;
    Image9: TImage;
    Label21: TLabel;
    StringGrid2: TStringGrid;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layResumoFormulacao: TLayout;
    Label22: TLabel;
    lblInclusaoTotal: TLabel;
    Label23: TLabel;
    lblValorKG: TLabel;
    edtTab: TEdit;
    edtValorKGAlim: TEdit;
    edtOrdemFab: TEdit;
    edtPercentInclusao: TEdit;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    Rectangle9: TRectangle;
    Layout20: TLayout;
    Label6: TLabel;
    Label7: TLabel;
    Layout21: TLayout;
    Edit1: TEdit;
    edtMsAlimento: TEdit;
    lblMsTotal: TLabel;
    edtMsTotal: TEdit;
    layImprimiFicha: TLayout;
    Rectangle10: TRectangle;
    Layout11: TLayout;
    C: TRectangle;
    Rectangle11: TRectangle;
    Layout22: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    Layout23: TLayout;
    Edit3: TEdit;
    edtFabFicha: TDateEdit;
    Layout24: TLayout;
    btnImprimiFicha: TRectangle;
    Layout25: TLayout;
    Image6: TImage;
    Label24: TLabel;
    btnCancelaFicha: TRectangle;
    Layout26: TLayout;
    Image10: TImage;
    Label25: TLabel;
    Rectangle12: TRectangle;
    Layout27: TLayout;
    Label26: TLabel;
    Label27: TLabel;
    Label14: TLabel;
    Layout28: TLayout;
    Edit5: TEdit;
    edtPrevisaoFicha: TEdit;
    edtQtdBatida: TSpinBox;
    TreeViewItem3: TTreeViewItem;
    Image11: TImage;
    Ficha: TFDQuery;
    dsFichaFab: TDataSource;
    ppDBFichaFab: TppDBPipeline;
    ReportFichaFab: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppShape8: TppShape;
    ppLabel11: TppLabel;
    ppLabel9: TppLabel;
    ppLabel18: TppLabel;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape15: TppShape;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape12: TppShape;
    ppShape14: TppShape;
    ppShape13: TppShape;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine3: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppShape18: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppLabel13: TppLabel;
    ppShape19: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText10: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    FichaDATA_FAB_R: TDateField;
    FichaRACAO: TStringField;
    FichaPREVISTO_KG_R: TFMTBCDField;
    FichaFABRICACAO_NUMERO: TIntegerField;
    FichaINSUMO: TStringField;
    FichaPREV_INSUMO: TFMTBCDField;
    FichaREAL_INSUMO: TFMTBCDField;
    procedure EditButton1Click(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure edtEstoqueMinKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtConsumoEsperadoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtNomeExit(Sender: TObject);
    procedure edtFornecedorExit(Sender: TObject);
    procedure edtConsumoEsperadoExit(Sender: TObject);
    procedure edtPesoEmbalagemExit(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure btnBuscaAlimClick(Sender: TObject);
    procedure edtCancelaAlimentoClick(Sender: TObject);
    procedure btnAddAlimentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeViewItem4Click(Sender: TObject);
    procedure edtOrdemFabExit(Sender: TObject);
    procedure edtValorKGAlimKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure StringGrid2EditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure cbxTipoChange(Sender: TObject);
    procedure btnImprimiFichaClick(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
  private
    { Private declarations }
    vIdForne :integer;
    procedure LimparCampos;
  public
    vIdAlimento:string;
    procedure DelayedSetFocus(control: TControl);
    procedure SomarColunasFormulacao;
  end;

var
  frmCadSuplementoMineral: TfrmCadSuplementoMineral;

implementation

{$R *.fmx}

uses UCadCategoria, UPrincipal, UServiceDB, UFornecedorSuplemento, ServiceDB2,
  UAlimentos, ServiceRel, UPlanConfi, UdmReportConf;

procedure TfrmCadSuplementoMineral.btnAddAlimentoClick(Sender: TObject);
begin
 if edtAlimentoADD.Text.Length=0 then
 begin
   MyShowMessage('Informe o alimento!!',false);
   Exit;
 end;
 if(edtValorKGAlim.Text.Length=0) or (edtValorKGAlim.Text='0')  then
 begin
   MyShowMessage('Informe o Valor do kg!!',false);
   Exit;
 end;
 if(edtMsAlimento.Text.Length=0) or (edtMsAlimento.Text='0')  then
 begin
   MyShowMessage('Informe a Materia Seca do Alimento!!',false);
   Exit;
 end;
 if (edtPercentInclusao.Text.Length=0) or (edtPercentInclusao.Text='0') then
 begin
   MyShowMessage('Informe a % Inclusão!!',false);
   Exit;
 end;
 if (edtOrdemFab.Text.Length=0) or (edtOrdemFab.Text='0') then
 begin
   MyShowMessage('Informe a Ordem!!',false);
   Exit;
 end;
 if (StrToFloat(lblInclusaoTotal.Text)+ StrToFloat(edtPercentInclusao.Text)>100) then
 begin
   MyShowMessage('Inclusão total não pode ser maior que 100% !',false);
   Exit;
 end;
 serviceDB.SuplementoFormulacaoID_MINERAL.AsString          := StringGrid1.Cells[0,StringGrid1.Row];
 serviceDB.SuplementoFormulacaoID_ALIMENTO.AsString         := vIdAlimento;
 serviceDB.SuplementoFormulacaoMN_INCLUSAO_PERCENT.AsString := edtPercentInclusao.Text;
 serviceDB.SuplementoFormulacaoORDEM.AsString               := edtOrdemFab.Text;
 serviceDB.SuplementoFormulacaoVALOR_KG.AsString            := edtValorKGAlim.Text;
 serviceDB.SuplementoFormulacaoID_USUARIO.AsString          := serviceDB.vIdUserLogado;
 serviceDB.SuplementoFormulacaoMS.AsString                  := edtMsAlimento.Text;

 try
  serviceDB.SuplementoFormulacao.ApplyUpdates(-1);
  serviceDB.SuplementoFormulacao.Close;
  serviceDB.SuplementoFormulacao.Open();
  SomarColunasFormulacao;
  serviceDB.SuplementoMineral.CommitUpdates;
  serviceDB.SuplementoMineral.Refresh;
  layNovoAlimento.Visible := false;
 except
 on E : Exception do
    begin
      MyShowMessage('Erro ao inserir Alimento : '+E.Message,FALSE);
   end;
 end;
end;

procedure TfrmCadSuplementoMineral.SomarColunasFormulacao;
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
  for I := 0 to StringGrid2.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid2.Cells[1,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(StringGrid2.Cells[2,I],Val1) then
    Sum1:= Sum1 + Val1;
  end;
  if I>0 then
  begin
    if sum<100 then
     lblInclusaoTotal.FontColor := TAlphaColorRec.Red
    else
     lblInclusaoTotal.FontColor := TAlphaColorRec.Lime;

    lblInclusaoTotal.Text   := FormatFloat('####,##.00',Sum);
    Sum1 := Sum1/100;
    lblValorKG.Text         := FormatFloat('R$ 0.00',(Sum1));
  end
  else
  begin
    lblInclusaoTotal.Text  := '0,00';
    lblValorKG.Text        := '0,00';
  end;
end;

procedure TfrmCadSuplementoMineral.btnBuscaAlimClick(Sender: TObject);
begin
  frmCadAlimento := TfrmCadAlimento.Create(nil);
  try
    frmCadAlimento.ShowModal;
  finally
    edtAlimentoADD.text           := serviceDBN.ALIMENTOSNOME.AsString;
    vIdAlimento                   := serviceDBN.ALIMENTOSID.AsString;
    edtValorKGAlim.Text           := serviceDBN.ALIMENTOSCUSTO_MEDIO.AsString;
    edtMsAlimento.Text            := serviceDBN.ALIMENTOSMS.AsString;
    frmCadAlimento.Free;
  end;
end;

procedure TfrmCadSuplementoMineral.btnCancelarClick(Sender: TObject);
begin
  serviceDB.AbreSuplementoMineral;
  inherited;
end;

procedure TfrmCadSuplementoMineral.btnConfirmaClick(Sender: TObject);
begin
 DelayedSetFocus(edtTab);
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Preencha os campos obrigatórios *',FALSE);
   Exit;
 end;
 if edtFornecedor.Text.Length=0 then
 begin
   MyShowMessage('Preencha os campos obrigatórios *',FALSE);
   Exit;
 end;
 if frmPrincipal.vCadConf=0 then
 begin
   if (edtPesoEmbalagem.Text='0') or (edtPesoEmbalagem.Text.Length=0) then
   begin
     MyShowMessage('Peso da embalagem nao pode ser zero!! *',FALSE);
     Exit;
   end;
 end;
 if (igestaoPV.Text='0') or (igestaoPV.Text.Length=0) then
 begin
   MyShowMessage('Ingestão Peso Vivo nao pode ser zero!! *',FALSE);
   Exit;
 end;
 if cbxTipo.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o tipo *',FALSE);
   Exit;
 end;
 if(frmPrincipal.vCadConf=0)and(cbxTipo.ItemIndex=0) then
 begin
   if(edtMsTotal.Text.Length=0)or(edtMsTotal.Text='0') then
   begin
     MyShowMessage('Informe a MS Total',false);
     Exit;
   end;
 end;
 if serviceDB.SuplementoMineral.State =dsInsert then
   if not  serviceDB.VerificaSuplementoExiste(edtNome.Text) then
   begin
     if frmPrincipal.vCadConf=0 then
      MyShowMessage('Ja existe um suplemento com esse nome cadastrado!!',FALSE);
     if frmPrincipal.vCadConf=1 then
      MyShowMessage('Ja existe uma Pre-Mistura com esse nome cadastrado!!',FALSE);
     Exit;
   end;

  if frmPrincipal.vCadConf=0 then
   serviceDB.SuplementoMineralFORMULADO.AsInteger           := cbxTipo.ItemIndex
  else
   serviceDB.SuplementoMineralFORMULADO.AsInteger           := 1;

  serviceDB.SuplementoMineralNOME.AsString                  := edtNome.Text;
  serviceDB.SuplementoMineralID_FORNECEDOR.AsInteger        := vIdForne;
  serviceDB.SuplementoMineralID_USUARIO.AsString            := serviceDB.vIdUserLogado;
  if frmPrincipal.vCadConf=0 then
  begin
   serviceDB.SuplementoMineralGANHO_ESPERADO.AsString       := edtGMD.Text;
   serviceDB.SuplementoMineralESTOQUE_MINIMO.AsString       := edtEstoqueMin.Text;
   serviceDB.SuplementoMineralPESO_EMBALAGEM.AsString       := edtPesoEmbalagem.Text;
   serviceDB.SuplementoMineralCM_COCHO_INDICADO.AsString    := edtCmCocho.Text;
   serviceDB.SuplementoMineralINGESTAO_PERCENT_PV.AsString  := igestaoPV.Text;
   serviceDB.SuplementoMineralESTOQUE_MINIMO_DIAS.AsString  := edtEstoqueMinDias.Text;
  end
  else
  begin
   serviceDB.SuplementoMineralGANHO_ESPERADO.AsString       := edtGMD.Text;
   serviceDB.SuplementoMineralESTOQUE_MINIMO.AsInteger      := 0;
   serviceDB.SuplementoMineralPESO_EMBALAGEM.AsInteger      := 0;
   serviceDB.SuplementoMineralCM_COCHO_INDICADO.AsInteger   := 0;
   serviceDB.SuplementoMineralINGESTAO_PERCENT_PV.AsString  := igestaoPV.Text;
   serviceDB.SuplementoMineralESTOQUE_MINIMO_DIAS.AsInteger := 0;
  end;
  serviceDB.SuplementoMineralPRE_MISTURA.AsInteger          := frmPrincipal.vCadConf;
  serviceDB.SuplementoMineralVALOR_KG.AsString              := edtValorKG.Text;
  try
   serviceDB.SuplementoMineral.ApplyUpdates(-1);
   if frmPrincipal.vCadConf=0 then
    MyShowMessage('Suplemento Cadastrado com sucesso!!',FALSE);
   if frmPrincipal.vCadConf=1 then
    MyShowMessage('Pre-Mistura Cadastrado com sucesso!!',FALSE);

   serviceDB.fCon.Commit;
   serviceDB.AbreSuplementoMineral;
   MudarAba(tbiMnu,Sender);
  except
  on E : Exception do
    begin
      MyShowMessage('Erro ao inserir Suplemento : '+E.Message,FALSE);
   end;
 end;
end;

procedure TfrmCadSuplementoMineral.btnImprimiFichaClick(Sender: TObject);
begin
 Ficha.Connection :=  serviceDB.FCon;
 if(edtPrevisaoFicha.Text.Length=0)
 or (edtPrevisaoFicha.Text='0') then
 begin
   MyShowMessage('Previsto deve ser maior que zero!',false);
   Exit;
 end;
 with ficha,ficha.SQL do
 begin
  Clear;
  Add('SELECT * FROM FICHA_FABRICACAO_PRE(');
  Add(FormatDateTime('mm/dd/yyyy',strToDate(edtFabFicha.Text)).QuotedString+',');
  Add(serviceDB.SuplementoMineralID.AsString+',');
  Add(edtPrevisaoFicha.Text+',');
  Add(edtQtdBatida.Text+')');
  Open;
  ReportFichaFab.Print;
 end;
 layImprimiFicha.Visible := false;
end;

procedure TfrmCadSuplementoMineral.cbxTipoChange(Sender: TObject);
begin
  lblMsTotal.Visible := cbxTipo.ItemIndex=0;
  edtMsTotal.Visible := cbxTipo.ItemIndex=0;
end;

procedure TfrmCadSuplementoMineral.edtCancelaAlimentoClick(Sender: TObject);
begin
 layNovoAlimento.Visible := false;
end;

procedure TfrmCadSuplementoMineral.edtConsumoEsperadoExit(Sender: TObject);
begin
 DelayedSetFocus(edtEstoqueMin);
end;

procedure TfrmCadSuplementoMineral.edtConsumoEsperadoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadSuplementoMineral.EditButton1Click(Sender: TObject);
begin
  serviceDB.FornecedorSupleMineral.Close;
  serviceDB.FornecedorSupleMineral.Open;
  frmCadFornecedorMineral := TfrmCadFornecedorMineral.Create(nil);
  try
    frmCadFornecedorMineral.ShowModal;
  finally
    edtFornecedor.text           := serviceDB.FornecedorSupleMineralRAZAO_SOCIAL.AsString;
    vIdForne                     := serviceDB.FornecedorSupleMineralID.AsInteger;
    frmCadFornecedorMineral.Free;
  end;
end;

procedure TfrmCadSuplementoMineral.edtEstoqueMinKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  Key:=vkReturn;
end;

procedure TfrmCadSuplementoMineral.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
  serviceDB.SuplementoMineral.Filtered := false;
  serviceDB.SuplementoMineral.Filter   :='NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
  serviceDB.SuplementoMineral.Filtered := true;
 end
 else
 begin
  serviceDB.SuplementoMineral.Filtered := false;
  serviceDB.AbreSuplementoMineral;
 end;
end;

procedure TfrmCadSuplementoMineral.edtFornecedorExit(Sender: TObject);
begin
 DelayedSetFocus(edtConsumoEsperado);
end;

procedure TfrmCadSuplementoMineral.edtNomeExit(Sender: TObject);
begin
   DelayedSetFocus(cbxTipo);
end;

procedure TfrmCadSuplementoMineral.edtOrdemFabExit(Sender: TObject);
begin
 DelayedSetFocus(edtAlimentoADD);
end;

procedure TfrmCadSuplementoMineral.DelayedSetFocus(control: TControl);
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

procedure TfrmCadSuplementoMineral.edtPesoEmbalagemExit(Sender: TObject);
begin
 DelayedSetFocus(edtValorKG);
end;

procedure TfrmCadSuplementoMineral.edtValorKGAlimKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadSuplementoMineral.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 Key:=vkReturn;
end;

procedure TfrmCadSuplementoMineral.FormShow(Sender: TObject);
begin
  layImprimiFicha.Visible        := FALSE;
  TreeViewItem1.Visible          := frmPrincipal.vCadConf=0;
  lblcbxTipo.Visible             := frmPrincipal.vCadConf=0;
  cbxTipo.Visible                := frmPrincipal.vCadConf=0;
  edtPesoEmbalagem.Visible       := frmPrincipal.vCadConf=0;
  lbledtPesoEmbalagem.Visible    := frmPrincipal.vCadConf=0;
  edtEstoqueMin.Visible          := frmPrincipal.vCadConf=0;
  lbledtEstoqueMin.Visible       := frmPrincipal.vCadConf=0;
  edtEstoqueMinDias.Visible      := frmPrincipal.vCadConf=0;
  lbledtEstoqueMinDias.Visible   := frmPrincipal.vCadConf=0;
  edtCmCocho.Visible             := frmPrincipal.vCadConf=0;
  lbledtCmCocho.Visible          := frmPrincipal.vCadConf=0;
  lblMsTotal.Visible             := frmPrincipal.vCadConf=0;
  edtMsTotal.Visible             := frmPrincipal.vCadConf=0;
  if frmPrincipal.vCadConf=0 then
   Label2.Text := 'Suplemento Mineral'
  else
   Label2.Text := 'Pre-Mistura';

  serviceDB.AbreSuplementoMineral;
  layNovoAlimento.Visible := false;
  inherited;
end;

procedure TfrmCadSuplementoMineral.imgCloseClick(Sender: TObject);
begin
  if (frmPrincipal.vForn=1) or (serviceDBN.PlanejamentoNutricional.State in[dsEdit,dsInsert]) then
   Close
  else
   inherited;
end;

procedure TfrmCadSuplementoMineral.LimparCampos;
begin
  edtNome.Text              :='';
  edtFornecedor.Text        :='';
  edtConsumoEsperado.Text   :='';
  edtEstoqueMin.Text        :='';
  edtPesoEmbalagem.Text     :='';
  edtValorKG.Text           :='';
  edtCmCocho.Text           :='';
  edtGMD.Text               :='';
  edtEstoqueMinDias.Text    :='';
end;

procedure TfrmCadSuplementoMineral.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
   layFormulacao.Visible := serviceDB.SuplementoMineralFORMULADO.AsInteger = 1;
end;

procedure TfrmCadSuplementoMineral.StringGrid1CellDblClick(
  const Column: TColumn; const Row: Integer);
begin
  Close;
end;

procedure TfrmCadSuplementoMineral.StringGrid1SelChanged(Sender: TObject);
begin
  if serviceDB.SuplementoMineralFORMULADO.AsInteger = 1 then
  begin
    layFormulacao.Visible :=true;
  end
  else
    layFormulacao.Visible :=false;
  SomarColunasFormulacao;
end;

procedure TfrmCadSuplementoMineral.StringGrid2EditingDone(Sender: TObject;
  const ACol, ARow: Integer);
begin
  serviceDB.SuplementoFormulacao.ApplyUpdates(-1);
  serviceDB.SuplementoMineral.CommitUpdates;
  serviceDB.SuplementoMineral.Refresh;
  inherited;
end;

procedure TfrmCadSuplementoMineral.TreeItemEditarClick(Sender: TObject);
begin
  cbxTipo.ItemIndex  := serviceDB.SuplementoMineralFORMULADO.AsInteger;
  edtNome.Text       := serviceDB.SuplementoMineralNOME.AsString;
  edtFornecedor.Text := serviceDB.RetornaNomeFornecedor(
   serviceDB.SuplementoMineralID_FORNECEDOR.AsString);
  vIdForne               := serviceDB.SuplementoMineralID_FORNECEDOR.AsInteger;
  edtValorKG.Text        := serviceDB.SuplementoMineralVALOR_KG.AsString;
  edtEstoqueMin.Text     := serviceDB.SuplementoMineralESTOQUE_MINIMO.AsString;
  edtPesoEmbalagem.Text  := serviceDB.SuplementoMineralPESO_EMBALAGEM.AsString;
  edtConsumoEsperado.Text:= serviceDB.SuplementoMineralCONSUMO_ESPERADO.AsString;
  edtEstoqueMinDias.Text := serviceDB.SuplementoMineralESTOQUE_MINIMO_DIAS.AsString;
  edtCmCocho.Text        := serviceDB.SuplementoMineralCM_COCHO_INDICADO.AsString;
  edtGMD.Text            := serviceDB.SuplementoMineralGANHO_ESPERADO.AsString;
  lblMsTotal.Visible     := serviceDB.SuplementoMineralFORMULADO.AsInteger=0;
  edtMsTotal.Visible     := serviceDB.SuplementoMineralFORMULADO.AsInteger=0;
  if serviceDB.SuplementoMineralFORMULADO.AsInteger=0 then
    edtMsTotal.Text      := serviceDB.SuplementoMineralMS_TOTAL.AsString;
  serviceDB.SuplementoMineral.Edit;
  inherited;
end;

procedure TfrmCadSuplementoMineral.TreeItemExcluirClick(Sender: TObject);
begin
  if frmPrincipal.vCadConf=0 then
   MyShowMessage('Deseja Realmente deletar esse Suplemento?',FALSE);
  if frmPrincipal.vCadConf=1 then
   MyShowMessage('Deseja Realmente deletar esse Pre-Mistura?',FALSE);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      serviceDB.SuplementoMineral.Edit;
      serviceDB.SuplementoMineralSTATUS.AsInteger :=-1;
      try
       serviceDB.SuplementoMineral.ApplyUpdates(-1);
       if frmPrincipal.vCadConf=0 then
        MyShowMessage('Suplemento Excluido com sucesso!',FALSE);
       if frmPrincipal.vCadConf=1 then
        MyShowMessage('Pre-Mistura Excluido com sucesso!',FALSE);

       serviceDB.fCon.Commit;
       serviceDB.AbreSuplementoMineral;
       MudarAba(tbiMnu,Sender);
     except
     on E : Exception do
       begin
         MyShowMessage('Erro ao deletar Suplemento : '+E.Message,FALSE);
       end;
     end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',FALSE);
   end;
  end;
end;

procedure TfrmCadSuplementoMineral.TreeItemNovoClick(Sender: TObject);
begin
  LimparCampos;
  serviceDB.AbreSuplementoMineral;
  serviceDB.SuplementoMineral.Insert;
  MudarAba(tbiCad,Sender);
end;
procedure TfrmCadSuplementoMineral.TreeViewItem1Click(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Definir esse Mineral como Padrão?',true);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDBN.AlteraMineralPadrão(serviceDB.SuplementoMineralID.AsString);
       MyShowMessage('Padão Definido com Sucesso!',false);
      except
      on E : Exception do
       begin
         MyShowMessage('Exception class name = '+E.ClassName,false);
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
procedure TfrmCadSuplementoMineral.TreeViewItem2Click(Sender: TObject);
begin
  edtAlimentoADD.Text      :='';
  edtValorKGAlim.Text      := '0';
  edtPercentInclusao.Text  := '0';
  edtOrdemFab.Text         := '0';
  serviceDB.SuplementoFormulacao.Insert;
  layNovoAlimento.Visible := true;
end;

procedure TfrmCadSuplementoMineral.TreeViewItem3Click(Sender: TObject);
begin
  layImprimiFicha.Visible := true;
end;

procedure TfrmCadSuplementoMineral.TreeViewItem4Click(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse Alimento?',True);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      serviceDB.SuplementoFormulacao.Edit;
      serviceDB.SuplementoFormulacaoSTATUS.AsInteger :=-1;
      try
       serviceDB.SuplementoFormulacao.ApplyUpdates(-1);
       MyShowMessage('Alimento Excluido com sucesso!',FALSE);
       serviceDB.fCon.Commit;
       serviceDB.SuplementoFormulacao.Close;
       serviceDB.SuplementoFormulacao.Open;
       SomarColunasFormulacao;
       MudarAba(tbiMnu,Sender);
     except
     on E : Exception do
       begin
         MyShowMessage('Erro ao deletar Alimento : '+E.Message,FALSE);
       end;
     end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',FALSE);
   end;
  end;
end;

end.
