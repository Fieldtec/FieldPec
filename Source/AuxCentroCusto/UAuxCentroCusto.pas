unit UAuxCentroCusto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,DB;

type
  TfrmAuxCentroCusto = class(TfrmCadPadrao)
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    B: TLabel;
    edtDescricao: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxCentroCusto: TfrmAuxCentroCusto;

implementation

{$R *.fmx}

uses USeviceConfinamento, UPrincipal, ServiceDB2, UServiceDB;

procedure TfrmAuxCentroCusto.btnConfirmaClick(Sender: TObject);
begin
  if EdtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    EdtNome.SetFocus;
    Exit;
  end;
  if(ServiceConf.TAuxCentroCusto.State=dsInsert) then
  begin
   ServiceConf.TAuxCentroCustoID_USUARIO.AsString := serviceDB.vIdUserLogado;
   if not serviceDB.VerificaExisteGenericoGeral('AUX_CENTRO_CUSTO','NOME',EdtNome.Text) then
   begin
     MyShowMessage('Já Existe um Centro de Custo com esse Nome!!',false);
     EdtNome.SetFocus;
    Exit;
   end;
  end
  else
  begin
   ServiceConf.TAuxCentroCustoID_USUARIO_ALTERACAO.AsString := serviceDB.vIdUserLogado;
   ServiceConf.TAuxCentroCustoDATA_ALTERACAO.AsDateTime     := now;
  end;
   ServiceConf.TAuxCentroCustoNOME.AsString                 := EdtNome.Text;
   ServiceConf.TAuxCentroCustoDESCRICAO.AsString            := edtDescricao.Text;
   ServiceConf.TAuxCentroCustoID_PROPRIEDADE.AsString       := serviceDB.vIdPropriedade;
   try
    ServiceConf.TAuxCentroCusto.ApplyUpdates(-1);
    myShowMessage('Dados Cadastrado com Sucesso!',false);
    ServiceConf.AbrirCentroCusto;
    MudarAba(tbiMnu,sender);
  except
  on e : Exception do
   myShowMessage('Erro ao Inserir Dados: '+e.Message,false)
  end;
end;

procedure TfrmAuxCentroCusto.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   ServiceConf.TAuxCentroCusto.Filtered := false;
   ServiceConf.TAuxCentroCusto.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   ServiceConf.TAuxCentroCusto.Filtered := true;
 end
 else
 begin
   ServiceConf.TAuxCentroCusto.Filtered := false;
   ServiceConf.AbrirCentroCusto;
 end;
end;

procedure TfrmAuxCentroCusto.edtNomeExit(Sender: TObject);
begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
      edtDescricao.SetFocus;
    end);
   end).Start;
end;

procedure TfrmAuxCentroCusto.FormShow(Sender: TObject);
begin
  ServiceConf.AbrirCentroCusto;
  inherited;
end;
procedure TfrmAuxCentroCusto.TreeItemEditarClick(Sender: TObject);
begin
  edtNome.Text      :=ServiceConf.TAuxCentroCustoNOME.AsString;
  edtDescricao.Text :=ServiceConf.TAuxCentroCustoDESCRICAO.AsString;
  ServiceConf.TAuxCentroCusto.Edit;
  inherited;
end;

procedure TfrmAuxCentroCusto.TreeItemExcluirClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.TAuxCentroCusto.Edit;
       ServiceConf.TAuxCentroCustoSTATUS.AsInteger :=0;
       ServiceConf.TAuxCentroCustoID_USUARIO_ALTERACAO.AsString :=serviceDB.vIdUserLogado;
       ServiceConf.TAuxCentroCustoDATA_ALTERACAO.AsDateTime     :=now;
       ServiceConf.TAuxCentroCusto.ApplyUpdates(-1);
       ServiceConf.AbrirCentroCusto;
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

   end;
  end;

end;

procedure TfrmAuxCentroCusto.TreeItemNovoClick(Sender: TObject);
begin
  ServiceConf.AbrirCentroCusto;
  edtNome.Text      :='';
  edtDescricao.Text :='';
  ServiceConf.TAuxCentroCusto.Insert;
  inherited;
end;

end.


