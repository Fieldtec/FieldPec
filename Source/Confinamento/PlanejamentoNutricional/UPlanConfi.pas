unit UPlanConfi;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox,db, FMX.Menus, FMX.Effects, FMX.EditBox, FMX.SpinBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPlanNutriConfi = class(TfrmCadPadrao)
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Label3: TLabel;
    Layout3: TLayout;
    TreeView1: TTreeView;
    TreeViewItem1: TTreeViewItem;
    Image3: TImage;
    TreeViewItem3: TTreeViewItem;
    Image6: TImage;
    GridRacoes: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout67: TLayout;
    Rectangle32: TRectangle;
    PTIMA: TLayout;
    Layout68: TLayout;
    Layout69: TLayout;
    B: TLabel;
    edtNome: TEdit;
    Layout4: TLayout;
    Rectangle3: TRectangle;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Label4: TLabel;
    edtObservacao: TEdit;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layNovoAlimento: TLayout;
    TreeInativar: TTreeViewItem;
    Image7: TImage;
    Label8: TLabel;
    cbxStatusF: TComboBox;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Layout8: TLayout;
    lblDietasPlanejadas: TLabel;
    Label5: TLabel;
    Layout9: TLayout;
    TreeView2: TTreeView;
    btnNovaRegra: TTreeViewItem;
    Image4: TImage;
    TreeViewItem4: TTreeViewItem;
    Image10: TImage;
    gridRegra: TStringGrid;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    tbAux: TTabControl;
    tbiNovaRacao: TTabItem;
    tbiTransicao: TTabItem;
    Rectangle6: TRectangle;
    Layout15: TLayout;
    C: TRectangle;
    Layout19: TLayout;
    Edit4: TEdit;
    edtDias: TEdit;
    Layout18: TLayout;
    Label17: TLabel;
    Label18: TLabel;
    Layout20: TLayout;
    btnAddAlimento: TRectangle;
    Layout21: TLayout;
    Image8: TImage;
    Label20: TLabel;
    edtCancelaAlimento: TRectangle;
    Layout22: TLayout;
    Image9: TImage;
    Label21: TLabel;
    Rectangle8: TRectangle;
    Layout23: TLayout;
    Label9: TLabel;
    Label10: TLabel;
    Layout24: TLayout;
    Edit1: TEdit;
    edtOrdem: TEdit;
    Rectangle7: TRectangle;
    Layout16: TLayout;
    Ração: TLabel;
    Label16: TLabel;
    Layout17: TLayout;
    edtRacaoADD: TEdit;
    btnBuscaAlim: TEditButton;
    Edit2: TEdit;
    Rectangle4: TRectangle;
    Layout10: TLayout;
    Layout11: TLayout;
    Label6: TLabel;
    lblRacaoTransicao: TLabel;
    Layout12: TLayout;
    Label7: TLabel;
    lblOrdemTransicao: TLabel;
    Label11: TLabel;
    lblDiasTransicao: TLabel;
    Layout13: TLayout;
    Label12: TLabel;
    lblPlanejamento: TLabel;
    Layout14: TLayout;
    Layout25: TLayout;
    Label13: TLabel;
    Layout26: TLayout;
    edtDiasTransicao: TSpinBox;
    Label14: TLabel;
    Layout27: TLayout;
    Layout28: TLayout;
    Check1Trato: TCheckBox;
    Check4Trato: TCheckBox;
    Check3Trato: TCheckBox;
    Check2Trato: TCheckBox;
    Check5Trato: TCheckBox;
    Layout29: TLayout;
    Check6Trato: TCheckBox;
    Check9Trato: TCheckBox;
    Check8Trato: TCheckBox;
    Check7Trato: TCheckBox;
    Check10Trato: TCheckBox;
    Layout30: TLayout;
    Label15: TLabel;
    Layout31: TLayout;
    cbxRacaoTransicao: TComboBox;
    Layout32: TLayout;
    btnConfirmaRegra: TRectangle;
    Layout33: TLayout;
    Image11: TImage;
    Label19: TLabel;
    Rectangle9: TRectangle;
    Layout34: TLayout;
    Image13: TImage;
    Label22: TLabel;
    qryAux: TFDQuery;
    Layout35: TLayout;
    Image14: TImage;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    TreeViewItem2: TTreeViewItem;
    Image15: TImage;
    Layout36: TLayout;
    Rectangle5: TRectangle;
    lblLayAux: TLabel;
    Layout37: TLayout;
    Image16: TImage;
    Rectangle10: TRectangle;
    Label23: TLabel;
    Label24: TLabel;
    edtDiaIniTr: TEdit;
    edtDiaFimTr: TEdit;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure TreeInativarClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnBuscaAlimClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure btnAddAlimentoClick(Sender: TObject);
    procedure edtCancelaAlimentoClick(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure edtDiasKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure MenuItem2Click(Sender: TObject);
    procedure btnNovaRegraClick(Sender: TObject);
    procedure cbxRacaoTransicaoChange(Sender: TObject);
    procedure btnConfirmaRegraClick(Sender: TObject);
    procedure gridRegraDrawColumnCell(Sender: TObject; const Canvas: TCanvas;
      const Column: TColumn; const Bounds: TRectF; const Row: Integer;
      const Value: TValue; const State: TGridDrawStates);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeViewItem4Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure cbxStatusFChange(Sender: TObject);
    procedure edtFiltroNameChange(Sender: TObject);
    procedure edtDiasTransicaoChange(Sender: TObject);
    procedure edtDiaIniTrChange(Sender: TObject);
    procedure edtDiasTransicaoExit(Sender: TObject);
    procedure edtDiaIniTrExit(Sender: TObject);
  private
    vIdRacao,vIdRacaoTransicao:string;
    procedure Filtro;
    procedure CarregaComboRacaoTransicao(idRacao,idPlan:string);
  public
    { Public declarations }
  end;

var
  frmPlanNutriConfi: TfrmPlanNutriConfi;

implementation

{$R *.fmx}

uses USeviceConfinamento, ServiceDB2, UServiceDB, UPrincipal, UCadRacao;

procedure TfrmPlanNutriConfi.FormCreate(Sender: TObject);
begin
  layNovoAlimento.Visible := false;
  inherited;
end;

procedure TfrmPlanNutriConfi.FormShow(Sender: TObject);
begin
  tbAux.TabPosition := TTabPosition.None;
  ServiceConf.AbrePlanejamentoNutriConf(' AND STATUS=1');
  inherited;
end;

procedure TfrmPlanNutriConfi.MenuItem1Click(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente definir esse planejamento como padrao para novos lotes?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.DefinePlanejamentoPadrao(ServiceConf.PlanNutriID.AsString);
       Filtro;
       myShowMessage('Planejamento definido como padrão com Sucesso!',false);
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

procedure TfrmPlanNutriConfi.MenuItem2Click(Sender: TObject);
begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
     ServiceConf.AtualizaLotesPlanejamento(ServiceConf.PlanNutriID.AsString);
     MyShowMessage('Lotes Atualizados com sucesso!',false);
    end);
   end).Start;
