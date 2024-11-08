unit ULoteNutricional;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ActnList, System.Actions, FMX.TabControl, FMX.ScrollBox, FMX.Grid,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  FMX.DateTimeCtrls, FMX.ListBox, FMX.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.EditBox, FMX.NumberBox;

type
  TfrmLoteNutricional = class(TfrmCadPadrao)
    Label3: TLabel;
    cbxStatusF: TComboBox;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    chkPeriodoProc: TCheckBox;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    TreePrimeiroTrato: TTreeViewItem;
    Image3: TImage;
    Layout1: TLayout;
    TabControl1: TTabControl;
    tbiPlan: TTabItem;
    tbiTratos: TTabItem;
    tbiAnimais: TTabItem;
    gridPlan: TStringGrid;
    gridTratos: TStringGrid;
    gridAnimais: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Rectangle2: TRectangle;
    TreeView1: TTreeView;
    TreeAlterarRacao: TTreeViewItem;
    Image4: TImage;
    Rectangle3: TRectangle;
    TreeView2: TTreeView;
    TreeEditarTratoPadrao: TTreeViewItem;
    Image8: TImage;
    TreeExcluirTratoPadrao: TTreeViewItem;
    Image9: TImage;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    Layout3: TLayout;
    Rectangle4: TRectangle;
    lblTotalAnimais: TLabel;
    layGeraTratos: TLayout;
    Rectangle5: TRectangle;
    Layout12: TLayout;
    Rectangle7: TRectangle;
    Layout13: TLayout;
    Label13: TLabel;
    Label16: TLabel;
    Layout14: TLayout;
    edtPlanejamento: TEdit;
    btnBuscaAlim: TEditButton;
    Edit2: TEdit;
    Rectangle8: TRectangle;
    Layout15: TLayout;
    Label15: TLabel;
    Label17: TLabel;
    P: TLayout;
    Edit4: TEdit;
    Layout17: TLayout;
    btnAddAlimento: TRectangle;
    Layout18: TLayout;
    Image7: TImage;
    Label20: TLabel;
    edtCancelaAlimento: TRectangle;
    Layout19: TLayout;
    Image10: TImage;
    Label21: TLabel;
    edtDataTrato: TDateEdit;
    Label4: TLabel;
    edtImsPV: TEdit;
    Layout4: TLayout;
    GridSimulaTrato: TStringGrid;
    Column1: TColumn;
    StringColumn1: TStringColumn;
    FloatColumn1: TFloatColumn;
    FloatColumn2: TFloatColumn;
    FloatColumn3: TFloatColumn;
    TabAuxiliar: TTabControl;
    tbiPrimeiroTrato: TTabItem;
    tbiAlteraRacao: TTabItem;
    Layout5: TLayout;
    Layout6: TLayout;
    Rectangle6: TRectangle;
    Layout7: TLayout;
    Label5: TLabel;
    lblLote: TLabel;
    lblCurral: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblDia: TLabel;
    Layout8: TLayout;
    Label9: TLabel;
    Rectangle10: TRectangle;
    Layout10: TLayout;
    Label19: TLabel;
    edtNovaRacao: TEdit;
    EditButton1: TEditButton;
    Layout11: TLayout;
    Rectangle11: TRectangle;
    Layout16: TLayout;
    Image6: TImage;
    Label22: TLabel;
    Rectangle12: TRectangle;
    Layout20: TLayout;
    Image11: TImage;
    Label23: TLabel;
    PopupMenu1: TPopupMenu;
    mnuGerarPrimeroNovamente: TMenuItem;
    tbiRacaoPlan: TTabItem;
    GRID_RACAO_LOTE: TStringGrid;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    TreeViewItem1: TTreeViewItem;
    Image13: TImage;
    Rectangle13: TRectangle;
    Layout21: TLayout;
    Label14: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Layout22: TLayout;
    Edit1: TEdit;
    edtMsRacao: TEdit;
    edtRacao: TEdit;
    TreeViewItem2: TTreeViewItem;
    Image14: TImage;
    Layout23: TLayout;
    Rectangle14: TRectangle;
    TreeView3: TTreeView;
    btnAlterarPlan: TTreeViewItem;
    Image15: TImage;
    Layout24: TLayout;
    layPlanAtual: TLayout;
    Label6: TLabel;
    Layout26: TLayout;
    Layout27: TLayout;
    edtPlanejamentoAtual: TEdit;
    EditButton2: TEditButton;
    btnConfirmaAlterPlan: TRectangle;
    Layout25: TLayout;
    Image16: TImage;
    Label25: TLabel;
    qryAux: TFDQuery;
    btnGeraLista: TRectangle;
    Layout28: TLayout;
    Image17: TImage;
    Label27: TLabel;
    Layout9: TLayout;
    StringGrid2: TStringGrid;
    Layout29: TLayout;
    Rectangle9: TRectangle;
    Label12: TLabel;
    Layout30: TLayout;
    Image18: TImage;
    EdtDataIni: TDateEdit;
    Label18: TLabel;
    edtDataFim: TDateEdit;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    StringColumn4: TStringColumn;
    CheckColumn1: TCheckColumn;
    Layout31: TLayout;
    Label28: TLabel;
    lblTratosSELE: TLabel;
    layDadosOrigemDestino: TLayout;
    Rectangle15: TRectangle;
    Layout32: TLayout;
    Layout33: TLayout;
    NumberBox1: TNumberBox;
    layProdutorOrigem: TLayout;
    lblLocal: TLabel;
    edtLocal: TEdit;
    edtBuscaProdutorOrigem: TEditButton;
    ClearEditButton3: TClearEditButton;
    Û: TLayout;
    Label29: TLabel;
    edtDataEnt: TDateEdit;
    Layout34: TLayout;
    Rectangle16: TRectangle;
    Layout35: TLayout;
    Layout36: TLayout;
    NumberBox2: TNumberBox;
    Layout37: TLayout;
    Label30: TLabel;
    edtPlanejamentoNutri: TEdit;
    EditButton3: TEditButton;
    ClearEditButton1: TClearEditButton;
    Label31: TLabel;
    edtCurralF: TEdit;
    Rectangle17: TRectangle;
    TreeView4: TTreeView;
    btnAlteraTratos: TTreeViewItem;
    Image19: TImage;
    layPopUpCad: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout234: TLayout;
    Layout235: TLayout;
    Layout236: TLayout;
    Label103: TLabel;
    Image161: TImage;
    Layout237: TLayout;
    Rectangle48: TRectangle;
    Label104: TLabel;
    btnVoltar: TLabel;
    GridTratosAltera: TStringGrid;
    StringColumn5: TStringColumn;
    StringColumn6: TStringColumn;
    StringColumn7: TStringColumn;
    TreeView5: TTreeView;
    btnNovoTrato: TTreeViewItem;
    Image20: TImage;
    btnEditaTrato: TTreeViewItem;
    Image21: TImage;
    btnExcluiTrato: TTreeViewItem;
    Image22: TImage;
    layNovoAlimento: TLayout;
    Rectangle18: TRectangle;
    Layout38: TLayout;
    C: TRectangle;
    Layout39: TLayout;
    Edit3: TEdit;
    edtPercent: TEdit;
    Layout40: TLayout;
    Label32: TLabel;
    Label33: TLabel;
    Layout41: TLayout;
    Rectangle19: TRectangle;
    Layout42: TLayout;
    Image23: TImage;
    Label35: TLabel;
    Rectangle20: TRectangle;
    Layout43: TLayout;
    Image24: TImage;
    Label36: TLabel;
    Rectangle21: TRectangle;
    Layout44: TLayout;
    Label37: TLabel;
    Label38: TLabel;
    Layout45: TLayout;
    Edit5: TEdit;
    edtTrato: TEdit;
    Layout46: TLayout;
    Label34: TLabel;
    cbxTipoLote: TComboBox;
    cbxTipoLoteF: TComboBox;
    Label39: TLabel;
    procedure FormShow(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure TreePrimeiroTratoClick(Sender: TObject);
    procedure btnAddAlimentoClick(Sender: TObject);
    procedure btnBuscaAlimClick(Sender: TObject);
    procedure edtCancelaAlimentoClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure mnuGerarPrimeroNovamenteClick(Sender: TObject);
    procedure edtImsPVKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure GRID_RACAO_LOTEEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure btnAlterarPlanClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnConfirmaAlterPlanClick(Sender: TObject);
    procedure btnGeraListaClick(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure StringGrid2EditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtBuscaProdutorOrigemClick(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure TreeAlterarRacaoClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnAlteraTratosClick(Sender: TObject);
    procedure Image161Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnNovoTratoClick(Sender: TObject);
    procedure btnEditaTratoClick(Sender: TObject);
    procedure btnExcluiTratoClick(Sender: TObject);
    procedure Rectangle19Click(Sender: TObject);
    procedure Rectangle20Click(Sender: TObject);
    procedure Rectangle48Click(Sender: TObject);
  private
    vIdCurral,vIdPlan,vIdPlanAtual,vIdPlanNovo,vIdRacaoNova,vIdMsRacao,vTratos,
    vNomePlanAtual,vNomePlanNovo,vIdRacaoSelect,vValorRacaoSelect:string;
    vEditaTrato:integer;
  public
    procedure Filtro;
    procedure GeraGridSimulaTrato(idLote,ImsPv:string);
    procedure ContaTratosSelecionados;
    procedure GridDeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
  end;

var
  frmLoteNutricional: TfrmLoteNutricional;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal, USeviceConfinamento, UPlanConfi, UCadRaca,
  UCadRacao, UdmReportConf, URelatorioZooConf, UCurrais, UCurralConfinamento;

procedure TfrmLoteNutricional.btnAddAlimentoClick(Sender: TObject);
var
 i:integer;
 vPrevisto:integer;
begin
 if edtPlanejamento.Text.Length=0 then
 begin
   MyShowMessage('Informe o Planejamento!!',false);
   Exit;
 end;
 if edtDataTrato.DateTime<ServiceConf.TLoteNutricionalDATA_ENTRADA.AsDateTime then
 begin
   MyShowMessage('Data primeiro trato não pode ser menor que data de entrada do Lote!!',false);
   Exit;
 end;
 try
 ServiceConf.GeraPrimeiroTratoLote(
  ServiceConf.TLoteNutricionalID.AsString,
  FormatDateTime('mm/dd/yyyy',edtDataTrato.Date),
  vIdPlan,edtImsPV.Text);
  for I := 0 to GridSimulaTrato.RowCount-1 do
  begin
    vPrevisto := strToInt(GridSimulaTrato.Cells[4,I]);
    with qryAux,qryAux.SQL do
    begin
     Clear;
     Add('INSERT INTO fornecimento_conf(');
     Add('id_lote,');
     Add('id_local,');
     Add('data_forn,');
     Add('trato,');
     Add('id_racao,');
     Add('ms_racao,');
     Add('valor_kg_racao,');
     Add('previsto_mn_kg,');
     Add('id_usuario)');
     Add('VALUES(');
     Add(ServiceConf.TLoteNutricionalID.AsString+',');
     Add(ServiceConf.TLoteNutricionalID_LOCAL.AsString+',');
     Add(FormatDateTime('yyyy-mm-dd',edtDataTrato.Date).QuotedString+',');
     Add(GridSimulaTrato.Cells[0,I]+',');
     Add(vIdRacaoSelect+',');
     Add(StringReplace(edtMsRacao.Text,',','.',[rfReplaceAll])+',');
     Add(StringReplace(vValorRacaoSelect,',','.',[rfReplaceAll])+',');
     Add(intToStr(vPrevisto)+',');
     Add(serviceDB.vIdUserLogado);
     Add(')');
     qryAux.SQL.Text;
     ExecSQL;
    end;
  end;
  MyShowMessage('Tratos gerados com sucesso!',false);
  ServiceConf.AbreDadosLotesGeral(ServiceConf.TLoteNutricionalID.AsString);
  lblTotalAnimais.Text := 'Total de Animais: '+intToStr(gridAnimais.RowCount);
  TreePrimeiroTrato.Visible := ServiceConf.TLoteNutricionalDATA_PRIMEIRO_TRATO.AsVariant=null;
  layGeraTratos.Visible := false;
 except
  on E : Exception do
   ShowMessage('Error ao gerar tratos : '+E.Message);
 end;
end;

procedure TfrmLoteNutricional.btnBuscaAlimClick(Sender: TObject);
begin
  frmPlanNutriConfi := TfrmPlanNutriConfi.Create(nil);
  try
    frmPlanNutriConfi.ShowModal;
  finally
    edtPlanejamento.text          := ServiceConf.PlanNutriNOME.AsString;
    vIdPlan                       := ServiceConf.PlanNutriID.AsString;
    edtImsPV.Text                 := ServiceConf.PlanNutriIMS_PV.AsString;
    edtMsRacao.Text               := ServiceConf.RetornaMsRacaoPlanejamentoLote(vIdPlan);
    edtRacao.Text                 := ServiceConf.vRacaoSelecionada;
    frmPlanNutriConfi.Free;
  end;
end;

procedure TfrmLoteNutricional.btnConfirmaAlterPlanClick(Sender: TObject);
begin
//  TThread.CreateAnonymousThread(procedure
//   begin
//    TThread.Synchronize(nil, procedure
//    begin
     ServiceConf.AlteraIdPlanLote(ServiceConf.TLoteNutricionalID.AsString,vIdPlanNovo);
     ServiceConf.AbreDadosLotesGeral(ServiceConf.TLoteNutricionalID.AsString);
     MyShowMessage('Lote Atualizado com sucesso!',false);
//    end);
//   end).Start;
end;

procedure TfrmLoteNutricional.btnConfirmaClick(Sender: TObject);
var
 idLote:string;
begin
 if edtDataEnt.Date>date then
 begin
   MyShowMessage('Data de entrada nao pode ser futura!',false);
   Exit;
 end;
 if edtLocal.Text.Length=0 then
 begin
   MyShowMessage('Informe o Curral do Lote!',false);
   Exit;
 end;
 if edtPlanejamentoNutri.Text.Length=0 then
 begin
   MyShowMessage('Informe o Planejamento do Lote!',false);
   Exit;
 end;
 if cbxTipoLote.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo de Lote!',false);
   Exit;
 end;
 try
  ServiceConf.CriarLoteNutricional(vIdCurral,FormatDateTime('mm/dd/yyyy',edtDataEnt.Date),cbxTipoLote.ItemIndex.ToString);

  idlote := ServiceConf.RetornaLoteLocal(vIdCurral);
  if idlote.Length>0 then
   ServiceConf.AlteraIdLoteAnimais(idLote,vIdCurral);
  ServiceConf.AtualizaLotesQtdCabPesoAtivos;
  ServiceConf.AbreLotes('');
  MudarAba(tbimnu,sender);
 except
  on E : Exception do
   ShowMessage('Error ao Criar Lote : '+E.Message);
 end;

end;

procedure TfrmLoteNutricional.btnEditaTratoClick(Sender: TObject);
begin
  edtTrato.Text           := GridTratosAltera.Cells[1,GridTratosAltera.Row];
  edtPercent.Text         := GridTratosAltera.Cells[2,GridTratosAltera.Row];
  vEditaTrato             := 1;
  layNovoAlimento.Visible := true;
end;

procedure TfrmLoteNutricional.btnExcluiTratoClick(Sender: TObject);
begin
  GridDeleteRow(GridTratosAltera.Row,GridTratosAltera);
end;

procedure TfrmLoteNutricional.btnGeraListaClick(Sender: TObject);
begin
 filtro;
end;

procedure TfrmLoteNutricional.btnNovoTratoClick(Sender: TObject);
begin
  if GridTratosAltera.RowCount>0 then
   edtTrato.Text          := intToStr(GridTratosAltera.RowCount+1)
  else
   edtTrato.Text          := '1';

  edtPercent.Text         := '';
  vEditaTrato             := 0;
  layNovoAlimento.Visible := true;
end;

procedure TfrmLoteNutricional.btnVoltarClick(Sender: TObject);
begin
 layPopUpCad.Visible := FALSE;
end;

procedure TfrmLoteNutricional.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
 edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

procedure TfrmLoteNutricional.ContaTratosSelecionados;
var
 I,x:integer;
 vConumText:string;
begin
 vTratos:='';
 x      :=0;
 for I := 0 to StringGrid2.RowCount-1 do
 begin
   vConumText :=StringGrid2.Cells[3,I];
   if vConumText= 'True' then
   begin
    vTratos:=vTratos+StringGrid2.Cells[1,I]+',';
    x:=x+1;
   end
 end;
 vTratos := COPY(vTratos,0,vTratos.Length-1);
 lblTratosSELE.Text := inttoStr(x);
end;

procedure TfrmLoteNutricional.EditButton1Click(Sender: TObject);
begin
  frmCadRacao := TfrmCadRacao.Create(nil);
  try
    frmCadRacao.ShowModal;
  finally
    edtNovaRacao.text             := ServiceConf.TRacaoNOME.AsString;
    vIdRacaoNova                  := ServiceConf.TRacaoID.AsString;
    frmCadRacao.Free;
  end;
end;

procedure TfrmLoteNutricional.EditButton2Click(Sender: TObject);
begin
 frmPlanNutriConfi := TfrmPlanNutriConfi.Create(nil);
  try
    frmPlanNutriConfi.ShowModal;
  finally
    if frmPlanNutriConfi.GridRacoes.RowCount=0 then
    begin
      MyShowMessage('Planejamento sem Ração, impossivel utilizar!',false);
      frmPlanNutriConfi.Free;
    end
    else
    begin
     edtPlanejamentoAtual.text     := ServiceConf.PlanNutriNOME.AsString;
     vIdPlanNovo                   := ServiceConf.PlanNutriID.AsString;
     btnConfirmaAlterPlan.Enabled  := vIdPlanNovo<>vIdPlanAtual;
     frmPlanNutriConfi.Free;
    end;
  end;
end;

procedure TfrmLoteNutricional.EditButton3Click(Sender: TObject);
begin
  frmPlanNutriConfi := TfrmPlanNutriConfi.Create(nil);
  try
    frmPlanNutriConfi.ShowModal;
  finally
    edtPlanejamentoNutri.text          := ServiceConf.PlanNutriNOME.AsString;
    vIdPlan                       := ServiceConf.PlanNutriID.AsString;
    frmPlanNutriConfi.Free;
  end;
end;

procedure TfrmLoteNutricional.edtBuscaProdutorOrigemClick(Sender: TObject);
begin
  serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'1');
  frmCadCurralConf := TfrmCadCurralConf.Create(nil);
  try
    frmCadCurralConf.ShowModal;
  finally
  begin
    vIdCurral := serviceDB.TableCurraisID.AsString;
    if not ServiceConf.VerificaLoteAtivo(vIdCurral) then
    begin
      MyShowMessage('Local ja possui lote ativo',false);
      edtLocal.Text :='';
    end
    else
      edtLocal.Text :=serviceDB.TableCurraisCODIGO.AsString;
    frmCadCurralConf.Release;
  end;
  end
end;

procedure TfrmLoteNutricional.edtCancelaAlimentoClick(Sender: TObject);
begin
  layGeraTratos.Visible := false;
end;

procedure TfrmLoteNutricional.edtImsPVKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
 if key=13 then
 begin
  GeraGridSimulaTrato(ServiceConf.TLoteNutricionalID.AsString,
  StringReplace(edtImsPV.Text,',','.',[rfReplaceAll]));
 end;
end;

procedure TfrmLoteNutricional.Filtro;
var
 vFiltro:string;
begin
 if edtFiltroName.Text.Length>0 then
  vFiltro:=vFiltro+' AND A.ID='+edtFiltroName.Text;
 if edtCurralF.Text.Length>0 then
  vFiltro:=vFiltro+' AND B.CODIGO LIKE '+QuotedStr('%'+edtCurralF.Text+'%');
 if cbxStatusF.ItemIndex=0 then
  vFiltro:=vFiltro+' AND A.STATUS=1';
 if cbxStatusF.ItemIndex=1 then
  vFiltro:=vFiltro+' AND A.STATUS>-1';
 if cbxStatusF.ItemIndex=2 then
  vFiltro:=vFiltro+' AND A.STATUS=0';
 if chkPeriodoProc.IsChecked then
 begin
  vFiltro:=vFiltro+' AND A.DATA_ENTRADA BETWEEN '+
   FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date)+ ' AND '+
   FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date);
 end;
 if cbxTipoLoteF.ItemIndex>0 then
  vFiltro:=vFiltro+' AND A.TIPOLOTE='+IntToStr(cbxTipoLoteF.ItemIndex-1);

 ServiceConf.AbreLotes(vFiltro);
