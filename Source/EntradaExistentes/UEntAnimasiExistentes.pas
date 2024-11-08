unit UEntAnimasiExistentes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UEntAnimal, System.Rtti, FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  System.Bindings.Outputs, Fmx.Bind.Editors, Fmx.Bind.Grid, ComPort,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.Menus, FMX.Edit,
  FMX.Effects, FMX.Grid, FMX.ScrollBox, FMX.ListBox, FMX.EditBox, FMX.SpinBox,
  FMX.Objects, FMX.Controls.Presentation, FMX.TabControl, FMX.Layouts,System.DateUtils;

type
  TfrmOpercaoEntradaExistente = class(TfrmOpercaoEntrada)
    layDadosAnimal: TLayout;
    Rectangle12: TRectangle;
    Layout25: TLayout;
    Layout45: TLayout;
    Label27: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    ShadowEffect2: TShadowEffect;
    Label33: TLabel;
    Layout24: TLayout;
    edtLocalAtual: TEdit;
    edtGMD: TEdit;
    edtUltimoPeso: TEdit;
    edtUltimoProc: TEdit;
    btnConfirmaExistente: TSpeedButton;
    Image7: TImage;
    procedure edtIdentificacao1ChangeTracking(Sender: TObject);
    procedure edtPesoChangeTracking(Sender: TObject);
    procedure BuscaDadosAnimal(Tipo,Numero,PropID:String);
    procedure edtIdentificacao1KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtIdentificacao1Exit(Sender: TObject);
    procedure btnRefugarClick(Sender: TObject);
    procedure edtIdentificacao2ChangeTracking(Sender: TObject);
    procedure btnConfirmaConfClick(Sender: TObject);
    procedure edtIdentificacao2KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnConfirmaExistenteClick(Sender: TObject);
    procedure edtPesoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure cbxCurralPastoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbxRacaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure cbxCategoriaKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtIdadeMesesKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtUltimoProcKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtUltimoPesoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
  private
    { Private declarations }
  public
    var
     vDiasProc,vExit:integer;
  end;

var
  frmOpercaoEntradaExistente: TfrmOpercaoEntradaExistente;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB;

procedure TfrmOpercaoEntradaExistente.btnConfirmaConfClick(Sender: TObject);
begin
 layDadosGTA.Visible := false;
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
 if cbxProdDestinoProc.ItemIndex=-1 then
 begin
  ShowMessage('Infome o Produtor Destino');
  cbxProdDestinoProc.SetFocus;
  Exit;
 end;
 if chkGTA.IsChecked then
   AbreQryGTAProc('E',frmPrincipal.vIDPropriedadePropria);
   CarregaCombo;
   serviceDB.AtualizaStatitica(frmPrincipal.vIDPropriedadePropria,'EXITE');
   serviceDB.AbrirApartacao(frmPrincipal.vIDPropriedadePropria);
   serviceDB.AbreQryAnimaisProc(frmPrincipal.vIDPropriedadePropria,'EXITE');
   layGTA.Visible   := chkGTA.IsChecked;
   edtPeso.Enabled  := chkPeso.IsChecked;

   if SwProcAuto.IsChecked then
   begin
    serviceDB.qryConfigPROCESSAMENTO_AUTO.AsInteger :=1;
    vProcAuto :=1;
   end ;

   if chkIdent1.IsChecked and not chkIdent2.IsChecked then
    serviceDB.qryConfigQTD_IDENTIFICACAO.AsInteger :=1;

   if chkIdent2.IsChecked and not chkIdent1.IsChecked then
    serviceDB.qryConfigQTD_IDENTIFICACAO.AsInteger :=1;

   if chkIdent1.IsChecked and chkIdent2.IsChecked then
    serviceDB.qryConfigQTD_IDENTIFICACAO.AsInteger :=2;

   serviceDB.qryConfig.ApplyUpdates(-1);
   serviceDB.qryAnimal.Close;
   serviceDB.qryAnimal.Open;
   serviceDB.qryAnimal.Insert;
   TabControl1.ActiveTab := TabItem2;
end;

procedure TfrmOpercaoEntradaExistente.btnConfirmaExistenteClick(
  Sender: TObject);
