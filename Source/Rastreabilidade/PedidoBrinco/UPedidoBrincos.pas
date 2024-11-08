unit UPedidoBrincos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Effects, FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, FMX.DateTimeCtrls, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope,Winapi.Windows, FMX.ListBox, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  DB;

type
  TfrmCadPedido = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle1Ped: TRectangle;
    Layout1Ped: TLayout;
    Layout3: TLayout;
    Label3: TLabel;
    ShadowEffect2: TShadowEffect;
    Label4: TLabel;
    edtPropriedadeOrigem: TEdit;
    btnBuscarOrigem: TEditButton;
    edtCertificadora: TEdit;
    EditButton1: TEditButton;
    Rectangle2Ped: TRectangle;
    Layout4Ped: TLayout;
    Layout5: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    edtFornecedor: TEdit;
    EditButton2: TEditButton;
    ShadowEffect3: TShadowEffect;
    edtNumPedido: TEdit;
    Label7: TLabel;
    edtNumNf: TEdit;
    Label8: TLabel;
    edtDataSolicitacao: TDateEdit;
    Rectangle3Ped: TRectangle;
    Layout6Ped: TLayout;
    Layout7: TLayout;
    ShadowEffect4: TShadowEffect;
    Label12: TLabel;
    edtDataEntrada: TDateEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtNumeroIni: TEdit;
    edtNumeroFinal: TEdit;
    edtqtdBrincosCaixa: TEdit;
    TreeGeraEstoque: TTreeViewItem;
    Image6: TImage;
    layAguarde: TLayout;
    Rectangle4Ped: TRectangle;
    Label13Ped: TLabel;
    tbiEstoque: TTabItem;
    Layout8Ped: TLayout;
    Layout9Ped: TLayout;
    Rectangle5Ped: TRectangle;
    TreeView1: TTreeView;
    TreeViewItem1: TTreeViewItem;
    Image7: TImage;
    TreeViewItem2: TTreeViewItem;
    Image8: TImage;
    TreeViewItem3: TTreeViewItem;
    Image9: TImage;
    ShadowEffect5: TShadowEffect;
    Layout10Ped: TLayout;
    ToolBar5: TToolBar;
    Label14: TLabel;
    Layout11: TLayout;
    Image11: TImage;
    Layout12pED: TLayout;
    Rectangle6Ped: TRectangle;
    GroupBox2Ped: TGroupBox;
    edtSISBOVFiltro: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    edtProdutorFiltro: TEdit;
    BindSourceDB2: TBindSourceDB;
    edtManejoFiltro: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    edtCaixa: TEdit;
    Label19: TLabel;
    cbxFiltroStatus: TComboBox;
    btnFiltraAnimal: TSpeedButton;
    Image23: TImage;
    ToolBar6: TToolBar;
    lblCount: TLabel;
    Layout1Ped1: TLayout;
    layGrid: TLayout;
    ListView1: TListView;
    Rectangle3bnd: TRectangle;
    Layout6: TLayout;
    Label13: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    cbxTipoIdentificacao: TComboBox;
    SpeedButton2: TSpeedButton;
    Image3: TImage;
    TreeViewItem4: TTreeViewItem;
    Image4: TImage;
    procedure btnBuscarOrigemClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure edtNumeroIniExit(Sender: TObject);
    procedure edtNumeroFinalExit(Sender: TObject);
    procedure edtqtdBrincosCaixaKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure TreeGeraEstoqueClick(Sender: TObject);

    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnFiltraAnimalClick(Sender: TObject);
    procedure edtDataEntradaExit(Sender: TObject);
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure TreeViewItem4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    procedure GeraListaNumeros(IdPedido:string);
  public
    var
     vIdCertificadora,
     vIdProdutor,
     vIdFornecedor:string;
  end;

var
  frmCadPedido: TfrmCadPedido;

implementation

{$R *.fmx}

uses UServiceDB, UPropriedadeParceira, UCertificadora,
  UFornecedorBrincos, UPrincipal, UMsgDlg, ServiceDB2;