end;

procedure TfrmPlanNutriConfi.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
 if ServiceConf.PlanNutriID.AsString.Length>0 then
  ServiceConf.AbreDetPlanejamentoNutriConf(ServiceConf.PlanNutriID.AsString);
end;

procedure TfrmPlanNutriConfi.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmPlanNutriConfi.StringGrid1SelChanged(Sender: TObject);
begin
 if ServiceConf.PlanNutriID.AsString.Length>0 then
  ServiceConf.AbreDetPlanejamentoNutriConf(ServiceConf.PlanNutriID.AsString);
end;

procedure TfrmPlanNutriConfi.gridRegraDrawColumnCell(Sender: TObject;
  const Canvas: TCanvas; const Column: TColumn; const Bounds: TRectF;
  const Row: Integer; const Value: TValue; const State: TGridDrawStates);
begin
 if ServiceConf.PlanRegraTransicaoTRATO1.AsInteger=1 then
  gridRegra.Columns[3].Visible  := true
 else
  gridRegra.Columns[3].Visible  := false;

 if ServiceConf.PlanRegraTransicaoTRATO2.AsInteger=1 then
  gridRegra.Columns[4].Visible  := true
 else
  gridRegra.Columns[4].Visible  := false;

 if ServiceConf.PlanRegraTransicaoTRATO3.AsInteger=1 then
  gridRegra.Columns[5].Visible  := true
 else
  gridRegra.Columns[5].Visible  := false;


 if ServiceConf.PlanRegraTransicaoTRATO4.AsInteger=1 then
  gridRegra.Columns[6].Visible  := true
 else
  gridRegra.Columns[6].Visible  := false;

 if ServiceConf.PlanRegraTransicaoTRATO5.AsInteger=1 then
  gridRegra.Columns[7].Visible  := true
 else
  gridRegra.Columns[7].Visible  := false;

 if ServiceConf.PlanRegraTransicaoTRATO6.AsInteger=1 then
  gridRegra.Columns[8].Visible  := true
 else
  gridRegra.Columns[8].Visible  := false;

 if ServiceConf.PlanRegraTransicaoTRATO7.AsInteger=1 then
  gridRegra.Columns[9].Visible  := true
 else
  gridRegra.Columns[9].Visible  := false;

 if ServiceConf.PlanRegraTransicaoTRATO8.AsInteger=1 then
  gridRegra.Columns[10].Visible  := true
 else
  gridRegra.Columns[10].Visible  := false;

 if ServiceConf.PlanRegraTransicaoTRATO9.AsInteger=1 then
  gridRegra.Columns[11].Visible  := true
 else
  gridRegra.Columns[11].Visible  := false;

 if ServiceConf.PlanRegraTransicaoTRATO10.AsInteger=1 then
  gridRegra.Columns[12].Visible  := true
 else
  gridRegra.Columns[12].Visible  := false;
