unit UAuxOcorrencia;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.DB;

type
  TfrmAuxOcorrencia = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Layout67: TLayout;
    Rectangle32: TRectangle;
    PTIMA: TLayout;
    Layout68: TLayout;
    Layout69: TLayout;
    B: TLabel;
    edtTipoOcorrencia: TEdit;
    Label3: TLabel;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxOcorrencia: TfrmAuxOcorrencia;

implementation

{$R *.fmx}

uses UServiceDB;

procedure TfrmAuxOcorrencia.btnConfirmaClick(Sender: TObject);
begin
  if edtTipoOcorrencia.Text.Length=0 then
  begin
   MessageDlg('Infome o Tipo de Ocorrência!', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes
  ], 0,
    procedure(const AResult: System.UITypes.TModalResult)
     begin
      case AResult of
      mrYES:
      begin
        edtTipoOcorrencia.SetFocus;
        Exit;
      end;
     end;
    end);
  end
  else
  begin
    if(serviceDB.AuxOcorrencia.State =dsInsert) then
    begin
     if not serviceDB.VerificaTipoOcorrenciaExiste(edtTipoOcorrencia.Text)then
     begin
       ShowMessage('Causa ja cadastrada!!');
       Exit;
     end
     else
     begin
       serviceDB.AuxOcorrenciaOCORRENCIA.AsString    := edtTipoOcorrencia.Text;
       try
         serviceDB.AuxOcorrencia.ApplyUpdates(-1);
         ShowMessage('Tipo de Ocorrência cadastrado com sucesso!');
         serviceDB.AuxOcorrencia.Close;
         serviceDB.AuxOcorrencia.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         ShowMessage('Erro ao Inserir Tipo de Ocorrencia: '+e.Message)
       end;
     end;
    end
    else
    begin
       serviceDB.AuxOcorrenciaOCORRENCIA.AsString    := edtTipoOcorrencia.Text;
       try
         serviceDB.AuxOcorrencia.ApplyUpdates(-1);
         ShowMessage('Tipo de Ocorrência cadastrado com sucesso!');
         serviceDB.AuxOcorrencia.Close;
         serviceDB.AuxOcorrencia.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         ShowMessage('Erro ao Inserir Tipo de Ocorrencia: '+e.Message)
       end;
    end;
  end;
end;

procedure TfrmAuxOcorrencia.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.AuxOcorrencia.Filtered := false;
   serviceDB.AuxOcorrencia.Filter   := 'OCORRENCIA LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.AuxOcorrencia.Filtered := true;
 end
 else
 begin
   serviceDB.AuxOcorrencia.Filtered := false;
   serviceDB.AuxOcorrencia.Close;
   serviceDB.AuxOcorrencia.Open;
 end;
end;

procedure TfrmAuxOcorrencia.FormCreate(Sender: TObject);
begin
  inherited;
  TreeItemNovo.Enabled    := serviceDB.vTipoUser='1';
  TreeItemExcluir.Enabled := serviceDB.vTipoUser='1';
  TreeItemEditar.Enabled  := serviceDB.vTipoUser='1';
end;

procedure TfrmAuxOcorrencia.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmAuxOcorrencia.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.AuxOcorrencia.Edit;
  edtTipoOcorrencia.Text := serviceDB.AuxOcorrenciaOCORRENCIA.AsString;
  inherited;
end;

procedure TfrmAuxOcorrencia.TreeItemExcluirClick(Sender: TObject);
begin
  MessageDlg('Deseja Realmente Excluir esse Tipo de Ocorrencia?', System.UITypes.TMsgDlgType.mtInformation,
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
       ShowMessage('Registro inativado com Sucesso!');
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

procedure TfrmAuxOcorrencia.TreeItemNovoClick(Sender: TObject);
begin
  serviceDB.AuxOcorrencia.Close;
  serviceDB.AuxOcorrencia.Open;
  serviceDB.AuxOcorrencia.Insert;
  inherited;
end;

end.
