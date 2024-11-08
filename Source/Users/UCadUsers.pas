unit UCadUsers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  FMX.TabControl, FMX.ActnList, System.Actions, FMX.ListBox,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, Data.Bind.Grid, Data.Bind.Components,
  Data.Bind.DBScope,Data.Db, FMX.Effects;

type
  TfrmCadUsers = class(TfrmCadPadrao)
    Label3: TLabel;
    Layout1: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    Layout5: TLayout;
    Layout6: TLayout;
    Label5: TLabel;
    Layout7: TLayout;
    edtUsuario: TEdit;
    Label6: TLabel;
    edtSenha: TEdit;
    Layout8: TLayout;
    Layout9: TLayout;
    Label7: TLabel;
    Layout10: TLayout;
    cbxTipoUser: TComboBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle5: TRectangle;
    Label8: TLabel;
    edtCargo: TEdit;
    btnBuscaAlim: TEditButton;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtUsuarioKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure cbxTipoUserKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure edtNomeExit(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure btnBuscaAlimClick(Sender: TObject);
  private
    { Private declarations }
  public
    vIdCargo:string;
  end;

var
  frmCadUsers: TfrmCadUsers;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal, UAuxCargo, ServiceDB2;

procedure TfrmCadUsers.btnBuscaAlimClick(Sender: TObject);
begin
 frmAuxCargo := TfrmAuxCargo.Create(nil);
  try
    frmAuxCargo.ShowModal;
  finally
    edtCargo.text                 := serviceDBN.TAuxCargoNOME.AsString;
    vIdCargo                      := serviceDBN.TAuxCargoID.AsString;
    frmAuxCargo.Free;
  end;
end;

procedure TfrmCadUsers.btnConfirmaClick(Sender: TObject);
begin
  edtNome.SetFocus;
  if edtNome.Text.Length=0 then
  begin
   MyShowMessage('Infome o nome do usuários!',FALSE);
   edtNome.SetFocus;
   Exit;
  end;
  If edtUsuario.Text.Length=0 then
  begin
   MyShowMessage('Infome o Login do usuários!',FALSE);
   edtUsuario.SetFocus;
   Exit;
  end;
  if edtSenha.Text.Length=0 then
  begin
    MyShowMessage('Infome a senha do usuários!',false);
    edtSenha.SetFocus;
    Exit;
  end;
  if cbxTipoUser.ItemIndex=-1 then
  begin
    MyShowMessage('Infome o tipo do usuários!',false);
    cbxTipoUser.SetFocus;
    Exit;
  end;
  if edtCargo.Text.Length=0 then
  begin
   MyShowMessage('Infome o cargo do usuários!',FALSE);
   edtCargo.SetFocus;
   Exit;
  end;
   if serviceDB.TableUsers.State in [dsInsert] then
   begin
    if serviceDB.ValidaLoginDisponivel(edtUsuario.Text,serviceDB.vIdPropriedade) then
    begin
       serviceDB.TableUsersTipo.AsInteger := cbxTipoUser.ItemIndex;
      try
       serviceDB.TableUsersID_PROPRIEDADE.AsString := serviceDB.vIdPropriedade;
       serviceDB.TableUsersID_CARGO.AsString       := vIdCargo;
       serviceDB.TableUsersLOGIN.AsString          := edtUsuario.Text;
       serviceDB.TableUsersPASSWORD.AsString       := edtSenha.Text;
       serviceDB.TableUsersNAME.AsString           := edtNome.Text;
       serviceDB.TableUsers.ApplyUpdates(-1);
       serviceDB.TableUsers.Active                 := false;
       serviceDB.TableUsers.Active                 := true;
       MudarAba(tbiMnu,sender);
      except
       on e : Exception do
       MyShowMessage('Erro ao Inserir Usuario: '+e.Message,FALSE)
      end;
    end
    else
    begin
      MyShowMessage('Login Indisponível tente : '+edtUsuario.Text+FormatDateTime('yyyy',date),FALSE);
      Exit;
    end;
   end
   else
   begin
     try
       serviceDB.TableUsersLOGIN.AsString          := edtUsuario.Text;
       serviceDB.TableUsersPASSWORD.AsString       := edtSenha.Text;
       serviceDB.TableUsersNAME.AsString           := edtNome.Text;
       serviceDB.TableUsersID_PROPRIEDADE.AsString := serviceDB.vIdPropriedade;
       serviceDB.TableUsersID_CARGO.AsString       := vIdCargo;
       serviceDB.TableUsers.ApplyUpdates(-1);
       serviceDB.TableUsers.Active := false;
       serviceDB.TableUsers.Active := true;
       MudarAba(tbiMnu,sender);
      except
       on e : Exception do
       MyShowMessage('Erro ao Inserir Usuario: '+e.Message,FALSE)
      end;
   end;
end;

procedure TfrmCadUsers.cbxTipoUserKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if Key=vkReturn then
   btnConfirma.SetFocus;
end;

procedure TfrmCadUsers.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableUsers.Filtered := false;
   serviceDB.TableUsers.Filter   := 'NAME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableUsers.Filtered := true;
 end
 else
   serviceDB.TableUsers.Filtered := false;
end;

procedure TfrmCadUsers.edtNomeExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
         procedure
         begin
           edtUsuario.SetFocus;
           edtUsuario.SelectAll;
         end
      );
    end
  ).Start;