end;

procedure TfrmPlanNutriConfi.Image16Click(Sender: TObject);
begin
 layNovoAlimento.Visible := false;
end;

procedure TfrmPlanNutriConfi.TreeInativarClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.PlanNutri.Edit;
       ServiceConf.PlanNutriSTATUS.AsInteger :=0;
       ServiceConf.PlanNutri.ApplyUpdates(-1);
       filtro;
       myShowMessage('Registro Deletado com Sucesso!',false);
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

procedure TfrmPlanNutriConfi.btnAddAlimentoClick(Sender: TObject);
begin
 if edtRacaoADD.Text.Length=-1 then
 begin
   MyShowMessage('Informe o Alimento',false);
   Exit;
 end;
 if (edtDias.Text.Length=-1)or(edtDias.Text='0') then
 begin
   MyShowMessage('Informe os Dias',false);
   Exit;
 end;
  ServiceConf.DetPlanNutri.Insert;
  ServiceConf.DetPlanNutriIDRACAO.AsString            := vidRacao;
  ServiceConf.DetPlanNutriIDPLAN.AsInteger            := ServiceConf.PlanNutriID.AsInteger;
  ServiceConf.DetPlanNutriIDUSUARIO.AsString          := serviceDB.vIdUserLogado;
  ServiceConf.DetPlanNutriORDEM.Asstring              := edtOrdem.Text;
  ServiceConf.DetPlanNutriDIAS.Asstring               := edtDias.Text;
 try
  ServiceConf.DetPlanNutri.ApplyUpdates(-1);
  ServiceConf.GeraPlanNutriValores(ServiceConf.PlanNutriID.AsString);
  ServiceConf.AbreDetPlanejamentoNutriConf(ServiceConf.PlanNutriID.AsString);
  myShowMessage('RAÇÃO Adicionada com sucesso!!',false);
  layNovoAlimento.Visible := false;
 except
  on e : Exception do
    myShowMessage('Erro ao Inserir Ração: '+e.Message,false)
 end;
