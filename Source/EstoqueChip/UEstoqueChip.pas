unit UEstoqueChip;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UPedidoBrincos, System.Rtti, FMX.Grid.Style, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.ListView, FMX.ListBox, FMX.DateTimeCtrls,
  FMX.Effects, FMX.Edit, FMX.ScrollBox, FMX.Grid, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts,db, FMX.Ani;

type
  TfrmCadPedidoChip = class(TfrmCadPedido)
    TreeGeraEstoqueChip: TTreeViewItem;
    Image10: TImage;
    TreeAtualizaEstoqueChip: TTreeViewItem;
    Image13: TImage;
    layAguardeSync: TLayout;
    recAguarde: TRectangle;
    layAguardeLBL: TLayout;
    lblAguarde: TLabel;
    imgSync: TImage;
    Animacao: TFloatAnimation;
    Label24: TLabel;
    edtQtdeChipEmbalagem: TEdit;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtNumeroIniExit(Sender: TObject);
    procedure edtNumeroFinalExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeGeraEstoqueClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure GeraListaNumerosChip(IdPedido: string);
    procedure btnFiltraAnimalClick(Sender: TObject);
    procedure TreeViewItem4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    vEdit :integer;
  end;

var
  frmCadPedidoChip: TfrmCadPedidoChip;

implementation

{$R *.fmx}

uses UServiceDB, UMsgDlg;

procedure TfrmCadPedidoChip.btnConfirmaClick(Sender: TObject);
begin
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
   if(serviceDB.PedioChip.State=dsInsert) and (not serviceDB.VerificaNumeroPedidoChip(edtNumPedido.Text)) then
   begin
     MyShowMessage('Ja existe um pedido cadastrado com esse numero: '+edtNumPedido.Text,false);
     Exit;
   end;
 end;
 if edtNumeroIni.Text.Length =0 then
 begin
   MyShowMessage('Informe o Número Inicial',false);
   Exit;
 end;
 if edtNumeroFinal.Text.Length =0 then
 begin
   MyShowMessage('Informe o Número Final',false);
   Exit;
 end;

 if edtQtdeChipEmbalagem.Text.Length =0 then
 begin
   MyShowMessage('Informe o Qtde Chip por embalagem',false);
   Exit;
 end;

 if StrToInt64(edtNumeroIni.Text)>StrToInt64(edtNumeroFinal.Text) then
 begin
     MyShowMessage('Chip Final nao pode ser menor que o inicial!!',false);
     edtNumeroFinal.SetFocus;
     Exit;
 end;
 serviceDB.PedioChipID_USUARIO.AsString           := serviceDB.vIdUserLogado;
 serviceDB.PedioChipID_FORNECEDOR_BRINCO.AsString := vIdFornecedor;
 serviceDB.PedioChipNUMERO_PEDIDO.AsString        := edtNumPedido.Text;
 serviceDB.PedioChipNUMERO_NF.AsString            := edtNumNf.Text;
 serviceDB.PedioChipDATA_SOLICITACAO.AsDateTime   := edtDataSolicitacao.Date;
 serviceDB.PedioChipDATA_ENTRADA.AsDateTime       := edtDataEntrada.Date;
 serviceDB.PedioChipNUMERO_INICIAL.AsString       := edtNumeroIni.Text;
 serviceDB.PedioChipNUMERO_FINAL.AsString         := edtNumeroFinal.Text;
 serviceDB.PedioChipID_FAZENDA.AsString           := serviceDB.vIdPropriedade;
 serviceDB.PedioChipQTD_REG_PAGINA.AsString       := edtQtdeChipEmbalagem.Text;
 try
   serviceDB.PedioChip.ApplyUpdates(-1);
   MyShowMessage('Pedido cadastrado com sucesso!',false);
   MudarAba(tbimnu,Sender);
   serviceDB.PedioChip.Close;
   serviceDB.PedioChip.Open;
 except
  on E : Exception do
    MyShowMessage('Erro ao inserir Pedido : '+E.Message,false);
 end;
end;