procedure TfrmCadPedido.btnBuscarOrigemClick(Sender: TObject);
begin
  serviceDB.AbreQryPropriedadesRastreadas('1');
  frmCadPropriedades := TfrmCadPropriedades.Create(Self);
  try
    frmCadPropriedades.ShowModal;
    vIdProdutor               := serviceDB.TableProdutoresID.AsString;
    edtPropriedadeOrigem.Text := serviceDB.TableProdutoresNOME.AsString;
  finally
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmCadPedido.btnConfirmaClick(Sender: TObject);
var
 vManejoIni,vManejoFIm:string;
begin
 if edtPropriedadeOrigem.Text.Length =0 then
 begin
   MyShowMessage('Informe o Produtor',false);
   Exit;
 end;
 if edtCertificadora.Text.Length =0 then
 begin
   MyShowMessage('Informe a Certificadora',false);
   Exit;
 end;
 if edtFornecedor.Text.Length =0 then
 begin
   MyShowMessage('Informe o Fornecedor',false);
   Exit;
 end;
 if edtNumPedido.Text.Length =0 then
 begin
   MyShowMessage('Informe o Número do Pedido',false);
   Exit;
 end
 else
 begin
   if(serviceDB.TablePedidoBrinco.State=dsInsert) and (not serviceDB.VerificaNumeroPedido(edtNumPedido.Text)) then
   begin
     MyShowMessage('Ja existe um pedido cadastrado com esse numero: '+edtNumPedido.Text,false);
     Exit;
   end;
 end;
 if edtNumeroIni.Text.Length =0 then
 begin
   MyShowMessage('Informe o Número Inicial',false);
   Exit;
 end
 else
 begin
  if not serviceDB.ValidaDGSisbov(edtNumeroIni.Text) then
   begin
     MyShowMessage('SISBOV INICIAL INVALIDO!!',false);
     edtNumeroFinal.SetFocus;
     Exit;
   end
 end;
 if edtNumeroFinal.Text.Length =0 then
 begin
   MyShowMessage('Informe o Número Final',false);
   Exit;
 end
 else
 begin
  if not serviceDB.ValidaDGSisbov(edtNumeroFinal.Text) then
   begin
     MyShowMessage('SISBOV FINAL INVALIDO!!',false);
     edtNumeroFinal.SetFocus;
     Exit;
   end
 end;
 vManejoIni := copy(edtNumeroIni.Text,9,6);
 vManejoFIm := copy(edtNumeroFinal.Text,9,6);

 if strToInt(vManejoIni)>strToInt(vManejoFIm) then
 begin
     MyShowMessage('SISBOV Final nao pode ser menor que o inicial!!',false);
     edtNumeroFinal.SetFocus;
     Exit;
 end;

 serviceDB.TablePedidoBrincoTIPO.AsString                 := cbxTipoIdentificacao.Selected.Text;
 serviceDB.TablePedidoBrincoID_USUARIO.AsString           := serviceDB.vIdUserLogado;
 serviceDB.TablePedidoBrincoID_FORNECEDOR_BRINCO.AsString := vIdFornecedor;
 serviceDB.TablePedidoBrincoID_CERTIFICADORA.AsString     := vIdCertificadora;
 serviceDB.TablePedidoBrincoID_PRODUTOR.AsString          := vIdProdutor;
 serviceDB.TablePedidoBrincoNUMERO_PEDIDO.AsString        := edtNumPedido.Text;
 serviceDB.TablePedidoBrincoNUMERO_NF.AsString            := edtNumNf.Text;
 serviceDB.TablePedidoBrincoDATA_SOLICITACAO.AsDateTime   := edtDataSolicitacao.Date;
 serviceDB.TablePedidoBrincoDATA_ENTRADA.AsDateTime       := edtDataEntrada.Date;
 serviceDB.TablePedidoBrincoNUMERO_INICIAL.AsString       := edtNumeroIni.Text;
 serviceDB.TablePedidoBrincoNUMERO_FINAL.AsString         := edtNumeroFinal.Text;
 serviceDB.TablePedidoBrincoQTD_REG_PAGINA.AsString       := edtqtdBrincosCaixa.Text;
 try
   serviceDB.TablePedidoBrinco.ApplyUpdates(-1);
   MyShowMessage('Pedido cadastrado com sucesso!',false);
   MudarAba(tbimnu,Sender);
   serviceDB.TablePedidoBrinco.Close;
   serviceDB.TablePedidoBrinco.Open;
 except
  on E : Exception do
    MyShowMessage('Erro ao inserir Pedido : '+E.Message,false);
 end;
