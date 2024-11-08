unit UCompradorGado;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,Data.Db, Data.Bind.DBScope;

type
  TfrmCadCompradorGado = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Label3: TLabel;
    Layout4: TLayout;
    edtTelefone: TEdit;
    Label5: TLabel;
    edtEmail: TEdit;
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure imgCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCompradorGado: TfrmCadCompradorGado;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal;

procedure TfrmCadCompradorGado.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
  begin
   MyShowMessage('Infome o nome do Comprador!',false);
   edtNome.SetFocus;
   Exit;
  end;
  if (serviceDB.TableComprador.State=dsInsert) then
   if not (serviceDB.VerificaCompradorExiste(edtNome.Text)) then
   begin
     MyShowMessage('Ja existe um Comprador com esse nome!!',false);
     Exit;
   end;
   try
     serviceDB.TableCompradorNOME.AsString        := edtNome.Text;
     serviceDB.TableCompradorTELEFONE.AsString    := edtTelefone.Text;
     serviceDB.TableCompradorEMAIL.AsString       := edtEmail.Text;
     serviceDB.TableCompradorID_USUARIO.AsString  := serviceDB.vIdUserLogado;
     serviceDB.TableComprador.ApplyUpdates(-1);
     serviceDB.TableComprador.Close;
     serviceDB.TableComprador.Open;
     MudarAba(tbiMnu,sender);
    except
     on e : Exception do
      MyShowMessage('Erro ao Inserir Comprador: '+e.Message,false);
    end;
end;

procedure TfrmCadCompradorGado.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableComprador.Filtered := false;
   serviceDB.TableComprador.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableComprador.Filtered := true;
 end
 else
 begin
   serviceDB.TableComprador.Filtered := false;
   serviceDB.TableComprador.Close;
   serviceDB.TableComprador.Open;
 end;
end;

procedure TfrmCadCompradorGado.FormShow(Sender: TObject);
begin
  Treemnu.Enabled := frmPrincipal.vIdBaseCampo='0';
  serviceDB.TableComprador.Close;
  serviceDB.TableComprador.Open;
end;

procedure TfrmCadCompradorGado.imgCloseClick(Sender: TObject);
begin
 if serviceDB.vCadGTA=1 then
  Close
 else
  inherited;
end;

procedure TfrmCadCompradorGado.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 if serviceDB.vCadGTA=1 then
 begin
   Close;
 end;
end;

procedure TfrmCadCompradorGado.TreeItemEditarClick(Sender: TObject);
begin
 try
   serviceDB.TableComprador.Edit;
   edtNome.Text     := serviceDB.TableCompradorNOME.AsString;
   edtEmail.Text    := serviceDB.TableCompradorEMAIL.AsString;
   edtTelefone.Text := serviceDB.TableCompradorTELEFONE.AsString;
   inherited;
  except
   on e : Exception do
    myShowMessage('Erro ao Inserir Comprador: '+e.Message,false)
  end;
end;

procedure TfrmCadCompradorGado.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Inativar esse Comprador?',false);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableComprador.Edit;
       serviceDB.TableCompradorSTATUS.AsInteger :=0;
       serviceDB.TableComprador.ApplyUpdates(-1);
       serviceDB.TableComprador.Close;
       serviceDB.TableComprador.Open;
       ShowMessage('Registro inativado com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  2:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
end;

procedure TfrmCadCompradorGado.TreeItemNovoClick(Sender: TObject);
begin
  edtNome.Text      :='';
  edtEmail.Text     :='';
  edtTelefone.Text  :='';
  try
   serviceDB.TableComprador.Close;
   serviceDB.TableComprador.Open;
   serviceDB.TableComprador.Insert;
   inherited;
  except
   on e : Exception do
    ShowMessage('Erro ao Inserir Categorias: '+e.Message)
  end;
end;

end.