end;

procedure TfrmCadUsers.edtNomeKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if Key=vkReturn then
   edtUsuario.SetFocus;
end;

procedure TfrmCadUsers.edtSenhaExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
         procedure
         begin
           cbxTipoUser.SetFocus;
         end
      );
    end
  ).Start;

end;

procedure TfrmCadUsers.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if Key=vkReturn then
   cbxTipoUser.SetFocus;
end;

procedure TfrmCadUsers.edtUsuarioKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if Key=vkReturn then
   edtSenha.SetFocus;
end;

procedure TfrmCadUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tbPrincipal.ActiveTab := tbiMnu;
end;

procedure TfrmCadUsers.FormCreate(Sender: TObject);
begin
//  serviceDB.TableUsers.Close;
//  serviceDB.TableUsers.Open;
  TreeItemNovo.Enabled    := serviceDB.vTipoUser='1';
  TreeItemExcluir.Enabled := serviceDB.vTipoUser='1';
  TreeItemEditar.Enabled  := serviceDB.vTipoUser='1';
  inherited;
end;

procedure TfrmCadUsers.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

procedure TfrmCadUsers.TreeItemEditarClick(Sender: TObject);
begin
  if serviceDB.TableUsers.RecordCount>0 then
  begin
    try
     serviceDB.TableUsers.Edit;
     cbxTipoUser.ItemIndex := serviceDB.TableUsersTIPO.AsInteger;
     edtCargo.Text         := serviceDB.TableUsersCargo.AssTring;
     vIdCargo              := serviceDB.TableUsersID_CARGO.AssTring;
     edtUsuario.Text       := serviceDB.TableUsersLOGIN.AsString;
     edtSenha.Text         := serviceDB.TableUsersPASSWORD.AsString;
     edtNome.Text          := serviceDB.TableUsersNAME.AsString;
     inherited;
    except
     on e : Exception do
     MyShowMessage('Erro ao Editar Usuario: '+e.Message,FALSE)
    end;
  end;
end;

procedure TfrmCadUsers.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse Cliente?',FALSE);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableUsers.Edit;
       serviceDB.TableUsersSTATUS.AsInteger :=0;
       serviceDB.TableUsers.ApplyUpdates(-1);
       serviceDB.TableUsers.Close;
       serviceDB.TableUsers.Open;
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

procedure TfrmCadUsers.TreeItemNovoClick(Sender: TObject);
begin
  edtUsuario.Text       :='';
  edtSenha.Text         :='';
  edtNome.Text          :='';
  edtCargo.Text         :='';
  try
   serviceDB.TableUsers.Close;
   serviceDB.TableUsers.Open;
   serviceDB.TableUsers.Insert;
   inherited;
  except
   on e : Exception do
   MyShowMessage('Erro ao Inserir Usuario: '+e.Message,FALSE)
  end;
end;

end.
