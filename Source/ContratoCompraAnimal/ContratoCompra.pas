unit ContratoCompra;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.DateTimeCtrls,Winapi.Windows,DB;

type
  TfrmContratoCompra = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle9: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label37: TLabel;
    Layout8: TLayout;
    edtNumero: TEdit;
    edtDataInicio: TDateEdit;
    edtDataFinalizado: TDateEdit;
    cbxTipoContrato: TComboBox;
    Layout1: TLayout;
    Rectangle5: TRectangle;
    Layout3: TLayout;
    Label9: TLabel;
    Label10: TLabel;
    Layout4: TLayout;
    edtProdutorOrigem: TEdit;
    btnBuscarOrigem: TEditButton;
    edtPropriedadeOrigem: TEdit;
    Layout36: TLayout;
    Rectangle6: TRectangle;
    Layout37: TLayout;
    Label24: TLabel;
    Label25: TLabel;
    Layout38: TLayout;
    edtProdutorDestino: TEdit;
    btnBuscaDestino: TEditButton;
    edtPropriedadeDestino: TEdit;
    Layout9: TLayout;
    Rectangle4: TRectangle;
    Layout10: TLayout;
    Label13: TLabel;
    Layout11: TLayout;
    cbxTipoPagamento: TComboBox;
    Label3: TLabel;
    edtValor: TEdit;
    Label5: TLabel;
    cbxStatus: TComboBox;
    btnLocalizar: TSpeedButton;
    TreeAtualizarValorCompra: TTreeViewItem;
    Image3: TImage;
    Layout5: TLayout;
    Rectangle2: TRectangle;
    Layout12: TLayout;
    Label16: TLabel;
    Layout13: TLayout;
    edtTotalAnimais: TEdit;
    Label6: TLabel;
    edtTotalAnimaisVinculados: TEdit;
    Label11: TLabel;
    edtPesoTotalOrigem: TEdit;
    Label14: TLabel;
    pesoTotalAnimais: TEdit;
    Label12: TLabel;
    edtNavio: TEdit;
    Layout14: TLayout;
    Rectangle3: TRectangle;
    Layout15: TLayout;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Layout16: TLayout;
    edtComissaoTotal: TEdit;
    edtFreteTotal: TEdit;
    edtRendimentoCompra: TEdit;
    Layout17: TLayout;
    Rectangle7: TRectangle;
    Layout18: TLayout;
    Label20: TLabel;
    Label21: TLabel;
    Layout19: TLayout;
    edtPesoBalancaoDestino: TEdit;
    edtKMRodado: TEdit;
    edtComprador: TEdit;
    edtBuscarComprador: TEditButton;
    layAtualizaValor: TLayout;
    Rectangle8: TRectangle;
    Label22: TLabel;
    Layout20: TLayout;
    Image4: TImage;
    Rectangle10: TRectangle;
    rdQuebra: TRadioButton;
    Label23: TLabel;
    Layout21: TLayout;
    Rectangle11: TRectangle;
    Layout22: TLayout;
    Image6: TImage;
    Label26: TLabel;
    Rectangle12: TRectangle;
    Layout23: TLayout;
    Image7: TImage;
    Label27: TLabel;
    Label39: TLabel;
    edtProdutorOf: TEdit;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label28: TLabel;
    edtFDataEntDE: TDateEdit;
    Label29: TLabel;
    chkPeriodoProc: TCheckBox;
    Label30: TLabel;
    cbxTipoValor: TComboBox;
    procedure edtTotalAnimaisKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtValorKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnBuscarOrigemClick(Sender: TObject);
    procedure btnBuscaDestinoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtValorTyping(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure cbxTipoPagamentoChange(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnLocalizarClick(Sender: TObject);
    procedure edtFiltroNameKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure TreeAtualizarValorCompraClick(Sender: TObject);
    procedure edtBuscarCompradorClick(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
  private
    { Private declarations }
  public
    vAbreTela:integer;
    vFiltro,vIdComprador,vIdProdutorOrigem,vIdPropriedaeOrigem,
    vIdProdutorDestino,vIdPropriedaeDestino:string;
    procedure LimpaDados;
    procedure Filtro;
  end;

var
  frmContratoCompra: TfrmContratoCompra;

implementation

{$R *.fmx}

uses USeviceConfinamento, UPropriedadeParceira, UServiceDB, UPrincipal, uFormat,
  UCompradorGado;

procedure TfrmContratoCompra.btnBuscaDestinoClick(Sender: TObject);
begin
  serviceDB.TablePropriedades.Close;
  serviceDB.TablePropriedades.Open;
  serviceDB.TablePropriedades.Filtered := false;
  serviceDB.TablePropriedades.Filter   := 'id='+serviceDB.vIdPropriedade;
  serviceDB.TablePropriedades.Filtered := true;
  serviceDB.TableProdutores.Open;
  frmCadPropriedades := TfrmCadPropriedades.Create(nil);
  try
    frmPrincipal.vCadGTA :=true;
    frmCadPropriedades.ShowModal;
  finally
    edtPropriedadeDestino.text    := serviceDB.TablePropriedadesNOME.AsString;
    vIdPropriedaeDestino          := serviceDB.TablePropriedadesID.AsString;
    vIdProdutorDestino            := serviceDB.TableProdutoresID.AsString;
    edtProdutorDestino.Text       := serviceDB.TableProdutoresNOME.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmContratoCompra.btnBuscarOrigemClick(Sender: TObject);
begin
  serviceDB.TablePropriedades.Close;
  serviceDB.TablePropriedades.Open;
  serviceDB.TablePropriedades.Filtered := false;
  serviceDB.TablePropriedades.Filter   := 'id<>'+serviceDB.vIdPropriedade;
  serviceDB.TablePropriedades.Filtered := true;
  serviceDB.TableProdutores.Open;
  frmCadPropriedades := TfrmCadPropriedades.Create(nil);
  try
    frmCadPropriedades.ShowModal;
  finally
    edtPropriedadeOrigem.text    := serviceDB.TablePropriedadesNOME.AsString;
    vIdPropriedaeOrigem          := serviceDB.TablePropriedadesID.AsString;
    vIdProdutorOrigem            := serviceDB.TableProdutoresID.AsString;
    edtProdutorOrigem.Text       := serviceDB.TableProdutoresNOME.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmContratoCompra.btnConfirmaClick(Sender: TObject);
var
 vValor:string;
 vValorF:DOUBLE;
begin
 if(edtNumero.Text.Length=0) then
 begin
   MyShowMessage('Infome o Numero (*)',false);
   edtNumero.SetFocus;
   Exit;
 end;
 if ServiceConf.TContratoCompra.State=dsInsert then
 begin
   ServiceConf.TContratoCompraID_USUARIO.AsString             := serviceDB.vIdUserLogado;
   if not ServiceConf.VerificaNumeroContratoExiste(edtNumero.Text)then
   begin
     MyShowMessage('Já existe um contrato com esse número: '+edtNumero.Text,false);
     edtNumero.SetFocus;
     Exit;
   end;
 end
 else
 begin
   ServiceConf.TContratoCompraID_USUARIO_ALTERACAO.AsString   := serviceDB.vIdUserLogado;
   ServiceConf.TContratoCompraDATA_ULTIMA_ALTERACAO.AsDateTime:= NOW;
 end;
 if(cbxTipoContrato.ItemIndex=-1) then
 begin
   MyShowMessage('Infome o Tipo de Contrato (*)',false);
   cbxTipoContrato.SetFocus;
   Exit;
 end;
 if(cbxTipoContrato.ItemIndex=-1) then
 begin
   MyShowMessage('Infome o Tipo de Contrato (*)',false);
   cbxTipoContrato.SetFocus;
   Exit;
 end;
 if(edtTotalAnimais.Text.Length=0)or(edtTotalAnimais.Text='0') then
 begin
   MyShowMessage('Informe o Total de Animais (*)',false);
   edtTotalAnimais.SetFocus;
   Exit;
 end;
 if(edtProdutorOrigem.Text.Length=0) then
 begin
   MyShowMessage('Informe o Produtor de Origem(*)',false);
   edtProdutorOrigem.SetFocus;
   Exit;
 end;
 if(edtProdutorDestino.Text.Length=0) then
 begin
   MyShowMessage('Informe o Produtor de Destino(*)',false);
   edtProdutorDestino.SetFocus;
   Exit;
 end;

 if(cbxTipoValor.ItemIndex=-1) then
 begin
   MyShowMessage('Informe o Tipo de Valor',false);
   edtProdutorDestino.SetFocus;
   Exit;
 end;



// if(cbxTipoPagamento.ItemIndex=-1) then
// begin
//   MyShowMessage('Infome o Tipo de Pagamento(*)',false);
//   cbxTipoPagamento.SetFocus;
//   Exit;
// end;
 if(edtValor.Text.Length=0) or (edtValor.Text='0')or (edtValor.Text='R$') then
 begin
   MyShowMessage('Infome o Valor !(*)',false);
   edtValor.SetFocus;
   Exit;
 end;
 vValor:= StringReplace(edtValor.Text,'.','',[rfReplaceAll]);
// vValor:= StringReplace(vValor,',','.',[rfReplaceAll]);
 vValor:= StringReplace(vValor,'R$ ','',[rfReplaceAll]);
 if TryStrToFloat(vValor,vValorF) then
  ServiceConf.TContratoCompraVALOR_TOTAL.ASFloat     := vValorF
 else
 begin
   MyShowMessage('Valor Invalido',false);
   Exit;
 end;


 
 ServiceConf.TContratoCompraNUMERO.AsString                 := edtNumero.Text;
 ServiceConf.TContratoCompraTIPO_VALOR.AsInteger            := cbxTipoValor.ItemIndex;
 ServiceConf.TContratoCompraID_PROPRIEDADE.AsString         := serviceDB.vIdPropriedade;
 ServiceConf.TContratoCompraID_PRODUTOR_ORIGEM.AsString     := vIdProdutorOrigem;
 ServiceConf.TContratoCompraID_PRODUTOR_DESTINO.AsString    := vIdProdutorDestino;
 ServiceConf.TContratoCompraTOTAL_ANIMAIS.AsString          := edtTotalAnimais.Text;
 ServiceConf.TContratoCompraDATA_INICIO_CONTRATO.AsDateTime := edtDataInicio.Date;
 if (edtDataFinalizado.Text.Length>0)AND(edtDataFinalizado.Text<>'_/_/__') then
  ServiceConf.TContratoCompraDATA_FIM_CONTRATO.AsDateTime   := edtDataFinalizado.Date;
 ServiceConf.TContratoCompraTIPO_CONTRATO.AsInteger         := cbxTipoContrato.ItemIndex;
 if cbxStatus.ItemIndex=0 then
  ServiceConf.TContratoCompraSTATUS.AsInteger               :=1;
 if cbxStatus.ItemIndex=1 then
  ServiceConf.TContratoCompraSTATUS.AsInteger               :=2;
 if edtPesoTotalOrigem.Text.Length>0 then
  ServiceConf.TContratoCompraPESO_TOTAL_ORIGEM.AsString     := edtPesoTotalOrigem.Text;
 if edtPesoTotalOrigem.Text.Length>0 then
  ServiceConf.TContratoCompraPESO_TOTAL_ORIGEM.AsString     := edtPesoTotalOrigem.Text;
 if edtNavio.Text.Length>0 then
  ServiceConf.TContratoCompraNAVIO.AsString                 := edtNavio.Text;

 if edtComprador.Text.Length>0 then
  ServiceConf.TContratoCompraComprador.AsString              := edtComprador.Text;
 if edtComissaoTotal.Text.Length>0 then
  ServiceConf.TContratoCompraCOMISSAO_TOTAL.AsString         := edtComissaoTotal.Text;
 if edtFreteTotal.Text.Length>0 then
  ServiceConf.TContratoCompraFRETE_TOTAL.AsString            := edtFreteTotal.Text;
 if edtRendimentoCompra.Text.Length>0 then
  ServiceConf.TContratoCompraRENDIMENTO_COMPRA.AsString      := edtRendimentoCompra.Text;
 if edtPesoBalancaoDestino.Text.Length>0 then
  ServiceConf.TContratoCompraPESO_BALANCAO_DESTINO.AsString  := edtPesoBalancaoDestino.Text;
 if edtKMRodado.Text.Length>0 then
  ServiceConf.TContratoCompraKM_RODADO.AsString              := edtKMRodado.Text;


 try
  ServiceConf.TContratoCompra.ApplyUpdates(-1);
  MyShowMessage('Contrato Cadastrado com sucesso!',false);
  ServiceConf.AbreContratos('',vAbreTela);
  MudarAba(tbiMnu,sender);
 except
  on e : Exception do
   ShowMessage('Erro ao Inserir Contrato: '+e.Message)
 end;
end;

procedure TfrmContratoCompra.btnLocalizarClick(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmContratoCompra.cbxTipoPagamentoChange(Sender: TObject);
begin
   edtValor.Enabled := cbxTipoPagamento.ItemIndex>-1;
end;

procedure TfrmContratoCompra.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
 edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

procedure TfrmContratoCompra.edtBuscarCompradorClick(Sender: TObject);
begin
  frmCadCompradorGado := TfrmCadCompradorGado.Create(nil);
  try
    frmCadCompradorGado.ShowModal;
  finally
    edtComprador.text             := serviceDB.TableCompradorNOME.AsString;
    vIdComprador                  := serviceDB.TableCompradorID.AsString;
    frmCadCompradorGado.Free;
  end;
end;

procedure TfrmContratoCompra.edtFiltroNameKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   Filtro;
end;

procedure TfrmContratoCompra.edtTotalAnimaisKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmContratoCompra.edtValorKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmContratoCompra.edtValorTyping(Sender: TObject);
begin
 Formatar(edtValor,TFormato.Money);
end;

procedure TfrmContratoCompra.Filtro;
var
 vFiltro:string;
 vDataDe,vDataAte:string;
begin
 vFiltro:='';

 vDataDe  := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString;
 vDataAte := FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date).QuotedString;

 if edtFiltroName.Text.Length>0 then
   vFiltro := vFiltro+' AND C.NUMERO='+edtFiltroName.Text.QuotedString;
 if edtProdutorOf.Text.Length>0 then
   vFiltro := vFiltro+' AND PO.NOME like '+QuotedStr('%'+edtProdutorOf.Text+'%');
 if chkPeriodoProc.IsChecked then
  vFiltro := vFiltro+' AND C.DATA_INICIO_CONTRATO BETWEEN '+vDataDe+' AND '+vDataAte;
 ServiceConf.AbreContratos(vFiltro,vAbreTela);
end;

procedure TfrmContratoCompra.FormShow(Sender: TObject);
begin
 vAbreTela :=1;
 layAtualizaValor.Visible := false;
 if ServiceConf=nil then
  ServiceConf := TServiceConf.Create(nil)
 else
  ServiceConf.AbreContratos('',vAbreTela);
  vAbreTela :=0;
  inherited;
end;

procedure TfrmContratoCompra.LimpaDados;
begin
 edtNumero.Text.Empty;
 cbxTipoContrato.ItemIndex  :=-1;
 edtDataFinalizado.IsEmpty  :=true;
 edtTotalAnimais.Text       :='0';
 edtProdutorOrigem.Text     :='';
 edtProdutorDestino.Text    :='';
 edtPropriedadeOrigem.Text  :='';
 edtPropriedadeDestino.Text :='';
 cbxTipoPagamento.ItemIndex :=-1;
 edtValor.Text              :='R$';
 edtValor.Enabled           :=true;
 edtComprador.Text          :='';
 edtComissaoTotal.Text      :='0';
 edtFreteTotal.Text         :='0';
 edtRendimentoCompra.Text   :='0';
 edtPesoBalancaoDestino.Text:='0';
 edtKMRodado.Text           :='0';

 cbxStatus.ItemIndex        :=0;
 cbxTipoValor.ItemIndex     :=1;
end;

procedure TfrmContratoCompra.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmContratoCompra.TreeAtualizarValorCompraClick(Sender: TObject);
begin
 MyShowMessage('Deseja Atualizar o valor de compra dos animais de acordo com o contrato?',true);
  case frmPrincipal.vConfirma of
   1:
   begin
      try
//       (vIdContrato :integer; vValor,vPesoTotal :double; vTipoValor:Integer);;
       serviceDB.AtualizaValorContratoAnimais(
         ServiceConf.TContratoCompraId.AsInteger,
         ServiceConf.TContratoCompraVALOR_TOTAL.AsFloat,
         ServiceConf.TContratoCompraTOTALPESO.AsFloat,
         ServiceConf.TContratoCompraTIPO_VALOR.AsInteger);
       myShowMessage('Registro Atualizados com Sucesso!',false);
      except
      on E : Exception do
       begin
         myShowMessage('Exception class name = '+E.ClassName,false);
         myShowMessage('Exception message = '+E.Message,false);
       end;
      end;
   end;
  end;
end;

procedure TfrmContratoCompra.TreeItemEditarClick(Sender: TObject);
begin
  ServiceConf.TContratoCompra.Edit;
  cbxTipoValor.ItemIndex                                     := ServiceConf.TContratoCompraTIPO_VALOR.AsInteger;
  edtNumero.Text                                             := ServiceConf.TContratoCompraNUMERO.AsString;
  serviceDB.vIdPropriedade                                   := ServiceConf.TContratoCompraID_PROPRIEDADE.AsString;
  vIdProdutorOrigem                                          := ServiceConf.TContratoCompraID_PRODUTOR_ORIGEM.AsString;
  edtProdutorOrigem.Text                                     := ServiceConf.TContratoCompraPRODUTOR_ORIGEM.AsString;
  edtPropriedadeOrigem.Text                                  := ServiceConf.TContratoCompraPROPRIEDADE_ORIGEM.AsString;
  vIdProdutorDestino                                         := ServiceConf.TContratoCompraID_PRODUTOR_DESTINO.AsString;
  edtProdutorDestino.Text                                    := ServiceConf.TContratoCompraPRODUTOR_DESTINO.AsString;
  edtPropriedadeDestino.Text                                 := ServiceConf.TContratoCompraPROPRIEDADE_DESTINO.AsString;
  serviceDB.vIdUserLogado                                    := ServiceConf.TContratoCompraID_USUARIO.AsString;
  edtTotalAnimais.Text                                       := ServiceConf.TContratoCompraTOTAL_ANIMAIS.AsString;
  cbxTipoPagamento.ItemIndex                                 := ServiceConf.TContratoCompraTIPO_VALOR.AsInteger;
  edtValor.Text                                              := ServiceConf.TContratoCompraVALOR_TOTAL.AsString;
  edtDataInicio.Date                                         := ServiceConf.TContratoCompraDATA_INICIO_CONTRATO.AsDateTime;
  edtPesoTotalOrigem.Text                                    := ServiceConf.TContratoCompraPESO_TOTAL_ORIGEM.AsString;
  edtNavio.Text                                              := ServiceConf.TContratoCompraNAVIO.AsString;
  cbxTipoContrato.ItemIndex                                  := ServiceConf.TContratoCompraTIPO_CONTRATO.AsInteger;
  if(ServiceConf.TContratoCompraDATA_FIM_CONTRATO.AsString.Length>0) then
  edtDataFinalizado.Date                                     := ServiceConf.TContratoCompraDATA_FIM_CONTRATO.AsDateTime;
  ServiceConf.TContratoCompraTIPO_CONTRATO.AsInteger         := cbxTipoContrato.ItemIndex;
  cbxStatus.ItemIndex                                        := ServiceConf.TContratoCompraSTATUS.AsInteger;
  edtTotalAnimaisVinculados.Text                             := ServiceConf.TContratoCompraTOTALANIMAIS.AsString;
  pesoTotalAnimais.Text                                      := ServiceConf.TContratoCompraTOTALPESO.AsString;
  edtComprador.Text                                          := ServiceConf.TContratoCompraCOMPRADOR.AsString;
  edtComissaoTotal.Text                                      := ServiceConf.TContratoCompraCOMISSAO_TOTAL.AsString;
  edtFreteTotal.Text                                         := ServiceConf.TContratoCompraFRETE_TOTAL.AsString;
  edtRendimentoCompra.Text                                   := ServiceConf.TContratoCompraRENDIMENTO_COMPRA.AsString;
  edtPesoBalancaoDestino.Text                                := ServiceConf.TContratoCompraPESO_BALANCAO_DESTINO.AsString;
  edtKMRodado.Text                                           := ServiceConf.TContratoCompraKM_RODADO.AsString;
  inherited;
end;

procedure TfrmContratoCompra.TreeItemExcluirClick(Sender: TObject);
begin
 if not ServiceConf.VerificaNumeroContratoUsado(ServiceConf.TContratoCompraID.AsString)then
 begin
   MyShowMessage('Contrato Tem Animais Vinculados impossivel deletar!: '+edtNumero.Text,false);
   edtNumero.SetFocus;
   Exit;
 end;
 MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.TContratoCompra.Edit;
       ServiceConf.TContratoCompraSTATUS.AsInteger :=-1;
       ServiceConf.TContratoCompraID_USUARIO_ALTERACAO.AsString   := serviceDB.vIdUserLogado;
       ServiceConf.TContratoCompraDATA_ULTIMA_ALTERACAO.AsDateTime:= NOW;
       ServiceConf.TContratoCompra.ApplyUpdates(-1);
       Filtro;
       myShowMessage('Registro Deletado com Sucesso!',false);
      except
      on E : Exception do
       begin
         myShowMessage('Exception class name = '+E.ClassName,false);
         myShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  0:
   begin

   end;
  end;
end;

procedure TfrmContratoCompra.TreeItemNovoClick(Sender: TObject);
begin
  LimpaDados;
  ServiceConf.TContratoCompra.Insert;
  inherited;
end;

end.
