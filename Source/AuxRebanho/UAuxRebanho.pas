unit UAuxRebanho;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ActnList, System.Actions, FMX.TabControl, FMX.ScrollBox, FMX.Grid,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,DB;

type
  TfrmCadRebanho = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout67: TLayout;
    Rectangle32: TRectangle;
    PTIMA: TLayout;
    Layout68: TLayout;
    Layout69: TLayout;
    LBL: TLabel;
    EdtNomeReb: TEdit;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    B: TLabel;
    edtObs: TEdit;
    procedure FormShow(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure EdtNomeRebExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadRebanho: TfrmCadRebanho;

implementation

{$R *.fmx}

uses ServiceDB2, UPrincipal, UServiceDB;

procedure TfrmCadRebanho.btnConfirmaClick(Sender: TObject);
begin
  if EdtNomeReb.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    EdtNomeReb.SetFocus;
    Exit;
  end;
  if(serviceDBN.TAuxRebanho.State=dsInsert) then
  begin
   serviceDBN.TAuxRebanhoID_USUARIO.AsString := serviceDB.vIdUserLogado;
   if not serviceDB.VerificaExisteGenericoGeral('AUX_REBANHO','NOME',EdtNomeReb.Text) then
   begin
     MyShowMessage('Já Existe um Rebanho com esse Nome!!',false);
     EdtNomeReb.SetFocus;
    Exit;
   end;
  end
  else
  begin
   serviceDBN.TAuxRebanhoID_USUARIO_ALTERACAO.AsString := serviceDB.vIdUserLogado;
   serviceDBN.TAuxRebanhoDATA_ALTERACAO.AsDateTime     := now;
  end;
   serviceDBN.TAuxRebanhoNOME.AsString                 := EdtNomeReb.Text;
   serviceDBN.TAuxRebanhoOBSERVACAO.AsString           := edtObs.Text;
   try
    serviceDBN.TAuxRebanho.ApplyUpdates(-1);
    myShowMessage('Dados Cadastrado com Sucesso!',false);
    serviceDBN.TAuxRebanho.Close;
    serviceDBN.TAuxRebanho.Open();
    MudarAba(tbiMnu,sender);
  except
  on e : Exception do
   myShowMessage('Erro ao Inserir Dados: '+e.Message,false)
  end;
end;

procedure TfrmCadRebanho.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDBN.TAuxRebanho.Filtered := false;
   serviceDBN.TAuxRebanho.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDBN.TAuxRebanho.Filtered := true;
 end
 else
 begin
   serviceDBN.TAuxRebanho.Filtered := false;
   serviceDBN.TAuxRebanho.Close;
   serviceDBN.TAuxRebanho.Open;
 end;
end;

procedure TfrmCadRebanho.EdtNomeRebExit(Sender: TObject);
begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
      edtObs.SetFocus;
    end);
   end).Start;
end;

procedure TfrmCadRebanho.FormShow(Sender: TObject);
begin
  serviceDBN.TAuxRebanho.Close;
  serviceDBN.TAuxRebanho.Open;
  inherited;
end;

procedure TfrmCadRebanho.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadRebanho.TreeItemEditarClick(Sender: TObject);
begin
  serviceDBN.TAuxRebanho.Edit;
  edtObs.Text     :=serviceDBN.TAuxRebanhoOBSERVACAO.AsString;
  EdtNomeReb.Text :=serviceDBN.TAuxRebanhoNOME.AsString;
  inherited;
end;

procedure TfrmCadRebanho.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       serviceDBN.TAuxRebanho.Edit;
       serviceDBN.TAuxRebanhoSTATUS.AsInteger :=0;
       serviceDBN.TAuxRebanho.ApplyUpdates(-1);
       serviceDBN.TAuxRebanho.Close;
       serviceDBN.TAuxRebanho.Open;
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

procedure TfrmCadRebanho.TreeItemNovoClick(Sender: TObject);
begin
  edtObs.Text     :='';
  EdtNomeReb.Text :='';
  serviceDBN.TAuxRebanho.Close;
  serviceDBN.TAuxRebanho.Open;
  serviceDBN.TAuxRebanho.Insert;
  inherited;
end;

end.
