unit UAuxCargo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,db;

type
  TfrmAuxCargo = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxCargo: TfrmAuxCargo;

implementation

{$R *.fmx}

uses ServiceDB2, UPrevisaoForn, UPrincipal, UServiceDB;

procedure TfrmAuxCargo.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
  begin
    myShowMessage('Infome o Motivo!',false);
    edtNome.SetFocus;
    Exit;
  end
  else
  begin
    if(serviceDBN.TAuxCargo.State =dsInsert) then
    begin
     if not serviceDB.VerificaMotivoAplicacaoExiste(edtNome.Text)then
     begin
       myShowMessage('Motivo ja cadastrada!!',false);
       Exit;
     end
     else
     begin
       serviceDBN.TAuxCargoID_USUARIO.AsString := serviceDB.vIdUserLogado;
       serviceDBN.TAuxCargoNome.AsString     := edtNome.Text;
       try
         serviceDBN.TAuxCargo.ApplyUpdates(-1);
         myShowMessage('Cargo Cadastrada com sucesso!',false);
         serviceDBN.TAuxCargo.Close;
         serviceDBN.TAuxCargo.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         myShowMessage('Erro ao Inserir Cargo: '+e.Message,false)
       end;
     end;
    end
    else
    begin
      serviceDBN.TAuxCargoID_USUARIO.AsString := serviceDB.vIdUserLogado;
       serviceDBN.TAuxCargoNOME.AsString    := edtNome.Text;
       try
         serviceDBN.TAuxCargo.ApplyUpdates(-1);
         ShowMessage('Cargo Cadastrada com sucesso!');
         serviceDBN.TAuxCargo.Close;
         serviceDBN.TAuxCargo.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         myShowMessage('Erro ao Inserir Cargo: '+e.Message,false)
       end;
    end;
  end;
end;

procedure TfrmAuxCargo.edtFiltroNameChangeTracking(Sender: TObject);
begin
if edtFiltroName.Text.Length>0 then
 begin
   serviceDBN.TAuxCargo.Filtered := false;
   serviceDBN.TAuxCargo.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDBN.TAuxCargo.Filtered := true;
 end
 else
 begin
   serviceDBN.TAuxCargo.Filtered := false;
   serviceDBN.TAuxCargo.Close;
   serviceDBN.TAuxCargo.Open;
 end;
end;

procedure TfrmAuxCargo.FormShow(Sender: TObject);
begin
  serviceDBN.TAuxCargo.Close;
  serviceDBN.TAuxCargo.Open;
  inherited;
end;

procedure TfrmAuxCargo.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmAuxCargo.TreeItemEditarClick(Sender: TObject);
begin
  if serviceDBN.TAuxCargoPadrao.AsInteger=1 then
  begin
    MyShowMessage('Cargo Padrão Impossivel Editar!!',false);
    Exit;
  end;

  inherited;
end;

procedure TfrmAuxCargo.TreeItemExcluirClick(Sender: TObject);
begin
  if serviceDBN.TAuxCargoPadrao.AsInteger=1 then
  begin
    MyShowMessage('Cargo Padrão Impossivel Deletar!!',false);
    Exit;
  end
  else
  begin
    MyShowMessage('Deseja Realmente Inativar esse Cargo?',true);
    case frmPrincipal.vConfirma of
    1:
    begin
        try
         serviceDBN.TAuxCargo.Edit;
         serviceDBN.TAuxCargoSTATUS.AsInteger :=0;
         serviceDBN.TAuxCargo.ApplyUpdates(-1);
         serviceDBN.TAuxCargo.Close;
         serviceDBN.TAuxCargo.Open;
         myShowMessage('Registro Inativado com Sucesso!',false);
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

     end;
    end;
  end;
  inherited;
end;

procedure TfrmAuxCargo.TreeItemNovoClick(Sender: TObject);
begin
  edtNome.Text:='';
  serviceDBN.TAuxCargo.Close;
  serviceDBN.TAuxCargo.Open;
  serviceDBN.TAuxCargo.Insert;
  inherited;
end;

end.
