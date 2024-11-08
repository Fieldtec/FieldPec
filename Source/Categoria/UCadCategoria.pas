unit UCadCategoria;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox,Data.Db, FMX.EditBox, FMX.NumberBox, FMX.Effects,Winapi.Windows;

type
  TfrmCadCategoria = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    Label3: TLabel;
    Layout1: TLayout;
    Layout3: TLayout;
    Label5: TLabel;
    Layout4: TLayout;
    cbxSexo: TComboBox;
    LinkControlToField1: TLinkControlToField;
    Label6: TLabel;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Label7: TLabel;
    edtGMD: TNumberBox;
    LinkControlToField2: TLinkControlToField;
    tbiFaixa: TTabItem;
    Layout5: TLayout;
    Layout9: TLayout;
    Rectangle5: TRectangle;
    TreeView1: TTreeView;
    TreeNovaFaixa: TTreeViewItem;
    Image3: TImage;
    TreeEditaFaixa: TTreeViewItem;
    Image4: TImage;
    TreeViewItem3: TTreeViewItem;
    Image6: TImage;
    Layout10: TLayout;
    Rectangle6: TRectangle;
    Label8: TLabel;
    Layout11: TLayout;
    Image7: TImage;
    Layout13: TLayout;
    Rectangle7: TRectangle;
    StringGrid2: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layTipoEntradas: TLayout;
    Rectangle50: TRectangle;
    Image24: TImage;
    ShadowEffect48: TShadowEffect;
    Layout25: TLayout;
    Layout55: TLayout;
    Rectangle15: TRectangle;
    Label31: TLabel;
    Layout56: TLayout;
    Image13: TImage;
    Layout26: TLayout;
    Layout14: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    edtIdadeMin: TEdit;
    edtIdadeMax: TEdit;
    Layout16: TLayout;
    ShadowEffect1: TShadowEffect;
    Rectangle8: TRectangle;
    Layout17: TLayout;
    Image9: TImage;
    Label12: TLabel;
    ShadowEffect2: TShadowEffect;
    edtFaixaEtaria: TEdit;
    EditButton1: TEditButton;
    Label9: TLabel;
    cbxCategoriaPadrao: TComboBox;
    BindSourceDB3: TBindSourceDB;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure Image13Click(Sender: TObject);
    procedure edtIdadeMinKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Rectangle8Click(Sender: TObject);
    procedure TreeNovaFaixaClick(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure StringGrid2CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure Image7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxCategoriaPadraoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure CarregaCategoriaPadrao(Asexo:string);
  public
    var
     vIdFaixa :string;
     vCarregaSexo:Boolean;
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

{$R *.fmx}

uses UCadRaca, UCadUsers, UCurrais, UPrincipal, UPropriedadeParceira,
  UServiceDB,UMsgDlg;

procedure TfrmCadCategoria.btnCancelarClick(Sender: TObject);
begin
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.OPen;
  inherited;
end;

procedure TfrmCadCategoria.btnConfirmaClick(Sender: TObject);
var
 vCodCategoria:string;
begin
 EditTab.SetFocus;
   if edtNome.Text.Length=0 then
   begin
     MyShowMessage('Informe o nome da Categoria',false);
     Exit;
   end;
   if cbxCategoriaPadrao.ItemIndex=-1 then
   begin
     MyShowMessage('Informe a Categoria Padrão',false);
     Exit;
   end;
   if (edtGMD.Text.Length=0) OR (edtGMD.Value=0) then
   begin
     MyShowMessage('Informe o GMD!',false);
     Exit;
   end;
   if serviceDB.TableCategorias.State in[dsInsert] then
   begin
      vCodCategoria := serviceDB.VerificaCategoriaExiste(edtNome.Text);
      if vCodCategoria.Length>0 then
      begin
        MyShowMessage('Já Existe uma categoria com esse nome!',false);
        Exit;
      end;
   end;
   if serviceDB.TableCategorias.State in[dsEdit] then
   begin
    if serviceDB.VerificaCategoriaExisteEdit(edtNome.Text,serviceDB.TableCategoriasID.AsString).Length>0 then
    begin
       MyShowMessage('Já Existe uma categoria com esse nome!',false);
       Exit;
    end;
   end;
    serviceDB.TableCategoriasUSER_ID.AsString               := serviceDB.vIdUserLogado;
    serviceDB.TableCategoriasGMD.AsFloat                    := edtGMD.Value;
    serviceDB.TableCategoriasFAIXA_ETARIA.AsString          := edtFaixaEtaria.Text;
    serviceDB.TableCategoriasID_FAIXA.AsString              := vIdFaixa;
    serviceDB.TableCategoriasSEXO.AsString                  := cbxSexo.Selected.Text;
    serviceDB.TableCategoriasID_CATEGORIA_PADRAO.AsString   := serviceDB.RetornaIDCatPadrao(cbxCategoriaPadrao.Selected.Text);
   try
    serviceDB.TableCategorias.ApplyUpdates(-1);
    serviceDB.TableCategorias.Close;
    serviceDB.TableCategorias.Open;
    MudarAba(tbiMnu,sender);
   except
   on e : Exception do
    MYShowMessage('Erro ao Inserir Categoria: '+e.Message,false)
   end;
end;

procedure TfrmCadCategoria.edtIdadeMinKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadCategoria.FormCreate(Sender: TObject);
begin
  layTipoEntradas.Visible := false;
  inherited;                       
end;

procedure TfrmCadCategoria.FormShow(Sender: TObject);
begin
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  serviceDB.TableCategoriaPadrao.Close;
  serviceDB.TableCategoriaPadrao.Open;
end;

procedure TfrmCadCategoria.CarregaCategoriaPadrao(Asexo: string);
begin
  vCarregaSexo := false;
  cbxCategoriaPadrao.Items.Clear;
  if Asexo.Length>0 then
  begin
   serviceDB.TableCategoriaPadrao.Close;
   serviceDB.TableCategoriaPadrao.Open;
   serviceDB.TableCategoriaPadrao.Filtered :=false;
   serviceDB.TableCategoriaPadrao.Filter   :='SEXO='+Asexo.QuotedString;
   serviceDB.TableCategoriaPadrao.Filtered :=true;
   while not serviceDB.TableCategoriaPadrao.Eof do
   begin
    cbxCategoriaPadrao.Items.Add(serviceDB.TableCategoriaPadraoNOME.AsString);
    serviceDB.TableCategoriaPadrao.Next;
   end;
  end
  else
  begin
   serviceDB.TableCategoriaPadrao.Filtered :=false;
   serviceDB.TableCategoriaPadrao.Close;
   serviceDB.TableCategoriaPadrao.Open;
   while not serviceDB.TableCategoriaPadrao.Eof do
   begin
    cbxCategoriaPadrao.Items.Add(serviceDB.TableCategoriaPadraoNOME.AsString);
    serviceDB.TableCategoriaPadrao.Next;
   end;
  end;
  vCarregaSexo := true;
end;

procedure TfrmCadCategoria.cbxCategoriaPadraoChange(Sender: TObject);
begin
 if (cbxCategoriaPadrao.ItemIndex>-1) and (vCarregaSexo) then
  cbxSexo.ItemIndex := serviceDB.RetornaSexoCatPadrao(serviceDB.RetornaIDCatPadrao(cbxCategoriaPadrao.Selected.Text));
end;

procedure TfrmCadCategoria.EditButton1Click(Sender: TObject);
begin
 serviceDB.FAIXA_ETATIA.Close;
 serviceDB.FAIXA_ETATIA.Open;
 MudarAba(tbiFaixa,sender);
end;

procedure TfrmCadCategoria.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableCategorias.Filtered := false;
   serviceDB.TableCategorias.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableCategorias.Filtered := true;
 end
 else
 begin
   serviceDB.TableCategorias.Filtered := false;
   serviceDB.TableCategorias.Close;
   serviceDB.TableCategorias.Open;
 end;
end;

procedure TfrmCadCategoria.Image13Click(Sender: TObject);
begin
 edtIdadeMin.Text :='';
 edtIdadeMax.Text :='';
 layTipoEntradas.Visible := false;
end;

procedure TfrmCadCategoria.Image7Click(Sender: TObject);
begin
   MudarAba(tbiCad,sender);
end;

procedure TfrmCadCategoria.MyShowMessage(msg: string; btnCancel: Boolean);
var
 dlg :TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmCadCategoria.Rectangle8Click(Sender: TObject);
begin
 if edtIdadeMin.Text.Length=0 then
 begin
   MyShowMessage('Informe a Idade Minima',false);
   Exit;
 end;
 if edtIdadeMax.Text.Length=0 then
 begin
   MyShowMessage('Informe a Idade Maxima',false);
   Exit;
 end;
 if not(serviceDB.VerificaFaixaExiste(strToInt(edtIdadeMin.Text), strToInt(edtIdadeMax.Text))) then
 begin
   MyShowMessage('Já existe uma Faixa com essas Idade Minima e Maxima',false);
   Exit;
 end;
 serviceDB.FAIXA_ETATIA.Close;
 serviceDB.FAIXA_ETATIA.Open;
 serviceDB.FAIXA_ETATIA.Insert;
 serviceDB.FAIXA_ETATIAIDADE_MINIMA.AsString := edtIdadeMin.Text;
 serviceDB.FAIXA_ETATIAIDADE_MAXIMA.AsString := edtIdadeMax.Text;
 serviceDB.FAIXA_ETATIAID_USUARIO.AsString   := serviceDB.vIdUserLogado;
 try
  serviceDB.FAIXA_ETATIA.ApplyUpdates(-1);
  serviceDB.FAIXA_ETATIA.Close;
  serviceDB.FAIXA_ETATIA.Open;
  edtIdadeMin.Text :='';
  edtIdadeMax.Text :='';
  layTipoEntradas.Visible := false;
 except
   on e : Exception do
    myShowMessage('Erro ao Inserir Currais: '+e.Message,false)
 end;
end;

procedure TfrmCadCategoria.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadCategoria.StringGrid2CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  edtFaixaEtaria.Text   := serviceDB.FAIXA_ETATIAFAIXA.AsString;
  vIdFaixa              :=  serviceDB.FAIXA_ETATIAID.AsString;
  tbPrincipal.ActiveTab := tbiCad;
end;

procedure TfrmCadCategoria.TreeItemEditarClick(Sender: TObject);
begin
  try
   serviceDB.TableCategorias.Edit;
   vIdFaixa                     := serviceDB.TableCategoriasID_FAIXA.AsString;
   edtFaixaEtaria.Text          := serviceDB.TableCategoriasFAIXA_ETARIA.AsString;
   CarregaCategoriaPadrao(serviceDB.TableCategoriasSEXO.AsString);
   cbxCategoriaPadrao.ItemIndex := cbxCategoriaPadrao.Items.IndexOf(serviceDB.TableCategoriasCATPADRAO.AsString);
   cbxSexo.ItemIndex            := cbxSexo.Items.IndexOf(serviceDB.TableCategoriasSEXO.AsString);
   inherited;
  except
   on e : Exception do
   myShowMessage('Erro ao Inserir Currais: '+e.Message,false)
  end;
end;

procedure TfrmCadCategoria.TreeItemExcluirClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Inativar essa Categoria?',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableCategorias.Edit;
       serviceDB.TableCategoriasSTATUS.AsInteger :=0;
       serviceDB.TableCategorias.ApplyUpdates(-1);
       serviceDB.TableCategorias.Close;
       serviceDB.TableCategorias.Open;
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

procedure TfrmCadCategoria.TreeItemNovoClick(Sender: TObject);
begin
  try
   CarregaCategoriaPadrao('');
   cbxSexo.ItemIndex := -1;
   edtFaixaEtaria.Text :='';
   serviceDB.TableCategorias.Close;
   serviceDB.TableCategorias.Open;
   serviceDB.TableCategorias.Insert;
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Categorias: '+e.Message)
  end;
end;

procedure TfrmCadCategoria.TreeNovaFaixaClick(Sender: TObject);
begin
  serviceDB.FAIXA_ETATIA.Close;
  serviceDB.FAIXA_ETATIA.Open;
  serviceDB.FAIXA_ETATIA.Insert;
  layTipoEntradas.Visible := true;
end;

procedure TfrmCadCategoria.TreeViewItem3Click(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  if not serviceDB.VerificaFaixaUsada(serviceDB.TableCategoriasID.AsString) then
  begin
    MyShowMessage('Faixa em Uso no cadastro de Categoria impossivel excluir!',false);
    Exit;
  end
  else
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Deseja Excluir essa faixa?';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      if dlg.vBntConfirmaMsg=1  then
      begin
        try
         serviceDB.FAIXA_ETATIA.Edit;
         serviceDB.FAIXA_ETATIASTATUS.AsInteger :=-1;
         serviceDB.FAIXA_ETATIA.ApplyUpdates(-1);
         serviceDB.FAIXA_ETATIA.Close;
         serviceDB.FAIXA_ETATIA.Open;
        except
        end;
      end;
    end);
  end;
end;

end.
