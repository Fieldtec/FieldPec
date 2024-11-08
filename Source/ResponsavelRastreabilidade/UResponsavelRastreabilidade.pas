unit UResponsavelRastreabilidade;

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
  TfrmCadRespRastreabilidade = class(TfrmCadPadrao)
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
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnEditarFotoBombaClick(Sender: TObject);
    procedure btnDeletaFotoBombaClick(Sender: TObject);
  private
    vAss :String;
  public
    { Public declarations }
  end;

var
  frmCadRespRastreabilidade: TfrmCadRespRastreabilidade;

implementation

{$R *.fmx}

uses UServiceNew, UPrincipal, UServiceDB;

procedure TfrmCadRespRastreabilidade.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o nome!',false);
   Exit;
 end;


 ServiceNew.RESPONSAVEL_RASTREABILIDADEID_USUARIO.AsString := serviceDB.vIdUserLogado;
 ServiceNew.RESPONSAVEL_RASTREABILIDADENOME.AsString       := edtNome.Text;
 if edtEmail.Text.Length>0 then
  ServiceNew.RESPONSAVEL_RASTREABILIDADEEMAIL.AsString     := edtEmail.Text
 else
  ServiceNew.RESPONSAVEL_RASTREABILIDADEEMAIL.AsVariant    := null;

 if edtTelefone.Text.Length>0 then
   ServiceNew.RESPONSAVEL_RASTREABILIDADETELEFONE.AsString  := edtTelefone.Text
 else
   ServiceNew.RESPONSAVEL_RASTREABILIDADETELEFONE.AsVariant := null;

 if edtEmail.Text.Length>0 then
   ServiceNew.RESPONSAVEL_RASTREABILIDADEEMAIL.AsString  := edtEmail.Text
 else
   ServiceNew.RESPONSAVEL_RASTREABILIDADEEMAIL.AsVariant := null;

 if vAss.Length>100 then
   ServiceNew.RESPONSAVEL_RASTREABILIDADEASSINATURA.AsString     := vAss;

 try
   ServiceNew.RESPONSAVEL_RASTREABILIDADE.ApplyUpdates(-1);
   ServiceNew.RESPONSAVEL_RASTREABILIDADE.Close;
   ServiceNew.RESPONSAVEL_RASTREABILIDADE.Open;
   MudarAba(tbiMnu,sender);
 except
  on e : Exception do
   MyShowMessage('Erro ao Inserir : '+e.Message,FALSE)
 end;
end;

procedure TfrmCadRespRastreabilidade.btnDeletaFotoBombaClick(Sender: TObject);
begin
  ImgFoto1.bitmap := nil;
  vAss            := '';
end;

procedure TfrmCadRespRastreabilidade.btnEditarFotoBombaClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
   ImgFoto1.Bitmap.LoadFromFile(OpenImg.FileName);
   vAss :=  frmPrincipal.Base64FromBitmap(ImgFoto1.Bitmap);
 end;
end;

procedure TfrmCadRespRastreabilidade.edtFiltroNameChangeTracking(
  Sender: TObject);
begin
 if edtNome.Text.Length>0 then
 begin
  ServiceNew.RESPONSAVEL_RASTREABILIDADE.Filtered := false;
  ServiceNew.RESPONSAVEL_RASTREABILIDADE.Filter   := 'nome like '+QuotedStr('%'+edtFiltroName.Text+'%');
  ServiceNew.RESPONSAVEL_RASTREABILIDADE.Filtered := true;
 end
 else
 begin
  ServiceNew.RESPONSAVEL_RASTREABILIDADE.Filtered := false;
  ServiceNew.RESPONSAVEL_RASTREABILIDADE.Close;
  ServiceNew.RESPONSAVEL_RASTREABILIDADE.Open;
 end;
end;

procedure TfrmCadRespRastreabilidade.FormShow(Sender: TObject);
begin
  inherited;
  ServiceNew.RESPONSAVEL_RASTREABILIDADE.Close;
  ServiceNew.RESPONSAVEL_RASTREABILIDADE.Open;
end;

procedure TfrmCadRespRastreabilidade.StringGrid1CellDblClick(
  const Column: TColumn; const Row: Integer);
begin
  Close;
end;

procedure TfrmCadRespRastreabilidade.TreeItemEditarClick(Sender: TObject);
begin
 edtNome.Text     := ServiceNew.RESPONSAVEL_RASTREABILIDADENOME.AsString;
 edtTelefone.Text := ServiceNew.RESPONSAVEL_RASTREABILIDADETELEFONE.AsString;
 edtEmail.Text    := ServiceNew.RESPONSAVEL_RASTREABILIDADEEMAIL.AsString;
 ServiceNew.RESPONSAVEL_RASTREABILIDADE.Edit;
 if ServiceNew.RESPONSAVEL_RASTREABILIDADEASSINATURA.AsString.Length>100 then
 begin
  ImgFoto1.Bitmap    := frmPrincipal.BitmapFromBase64(ServiceNew.RESPONSAVEL_RASTREABILIDADEASSINATURA.AsString);
  vAss               := ServiceNew.RESPONSAVEL_RASTREABILIDADEASSINATURA.AsString;
 end;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadRespRastreabilidade.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse Registro?',FALSE);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceNew.RESPONSAVEL_RASTREABILIDADE.Edit;
       ServiceNew.RESPONSAVEL_RASTREABILIDADESTATUS.AsInteger :=-1;
       ServiceNew.RESPONSAVEL_RASTREABILIDADE.Close;
       ServiceNew.RESPONSAVEL_RASTREABILIDADE.Open;
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

procedure TfrmCadRespRastreabilidade.TreeItemNovoClick(Sender: TObject);
begin
 edtNome.Text     := '';
 edtTelefone.Text :='';
 edtEmail.Text    :='';
 ImgFoto1.Bitmap  :=nil;
 ServiceNew.RESPONSAVEL_RASTREABILIDADE.Insert;
 MudarAba(tbiCad,sender);
end;

end.
