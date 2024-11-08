unit UAuxCadNotaCocho;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  DB;

type
  TfrmCadAuxNotaCocho = class(TfrmCadPadrao)
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
    edtAjuste: TEdit;
    procedure FormShow(Sender: TObject);
    procedure edtNomeKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAuxNotaCocho: TfrmCadAuxNotaCocho;

implementation

{$R *.fmx}

uses USeviceConfinamento, UServiceDB;

procedure TfrmCadAuxNotaCocho.btnConfirmaClick(Sender: TObject);
begin
   if edtNome.Text.Length=0 then
   begin
     MyShowMessage('Informe a Nota',false);
     Exit;
   end;
   if edtAjuste.Text.Length=0 then
   begin
     MyShowMessage('Informe o Ajuste',false);
     Exit;
   end;

   if ServiceConf.TAuxNotaCocho.State in[dsInsert] then
   begin
      if not ServiceConf.VerificaNotaExiste(edtNome.Text) then
      begin
        MyShowMessage('Já Existe uma Nota com esse nome!',false);
        Exit;
      end;
      ServiceConf.TAuxNotaCochoID_USUARIO.AsString            := serviceDB.vIdUserLogado;
   end;
   if ServiceConf.TAuxNotaCocho.State in[dsEdit] then
   begin
     if not ServiceConf.VerificaNotaExisteEdit(ServiceConf.TAuxNotaCochoID.AsString,
      edtNome.Text) then
      begin
        MyShowMessage('Já Existe uma Nota com esse nome!',false);
        Exit;
      end;
     ServiceConf.TAuxNotaCochoDATA_ALTERACAO.AsDateTime       := now;
   end;
     ServiceConf.TAuxNotaCochoID_USUARIO_ALTERACAO.AsString   := serviceDB.vIdUserLogado;
     ServiceConf.TAuxNotaCochoNOTA.AsString                   := edtNome.Text;
     ServiceConf.TAuxNotaCochoAJUSTE.AsString                 := edtAjuste.Text;
     ServiceConf.TAuxNotaCochoID_PROPRIEDADE.AsString         := serviceDB.vIdPropriedade;
   try
    ServiceConf.TAuxNotaCocho.ApplyUpdates(-1);
    ServiceConf.AbreConfiguracaoNotaCocho;
    MudarAba(tbiMnu,sender);
   except
   on e : Exception do
    MYShowMessage('Erro ao Inserir Nota: '+e.Message,false)
   end;
end;

procedure TfrmCadAuxNotaCocho.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   ServiceConf.TAuxNotaCocho.Filtered := false;
   ServiceConf.TAuxNotaCocho.Filter   := 'NOTA LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   ServiceConf.TAuxNotaCocho.Filtered := true;
 end
 else
 begin
   ServiceConf.TAuxNotaCocho.Filtered := false;
   ServiceConf.TAuxNotaCocho.Close;
   ServiceConf.TAuxNotaCocho.Open;
 end;
end;

procedure TfrmCadAuxNotaCocho.edtNomeKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9',','] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadAuxNotaCocho.FormShow(Sender: TObject);
begin
  ServiceConf.AbreConfiguracaoNotaCocho;
  inherited;
end;

procedure TfrmCadAuxNotaCocho.TreeItemEditarClick(Sender: TObject);
begin
 try
   ServiceConf.TAuxNotaCocho.Edit;
   edtNome.Text          := ServiceConf.TAuxNotaCochoNOTA.AsString;
   edtAjuste.Text        := ServiceConf.TAuxNotaCochoAJUSTE.AsString;
   inherited;
  except
   on e : Exception do
   myShowMessage('Erro ao Editar Nota: '+e.Message,false)
  end;
end;

procedure TfrmCadAuxNotaCocho.TreeItemExcluirClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Inativar essa Nota?',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceConf.TAuxNotaCocho.Edit;
       ServiceConf.TAuxNotaCochoSTATUS.AsInteger :=0;
       ServiceConf.TAuxNotaCocho.ApplyUpdates(-1);
       ServiceConf.AbreConfiguracaoNotaCocho;
       ShowMessage('Registro inativado com Sucesso!');
      except
      on E : Exception do
       begin
         MyShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmCadAuxNotaCocho.TreeItemNovoClick(Sender: TObject);
begin
  try
   edtNome.Text      := '';
   edtAjuste.Text    := '';
   ServiceConf.TAuxNotaCocho.Close;
   ServiceConf.TAuxNotaCocho.Open;
   ServiceConf.TAuxNotaCocho.Insert;
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Nota: '+e.Message)
  end;

end;

end.
