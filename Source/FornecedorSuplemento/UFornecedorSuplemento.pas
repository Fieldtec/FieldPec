unit UFornecedorSuplemento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ListBox,Data.DB,
  FMX.Effects;

type
  TfrmCadFornecedorMineral = class(TfrmCadPadrao)
    Layout1: TLayout;
    Layout4: TLayout;
    Layout3: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    edtCPF_CNPJ: TEdit;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Label5: TLabel;
    edtCidade: TEdit;
    Label6: TLabel;
    cbxUF: TComboBox;
    Label7: TLabel;
    edtContatoNome: TEdit;
    Label8: TLabel;
    edtContatoTelefone: TEdit;
    lblContatoEmail: TLabel;
    edtContatoEmail: TEdit;
    edtRazaoSocial: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Label9: TLabel;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure edtRazaoSocialExit(Sender: TObject);
    procedure edtCPF_CNPJExit(Sender: TObject);
    procedure edtCidadeExit(Sender: TObject);
    procedure cbxUFExit(Sender: TObject);
    procedure edtContatoNomeExit(Sender: TObject);
    procedure edtContatoTelefoneExit(Sender: TObject);
    procedure edtContatoEmailExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure DelayedSetFocus(control : TControl);
  public
    { Public declarations }
  end;

var
  frmCadFornecedorMineral: TfrmCadFornecedorMineral;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB;

procedure TfrmCadFornecedorMineral.btnConfirmaClick(Sender: TObject);
begin
 edtContatoEmail.SetFocus;
 if edtRazaoSocial.Text.Length=0 then
 begin
   MyShowMessage('Preencha os campos obrigatórios *',FALSE);
   Exit;
 end;
 serviceDB.FornecedorSupleMineralRAZAO_SOCIAL.AsString        :=edtRazaoSocial.Text;
 serviceDB.FornecedorSupleMineralCNPJ.AsString                :=edtCPF_CNPJ.Text;
 serviceDB.FornecedorSupleMineralCIDADE.AsString              :=edtCidade.Text;
 if cbxUF.ItemIndex>-1 then
  serviceDB.FornecedorSupleMineralUF.AsString                 :=cbxUF.Selected.Text;
 serviceDB.FornecedorSupleMineralPESSOA_CONTATO.AsString      :=edtContatoNome.Text;
 serviceDB.FornecedorSupleMineralTELEFONE_CONTATO.AsString    :=edtContatoTelefone.Text;
 serviceDB.FornecedorSupleMineralEMAIL_CONTATO.AsString       :=edtContatoEmail.Text;
 serviceDB.FornecedorSupleMineralID_USUARIO.AsString          :=serviceDB.vIdUserLogado;
 try
  serviceDB.FornecedorSupleMineral.ApplyUpdates(-1);
  MyShowMessage('Fornecedor Cadastrado com sucesso!!',FALSE);
  serviceDB.fCon.Commit;
  serviceDB.FornecedorSupleMineral.Close;
  serviceDB.FornecedorSupleMineral.Open;
  MudarAba(tbiMnu,Sender);
 except
 on E : Exception do
   begin
     MyShowMessage('Erro ao inserir Fornecedor : '+E.Message,FALSE);
   end;
 end;
end;

procedure TfrmCadFornecedorMineral.cbxUFExit(Sender: TObject);
begin
  DelayedSetFocus(edtContatoNome);
end;

procedure TfrmCadFornecedorMineral.DelayedSetFocus(control: TControl);
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

procedure TfrmCadFornecedorMineral.edtCidadeExit(Sender: TObject);
begin
   DelayedSetFocus(cbxUF);
end;

procedure TfrmCadFornecedorMineral.edtContatoEmailExit(Sender: TObject);
begin
//  DelayedSetFocus(edtRazaoSocial);
end;

procedure TfrmCadFornecedorMineral.edtContatoNomeExit(Sender: TObject);
begin
//  DelayedSetFocus(edtContatoTelefone);
end;

procedure TfrmCadFornecedorMineral.edtContatoTelefoneExit(Sender: TObject);
begin
  DelayedSetFocus(edtContatoEmail);
end;

procedure TfrmCadFornecedorMineral.edtCPF_CNPJExit(Sender: TObject);
begin
  DelayedSetFocus(edtCidade);
end;

procedure TfrmCadFornecedorMineral.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
  serviceDB.FornecedorSupleMineral.Filtered := false;
  serviceDB.FornecedorSupleMineral.Filter   :='RAZAO_SOCIAL LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
  serviceDB.FornecedorSupleMineral.Filtered := true;
 end
 else
 begin
  serviceDB.FornecedorSupleMineral.Filtered := false;
  serviceDB.FornecedorSupleMineral.Close;
  serviceDB.FornecedorSupleMineral.Open;
 end;
end;

procedure TfrmCadFornecedorMineral.edtRazaoSocialExit(Sender: TObject);
begin
// DelayedSetFocus(edtCPF_CNPJ);
end;

procedure TfrmCadFornecedorMineral.FormShow(Sender: TObject);
begin
  serviceDB.FornecedorSupleMineral.Close;
  serviceDB.FornecedorSupleMineral.Open;
  inherited;
end;

procedure TfrmCadFornecedorMineral.StringGrid1CellDblClick(
  const Column: TColumn; const Row: Integer);
begin
  close;
end;

procedure TfrmCadFornecedorMineral.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.FornecedorSupleMineral.Edit;
  inherited;
end;

procedure TfrmCadFornecedorMineral.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse Fornecedor?',True);
  case dlg.vBntConfirmaMsg of
  1:
  begin
    serviceDB.FornecedorSupleMineral.Edit;
    serviceDB.FornecedorSupleMineralSTATUS.AsInteger :=-1;
    try
     serviceDB.FornecedorSupleMineral.ApplyUpdates(-1);
     MyShowMessage('Fornecedor Excluido com sucesso!',FALSE);
     serviceDB.fCon.Commit;
     serviceDB.FornecedorSupleMineral.Close;
     serviceDB.FornecedorSupleMineral.Open;
     MudarAba(tbiMnu,Sender);
   except
   on E : Exception do
     begin
       MyShowMessage('Erro ao deletar Fornecedor : '+E.Message,FALSE);
     end;
   end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',FALSE);
   end;
  end;
end;

procedure TfrmCadFornecedorMineral.TreeItemNovoClick(Sender: TObject);
begin
  serviceDB.FornecedorSupleMineral.Close;
  serviceDB.FornecedorSupleMineral.Open;
  serviceDB.FornecedorSupleMineral.Insert;
  inherited;
end;

end.
