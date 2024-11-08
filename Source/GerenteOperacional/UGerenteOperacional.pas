unit UGerenteOperacional;

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
  TfrmCadGerenteOperacional = class(TfrmCadPadrao)
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
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnEditarFotoBombaClick(Sender: TObject);
    procedure btnDeletaFotoBombaClick(Sender: TObject);
  private
    vAss :STRING;
  public
    { Public declarations }
  end;

var
  frmCadGerenteOperacional: TfrmCadGerenteOperacional;

implementation

{$R *.fmx}

uses UServiceNew, UServiceDB, UPrincipal;

procedure TfrmCadGerenteOperacional.btnConfirmaClick(Sender: TObject);
begin
if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o nome!',false);
   Exit;
 end;


 ServiceNew.GERENTE_OPERACIONALID_USUARIO.AsString := serviceDB.vIdUserLogado;
 ServiceNew.GERENTE_OPERACIONALNOME.AsString       := edtNome.Text;
 if edtEmail.Text.Length>0 then
  ServiceNew.GERENTE_OPERACIONALEMAIL.AsString     := edtEmail.Text
 else
  ServiceNew.GERENTE_OPERACIONALEMAIL.AsVariant    := null;

 if edtTelefone.Text.Length>0 then
   ServiceNew.GERENTE_OPERACIONALTELEFONE.AsString  := edtTelefone.Text
 else
   ServiceNew.GERENTE_OPERACIONALTELEFONE.AsVariant := null;

 if edtEmail.Text.Length>0 then
   ServiceNew.GERENTE_OPERACIONALEMAIL.AsString  := edtEmail.Text
 else
   ServiceNew.GERENTE_OPERACIONALEMAIL.AsVariant := null;

 if vAss.Length>100 then
  ServiceNew.GERENTE_OPERACIONALASSINATURA.AsString     := vAss;
 try
   ServiceNew.GERENTE_OPERACIONAL.ApplyUpdates(-1);
   ServiceNew.GERENTE_OPERACIONAL.Close;
   ServiceNew.GERENTE_OPERACIONAL.Open;
   MudarAba(tbiMnu,sender);
 except
  on e : Exception do
   MyShowMessage('Erro ao Inserir : '+e.Message,FALSE)
 end;

end;

procedure TfrmCadGerenteOperacional.btnDeletaFotoBombaClick(Sender: TObject);
begin
  ImgFoto1.bitmap := nil;
  vAss            := '';
end;

procedure TfrmCadGerenteOperacional.btnEditarFotoBombaClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto1.Bitmap.LoadFromFile(OpenImg.FileName);
   vAss :=  frmPrincipal.Base64FromBitmap(ImgFoto1.Bitmap);
 end;
end;

procedure TfrmCadGerenteOperacional.edtFiltroNameChangeTracking(
  Sender: TObject);
begin
 if edtNome.Text.Length>0 then
 begin
  ServiceNew.GERENTE_OPERACIONAL.Filtered := false;
  ServiceNew.GERENTE_OPERACIONAL.Filter   := 'nome like '+QuotedStr('%'+edtFiltroName.Text+'%');
  ServiceNew.GERENTE_OPERACIONAL.Filtered := true;
 end
 else
 begin
  ServiceNew.GERENTE_OPERACIONAL.Filtered := false;
  ServiceNew.GERENTE_OPERACIONAL.Close;
  ServiceNew.GERENTE_OPERACIONAL.Open;
 end;
end;

procedure TfrmCadGerenteOperacional.FormShow(Sender: TObject);
begin
  ServiceNew.GERENTE_OPERACIONAL.Close;
  ServiceNew.GERENTE_OPERACIONAL.Open;
end;

procedure TfrmCadGerenteOperacional.StringGrid1CellDblClick(
  const Column: TColumn; const Row: Integer);
begin
  Close;
end;

procedure TfrmCadGerenteOperacional.TreeItemEditarClick(Sender: TObject);
begin
 edtNome.Text     := ServiceNew.GERENTE_OPERACIONALNOME.AsString;
 edtTelefone.Text := ServiceNew.GERENTE_OPERACIONALTELEFONE.AsString;
 edtEmail.Text    := ServiceNew.GERENTE_OPERACIONALEMAIL.AsString;
 ServiceNew.GERENTE_OPERACIONAL.Edit;
 if ServiceNew.GERENTE_OPERACIONALASSINATURA.AsString.Length>100 then
 begin
  ImgFoto1.Bitmap    := frmPrincipal.BitmapFromBase64(ServiceNew.GERENTE_OPERACIONALASSINATURA.AsString);
  vAss               := ServiceNew.GERENTE_OPERACIONALASSINATURA.AsString;
 end;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadGerenteOperacional.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse Registro?',FALSE);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceNew.GERENTE_OPERACIONAL.Edit;
       ServiceNew.GERENTE_OPERACIONALSTATUS.AsInteger :=-1;
       ServiceNew.GERENTE_OPERACIONAL.Close;
       ServiceNew.GERENTE_OPERACIONAL.Open;
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

procedure TfrmCadGerenteOperacional.TreeItemNovoClick(Sender: TObject);
begin
 edtNome.Text     := '';
 edtTelefone.Text :='';
 edtEmail.Text    :='';
 ImgFoto1.Bitmap  :=nil;
 ServiceNew.GERENTE_OPERACIONAL.Insert;
 MudarAba(tbiCad,sender);
end;

end.
