unit UAlimentos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.EditBox, FMX.NumberBox,db, FMX.DateTimeCtrls,Winapi.Windows;

type
  TfrmCadAlimento = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Label9: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    edtCustoMedio: TNumberBox;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Label3: TLabel;
    Label5: TLabel;
    Layout4: TLayout;
    cbxUnidadeMedida: TComboBox;
    edtPesoEmbalagem: TNumberBox;
    Label6: TLabel;
    edtMateriaSeca: TNumberBox;
    Label7: TLabel;
    edtTolFabricacao: TNumberBox;
    Layout5: TLayout;
    Rectangle4: TRectangle;
    Label8: TLabel;
    StringGrid2: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layNovoAlimento: TLayout;
    Rectangle6: TRectangle;
    Layout15: TLayout;
    C: TRectangle;
    Layout19: TLayout;
    Edit4: TEdit;
    Layout18: TLayout;
    Label15: TLabel;
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
    Label10: TLabel;
    Label11: TLabel;
    Layout24: TLayout;
    Edit1: TEdit;
    edtMSAlimento: TEdit;
    Rectangle7: TRectangle;
    Layout16: TLayout;
    Label13: TLabel;
    Label16: TLabel;
    Layout17: TLayout;
    edtAlimentoADD: TEdit;
    btnBuscaAlim: TEditButton;
    Edit2: TEdit;
    edtDataLeitura: TDateEdit;
    edtHoraAt: TTimeEdit;
    edtMsNova: TEdit;
    Label12: TLabel;
    Rectangle5: TRectangle;
    Label14: TLabel;
    Layout9: TLayout;
    Image3: TImage;
    TreeViewItem1: TTreeViewItem;
    Image4: TImage;
    tbHist: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    StringGrid3: TStringGrid;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure imgCloseClick(Sender: TObject);
    procedure edtMsNovaKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure edtCancelaAlimentoClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure edtMsNovaChangeTracking(Sender: TObject);
    procedure btnAddAlimentoClick(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
  private
    vIdAlimento:string;
    procedure LimpaCampo;
  public
    { Public declarations }
  end;

var
  frmCadAlimento: TfrmCadAlimento;

implementation

{$R *.fmx}

uses ServiceDB2, ServiceRel, UServiceDB;

procedure TfrmCadAlimento.btnAddAlimentoClick(Sender: TObject);
begin
 if edtMsNova.Text='0' then
 begin
   MyShowMessage('Materia seca deve ser maior que zero!',false);
   Exit;
 end;
 if edtMsNova.Text=edtMSAlimento.Text then
 begin
   MyShowMessage('Materia não pode ser a mesma!',false);
   Exit;
 end;
 serviceDBN.HIST_MS_ALIMENTO.Insert;
 serviceDBN.HIST_MS_ALIMENTOID_ALIMENTO.AsString        := vIdAlimento;
 serviceDBN.HIST_MS_ALIMENTOMS_OLD.AsString             := serviceDBN.ALIMENTOSMS.AsString;
 serviceDBN.HIST_MS_ALIMENTOMS_NEW.AsString             := edtMsNova.Text;
 serviceDBN.HIST_MS_ALIMENTODATA_ATUALIZACAO.AsDateTime := edtDataLeitura.Date;
 serviceDBN.HIST_MS_ALIMENTOHORA_ATUALIZACAO.AsDateTime := edtHoraAt.TIME;
 serviceDBN.HIST_MS_ALIMENTOID_USUARIO.AsString         := serviceDB.vIdUserLogado;
 serviceDBN.HIST_MS_ALIMENTOID_PROPRIEDADE.AsString     := serviceDB.vIdPropriedade;
 try
   serviceDBN.HIST_MS_ALIMENTO.ApplyUpdates(-1);
   serviceDBN.AtualizaMSAlimentoRacaoPremistura(vIdAlimento,StringReplace(edtMsNova.Text,',','.',[rfReplaceAll]));
   MyShowMessage('Materia Seca Atualizada com Sucesso!',false);
   layNovoAlimento.Visible := false;
 except
  on e : Exception do
   myShowMessage('Erro ao Atualizar MS: '+e.Message,false)
 end;
end;

procedure TfrmCadAlimento.btnConfirmaClick(Sender: TObject);
var
 vCodCategoria:string;
begin
 EditTab.SetFocus;
   if edtNome.Text.Length=0 then
   begin
     MyShowMessage('Informe o nome da Categoria',false);
     Exit;
   end;
   if cbxUnidadeMedida.ItemIndex=-1 then
   begin
     MyShowMessage('Informe a Unidade de Medida',false);
     Exit;
   end;
   if serviceDBN.ALIMENTOS.State in[dsInsert] then
   begin
    if not serviceDB.VerificaAlimentoExiste(edtNome.Text) then
    begin
       MyShowMessage('Já Existe um Alimento com esse nome!',false);
       Exit;
    end;
   end;
    serviceDBN.ALIMENTOSNOME.AsString                 := edtNome.Text;
    serviceDBN.ALIMENTOSID_USUARIO.AsString           := serviceDB.vIdUserLogado;
    serviceDBN.ALIMENTOSUNIDADE_MEDIDA.AsString       := cbxUnidadeMedida.Selected.Text;
    serviceDBN.ALIMENTOSCUSTO_MEDIO.AsFloat           := edtCustoMedio.Value;
    serviceDBN.ALIMENTOSPESO_EMBALAGEM.AsFloat        := edtPesoEmbalagem.Value;
    serviceDBN.ALIMENTOSPERCENT_TOLERANCIA.AsFloat    := edtTolFabricacao.Value;
    serviceDBN.ALIMENTOSMS.AsFloat                    := edtMateriaSeca.Value;
   try
    serviceDBN.ALIMENTOS.ApplyUpdates(-1);
    serviceDBN.ALIMENTOS.Close;
    serviceDBN.ALIMENTOS.Open;
    MudarAba(tbiMnu,sender);
   except
   on e : Exception do
    MYShowMessage('Erro ao Inserir Alimentos: '+e.Message,false)
   end;
end;

procedure TfrmCadAlimento.edtCancelaAlimentoClick(Sender: TObject);
begin
 layNovoAlimento.Visible := false;
end;

procedure TfrmCadAlimento.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDBN.ALIMENTOS.Filtered := false;
   serviceDBN.ALIMENTOS.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDBN.ALIMENTOS.Filtered := true;
 end
 else
 begin
   serviceDBN.ALIMENTOS.Filtered := false;
   serviceDBN.ALIMENTOS.Close;
   serviceDBN.ALIMENTOS.Open;
   serviceDBN.HistValorInsumo.Open;
 end;
end;

procedure TfrmCadAlimento.edtMsNovaChangeTracking(Sender: TObject);
begin
 if edtMsNova.Text.Length=0 then
  edtMsNova.Text :='0'
 else
 begin
   if StrToFloat(edtMsNova.Text)>100 then
    edtMsNova.Text :='100'
 end;
end;

procedure TfrmCadAlimento.edtMsNovaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadAlimento.FormShow(Sender: TObject);
begin
  tbHist.ActiveTab        := TabItem1;
  layNovoAlimento.Visible := false;
  serviceDBN.ALIMENTOS.Close;
  serviceDBN.ALIMENTOS.Open;
  serviceDBN.AbreHistMsAlimento('0','');
  inherited;
end;

procedure TfrmCadAlimento.Image3Click(Sender: TObject);
begin
 layNovoAlimento.Visible := false;
end;

procedure TfrmCadAlimento.imgCloseClick(Sender: TObject);
begin
 close;
end;

procedure TfrmCadAlimento.LimpaCampo;
begin
 edtNome.Text               :='';
 edtCustoMedio.Value        :=0;
 cbxUnidadeMedida.ItemIndex :=-1;
 edtPesoEmbalagem.Value     :=0;
 edtMateriaSeca.Value       :=0;
 edtTolFabricacao.Value     :=0;
end;

procedure TfrmCadAlimento.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
 if serviceDBN.ALIMENTOSID.AsString.Length>0 then
  serviceDBN.AbreHistMsAlimento(serviceDBN.ALIMENTOSID.AsString,'');
end;

procedure TfrmCadAlimento.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

procedure TfrmCadAlimento.StringGrid1SelChanged(Sender: TObject);
begin
  if serviceDBN.ALIMENTOSID.AsString.Length>0 then
   serviceDBN.AbreHistMsAlimento(serviceDBN.ALIMENTOSID.AsString,'');
end;

procedure TfrmCadAlimento.TreeItemEditarClick(Sender: TObject);
begin
  serviceDBN.ALIMENTOS.Edit;
  edtNome.Text                   := serviceDBN.ALIMENTOSNOME.AsString;
  edtCustoMedio.Value            := serviceDBN.ALIMENTOSCUSTO_MEDIO.AsFloat;
  cbxUnidadeMedida.ItemIndex     := cbxUnidadeMedida.Items.IndexOf(serviceDBN.ALIMENTOSUNIDADE_MEDIDA.AsString);
  edtPesoEmbalagem.Value         := serviceDBN.ALIMENTOSPESO_EMBALAGEM.AsFloat;
  edtMateriaSeca.Value           := serviceDBN.ALIMENTOSMS.AsFloat;
  edtTolFabricacao.Value         := serviceDBN.ALIMENTOSPERCENT_TOLERANCIA.AsFloat;
  inherited;
end;

procedure TfrmCadAlimento.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente excluir essa Alimento?',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDBN.ALIMENTOS.Edit;
       serviceDBN.ALIMENTOSSTATUS.AsInteger :=0;
       serviceDBN.ALIMENTOS.ApplyUpdates(-1);
       serviceDBN.ALIMENTOS.Close;
       serviceDBN.ALIMENTOS.Open;
       ShowMessage('Registro excluido com Sucesso!');
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

procedure TfrmCadAlimento.TreeItemNovoClick(Sender: TObject);
begin
 LimpaCampo;
 try
   serviceDBN.ALIMENTOS.Close;
   serviceDBN.ALIMENTOS.Open;
   serviceDBN.ALIMENTOS.Insert;
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Alimento: '+e.Message)
  end;
end;

procedure TfrmCadAlimento.TreeViewItem1Click(Sender: TObject);
begin
 edtAlimentoADD.Text := serviceDBN.ALIMENTOSNOME.AsString;
 edtMSAlimento.Text  := serviceDBN.ALIMENTOSMS.AsString;
 vIdAlimento         := serviceDBN.ALIMENTOSID.AsString;
 edtMsNova.Text      := '0';
 edtDataLeitura.Date := DATE;
 edtHoraAt.Time      := now;
 layNovoAlimento.Visible := true;
end;

end.
