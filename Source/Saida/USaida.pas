unit USaida;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UEntAnimasiExistentes, System.Rtti, FMX.Grid.Style, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Bindings.Outputs, Fmx.Bind.Editors, Fmx.Bind.Grid,
  ComPort, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.Menus,
  FMX.Edit, FMX.Effects, FMX.Grid, FMX.ScrollBox, FMX.ListBox, FMX.EditBox,
  FMX.SpinBox, FMX.Objects, FMX.Controls.Presentation, FMX.TabControl,
  FMX.Layouts, FMX.TreeView, FMX.DateTimeCtrls,FireDAC.Comp.Client,System.DateUtils;

type
  TfrmSaida = class(TfrmOpercaoEntradaExistente)
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    ToolBar3: TToolBar;
    Label35: TLabel;
    Layout46: TLayout;
    Image8: TImage;
    layMnu: TLayout;
    recMnu: TRectangle;
    Treemnu: TTreeView;
    TreeItemNovo: TTreeViewItem;
    Image9: TImage;
    TreeItemEditar: TTreeViewItem;
    Image10: TImage;
    TreeItemExcluir: TTreeViewItem;
    Image11: TImage;
    Layout47: TLayout;
    GroupBox1: TGroupBox;
    edtFiltroName: TEdit;
    Label36: TLabel;
    gridLoteSaida: TStringGrid;
    BindSourceDB11: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB11: TLinkGridToDataSource;
    ToolBar4: TToolBar;
    Label37: TLabel;
    Layout48: TLayout;
    Image12: TImage;
    ToolBar5: TToolBar;
    btnCancelar: TSpeedButton;
    Image13: TImage;
    btnConfirma: TSpeedButton;
    Image14: TImage;
    Label41: TLabel;
    DateEdit2: TDateEdit;
    Button1: TButton;
    Layout49: TLayout;
    Layout50: TLayout;
    Layout51: TLayout;
    Label43: TLabel;
    edtQtdVeiculos: TSpinBox;
    Label44: TLabel;
    edtCapacidadeVeiculoso: TEdit;
    btnGerarVeiculos: TSpeedButton;
    Image15: TImage;
    gridVeiculos: TStringGrid;
    BindSourceDB12: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Label38: TLabel;
    edtDataEmbarque: TDateEdit;
    Label42: TLabel;
    cbxProdutorOrigem: TComboBox;
    Rectangle17: TRectangle;
    Label39: TLabel;
    edtPropriedadeDestino: TEdit;
    EditButton1: TEditButton;
    cbxProdutorDestino: TComboBox;
    Label40: TLabel;
    Image16: TImage;
    popMnuVeiculos: TPopupMenu;
    Label45: TLabel;
    Rectangle18: TRectangle;
    edtProdutorDestino: TEdit;
    LayVeiculos: TLayout;
    Rectangle19: TRectangle;
    Layout53: TLayout;
    Layout54: TLayout;
    Label47: TLabel;
    Layout55: TLayout;
    ShadowEffect3: TShadowEffect;
    cbxVeiculos: TComboBox;
    Label46: TLabel;
    edtPlaca: TEdit;
    Label48: TLabel;
    edtCapacidade: TEdit;
    Label49: TLabel;
    edtLotacao: TEdit;
    edtRacaSaida: TEdit;
    edtCategoriaSaida: TEdit;
    edtIdadeMesesSaida: TEdit;
    BindSourceDB13: TBindSourceDB;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure EditButton1Click(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxProdutorOrigemChange(Sender: TObject);
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure cbxProdutorDestinoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure gridVeiculosEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarVeiculosClick(Sender: TObject);
    procedure btnConfirmaConfClick(Sender: TObject);
    procedure cbxVeiculosChange(Sender: TObject);
    procedure edtIdentificacao1ChangeTracking(Sender: TObject);
    procedure edtIdentificacao2ChangeTracking(Sender: TObject);
    procedure edtIdentificacao1Exit(Sender: TObject);
    procedure edtIdentificacao1KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnConfirmaExistenteClick(Sender: TObject);
    procedure edtPesoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure MenuItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    var
     vIdPropriedadeDestino,
     vIdProdutorDestino,vIdProdutorOrigem,vIdVeiculo,vLoteSaidaId:string;
    procedure CarregaProdutorOrigem(IdPropriedade: String);
    procedure CarregaProdutorDestino(IdPropriedade: String);
    procedure CarregaVeiculos(IdLoteSaida:string);
    procedure CarregaVeiculosProcessamento(IdLoteSaida,vIndexOf: string);
    procedure BuscaDadosAnimal(Tipo,Numero,PropID:String);
  end;

var
  frmSaida: TfrmSaida;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB, UPropriedadeParceira;


procedure TfrmSaida.btnConfirmaClick(Sender: TObject);
begin
  if edtPropriedadeDestino.Text.Length=0 then
  begin
    ShowMessage('Informe a Propriedade/Estabelecimento Destino');
    Exit;
  end;
  if cbxProdutorDestino.ItemIndex=-1 then
  begin
    ShowMessage('Informe o Produtor/Estabelecimento Destino');
    Exit;
  end;
  if cbxProdutorOrigem.ItemIndex=-1 then
  begin
    ShowMessage('Informe o Produtor/Estabelecimento Origem');
    Exit;
  end;
  serviceDB.qryLoteSaidaDATA_EMBARQUE.AsDateTime := edtDataEmbarque.Date;
  serviceDB.qryLoteSaidaID_DESTINO.AsString      := vIdPropriedadeDestino;
  serviceDB.qryLoteSaidaID_PRODUTOR_DESTINO.AsString      := vIdProdutorDestino;

  serviceDB.qryLoteSaidaID_PRODUTOR_ORIGEM.AsString       := vIdProdutorOrigem;
  serviceDB.qryLoteSaidaID_USUARIO.AsString               := serviceDB.vIdUserLogado;
  try
    serviceDB.qryLoteSaida.ApplyUpdates(-1);
    serviceDB.AbreQryLoteSaida(frmPrincipal.vIDPropriedadePropria);
    TabControl1.ActiveTab := TabItem3;
  except
   on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
end;

procedure TfrmSaida.btnConfirmaConfClick(Sender: TObject);
begin
 if (not chkIdent1.IsChecked) and (not chkIdent2.IsChecked) then
 begin
   ShowMessage('Infome Pelo menos uma Identificação');
   Exit;
 end;
 if(chkIdent1.IsChecked) or (chkIdent2.IsChecked) then
 begin
   edtIdentificacao1.Enabled := chkIdent1.IsChecked;
   edtIdentificacao2.Enabled := chkIdent2.IsChecked;
 end;
 if chkUsaBalanca.IsChecked then
 begin
   if cbxPortaBalanca.ItemIndex<=0 then
   begin
     ShowMessage('Infome a porta da Balança');
     Exit;
   end;
   if cbxModeloBalanca.ItemIndex=-1 then
   begin
     ShowMessage('Infome o Modelo da Balança');
     Exit;
   end;
   if ComBalanca.Active=false then
    ConectaBalanca(cbxPortaBalanca.Selected.Text,cbxModeloBalanca.Selected.Text);
 end;
 if chkUsaBastao.IsChecked then
 begin
   if cbxPortaBastao.ItemIndex<=0 then
   begin
     ShowMessage('Infome a porta da Bastão');
     Exit;
   end;
   if cbxModeloBastao.ItemIndex=-1 then
   begin
     ShowMessage('Infome o Modelo da Bastão');
     Exit;
   end;
   if ComBastao.Active=false then
    ConectaBastao(cbxPortaBastao.Selected.Text,cbxModeloBastao.Selected.Text);
 end;
 if chkUsaRFID.IsChecked then
 begin
  if cbxPortaRFID.ItemIndex<=0 then
   begin
     ShowMessage('Infome a porta do RFID');
     Exit;
   end;
   if cbxModeloRFID.ItemIndex=-1 then
   begin
     ShowMessage('Infome o Modelo do RFID');
     Exit;
   end;
 end;

//   CarregaCombo;
   CarregaVeiculos(serviceDB.qryLoteSaidaID.AsString);

   serviceDB.AtualizaStatiticaEmbarque(serviceDB.qryLoteSaidaID.AsString);
   edtPeso.Enabled  := chkPeso.IsChecked;

   if chkIdent1.IsChecked and not chkIdent2.IsChecked then
    serviceDB.qryConfigQTD_IDENTIFICACAO.AsInteger :=1;

   if chkIdent2.IsChecked and not chkIdent1.IsChecked then
    serviceDB.qryConfigQTD_IDENTIFICACAO.AsInteger :=1;

   if chkIdent1.IsChecked and chkIdent2.IsChecked then
    serviceDB.qryConfigQTD_IDENTIFICACAO.AsInteger :=2;

   serviceDB.qryConfig.ApplyUpdates(-1);
   serviceDB.qryAnimal.Close;
   serviceDB.qryAnimal.Open;
   TabControl1.ActiveTab := TabItem2;
end;

procedure TfrmSaida.btnConfirmaExistenteClick(Sender: TObject);
var
 vPeso:string;
begin
if chkPeso.IsChecked  then
 begin
  if edtPeso.Text.Length=0 then
  begin
   lblStatusAcao.Text :='Informe o peso';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Informe o peso do animal!');
   edtPeso.SetFocus;
   vPesar :=0;
   Exit;
  end;
 end
 else
  edtPeso.Text :='0';

 if(edtIdentificacao1.Text.Length=0) and (edtIdentificacao2.Text.Length=0) then
 begin
   lblStatusAcao.Text :='Informe uma Identificação!';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Informe pelo menos uma identificação!');
   Exit;
 end;
 if cbxVeiculos.ItemIndex=-1 then
 begin
   lblStatusAcao.Text :='Selecione um Veiculo';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Selecione um Veiculo!');
   cbxVeiculos.SetFocus;
   Exit;
 end;
 if (edtCapacidade.Text.Length>0) and (edtLotacao.Text.Length>0) then
 begin
   if edtCapacidade.Text=edtLotacao.Text then
   begin
     ShowMessage('Veiculo Lotado selecione outro!!');
     Exit;
   end;
 end;


 if edtPeso.Text.Length>0 then
  vPeso := StringReplace(edtPeso.Text,',','.',[rfReplaceAll])
 else
  vPeso := '0';
 try
   serviceDB.UpdateAnimalSaida(
   serviceDB.qryAnimalExistenteID.AsString,
   serviceDB.vIdUserLogado,
   vIdVeiculo,
   vPeso,
   vLoteSaidaId
   );

   except
   on e : Exception do
    ShowMessage('Erro ao Inserir Animla Saida: '+e.Message)
 end;
   serviceDB.AtualizaStatiticaEmbarque(vLoteSaidaId);
   serviceDB.AbreQryAnimaisProcEmbarque(vLoteSaidaId);
   CarregaVeiculosProcessamento(vLoteSaidaId,cbxVeiculos.Selected.Text);
   if (cbxVeiculos.ItemIndex>-1) then
    serviceDB.AtualizaLotacaoVeiculo(vLoteSaidaId);
   LimpaCampos;
   edtIdentificacao1.SetFocus;
   vExit :=0;

end;

procedure TfrmSaida.btnGerarVeiculosClick(Sender: TObject);
var
 i :integer;
begin
 if edtQtdVeiculos.Text.Length=0 then
 begin
   ShowMessage('Informa a quantidade de Veiculos a serem gerados!');
   edtQtdVeiculos.SetFocus;
   Exit;
 end;
 if edtCapacidadeVeiculoso.Text.Length=0 then
 begin
   ShowMessage('Informa a Capacidade dos Veiculos a serem gerados!');
   edtCapacidadeVeiculoso.SetFocus;
   Exit;
 end;
 for I := 0 to  strToInt(edtQtdVeiculos.text) -1 do
 begin
   serviceDB.qryVeiculos.Close;
   serviceDB.qryVeiculos.Open;
   serviceDB.qryVeiculos.Insert;
   serviceDB.qryVeiculosID_LOTESAIDA.AsString := serviceDB.qryLoteSaidaID.AsString;
   serviceDB.qryVeiculosCAPACIDADE.AsString   := edtCapacidadeVeiculoso.Text;
   serviceDB.qryVeiculosID_USER.AsString      := serviceDB.vIdUserLogado;
   serviceDB.qryVeiculosNOME.AsString         := 'Truck-'+serviceDB.RetornaMaxTruck(serviceDB.qryLoteSaidaID.AsString);
   serviceDB.qryVeiculos.ApplyUpdates(-1);
 end;
 serviceDB.qryVeiculos.Close;
 serviceDB.qryVeiculos.Open;
end;

procedure TfrmSaida.Button1Click(Sender: TObject);
begin
 vLoteSaidaId := serviceDB.qryLoteSaidaID.AsString;
 serviceDB.AtualizaLotacaoVeiculo(vLoteSaidaId);
 serviceDB.AbreQryVeiculos(vLoteSaidaId);
 serviceDB.AbreQryAnimaisProcEmbarque(vLoteSaidaId);
 edtProdutorDestino.Text :=serviceDB.qryLoteSaidaPRODUTOR_DESTINO.AsString;
 serviceDB.qryConfig.close;
 serviceDB.qryConfig.Open;
 serviceDB.qryConfig.Edit;
 TabControl1.ActiveTab   := TabItem1;
end;

procedure TfrmSaida.CarregaProdutorDestino(IdPropriedade: String);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 if cbxProdutorDestino.Items.Count >0 then
  cbxProdutorDestino.Items.Clear;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from produtores_origem');
   Add('where status=1  and id_propriedade='+IdPropriedade);
   Open;
   while not vQryAux.Eof do
   begin
     cbxProdutorDestino.Items.Add(FieldByName('ID').AsString+'-'+FieldByName('NOME').AsString);
     vQryAux.Next;
   end;
   cbxProdutorDestino.ItemIndex :=-1;
 end;
 vQryAux.Free;
end;

procedure TfrmSaida.CarregaProdutorOrigem(IdPropriedade: String);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 cbxProdutorOrigem.Items.Clear;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from produtores_origem');
   Add('where status=1 and id_propriedade='+IdPropriedade);
   Open;
   while not vQryAux.Eof do
   begin
     cbxProdutorOrigem.Items.Add(FieldByName('ID').AsString+'-'+FieldByName('NOME').AsString);
     vQryAux.Next;
   end;
   cbxProdutorOrigem.ItemIndex :=-1;
 end;
 vQryAux.Free;
end;

procedure TfrmSaida.CarregaVeiculos(IdLoteSaida: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 cbxVeiculos.Items.Clear;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select ID||''-''||NOME AS ID from veiculos_embarque');
   Add('where status=1 and lotado=0 and id_lotesaida='+IdLoteSaida);
   Open;
   while not vQryAux.Eof do
   begin
     cbxVeiculos.Items.Add(FieldByName('ID').AsString);
     vQryAux.Next;
   end;
   cbxVeiculos.ItemIndex :=-1;
 end;
 vQryAux.Free;
end;

procedure TfrmSaida.CarregaVeiculosProcessamento(IdLoteSaida,vIndexOf: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 cbxVeiculos.Items.Clear;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select ID||''-''||NOME AS ID from veiculos_embarque');
   Add('where status=1 and lotado=0 and id_lotesaida='+IdLoteSaida);
   Open;
   while not vQryAux.Eof do
   begin
     cbxVeiculos.Items.Add(FieldByName('ID').AsString);
     vQryAux.Next;
   end;
   cbxVeiculos.ItemIndex := cbxVeiculos.Items.IndexOf(vIndexOf);
 end;
 vQryAux.Free;
end;

procedure TfrmSaida.cbxProdutorDestinoChange(Sender: TObject);
begin
  if cbxProdutorDestino.ItemIndex>-1 then
   vIdProdutorDestino :=Copy(cbxProdutorDestino.Selected.Text,0,(pos('-',cbxProdutorDestino.Selected.Text)-1));

end;

procedure TfrmSaida.cbxProdutorDestinoClick(Sender: TObject);
begin
  if length(edtPropriedadeDestino.Text)=0 then
  begin
    ShowMessage('Informe a Propriedade/Estabelecimento antes!!');
    edtPropriedadeDestino.SetFocus;
    Exit;
  end;
end;

procedure TfrmSaida.cbxProdutorOrigemChange(Sender: TObject);
begin
 if cbxProdutorOrigem.ItemIndex>-1 then
   vIdProdutorOrigem :=Copy(cbxProdutorOrigem.Selected.Text,0,(pos('-',cbxProdutorOrigem.Selected.Text)-1));

end;

procedure TfrmSaida.cbxVeiculosChange(Sender: TObject);
begin
 if cbxVeiculos.ItemIndex>-1 then
 begin
   vIdVeiculo := Copy(cbxVeiculos.Selected.Text,0,pos('-',cbxVeiculos.Selected.Text)-1);
   serviceDB.AtualizaLotacaoVeiculo(vLoteSaidaId);
   serviceDB.AbreQryVeiculosEmbarque(vIdVeiculo);
   edtPlaca.Text      := serviceDB.qryVeiculosEmbarquePlaca.AsString;
   edtCapacidade.Text := serviceDB.qryVeiculosEmbarqueCAPACIDADE.AsString;
   edtLotacao.Text    := serviceDB.qryVeiculosEmbarqueLOTACAO.AsString;
 end;
end;

procedure TfrmSaida.EditButton1Click(Sender: TObject);
begin
  serviceDB.AbreQryPropriedades('0');
  frmCadPropriedades := TfrmCadPropriedades.Create(nil);
  try
    frmCadPropriedades.ShowModal;
  finally
    edtPropriedadeDestino.text := serviceDB.TablePropriedadesNOME.AsString;
    vIdPropriedadeDestino      := serviceDB.TablePropriedadesID.AsString;
    CarregaProdutorDestino(vIdPropriedadeDestino);
    frmCadPropriedades.Free;
  end;
end;


procedure TfrmSaida.BuscaDadosAnimal(Tipo,Numero,PropID:String);
begin
     if not serviceDB.AbreQryAnimaisExixtentes(Tipo,Numero,PropID) then
     begin
       lblStatusAcao.Text :='Animal Liberado';
       btnConfirma.Enabled      :=  true;
       RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
       RecStatusAcao.Fill.Color :=  TAlphaColorRec.Green;
       vPesar := 1;
       edtIdentificacao2.Text   := serviceDB.qryAnimalExistenteIDENTIFICACAO_2.AsString;
       if edtIdentificacao2.Text.Length >0 then
          edtIdentificacao2.enabled := false;
       edtRacaSaida.Text        := serviceDB.qryAnimalExistenteRACA_NOME.AsString;
       edtCategoriaSaida.Text   := serviceDB.qryAnimalExistenteCATEGORIA_NOME.AsString;
       edtUltimoProc.Text       := serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsString;
       edtUltimoPeso.Text       := serviceDB.qryAnimalExistenteULTIMO_PESO.AsString;
       edtLocalAtual.Text       := serviceDB.qryAnimalExistenteCURRAL_PASTO.AsString;
       edtIdadeMesesSaida.Text  := IntToStr(MonthsBetween(date,serviceDB.qryAnimalExistenteDATA_NASCIMENTO.AsDateTime));
       if serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsString.Length>0  then
         vDiasProc                := DaysBetween(now,serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsDateTime);
       if (vDiasProc>0) and  (edtUltimoPeso.Text.Length>0) and (edtPeso.Text.Length>0) then
         edtGMD.Text :=  FloatToStr((strToInt(edtPeso.Text)-strToInt(edtUltimoPeso.Text))/vDiasProc)
       else
         edtGMD.Text := '0';
       if chkIdent2.IsChecked then
        if edtIdentificacao2.Text.Length >0 then
          edtIdentificacao2.SetFocus
        else
        if chkPeso.IsChecked then
         edtPeso.SetFocus;
        vExit := 1;
     end
     else
     begin
       edtIdentificacao1.Enabled := true;
       edtIdentificacao1.SetFocus;
       lblStatusAcao.Text :='Animal Não localizado';
       RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
       RecStatusAcao.Fill.Color :=  TAlphaColorRec.Red;
       btnConfirma.Enabled      :=  false;
       MessageDlg('Animal Não localizado', System.UITypes.TMsgDlgType.mtInformation,
       [System.UITypes.TMsgDlgBtn.mbYes,
       System.UITypes.TMsgDlgBtn.mbNo
       ], 0,
       procedure(const AResult: System.UITypes.TModalResult)
       begin
         vPesar := 0;
         exit;
       end);
     end;
end;

procedure TfrmSaida.edtIdentificacao1ChangeTracking(Sender: TObject);
begin
  if vAnimalEdit <> 1 then
  begin
   if edtIdentificacao1.Text.Length>=edtTamIdent1.Value then
   begin
     vExit := 1;
     BuscaDadosAnimal('1',edtIdentificacao1.Text.QuotedString,frmPrincipal.vIDPropriedadePropria);
   end;
  end;
end;

procedure TfrmSaida.edtIdentificacao1Exit(Sender: TObject);
begin
  if (vExit = 0)AND(edtIdentificacao1.Text.Length>0) then
    BuscaDadosAnimal('1',edtIdentificacao1.Text.QuotedString,frmPrincipal.vIDPropriedadePropria);
end;

procedure TfrmSaida.edtIdentificacao1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (key=13) or (key=9) and (vExit=0)  then
  begin
   vPesar := 1;
   vExit := 1;
   BuscaDadosAnimal('1',edtIdentificacao1.Text.QuotedString,frmPrincipal.vIDPropriedadePropria);
   if chkIdent2.IsChecked then
     edtIdentificacao2.SetFocus
   else
    if chkPeso.IsChecked then
     edtPeso.SetFocus;
  end
  else
  begin
    if(key=13) or (key=9) and (vExit=1) then
    begin
      if chkIdent2.IsChecked then
       edtIdentificacao2.SetFocus
     else
     if chkPeso.IsChecked then
       edtPeso.SetFocus;
    end;
  end;
end;

procedure TfrmSaida.edtIdentificacao2ChangeTracking(Sender: TObject);
begin
  if vAnimalEdit <> 1 then
 begin
   if edtIdentificacao2.Text.Length>=edtTamIdent2.Value then
   begin
     BuscaDadosAnimal('2',edtIdentificacao2.Text.QuotedString,frmPrincipal.vIDPropriedadePropria);
   end;
 end;
end;

procedure TfrmSaida.edtPesoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);
end;

procedure TfrmSaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 TabControl1.ActiveTab := TabItem3;
end;

procedure TfrmSaida.FormCreate(Sender: TObject);
begin
 TabControl1.TabPosition := TTabPosition.None;
 TabControl1.ActiveTab   := TabItem3;
end;

procedure TfrmSaida.gridVeiculosEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
   serviceDB.qryVeiculos.ApplyUpdates(-1);
end;

procedure TfrmSaida.MenuItem1Click(Sender: TObject);
begin
 MessageDlg('Deseja Realmente Estornar esse animal?', System.UITypes.TMsgDlgType.mtInformation,
       [System.UITypes.TMsgDlgBtn.mbYes,
       System.UITypes.TMsgDlgBtn.mbNo
       ], 0,
       procedure(const AResult: System.UITypes.TModalResult)
       begin
         serviceDB.EstornarAnimal(serviceDB.qryGriAniProcID.AsString);
         serviceDB.AtualizaStatiticaEmbarque(vLoteSaidaId);
         serviceDB.AbreQryAnimaisProcEmbarque(vLoteSaidaId);
         serviceDB.AtualizaLotacaoVeiculo(vLoteSaidaId);
         CarregaVeiculos(vLoteSaidaId);
         cbxVeiculos.ItemIndex:=-1;
       end);
end;

procedure TfrmSaida.TreeItemNovoClick(Sender: TObject);
begin
 CarregaProdutorOrigem(frmPrincipal.vIDPropriedadePropria);
 serviceDB.qryLoteSaida.Insert;
 TabControl1.ActiveTab := TabItem4;
end;

end.
