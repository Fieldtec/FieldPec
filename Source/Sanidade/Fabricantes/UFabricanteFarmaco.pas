unit UFabricanteFarmaco;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UFornecedorBrincos, System.Rtti, FMX.Grid.Style, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, Data.Bind.Grid, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Effects, FMX.ListBox, FMX.ScrollBox,
  FMX.Grid, FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.TreeView,
  FMX.Layouts,DB;

type
  TfrmCadFabricanteFarmaco = class(TfrmCadFornBrincos)
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
  private
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  frmCadFabricanteFarmaco: TfrmCadFabricanteFarmaco;

implementation

{$R *.fmx}

uses UServiceDB, UMsgDlg;



procedure TfrmCadFabricanteFarmaco.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length = 0 then
 begin
   MyShowMessage('Informe o Nome!',false);
   Exit;
 end;
 if serviceDB.TableFornecedorFarmaco.State=dsInsert then
 begin
   if not serviceDB.VerificaFabrincanteFarmaco(edtNome.Text) then
   begin
     MyShowMessage('Ja existe um fabricante com esse nome!',false);
     Exit;
   end;
 end;
 if edtCNPJ.Text.Length = 0 then
 begin
   MyShowMessage('Informe o CNPJ!',false);
   Exit;
 end;
 serviceDB.TableFornecedorFarmacoID_USUARIO.AsString    := serviceDB.vIdUserLogado;
 serviceDB.TableFornecedorFarmacoNOME_FANTASIA.AsString := edtNome.Text;
 serviceDB.TableFornecedorFarmacoCNPJ.AsString          := edtCNPJ.Text;
 serviceDB.TableFornecedorFarmacoENDERECO.AsString      := edtEndereco.Text;
 serviceDB.TableFornecedorFarmacoTELEFONE.AsString      := edtTelefone.Text;
 serviceDB.TableFornecedorFarmacoCIDADE.AsString        := edtCidade.Text;
 if cbxUF.ItemIndex>-1 then
  serviceDB.TableFornecedorFarmacoUF.AsString           := cbxUF.Selected.Text;
 serviceDB.TableFornecedorFarmacoCONTATO.AsString       := edtNomeContato.Text;
 try
   serviceDB.TableFornecedorFarmaco.ApplyUpdates(-1);
   MyShowMessage('Cadastro atualizado com sucesso!',false);
   serviceDB.TableFornecedorFarmaco.Close;
   serviceDB.TableFornecedorFarmaco.Open();
   MudarAba(tbiMnu,sender);
 except
   on E : Exception do
      MYShowMessage(E.ClassName+' Error ao Inserir Fabricante : '+E.Message,false);
 end;
end;

procedure TfrmCadFabricanteFarmaco.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableFornecedorFarmaco.Filtered := false;
   serviceDB.TableFornecedorFarmaco.Filter   := 'NOME_FANTASIA LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableFornecedorFarmaco.Filtered := true;
 end
 else
 begin
   serviceDB.TableFornecedorFarmaco.Filtered := false;
   serviceDB.TableFornecedorFarmaco.Close;
   serviceDB.TableFornecedorFarmaco.Open;
 end;
end;

procedure TfrmCadFabricanteFarmaco.FormShow(Sender: TObject);
begin
 serviceDB.TableFornecedorFarmaco.Close;
 serviceDB.TableFornecedorFarmaco.Open;
end;

procedure TfrmCadFabricanteFarmaco.imgCloseClick(Sender: TObject);
begin
  if (serviceDB.TableFarmacos.State=dsInsert) or (serviceDB.TableFarmacos.State=dsEdit) then
  Close
  else
   inherited;
end;

procedure TfrmCadFabricanteFarmaco.LimpaCampos;
begin
 edtNome.Text        :='';
 edtCNPJ.Text        :='';
 edtEndereco.Text    :='';
 edtCidade.Text      :='';
 edtNomeContato.Text :='';
 edtTelefone.Text    :='';
 cbxUF.ItemIndex     :=-1;
end;

procedure TfrmCadFabricanteFarmaco.StringGrid1CellDblClick(
  const Column: TColumn; const Row: Integer);
begin
  if (serviceDB.TableFarmacos.State=dsInsert) or (serviceDB.TableFarmacos.State=dsEdit) then
   Close;
end;

procedure TfrmCadFabricanteFarmaco.TreeItemEditarClick(Sender: TObject);
begin
 serviceDB.TableFornecedorFarmaco.Edit;
 serviceDB.TableFornecedorFarmacoID_USUARIO.AsString    := serviceDB.vIdUserLogado;
 edtNome.Text     := serviceDB.TableFornecedorFarmacoNOME_FANTASIA.AsString ;
 edtCNPJ.Text     := serviceDB.TableFornecedorFarmacoCNPJ.AsString;
 edtEndereco.Text := serviceDB.TableFornecedorFarmacoENDERECO.AsString;
 edtTelefone.Text := serviceDB.TableFornecedorFarmacoTELEFONE.AsString;
 edtCidade.Text   := serviceDB.TableFornecedorFarmacoCIDADE.AsString;
 if serviceDB.TableFornecedorFarmacoUF.AsString.Length>0 then
  cbxUF.ItemIndex    := cbxUF.Items.IndexOf(serviceDB.TableFornecedorFarmacoUF.AsString);
 edtNomeContato.Text := serviceDB.TableFornecedorFarmacoCONTATO.AsString;
  serviceDB.TableFornecedorFarmaco.edit;
  MudarAba(tbiCad,sender);
end;

procedure TfrmCadFabricanteFarmaco.TreeItemExcluirClick(Sender: TObject);
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
       serviceDB.TableFornecedorFarmaco.Edit;
       serviceDB.TableFornecedorFarmacoSTATUS.AsInteger :=0;
       serviceDB.TableFornecedorFarmaco.ApplyUpdates(-1);
       serviceDB.TableFornecedorFarmaco.Close;
       serviceDB.TableFornecedorFarmaco.Open;
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

procedure TfrmCadFabricanteFarmaco.TreeItemNovoClick(Sender: TObject);
begin
  LimpaCampos;
  serviceDB.TableFornecedorFarmaco.Close;
  serviceDB.TableFornecedorFarmaco.Open;
  serviceDB.TableFornecedorFarmaco.Insert;
  MudarAba(tbiCad,sender);
end;

end.
