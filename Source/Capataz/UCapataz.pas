unit UCapataz;

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
  TfrmCadCapataz = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    Layout4: TLayout;
    edtNome: TEdit;
    Layout5: TLayout;
    Rectangle3: TRectangle;
    Layout6: TLayout;
    Label3: TLabel;
    Layout7: TLayout;
    edtTelefone: TEdit;
    Layout8: TLayout;
    Rectangle4: TRectangle;
    Layout9: TLayout;
    Label5: TLabel;
    Layout10: TLayout;
    edtEmail: TEdit;
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
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure btnEditarFotoBombaClick(Sender: TObject);
    procedure btnDeletaFotoBombaClick(Sender: TObject);
  private
    vAss :String;
  public
    { Public declarations }
  end;

var
  frmCadCapataz: TfrmCadCapataz;

implementation

{$R *.fmx}

uses UServiceNew, UServiceDB, UPrincipal;

procedure TfrmCadCapataz.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o nome!',false);
   Exit;
 end;
 ServiceNew.CAPATAZID_USUARIO.AsString := serviceDB.vIdUserLogado;
 ServiceNew.CAPATAZNOME.AsString       := edtNome.Text;
 if edtEmail.Text.Length>0 then
  ServiceNew.CAPATAZEMAIL.AsString     := edtEmail.Text
 else
  ServiceNew.CAPATAZEMAIL.AsVariant    := null;

 if edtTelefone.Text.Length>0 then
   ServiceNew.CAPATAZTELEFONE.AsString  := edtTelefone.Text
 else
   ServiceNew.CAPATAZTELEFONE.AsVariant := null;

 if edtEmail.Text.Length>0 then
   ServiceNew.CAPATAZEMAIL.AsString  := edtEmail.Text
 else
   ServiceNew.CAPATAZEMAIL.AsVariant := null;
 if vAss.Length>100 then
  ServiceNew.CAPATAZASSINATURA.AsString     := vAss;
 try
   ServiceNew.CAPATAZ.ApplyUpdates(-1);
   ServiceNew.CAPATAZ.Close;
   ServiceNew.CAPATAZ.Open;
   MudarAba(tbiMnu,sender);
 except
  on e : Exception do
   MyShowMessage('Erro ao Inserir : '+e.Message,FALSE)
 end;
end;

procedure TfrmCadCapataz.btnDeletaFotoBombaClick(Sender: TObject);
begin
  ImgFoto1.bitmap := nil;
  vAss            := '';
end;

procedure TfrmCadCapataz.btnEditarFotoBombaClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto1.Bitmap.LoadFromFile(OpenImg.FileName);
   vAss :=  frmPrincipal.Base64FromBitmap(ImgFoto1.Bitmap);
 end;
end;

procedure TfrmCadCapataz.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtNome.Text.Length>0 then
 begin
  ServiceNew.CAPATAZ.Filtered := false;
  ServiceNew.CAPATAZ.Filter   := 'nome like '+QuotedStr('%'+edtFiltroName.Text+'%');
  ServiceNew.CAPATAZ.Filtered := true;
 end
 else
 begin
  ServiceNew.CAPATAZ.Filtered := false;
  ServiceNew.CAPATAZ.Close;
  ServiceNew.CAPATAZ.Open;
 end;
end;

procedure TfrmCadCapataz.FormShow(Sender: TObject);
begin
  ServiceNew.CAPATAZ.Close;
  ServiceNew.CAPATAZ.Open;
  inherited;
end;

procedure TfrmCadCapataz.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadCapataz.TreeItemEditarClick(Sender: TObject);
begin
 edtNome.Text     := ServiceNew.CAPATAZNOME.AsString;
 edtTelefone.Text := ServiceNew.CAPATAZTELEFONE.AsString;
 edtEmail.Text    := ServiceNew.CAPATAZEMAIL.AsString;
 ServiceNew.CAPATAZ.Edit;
 if ServiceNew.CAPATAZASSINATURA.AsString.Length>100 then
 begin
  ImgFoto1.Bitmap    := frmPrincipal.BitmapFromBase64(ServiceNew.CAPATAZASSINATURA.AsString);
  vAss               := ServiceNew.CAPATAZASSINATURA.AsString;
 end;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadCapataz.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse Registro?',FALSE);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceNew.CAPATAZ.Edit;
       ServiceNew.CAPATAZSTATUS.AsInteger :=-1;
       ServiceNew.CAPATAZ.Close;
       ServiceNew.CAPATAZ.Open;
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

procedure TfrmCadCapataz.TreeItemNovoClick(Sender: TObject);
begin
 edtNome.Text := '';
 edtTelefone.Text :='';
 edtEmail.Text    :='';
 ImgFoto1.Bitmap  :=nil;
 ServiceNew.CAPATAZ.Insert;
 MudarAba(tbiCad,sender);
end;

end.
