unit UMotivoAplicacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UAuxMotivoMorte, System.Rtti, FMX.Grid.Style, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  Data.DB;

type
  TfrmAuxMotivoAplicacao = class(TfrmAuxMotivoMorte)
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure FormCreate(Sender: TObject);
  private
    vConfirma:integer;
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
  public
    { Public declarations }
  end;

var
  frmAuxMotivoAplicacao: TfrmAuxMotivoAplicacao;

implementation

{$R *.fmx}

uses ServiceRel, UServiceDB, UMsgDlg;

procedure TfrmAuxMotivoAplicacao.MyShowMessage(msg: string; btnCancel: Boolean);
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    vConfirma := dlg.vBntConfirmaMsg;
  end);
end;

procedure TfrmAuxMotivoAplicacao.btnConfirmaClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    myShowMessage('Infome o Motivo!',false);
    edtNome.SetFocus;
    Exit;
  end
  else
  begin
    if(serviceDB.TableAuxMotivoAplicacao.State =dsInsert) then
    begin
     if not serviceDB.VerificaMotivoAplicacaoExiste(edtNome.Text)then
     begin
       myShowMessage('Motivo ja cadastrada!!',false);
       Exit;
     end
     else
     begin
       serviceDB.TableAuxMotivoAplicacaoID_USUARIO.AsString := serviceDB.vIdUserLogado;
       serviceDB.TableAuxMotivoAplicacaoMOTIVO.AsString     := edtNome.Text;
       try
         serviceDB.TableAuxMotivoAplicacao.ApplyUpdates(-1);
         myShowMessage('Motivo Cadastrada com sucesso!',false);
         serviceDB.TableAuxMotivoAplicacao.Close;
         serviceDB.TableAuxMotivoAplicacao.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         myShowMessage('Erro ao Inserir Motivo: '+e.Message,false)
       end;
     end;
    end
    else
    begin
      serviceDB.TableAuxMotivoAplicacaoID_USUARIO.AsString := serviceDB.vIdUserLogado;
       serviceDB.TableAuxMotivoAplicacaoMOTIVO.AsString    := edtNome.Text;
       try
         serviceDB.TableAuxMotivoAplicacao.ApplyUpdates(-1);
         ShowMessage('Causa Cadastrada com sucesso!');
         serviceDB.TableAuxMotivoAplicacao.Close;
         serviceDB.TableAuxMotivoAplicacao.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         myShowMessage('Erro ao Inserir Motivo: '+e.Message,false)
       end;
    end;
  end;
end;

procedure TfrmAuxMotivoAplicacao.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableAuxMotivoAplicacao.Filtered := false;
   serviceDB.TableAuxMotivoAplicacao.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableAuxMotivoAplicacao.Filtered := true;
 end
 else
 begin
   serviceDB.TableAuxMotivoAplicacao.Filtered := false;
   serviceDB.TableAuxMotivoAplicacao.Close;
   serviceDB.TableAuxMotivoAplicacao.Open;
 end;
end;

procedure TfrmAuxMotivoAplicacao.FormCreate(Sender: TObject);
begin
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiMnu;
 TreeItemNovo.Enabled   := serviceDB.vTipoUser='1';
 TreeItemExcluir.Enabled := serviceDB.vTipoUser='1';
 TreeItemEditar.Enabled  := serviceDB.vTipoUser='1';
end;

procedure TfrmAuxMotivoAplicacao.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmAuxMotivoAplicacao.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.TableAuxMotivoAplicacao.Edit;
  edtNome.Text  := serviceDB.TableAuxMotivoAplicacaoMOTIVO.AsString;
  MudarAba(tbiCad,Sender);
end;

procedure TfrmAuxMotivoAplicacao.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Inativar esse Motivo?',true);
  case vConfirma of
  1:
  begin
      try
       serviceDB.TableAuxMotivoAplicacao.Edit;
       serviceDB.TableAuxMotivoAplicacaoSTATUS.AsInteger :=0;
       serviceDB.TableAuxMotivoAplicacao.ApplyUpdates(-1);
       serviceDB.TableAuxMotivoAplicacao.Close;
       serviceDB.TableAuxMotivoAplicacao.Open;
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

procedure TfrmAuxMotivoAplicacao.TreeItemNovoClick(Sender: TObject);
begin
  serviceDB.TableAuxMotivoAplicacao.Close;
  serviceDB.TableAuxMotivoAplicacao.Open;
  serviceDB.TableAuxMotivoAplicacao.Insert;
  MudarAba(tbiCad,Sender);
end;

end.