end;

procedure TfrmCadPedido.btnFiltraAnimalClick(Sender: TObject);
begin
 GeraListaNumeros(serviceDB.TablePedidoBrincoID.AsString);
end;

procedure TfrmCadPedido.btnVoltarPadraoClick(Sender: TObject);
begin
 MudarAba(tbiMnu,sender);

end;

procedure TfrmCadPedido.EditButton1Click(Sender: TObject);
begin
  serviceDB.TableRCertificadora.Close;
  serviceDB.TableRCertificadora.Open;
  frmCadCertificadora := TfrmCadCertificadora.Create(Self);
  try
    frmCadCertificadora.ShowModal;
    vIdCertificadora      := serviceDB.TableRCertificadoraID.AsString;
    edtCertificadora.Text := serviceDB.TableRCertificadoraNOME_FANTASIA.AsString;
  finally
    frmCadCertificadora.Free;
  end;
end;

procedure TfrmCadPedido.EditButton2Click(Sender: TObject);
begin
  serviceDB.TableRFornecedorBrincos.Close;
  serviceDB.TableRFornecedorBrincos.Open;
  serviceDB.vCadPedido:=1;
  frmCadFornBrincos := TfrmCadFornBrincos.Create(Self);
  try
    frmCadFornBrincos.ShowModal;
    vIdFornecedor         := serviceDB.TableRFornecedorBrincosID.AsString;
    edtFornecedor.Text    := serviceDB.TableRFornecedorBrincosNOME_FANTASIA.AsString;
  finally
    frmCadFornBrincos.Free;
  end;
end;

procedure TfrmCadPedido.edtDataEntradaExit(Sender: TObject);
begin
 DelayedSetFocus(edtNumeroIni);
end;

procedure TfrmCadPedido.edtFiltroNameChangeTracking(Sender: TObject);
var
 Filtro:string;
begin
 Filtro   :='';

 if edtFiltroName.Text.Length>0 then
   Filtro   := ' AND NUMERO_PEDIDO='+edtFiltroName.Text;

 if edtProdutorFiltro.Text.Length>0 then
   Filtro := ' AND po.nome LIKE '+QuotedStr('%'+edtProdutorFiltro.Text+'%');

 serviceDB.FiltraPedidoBrincos(Filtro);
end;

procedure TfrmCadPedido.edtNumeroFinalExit(Sender: TObject);
begin
 if edtNumeroFinal.Text.Length<>15 then
 begin
   MyShowMessage('SISBOV DEVE CONTER 15 CARACTERES!!',false);
   Exit;
   btnConfirma.Enabled := false;
   edtNumeroFinal.SetFocus;
 end;

 if not serviceDB.ValidaDGSisbov(edtNumeroFinal.Text) then
 begin
   MyShowMessage('SISBOV FINAL INVALIDO!!',false);
   btnConfirma.Enabled := false;
   edtNumeroFinal.SetFocus;
   Exit;
 end
 else
  btnConfirma.Enabled := true;
end;

procedure TfrmCadPedido.edtNumeroIniExit(Sender: TObject);
begin
 if edtNumeroIni.Text.Length<>15 then
 begin
   MyShowMessage('SISBOV DEVE CONTER 15 CARACTERES!!',false);
   Exit;
   btnConfirma.Enabled := false;
   edtNumeroIni.SetFocus;
 end;
 if not serviceDB.ValidaDGSisbov(edtNumeroIni.Text) then
 begin
   MyShowMessage('SISBOV INICIAL INVALIDO!!',false);
   btnConfirma.Enabled := false;
   edtNumeroIni.SetFocus;
   Exit;
 end
 else
  btnConfirma.Enabled := true;
end;

procedure TfrmCadPedido.edtqtdBrincosCaixaKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  KeyChar := #0;
end;

procedure TfrmCadPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  serviceDB.vCadPedido :=0;
  inherited;
end;

