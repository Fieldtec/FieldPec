unit UAuxMotivoMovimentacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Effects;

type
  TfrmCadAuxMov = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Label3: TLabel;
    Layout24: TLayout;
    Rectangle9: TRectangle;
    Layout25: TLayout;
    Layout28: TLayout;
    edtMotivo: TEdit;
    Layout26: TLayout;
    Label18: TLabel;
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
  private
    procedure MyShowMessage(msg: string; btnCancel: Boolean);

  public
    vConfirma :integer;
  end;

var
  frmCadAuxMov: TfrmCadAuxMov;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal, UMsgDlg;

procedure TfrmCadAuxMov.btnCancelarClick(Sender: TObject);
begin
  Close;

end;

procedure TfrmCadAuxMov.btnConfirmaClick(Sender: TObject);
begin
 if edtMotivo.Text.Length=0 then
 begin
   MyShowMessage('Informe o Motivo!!!',false);
   Exit;
 end;
 serviceDB.MotivoMovimentacaoID_USUARIO.AsString := serviceDB.vIdUserLogado;
 serviceDB.MotivoMovimentacaoNOME.AsString       := edtMotivo.Text;
 try
   serviceDB.MotivoMovimentacao.ApplyUpdates(-1);
   MyShowMessage('Motivo Cadastrada com sucesso!',false);
   serviceDB.MotivoMovimentacao.Close;
   serviceDB.MotivoMovimentacao.Open;
   MudarAba(tbiMnu,sender);
 except
   on e : Exception do
   MyShowMessage('Erro ao Inserir Motivo: '+e.Message,false)
 end;
end;

procedure TfrmCadAuxMov.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.MotivoMovimentacao.Filtered:= false;
   serviceDB.MotivoMovimentacao.Filter  := 'Nome like'+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.MotivoMovimentacao.Filtered:= true;
 end
 else
 begin
   serviceDB.MotivoMovimentacao.Filtered:= false;
   serviceDB.MotivoMovimentacao.Close;
   serviceDB.MotivoMovimentacao.Open;
 end;
end;

procedure TfrmCadAuxMov.FormCreate(Sender: TObject);
begin
  inherited;
  TreeItemNovo.Enabled    := serviceDB.vTipoUser='1';
  TreeItemExcluir.Enabled := serviceDB.vTipoUser='1';
  TreeItemEditar.Enabled  := serviceDB.vTipoUser='1';
end;

procedure TfrmCadAuxMov.FormShow(Sender: TObject);
begin
 serviceDB.MotivoMovimentacao.Close;
 serviceDB.MotivoMovimentacao.Open;
end;

procedure TfrmCadAuxMov.imgCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmCadAuxMov.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadAuxMov.TreeItemEditarClick(Sender: TObject);
begin
  if serviceDB.MotivoMovimentacaoID.AsInteger= 100001 then
  begin
    MyShowMessage('Motivo padrão do sistema, impossivel editar!',false);
    Exit;
  end;

  if serviceDB.MotivoMovimentacaoID.AsInteger= 100002 then
  begin
    MyShowMessage('Motivo padrão do sistema, impossivel editar!',false);
    Exit;
  end;

  serviceDB.MotivoMovimentacao.Edit;
  edtMotivo.Text := serviceDB.MotivoMovimentacaoNOME.AsString;
  inherited;
end;

procedure TfrmCadAuxMov.MyShowMessage(msg: string; btnCancel: Boolean);
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    vConfirma:= dlg.vBntConfirmaMsg;
  end);
end;

procedure TfrmCadAuxMov.TreeItemExcluirClick(Sender: TObject);
begin
  if serviceDB.MotivoMovimentacaoID.AsInteger= 100001 then
  begin
    MyShowMessage('Motivo padrão do sistema, impossivel deletar!',false);
    Exit;
  end;

  if serviceDB.MotivoMovimentacaoID.AsInteger= 100002 then
  begin
    MyShowMessage('Motivo padrão do sistema, impossivel deletar!',false);
    Exit;
  end;


  MyShowMessage('Deseja Realmente Inativar esse Motivo?',true);
  case vConfirma of
  1:
  begin
      try
       serviceDB.MotivoMovimentacao.Edit;
       serviceDB.MotivoMovimentacaoSTATUS.AsInteger :=0;
       serviceDB.MotivoMovimentacao.ApplyUpdates(-1);
       serviceDB.MotivoMovimentacao.Close;
       serviceDB.MotivoMovimentacao.Open;
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
     myShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmCadAuxMov.TreeItemNovoClick(Sender: TObject);
begin
 serviceDB.MotivoMovimentacao.Close;
 serviceDB.MotivoMovimentacao.Open;
 serviceDB.MotivoMovimentacao.Insert;
 edtMotivo.Text :='';
 inherited;
end;

end.