var
 vgtaID:string;
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
 if chkGTA.IsChecked  then
 begin
  if cbxGtaProc.ItemIndex=-1 then
  begin
   lblStatusAcao.Text :='Informe a GTA!';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Informe a GTA!');
   cbxGtaProc.SetFocus;
   Exit;
  end
  else
  begin
   vGtaUso := cbxGtaProc.Selected.Text;
   if serviceDB.VerificaGTALotada(vGTAID)='1' then
   begin
     lblStatusAcao.Text :='GTA Lotada!';
     RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
     RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
     ShowMessage('GTA Lotada Selecione outra');
     AbreQryGTAProc('E',frmPrincipal.vIDPropriedadePropria);
     Exit;
   end;
  end;
 end
 else
  vGTAID :='NULL';

 if(edtIdentificacao1.Text.Length=0) and (edtIdentificacao2.Text.Length=0) then
 begin
   lblStatusAcao.Text :='Informe uma Identificação!';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Informe pelo menos uma identificação!');
   Exit;
 end;
 if cbxRaca.ItemIndex=-1 then
 begin
   lblStatusAcao.Text :='Informe a Raca!';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Informe a Raça');
   cbxRaca.SetFocus;
   Exit;
 end;
 if cbxCategoria.ItemIndex=-1 then
 begin
   lblStatusAcao.Text :='Informe a Categoria!';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Informe a Categoria');
   cbxCategoria.SetFocus;
   Exit;
 end;
 if cbxCurralPasto.ItemIndex=-1 then
 begin
   lblStatusAcao.Text :='Informe o Curral/Pasto!';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Informe o Curral/Pasto!');
   cbxCurralPasto.SetFocus;
   Exit;
 end;
 if edtIdadeMeses.Text.Length=0 then
 begin
   lblStatusAcao.Text :='Informe a Idade em Meses!';
   RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Fill.Color :=  TAlphaColorRec.red;
   ShowMessage('Informe a Idade em Meses!');
   edtIdadeMeses.SetFocus;
   Exit;
 end;
 vgtaID := serviceDB.qryAnimalExistenteGTA_ID.AsString;
 if vgtaID='' then
  vgtaID:='NULL';

 try
   serviceDB.UpdateAnimal(
   serviceDB.qryAnimalExistenteID.AsString,
   vCurralID,
   vCatid,
   vRacaID,
   edtIdentificacao1.Text.QuotedString,
   edtIdentificacao2.Text.QuotedString,
   FormatDateTime('mm/dd/yyyy',serviceDB.qryAnimalExistenteDATA_PROC.AsDateTime).QuotedString,
   vgtaID,
   serviceDB.qryAnimalExistenteIDADE_MESES.AsString,
   serviceDB.qryAnimalExistentePESO_ENTRADA.AsString,
   edtPeso.Text,
   FormatDateTime('mm/dd/yyyy',date).QuotedString,
   serviceDB.vIdUserLogado,
   frmPrincipal.vIDPropriedadePropria,
   serviceDB.qryAnimalExistenteID_PRODUTOR.AsString);
   if edtPeso.Text.Length>0 then
    serviceDB.InserePeso(serviceDB.qryAnimalExistenteID.AsString, serviceDB.vIdUserLogado,edtPeso.Text,'INTERMEDIARIA');

   serviceDB.AtualizaStatitica(frmPrincipal.vIDPropriedadePropria,'EXITE');
   serviceDB.AtualizaLotacao(vCurralID);
   serviceDB.AbrirApartacao(frmPrincipal.vIDPropriedadePropria);
   serviceDB.AbreQryCurraisAparte(frmPrincipal.vIDPropriedadePropria);
   GeraGridApartacao(frmPrincipal.vIDPropriedadePropria);
   LimpaCampos;
   serviceDB.AbreQryAnimaisProc(frmPrincipal.vIDPropriedadePropria,'EXITE');
   edtIdentificacao1.SetFocus;
   vExit :=0;
 except
   on e : Exception do
    ShowMessage('Erro ao Inserir Produtor: '+e.Message)
 end;
end;

procedure TfrmOpercaoEntradaExistente.btnRefugarClick(Sender: TObject);
begin
  LimpaCampos;
  vPesar :=0;
  vExit  :=0;
  edtIdentificacao1.SetFocus;
end;