procedure TfrmCadPedido.FormCreate(Sender: TObject);
begin
  layAguarde.Visible      := false;
  TreeGeraEstoque.Enabled := false;
  inherited;
end;

procedure TfrmCadPedido.FormShow(Sender: TObject);
begin
 serviceDB.TablePedidoBrinco.Close;
 serviceDB.TablePedidoBrinco.Open;
end;

procedure TfrmCadPedido.GeraListaNumeros(IdPedido: string);
var
 myThread : TThread;
 item     : TListViewItem;
 txt      : TListItemText;
 Filtro   : string;
begin
 Filtro:='';
 if edtSISBOVFiltro.Text.Length>0 then
  Filtro :=' AND SISBOV='+edtSISBOVFiltro.Text.QuotedString;
 if edtManejoFiltro.Text.Length>0 then
  Filtro :=Filtro+' AND MANEJO='+edtMANEJOFiltro.Text.QuotedString;
 if edtCaixa.Text.Length>0 then
  Filtro :=Filtro+' AND CAIXA='+edtCaixa.Text.QuotedString;
 if cbxFiltroStatus.ItemIndex>0 then
 begin
  if cbxFiltroStatus.ItemIndex=1 then
   Filtro :=Filtro+' AND usado=1';
  if cbxFiltroStatus.ItemIndex=2 then
   Filtro :=Filtro+' AND usado=0';
 end;
 serviceDB.FiltraEstoqueBrincos(IdPedido,Filtro);
 ListView1.Items.Clear;
 serviceDB.TablePedidoNumeros.First;
 myThread := TThread.CreateAnonymousThread(
 procedure
 begin
  TThread.Synchronize(nil,procedure
  var
   I:integer;
  begin
   I    := 1;
   while not serviceDB.TablePedidoNumeros.Eof do
   begin
     item := ListView1.Items.Add;
     with frmCadPedido do
     begin
       with item  do
       begin
         txt :=   TListItemText(Objects.FindDrawable('Text1'));
         txt.Text := serviceDB.TablePedidoNumerosSISBOV.AsString;
         txt.Font.Size  := 12;
         txt.Font.Style := [TFontStyle.fsBold];

         txt :=   TListItemText(Objects.FindDrawable('Text2'));
         txt.Text := serviceDB.TablePedidoNumerosMANEJO.AsString;
         txt.Font.Size  := 12;
         txt.Font.Style := [TFontStyle.fsBold];

         txt :=   TListItemText(Objects.FindDrawable('Text3'));
         txt.Text := serviceDB.TablePedidoNumerosCAIXA.AsString;
         txt.Font.Size  := 12;
         txt.Font.Style := [TFontStyle.fsBold];

         txt :=   TListItemText(Objects.FindDrawable('Text4'));
         txt.Text := serviceDB.TablePedidoNumerosSTATUS_USO.AsString;
         txt.Font.Size  := 12;
         txt.Font.Style := [TFontStyle.fsBold];
         inc(I);
       end;
     end;
     serviceDB.TablePedidoNumeros.Next;
   end;
   lblCount.Text := intToStr(I-1);
  end);
 end);
 myThread.Start;
end;

procedure TfrmCadPedido.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  TreeGeraEstoque.Enabled := serviceDB.TablePedidoBrincoID.AsInteger>0;
end;

procedure TfrmCadPedido.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  GeraListaNumeros(serviceDB.TablePedidoBrincoID.AsString);
  tbPrincipal.ActiveTab := tbiEstoque;
end;

procedure TfrmCadPedido.TreeGeraEstoqueClick(Sender: TObject);
var
 vQtde:string;
 myThread : TThread;
begin
  if not serviceDB.VerificaEstoqueGerado(serviceDB.TablePedidoBrincoID.AsString) then
  begin
    MyShowMessage('Estoque ja foi gerado para esse pedido!!',false);
    Exit;
  end;
  myThread := TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize(nil,procedure
    begin
      layAguarde.Visible := true;
    end);
      try
         vQtde:=serviceDB.GeraNumeracaoEstoque(
         serviceDB.TablePedidoBrincoNUMERO_INICIAL.AsString ,
         serviceDB.TablePedidoBrincoNUMERO_FINAL.AsString,
         serviceDB.TablePedidoBrincoQTD_REG_PAGINA.AsString,
         serviceDB.TablePedidoBrincoID.AsString);
         TThread.Synchronize(nil,procedure
         begin
          layAguarde.Visible := false;
          MyShowMessage('Estoque gerado com sucesso, total de Brincos : '+vQtde,false);
         end);
      except
         on E : Exception do
         MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
      end;

  end);
  myThread.start();
