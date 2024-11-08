unit UFarmacos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ActnList, System.Actions, FMX.TabControl, FMX.Effects, FMX.ScrollBox,
  FMX.Grid, FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.TreeView,
  FMX.Layouts, FMX.ListBox,Winapi.Windows,DB;

type
  TfrmCadFarmaco = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Label5: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    edtPrincipioAtivo: TEdit;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Label3: TLabel;
    Layout4: TLayout;
    edtFabricante: TEdit;
    EditButton1: TEditButton;
    Layout5: TLayout;
    Rectangle4: TRectangle;
    Layout9: TLayout;
    Label6: TLabel;
    Layout10: TLayout;
    cbxTipoAplicacao: TComboBox;
    Label7: TLabel;
    edtDoseFixaML: TEdit;
    Label8: TLabel;
    edtDosePesoML: TEdit;
    Label9: TLabel;
    edtDosePesoKG: TEdit;
    Label10: TLabel;
    edtIndicacao: TEdit;
    EditButton2: TEditButton;
    Label11: TLabel;
    edtCarencia: TEdit;
    Layout11: TLayout;
    Rectangle5: TRectangle;
    Layout12: TLayout;
    Label12: TLabel;
    Layout13: TLayout;
    EdtValorML: TEdit;
    procedure EditButton1Click(Sender: TObject);
    procedure edtFabricanteClick(Sender: TObject);
    procedure cbxTipoAplicacaoChange(Sender: TObject);
    procedure edtDoseFixaMLKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure edtIndicacaoClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure edtCarenciaKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtPrincipioAtivoExit(Sender: TObject);
  private
    procedure LimpaCampos;
  public
    vFarmacoSelecionado :integer;
    vIdFabricante,vIdIndica :string;
  end;

var
  frmCadFarmaco: TfrmCadFarmaco;

implementation

{$R *.fmx}

uses UServiceDB, UFabricanteFarmaco, UMsgDlg, UIndicaFarmaco;

procedure TfrmCadFarmaco.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length = 0 then
 begin
   MyShowMessage('Informe o Nome!',false);
   TThread.Synchronize(nil,procedure
   begin
    edtNome.SetFocus;
   end);
   Exit;
 end;
 if edtFabricante.Text.Length = 0 then
 begin
   MyShowMessage('Informe o Fabricante!',false);
   TThread.Synchronize(nil,procedure
   begin
    edtFabricante.SetFocus;
   end);
   Exit;
 end;

 if cbxTipoAplicacao.ItemIndex=-1  then
 begin
   MyShowMessage('Informe o Tipo de Aplicação!',false);
   TThread.Synchronize(nil,procedure
   begin
      cbxTipoAplicacao.SetFocus;
   end);
   Exit;
 end;

 if cbxTipoAplicacao.ItemIndex=0  then
 begin
   if edtDoseFixaML.Text.Length=0 then
   begin
     MyShowMessage('Informe a Quantidade de ML da Dose Fixa!',false);
     TThread.Synchronize(nil,procedure
     begin
      edtDoseFixaML.SetFocus;
     end);
     Exit;
   end;
 end;

 if edtCarencia.Text.Length=0 then
 begin
   MyShowMessage('Informe a Carência em Dias!',false);
   Exit;
 end;

 if cbxTipoAplicacao.ItemIndex=1  then
 begin
   if edtDosePesoML.Text.Length=0 then
   begin
     MyShowMessage('Informe a Quantidade de ML para Dose por Peso!',false);
     TThread.Synchronize(nil,procedure
     begin
      edtDosePesoML.SetFocus;
     end);
     Exit;
   end;
   if edtDosePesoKG.Text.Length=0 then
   begin
     MyShowMessage('Informe a Quantidade de KG para a Dose por Peso!',false);
     TThread.Synchronize(nil,procedure
     begin
      edtDosePesoKG.SetFocus;
     end);
     Exit;
   end;
 end;
 if serviceDB.TableFarmacos.State=dsInsert then
 begin
   if not serviceDB.VerificaFarmacoExiste(edtNome.Text,vIdFabricante) then
   begin
     MyShowMessage('Ja existe um Farmaco com com esse nome!',false);
     Exit;
   end;
 end;
 serviceDB.TableFarmacosNOME.AsString            :=  edtNome.Text;
 serviceDB.TableFarmacosPRINCIPIO_ATIVO.AsString :=  edtPrincipioAtivo.Text;
 serviceDB.TableFarmacosID_FABRICANTE.AsString   :=  vIdFabricante;
 serviceDB.TableFarmacosTIPO_APICACAO.AsInteger  :=  cbxTipoAplicacao.ItemIndex;

 if edtDoseFixaML.Text.Length>0 then
  serviceDB.TableFarmacosML_DOSE_FIXA.AsString    :=  edtDoseFixaML.Text;

 if edtDosePesoML.Text.Length>0 then
  serviceDB.TableFarmacosML_DOSE_PV.AsString      :=  edtDosePesoML.Text;

 if edtDosePesoKG.Text.Length>0 then
  serviceDB.TableFarmacosKG_DOSE_PV.AsString      :=  edtDosePesoKG.Text;

 if edtIndicacao.Text.Length>0 then
  serviceDB.TableFarmacosID_INDICACAO.AsString    :=  vIdIndica;

 if EdtValorML.Text.Length>0 then
  serviceDB.TableFarmacosVALOR_ML.AsString        :=  EdtValorML.Text;

 serviceDB.TableFarmacosID_USUARIO.AsString       :=  serviceDB.vIdUserLogado;
 serviceDB.TableFarmacosCARENCIA_DIA.AsString     :=  edtCarencia.Text;
 try
   serviceDB.TableFarmacos.ApplyUpdates(-1);
   MyShowMessage('Cadastro atualizado com sucesso!',false);
   serviceDB.TableFarmacos.Close;
   serviceDB.TableFarmacos.Open();
   MudarAba(tbiMnu,sender);
 except
   on E : Exception do
    MYShowMessage(E.ClassName+' Error ao Inserir Farmaco : '+E.Message,false);
 end;
