unit UFabricacaoRacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Grid, FMX.DateTimeCtrls, FMX.StdCtrls, FMX.Edit,
  FMX.EditBox, FMX.SpinBox, FMX.ScrollBox, FMX.ListBox,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,UMsgDlg,
  System.Win.ComObj, ppParameter, ppDesignLayer, ppBands, ppClass, ppVar,
  ppCtrls, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TfrmFabricaRacao = class(TForm)
    layBase: TLayout;
    tbPrincipal: TTabControl;
    tbiMnu: TTabItem;
    layMnuPrincipal: TLayout;
    layMnu: TLayout;
    recMnu: TRectangle;
    Treemnu: TTreeView;
    TreeItemNovo: TTreeViewItem;
    Image2: TImage;
    TreeItemEditar: TTreeViewItem;
    Image5: TImage;
    TreeItemExcluir: TTreeViewItem;
    Image1: TImage;
    TreeViewItem1: TTreeViewItem;
    Image4: TImage;
    laySuperior: TLayout;
    Rectangle1: TRectangle;
    Label2: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    layMnuPadrao: TLayout;
    imgMenu: TImage;
    lblmnu: TLabel;
    layLista: TLayout;
    RecLista: TRectangle;
    GroupBox1: TGroupBox;
    edtFiltroName: TEdit;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label12: TLabel;
    edtFDataEntDE: TDateEdit;
    Label13: TLabel;
    Label14: TLabel;
    cbxCentroCustoF: TComboBox;
    edtOperadorF: TEdit;
    Label15: TLabel;
    cbxTipoBaixaF: TComboBox;
    Label16: TLabel;
    StringGrid1: TStringGrid;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Label3: TLabel;
    StringGrid2: TStringGrid;
    LayInfPadrao: TLayout;
    RectangleInfPadrao: TRectangle;
    layImprimiFicha: TLayout;
    Rectangle6: TRectangle;
    Layout15: TLayout;
    C: TRectangle;
    Rectangle5: TRectangle;
    Layout9: TLayout;
    Label21: TLabel;
    Label22: TLabel;
    Layout10: TLayout;
    Edit4: TEdit;
    edtFabFicha: TDateEdit;
    Layout20: TLayout;
    btnImprimiFicha: TRectangle;
    Layout21: TLayout;
    Image8: TImage;
    Label24: TLabel;
    btnCancelaFicha: TRectangle;
    Layout22: TLayout;
    Image9: TImage;
    Label25: TLabel;
    Rectangle8: TRectangle;
    Layout23: TLayout;
    Label26: TLabel;
    Label27: TLabel;
    Label20: TLabel;
    Layout24: TLayout;
    Edit1: TEdit;
    edtPrevisaoFicha: TEdit;
    edtQtdBatida: TSpinBox;
    Rectangle7: TRectangle;
    Layout16: TLayout;
    Label28: TLabel;
    Label29: TLabel;
    Layout17: TLayout;
    edtRacaoFicha: TEdit;
    EditButton2: TEditButton;
    Edit2: TEdit;
    tbiCad: TTabItem;
    layCad: TLayout;
    ToolBar3: TToolBar;
    btnVoltarPadrao: TSpeedButton;
    ImageVoltaPadrao: TImage;
    Label4: TLabel;
    ToolBar4: TToolBar;
    layBtnControls: TLayout;
    btnConfirma: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    btnCancelar: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    RecWhitPadrao: TRectangle;
    Layout2: TLayout;
    EditTab: TEdit;
    Image12: TImage;
    Layout67: TLayout;
    Rectangle32: TRectangle;
    PTIMA: TLayout;
    Layout68: TLayout;
    Layout69: TLayout;
    lbltipo: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cbxTipoBaixa: TComboBox;
    cbxCentroCusto: TComboBox;
    dataFab: TDateEdit;
    edtHoraIni: TTimeEdit;
    edtHoraFim: TTimeEdit;
    Layout3: TLayout;
    Rectangle3: TRectangle;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Label9: TLabel;
    lblSelectTipo: TLabel;
    Label19: TLabel;
    edtRacaoADD: TEdit;
    btnBuscaAlim: TEditButton;
    edtKGTotal: TEdit;
    Rectangle4: TRectangle;
    Layout7: TLayout;
    Image3: TImage;
    Label10: TLabel;
    edtResponsavel: TEdit;
    EditButton1: TEditButton;
    layInsumos: TLayout;
    gridInsumos: TStringGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    StringColumn4: TStringColumn;
    StringColumn5: TStringColumn;
    StringColumn6: TStringColumn;
    StringColumn7: TStringColumn;
    Layout8: TLayout;
    Label17: TLabel;
    lblTotalPrevisto: TLabel;
    Label18: TLabel;
    lblTotalRealizado: TLabel;
    Label11: TLabel;
    lblValorTotalFab: TLabel;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB2: TBindSourceDB;
    qryAux: TFDQuery;
    qryPrevistro: TFDQuery;
    qryPrevistroALIMENTO: TStringField;
    qryPrevistroPREVISTO: TFloatField;
    qryPrevistroIDALIMENTO: TIntegerField;
    qryPrevistroIDCONSENTRADO: TIntegerField;
    qryPrevistroPERCENTMATERIASECA: TFMTBCDField;
    qryPrevistroVALORKG: TFMTBCDField;
    qryPrevistroREALIZADO: TFloatField;
    TreeViewItem2: TTreeViewItem;
    Image6: TImage;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    TreeViewItem3: TTreeViewItem;
    Image7: TImage;
    EditButton3: TEditButton;
    EditButton4: TEditButton;
    qryFichaFab: TFDQuery;
    qryFichaFabDATA_FAB_R: TDateField;
    qryFichaFabRACAO: TStringField;
    qryFichaFabPREVISTO_KG_R: TFMTBCDField;
    qryFichaFabFABRICACAO_NUMERO: TIntegerField;
    qryFichaFabINSUMO: TStringField;
    qryFichaFabPREV_INSUMO: TFMTBCDField;
    qryFichaFabREAL_INSUMO: TFMTBCDField;
    dsFichaFab: TDataSource;
    ppDBFichaFab: TppDBPipeline;
    ppRepFichaFab: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppShape8: TppShape;
    ppLabel11: TppLabel;
    ppLabel9: TppLabel;
    ppLabel18: TppLabel;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape15: TppShape;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    Label23: TLabel;
    edtPreMistura: TEdit;
    EditButton5: TEditButton;
    ClearEditButton1: TClearEditButton;
    ClearEditButton2: TClearEditButton;
    layPopUpCad: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout234: TLayout;
    Layout235: TLayout;
    Layout236: TLayout;
    Label103: TLabel;
    Image161: TImage;
    Layout237: TLayout;
    Rectangle48: TRectangle;
    Label104: TLabel;
    btnVoltar: TLabel;
    Layout11: TLayout;
    Rectangle9: TRectangle;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    cbxTipoBaixaEdita: TComboBox;
    cbxCentroCustoEdita: TComboBox;
    edtDataBaixaEdita: TDateEdit;
    edtHoraInicioEdita: TTimeEdit;
    edtHoraFimEdita: TTimeEdit;
    procedure FormShow(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure lblmnuClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure btnImprimiFichaClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure btnBuscaAlimClick(Sender: TObject);
    procedure edtKGTotalKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtPrevisaoFichaKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtFDataEntDEClosePicker(Sender: TObject);
    procedure edtFDataEntATEClosePicker(Sender: TObject);
    procedure cbxCentroCustoFChange(Sender: TObject);
    procedure cbxTipoBaixaFChange(Sender: TObject);
    procedure cbxCentroCustoChange(Sender: TObject);
    procedure cbxTipoBaixaChange(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure gridInsumosEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelaFichaClick(Sender: TObject);
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure edtOperadorFChange(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure EditButton5Click(Sender: TObject);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure ClearEditButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Rectangle48Click(Sender: TObject);
    procedure cbxCentroCustoEditaChange(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
  private
    dlg :TFrmmsgDlg;
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
  public
    vAbriSistema:integer;
    vIdRacao,vIdCentroCusto,vIdResponsavel,vIdPremistura:string;
    procedure Filtro;
    procedure CarregaCombo;
    procedure SomarColunasGrid;
    procedure LimpaCampos;
    procedure GerarXLS(DSPadrao: TDataSet);
  end;

var
  frmFabricaRacao: TfrmFabricaRacao;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB, USeviceConfinamento, UCadRacao, USuplementoMineral,
  UCadUsers, UdmReportConf;

procedure TfrmFabricaRacao.btnBuscaAlimClick(Sender: TObject);
begin
 if cbxTipoBaixa.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo antes de selecionar!',false);
   Exit;
 end;
 if cbxTipoBaixa.ItemIndex<>3 then
 begin
    frmCadRacao := TfrmCadRacao.Create(nil);
    try
      frmCadRacao.ShowModal;
    finally
      if frmCadRacao.vIdRacaoSelect.Length>0 then
      begin
       if ServiceConf.TRacaoSTATUS.AsInteger=2 then
       begin
         MyShowMessage('Ração Irregular Impossivel Incluir nesse Planejamento',false);
       end
       else
       begin
         edtRacaoADD.text          := ServiceConf.TRacaoNOME.AsString;
         vIdRacao                  := ServiceConf.TRacaoID.AsString;
       end;
      end;
      frmCadRacao.Free;
    end;
 end
 else
 begin
  frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(nil);
    try
      frmCadSuplementoMineral.ShowModal;
    finally
     if frmCadSuplementoMineral.lblInclusaoTotal.Text='100,00' then
     begin
      edtRacaoADD.text           := serviceDB.SuplementoMineralNOME.AsString;
      vIdRacao                   := serviceDB.SuplementoMineralID.AsString;
     end
     else
     begin
       MyShowMessage('Pre-Mistura Irregular,a formulação deve fechar os 100% de inclusão!',false);
       edtRacaoADD.text           := '';
       vIdRacao                   := '';
     end;
     frmCadSuplementoMineral.Free;
    end;
 end;
end;

procedure TfrmFabricaRacao.btnCancelaFichaClick(Sender: TObject);
begin
 layImprimiFicha.Visible := false;
end;

procedure TfrmFabricaRacao.btnCancelarClick(Sender: TObject);
begin
   MudarAba(tbiMnu,Sender);
end;

procedure TfrmFabricaRacao.btnConfirmaClick(Sender: TObject);
var
 vIdFabricacao,vCustoFab:String;
 I: Integer;
 vRealizado:Double;
begin
 if strToFloat(lblTotalRealizado.Text)=0 then
 begin
   MyShowMessage('Realizado deve ser maior que zero!!',false);
   Exit;
 end;

 vRealizado := strToFloat(lblTotalRealizado.Text);
 ServiceConf.TFabricacaoInsert.Close;
 ServiceConf.TFabricacaoInsert.Open;
 ServiceConf.TFabricacaoInsert.Insert;
 if cbxTipoBaixa.ItemIndex<>3 then
  ServiceConf.TFabricacaoInsertIDRACAO.AsString       := vIdRacao
 else
 begin
   ServiceConf.TFabricacaoInsertIDRACAO.AsString            := '0';
   ServiceConf.TFabricacaoInsertID_PREMISTURA.AsString      := vIdRacao;
 end;
 ServiceConf.TFabricacaoInsertDATA_FAB.AsDateTime     := dataFab.Date;
 ServiceConf.TFabricacaoInsertKG_PREVISTO.AsString    := edtKGTotal.Text;
 ServiceConf.TFabricacaoInsertKG_REALIZADO.AsFloat    := vRealizado;

 vCustoFab                                            := lblValorTotalFab.Text;

 ServiceConf.TFabricacaoInsertCUSTO_TOTAL.AsString    := vCustoFab;

 ServiceConf.TFabricacaoInsertHORA_INICIO.AsDateTime  := edtHoraIni.Time;
 ServiceConf.TFabricacaoInsertHORA_FIM.AsDateTime     := edtHoraFim.Time;
 ServiceConf.TFabricacaoInsertID_USUARIO.AsString     := serviceDB.vIdUserLogado;
 case cbxTipoBaixa.ItemIndex of
  0:ServiceConf.TFabricacaoInsertTIPO_BAIXA.AsInteger := 1;
  1:ServiceConf.TFabricacaoInsertTIPO_BAIXA.AsInteger := 2;
  2:ServiceConf.TFabricacaoInsertTIPO_BAIXA.AsInteger := 3;
  3:ServiceConf.TFabricacaoInsertTIPO_BAIXA.AsInteger := 4;
 end;
 ServiceConf.TFabricacaoInsertID_CENTROCUSTO.AsString := vIdCentroCusto;
 ServiceConf.TFabricacaoInsertID_OPERADOR.AsString    := vIdResponsavel;
 ServiceConf.TFabricacaoInsertID_PROPRIEDADE.AsString := serviceDB.vIdPropriedade;
 try
  ServiceConf.TFabricacaoInsert.ApplyUpdates(-1);
  vIdFabricacao := ServiceConf.RetormaMaxIdFabricao;
  if cbxTipoBaixa.ItemIndex=3 then
  begin
    MyShowMessage('Deseja Realizar entrada de estoque do produto acabado?',TRUE);
    case DLG.vBntConfirmaMsg of
    1:
    begin
        try
         serviceDB.InsereEntradaEstoque(
          vIdRacao,
          serviceDB.vIdUserLogado,
          FormatDateTime('mm/dd/yyyy',dataFab.Date),
          '0',
          FormatDateTime('mm/dd/yyyy',dataFab.Date),
          stringReplace(vCustoFab,',','.',[rfReplaceAll]),
          lblTotalRealizado.Text,
          stringReplace(vCustoFab,',','.',[rfReplaceAll]),
          lblTotalRealizado.Text,
          '0',
          '1',
          '0',
          '0',
         'P');
         MyShowMessage('Entrada de estoque realizada com sucesso!',false);
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
  for I := 0 to gridInsumos.RowCount-1 do
  begin
   ServiceConf.TDetFabricacaoInsert.Close;
   ServiceConf.TDetFabricacaoInsert.Open;
   ServiceConf.TDetFabricacaoInsert.Insert;
   ServiceConf.TDetFabricacaoInsertID_FABRICACAO.AsString  := vIdFabricacao;
   ServiceConf.TDetFabricacaoInsertID_ALIMENTO.AsString    := gridInsumos.Cells[3,I];
   ServiceConf.TDetFabricacaoInsertID_CONCENTRADO.AsString := gridInsumos.Cells[4,I];
   ServiceConf.TDetFabricacaoInsertDATA_FAB.AsDateTime     := dataFab.Date;
   ServiceConf.TDetFabricacaoInsertHORA_INI.AsDateTime     := edtHoraIni.Time;
   ServiceConf.TDetFabricacaoInsertHORA_FIM.AsDateTime     := edtHoraFim.Time;
   ServiceConf.TDetFabricacaoInsertMS_INSUMO.AsString      := gridInsumos.Cells[5,I];
   ServiceConf.TDetFabricacaoInsertKG_PREVISTO.AsString    := gridInsumos.Cells[1,I];
   ServiceConf.TDetFabricacaoInsertKG_FABRICADO.AsString   := gridInsumos.Cells[2,I];
   ServiceConf.TDetFabricacaoInsertVALOR_KG.AsFloat        := strToFloat(gridInsumos.Cells[6,I]);
   ServiceConf.TDetFabricacaoInsertID_USUARIO.AsString     := serviceDB.vIdUserLogado;
   try
     ServiceConf.TDetFabricacaoInsert.ApplyUpdates(-1);
   except
   on E: Exception do
    MyShowMessage('Erro ao inserir Det Fabricação : '+e.Message,false);
   end;
  end;
  MyShowMessage('Fabricação cadastrada com sucesso!',false);
  Filtro;
  edtRacaoADD.Text    :='';
  edtKGTotal.Text     :='';
  edtResponsavel.Text :='';
  Application.ProcessMessages;
  MudarAba(tbiMnu,sender);
 except
  on E: Exception do
    MyShowMessage('Erro ao inserir Fabricação : '+e.Message,false);
 end;
end;

procedure TfrmFabricaRacao.btnImprimiFichaClick(Sender: TObject);
begin
 dmRelConf.AbreFichaFabricacao(edtFabFicha.Text,
 edtPrevisaoFicha.Text,
 edtQtdBatida.Text,vidRacao);
 dmRelConf.ReportFichaFab.Print;
 layImprimiFicha.Visible := false;
end;

procedure TfrmFabricaRacao.btnVoltarClick(Sender: TObject);
begin
 layPopUpCad.Visible := false;
end;

procedure TfrmFabricaRacao.btnVoltarPadraoClick(Sender: TObject);
begin
  MudarAba(tbiMnu,sender);
end;

procedure TfrmFabricaRacao.CarregaCombo;
begin
 cbxCentroCusto.Items.Clear;
 cbxCentroCustoEdita.Items.Clear;
 cbxCentroCustoF.Items.Clear;
 cbxCentroCustoF.Items.Add('Todos');
 with qryAux,qryAux.SQL do
 begin
  Clear;
  Add('SELECT * FROM AUX_CENTRO_CUSTO');
  Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
  Open;
  while not qryAux.Eof do
  begin
    cbxCentroCusto.Items.AddObject(FieldByName('NOME').AsString,
     TObject(FieldByName('ID').AsInteger));
    cbxCentroCustoEdita.Items.AddObject(FieldByName('NOME').AsString,
     TObject(FieldByName('ID').AsInteger));
    cbxCentroCustoF.Items.Add(FieldByName('NOME').AsString);
    qryAux.Next;
  end;
  cbxCentroCusto.ItemIndex  :=-1;
  cbxCentroCustoF.ItemIndex :=0;
 end;
end;

procedure TfrmFabricaRacao.cbxCentroCustoChange(Sender: TObject);
begin
 if cbxCentroCusto.ItemIndex>-1 then
   vIdCentroCusto := IntToStr(Integer(cbxCentroCusto.Items.Objects[cbxCentroCusto.ItemIndex]));
end;

procedure TfrmFabricaRacao.cbxCentroCustoEditaChange(Sender: TObject);
begin
 if cbxCentroCustoEdita.ItemIndex>-1 then
   vIdCentroCusto := IntToStr(Integer(cbxCentroCustoEdita.Items.Objects[cbxCentroCustoEdita.ItemIndex]));
end;

procedure TfrmFabricaRacao.cbxCentroCustoFChange(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmFabricaRacao.cbxTipoBaixaChange(Sender: TObject);
begin
 if cbxTipoBaixa.ItemIndex=3 then
  lblSelectTipo.Text := 'Pre-Mistura'
 else
  lblSelectTipo.Text := 'Ração'
end;

procedure TfrmFabricaRacao.cbxTipoBaixaFChange(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmFabricaRacao.ClearEditButton1Click(Sender: TObject);
begin
 edtFiltroName.Text :='';
 Filtro;
end;

procedure TfrmFabricaRacao.ClearEditButton2Click(Sender: TObject);
begin
 edtPreMistura.Text :='';
 Filtro;
end;

procedure TfrmFabricaRacao.EditButton1Click(Sender: TObject);
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

procedure TfrmFabricaRacao.EditButton2Click(Sender: TObject);
begin
 frmCadRacao := TfrmCadRacao.Create(nil);
  try
    frmCadRacao.ShowModal;
  finally
    if frmCadRacao.vIdRacaoSelect.Length>0 then
    begin
     if ServiceConf.TRacaoSTATUS.AsInteger=2 then
     begin
       MyShowMessage('Ração Irregular Impossivel Incluir nesse Planejamento',false);
     end
     else
     begin
       edtRacaoFicha.text        := ServiceConf.TRacaoNOME.AsString;
       vIdRacao                  := ServiceConf.TRacaoID.AsString;
     end;
    end;
    frmCadRacao.Free;
  end;
end;

procedure TfrmFabricaRacao.EditButton3Click(Sender: TObject);
begin
  frmCadRacao := TfrmCadRacao.Create(nil);
  try
    frmCadRacao.ShowModal;
  finally
    vIdRacao                  := ServiceConf.TRacaoID.AsString;
    edtFiltroName.text        := ServiceConf.TRacaoNOME.AsString;
    frmCadRacao.Release;
    Filtro;
  end;
end;

procedure TfrmFabricaRacao.EditButton4Click(Sender: TObject);
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
    edtOperadorF.text         := serviceDB.TableUsersNAME.AsString;
    vIdResponsavel            := serviceDB.TableUsersID.AsString;
    frmCadUsers.Free;
    Filtro;
  end;
end;

procedure TfrmFabricaRacao.EditButton5Click(Sender: TObject);
begin
  frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(nil);
  try
    frmCadSuplementoMineral.ShowModal;
  finally
     edtPreMistura.text        := serviceDB.SuplementoMineralNOME.AsString;
     vIdPremistura             := serviceDB.SuplementoMineralID.AsString;
  end;
  frmCadSuplementoMineral.Free;
  Filtro;
end;

procedure TfrmFabricaRacao.edtFDataEntATEClosePicker(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmFabricaRacao.edtFDataEntDEClosePicker(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmFabricaRacao.edtKGTotalKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmFabricaRacao.edtOperadorFChange(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmFabricaRacao.edtPrevisaoFichaKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmFabricaRacao.Filtro;
var
 vFiltro,
 vDataIni,
 vDataFim:string;
begin
 vDataIni := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date);
 vDataFim := FormatDateTime('mm/dd/yyyy',edtFDataEntAte.Date);
 vFiltro  := ' AND f.DATA_FAB BETWEEN '+vDataIni.QuotedString+' AND '+vDataFim.QuotedString;

 if edtFiltroName.Text.Length>0 then
  vFiltro  := vFiltro+' AND R.ID= '+vIdRacao;

 if edtPreMistura.Text.Length>0 then
  vFiltro  := vFiltro+' AND S.NOME='+edtPreMistura.Text.QuotedString;

 if edtOperadorF.Text.Length>0 then
  vFiltro  := vFiltro+' AND U.NAME LIKE '+QuotedStr('%'+edtOperadorF.Text+'%');
 if cbxCentroCustoF.ItemIndex>0 then
  vFiltro  := vFiltro+' AND A.NOME LIKE '+QuotedStr('%'+cbxCentroCustoF.Selected.Text+'%');
 if cbxTipoBaixaF.ItemIndex>0 then
  vFiltro  := vFiltro+' AND F.TIPO_BAIXA='+intToStr(cbxTipoBaixaF.ItemIndex);
 ServiceConf.AbrirFabricacao(vFiltro);
end;

procedure TfrmFabricaRacao.FormCreate(Sender: TObject);
begin
 vAbriSistema       := 0;
// edtFDataEntDE.Date := date-7;
end;

procedure TfrmFabricaRacao.FormDestroy(Sender: TObject);
begin
 ShowMessage('Fechando Tela Fabricação');
end;

procedure TfrmFabricaRacao.FormShow(Sender: TObject);
begin
 layPopUpCad.Visible     := FALSE;
 vAbriSistema             :=1;
 layImprimiFicha.Visible  := false;
 serviceDB.TableAuxMotivoAplicacao.close;
 serviceDB.TableAuxMotivoAplicacao.Open;
 Filtro;
 CarregaCombo;
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiMnu;
 TreeItemNovo.Enabled    := serviceDB.vTipoUser='1';
 TreeItemExcluir.Enabled := serviceDB.vTipoUser='1';
 TreeItemEditar.Enabled  := serviceDB.vTipoUser='1';
end;

procedure TfrmFabricaRacao.GerarXLS(DSPadrao: TDataSet);
Var
  Lin, Col   : Integer;
  xExcel     : Variant;
  Conteudo : String;
begin

  Try
   if DSPadrao.RecordCount < 1 then
   begin
     ShowMessage('Nenhum registro a ser exportado');
     Exit;
   end;
   Try
     xExcel:= CreateoleObject('Excel.Application');
     xExcel.WorkBooks.add(1);
     xExcel.caption := 'Titulo da Planilha ';
     xExcel.visible := False;

     DSPadrao.DisableControls;
     DSPadrao.First;

     for Lin := 0 to DSPadrao.RecordCount - 1 do
     begin
       for Col := 1 to DSPadrao.FieldCount do
       begin
         Conteudo := DSPadrao.Fields[Col - 1].AsString;
         xExcel.cells[Lin + 2,Col]:= Conteudo;
       end;

      DSPadrao.Next;
      Application.ProcessMessages;
     end;
     for Col := 1 to DSPadrao.FieldCount do
     begin
       Conteudo := DSPadrao.Fields[Lin - 1].Name;
       xExcel.cells[1,Col] := Conteudo;
       xExcel.Range['A1','Z1'].font.bold := true; // Negrito
       xExcel.Range['A1','Z1'].Interior.Color := $00D6D6D6; // Cor da Célula
       xExcel.Range['A1','Z1'].RowHeight := 25; //Altura da Célula
     end;
     xExcel.visible := True;
     xExcel.columns.Autofit;  //Alinhar automaticamete o tamanho da coluna
   finally
     DSPadrao.EnableControls;
//     Enabled := True;
   end;
  Except
    on e : Exception do
        raise Exception.Create('Erro ao exportar planilha ' +#13+
                               '================'+#13+#13+
                               'Menssagem : ' + E.Message +#13+
                               'Classe : '    + E.ClassName);
  end;
end;

procedure TfrmFabricaRacao.gridInsumosEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
//   SomarColunasGrid;
end;

procedure TfrmFabricaRacao.imgCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmFabricaRacao.imgMenuClick(Sender: TObject);
begin
 if layMnu.Width = 210 then
 begin
   TreeItemNovo.Text    := '';
   TreeItemEditar.Text  := '';
   TreeItemExcluir.Text := '';
   layMnu.Width         := 60;
 end
 else
 begin
   TreeItemNovo.Text    := '           Novo';
   TreeItemEditar.Text  := '           Editar';
   TreeItemExcluir.Text := '           Excluir';
   layMnu.Width         := 210;
 end;
end;

procedure TfrmFabricaRacao.lblmnuClick(Sender: TObject);
begin
 if layMnu.Width = 210 then
 begin
   TreeItemNovo.Text    := '';
   TreeItemEditar.Text  := '';
   TreeItemExcluir.Text := '';
   layMnu.Width         := 60;
 end
 else
 begin
   TreeItemNovo.Text    := '           Novo';
   TreeItemEditar.Text  := '           Editar';
   TreeItemExcluir.Text := '           Excluir';
   layMnu.Width         := 210;
 end;
end;

procedure TfrmFabricaRacao.LimpaCampos;
begin
 cbxTipoBaixa.ItemIndex   :=-1;
 cbxCentroCusto.ItemIndex :=-1;
 edtRacaoADD.Text         :='';
 edtKGTotal.Text          :='';
 edtResponsavel.Text      :='';
end;

procedure TfrmFabricaRacao.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmFabricaRacao.MyShowMessage(msg: string; btnCancel: Boolean);
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    frmPrincipal.vConfirma := dlg.vBntConfirmaMsg;
  end);
end;

procedure TfrmFabricaRacao.Rectangle48Click(Sender: TObject);
var
 vIdFabricacao,vCustoFab:String;
 I: Integer;
 vRealizado:Double;
begin
 if cbxTipoBaixaEdita.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo de Baixa!',false);
   Exit;
 end;
 if cbxCentroCustoEdita.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o centro de Custo!',false);
   Exit;
 end;

 if dataFab.Date>date then
 begin
   MyShowMessage('Data não pode ser futura',false);
   Exit;
 end;
 ServiceConf.TFabricacao.Edit;
 ServiceConf.TFabricacaoDATA_FAB.AsDateTime     := edtDataBaixaEdita.Date;
 ServiceConf.TFabricacaoHORA_INICIO.AsDateTime  := edtHoraInicioEdita.Time;
 ServiceConf.TFabricacaoHORA_FIM.AsDateTime     := edtHoraFimEdita.Time;
 ServiceConf.TFabricacaoID_USUARIO_ALTERACAO.AsString     := serviceDB.vIdUserLogado;
 ServiceConf.TFabricacaoDATA_ALTERACAO.AsDateTime := now;
 case cbxTipoBaixaEdita.ItemIndex of
  0:ServiceConf.TFabricacaoTIPO_BAIXA.AsInteger := 1;
  1:ServiceConf.TFabricacaoTIPO_BAIXA.AsInteger := 2;
  2:ServiceConf.TFabricacaoTIPO_BAIXA.AsInteger := 3;
  3:ServiceConf.TFabricacaoTIPO_BAIXA.AsInteger := 4;
 end;
 ServiceConf.TFabricacaoID_CENTROCUSTO.AsString := vIdCentroCusto;
 try
  ServiceConf.TFabricacao.ApplyUpdates(-1);
  MyShowMessage('Fabricação Editada com sucesso!!',false);
  Filtro;
  layPopUpCad.Visible := false;
 except
  on E : Exception do
   begin
     MyShowMessage('Exception message = '+E.Message,false);
   end;
 end;
end;

procedure TfrmFabricaRacao.Rectangle4Click(Sender: TObject);
var
 I:integer;
begin
 if(edtKGTotal.Text.Length=0)
 or (edtKGTotal.Text='0') then
 begin
   MyShowMessage('Previsto deve ser maior que zero!',false);
   Exit;
 end;
 if edtResponsavel.Text.Length=0 then
 begin
   MyShowMessage('Informe o Operador!',false);
   Exit;
 end;
 if edtRacaoADD.Text.Length=0 then
 begin
   MyShowMessage('Informe a Ração!',false);
   Exit;
 end;
 if cbxTipoBaixa.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo de Baixa!',false);
   Exit;
 end;
 if cbxCentroCusto.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o centro de Custo!',false);
   Exit;
 end;
 if dataFab.Date>date then
 begin
   MyShowMessage('Data não pode ser futura',false);
   Exit;
 end;
 lblTotalPrevisto.Text   := edtKGTotal.Text;
 if cbxTipoBaixa.ItemIndex<>3 then
 begin
   with qryPrevistro,qryPrevistro.SQL do
   begin
     Clear;
     Add('SELECT');
     Add('b.id idAlimento,');
     Add('S.id idConsentrado,');
     Add(' COALESCE(b.NOME,s.NOME) alimento,');
     Add(' A.PERCENTMATERIASECA,');
     Add('COALESCE(case');
     Add('  when S.id=1 then s.valor_kg');
     Add('  else');
     Add('   B.CUSTO_MEDIO');
     Add(' end,0) VALORKG,');
     Add(edtKGTotal.Text+' *(CAST(a.INCLUSAOMATERIANATURAL AS DOUBLE PRECISION)/100) Previsto,');
     Add(edtKGTotal.Text+' *(CAST(a.INCLUSAOMATERIANATURAL AS DOUBLE PRECISION)/100) Realizado');
     Add('FROM RACAOINSUMOS a');
     Add('LEFT JOIN ALIMENTO b ON a.IDINSUMOALIMENTO=b.ID');
     Add('LEFT JOIN SUPLEMENTO_MINERAL s ON a.ID_PREMISTURA=s.ID');
     Add('WHERE a.STATUS=1 and IDRACAO='+vIdracao);
     qryAux.SQL.Text;
     Open;
     layInsumos.Visible     := true;
     layBtnControls.Enabled := true;
     SomarColunasGrid;
   end;
 end
 else
 begin
   with qryPrevistro,qryPrevistro.SQL do
   begin
     Clear;
     Add('SELECT');
     Add(' b.id idAlimento,');
     Add('0 idConsentrado,');
     Add('b.NOME alimento,');
     Add('B.CUSTO_MEDIO VALORKG,');
     Add(edtKGTotal.Text+' *(CAST(a.MN_INCLUSAO_PERCENT AS DOUBLE PRECISION)/100) Previsto,');
     Add(edtKGTotal.Text+' *(CAST(a.MN_INCLUSAO_PERCENT AS DOUBLE PRECISION)/100) Realizado');
     Add(',b.MS PERCENTMATERIASECA');
     Add('FROM MINERAL_FORMULACAO a');
     Add('LEFT JOIN ALIMENTO b ON a.ID_ALIMENTO=b.ID');
     Add('WHERE a.STATUS=1 and a.ID_MINERAL='+vIdracao);
     qryPrevistro.SQL.Text;
     Open;
     layInsumos.Visible     := true;
     layBtnControls.Enabled := true;
     SomarColunasGrid;
   end;
 end;
 I:=0;
 qryPrevistro.First;
 while not qryPrevistro.eof do
 begin
   gridInsumos.RowCount   := qryPrevistro.RecordCount;
   gridInsumos.Cells[0,I] := qryPrevistroALIMENTO.AsString;
   gridInsumos.Cells[1,I] := qryPrevistroPREVISTO.AsString;
   gridInsumos.Cells[2,I] := qryPrevistroREALIZADO.AsString;
   gridInsumos.Cells[3,I] := qryPrevistroIDALIMENTO.AsString;
   gridInsumos.Cells[4,I] := qryPrevistroIDCONSENTRADO.AsString;
   gridInsumos.Cells[5,I] := qryPrevistroPERCENTMATERIASECA.AsString;
   gridInsumos.Cells[6,I] := qryPrevistroVALORKG.AsString;
   inc(i);
   qryPrevistro.Next;
 end;
 SomarColunasGrid;
end;

procedure TfrmFabricaRacao.SomarColunasGrid;
var
  Sum,sum1 : Double;
  Val,val1 : Double;
  I   : Integer;
begin
  Sum := 0;
  I   := 0;
  for I := 0 to gridInsumos.RowCount do
  begin
   if TryStrToFloat(gridInsumos.Cells[2,I],Val) then
    Sum := Sum + Val;
  if TryStrToFloat(gridInsumos.Cells[6,I],Val1) then
   Sum1 := Sum1 + Val*Val1;
  end;
  if I>0 then
  begin
    lblTotalRealizado.Text    := FloatToStr(Sum);
    lblValorTotalFab.Text     := FloatToStr(Sum1);
  end
  else
  begin
    lblTotalRealizado.Text    := '0.00';
    lblValorTotalFab.Text     := '0.00';
  end;
end;

procedure TfrmFabricaRacao.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
// if ServiceConf.TFabricacaoID.AsString.Length>0 then
//  ServiceConf.AbrirFabricacaoInsumos(ServiceConf.TFabricacaoID.AsString)
// else
//  ServiceConf.AbrirFabricacaoInsumos('0')
end;

procedure TfrmFabricaRacao.StringGrid1SelChanged(Sender: TObject);
begin
// if vAbriSistema=1 then
// begin
//  if ServiceConf.TFabricacaoID.AsString.Length>0 then
//   ServiceConf.AbrirFabricacaoInsumos(ServiceConf.TFabricacaoID.AsString)
//  else
//   ServiceConf.AbrirFabricacaoInsumos('0');
// end;
end;

procedure TfrmFabricaRacao.TreeItemEditarClick(Sender: TObject);
begin
  if ServiceConf.TFabricacaoID.AsString.Length>0 then
  begin
    ServiceConf.TFabricacao.Edit;
    edtDataBaixaEdita.Date        := ServiceConf.TFabricacaoDATA_FAB.AsDateTime;
    cbxTipoBaixaEdita.ItemIndex   := cbxTipoBaixaEdita.items.IndexOf(ServiceConf.TFabricacaoTIPO_BAIXA_STR.AsString);
    cbxCentroCustoEdita.ItemIndex := cbxCentroCustoEdita.items.IndexOf(ServiceConf.TFabricacaoCENTROCUSTO.AsString);
    edtHoraInicioEdita.Time       := ServiceConf.TFabricacaoHORA_INICIO.AsDateTime;
    edtHoraFimEdita.Time          := ServiceConf.TFabricacaoHORA_FIM.AsDateTime;
    layPopUpCad.Visible           := TRUE;
  end;
end;

procedure TfrmFabricaRacao.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('DesejaPr Realmente Excluir essa Fabricação??',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceConf.TFabricacao.Edit;
       ServiceConf.TFabricacaoSTATUS.AsInteger               :=-1;
       ServiceConf.TFabricacaoID_USUARIO_ALTERACAO.AsString  :=serviceDB.vIdUserLogado;
       ServiceConf.TFabricacaoDATA_ALTERACAO.AsDateTime      :=now;
       ServiceConf.TFabricacao.ApplyUpdates(-1);
       MyShowMessage('Registro excluido com Sucesso!',false);
       Filtro;
       if ServiceConf.TFabricacaoID.AsString.Length>0 then
        ServiceConf.AbrirFabricacaoInsumos(ServiceConf.TFabricacaoID.AsString)
       else
        ServiceConf.AbrirFabricacaoInsumos('0')
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

procedure TfrmFabricaRacao.TreeItemNovoClick(Sender: TObject);
begin
 LimpaCampos;
 CarregaCombo;
 ServiceConf.TFabricacao.Close;
 ServiceConf.TFabricacao.Open;
 ServiceConf.TFabricacao.Insert;
 edtKGTotal.Text            := '';
 layInsumos.Visible         := false;
 layBtnControls.Enabled     := false;

 MudarAba(tbiCad,Sender);
end;

procedure TfrmFabricaRacao.TreeViewItem1Click(Sender: TObject);
begin
  layImprimiFicha.Visible  := true;
end;

procedure TfrmFabricaRacao.TreeViewItem2Click(Sender: TObject);
var
 vFiltro,
 vDataIni,
 vDataFim:string;
begin
 vDataIni := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date);
 vDataFim := FormatDateTime('mm/dd/yyyy',edtFDataEntAte.Date);
 vFiltro  := ' AND f.DATA_FAB BETWEEN '+vDataIni.QuotedString+' AND '+vDataFim.QuotedString;
 if edtFiltroName.Text.Length>0 then
  vFiltro  := vFiltro+' AND R.NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
 if edtOperadorF.Text.Length>0 then
  vFiltro  := vFiltro+' AND U.NAME LIKE '+QuotedStr('%'+edtOperadorF.Text+'%');
 if cbxCentroCustoF.ItemIndex>0 then
  vFiltro  := vFiltro+' AND A.NOME LIKE '+QuotedStr('%'+cbxCentroCustoF.Selected.Text+'%');
 if cbxTipoBaixaF.ItemIndex>0 then
  vFiltro  := vFiltro+' AND F.TIPO_BAIXA '+intToStr(cbxTipoBaixaF.ItemIndex);
 ServiceConf.ExportacaoFabricacao(vFiltro);
 if not ServiceConf.ExportaFabricacao.IsEmpty then
 begin
  if SaveDialog1.Execute then
   frmPrincipal.ExpTXT(ServiceConf.ExportaFabricacao,SaveDialog1.FileName);
   MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
 end
 else
  MyShowMessage('Sem dados para exportar!',false);
end;

procedure TfrmFabricaRacao.TreeViewItem3Click(Sender: TObject);
begin
 dmRelConf.GeraRelBaixaInsumo(
   edtFDataEntDE.Text,
   edtFDataEntAte.Text,
   intToSTR(cbxTipoBaixaF.ItemIndex),
   cbxCentroCustoF.Selected.Text.QuotedString,
   edtFiltroName.Text.QuotedString,
   edtOperadorF.Text.QuotedString);
end;

end.