procedure TfrmCadPedidoChip.btnFiltraAnimalClick(Sender: TObject);
begin
 GeraListaNumerosChip(serviceDB.PedioChipid.AsString);
end;

procedure TfrmCadPedidoChip.edtNumeroFinalExit(Sender: TObject);
begin
 if edtNumeroFinal.Text.Length<>15 then
 begin
   MyShowMessage('CHIP DEVE CONTER 15 CARACTERES!!',false);
   Exit;
   btnConfirma.Enabled := false;
   edtNumeroFinal.SetFocus;
 end;
 if StrToFloat(edtNumeroFinal.Text)<StrToFloat(edtNumeroIni.Text) then
 begin
   MyShowMessage('CHIP FINAL NÃO PODE SER MENOR QUE INICIAL!',false);
   btnConfirma.Enabled := false;
   edtNumeroFinal.SetFocus;
   Exit;
 end
 else
  btnConfirma.Enabled := true;
end;

procedure TfrmCadPedidoChip.edtNumeroIniExit(Sender: TObject);
begin
 if edtNumeroIni.Text.Length<>15 then
 begin
   MyShowMessage('CHIP DEVE CONTER 15 CARACTERES!!',false);
   Exit;
   btnConfirma.Enabled := false;
   edtNumeroIni.SetFocus;
 end
 else
  btnConfirma.Enabled := true;
end;

procedure TfrmCadPedidoChip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vEdit :=0;
  inherited;
end;

procedure TfrmCadPedidoChip.FormShow(Sender: TObject);
begin
 layAguardeSync.Visible := false;
 serviceDB.PedioChip.Close;
 serviceDB.PedioChip.ParamByName('id').AsInteger := serviceDB.vIdPropriedade.ToInteger;
 serviceDB.PedioChip.Open;
end;

procedure TfrmCadPedidoChip.GeraListaNumerosChip(IdPedido: string);
var
 myThread : TThread;
 item     : TListViewItem;
 txt      : TListItemText;
 Filtro   : string;
begin
 Filtro:='';
 if edtSISBOVFiltro.Text.Length>0 then
  Filtro :=' AND CHIP='+edtSISBOVFiltro.Text.QuotedString;
 if cbxFiltroStatus.ItemIndex>0 then
 begin
  if cbxFiltroStatus.ItemIndex=1 then
   Filtro :=Filtro+' AND usado=1';
  if cbxFiltroStatus.ItemIndex=2 then
   Filtro :=Filtro+' AND usado=0';
  if cbxFiltroStatus.ItemIndex=3 then
   Filtro :=Filtro+' AND usado=2';
 end;
 serviceDB.FiltraEstoqueBrincosCHIP(IdPedido,Filtro);
 ListView1.Items.Clear;
 serviceDB.EstoqueChip.First;
 myThread := TThread.CreateAnonymousThread(
 procedure
 begin
  TThread.Synchronize(nil,procedure
  begin
   layAguardeSync.Visible := true;
   Animacao.Start;
  end);
  sleep(1000);
  TThread.Synchronize(nil,procedure
  var
   I:integer;
  begin
   I    := 1;
   while not serviceDB.EstoqueChip.Eof do
   begin
     item := ListView1.Items.Add;
     with frmCadPedido do
     begin
       with item  do
       begin
         txt :=   TListItemText(Objects.FindDrawable('Text1'));
         txt.Text := serviceDB.EstoqueChipCHIP.AsString;
         txt.Font.Size  := 12;
         txt.Font.Style := [TFontStyle.fsBold];

         txt :=   TListItemText(Objects.FindDrawable('Text2'));
         txt.Text := serviceDB.EstoqueChipSTATUS_STR.AsString;
         txt.Font.Size  := 12;
         txt.Font.Style := [TFontStyle.fsBold];
         inc(I);
       end;
     end;
     serviceDB.EstoqueChip.Next;
   end;
   lblCount.Text := intToStr(I-1);
   Animacao.Stop;
   layAguardeSync.Visible := false;
  end);
 end);
 myThread.Start;
end;

procedure TfrmCadPedidoChip.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 if vEdit=1 then
  Close
 else
 begin
  GeraListaNumerosChip(serviceDB.PedioChipid.AsString);
  tbPrincipal.ActiveTab := tbiEstoque;
 end;
