unit UCertificadora;

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
  TfrmCadCertificadora = class(TfrmCadPadrao)
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
    Label9: TLabel;
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure edtCNPJExit(Sender: TObject);
    procedure cbxUFExit(Sender: TObject);

  private
    procedure LimpaCampos;
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
  public

  end;

var
  frmCadCertificadora: TfrmCadCertificadora;

implementation

{$R *.fmx}

uses UMsgDlg, UServiceDB;

procedure TfrmCadCertificadora.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length = 0 then
 begin
   MyShowMessage('Informe o Nome!',false);
   Exit;
 end;
 if edtCNPJ.Text.Length = 0 then
 begin
   MyShowMessage('Informe o CNPJ!',false);
   Exit;
 end;
 serviceDB.TableRCertificadoraID_USUARIO.AsString    := serviceDB.vIdUserLogado;
 serviceDB.TableRCertificadoraNOME_FANTASIA.AsString := edtNome.Text;
 serviceDB.TableRCertificadoraCNPJ.AsString          := edtCNPJ.Text;
 serviceDB.TableRCertificadoraENDERECO.AsString      := edtEndereco.Text;
 serviceDB.TableRCertificadoraTELEFONE.AsString      := edtTelefone.Text;
 serviceDB.TableRCertificadoraCIDADE.AsString        := edtCidade.Text;
 if cbxUF.ItemIndex>-1 then
  serviceDB.TableRCertificadoraUF.AsString           := cbxUF.Selected.Text;
 serviceDB.TableRCertificadoraCONTATO.AsString       := edtNomeContato.Text;
 try
   serviceDB.TableRCertificadora.ApplyUpdates(-1);
   MyShowMessage('Cadastro atualizado com sucesso!',false);
   serviceDB.TableRCertificadora.Close;
   serviceDB.TableRCertificadora.Open();
   MudarAba(tbiMnu,sender);
 except
   on E : Exception do
      MYShowMessage(E.ClassName+' Error ao Inserir Certificadora : '+E.Message,false);
 end;
end;

procedure TfrmCadCertificadora.cbxUFExit(Sender: TObject);
begin
 DelayedSetFocus(edtNomeContato);
end;

procedure TfrmCadCertificadora.edtCNPJExit(Sender: TObject);
begin
 DelayedSetFocus(edtEndereco);
end;

procedure TfrmCadCertificadora.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableRCertificadora.Filtered := false;
   serviceDB.TableRCertificadora.Filter   := 'NOME_FANTASIA LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableRCertificadora.Filtered := true;
 end
 else
 begin
   serviceDB.TableRCertificadora.Filtered := false;
   serviceDB.TableRCertificadora.Close;
   serviceDB.TableRCertificadora.Open;
 end;
end;

procedure TfrmCadCertificadora.LimpaCampos;
begin
 edtNome.Text        :='';
 edtCNPJ.Text        :='';
 edtEndereco.Text    :='';
 edtCidade.Text      :='';
 edtNomeContato.Text :='';
 edtTelefone.Text    :='';
 cbxUF.ItemIndex     :=-1;
end;

procedure TfrmCadCertificadora.MyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TfrmCadCertificadora.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
 if (serviceDB.vCadPedido=1)  then
  Close
 else
  inherited;
end;

procedure TfrmCadCertificadora.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.TableRCertificadora.Edit;
  edtNome.Text        := serviceDB.TableRCertificadoraNOME_FANTASIA.AsString;
  edtCNPJ.Text        := serviceDB.TableRCertificadoraCNPJ.AsString;
  edtEndereco.Text    := serviceDB.TableRCertificadoraENDERECO.AsString;
  edtCidade.Text      := serviceDB.TableRCertificadoraCIDADE.AsString;
  edtNomeContato.Text := serviceDB.TableRCertificadoraCONTATO.AsString;
  edtTelefone.Text    := serviceDB.TableRCertificadoraTELEFONE.AsString;
  if serviceDB.TableRCertificadoraUF.AsString.Length>0 then
   cbxUF.ItemIndex    := cbxUF.Items.IndexOf(serviceDB.TableRCertificadoraUF.AsString);
  inherited;
end;

procedure TfrmCadCertificadora.TreeItemExcluirClick(Sender: TObject);
begin
 MessageDlg('Deseja Realmente excluir esse Registro?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
  procedure(const AResult: System.UITypes.TModalResult)
  begin
  case AResult of
  mrYES:
  begin
      try
       serviceDB.TableRCertificadora.Edit;
       serviceDB.TableRCertificadoraSTATUS.AsInteger :=0;
       serviceDB.TableRCertificadora.ApplyUpdates(-1);
       serviceDB.TableRCertificadora.Close;
       serviceDB.TableRCertificadora.Open;
       ShowMessage('Registro excluido com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  mrNo:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
  end);
end;

procedure TfrmCadCertificadora.TreeItemNovoClick(Sender: TObject);
begin
  LimpaCampos;
  serviceDB.TableRCertificadora.Close;
  serviceDB.TableRCertificadora.Open;
  serviceDB.TableRCertificadora.Insert;
  inherited;
end;

end.
