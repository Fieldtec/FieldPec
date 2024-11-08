unit UFornecedorBrincos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.ListBox,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmCadFornBrincos = class(TfrmCadPadrao)
       Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Label5: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    edtCNPJ: TEdit;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Label3: TLabel;
    Label6: TLabel;
    Layout4: TLayout;
    edtEndereco: TEdit;
    edtCidade: TEdit;
    Label7: TLabel;
    cbxUF: TComboBox;
    Layout5: TLayout;
    Rectangle5: TRectangle;
    Layout9: TLayout;
    Label8: TLabel;
    Layout10: TLayout;
    edtNomeContato: TEdit;
    Label10: TLabel;
    edtTelefone: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtCNPJExit(Sender: TObject);
    procedure cbxUFExit(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);

  private
    procedure LimpaCampos;
    procedure MyMyShowMessage(msg: string;btnCancel:Boolean);
  public

  end;
  var
   frmCadFornBrincos: TfrmCadFornBrincos;
implementation

{$R *.fmx}

uses UMsgDlg, UServiceDB;

procedure TfrmCadFornBrincos.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length = 0 then
 begin
   MyMyShowMessage('Informe o Nome!',false);
   Exit;
 end;
 if edtCNPJ.Text.Length = 0 then
 begin
   MyMyShowMessage('Informe o CNPJ!',false);
   Exit;
 end;
 serviceDB.TableRFornecedorBrincosID_USUARIO.AsString    := serviceDB.vIdUserLogado;
 serviceDB.TableRFornecedorBrincosNOME_FANTASIA.AsString := edtNome.Text;
 serviceDB.TableRFornecedorBrincosCNPJ.AsString          := edtCNPJ.Text;
 serviceDB.TableRFornecedorBrincosENDERECO.AsString      := edtEndereco.Text;
 serviceDB.TableRFornecedorBrincosTELEFONE.AsString      := edtTelefone.Text;
 serviceDB.TableRFornecedorBrincosCIDADE.AsString        := edtCidade.Text;
 if cbxUF.ItemIndex>-1 then
  serviceDB.TableRFornecedorBrincosUF.AsString           := cbxUF.Selected.Text;
 serviceDB.TableRFornecedorBrincosCONTATO.AsString       := edtNomeContato.Text;
 try
   serviceDB.TableRFornecedorBrincos.ApplyUpdates(-1);
   MyMyShowMessage('Cadastro atualizado com sucesso!',false);
   serviceDB.TableRFornecedorBrincos.Close;
   serviceDB.TableRFornecedorBrincos.Open();
   MudarAba(tbiMnu,sender);
 except
   on E : Exception do
      MYMyShowMessage(E.ClassName+' Error ao Inserir Certificadora : '+E.Message,false);
 end;
end;

procedure TfrmCadFornBrincos.cbxUFExit(Sender: TObject);
begin
  DelayedSetFocus(edtNomeContato);
end;

procedure TfrmCadFornBrincos.edtCNPJExit(Sender: TObject);
begin
 DelayedSetFocus(edtEndereco);
end;

procedure TfrmCadFornBrincos.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableRFornecedorBrincos.Filtered := false;
   serviceDB.TableRFornecedorBrincos.Filter   := 'NOME_FANTASIA LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableRFornecedorBrincos.Filtered := true;
 end
 else
 begin
   serviceDB.TableRFornecedorBrincos.Filtered := false;
   serviceDB.TableRFornecedorBrincos.Close;
   serviceDB.TableRFornecedorBrincos.Open;
 end;
end;

procedure TfrmCadFornBrincos.LimpaCampos;
begin
 edtNome.Text        :='';
 edtCNPJ.Text        :='';
 edtEndereco.Text    :='';
 edtCidade.Text      :='';
 edtNomeContato.Text :='';
 edtTelefone.Text    :='';
 cbxUF.ItemIndex     :=-1;
end;

procedure TfrmCadFornBrincos.MyMyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TfrmCadFornBrincos.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 if (serviceDB.vCadPedido=1)  then
  Close
 else
  inherited;
end;

procedure TfrmCadFornBrincos.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.TableRFornecedorBrincos.Edit;
  edtNome.Text        := serviceDB.TableRFornecedorBrincosNOME_FANTASIA.AsString;
  edtCNPJ.Text        := serviceDB.TableRFornecedorBrincosCNPJ.AsString;
  edtEndereco.Text    := serviceDB.TableRFornecedorBrincosENDERECO.AsString;
  edtCidade.Text      := serviceDB.TableRFornecedorBrincosCIDADE.AsString;
  edtNomeContato.Text := serviceDB.TableRFornecedorBrincosCONTATO.AsString;
  edtTelefone.Text    := serviceDB.TableRFornecedorBrincosTELEFONE.AsString;
  if serviceDB.TableRFornecedorBrincosUF.AsString.Length>0 then
   cbxUF.ItemIndex    := cbxUF.Items.IndexOf(serviceDB.TableRFornecedorBrincosUF.AsString);
  inherited;
end;

procedure TfrmCadFornBrincos.TreeItemNovoClick(Sender: TObject);
begin
  LimpaCampos;
  serviceDB.TableRFornecedorBrincos.Close;
  serviceDB.TableRFornecedorBrincos.Open;
  serviceDB.TableRFornecedorBrincos.Insert;
  inherited;
end;

procedure TfrmCadFornBrincos.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente excluir esse Registro?',true);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableRFornecedorBrincos.Edit;
       serviceDB.TableRFornecedorBrincosSTATUS.AsInteger :=0;
       serviceDB.TableRFornecedorBrincos.ApplyUpdates(-1);
       serviceDB.TableRFornecedorBrincos.Close;
       serviceDB.TableRFornecedorBrincos.Open;
       MyShowMessage('Registro excluido com Sucesso!',false);
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
     MyShowMessage('Opera��o Abortada',false);
   end;
  end;
end;



end.