end;

procedure TfrmPlanNutriConfi.btnBuscaAlimClick(Sender: TObject);
begin
 frmCadRacao := TfrmCadRacao.Create(nil);
  try
    frmCadRacao.ShowModal;
  finally
    if frmCadRacao.vIdRacaoSelect.Length>0 then
    begin
     if ServiceConf.TRacaoSTATUS.AsInteger=2 then
     begin
       MyShowMessage('Ração Irregular Impossivel Incluir nesse Planejamento',false);
     end
     else
     begin
      if ServiceConf.VerificaRacaoPlanExiste(ServiceConf.PlanNutriID.AsString,
       frmCadRacao.vIdRacaoSelect) then
      begin
       edtRacaoADD.text           := ServiceConf.TRacaoNOME.AsString;
       vIdRacao                   := ServiceConf.TRacaoID.AsString;
      end
      else
      begin
        edtRacaoADD.text          := '';
        vIdRacao                   := '';
        MyShowMessage('Ração ja Adicionada nesse Planejamento',false);
      end;
     end;
    end;
    frmCadRacao.Free;
  end;
end;

procedure TfrmPlanNutriConfi.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o Nome do Perfil',false);
   Exit;
 end;
 if ServiceConf.PlanNutri.State=dsInsert then
 begin
   ServiceConf.PlanNutriID_USUARIO.AsString := serviceDB.vIdUserLogado;
   ServiceConf.PlanNutriSTATUS.AsInteger    := 1;
   if not ServiceConf.VerificaNomeExiste(edtNome.Text) then
   begin
     MyShowMessage('Já existe uma ração com esse nome!!',false);
     Exit;
   end;
 end
 else
 begin
  ServiceConf.PlanNutriID_USUARIO.AsString := serviceDB.vIdUserLogado;
  ServiceConf.PlanNutriDATA_ALTERACAO.AsDateTime    := now;
 end;
  ServiceConf.PlanNutriNOME.AsString                := edtNome.Text;
  ServiceConf.PlanNutriOBSERVACAO.AsString          := edtObservacao.Text;
  ServiceConf.PlanNutriID_PROPRIEDADE.AsString      := serviceDB.vIdPropriedade;
  try
    ServiceConf.PlanNutri.ApplyUpdates(-1);
    filtro;
    MyShowMessage('Planejamento cadastrada com sucesso, adicione as Rações!',false);
    MudarAba(tbiMnu,sender);
  except
    on e : Exception do
     myShowMessage('Erro ao Inserir Planejamento: '+e.Message,false)
  end;
end;

