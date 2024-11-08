unit UAuxMotivoMorte;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.db, FMX.Effects;

type
  TfrmAuxMotivoMorte = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    Label3: TLabel;
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxMotivoMorte: TfrmAuxMotivoMorte;

implementation

{$R *.fmx}

uses UServiceDB;

procedure TfrmAuxMotivoMorte.btnConfirmaClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
   MessageDlg('Infome o nome da Causa Morte!', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes
  ], 0,
    procedure(const AResult: System.UITypes.TModalResult)
     begin
      case AResult of
      mrYES:
      begin
        edtNome.SetFocus;
        Exit;
      end;
     end;
    end);
  end
  else
  begin
    if(serviceDB.qryAuxMotivoMorte.State =dsInsert) then
    begin
     if not serviceDB.VerificaCausaMorteExiste(edtNome.Text)then
     begin
       ShowMessage('Causa ja cadastrada!!');
       Exit;
     end
     else
     begin
       serviceDB.qryAuxMotivoMorteID_USER.AsString := serviceDB.vIdUserLogado;
       serviceDB.qryAuxMotivoMorteNOME.AsString    := edtNome.Text;
       try
         serviceDB.qryAuxMotivoMorte.ApplyUpdates(-1);
         ShowMessage('Causa Cadastrada com sucesso!');
         serviceDB.qryAuxMotivoMorte.Close;
         serviceDB.qryAuxMotivoMorte.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         ShowMessage('Erro ao Inserir Causa: '+e.Message)
       end;
     end;
    end
    else
    begin
      serviceDB.qryAuxMotivoMorteID_USER.AsString := serviceDB.vIdUserLogado;
       serviceDB.qryAuxMotivoMorteNOME.AsString    := edtNome.Text;
       try
         serviceDB.qryAuxMotivoMorte.ApplyUpdates(-1);
         ShowMessage('Causa Cadastrada com sucesso!');
         serviceDB.qryAuxMotivoMorte.Close;
         serviceDB.qryAuxMotivoMorte.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         ShowMessage('Erro ao Inserir Causa: '+e.Message)
       end;
    end;
  end;
end;

procedure TfrmAuxMotivoMorte.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.qryAuxMotivoMorte.Filtered := false;
   serviceDB.qryAuxMotivoMorte.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.qryAuxMotivoMorte.Filtered := true;
 end
 else
 begin
   serviceDB.qryAuxMotivoMorte.Filtered := false;
   serviceDB.qryAuxMotivoMorte.Close;
   serviceDB.qryAuxMotivoMorte.Open;
 end;
end;

procedure TfrmAuxMotivoMorte.FormCreate(Sender: TObject);
begin
  inherited;
  TreeItemNovo.Enabled    := serviceDB.vTipoUser='1';
  TreeItemExcluir.Enabled := serviceDB.vTipoUser='1';
  TreeItemEditar.Enabled  := serviceDB.vTipoUser='1';
end;

procedure TfrmAuxMotivoMorte.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmAuxMotivoMorte.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.qryAuxMotivoMorte.Edit;
  inherited;
end;

procedure TfrmAuxMotivoMorte.TreeItemExcluirClick(Sender: TObject);
begin
 MessageDlg('Deseja Realmente Inativar esse Motivo?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
  procedure(const AResult: System.UITypes.TModalResult)
  begin
  case AResult of
  mrYES:
  begin
      try
       serviceDB.qryAuxMotivoMorte.Edit;
       serviceDB.qryAuxMotivoMorteSTATUS.AsInteger :=0;
       serviceDB.qryAuxMotivoMorte.ApplyUpdates(-1);
       serviceDB.qryAuxMotivoMorte.Close;
       serviceDB.qryAuxMotivoMorte.Open;
       ShowMessage('Registro Deletado com Sucesso!');
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

procedure TfrmAuxMotivoMorte.TreeItemNovoClick(Sender: TObject);
begin
  serviceDB.qryAuxMotivoMorte.Close;
  serviceDB.qryAuxMotivoMorte.Open;
  serviceDB.qryAuxMotivoMorte.Insert;
  inherited;
end;

end.