procedure TfrmOpercaoEntradaExistente.BuscaDadosAnimal(Tipo,Numero,PropID:String);
begin
     if not serviceDB.AbreQryAnimaisExixtentes(Tipo,Numero,PropID) then
     begin
       lblStatusAcao.Text :='Identificação 1 OK';
       RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
       RecStatusAcao.Fill.Color :=  TAlphaColorRec.Green;
       vPesar := 1;
       edtIdentificacao2.Text   := serviceDB.qryAnimalExistenteIDENTIFICACAO_2.AsString;
       cbxCurralPasto.ItemIndex := cbxCurralPasto.Items.IndexOf(serviceDB.qryAnimalExistenteID_LOCAL.AsString+'-'+serviceDB.qryAnimalExistenteCURRAL_PASTO.AsString);
       cbxRaca.ItemIndex        := cbxRaca.Items.IndexOf(serviceDB.qryAnimalExistenteID_RACA.AsString+'-'+serviceDB.qryAnimalExistenteRACA_NOME.AsString);
       cbxCategoria.ItemIndex   := cbxCategoria.Items.IndexOf(serviceDB.qryAnimalExistenteID_CATEGORIA.AsString+'-'+serviceDB.qryAnimalExistenteCATEGORIA_NOME.AsString);
       edtIdadeMeses.Text       := IntToStr(MonthsBetween(date,serviceDB.qryAnimalExistenteDATA_NASCIMENTO.AsDateTime));
       edtUltimoProc.Text       := serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsString;
       edtUltimoPeso.Text       := serviceDB.qryAnimalExistenteULTIMO_PESO.AsString;
       edtLocalAtual.Text       := serviceDB.qryAnimalExistenteCURRAL_PASTO.AsString;
       if serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsString.Length>0  then
         vDiasProc                := DaysBetween(now,serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsDateTime);
       if (vDiasProc>0) and  (edtUltimoPeso.Text.Length>0) and (edtPeso.Text.Length>0) then
         edtGMD.Text :=  FloatToStr((strToInt(edtPeso.Text)-strToInt(edtUltimoPeso.Text))/vDiasProc)
       else
         edtGMD.Text := '0';
       if chkIdent2.IsChecked then
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
       showMessage('Animal Nao Encontrado');
     end;
end;
procedure TfrmOpercaoEntradaExistente.cbxCategoriaKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);

end;

procedure TfrmOpercaoEntradaExistente.cbxCurralPastoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);

end;

procedure TfrmOpercaoEntradaExistente.cbxRacaKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);

end;

procedure TfrmOpercaoEntradaExistente.edtIdadeMesesKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);

end;

procedure TfrmOpercaoEntradaExistente.edtIdentificacao1ChangeTracking(
  Sender: TObject);
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

procedure TfrmOpercaoEntradaExistente.edtIdentificacao1Exit(Sender: TObject);
begin
  if vExit=0 then
 begin
   if edtIdentificacao1.Text.Length>=edtTamIdent1.Value then
   begin
     vExit := 1;
     BuscaDadosAnimal('1',edtIdentificacao1.Text.QuotedString,frmPrincipal.vIDPropriedadePropria);
   end;
 end;
end;

procedure TfrmOpercaoEntradaExistente.edtIdentificacao1KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
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
  end;
  if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);
end;

procedure TfrmOpercaoEntradaExistente.edtIdentificacao2ChangeTracking(
  Sender: TObject);
begin
 if edtIdentificacao2.Text.Length>=edtTamIdent2.Value then
 begin
   if serviceDB.VerificaIdentificacaoExistente('2',edtIdentificacao2.Text,frmPrincipal.vIDPropriedadePropria)<>serviceDB.qryAnimalExistenteID.AsInteger then
   begin
     ShowMessage('Identificação 2 ja usada em outro Animal Ativo');
     edtIdentificacao2.SetFocus;
     btnConfirmar.Enabled := false;
     Exit;
   end
   else
   begin
     btnConfirmar.Enabled := true;
     if chkPeso.IsChecked then
      edtPeso.SetFocus;
   end;
 end;
end;

procedure TfrmOpercaoEntradaExistente.edtIdentificacao2KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) and (vExit=0)  then
  begin
   vPesar := 1;
   vExit := 1;
   BuscaDadosAnimal('2',edtIdentificacao2.Text.QuotedString,frmPrincipal.vIDPropriedadePropria);
   if chkPeso.IsChecked then
     edtPeso.SetFocus
   else
     cbxRaca.SetFocus;
  end;
  if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);
end;

procedure TfrmOpercaoEntradaExistente.edtPesoChangeTracking(Sender: TObject);
begin
 if serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsString.Length>0  then
   vDiasProc                := DaysBetween(now,serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsDateTime);
 if (vDiasProc>0) and  (edtUltimoPeso.Text.Length>0) and (edtPeso.Text.Length>0) then
   edtGMD.Text :=  FormatFloat('####,##.00',(strToInt(edtPeso.Text)-strToInt(edtUltimoPeso.Text))/vDiasProc)
 else
   edtGMD.Text := '0';
end;

procedure TfrmOpercaoEntradaExistente.edtPesoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);

end;

procedure TfrmOpercaoEntradaExistente.edtUltimoPesoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);
end;

procedure TfrmOpercaoEntradaExistente.edtUltimoProcKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=vkF10 then
   btnConfirmaExistenteClick(Sender);
  if key=vkF1 then
   btnConfirmaExistenteClick(Sender);
end;

end.