end;

procedure TfrmLoteNutricional.FormShow(Sender: TObject);
begin
  layNovoAlimento.Visible       := false;
  layPopUpCad.Visible           := false;
  ServiceConf.AtualizaLotesQtdCabPesoAtivos;
  TabControl1.ActiveTab         := tbiPlan;
  btnConfirmaAlterPlan.Enabled  := false;
  layPlanAtual.Enabled          := false;
  TabAuxiliar.TabPosition       := TTabPosition.None;
  layGeraTratos.Visible         := false;
  TreePrimeiroTrato.Visible     := false;
  ServiceConf.AbreLotes('');
  inherited;
end;

procedure TfrmLoteNutricional.GeraGridSimulaTrato(idLote, ImsPv: string);
var
 i:integer;
 vMsRacao:string;
begin
  vMsRacao := ServiceConf.RetornaMsRacaoPlanejamentoLote(vIdPlan);
  ServiceConf.AbreSimulaPrimeiroTrato(idLote,imsPv,vMsRacao );
  if ServiceConf.qrySimulaPrimeiroTrato.IsEmpty then
   GridSimulaTrato.RowCount :=0
  else
  begin
     GridSimulaTrato.RowCount :=ServiceConf.qrySimulaPrimeiroTrato.RecordCount;
     i:=0;
     ServiceConf.qrySimulaPrimeiroTrato.First;
     while not ServiceConf.qrySimulaPrimeiroTrato.eof do
     begin
        GridSimulaTrato.Cells[0,i] :=ServiceConf.qrySimulaPrimeiroTratoTRATO.AsString;
        GridSimulaTrato.Cells[1,i] :=ServiceConf.qrySimulaPrimeiroTratoPERCENT.AsString;
        GridSimulaTrato.Cells[2,i] :=ServiceConf.qrySimulaPrimeiroTratoQTDE_CAB.AsString;
        GridSimulaTrato.Cells[3,i] :=ServiceConf.qrySimulaPrimeiroTratoPESO_MEDIO.AsString;
        GridSimulaTrato.Cells[4,i] :=intToStr(ServiceConf.qrySimulaPrimeiroTratoMNTRATO.AsInteger);
        i:=i+1;
        ServiceConf.qrySimulaPrimeiroTrato.Next;
     end;
  end;
