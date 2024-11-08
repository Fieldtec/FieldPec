unit UMedicoVeterinario;

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
  TfrmCadVeterinario = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    Layout4: TLayout;
    edtNome: TEdit;
    Layout8: TLayout;
    Rectangle4: TRectangle;
    Layout9: TLayout;
    Label5: TLabel;
    Layout10: TLayout;
    edtEmail: TEdit;
    Layout5: TLayout;
    Rectangle3: TRectangle;
    Layout6: TLayout;
    Label3: TLabel;
    Layout7: TLayout;
    edtTelefone: TEdit;
    Layout11: TLayout;
    Rectangle5: TRectangle;
    Layout12: TLayout;
    Label6: TLabel;
    Layout13: TLayout;
    edtCRM: TEdit;
    Layout252: TLayout;
    btnAbreImgInicial: TRectangle;
    Layout253: TLayout;
    Rectangle53: TRectangle;
    ImgFoto1: TImage;
    Layout254: TLayout;
    Label122: TLabel;
    btnEditarFotoBomba: TButton;
    btnDeletaFotoBomba: TButton;
    OpenImg: TOpenDialog;
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnDeletaFotoBombaClick(Sender: TObject);
    procedure btnEditarFotoBombaClick(Sender: TObject);
  private
    vAss :string;
  public
    { Public declarations }
  end;

var
  frmCadVeterinario: TfrmCadVeterinario;

implementation

{$R *.fmx}

uses UServiceDB, UServiceNew, UPrincipal;

procedure TfrmCadVeterinario.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o nome!',false);
   Exit;
 end;
 if edtCRM.Text.Length=0 then
 begin
   MyShowMessage('Informe o CRM!',false);
   Exit;
 end;
 if vAss.Length>100 then
   ServiceNew.MEDICO_VETERINARIOASSINATURA.AsString     := vAss;


 ServiceNew.MEDICO_VETERINARIOID_USUARIO.AsString := serviceDB.vIdUserLogado;
 ServiceNew.MEDICO_VETERINARIOCRM.AsString        := edtCRM.Text;
 ServiceNew.MEDICO_VETERINARIONOME.AsString       := edtNome.Text;
 if edtEmail.Text.Length>0 then
  ServiceNew.MEDICO_VETERINARIOEMAIL.AsString     := edtEmail.Text
 else
  ServiceNew.MEDICO_VETERINARIOEMAIL.AsVariant    := null;

 if edtTelefone.Text.Length>0 then
   ServiceNew.MEDICO_VETERINARIOTELEFONE.AsString  := edtTelefone.Text
 else
   ServiceNew.MEDICO_VETERINARIOTELEFONE.AsVariant := null;

 if edtEmail.Text.Length>0 then
   ServiceNew.MEDICO_VETERINARIOEMAIL.AsString  := edtEmail.Text
 else
   ServiceNew.MEDICO_VETERINARIOEMAIL.AsVariant := null;
 try
   ServiceNew.MEDICO_VETERINARIO.ApplyUpdates(-1);
   ServiceNew.MEDICO_VETERINARIO.Close;
   ServiceNew.MEDICO_VETERINARIO.Open;
   MudarAba(tbiMnu,sender);
 except
  on e : Exception do
   MyShowMessage('Erro ao Inserir : '+e.Message,FALSE)
 end;
end;

procedure TfrmCadVeterinario.btnDeletaFotoBombaClick(Sender: TObject);
begin
  ImgFoto1.bitmap := nil;
  vAss            := '';
end;

procedure TfrmCadVeterinario.btnEditarFotoBombaClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto1.Bitmap.LoadFromFile(OpenImg.FileName);
   vAss :=  frmPrincipal.Base64FromBitmap(ImgFoto1.Bitmap);
 end;
end;

procedure TfrmCadVeterinario.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtNome.Text.Length>0 then
 begin
  ServiceNew.MEDICO_VETERINARIO.Filtered := false;
  ServiceNew.MEDICO_VETERINARIO.Filter   := 'nome like '+QuotedStr('%'+edtFiltroName.Text+'%');
  ServiceNew.MEDICO_VETERINARIO.Filtered := true;
 end
 else
 begin
  ServiceNew.MEDICO_VETERINARIO.Filtered := false;
  ServiceNew.MEDICO_VETERINARIO.Close;
  ServiceNew.MEDICO_VETERINARIO.Open;
 end;
end;

procedure TfrmCadVeterinario.FormShow(Sender: TObject);
begin
  ServiceNew.MEDICO_VETERINARIO.Close;
  ServiceNew.MEDICO_VETERINARIO.Open;
  inherited;
end;

procedure TfrmCadVeterinario.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadVeterinario.TreeItemEditarClick(Sender: TObject);
begin
 edtNome.Text     := ServiceNew.MEDICO_VETERINARIONOME.AsString;
 edtTelefone.Text := ServiceNew.MEDICO_VETERINARIOTELEFONE.AsString;
 edtEmail.Text    := ServiceNew.MEDICO_VETERINARIOEMAIL.AsString;
 edtCRM.Text      := ServiceNew.MEDICO_VETERINARIOCRM.AsString;
 ServiceNew.MEDICO_VETERINARIO.Edit;
 if ServiceNew.MEDICO_VETERINARIOASSINATURA.AsString.Length>100 then
 begin
  ImgFoto1.Bitmap    := frmPrincipal.BitmapFromBase64(ServiceNew.MEDICO_VETERINARIOASSINATURA.AsString);
  vAss               := ServiceNew.MEDICO_VETERINARIOASSINATURA.AsString;
 end;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadVeterinario.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse Registro?',FALSE);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceNew.MEDICO_VETERINARIO.Edit;
       ServiceNew.MEDICO_VETERINARIOSTATUS.AsInteger :=-1;
       ServiceNew.MEDICO_VETERINARIO.Close;
       ServiceNew.MEDICO_VETERINARIO.Open;
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

procedure TfrmCadVeterinario.TreeItemNovoClick(Sender: TObject);
begin
 edtNome.Text     := '';
 edtTelefone.Text :='';
 edtEmail.Text    :='';
 edtCRM.Text      :='';
 ImgFoto1.Bitmap  :=nil;
 ServiceNew.MEDICO_VETERINARIO.Insert;
 MudarAba(tbiCad,sender);
end;

end.