end;

procedure TfrmCadPedido.TreeItemEditarClick(Sender: TObject);
begin
 serviceDB.TablePedidoBrinco.Edit;
 vIdFornecedor                  := serviceDB.TablePedidoBrincoID_FORNECEDOR_BRINCO.AsString;
 vIdCertificadora               := serviceDB.TablePedidoBrincoID_CERTIFICADORA.AsString;
 vIdProdutor                    := serviceDB.TablePedidoBrincoID_PRODUTOR.AsString;
 edtCertificadora.Text          := serviceDB.TablePedidoBrincoCERTIFICADORA.AsString;
 edtFornecedor.Text             := serviceDB.TablePedidoBrincoFORNECEDOR.AsString;
 edtPropriedadeOrigem.Text      := serviceDB.TablePedidoBrincoPRODUTOR.AsString;
 edtNumPedido.Text              := serviceDB.TablePedidoBrincoNUMERO_PEDIDO.AsString;
 edtNumNf.Text                  := serviceDB.TablePedidoBrincoNUMERO_NF.AsString;
 edtDataSolicitacao.Date        := serviceDB.TablePedidoBrincoDATA_SOLICITACAO.AsDateTime;
 edtDataEntrada.Date            := serviceDB.TablePedidoBrincoDATA_ENTRADA.AsDateTime;
 edtNumeroIni.Text              := serviceDB.TablePedidoBrincoNUMERO_INICIAL.AsString;
 edtNumeroFinal.Text            := serviceDB.TablePedidoBrincoNUMERO_FINAL.AsString;
 edtqtdBrincosCaixa.Text        := serviceDB.TablePedidoBrincoQTD_REG_PAGINA.AsString;
 cbxTipoIdentificacao.ItemIndex :=  cbxTipoIdentificacao.Items.IndexOf(serviceDB.TablePedidoBrincoTIPO.AsString);
 edtNumeroIni.Enabled           := false;
 edtNumeroFinal.Enabled         := false;
 edtqtdBrincosCaixa.Enabled     := false;
 MudarAba(tbiCad,sender);

end;

procedure TfrmCadPedido.TreeItemExcluirClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
 if not serviceDB.VerificaPedidoUsado(serviceDB.TablePedidoBrincoID.AsString) then
 begin
   MyShowMessage('Pedido em Uso impossivel inativar',false);
   Exit;
 end;
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente Inativar esse Pedido?!!';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
     if dlg.vBntConfirmaMsg=1 then
     begin
      try
       serviceDB.TablePedidoBrinco.Edit;
       serviceDB.TablePedidoBrincoSTATUS.AsInteger :=-1;
       serviceDB.TablePedidoBrinco.ApplyUpdates(-1);
       MyShowMessage('Registro Inativado com Sucesso!',false);
       serviceDB.TablePedidoBrinco.Close;
       serviceDB.TablePedidoBrinco.Open;
      except
      on E : Exception do
       begin
         MyShowMessage('Exception class name = '+E.ClassName,false);
         MyShowMessage('Exception message = '+E.Message,false);
       end;
      end;
     end
  end);
end;

procedure TfrmCadPedido.TreeItemNovoClick(Sender: TObject);
begin
 serviceDB.vCadPedido :=1;
 serviceDB.TablePedidoBrinco.Close;
 serviceDB.TablePedidoBrinco.Open;
 serviceDB.TablePedidoBrinco.Insert;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadPedido.TreeViewItem4Click(Sender: TObject);
begin
 try
   serviceDB.AtualizaEstoqueBrinco;
   MyShowMessage('Estoque Atualizado com Sucesso!',false);
 except
  on E : Exception do
   begin
     MyShowMessage('Erro ao atualizar Estoque:'+E.Message,false);
   end;
 end;
end;

end.