end;

procedure TfrmCadFarmaco.cbxTipoAplicacaoChange(Sender: TObject);
begin
 edtDoseFixaML.Enabled := cbxTipoAplicacao.ItemIndex =0;
 edtDosePesoKG.Enabled := cbxTipoAplicacao.ItemIndex =1;
 edtDosePesoML.Enabled := cbxTipoAplicacao.ItemIndex =1;
end;

procedure TfrmCadFarmaco.EditButton1Click(Sender: TObject);
begin
 frmCadFabricanteFarmaco := TfrmCadFabricanteFarmaco.Create(Self);
  try
    frmCadFabricanteFarmaco.ShowModal;
    vIdFabricante               := serviceDB.TableFornecedorFarmacoId.AsString;
    edtFabricante.Text          := serviceDB.TableFornecedorFarmacoNOME_FANTASIA.AsString;
  finally
    frmCadFabricanteFarmaco.Free;
  end;
end;

procedure TfrmCadFarmaco.EditButton2Click(Sender: TObject);
begin
  frmAuxIndicacaoFarmaco := TfrmAuxIndicacaoFarmaco.Create(Self);
  try
    frmAuxIndicacaoFarmaco.ShowModal;
    vIdIndica                   := serviceDB.TableAuxIndicacaoFarmacoId.AsString;
    edtIndicacao.Text           := serviceDB.TableAuxIndicacaoFarmacoNOME.AsString;
  finally
    frmAuxIndicacaoFarmaco.Free;
  end;
end;

procedure TfrmCadFarmaco.edtCarenciaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadFarmaco.edtDoseFixaMLKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadFarmaco.edtFabricanteClick(Sender: TObject);
begin
 EditButton1Click(Sender);
end;

procedure TfrmCadFarmaco.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableFarmacos.Filtered := false;
   serviceDB.TableFarmacos.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableFarmacos.Filtered := true;
 end
 else
 begin
   serviceDB.TableFarmacos.Filtered := false;
   serviceDB.TableFarmacos.Close;
   serviceDB.TableFarmacos.Open;
 end;
end;

procedure TfrmCadFarmaco.edtIndicacaoClick(Sender: TObject);
begin
  EditButton2Click(Sender);
end;

procedure TfrmCadFarmaco.edtPrincipioAtivoExit(Sender: TObject);
begin
 DelayedSetFocus(edtFabricante);
end;

procedure TfrmCadFarmaco.FormShow(Sender: TObject);
begin
 vFarmacoSelecionado :=0;
 serviceDB.TableFarmacos.Close;
 serviceDB.TableFarmacos.Open;
end;

procedure TfrmCadFarmaco.LimpaCampos;
begin
 EdtValorML.Text            := '';
 edtNome.Text               := '';
 edtPrincipioAtivo.Text     := '';
 vIdFabricante              := '';
 cbxTipoAplicacao.ItemIndex := -1;
 edtDoseFixaML.Text         := '';
 edtDosePesoML.Text         := '';
 edtDosePesoKG.Text         := '';
end;

procedure TfrmCadFarmaco.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  vFarmacoSelecionado:=1;
  Close;
end;

procedure TfrmCadFarmaco.TreeItemEditarClick(Sender: TObject);
begin
 edtNome.Text               := serviceDB.TableFarmacosNOME.AsString;
 edtPrincipioAtivo.Text     := serviceDB.TableFarmacosPRINCIPIO_ATIVO.AsString;
 vIdFabricante              := serviceDB.TableFarmacosID_FABRICANTE.AsString;
 cbxTipoAplicacao.ItemIndex := serviceDB.TableFarmacosTIPO_APICACAO.AsInteger;
 edtDoseFixaML.Text         := serviceDB.TableFarmacosML_DOSE_FIXA.AsString;
 edtDosePesoML.Text         := serviceDB.TableFarmacosML_DOSE_PV.AsString;
 edtDosePesoKG.Text         := serviceDB.TableFarmacosKG_DOSE_PV.AsString;
 edtFabricante.Text         := serviceDB.TableFarmacosFABRICANTE.AsString;
 edtIndicacao.Text          := serviceDB.TableFarmacosINDICACAO.AsString;
 edtCarencia.Text           := serviceDB.TableFarmacosCARENCIA_DIA.AsString;
 EdtValorML.Text            := serviceDB.TableFarmacosVALOR_ML.AsString;
 serviceDB.TableFarmacos.Edit;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadFarmaco.TreeItemExcluirClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente excluir esse registro?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      try
       serviceDB.TableFarmacos.Edit;
       serviceDB.TableFarmacosSTATUS.AsInteger :=0;
       serviceDB.TableFarmacos.ApplyUpdates(-1);
       serviceDB.TableFarmacos.Close;
       serviceDB.TableFarmacos.Open;
       ShowMessage('Registro excluido com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
    end;
  end);
end;

procedure TfrmCadFarmaco.TreeItemNovoClick(Sender: TObject);
begin
  LimpaCampos;
  serviceDB.TableFarmacos.Close;
  serviceDB.TableFarmacos.Open;
  serviceDB.TableFarmacos.Insert;
  MudarAba(tbiCad,sender);
end;

end.