procedure TfrmPlanNutriConfi.btnConfirmaRegraClick(Sender: TObject);
begin
 if cbxRacaoTransicao.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Ração para Transição',false);
   Exit;
 end;

 if edtDiasTransicao.Value<=0 then
 begin
   MyShowMessage('Informe os Dias de Transição',false);
   Exit;
 end;

 if edtDiaIniTr.Text.Length=0 then
 begin
   MyShowMessage('Informe o Dia Inicio da Transicao',false);
   Exit;
 end;

 if edtDiaFimTr.Text.Length<=0 then
 begin
   MyShowMessage('Informe os Dias de Transição',false);
   Exit;
 end;

 if(Check1Trato.IsChecked=false)and(Check2Trato.IsChecked=false)and
 (Check3Trato.IsChecked=false)and(Check4Trato.IsChecked=false)and
 (Check5Trato.IsChecked=false)and(Check6Trato.IsChecked=false)and
 (Check7Trato.IsChecked=false)and(Check8Trato.IsChecked=false)and
 (Check9Trato.IsChecked=false)and(Check10Trato.IsChecked=false)
 then
 begin
   MyShowMessage('Informe pelo menos um trato para Transição!!',false);
   Exit;
 end;
  ServiceConf.PlanRegraTransicao.Insert;
  ServiceConf.PlanRegraTransicaoID_USUARIO.AsString         := serviceDB.vIdUserLogado;
  ServiceConf.PlanRegraTransicaoID_RACAO_TRANSICAO.AsString := vIdRacaoTransicao;
  ServiceConf.PlanRegraTransicaoID_RACAO_ATUAL.AsString     := ServiceConf.DetPlanNutriIDRACAO.AsString;
  ServiceConf.PlanRegraTransicaoID_PLANEJAMENTO.AsString    := ServiceConf.PlanNutriID.AsString;
  ServiceConf.PlanRegraTransicaoORDEM.AsString              := lblOrdemTransicao.Text;
  ServiceConf.PlanRegraTransicaoDIA.AsInteger               := trunc(edtDiasTransicao.Value);
  ServiceConf.PlanRegraTransicaoDIA_INICIO.AsString         := edtDiaIniTr.Text;
  ServiceConf.PlanRegraTransicaoDIA_FIM.AsString            := edtDiaFimTr.Text;
  ServiceConf.PlanRegraTransicaoTRATO1.AsInteger            := integer(Check1Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO2.AsInteger            := integer(Check2Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO3.AsInteger            := integer(Check3Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO4.AsInteger            := integer(Check4Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO5.AsInteger            := integer(Check5Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO6.AsInteger            := integer(Check6Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO7.AsInteger            := integer(Check7Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO8.AsInteger            := integer(Check8Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO9.AsInteger            := integer(Check9Trato.IsChecked);
  ServiceConf.PlanRegraTransicaoTRATO10.AsInteger           := integer(Check10Trato.IsChecked);
 try
  ServiceConf.PlanRegraTransicao.ApplyUpdates(-1);
  ServiceConf.PlanRegraTransicao.Close;
  ServiceConf.PlanRegraTransicao.Open;
  myShowMessage('Regra Adicionada com sucesso!!',false);
  layNovoAlimento.Visible := false;
 except
  on e : Exception do
    myShowMessage('Erro ao Inserir Regra: '+e.Message,false)
 end;
end;

procedure TfrmPlanNutriConfi.edtCancelaAlimentoClick(Sender: TObject);
begin
 if ServiceConf.DetPlanNutri.State=dsInsert then
  ServiceConf.DetPlanNutri.CancelUpdates;
  ServiceConf.DetPlanNutri.Close;
  ServiceConf.DetPlanNutri.Open;
 layNovoAlimento.Visible := false;
end;

procedure TfrmPlanNutriConfi.edtDiaIniTrChange(Sender: TObject);
begin
 if edtDiaIniTr.Text.Length>0 then
 begin
     edtDiaFimTr.Text := intToStr(strToInt(edtDiaIniTr.Text)+trunc(edtDiasTransicao.Value));
 end;
end;

procedure TfrmPlanNutriConfi.edtDiaIniTrExit(Sender: TObject);
begin
  if edtDiaIniTr.Text.Length>0 then
 begin
     edtDiaFimTr.Text := intToStr(strToInt(edtDiaIniTr.Text)+trunc(edtDiasTransicao.Value));
 end;
end;

procedure TfrmPlanNutriConfi.edtDiasKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmPlanNutriConfi.edtDiasTransicaoChange(Sender: TObject);
begin
 if edtDiaIniTr.Text.Length>0 then
  edtDiaFimTr.Text := intToStr(strToInt(edtDiaIniTr.Text)+trunc(edtDiasTransicao.Value))
end;

procedure TfrmPlanNutriConfi.edtDiasTransicaoExit(Sender: TObject);
begin
  if edtDiaIniTr.Text.Length>0 then
   edtDiaFimTr.Text := intToStr(strToInt(edtDiaIniTr.Text)+trunc(edtDiasTransicao.Value))
end;

procedure TfrmPlanNutriConfi.edtFiltroNameChange(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmPlanNutriConfi.Filtro;
var
 vFiltro:string;
begin
 vFiltro :='';
 if cbxStatusF.ItemIndex>-1 then
 begin
  case cbxStatusF.ItemIndex of
   0:vFiltro := ' AND STATUS=1';
   1:vFiltro := ' AND STATUS=0';
   2:vFiltro := ' AND STATUS>-1';
  end;
 end;
 if edtNome.Text.Length>0 then
  vFiltro := ' AND NOME LIKE '+QuotedStr('%'+edtNome.Text+'%');
 ServiceConf.AbrePlanejamentoNutriConf(vFiltro);
end;

procedure TfrmPlanNutriConfi.TreeItemEditarClick(Sender: TObject);
begin
  ServiceConf.PlanNutri.Edit;
  edtNome.Text               :=ServiceConf.PlanNutriNOME.AsString;
  edtObservacao.Text         :=ServiceConf.PlanNutriOBSERVACAO.AsString;
  inherited;
end;

procedure TfrmPlanNutriConfi.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.PlanNutri.Edit;
       ServiceConf.PlanNutriSTATUS.AsInteger :=-1;
       ServiceConf.PlanNutri.ApplyUpdates(-1);
       filtro;
       myShowMessage('Registro Deletado com Sucesso!',false);
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

procedure TfrmPlanNutriConfi.TreeItemNovoClick(Sender: TObject);
begin
  ServiceConf.PlanNutri.Insert;
  edtNome.Text               :='';
  edtObservacao.Text         :='';
  inherited;
end;

procedure TfrmPlanNutriConfi.TreeViewItem1Click(Sender: TObject);
begin
  tbAux.ActiveTab  := tbiNovaRacao;
  edtOrdem.Text:=ServiceConf.RetormaMaxOrdem(ServiceConf.PlanNutriID.AsString);
  edtRacaoADD.Text :='';
  edtDias.Text     :='';
  lblLayAux.Text   :='Nova Ração';
  layNovoAlimento.Visible := true;
end;

procedure TfrmPlanNutriConfi.TreeViewItem2Click(Sender: TObject);
begin
     ServiceConf.AtualizaLotesPlanejamento(ServiceConf.PlanNutriID.AsString);
     MyShowMessage('Lotes Atualizados com sucesso!',false);
end;

procedure TfrmPlanNutriConfi.btnNovaRegraClick(Sender: TObject);
var
 x:integer;
begin
  Check1Trato.Visible   := False;
  Check2Trato.Visible   := False;
  Check3Trato.Visible   := False;
  Check4Trato.Visible   := False;
  Check5Trato.Visible   := False;
  Check6Trato.Visible   := False;
  Check7Trato.Visible   := False;
  Check8Trato.Visible   := False;
  Check9Trato.Visible   := False;
  Check10Trato.Visible  := False;

 if GridRacoes.RowCount<2 then
 begin
   MyShowMessage('Planejamento deve ter no minimo duas dietas!',false);
   Exit;
 end;
 lblRacaoTransicao.Text       := ServiceConf.DetPlanNutriRACAONOME.AsString;
 lblOrdemTransicao.Text       := ServiceConf.DetPlanNutriORDEM.AsString;
 lblPlanejamento.Text         := ServiceConf.PlanNutriNOME.AsString;
 lblDiasTransicao.Text        := ServiceConf.DetPlanNutriDIAS.AsString;
 edtDiasTransicao.Max         := ServiceConf.DetPlanNutriDIAS.AsInteger;

 ServiceConf.PlanejamentoTrato.Close;
 ServiceConf.PlanejamentoTrato.Open;
 ServiceConf.PlanejamentoTrato.First;



 for x := 1 to ServiceConf.PlanejamentoTrato.RecordCount do
 begin
   if X=1 then
    Check1Trato.Visible   := true;
   if X=2 then
    Check2Trato.Visible   := true;
   if X=3 then
    Check3Trato.Visible   := true;
   if X=4 then
    Check4Trato.Visible   := true;
   if X=5 then
    Check5Trato.Visible   := true;
   if X=6 then
    Check6Trato.Visible   := true;
   if X=7 then
    Check7Trato.Visible   := true;
   if X=8 then
    Check8Trato.Visible   := true;
   if X=9 then
    Check9Trato.Visible   := true;
   if X=10 then
    Check10Trato.Visible  := true;
 end;
 edtDiasTransicao.Value   :=0;
 CarregaComboRacaoTransicao(ServiceConf.DetPlanNutriIDRACAO.AsString,
  ServiceConf.PlanNutriID.AsString);
 cbxRacaoTransicao.ItemIndex :=-1;

 if ServiceConf.PlanRegraTransicao.IsEmpty then
 begin
   edtDiaIniTr.Text    :='';
   edtDiaFimTr.Text    :='';
   edtDiaIniTr.Enabled := true;
 end
 else
 begin
  edtDiaIniTr.Text    :=ServiceConf.RetornaDiaFimUltimaTransicao(
   ServiceConf.PlanNutriID.AsString
  );
  edtDiaFimTr.Text    :='';
  edtDiaIniTr.Enabled := false;
  edtDiaFimTr.Enabled := false;
 end;

 tbAux.ActiveTab         := tbiTransicao;
 lblLayAux.Text          :='Nova Regra Transição';
 layNovoAlimento.Visible := true;
end;

procedure TfrmPlanNutriConfi.CarregaComboRacaoTransicao(idRacao,
  idPlan: string);
begin
 cbxRacaoTransicao.Items.Clear;
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT B.ID,B.NOME RACAO FROM DET_PLAN_NUTRI_CONFI A');
   Add('JOIN RACAO B ON IDRACAO=B.ID');
   Add('WHERE IDPLAN='+idPlan);
   Add('AND A.STATUS=1');
   Add('AND IDRACAO<>'+idRacao);
   Open;
   while not qryAux.eof do
   begin
    cbxRacaoTransicao.Items.AddObject(FieldByName('RACAO').AsString,TObject(FieldByName('ID').AsInteger));
    qryAux.Next;
   end;
 end;
end;

procedure TfrmPlanNutriConfi.cbxRacaoTransicaoChange(Sender: TObject);
begin
 if cbxRacaoTransicao.ItemIndex>-1 then
  begin
   vIdRacaoTransicao := IntToStr(Integer(cbxRacaoTransicao.Items.Objects[
   cbxRacaoTransicao.ItemIndex]));
  end;
end;

procedure TfrmPlanNutriConfi.cbxStatusFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmPlanNutriConfi.TreeViewItem3Click(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.DetPlanNutri.Edit;
       ServiceConf.DetPlanNutriSTATUS.AsInteger :=-1;
       ServiceConf.DetPlanNutri.ApplyUpdates(-1);
       filtro;
       myShowMessage('Registro Deletado com Sucesso!',false);
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

procedure TfrmPlanNutriConfi.TreeViewItem4Click(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.PlanRegraTransicao.Edit;
       ServiceConf.PlanRegraTransicaoDATA_ULTIMA_ALTERACAO.AsDateTime :=now;
       ServiceConf.PlanRegraTransicaoID_USUARIO_ALTERACAO.AsString    := serviceDB.vIdUserLogado;
       ServiceConf.PlanRegraTransicaoSTATUS.AsInteger :=-1;
       ServiceConf.PlanRegraTransicao.ApplyUpdates(-1);
       ServiceConf.PlanRegraTransicao.Close;
       ServiceConf.PlanRegraTransicao.Open;
       myShowMessage('Registro Deletado com Sucesso!',false);
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

end.
