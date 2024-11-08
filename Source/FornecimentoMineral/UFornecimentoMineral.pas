unit UFornecimentoMineral;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.DateTimeCtrls, FMX.EditBox, FMX.NumberBox, FMX.ListBox,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.TabControl,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,FireDAC.Comp.Client,
  UCadPadrao, FMX.Grid.Style, FMX.ActnList, System.Actions, FMX.ScrollBox,
  FMX.Grid, FMX.TreeView, Fmx.Bind.Grid, Data.Bind.Grid,FMX.Text,Winapi.Windows,
  FMX.Effects, FMX.Memo;

type
  TfrmCadFornecimento = class(TfrmCadPadrao)
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtPastoCocho: TEdit;
    btnBuscaPasto: TEditButton;
    LayValueDadosPasto: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    layCapDadosPasto: TLayout;
    lblTotalAnimaisSaida: TLabel;
    lblDiasMedioSaida: TLabel;
    lblUltimoForn: TLabel;
    lblPesoMedAtualSaida: TLabel;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Label3: TLabel;
    Layout5: TLayout;
    edtDataForn: TDateEdit;
    layMineral: TLayout;
    Rectangle5: TRectangle;
    Layout9: TLayout;
    Label5: TLabel;
    layCapMineral: TLayout;
    Label6: TLabel;
    Layout11: TLayout;
    edtMineral: TEdit;
    btnBuscaMineral: TEditButton;
    layValueMineral: TLayout;
    lblFornecedorMineral: TLabel;
    Label7: TLabel;
    lblKGEmbalagem: TLabel;
    Label8: TLabel;
    lblConsumoProjMineral: TLabel;
    layPrevisao: TLayout;
    Rectangle6: TRectangle;
    Layout12: TLayout;
    Layout13: TLayout;
    Label14: TLabel;
    Layout14: TLayout;
    Layout15: TLayout;
    layFornecimento: TLayout;
    Rectangle7: TRectangle;
    Layout20: TLayout;
    Label20: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    Layout10: TLayout;
    Label22: TLabel;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Label16: TLabel;
    lblPasto: TLabel;
    Label18: TLabel;
    edtResponsavel: TEdit;
    btnBuscaResponsavel: TEditButton;
    edtDataDeFiltro: TDateEdit;
    edtDataAteFiltro: TDateEdit;
    Label23: TLabel;
    Label24: TLabel;
    cbxPastoFiltro: TComboBox;
    Label25: TLabel;
    Label26: TLabel;
    cbxMineralFiltro: TComboBox;
    btnFiltar: TSpeedButton;
    edtPrevisaoSaco: TEdit;
    edtPrevisaoKG: TEdit;
    Label27: TLabel;
    lblConsumoEsperadoCategoria: TLabel;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    layResumoGrafico: TLayout;
    Rectangle17: TRectangle;
    lblTotalPesoKGCocho: TLabel;
    lblTotalSacosCocho: TLabel;
    lblTotalPesoKGCasinha: TLabel;
    lblTotalSacosCasinha: TLabel;
    Layout4: TLayout;
    Layout16: TLayout;
    Label29: TLabel;
    cbxTipoFornecimento: TComboBox;
    Label28: TLabel;
    cbxTipoLancamento: TComboBox;
    Layout21: TLayout;
    Rectangle19: TRectangle;
    Rectangle20: TRectangle;
    layDadosFornecimento: TLayout;
    layRelCocho: TLayout;
    Layout19: TLayout;
    Layout22: TLayout;
    Rectangle22: TRectangle;
    lblRealizadoCocho: TLabel;
    lblRealizadoSobra: TLabel;
    Layout23: TLayout;
    edtRealizadoCocho: TEdit;
    edtSobraKG: TEdit;
    layRelCasinha: TLayout;
    Rectangle23: TRectangle;
    Layout25: TLayout;
    Layout26: TLayout;
    Rectangle24: TRectangle;
    Label19: TLabel;
    Rectangle21: TRectangle;
    cbxTipoForn: TComboBox;
    Rectangle18: TRectangle;
    Rectangle25: TRectangle;
    Layout17: TLayout;
    Rectangle26: TRectangle;
    Layout18: TLayout;
    edtRealizadoEstoque: TEdit;
    Label15: TLabel;
    cbxOrigemDados: TComboBox;
    Label17: TLabel;
    chkIrregular: TCheckBox;
    LayFornIrregular: TLayout;
    Rectangle4: TRectangle;
    Layout24: TLayout;
    Layout27: TLayout;
    Rectangle27: TRectangle;
    Layout28: TLayout;
    Label30: TLabel;
    Label31: TLabel;
    Layout29: TLayout;
    edtCorrijeData: TDateEdit;
    edtCorrijeResponsavel: TEdit;
    Layout30: TLayout;
    Layout31: TLayout;
    Rectangle28: TRectangle;
    Layout32: TLayout;
    Layout33: TLayout;
    Label32: TLabel;
    edtCorrijeOBS: TMemo;
    Layout34: TLayout;
    btnCorrigeForn: TRectangle;
    Layout35: TLayout;
    Image3: TImage;
    Label33: TLabel;
    btnExcluiForn: TRectangle;
    Layout36: TLayout;
    Label34: TLabel;
    Image6: TImage;
    procedure btnBuscaPastoClick(Sender: TObject);
    procedure btnBuscaMineralClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscaResponsavelClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure edtRealizadoCochoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtRealizadoCochoEnter(Sender: TObject);
    procedure cbxTipoFornChange(Sender: TObject);
    procedure cbxTipoFornExit(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure edtDataFornChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnCorrigeFornClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtMineralClick(Sender: TObject);
    procedure edtResponsavelEnter(Sender: TObject);
    procedure btnCorrigirTodosClick(Sender: TObject);
  private
    vIdPasto,vIdCoho,vIdMineral,vIdResponsavel:string;
    vSacoKG,vValorKG,vPrevTotal,vPrecKG:Double;
    procedure LimpaDados;
    procedure CarregaComboFiltro;
  public
    procedure AtualizaLabelPastoOrigemSaida(IDPasto,Pasto, vData: string);
    procedure AbreQryFornecimento(status:string);
    procedure SomarColunasGrid;
  end;

var
  frmCadFornecimento: TfrmCadFornecimento;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal, UCurrais, USuplementoMineral, UCadUsers, UMsgDlg,
  ServiceDB2;

procedure TfrmCadFornecimento.AbreQryFornecimento(Status:string);
begin
 with serviceDB.FornecimentoMineral,serviceDB.FornecimentoMineral.SQL do
 begin
   Clear;
   Add('SELECT f.*,c.*,s.*,us.Name Responsavel FROM fornecimento F');
   Add('JOIN currais C ON C.id=F.id_pasto');
   Add('JOIN suplemento_mineral S ON S.id=F.id_produto');
   Add('join users us on us.id = f.id_responsavel');
   Add('WHERE DATA_FORNECIMENTO BETWEEN  '+FormatDateTime('mm/dd/yyyy',edtDataDeFiltro.Date).QuotedString);
   Add(' AND '+FormatDateTime('mm/dd/yyyy',edtDataAteFiltro.Date).QuotedString);
   Add(' AND f.STATUS>-1');
   if Status='1' then
    Add('AND f.STATUS=1');
   if Status='2' then
    Add('AND f.STATUS=2');
   if cbxPastoFiltro.ItemIndex>0 then
    Add('AND C.CODIGO='+cbxPastoFiltro.Selected.Text.QuotedString);
   if cbxMineralFiltro.ItemIndex>0 then
    Add('AND S.NOME='+cbxMineralFiltro.Selected.Text.QuotedString);
   if cbxOrigemDados.ItemIndex>0 then
   begin
    if cbxOrigemDados.ItemIndex=1 then
     Add('AND F.TIPO_FORNE=''MANUAL''')
    else
     Add('AND F.TIPO_FORNE=''App''')
   end;
   serviceDB.FornecimentoMineral.SQL.Text;
   Open;
 end;
end;

procedure TfrmCadFornecimento.AtualizaLabelPastoOrigemSaida(IDPasto,Pasto, vData: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM  HIST_ANIMAIS_PESO_QTD');
   Add('WHERE "DATA"='+vData);
   Add('AND ID_CURRAL_PASTO='+IDPasto);
   Open;
   if not IsEmpty then
   begin
    lblTotalAnimaisSaida.Text:= FieldByName('QTD_CAB').AsString;
    lblPesoMedAtualSaida.Text:= FieldByName('PESO_PROJ').AsString;
    lblDiasMedioSaida.Text   := FieldByName('DIAS').AsString;
   end
   else
   begin
     Clear;
     Add('SELECT C.CODIGO,');
     Add('COUNT(*) QTD_ANIMAIS,');
     Add('AVG(PESO_ENTRADA) PESOENT,');
     Add('AVG(PESO_ESTIMADO)PESO_ATUAL,');
     Add('AVG(datediff(DAY FROM A.data_proc TO coalesce(DATA_SAIDA,cast('+vData+'as date))))DIAS');
     Add('FROM ANIMAL A');
     Add('JOIN CURRAIS C ON C.id=A.id_local');
     Add('WHERE a.STATUS=1 AND C.CODIGO='+Pasto);
     Add('AND DATA_PROC<='+vData);
     Add('GROUP BY C.CODIGO');
     Open;
     lblTotalAnimaisSaida.Text:= FieldByName('QTD_ANIMAIS').AsString;
     lblPesoMedAtualSaida.Text:= FieldByName('PESO_ATUAL').AsString;
     lblDiasMedioSaida.Text   := FieldByName('DIAS').AsString;
   end;
   Clear;
   Add('SELECT  MAX(DATA_FORNECIMENTO) MAXDATA FROM FORNECIMENTO');
   Add('WHERE ID_PASTO='+IDPasto);
   Open;
   lblUltimoForn.Text  := FieldByName('MAXDATA').AsString;
 end;
 if lblTotalAnimaisSaida.Text='' then
 begin
   MyShowMessage('Pasto não tem animais ativos na data!!',false);
   edtPastoCocho.Text := '';
   edtMineral.Enabled := false;
 end
 else
  edtMineral.Enabled := true;
end;

procedure TfrmCadFornecimento.btnBuscaMineralClick(Sender: TObject);
var
 vFloat,vConsumoCab,imsPV:Double;
 imsPVS:string;
begin
 serviceDB.AbreSuplementoMineral;
 frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(nil);
  try
    frmPrincipal.vForn :=1;
    frmCadSuplementoMineral.ShowModal;
  finally
    edtMineral.text            := serviceDB.SuplementoMineralNOME.AsString;
    vIdMineral                 := serviceDB.SuplementoMineralID.AsString;
    lblFornecedorMineral.Text  := serviceDB.SuplementoMineralRAZAO_SOCIAL.AsString;
    lblKGEmbalagem.Text        := serviceDB.SuplementoMineralPESO_EMBALAGEM.AsString;
    lblConsumoProjMineral.Text := serviceDB.SuplementoMineralINGESTAO_PERCENT_PV.AsString;
    vSacoKG                    := serviceDB.SuplementoMineralPESO_EMBALAGEM.AsFloat;
    vValorKG                   := serviceDB.SuplementoMineralVALOR_KG.AsFloat;

    if serviceDB.VerificaPrevisaoDia(vIdPasto,FormatDateTime('mm/dd/yyyy',edtDataForn.Date),vIdMineral)then
    begin
      MyShowMessage('Não existe Previsao programada para esse pasto nessa data, sera calculado a previsão para o dia!',false);
      imsPVS := serviceDB.RetornaIMSPV(VIdMineral,VIdPasto,FormatDateTime('mm/dd/yyyy',edtDataForn.Date));
      vConsumoCab                :=
       strToFloat(lblPesoMedAtualSaida.Text)*
        (strToFloat(imsPVS)/100);
      vPrevTotal         := vConsumoCab*strToFloat(lblTotalAnimaisSaida.Text);
      edtPrevisaoKG.Text := FormatFloat('####,0.00',vPrevTotal);

      if (edtPrevisaoKG.Text.Length>0) AND (vPrevTotal>0) AND (lblKGEmbalagem.Text.Length>0)
      AND(lblKGEmbalagem.Text<>'0') then
      begin
       vPrecKG                 := vPrevTotal/strToFloat(lblKGEmbalagem.Text);
       edtPrevisaoSaco.Text    := FormatFloat('####,0.00',vPrecKG)
      end
      else
       edtPrevisaoSaco.Text    := '0';

     if edtPrevisaoKG.Text.Length=0 then
      edtPrevisaoKG.Text :='0';
    end
    else
    begin
     edtPrevisaoSaco.Text    := FormatFloat('####,0.00',serviceDB.qryVerificaPrevisaoTOTALSACO.AsFloat);
     edtPrevisaoKG.Text      := FormatFloat('####,0.00',serviceDB.qryVerificaPrevisaoCONSUMO_TOTAL.AsFloat);
    end;

    layValueMineral.Visible    := true;
    layCapMineral.Visible      := true;
    layPrevisao.Visible        := true;
    layFornecimento.Visible    := true;
    frmCadSuplementoMineral.Free;
  end;
end;

procedure TfrmCadFornecimento.btnBuscaPastoClick(Sender: TObject);
var
 vFloat,vConsumoCab,imsPV:Double;
 imsPVS:string;
begin
  frmCadCurral := TfrmCadCurral.Create(nil);
  try
    frmPrincipal.vForn :=1;
    frmPrincipal.vMov  :=0;
    frmCadCurral.ShowModal;
  finally
    edtPastoCocho.text        := serviceDB.TableCochoNOME.AsString;
    lblPasto.Text             := serviceDB.TableCurraisCODIGO.AsString;
    vIdPasto                  := serviceDB.TableCurraisID.AsString;
    vIdCoho                   := serviceDB.TableCochoID.AsString;
    AtualizaLabelPastoOrigemSaida(serviceDB.TableCurraisID.AsString,
     serviceDB.TableCurraisCODIGO.AsString.QuotedString,
    FormatDateTime('mm/dd/yyyy',edtDataForn.Date).QuotedString);
    LayValueDadosPasto.Visible := true;
    layCapDadosPasto.Visible   := true;
    layMineral.Visible         := true;
    if edtMineral.Text.Length>0 then
    begin
      if serviceDB.VerificaPrevisaoDia(vIdPasto,FormatDateTime('mm/dd/yyyy',edtDataForn.Date),vIdMineral)then
      begin
        MyShowMessage('Não existe Previsao programada para esse pasto nessa data, sera calculado a previsão para o dia!',false);
        imsPVS := serviceDB.RetornaIMSPV(VIdMineral,VIdPasto,FormatDateTime('mm/dd/yyyy',edtDataForn.Date));
        vConsumoCab                :=
         strToFloat(lblPesoMedAtualSaida.Text)*
          (strToFloat(imsPVS)/100);
        vPrevTotal         := vConsumoCab*strToFloat(lblTotalAnimaisSaida.Text);
        edtPrevisaoKG.Text := FormatFloat('####,0.00',vPrevTotal);

        if (edtPrevisaoKG.Text.Length>0) AND (vPrevTotal>0) AND (lblKGEmbalagem.Text.Length>0)
        AND(lblKGEmbalagem.Text<>'0') then
        begin
         vPrecKG                 := vPrevTotal/strToFloat(lblKGEmbalagem.Text);
         edtPrevisaoSaco.Text    := FormatFloat('####,0.00',vPrecKG)
        end
        else
         edtPrevisaoSaco.Text    := '0';

       if edtPrevisaoKG.Text.Length=0 then
        edtPrevisaoKG.Text :='0';
      end
      else
      begin
       edtPrevisaoSaco.Text    := FormatFloat('####,0.00',serviceDB.qryVerificaPrevisaoTOTALSACO.AsFloat);
       edtPrevisaoKG.Text      := FormatFloat('####,0.00',serviceDB.qryVerificaPrevisaoCONSUMO_TOTAL.AsFloat);
      end;
    end;
    frmCadCurral.Free;
  end;
end;

procedure TfrmCadFornecimento.btnBuscaResponsavelClick(Sender: TObject);
begin
 serviceDB.TableUsers.Close;
 serviceDB.TableUsers.Open;
 serviceDB.TableUsers.Filtered:=false;
 serviceDB.TableUsers.Filter  :='ID_PROPRIEDADE='+serviceDB.vIdPropriedade;
 serviceDB.TableUsers.Filtered:=true;

 frmCadUsers := TfrmCadUsers.Create(nil);
  try
    frmCadUsers.ShowModal;
  finally
    edtResponsavel.text       := serviceDB.TableUsersNAME.AsString;
    vIdResponsavel            := serviceDB.TableUsersID.AsString;
    frmCadUsers.Free;
  end;
end;

procedure TfrmCadFornecimento.btnCancelarClick(Sender: TObject);
begin
 LayFornIrregular.Visible := false;
 btnVoltarPadraoClick(Sender);
end;

procedure TfrmCadFornecimento.btnConfirmaClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
  VMaxIdFor:string;
  vRealizado:Double;
begin
 if (cbxTipoFornecimento.ItemIndex=-1)  then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o tipo de fornecimento!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  Exit;
 end;
 if edtResponsavel.Text.Length=0 then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o responsável pelo fornecimento!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  Exit;
 end;
 if edtDataForn.Text.Length=0 then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe a Data do fornecimento!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  Exit;
 end;
 if edtPastoCocho.Text.Length=0 then
 begin
   dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Cocho!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
   Exit;
 end;
 if edtMineral.Text.Length=0 then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Mineral!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
   Exit;
 end;
 if (StrToInt(edtRealizadoCocho.Text)<=0) and (StrToInt(edtRealizadoEstoque.Text)<=0) then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Um dos realizados deve ser maior que zero(Cocho ou Estoque)!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
   Exit;
 end;
 serviceDB.FornecimentoMineralID_RESPONSAVEL.AsString       := vIdResponsavel;
 serviceDB.FornecimentoMineralDATA_FORNECIMENTO.AsDateTime  := edtDataForn.Date;
 serviceDB.FornecimentoMineralID_PRODUTO.AsString           := vIdMineral;
 serviceDB.FornecimentoMineralID_USUARIO.AsString           := serviceDB.vIdUserLogado;
 serviceDB.FornecimentoMineralID_PASTO.AsString             := vIdPasto;
 serviceDB.FornecimentoMineralID_COCHO.AsString             := vIdCoho;
 serviceDB.FornecimentoMineralTIPO_FORNE.AsString           := 'MANUAL';
 serviceDB.FornecimentoMineralQTD_ANIMAIS.AsString          := lblTotalAnimaisSaida.Text;
 vRealizado :=0;
 if cbxTipoLancamento.ItemIndex=0 then
 begin
   if StrToInt(edtRealizadoCocho.Text)>0 then
   begin
    serviceDB.FornecimentoMineralREALIZADO_COCHO_SACO.AsFloat   := StrToFloat(edtRealizadoCocho.Text);
    serviceDB.FornecimentoMineralREALIZADO_COCHO_KG.AsFloat     := StrToFloat(edtRealizadoCocho.Text)*strToFloat(lblKGEmbalagem.Text);
    vRealizado                                                  := StrToFloat(edtRealizadoCocho.Text)*strToFloat(lblKGEmbalagem.Text);
   end;
   if StrToInt(edtRealizadoEstoque.Text)>0 then
   begin
    serviceDB.FornecimentoMineralREALIZADO_ESTOQUE_SACO.AsString    := edtRealizadoEstoque.Text;
    serviceDB.FornecimentoMineralREALIZADO_ESTOQUE_KG.AsFloat       := Trunc(StrToFloat(edtRealizadoEstoque.Text)*
     strToFloat(lblKGEmbalagem.Text));
   end;
 end;
 if cbxTipoLancamento.ItemIndex=1 then
 begin
   if StrToInt(edtRealizadoCocho.Text)>0 then
   begin
    serviceDB.FornecimentoMineralREALIZADO_COCHO_SACO.AsFloat   := StrToInt(edtRealizadoCocho.Text)/strToFloat(lblKGEmbalagem.Text);
    serviceDB.FornecimentoMineralREALIZADO_COCHO_KG.AsFloat     := strToFLoat(edtRealizadoCocho.Text);
    vRealizado                                                  := StrToFloat(edtRealizadoCocho.Text);
   end;
   if StrToInt(edtRealizadoEstoque.Text)>0 then
   begin
    serviceDB.FornecimentoMineralREALIZADO_ESTOQUE_SACO.AsFloat := StrToInt(edtRealizadoEstoque.Text)/
     strToFloat(lblKGEmbalagem.Text);
    serviceDB.FornecimentoMineralREALIZADO_ESTOQUE_KG.AsFloat  := strToFLoat(edtRealizadoEstoque.Text);
   end;
 end;
 serviceDB.FornecimentoMineralPREVISAO_KG.AsFloat               := vPrevTotal;
 serviceDB.FornecimentoMineralPREVISTO_SACO.AsFloat             := vPrecKG;
 serviceDB.FornecimentoMineralSOBRA_KG.AsFloat                  := strToFLoat(edtSobraKG.Text);
 serviceDB.FornecimentoMineralCONSUMO_ESTIMADO_CAB_DIA.AsFloat  := serviceDB.vConsumoCab;
 serviceDB.FornecimentoMineralVALOR_KG.AsFloat                  := vValorKG;
 if(serviceDB.FornecimentoMineralREALIZADO_COCHO_KG.AsFloat>0) then
 begin
   serviceDB.FornecimentoMineralPREVISAO_DIAS.AsInteger         := TRUNC(serviceDB.FornecimentoMineralREALIZADO_COCHO_KG.AsFloat/(serviceDB.vConsumoCab*serviceDB.FornecimentoMineralQTD_ANIMAIS.AsInteger));
 end
 else
   serviceDB.FornecimentoMineralPREVISAO_DIAS.AsFloat   :=0;
 serviceDB.FornecimentoMineralESTOQUE_ORIGEM.AsInteger  := cbxTipoFornecimento.ItemIndex;
 try
    serviceDB.FornecimentoMineral.ApplyUpdates(-1);
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Fornecimento Lançado com Sucesso!!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      serviceDB.FornecimentoMineral.Close;
      serviceDB.FornecimentoMineral.Open;
      if StrToInt(edtRealizadoCocho.Text)>0 then
      begin
        VMaxIdFor := serviceDB.RetornaIDUltimoFornecimento;
        serviceDB.InsereFornecimentoCab(
        FormatDateTime('mm/dd/yyyy',edtDataForn.Date),
        vIdPasto,VMaxIdFor,vIdMineral,formatFloat('0.00',vRealizado),
         formatFloat('0.00',vValorKG), lblTotalAnimaisSaida.Text);
      end;
      serviceDB.FornecimentoMineral.Close;
      serviceDB.FornecimentoMineral.Open;
      serviceDB.FornecimentoMineral.Insert;

      LayValueDadosPasto.Visible    := false;
      layCapDadosPasto.Visible      := false;
      edtPastoCocho.Text            :='';
      edtRealizadoCocho.Text        := '0';
      edtRealizadoEstoque.Text      := '0';
      edtPrevisaoSaco.Text          := '0';
      edtPrevisaoKG.Text            := '0';
      edtSobraKG.Text               := '0';
      cbxTipoFornecimento.Enabled   := true;
      edtPastoCocho.SetFocus;
//      tbPrincipal.ActiveTab := tbiMnu;
    end);
 except
  on E: Exception do
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text :=  'Erro ao inserir fornecimento : '+e.Message;
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  end;
 end;
end;

procedure TfrmCadFornecimento.btnCorrigeFornClick(Sender: TObject);
var
 vQtdeCab:string;
begin
 try
   vQtdeCab := trim(copy(serviceDB.FornecimentoMineralOBSERVACAO.AsString,
    pos('=',serviceDB.FornecimentoMineralOBSERVACAO.AsString)+1,
    serviceDB.FornecimentoMineralOBSERVACAO.AsString.Length));

   serviceDB.CorrijeFornecimentoIrregular(
    serviceDB.FornecimentoMineralID.AsString,
    serviceDB.FornecimentoMineralDATA_FORNECIMENTO.AsString,
    serviceDB.FornecimentoMineralID_PASTO.AsString,
    serviceDB.FornecimentoMineralID_PRODUTO.AsString,
    serviceDB.FornecimentoMineralREALIZADO_COCHO_SACO.AsString,
    serviceDB.FornecimentoMineralVALOR_KG.AsString,
    vQtdeCab);
    serviceDB.InsereLogFornecimento(serviceDB.vIdUserLogado,serviceDB.FornecimentoMineralID.AsString,'FONECIMENTO CORRIGIDO');
    MyShowMessage('Fornecimento Corrigido com sucesso!',false);
    LayFornIrregular.Visible := false;
 except
   on E: Exception do
    MyShowMessage('Erro ao corrijir fornecimento:'+E.Message,false);
 end;
end;

procedure TfrmCadFornecimento.btnCorrigirTodosClick(Sender: TObject);
var
 vQtdeCab:string;
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 serviceDB.FornecimentoMineral.First;
 while not serviceDB.FornecimentoMineral.Eof do
 begin
   try
     vQtdeCab := trim(copy(serviceDB.FornecimentoMineralOBSERVACAO.AsString,
      pos('=',serviceDB.FornecimentoMineralOBSERVACAO.AsString)+1,
      serviceDB.FornecimentoMineralOBSERVACAO.AsString.Length));
     if(vQtdeCab='0') or (vQtdeCab.Length=0) then
       vQtdeCab := serviceDB.FornecimentoMineralQTD_ANIMAIS.AsString;
      if vQtdeCab<>'0' then
      begin
       serviceDB.CorrijeFornecimentoIrregular(
       serviceDB.FornecimentoMineralID.AsString,
       serviceDB.FornecimentoMineralDATA_FORNECIMENTO.AsString,
       serviceDB.FornecimentoMineralID_PASTO.AsString,
       serviceDB.FornecimentoMineralID_PRODUTO.AsString,
       serviceDB.FornecimentoMineralREALIZADO_COCHO_SACO.AsString,
       serviceDB.FornecimentoMineralVALOR_KG.AsString,
       vQtdeCab);
      end
      else
      begin
        with vQryAux,vQryAux.SQL do
        begin
         Clear;
         Add('update fornecimento set status=-1');
         Add(',ID_USUARIO_ALTERACAO='+serviceDB.vIdUserLogado);
         Add(',DATA_ALTERACAO=current_timestamp');
         Add('WHERE ID='+serviceDB.FornecimentoMineralID.AsString);
         ExecSQL;
        end;
      end;
      serviceDB.InsereLogFornecimento(serviceDB.vIdUserLogado,serviceDB.FornecimentoMineralID.AsString,'FONECIMENTO CORRIGIDO');
      LayFornIrregular.Visible := false;
   except
     on E: Exception do
     begin
      MyShowMessage('Erro ao corrijir fornecimento:'+E.Message,false);
      Break;
      Exit;
     end;
   end;
   serviceDB.FornecimentoMineral.Next;
 end;
 MyShowMessage('Fornecimento Corrigido com sucesso!',false);
end;

procedure TfrmCadFornecimento.btnFiltarClick(Sender: TObject);
begin
 if chkIrregular.IsChecked then
 begin
  AbreQryFornecimento('2');
  if StringGrid1.RowCount>0 then
//   btnCorrigirTodos.Visible    := true;
 end
 else
 begin
  AbreQryFornecimento('1');
//  btnCorrigirTodos.Visible    := false;
 end;
 SomarColunasGrid;
end;

procedure TfrmCadFornecimento.CarregaComboFiltro;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 cbxPastoFiltro.Items.Clear;
 cbxMineralFiltro.Items.Clear;
 cbxPastoFiltro.Items.Add('Todos');
 cbxMineralFiltro.Items.Add('Todos');
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM SUPLEMENTO_MINERAL WHERE STATUS=1');
   Add('AND PRE_MISTURA=0');
   Open;
   while not vQryAux.Eof do
   begin
     cbxMineralFiltro.Items.Add(FieldByName('NOME').AsString);
     vQryAux.Next;
   end;
   cbxMineralFiltro.ItemIndex :=0;

   Clear;
   Add('SELECT * FROM CURRAIS WHERE STATUS=1');
   Open;
   while not vQryAux.Eof do
   begin
     cbxPastoFiltro.Items.Add(FieldByName('CODIGO').AsString);
     vQryAux.Next;
   end;
   cbxPastoFiltro.ItemIndex :=0;
 end;
end;

procedure TfrmCadFornecimento.cbxTipoFornChange(Sender: TObject);
begin
 case cbxTipoForn.ItemIndex of
  -1:begin
     cbxTipoFornecimento.Enabled     := true;
     layDadosFornecimento.Visible    := false;
     layRelCocho.Visible             := false;
     layRelCasinha.Visible           := false;
    end;
  0:begin
     cbxTipoFornecimento.Enabled     := false;
     layDadosFornecimento.Visible    := true;
     layRelCocho.Visible             := true;
     layRelCasinha.Visible           := false;
    end;
  1:begin
     cbxTipoFornecimento.Enabled     := false;
     layDadosFornecimento.Visible   := true;
     layRelCocho.Visible            := false;
     layRelCasinha.Visible          := true;
    end;
 end;

end;

procedure TfrmCadFornecimento.cbxTipoFornExit(Sender: TObject);
begin
 DelayedSetFocus(cbxTipoLancamento);
end;

procedure TfrmCadFornecimento.edtDataFornChange(Sender: TObject);
begin
 edtPastoCocho.Text         :='';
 layMineral.Visible         := false;
 LayValueDadosPasto.Visible := false;
 layCapDadosPasto.Visible   := false;
end;

procedure TfrmCadFornecimento.edtMineralClick(Sender: TObject);
begin
 btnBuscaMineralClick(Sender);
end;

procedure TfrmCadFornecimento.edtRealizadoCochoEnter(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
end;

procedure TfrmCadFornecimento.edtRealizadoCochoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadFornecimento.edtResponsavelEnter(Sender: TObject);
begin
 btnBuscaResponsavelClick(Sender);
end;

procedure TfrmCadFornecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPrincipal.vForn :=0;
  inherited;
end;

procedure TfrmCadFornecimento.FormCreate(Sender: TObject);
begin
  layDadosFornecimento.Visible    := false;
  LayValueDadosPasto.Visible      := false;
  LayCapDadosPasto.Visible        := false;
  layValueMineral.Visible         := false;
  layCapMineral.Visible           := false;
  layPrevisao.Visible             := false;
  layFornecimento.Visible         := false;
  CarregaComboFiltro;
  inherited;
end;

procedure TfrmCadFornecimento.FormShow(Sender: TObject);
begin
// btnCorrigirTodos.Visible    := false;
 LayFornIrregular.Visible    := false;
 serviceDB.FornecimentoMineral.Close;
 serviceDB.FornecimentoMineral.Open;
 if not serviceDB.VerificaFornecimentoIrregular then
  begin
     MyShowMessage('Existe Fornecimento Irregular'+#13+
       ' Favor corrigir.',false);
  end;
  serviceDBN.VerificaDestinoPlanNutricional;
  inherited;
end;

procedure TfrmCadFornecimento.imgCloseClick(Sender: TObject);
begin
  if tbPrincipal.TabIndex=0 then
   inherited
  else
  begin
    LimpaDados;
    MudarAba(tbiMnu,sender);
  end;
end;

procedure TfrmCadFornecimento.LimpaDados;
begin
  LayValueDadosPasto.Visible      := false;
  LayCapDadosPasto.Visible        := false;
  layValueMineral.Visible         := false;
  layCapMineral.Visible           := false;
  layPrevisao.Visible             := false;
  layFornecimento.Visible         := false;
  edtPastoCocho.Text              :='';
  edtDataForn.Date                := Date;
  edtMineral.Text                 :='';
  edtRealizadoEstoque.Enabled     := false;
  edtPrevisaoSaco.Text            :='0';
  edtPrevisaoKG.Text              :='0';
end;


procedure TfrmCadFornecimento.SomarColunasGrid;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
  Sum1: Double;
  Val1: Double;
  Sum2: Double;
  Val2: Double;
  Sum3: Double;
  Val3: Double;
begin
  Sum := 0;
  Sum1:= 0;
  Sum2 := 0;
  Sum3:= 0;
  for I := 0 to StringGrid1.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid1.Cells[6,I],Val) then
    Sum := Sum + Val
   else
    Sum :=0;

   if TryStrToFloat(StringGrid1.Cells[7,I],Val1) then
    Sum1:= Sum1 + Val1
   else
    Sum1:=0;

   if TryStrToFloat(StringGrid1.Cells[8,I],Val2) then
    Sum2 := Sum2 + Val2
   else
    Sum2 :=0;

   if TryStrToFloat(StringGrid1.Cells[9,I],Val3) then
    Sum3:= Sum3 + Val3
   else
    Sum3:=0;

  end;
  if Sum>0 then
   lblTotalPesoKGCocho.Text  := 'Fornecimento total Cocho kg: '+FloatToStr(Sum)
  else
   lblTotalPesoKGCocho.Text  := 'Fornecimento total Cocho kg:0';

  if Sum1>0 then
   lblTotalSacosCocho.Text := 'Fornecimento total Cocho Saco: '+FloatToStr(Sum1)
  else
   lblTotalSacosCocho.Text := 'Fornecimento total Cocho Saco:0' ;

   if Sum2>0 then
   lblTotalPesoKGCasinha.Text  := 'Fornecimento total Casinha kg: '+FloatToStr(Sum2)
  else
   lblTotalPesoKGCasinha.Text  := 'Fornecimento total Casinha kg:0';

  if Sum3>0 then
   lblTotalSacosCasinha.Text := 'Fornecimento total Casinha Saco: '+FloatToStr(Sum3)
  else
   lblTotalSacosCasinha.Text := 'Fornecimento total Casinha Saco:0'
end;

procedure TfrmCadFornecimento.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  if serviceDB.FornecimentoMineralSTATUS.AsInteger=2 then
  begin
    edtCorrijeResponsavel.Text :=  serviceDB.FornecimentoMineralRESPONSAVEL.AsString;
    edtCorrijeData.Text        :=  serviceDB.FornecimentoMineralDATA_FORNECIMENTO.AsString;
    edtCorrijeOBS.Text         :=  serviceDB.FornecimentoMineralOBSERVACAO.AsString;
    LayFornIrregular.Visible   :=  true;
  end;
end;

procedure TfrmCadFornecimento.TreeItemExcluirClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
    if serviceDB.FornecimentoMineral.RecordCount>0 then
    begin
      dlg := TFrmmsgDlg.Create(nil);
      dlg.Position := TFormPosition.ScreenCenter;
      dlg.msg.Text := 'Deseja Realmente Excluir esse Fornecimento?';
      dlg.btnCancel.Visible := true;
      dlg.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        if dlg.vBntConfirmaMsg=1 then
        begin
         serviceDB.InativaFornecimento(serviceDB.FornecimentoMineralID.AsString);
         serviceDB.InsereLogFornecimento(serviceDB.vIdUserLogado,serviceDB.FornecimentoMineralID.AsString,'FONECIMENTO EXCLUIDO');
         if chkIrregular.IsChecked then
          AbreQryFornecimento('2')
         else
          AbreQryFornecimento('1');
         SomarColunasGrid;
        end;
      end);
      Exit;
    end
    else
    begin
      MyShowMessage('Nenhum Forneciemento para excluir!!',false);
    end;
end;

procedure TfrmCadFornecimento.TreeItemNovoClick(Sender: TObject);
begin
  serviceDB.FornecimentoMineral.Close;
  serviceDB.FornecimentoMineral.Open;
  serviceDB.FornecimentoMineral.Insert;
  edtResponsavel.Text           := '';
  layRelCocho.Visible           := false;
  layRelCasinha.Visible         := false;
  cbxTipoFornecimento.ItemIndex :=-1;
  
  LayValueDadosPasto.Visible    := false;
  layCapDadosPasto.Visible      := false;
  layMineral.Visible            := false;
  layValueMineral.Visible       := false;
  layCapMineral.Visible         := false;
  layPrevisao.Visible           := false;
  layFornecimento.Visible       := false;
  edtPastoCocho.Text            :='';
  edtMineral.Text               :='';
  layMineral.Visible            := false;
  edtRealizadoCocho.Text        := '0';
  edtRealizadoEstoque.Text      := '0';
  edtSobraKG.Text               := '0';
  cbxTipoFornecimento.Enabled   := true;
  cbxTipoForn.ItemIndex         := -1;
  inherited;
end;

end.
