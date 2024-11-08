unit UCadOperacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmCadOperacao = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    Layout4: TLayout;
    edtNome: TEdit;
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadOperacao: TfrmCadOperacao;

implementation

{$R *.fmx}

uses UServiceDB, UServiceNew;

procedure TfrmCadOperacao.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o nome!',false);
   Exit;
 end;
 ServiceNew.OPERACAOID_USUARIO.AsString := serviceDB.vIdUserLogado;
 ServiceNew.OPERACAONOME.AsString       := edtNome.Text;
 try
   ServiceNew.OPERACAO.ApplyUpdates(-1);
   ServiceNew.OPERACAO.Close;
   ServiceNew.OPERACAO.Open;
   MudarAba(tbiMnu,sender);
 except
  on e : Exception do
   MyShowMessage('Erro ao Inserir : '+e.Message,FALSE)
 end;
end;

procedure TfrmCadOperacao.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtNome.Text.Length>0 then
 begin
  ServiceNew.OPERACAO.Filtered := false;
  ServiceNew.OPERACAO.Filter   := 'nome like '+QuotedStr('%'+edtFiltroName.Text+'%');
  ServiceNew.OPERACAO.Filtered := true;
 end
 else
 begin
  ServiceNew.OPERACAO.Filtered := false;
  ServiceNew.OPERACAO.Close;
  ServiceNew.OPERACAO.Open;
 end;
end;

procedure TfrmCadOperacao.FormShow(Sender: TObject);
begin
  ServiceNew.OPERACAO.Close;
  ServiceNew.OPERACAO.Open;
  inherited;
end;

procedure TfrmCadOperacao.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadOperacao.TreeItemEditarClick(Sender: TObject);
begin
 edtNome.Text     := ServiceNew.OPERACAONOME.AsString;
 ServiceNew.OPERACAO.Edit;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadOperacao.TreeItemExcluirClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente deletar esse Registro?',FALSE);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceNew.OPERACAO.Edit;
       ServiceNew.OPERACAOSTATUS.AsInteger :=-1;
       ServiceNew.OPERACAO.Close;
       ServiceNew.OPERACAO.Open;
       MyShowMessage('Dados deletados com Sucesso!',FALSE);
      except
      on E : Exception do
       begin
         MyShowMessage('Exception class name = '+E.ClassName,FALSE);
         MyShowMessage('Exception message = '+E.Message,FALSE);
       end;
      end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',FALSE);
   end;
  end;
end;

procedure TfrmCadOperacao.TreeItemNovoClick(Sender: TObject);
begin
 edtNome.Text     := '';
 ServiceNew.OPERACAO.Insert;
 MudarAba(tbiCad,sender);
end;

end.