end;


procedure TfrmCadPedidoChip.TreeGeraEstoqueClick(Sender: TObject);
var
 vQtde:string;
 myThread : TThread;
begin
  if not serviceDB.VerificaEstoqueGeradoChip(serviceDB.PedioChipID.AsString) then
  begin
    MyShowMessage('Estoque ja foi gerado para esse pedido!!',false);
    Exit;
  end;
  myThread := TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize(nil,procedure
    begin
      layAguardeSync.Visible := true;
      Animacao.Start;
    end);
      try
         vQtde:=serviceDB.GeraNumeracaoEstoqueChip(
         serviceDB.PedioChipNUMERO_INICIAL.AsString ,
         serviceDB.PedioChipNUMERO_FINAL.AsString,
         serviceDB.PedioChipID.AsString,
         serviceDB.PedioChipQTD_REG_PAGINA.AsString);
         TThread.Synchronize(nil,procedure
         begin
          layAguardeSync.Visible := false;
          Animacao.Stop;
          MyShowMessage('Estoque gerado com sucesso, total de Brincos : '+vQtde,false);
         end);
      except
         on E : Exception do
         begin
          layAguardeSync.Visible := false;
          Animacao.Stop;
          MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
         end;
      end;

  end);
  myThread.start();
end;

procedure TfrmCadPedidoChip.TreeItemEditarClick(Sender: TObject);
begin
 serviceDB.PedioChip.Edit;
 vIdFornecedor                  := serviceDB.PedioChipID_FORNECEDOR_BRINCO.AsString;
 edtFornecedor.Text             := serviceDB.PedioChipFORNECEDOR.AsString;
 edtNumPedido.Text              := serviceDB.PedioChipNUMERO_PEDIDO.AsString;
 edtNumNf.Text                  := serviceDB.PedioChipNUMERO_NF.AsString;
 edtDataSolicitacao.Date        := serviceDB.PedioChipDATA_SOLICITACAO.AsDateTime;
 edtDataEntrada.Date            := serviceDB.PedioChipDATA_ENTRADA.AsDateTime;
 edtNumeroIni.Text              := serviceDB.PedioChipNUMERO_INICIAL.AsString;
 edtNumeroFinal.Text            := serviceDB.PedioChipNUMERO_FINAL.AsString;
 edtQtdeChipEmbalagem.Text      := serviceDB.PedioChipQTD_REG_PAGINA.AsString;
 edtNumeroIni.Enabled           := false;
 edtNumeroFinal.Enabled         := false;
 edtqtdBrincosCaixa.Enabled     := false;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadPedidoChip.TreeItemExcluirClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
 if not serviceDB.VerificaPedidoChipUsado(serviceDB.PedioChipID.AsString) then
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
       serviceDB.PedioChip.Edit;
       serviceDB.PedioChipSTATUS.AsInteger :=-1;
       serviceDB.PedioChip.ApplyUpdates(-1);
       MyShowMessage('Registro Inativado com Sucesso!',false);
       serviceDB.PedioChip.Close;
       serviceDB.PedioChip.Open;
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

procedure TfrmCadPedidoChip.TreeItemNovoClick(Sender: TObject);
begin
 serviceDB.PedioChip.Close;
 serviceDB.PedioChip.Open;
 serviceDB.PedioChip.Insert;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadPedidoChip.TreeViewItem4Click(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize(nil,procedure
    begin
      layAguardeSync.Visible := true;
      Animacao.Start;
    end);

    try
     serviceDB.AtualizaEstoqueBrincoChip;
     MyShowMessage('Estoque Atualizado com Sucesso!',false);

     TThread.Synchronize(nil,procedure
     begin
      Animacao.Stop;
      layAguardeSync.Visible := false;
     end);

    except
    on E : Exception do
     begin
       Animacao.Stop;
       layAguardeSync.Visible := false;
       MyShowMessage('Erro ao atualizar Estoque:'+E.Message,false);
     end;
    end;
  end).start;
end;

end.