end;

procedure TfrmLoteNutricional.GridDeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
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

procedure TfrmLoteNutricional.mnuGerarPrimeroNovamenteClick(Sender: TObject);
begin
  if not ServiceConf.RetornaTratoGerado(ServiceConf.TLoteNutricionalID.AsString) then
  begin
   MyShowMessage('Existe tratos ativos para esse Lote, delete antes!!',false);
   Exit;
  end;
  TabAuxiliar.ActiveTab := tbiPrimeiroTrato;

  ServiceConf.AbrePlanejamentoNutriConfLote(ServiceConf.TLoteNutricionalID_PLANEJAMETO.AsString);
  if not ServiceConf.LOTE_RACAO_PLAN.IsEmpty then
   begin
    edtDataTrato.DateTime:= ServiceConf.TLoteNutricionalDATA_ENTRADA.AsDateTime;
    edtPlanejamento.Text := ServiceConf.PlanNutriNOME.AsString;
    edtImsPV.Text        := ServiceConf.PlanNutriIMS_PV.AsString;
    vIdPlan              := ServiceConf.PlanNutriID.AsString;
    edtMsRacao.Text      := ServiceConf.RetornaMsRacaoPlanejamentoLote(vIdPlan);
    edtRacao.Text        := ServiceConf.vRacaoSelecionada;
    vIdRacaoSelect       := ServiceConf.vidRacaoSelecionada;
    vValorRacaoSelect    := ServiceConf.vRacaoValorKG;
    GeraGridSimulaTrato(ServiceConf.TLoteNutricionalID.AsString,
     StringReplace(edtImsPV.Text,',','.',[rfReplaceAll]));
   end
   else
   begin
    ServiceConf.AbrePlanejamentoNutriConf(' and id='+ServiceConf.TLoteNutricionalID_PLANEJAMETO.AsString);
    edtDataTrato.DateTime:= ServiceConf.TLoteNutricionalDATA_ENTRADA.AsDateTime;
    edtPlanejamento.Text := ServiceConf.PlanNutriNOME.AsString;
    edtImsPV.Text        := ServiceConf.PlanNutriIMS_PV.AsString;
    vIdPlan              := ServiceConf.PlanNutriID.AsString;
    edtMsRacao.Text      := ServiceConf.RetornaMsRacaoPlanejamentoLote(vIdPlan);
    edtRacao.Text        := ServiceConf.vRacaoSelecionada;
    vIdRacaoSelect       := ServiceConf.vidRacaoSelecionada;
    vValorRacaoSelect    := ServiceConf.vRacaoValorKG;
    GeraGridSimulaTrato(ServiceConf.TLoteNutricionalID.AsString,
     StringReplace(edtImsPV.Text,',','.',[rfReplaceAll]));
   end;
   layGeraTratos.Visible     := true;
