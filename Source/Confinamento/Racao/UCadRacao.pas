unit UCadRacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls, FMX.ListBox,DB,Winapi.Windows, FMX.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadRacao = class(TfrmCadPadrao)
    Layout1: TLayout;
    Layout3: TLayout;
    Rectangle2: TRectangle;
    Label3: TLabel;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Rectangle3: TRectangle;
    TreeView1: TTreeView;
    TreeNovoAlimento: TTreeViewItem;
    Image3: TImage;
    TreeViewExcluiAlimento: TTreeViewItem;
    Image6: TImage;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout67: TLayout;
    Rectangle32: TRectangle;
    PTIMA: TLayout;
    Layout68: TLayout;
    Layout69: TLayout;
    B: TLabel;
    cbxTipo: TComboBox;
    Layout7: TLayout;
    Rectangle4: TRectangle;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    Layout11: TLayout;
    Rectangle5: TRectangle;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    lblData: TLabel;
    edtDataFormulacao: TDateEdit;
    Label5: TLabel;
    edtValorKG: TEdit;
    Label6: TLabel;
    edtMSRacao: TEdit;
    Label7: TLabel;
    cbxTipoF: TComboBox;
    Label8: TLabel;
    TreeInativar: TTreeViewItem;
    Image7: TImage;
    cbxStatusF: TComboBox;
    layNovoAlimento: TLayout;
    Rectangle6: TRectangle;
    Layout15: TLayout;
    Rectangle7: TRectangle;
    Layout16: TLayout;
    Label13: TLabel;
    Label16: TLabel;
    Layout17: TLayout;
    edtAlimentoADD: TEdit;
    btnBuscaAlim: TEditButton;
    Edit2: TEdit;
    C: TRectangle;
    Layout18: TLayout;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Layout19: TLayout;
    Edit4: TEdit;
    edtValorKGAlim: TEdit;
    edtOrdemFab: TEdit;
    edtkgMateriaSeca: TEdit;
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
    edtMSAlimento: TEdit;
    GridAlim: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB22: TLinkGridToDataSource;
    Layout25: TLayout;
    Layout26: TLayout;
    Layout27: TLayout;
    Layout28: TLayout;
    Layout29: TLayout;
    Layout31: TLayout;
    Layout32: TLayout;
    Layout33: TLayout;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    tlblValorKG: TRectangle;
    lblKGMS: TLabel;
    lblKGMN: TLabel;
    lblInclusaoMN: TLabel;
    lblInclusaoMS: TLabel;
    lblValorKG: TLabel;
    lblStatusRacao: TLabel;
    PopupMenu1: TPopupMenu;
    mnuCopyRacao: TMenuItem;
    Label11: TLabel;
    edtImsPV: TEdit;
    Rectangle13: TRectangle;
    Layout30: TLayout;
    Label12: TLabel;
    Label14: TLabel;
    Layout34: TLayout;
    Edit5: TEdit;
    rdTipoAlimento: TRadioButton;
    rdTipoPreMistura: TRadioButton;
    Label22: TLabel;
    edtGMD: TEdit;
    TreeViewItem1: TTreeViewItem;
    Image4: TImage;
    TreeViewItem2: TTreeViewItem;
    Image10: TImage;
    Layout35: TLayout;
    Rectangle14: TRectangle;
    Layout36: TLayout;
    Layout37: TLayout;
    Layout38: TLayout;
    Label23: TLabel;
    edtTempoMistura: TEdit;
    Label24: TLabel;
    edtToleranciaFab: TEdit;
    TreeViewItem3: TTreeViewItem;
    Image11: TImage;
    layTrocaRacao: TLayout;
    Rectangle22: TRectangle;
    Layout53: TLayout;
    Rectangle23: TRectangle;
    Layout56: TLayout;
    btnConfirmaTrocaRacao: TRectangle;
    Layout57: TLayout;
    Image15: TImage;
    Label42: TLabel;
    Rectangle25: TRectangle;
    Layout58: TLayout;
    Image16: TImage;
    Label43: TLabel;
    Rectangle27: TRectangle;
    Layout61: TLayout;
    Label47: TLabel;
    Label48: TLabel;
    Layout62: TLayout;
    Edit23: TEdit;
    Rectangle26: TRectangle;
    Layout52: TLayout;
    Label38: TLabel;
    Label39: TLabel;
    Layout54: TLayout;
    Edit15: TEdit;
    cbxRacaoOrigem: TComboBox;
    cbxRacaoDestino: TComboBox;
    FDQuery1: TFDQuery;
    edtGMDMacho: TEdit;
    edtGMDFemea: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxTipoFChange(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure cbxStatusFChange(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure TreeInativarClick(Sender: TObject);
    procedure edtMSAlimentoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtkgMateriaSecaKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtValorKGAlimKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtOrdemFabKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtMSAlimentoExit(Sender: TObject);
    procedure btnAddAlimentoClick(Sender: TObject);
    procedure btnBuscaAlimClick(Sender: TObject);
    procedure TreeNovoAlimentoClick(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure TreeViewExcluiAlimentoClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure edtCancelaAlimentoClick(Sender: TObject);
    procedure mnuCopyRacaoClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure GridAlimEditingDone(Sender: TObject; const ACol, ARow: Integer);
    procedure edtImsPVKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure edtTempoMisturaKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtToleranciaFabKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure imgCloseClick(Sender: TObject);
    procedure Rectangle25Click(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure cbxRacaoOrigemChange(Sender: TObject);
    procedure cbxRacaoDestinoChange(Sender: TObject);
    procedure btnConfirmaTrocaRacaoClick(Sender: TObject);
    procedure edtGMDMachoExit(Sender: TObject);
    procedure edtGMDFemeaExit(Sender: TObject);
  private
    { Private declarations }
  public
    vIdAlimento,vIdRacaoSelect,vIdRacaoOrigem,vIdRacaoDestino:string;
    procedure Filtro;
    procedure SomarColunasGridAlimentos;
    procedure CarregaRacaoTroca;
  end;

var
  frmCadRacao: TfrmCadRacao;

implementation

{$R *.fmx}

uses USeviceConfinamento, UServiceDB, UPrincipal, UAlimentos, ServiceDB2,
  USuplementoMineral;

procedure TfrmCadRacao.btnAddAlimentoClick(Sender: TObject);
begin
 if edtAlimentoADD.Text.Length=-1 then
 begin
   MyShowMessage('Informe o Alimento',false);
   Exit;
 end;

 if (edtMSAlimento.Text.Length=-1)or(edtMSAlimento.Text='0') then
 begin
   MyShowMessage('Informe o Alimento',false);
   Exit;
 end;

 if(edtkgMateriaSeca.Text.Length=-1)or(edtkgMateriaSeca.Text='0') then
 begin
   MyShowMessage('Informe a MS Alimento',false);
   Exit;
 end;

 if(edtValorKG.Text.Length=-1)or(edtValorKG.Text='0') then
 begin
   MyShowMessage('Informe o Valor do kg Alimento',false);
   Exit;
 end;

 if StrToFloat(edtMSAlimento.Text)>100 then
 begin
  myShowMessage('Matéria seca nao pode ser maior que 100%',false);
  edtMSAlimento.SetFocus;
  edtMSAlimento.SelectAll;
 end;
 if StrToFloat(edtMSAlimento.Text)<0 then
 begin
  myShowMessage('Matéria seca nao pode ser menor que 0%',false);
  edtMSAlimento.SetFocus;
  edtMSAlimento.SelectAll;
 end;
 if edtOrdemFab.Text.Length=0 then
 begin
  myShowMessage('Informe a ordem de Fabricação!',false);
  edtMSAlimento.SetFocus;
  edtMSAlimento.SelectAll;
 end;
  ServiceConf.TRacaoInsumosIDRACAO.AsInteger            := ServiceConf.TRacaoID.AsInteger;
  if rdTipoAlimento.IsChecked then
   ServiceConf.TRacaoInsumosIDINSUMOALIMENTO.AsString   := vIDAlimento;
  if rdTipoPreMistura.IsChecked then
  begin
   ServiceConf.TRacaoInsumosIDINSUMOALIMENTO.AsInteger  := 0;
   ServiceConf.TRacaoInsumosID_PREMISTURA.AsString      := vIDAlimento;
  end;
  ServiceConf.TRacaoInsumosIDUSUARIO.AsString           := serviceDB.vIdUserLogado;
  ServiceConf.TRacaoInsumosORDEM_FABRICACAO.AsString    := edtOrdemFab.Text;
  ServiceConf.TRacaoInsumosPERCENTMATERIASECA.AsString  := edtMSAlimento.Text;
  ServiceConf.TRacaoInsumosKGMATERIASECA.AsString       := edtkgMateriaSeca.Text;
  ServiceConf.TRacaoInsumosVALORKG.AsFloat              := strToFloat(edtValorKGAlim.Text);
  ServiceConf.TRacaoInsumosTOLERANCIA_FAB.AsFloat       := strToFloat(edtToleranciaFab.Text);
  ServiceConf.TRacaoInsumosKGMATERIANATURAL.AsFloat     := strToFloat(edtkgMateriaSeca.Text)/strToFloat(edtMSAlimento.Text)*100;
 try
  ServiceConf.TRacaoInsumos.ApplyUpdates(-1);
  ServiceConf.AtualizaMsRacao(serviceConf.TRacaoID.Asstring);
  ServiceConf.TRacao.Refresh;
  ServiceConf.AtualizaoInclusaoRacao(ServiceConf.TRacaoID.AsString);
  ServiceConf.AbreTRacaoInsumo(ServiceConf.TRacaoID.AsString);
  SomarColunasGridAlimentos;
  myShowMessage('Alimento cadastrado com sucesso!!',false);
  layNovoAlimento.Visible := false;
 except
  on e : Exception do
    myShowMessage('Erro ao Inserir Alimento: '+e.Message,false)
 end;
end;

procedure TfrmCadRacao.btnBuscaAlimClick(Sender: TObject);
begin
 if rdTipoAlimento.IsChecked then
 begin
   frmCadAlimento := TfrmCadAlimento.Create(nil);
    try
      frmCadAlimento.ShowModal;
    finally
      edtAlimentoADD.text           := serviceDBN.ALIMENTOSNOME.AsString;
      vIdAlimento                   := serviceDBN.ALIMENTOSID.AsString;
      edtValorKGAlim.Text           := serviceDBN.ALIMENTOSCUSTO_MEDIO.AsString;
      edtMSAlimento.Text            := serviceDBN.ALIMENTOSMS.AsString;
      frmCadAlimento.Free;
    end;
 end;
 if rdTipoPreMistura.IsChecked then
 begin
   frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(nil);
    try
      frmCadSuplementoMineral.ShowModal;
    finally
     if frmCadSuplementoMineral.lblInclusaoTotal.Text='100,00' then
     begin
      edtAlimentoADD.text           := serviceDB.SuplementoMineralNOME.AsString;
      vIdAlimento                   := serviceDB.SuplementoMineralID.AsString;
      edtValorKGAlim.Text           := serviceDB.SuplementoMineralVALOR_KG.AsString;
      edtMSAlimento.Text            := serviceDB.SuplementoMineralMS_TOTAL.AsString;
     end
     else
     begin
       MyShowMessage('Pre-Mistura Irregular,a formulação deve fechar os 100% de inclusão!',false);
       edtAlimentoADD.text           := '';
       vIdAlimento                   := '';
       edtValorKGAlim.Text           := '';
       edtMSAlimento.Text            := '';
     end;

      frmCadSuplementoMineral.Free;
    end;
 end;
end;

procedure TfrmCadRacao.btnConfirmaClick(Sender: TObject);
begin
 if cbxTipo.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o tipo da Ração',false);
   Exit;
 end;
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o Nome da Ração',false);
   Exit;
 end;
 if(edtImsPV.Text.Length=0)OR(edtImsPV.Text='0') then
 begin
   MyShowMessage('Informe o %IMS PV',false);
   Exit;
 end;
 if(edtGMD.Text.Length=0)OR(edtGMD.Text='0') then
 begin
   MyShowMessage('Informe o GMD',false);
   Exit;
 end;
 if ServiceConf.TRacao.State=dsInsert then
 begin
   ServiceConf.TRacaoIDUSUARIO.AsString := serviceDB.vIdUserLogado;
   ServiceConf.TRacaoSTATUS.AsInteger   := 2;
   if not ServiceConf.VerificaNomeExiste(edtNome.Text) then
   begin
     MyShowMessage('Já existe uma ração com esse nome!!',false);
     Exit;
   end;
 end
 else
 begin
  ServiceConf.TRacaoIDUSUARIOALTERACAO.AsString := serviceDB.vIdUserLogado;
  ServiceConf.TRacaoDATAALTERACAO.AsDateTime    := now;
 end;
  ServiceConf.TRacaoTIPO.AsInteger              := cbxTipo.ItemIndex+1;
  ServiceConf.TRacaoIMS_PV.AsFloat              := strToFloat(edtImsPV.Text);
  ServiceConf.TRacaoGMD.AsFloat                 := strToFloat(edtGMD.Text);
  ServiceConf.TRacaoNOME.AsString               := edtNome.Text;
  ServiceConf.TRacaoDATAFORMULACAO.AsDateTime   := edtDataFormulacao.DateTime;
  ServiceConf.TRacaoID_PROPRIEDADE.AsString     := serviceDB.vIdPropriedade;
  ServiceConf.TRacaoTEMPO_MISTURA.Asstring      := edtTempoMistura.Text;
  ServiceConf.TRacaoGMD_MACHO.AsFloat            := strToFloat(edtGMDMacho.Text);
  ServiceConf.TRacaoGMD_FEMEA.AsFloat            := strToFloat(edtGMDFemea.Text);
  try
    ServiceConf.TRacao.ApplyUpdates(-1);
    ServiceConf.AbreTRacao('');
    MyShowMessage('Ração cadastrada com sucesso, adicione a formulação!',false);
    MudarAba(tbiMnu,sender);
  except
    on e : Exception do
     myShowMessage('Erro ao Inserir Ração: '+e.Message,false)
  end;
end;

procedure TfrmCadRacao.btnConfirmaTrocaRacaoClick(Sender: TObject);
begin
 if cbxRacaoOrigem.ItemIndex=-1 then
 begin
   MyShowMessage('Informe a Ração de Origem',false);
   Exit;
 end;
 if cbxRacaoDestino.ItemIndex=-1 then
 begin
   MyShowMessage('Informe a Ração de Destino',false);
   Exit;
 end;
 if vIdRacaoOrigem=vIdRacaoDestino then
 begin
   MyShowMessage('Ração Destino nao pode ser igual Origem',false);
   Exit;
 end;
 try
  serviceDB.TrocaRacao(vIdRacaoOrigem,vIdRacaoDestino);
  MyShowMessage('Troca Realizada com Sucesso!',false);
  layTrocaRacao.Visible := false;
 except

 end;
end;

procedure TfrmCadRacao.cbxRacaoDestinoChange(Sender: TObject);
begin
 if cbxRacaoDestino.ItemIndex>-1 then
   vIdRacaoDestino    := IntToStr(Integer(cbxRacaoDestino.Items.Objects[cbxRacaoDestino.ItemIndex]));
end;

procedure TfrmCadRacao.cbxRacaoOrigemChange(Sender: TObject);
begin
 if cbxRacaoOrigem.ItemIndex>-1 then
   vIdRacaoOrigem    := IntToStr(Integer(cbxRacaoOrigem.Items.Objects[cbxRacaoOrigem.ItemIndex]));
end;

procedure TfrmCadRacao.cbxStatusFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadRacao.cbxTipoFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadRacao.edtMSAlimentoExit(Sender: TObject);
begin
 if StrToFloat(edtMSAlimento.Text)>100 then
 begin
  myShowMessage('Matéria seca nao pode ser maior que 100%',false);
  edtMSAlimento.SetFocus;
  edtMSAlimento.SelectAll;
 end;
end;

procedure TfrmCadRacao.edtMSAlimentoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadRacao.edtCancelaAlimentoClick(Sender: TObject);
begin
 layNovoAlimento.Visible := false;
end;

procedure TfrmCadRacao.edtFiltroNameChangeTracking(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadRacao.edtGMDFemeaExit(Sender: TObject);
begin
 if edtGMDFemea.Text.Length=0 then
  edtGMDFemea.Text :='0';
end;

procedure TfrmCadRacao.edtGMDMachoExit(Sender: TObject);
begin
 if edtGMDMacho.Text.Length=0 then
  edtGMDMacho.Text :='0';
end;

procedure TfrmCadRacao.edtImsPVKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadRacao.edtOrdemFabKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadRacao.edtTempoMisturaKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadRacao.edtToleranciaFabKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadRacao.edtkgMateriaSecaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadRacao.edtValorKGAlimKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadRacao.Filtro;
var
 vFiltro:string;
begin
 vFiltro :='';
 if cbxTipoF.ItemIndex>0 then
  vFiltro := ' AND TIPO='+intToStr(cbxTipoF.ItemIndex);
 if cbxStatusF.ItemIndex>0 then
 begin
  case cbxStatusF.ItemIndex of
   1:vFiltro := ' AND STATUS=1';
   2:vFiltro := ' AND STATUS=0';
   3:vFiltro := ' AND STATUS=2';
  end;

 end;
 if edtNome.Text.Length>0 then
  vFiltro := ' AND NOME LIKE '+QuotedStr('%'+edtNome.Text+'%');
 ServiceConf.AbreTRacao(vFiltro);
end;

procedure TfrmCadRacao.FormShow(Sender: TObject);
begin
  layTrocaRacao.Visible   := false;
  cbxStatusF.ItemIndex    :=1;
  layNovoAlimento.Visible := false;
  Filtro;
  inherited;
end;

procedure TfrmCadRacao.GridAlimEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  ServiceConf.TRacaoInsumos.ApplyUpdates(-1);
  ServiceConf.AtualizaoInclusaoRacao(ServiceConf.TRacaoID.AsString);
  if ServiceConf.TRacaoID.AsString.Length>0 then
   ServiceConf.AbreTRacaoInsumo(ServiceConf.TRacaoID.AsString);
end;

procedure TfrmCadRacao.imgCloseClick(Sender: TObject);
begin
//  serviceConf.TRacao.First;
//  while not serviceConf.TRacao.Eof do
//  begin
//   ServiceConf.AtualizaMsRacao(serviceConf.TRacaoID.Asstring);
//   serviceConf.TRacao.Next;
//  end;
  inherited;
end;

procedure TfrmCadRacao.mnuCopyRacaoClick(Sender: TObject);
begin
 if ServiceConf.TRacaoID.AsString.Length>0 then
 begin
   MyShowMessage('Deseja Copiar a Ração: '+ServiceConf.TRacaoNOME.AsString+'?' ,true);
    case frmPrincipal.vConfirma of
    1:
    begin
        try
         ServiceConf.CopyRacao(ServiceConf.TRacaoID.AsString);
         Filtro;
         myShowMessage('Registro Copiado com Sucesso!',false);
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
end;

procedure TfrmCadRacao.Rectangle25Click(Sender: TObject);
begin
 layTrocaRacao.Visible := false;
end;

procedure TfrmCadRacao.SomarColunasGridAlimentos;
var
  I   : Integer;

  Sum : Double;
  Val : Double;

  Sum1: Double;
  Val1: Double;

  Sum2: Double;
  Val2: Double;

  Sum3: Double;
  Val3: Double;

  Sum4: Double;
  Val4: Double;
begin
  Sum := 0;
  Val := 0;

  Sum1:= 0;
  Val1:= 0;

  Sum2:= 0;
  Val2:= 0;

  Sum3:= 0;
  Val3:= 0;

  Sum4:= 0;
  Val4:= 0;
  for I := 0 to GridAlim.RowCount-1 do
  begin
   if TryStrToFloat(GridAlim.Cells[3,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(GridAlim.Cells[4,I],Val1) then
    Sum1:= Sum1 + Val1;
   if TryStrToFloat(GridAlim.Cells[5,I],Val2) then
    Sum2:= Sum2 + Val2;
   if TryStrToFloat(GridAlim.Cells[6,I],Val3) then
    Sum3:= Sum3 + Val3;
   if TryStrToFloat(GridAlim.Cells[8,I],Val4) then
    Sum4:= Sum4 + Val4;
  end;
  if I>0 then
  begin
    lblKGMS.Text                  := ServiceConf.RetornarMsRacao(ServiceConf.TRacaoId.AsString);
    lblKGMN.Text                  := FormatFloat('####,##.00',(Sum1));
    lblInclusaoMN.Text            := FormatFloat('####,##.0', (Sum2));
    lblInclusaoMS.Text            := FormatFloat('####,##.0', (Sum3));
    lblValorKG.Text               := 'R$ '+ServiceConf.RetornaValorKGRacao(ServiceConf.TRacaoId.AsString);
    lblStatusRacao.StyledSettings := lblStatusRacao.StyledSettings - [TStyledSetting.FontColor];
    if Round(Sum3)<100 then
    begin
     lblStatusRacao.Text      :='Irregular: Inclusao MS < 100!';
     lblStatusRacao.FontColor := TAlphaColorRec.Red;
    end;
    if Round(Sum3)>100 then
    begin
     lblStatusRacao.Text      :='Irregular: Inclusao MS > 100!';
     lblStatusRacao.FontColor := TAlphaColorRec.Red;
    end;
    if Round(Sum3)=100 then
    begin
     lblStatusRacao.FontColor := TAlphaColorRec.lime;
     lblStatusRacao.Text      :='Ok: Inclusao 100%';

    end;
  end
  else
  begin
    lblKGMS.Text              := '0';
    lblKGMN.Text              := '0';
    lblInclusaoMN.Text        := '0';
    lblInclusaoMS.Text        := '0';
    lblValorKG.Text           := '0';
    lblStatusRacao.Text      :='Irregular: Inclusao MS < 100!';
    lblStatusRacao.FontColor := TAlphaColorRec.Red;
  end;
end;

procedure TfrmCadRacao.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
 vIdRacaoSelect := ServiceConf.TRacaoID.AsString;
 if vIdRacaoSelect.Length>0 then
 begin
  ServiceConf.AbreTRacaoInsumo(vIdRacaoSelect);
  SomarColunasGridAlimentos;
 end;
end;

procedure TfrmCadRacao.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 vIdRacaoSelect := ServiceConf.TRacaoID.AsString;
 Close;
end;

procedure TfrmCadRacao.StringGrid1SelChanged(Sender: TObject);
begin
 if ServiceConf.TRacaoID.AsInteger>0 then
 begin
  ServiceConf.AbreTRacaoInsumo(ServiceConf.TRacaoID.AsString);
  SomarColunasGridAlimentos
 end;
end;

procedure TfrmCadRacao.TreeInativarClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Inativar esse Ração?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.TRacao.Edit;
       ServiceConf.TRacaoSTATUS.AsInteger :=0;
       ServiceConf.TRacao.ApplyUpdates(-1);
       Filtro;
       myShowMessage('Registro Inativo com Sucesso!',false);
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

procedure TfrmCadRacao.TreeItemEditarClick(Sender: TObject);
begin
  ServiceConf.TRacao.Edit;
  edtNome.Text               := ServiceConf.TRacaoNOME.AsString;
  cbxTipo.ItemIndex          := cbxTipo.Items.IndexOf(ServiceConf.TRacaoTIPO_STR.AsString);
  edtDataFormulacao.DateTime := ServiceConf.TRacaoDATAFORMULACAO.AsDateTime;
  edtValorKG.Text            := 'R$'+ServiceConf.TRacaoVALORKG.AsString;
  edtMSRacao.Text            := ServiceConf.TRacaoMATERIASECA.AsString;
  edtImsPV.Text              := ServiceConf.TRacaoIMS_PV.Asstring;
  edtGMD.Text                := ServiceConf.TRacaoGMD.Asstring;
  if ServiceConf.TRacaoGMD_MACHO.AsString.Length>0 then
   edtGMDMacho.Text           := ServiceConf.TRacaoGMD_MACHO.AsString
  else
   edtGMDMacho.Text           := '0,00';
  if ServiceConf.TRacaoGMD_FEMEA.AsString.Length>0 then
   edtGMDFemea.Text           := ServiceConf.TRacaoGMD_FEMEA.AsString
  else
   edtGMDFemea.Text           := '0,00';
  edtTempoMistura.Text       := ServiceConf.TRacaoTEMPO_MISTURA.Asstring;
  inherited;
end;

procedure TfrmCadRacao.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.TRacao.Edit;
       ServiceConf.TRacaoSTATUS.AsInteger :=-1;
       ServiceConf.TRacao.ApplyUpdates(-1);
       Filtro;
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

procedure TfrmCadRacao.TreeItemNovoClick(Sender: TObject);
begin
  ServiceConf.TRacao.Insert;
  edtNome.Text               :='';
  cbxTipo.ItemIndex          :=-1;
  edtDataFormulacao.DateTime := NOW;
  edtValorKG.Text            := 'R$0,00';
  edtMSRacao.Text            := '0';
  inherited;
end;

procedure TfrmCadRacao.TreeNovoAlimentoClick(Sender: TObject);
begin
  ServiceConf.TRacaoInsumos.Insert;
  edtAlimentoADD.Text     :='';
  edtMSAlimento.Text      :='';
  edtkgMateriaSeca.Text   :='';
  edtValorKG.Text         :='';
  edtOrdemFab.Text        :='';
  layNovoAlimento.Visible := TRUE;
end;

procedure TfrmCadRacao.TreeViewExcluiAlimentoClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Alimento?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.TRacaoInsumos.Edit;
       ServiceConf.TRacaoInsumosSTATUS.AsInteger :=0;
       ServiceConf.TRacaoInsumos.ApplyUpdates(-1);
       ServiceConf.AtualizaoInclusaoRacao(ServiceConf.TRacaoID.AsString);
       Filtro;
       ServiceConf.AbreTRacaoInsumo(ServiceConf.TRacaoID.AsString);
       ServiceConf.TRacao.Refresh;
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

procedure TfrmCadRacao.TreeViewItem1Click(Sender: TObject);
begin
 ServiceConf.AtualizaoInclusaoRacao(ServiceConf.TRacaoID.AsString);
 ServiceConf.AtualizaMsRacao(serviceConf.TRacaoID.Asstring);
 serviceDB.FCon.Commit;
 ServiceConf.AbreTRacao('');
 ServiceConf.AbreTRacaoInsumo(ServiceConf.TRacaoID.AsString);
 SomarColunasGridAlimentos;
end;

procedure TfrmCadRacao.TreeViewItem2Click(Sender: TObject);
begin
 try
   frmCadAlimento := TfrmCadAlimento.Create(Self);
   frmCadAlimento.ShowModal;
 finally
   frmCadAlimento.Free;
 end;
end;

procedure TfrmCadRacao.CarregaRacaoTroca;
var
 vQryAux : TFDQuery;
 i       : integer;
begin
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM RACAO');
   Add('WHERE STATUS =1');
   Open;
   while not vQryAux.Eof do
   begin
    cbxRacaoOrigem.Items.AddObject(vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('ID').AsInteger));
    cbxRacaoDestino.Items.AddObject(vQryAux.FieldByName('NOME').AsString,TObject(vQryAux.FieldByName('ID').AsInteger));
    vQryAux.Next;
   end;
 end;
 vQryAux.Free;
end;

procedure TfrmCadRacao.TreeViewItem3Click(Sender: TObject);
begin
 CarregaRacaoTroca;
 cbxRacaoOrigem.ItemIndex  :=-1;
 cbxRacaoDestino.ItemIndex :=-1;
 layTrocaRacao.Visible    := true;
end;

end.