end;

procedure TfrmLoteNutricional.Rectangle11Click(Sender: TObject);
begin
 if edtNovaRacao.Text.Length=0 then
 begin
   MyShowMessage('Informe a Ração Nova!!',false);
   Exit;
 end;

 if edtDataFim.Date<EdtDataIni.Date then
 begin
   MyShowMessage('Data fim deve ser maior que data inicio!!',false);
   Exit;
 end;

 if lblTratosSELE.Text='0' then
 begin
   MyShowMessage('Selecione pelo menos um trato!!',false);
   Exit;
 end;

 MyShowMessage('Deseja Realmente Alterar a ração dos tratos selecionados ate a data final informada?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
     try
      ServiceConf.AlteraRacaoPlanejadaPeriodo(
       ServiceConf.TLoteNutricionalID.AsString,
       FormatDateTime('mm/dd/yyyy',EdtDataIni.Date).QuotedString,
       FormatDateTime('mm/dd/yyyy',edtDataFim.Date).QuotedString,
       vTratos,vIdRacaoNova);
      MyShowMessage('Ração Alterada com sucesso!',false);
      ServiceConf.AbreDetLotesPlanejamento(ServiceConf.TLoteNutricionalID.AsString);
      layGeraTratos.Visible := false;
     except
      on E : Exception do
       ShowMessage('Error ao Alterar Ração do Lote : '+E.Message);
     end;
  end;
end;



end;

procedure TfrmLoteNutricional.Rectangle19Click(Sender: TObject);
begin
 if edtTrato.Text.Length=0 then
 begin
   MyShowMessage('Informe o trato!',false);
   Exit;
 end;
 if (edtPercent.Text.Length=0) or (edtPercent.Text.ToDouble<=0) then
 begin
   MyShowMessage('Informe a Porcentagem!',false);
   Exit;
 end;
 if vEditaTrato=0 then//insere
 begin
  GridTratosAltera.RowCount := GridTratosAltera.RowCount+1;
  GridTratosAltera.Cells[0,GridTratosAltera.RowCount-1]:= ServiceConf.TLoteNutricionalid.AsString;
  GridTratosAltera.Cells[1,GridTratosAltera.RowCount-1]:= edtTrato.Text;
  GridTratosAltera.Cells[2,GridTratosAltera.RowCount-1]:= edtPercent.Text;
 end;
 if vEditaTrato=1 then//edita
 begin
  GridTratosAltera.Cells[1,GridTratosAltera.Row]:= edtTrato.Text;
  GridTratosAltera.Cells[2,GridTratosAltera.Row]:= edtPercent.Text;
 end;
 layNovoAlimento.Visible := false;
end;

procedure TfrmLoteNutricional.Rectangle20Click(Sender: TObject);
begin
   layNovoAlimento.Visible := false;
end;

procedure TfrmLoteNutricional.Rectangle48Click(Sender: TObject);
var
 vSomaPecent:Double;
 I:Integer;
 vQry :TFDQuery;
begin
  vSomaPecent :=0;
  for I := 0 to GridTratosAltera.RowCount-1 do
  begin
    vSomaPecent := vSomaPecent+GridTratosAltera.Cells[2,I].ToDouble;
  end;
  if vSomaPecent<>100 then
  begin
    MyShowMessage('Porcentagem deve fechar 100%',false);
    Exit;
  end;
  ServiceConf.DeletaPlanTratosLotes(ServiceConf.TLoteNutricionalid.AsString);

  vQry            := TFDQuery.Create(nil);
  vQry.Connection := serviceDB.FCon;

  for I := 0 to GridTratosAltera.RowCount-1 do
  begin
     with vQry,vQry.SQL do
     begin
       Clear;
       Add('INSERT INTO DET_LOTE_TRATOS(ID_LOTE,TRATO,PERCENT,ID_USUARIO)');
       Add('VALUES(:ID_LOTE,:TRATO,:PERCENT,:ID_USUARIO)');
       ParamByName('ID_LOTE').AsInteger    := ServiceConf.TLoteNutricionalid.AsInteger;
       ParamByName('TRATO').AsInteger      := GridTratosAltera.Cells[1,I].ToInteger;
       ParamByName('PERCENT').AsFloat      := GridTratosAltera.Cells[2,I].ToDouble;
       ParamByName('ID_USUARIO').AsInteger := serviceDB.vIdUserLogado.ToInteger;
       ExecSQL;
     end;
  end;
  ServiceConf.DET_LOTE_TRATOS.Close;
  ServiceConf.DET_LOTE_TRATOS.Open;

  ServiceConf.AtualizaLotesPlanejamento(ServiceConf.TLoteNutricionalID_PLANEJAMETO.AsString);
  MyShowMessage('Lotes Atualizados com sucesso!',false);

//  ServiceConf.AtualizaTratosLotesInd(ServiceConf.TLoteNutricionalid.AsString);
  ServiceConf.DET_LOTE_PLANEJAMENTO.Close;
  ServiceConf.DET_LOTE_PLANEJAMENTO.Open;
  layPopUpCad.Visible  := false;
  vQry.Free;
end;

procedure TfrmLoteNutricional.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
 if serviceConf.TLoteNutricionalID.AsString.Length>0 then
 begin
  ServiceConf.AbreDadosLotesGeral(ServiceConf.TLoteNutricionalID.AsString);
  lblTotalAnimais.Text := 'Total de Animais: '+intToStr(gridAnimais.RowCount);
  TreePrimeiroTrato.Visible :=
  (ServiceConf.TLoteNutricionalDATA_PRIMEIRO_TRATO.AsVariant=null) AND
  (ServiceConf.TLoteNutricionalQTDE_CAB.AsString.Length>0);
  TreeItemExcluir.Visible   := (ServiceConf.TLoteNutricionalQTDE_CAB.AsString.Length=0);
  edtPlanejamentoAtual.Text := ServiceConf.TLoteNutricionalPLANEJAMENTO.AsString;
  vIdPlanAtual              := ServiceConf.TLoteNutricionalID_PLANEJAMETO.AsString;
 end;
end;

procedure TfrmLoteNutricional.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

procedure TfrmLoteNutricional.StringGrid1SelChanged(Sender: TObject);
begin
 if serviceConf.TLoteNutricionalID.AsString.Length>0 then
 begin
  ServiceConf.AbreDadosLotesGeral(ServiceConf.TLoteNutricionalID.AsString);
  lblTotalAnimais.Text := 'Total de Animais: '+intToStr(gridAnimais.RowCount);
  TreePrimeiroTrato.Visible := ServiceConf.TLoteNutricionalDATA_PRIMEIRO_TRATO.AsVariant=null;
 end;
end;

procedure TfrmLoteNutricional.StringGrid2EditingDone(Sender: TObject;
  const ACol, ARow: Integer);
begin
 ContaTratosSelecionados;
end;

procedure TfrmLoteNutricional.GRID_RACAO_LOTEEditingDone(Sender: TObject;
  const ACol, ARow: Integer);
begin
 try
  ServiceConf.AtualizaGMDRacaoLote(
   ServiceConf.TLoteNutricionalID.AsString,
   ServiceConf.LOTE_RACAO_PLANID.AsString,
   GRID_RACAO_LOTE.Cells[2,GRID_RACAO_LOTE.Row],
   FormatDateTime('mm/dd/yyyy',date),
   FormatDateTime('mm/dd/yyyy',ServiceConf.TLoteNutricionalDATA_ENTRADA.AsDateTime)
   );
  ServiceConf.AtualizaLotesAtivosIDLote(ServiceConf.TLoteNutricionalID.AsString);
  MyShowMessage('GMD ATUALIZADO COM SUCESSO!',false);
  ServiceConf.AbreDadosLotesGeral(ServiceConf.TLoteNutricionalID.AsString);
 except
 end;
end;

procedure TfrmLoteNutricional.Image161Click(Sender: TObject);
begin
  layPopUpCad.Visible := FALSE;
end;

procedure TfrmLoteNutricional.Image18Click(Sender: TObject);
begin
  layGeraTratos.Visible := false;
end;

procedure TfrmLoteNutricional.TreeAlterarRacaoClick(Sender: TObject);
var
 I:integer;
begin
  edtNovaRacao.Text      :='';
  StringGrid2.RowCount   :=0;
  ServiceConf.DET_LOTE_PLANEJAMENTO.Filtered := false;
  ServiceConf.DET_LOTE_PLANEJAMENTO.Filter   := 'ID_LOTE='+ServiceConf.TLoteNutricionalID.AsString+
   '  AND DATA='+DateToStr(ServiceConf.DET_LOTE_PLANEJAMENTODATA.AsDateTime).QuotedString;
  ServiceConf.DET_LOTE_PLANEJAMENTO.Filtered := true;
  I :=0;
  StringGrid2.RowCount   := ServiceConf.DET_LOTE_PLANEJAMENTO.RecordCount;
  ServiceConf.DET_LOTE_PLANEJAMENTO.First;
  while not ServiceConf.DET_LOTE_PLANEJAMENTO.Eof do
  begin
   StringGrid2.Cells[0,I] := ServiceConf.DET_LOTE_PLANEJAMENTODATA.AsString;
   StringGrid2.Cells[1,I] := ServiceConf.DET_LOTE_PLANEJAMENTOTRATO.AsString;
   StringGrid2.Cells[2,I] := ServiceConf.DET_LOTE_PLANEJAMENTORACAO_NOME.AsString;
   StringGrid2.Cells[3,I] :=BoolToStr(false);
   inc(i);
   ServiceConf.DET_LOTE_PLANEJAMENTO.Next;
  end;

  lblLote.Text       := ServiceConf.DET_LOTE_PLANEJAMENTOID_LOTE.AsString;
  lblCurral.Text     := ServiceConf.DET_LOTE_PLANEJAMENTOCURRAL.AsString;
  lblDia.Text        := ServiceConf.DET_LOTE_PLANEJAMENTODIA.AsString;
  EdtDataIni.Text       := ServiceConf.DET_LOTE_PLANEJAMENTODATA.AsString;
  edtDataFim.Text       := ServiceConf.DET_LOTE_PLANEJAMENTODATA.AsString;
  TabAuxiliar.ActiveTab := tbiAlteraRacao;
  layGeraTratos.Visible := true;
end;

procedure TfrmLoteNutricional.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse Lote?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
    try
     ServiceConf.TLoteNutricional.Edit;
     ServiceConf.TLoteNutricionalSTATUS.AsInteger:=-1;
     ServiceConf.TLoteNutricional.ApplyUpdates(-1);
     Filtro;
     myShowMessage('Registro Excluido com Sucesso!',false);
    except
    on E : Exception do
     begin
       myShowMessage('Exception class name = '+E.ClassName,false);
       myShowMessage('Exception message = '+E.Message,false);
     end;
    end;
  end;
  0:
   begin

   end;
  end;
end;

procedure TfrmLoteNutricional.TreeItemNovoClick(Sender: TObject);
begin
   edtLocal.Text :='';
   ServiceConf.PlanejamentoPadrao.Close;
   ServiceConf.PlanejamentoPadrao.Open;
   if not ServiceConf.PlanejamentoPadrao.IsEmpty then
   begin
     edtPlanejamentoNutri.Text := ServiceConf.PlanejamentoPadraoNOME.AsString;
     vIdPlan                   := ServiceConf.PlanejamentoPadraoID.AsString;
   end;
   MudarAba(tbiCad,sender);
end;

procedure TfrmLoteNutricional.TreePrimeiroTratoClick(Sender: TObject);
begin
 TabAuxiliar.ActiveTab := tbiPrimeiroTrato;
 ServiceConf.AbrePlanejamentoNutriConfLote(ServiceConf.TLoteNutricionalID_PLANEJAMETO.AsString);
 if not ServiceConf.LOTE_RACAO_PLAN.IsEmpty then
 begin
  edtDataTrato.DateTime:= ServiceConf.TLoteNutricionalDATA_ENTRADA.AsDateTime;
  edtPlanejamento.Text := ServiceConf.PlanNutriNOME.AsString;
  edtImsPV.Text        := ServiceConf.PlanNutriIMS_PV.AsString;
  vIdPlan              := ServiceConf.PlanNutriID.AsString;
  edtMsRacao.Text      := ServiceConf.RetornaMsRacaoPlanejamentoLote(vIdPlan);
  edtRacao.Text        := ServiceConf.vRacaoSelecionada;
  vIdRacaoSelect       := ServiceConf.vidRacaoSelecionada;
  vValorRacaoSelect    := ServiceConf.vRacaoValorKG;
  GeraGridSimulaTrato(ServiceConf.TLoteNutricionalID.AsString,
   StringReplace(edtImsPV.Text,',','.',[rfReplaceAll]));
 end
 else
 begin
  ServiceConf.AbrePlanejamentoNutriConf(' and id='+ServiceConf.TLoteNutricionalID_PLANEJAMETO.AsString);
  edtDataTrato.DateTime:= ServiceConf.TLoteNutricionalDATA_ENTRADA.AsDateTime;
  edtPlanejamento.Text := ServiceConf.PlanNutriNOME.AsString;
  edtImsPV.Text        := ServiceConf.PlanNutriIMS_PV.AsString;
  vIdPlan              := ServiceConf.PlanNutriID.AsString;
  edtMsRacao.Text      := ServiceConf.RetornaMsRacaoPlanejamentoLote(vIdPlan);
  edtRacao.Text        := ServiceConf.vRacaoSelecionada;
  vIdRacaoSelect       := ServiceConf.vidRacaoSelecionada;
  vValorRacaoSelect    := ServiceConf.vRacaoValorKG;
  GeraGridSimulaTrato(ServiceConf.TLoteNutricionalID.AsString,
   StringReplace(edtImsPV.Text,',','.',[rfReplaceAll]));
 end;
 layGeraTratos.Visible     := true;
end;

procedure TfrmLoteNutricional.TreeViewItem1Click(Sender: TObject);
begin
 try
  serviceConf.AtualizaLotesAtivos;
  serviceDB.FCon.Commit;
  Filtro;
  MyShowMessage('Dados Atualizados com Sucesso!',false);
 except

 end;
end;

procedure TfrmLoteNutricional.TreeViewItem2Click(Sender: TObject);
begin
  frmRelatorioZooConf := TfrmRelatorioZooConf.Create(Self);
  try
    frmRelatorioZooConf.ShowModal;
  finally
    frmRelatorioZooConf.Free;
  end;
end;

procedure TfrmLoteNutricional.btnAlterarPlanClick(Sender: TObject);
begin
  layPlanAtual.Enabled      := true;
  vNomePlanAtual            := edtPlanejamentoAtual.Text;
  inherited;
end;

procedure TfrmLoteNutricional.btnAlteraTratosClick(Sender: TObject);
var
 I:Integer;
begin
 ServiceConf.DET_LOTE_TRATOS.First;
 GridTratosAltera.RowCount :=0;
 I:=1;
 while not ServiceConf.DET_LOTE_TRATOS.Eof do
 begin
   GridTratosAltera.RowCount :=I;
   GridTratosAltera.Cells[0,I-1] :=ServiceConf.DET_LOTE_TRATOSID_LOTE.AsString;
   GridTratosAltera.Cells[1,I-1] :=ServiceConf.DET_LOTE_TRATOSTRATO.AsString;
   GridTratosAltera.Cells[2,I-1] :=ServiceConf.DET_LOTE_TRATOSPERCENT.AsString;
   INC(I);
   ServiceConf.DET_LOTE_TRATOS.Next;
 end;
 layPopUpCad.Visible := TRUE;
end;

end.
