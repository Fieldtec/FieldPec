unit UCadGTA;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.DateTimeCtrls,
  FMX.ListBox,Data.Db,FireDAC.Comp.Client, FMX.EditBox, FMX.SpinBox, FMX.Effects,Winapi.Windows,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FMX.Menus,
  FMX.TMSLiveGridDataBinding, FMX.TMSBaseControl, FMX.TMSGridCell,
  FMX.TMSGridOptions, FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSLiveGrid,
  FMX.GridExcelIO;

type
  TfrmCadGTA = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNumero: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    edtSerie: TEdit;
    cbxUF: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    edtEmissao: TDateEdit;
    Label8: TLabel;
    edtValidade: TDateEdit;
    Layout1: TLayout;
    Layout3: TLayout;
    Label9: TLabel;
    Layout4: TLayout;
    edtProdutorOrigem: TEdit;
    btnBuscarOrigem: TEditButton;
    Label10: TLabel;
    Layout36: TLayout;
    Layout37: TLayout;
    Label24: TLabel;
    Label25: TLabel;
    Layout38: TLayout;
    edtProdutorDestino: TEdit;
    Layout39: TLayout;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    cbxTipoGTAF: TComboBox;
    Label36: TLabel;
    Label37: TLabel;
    cbxTipoGTA: TComboBox;
    LinkFillControlToField2: TLinkFillControlToField;
    btnBuscaDestino: TEditButton;
    Layout5: TLayout;
    GroupBox3: TGroupBox;
    Rectangle3: TRectangle;
    Label27: TLabel;
    Layout40: TLayout;
    Layout42: TLayout;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtZeroDozeMacho: TEdit;
    MAIS36Macho: TEdit;
    VinteECincoA36Macho: TEdit;
    TrezeA24Macho: TEdit;
    Rectangle2: TRectangle;
    Label26: TLabel;
    Layout41: TLayout;
    Layout43: TLayout;
    Layout44: TLayout;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    TrezeA24Femea: TEdit;
    VinteECincoA36Femea: TEdit;
    MAIS36Femea: TEdit;
    edtZeroDozeFemea: TEdit;
    Rectangle9: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    edtPropriedadeOrigem: TEdit;
    edtPropriedadeDestino: TEdit;
    Label12: TLabel;
    cbxRastreados: TComboBox;
    Layout9: TLayout;
    Rectangle4: TRectangle;
    Layout10: TLayout;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Layout11: TLayout;
    edtValorFrete: TEdit;
    edtValorComissaoCab: TEdit;
    edtPesoBalancaoOri: TEdit;
    edtPesoBalancaoDestino: TEdit;
    edtComprador: TEdit;
    Label16: TLabel;
    Label11: TLabel;
    edtValorCabeca: TEdit;
    edtBuscarComprador: TEditButton;
    tbiMovAnimais: TTabItem;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    Image3: TImage;
    Label17: TLabel;
    Layout12: TLayout;
    Layout13: TLayout;
    Rectangle7: TRectangle;
    layImgAguarde: TLayout;
    Layout17: TLayout;
    Layout64: TLayout;
    laybtns: TLayout;
    SpeedButton2: TSpeedButton;
    Image17: TImage;
    Layout18: TLayout;
    Rectangle8: TRectangle;
    Layout14: TLayout;
    Layout15: TLayout;
    Label20: TLabel;
    edtAniGTA: TEdit;
    Layout16: TLayout;
    Label21: TLabel;
    edtAniVinculado: TEdit;
    Layout19: TLayout;
    Label19: TLabel;
    gridAnimaisSelecionados: TStringGrid;
    Layout20: TLayout;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    Grid1: TGrid;
    Layout21: TLayout;
    qryAniGTA: TFDQuery;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    qryAniGTAID: TIntegerField;
    qryAniGTAID_LOCAL: TIntegerField;
    qryAniGTAID_CATEGORIA: TIntegerField;
    qryAniGTAID_RACA: TIntegerField;
    qryAniGTAIDENTIFICACAO_1: TStringField;
    qryAniGTAIDENTIFICACAO_2: TStringField;
    qryAniGTADATA_PROC: TSQLTimeStampField;
    qryAniGTAGTA_ID: TIntegerField;
    qryAniGTAIDADE_MESES: TIntegerField;
    qryAniGTAPESO_ENTRADA: TFMTBCDField;
    qryAniGTAULTIMO_PESO: TFMTBCDField;
    qryAniGTADATA_ULTIMO_PESO: TDateField;
    qryAniGTASTATUS: TIntegerField;
    qryAniGTADATAREG: TSQLTimeStampField;
    qryAniGTAID_USUARIO: TIntegerField;
    qryAniGTADATA_SAIDA: TDateField;
    qryAniGTAPESO_SAIDA: TFMTBCDField;
    qryAniGTAID_PROPRIEDADE: TIntegerField;
    qryAniGTAID_PRODUTOR: TIntegerField;
    qryAniGTAULTIMA_ALTERACAO: TSQLTimeStampField;
    qryAniGTAULTIMO_USUARIO: TIntegerField;
    qryAniGTAID_LOTESAIDA: TIntegerField;
    qryAniGTAID_VEICULO_SAIDA: TIntegerField;
    qryAniGTAORIGEM_DADOS: TStringField;
    qryAniGTATIPO_SAIDA: TStringField;
    qryAniGTAID_MOTIVO_MORTE: TIntegerField;
    qryAniGTAID_LOTE: TIntegerField;
    qryAniGTAVALOR_COMPRA: TFMTBCDField;
    qryAniGTAVALOR_VENDA: TFMTBCDField;
    qryAniGTAID_PRODUTOR_ORIGEM: TIntegerField;
    qryAniGTAFLAG_SYNC: TIntegerField;
    qryAniGTADATA_SYNC: TSQLTimeStampField;
    qryAniGTADATA_LIBERACAO: TDateField;
    qryAniGTAID_ULTIMO_USUARIO_ALTERACAO: TIntegerField;
    qryAniGTADATA_ULTIMA_ALTERACAO: TSQLTimeStampField;
    qryAniGTAID_CONTRATO_COMPRA: TIntegerField;
    qryAniGTAID_PRODUTOR_DESTINO_SAIDA: TIntegerField;
    qryAniGTAIDADE_MORTE: TIntegerField;
    qryAniGTAID_GTA_SAIDA: TIntegerField;
    qryAniGTAOBSERVACAO: TStringField;
    qryAniGTATIPO_ENTRADA: TIntegerField;
    qryAniGTAPESO_ESTIMADO: TFMTBCDField;
    qryAniGTADATA_PESO_ESTIMADO: TDateField;
    qryAniGTAVALOR_CUSTO_ALIMENTAR: TFMTBCDField;
    qryAniGTAVALOR_CUSTO_FIXO_ACU: TFMTBCDField;
    qryAniGTAID_CATEGORIA_ATUAL: TIntegerField;
    qryAniGTACONSUMO_ACU: TFMTBCDField;
    qryAniGTAID_COMUNICADO_REIDENT: TIntegerField;
    qryAniGTAID_COMUNICADO_MORTE: TIntegerField;
    qryAniGTAOBS_MORTE: TStringField;
    qryAniGTATIPO_MORTE: TIntegerField;
    qryAniGTADATA_REPROCESSAMENTO: TSQLTimeStampField;
    qryAniGTAID_COM_NASCIMENTO: TIntegerField;
    qryAniGTAIDENTIFICACAO_MAE: TStringField;
    qryAniGTACARIMBO_NASCIMENTO: TStringField;
    qryAniGTAOUTRO_ERAS: TIntegerField;
    qryAniGTAIMS_PV: TBCDField;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    lblTotalSelecionado: TLabel;
    Layout23: TLayout;
    btnConfirmaMov: TRectangle;
    Layout24: TLayout;
    Image4: TImage;
    Label23: TLabel;
    Rectangle11: TRectangle;
    Layout25: TLayout;
    Image6: TImage;
    Label38: TLabel;
    MenuItem2: TMenuItem;
    SpeedButton4: TSpeedButton;
    Image7: TImage;
    SpeedButton5: TSpeedButton;
    Image8: TImage;
    StringColumn3: TStringColumn;
    Label39: TLabel;
    edtProdutorOf: TEdit;
    edtPropriedadeOF: TEdit;
    Label40: TLabel;
    qryAniGTADATA_NASCIMENTO: TDateField;
    lblIgnoraEstoque: TLabel;
    Layout26: TLayout;
    cbxIgnoraEstoqueChip: TComboBox;
    btnCbxIgnora: TButton;
    TMSFMXLiveGridBindSourceDB1: TTMSFMXLiveGrid;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    TreeExportaExcel: TTreeViewItem;
    Image11: TImage;
    TMSFMXGridExcelIO1: TTMSFMXGridExcelIO;
    SaveDialog1: TSaveDialog;
    Label41: TLabel;
    cbxStatus: TComboBox;
    LayAnimaisGTA: TLayout;
    GroupBox2: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label22: TLabel;
    edtFDataEntDE: TDateEdit;
    Label42: TLabel;
    chkPeriodoProc: TCheckBox;
    Label43: TLabel;
    edtFNumGTA: TEdit;
    Label68: TLabel;
    edtNumContrato: TEdit;
    chkAnimalSemGTA: TCheckBox;
    btnLocalizarAnimais: TRectangle;
    Layout22: TLayout;
    Image23: TImage;
    Label47: TLabel;
    TreeMovGTA: TTreeViewItem;
    Image9: TImage;
    edtGTADestino: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnBuscarOrigemClick(Sender: TObject);
    procedure TreeExcluiPropriedadeClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure gridPropriedadeCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeExcluiProdutorClick(Sender: TObject);
    procedure cbxProdOrigemClick(Sender: TObject);
    procedure Mais36MachoChangeTracking(Sender: TObject);
    procedure edtZeroDozeFemeaChangeTracking(Sender: TObject);
    procedure Mais36FemeaChangeTracking(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure Mais36MachoChange(Sender: TObject);
    procedure Mais36FemeaChange(Sender: TObject);
    procedure edtZeroDozeFemeaChange(Sender: TObject);
    procedure Edit1ChangeTracking(Sender: TObject);
    procedure SpinBox5ChangeTracking(Sender: TObject);
    procedure cbxTipoGTAFChange(Sender: TObject);
    procedure cbxTipoGTAChange(Sender: TObject);
    procedure edtProdutorOrigemClick(Sender: TObject);
    procedure btnBuscaDestinoClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure imgCloseClick(Sender: TObject);
    procedure edtValorCabecaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtValorCabecaExit(Sender: TObject);
    procedure MAIS36MachoExit(Sender: TObject);
    procedure edtBuscarCompradorClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnConfirmaMovClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnCbxIgnoraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TMSFMXLiveGridBindSourceDB1CellDblClick(Sender: TObject; ACol,
      ARow: Integer);
    procedure TreeExportaExcelClick(Sender: TObject);
    procedure btnLocalizarAnimaisClick(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
    procedure TreeMovGTAClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
  private
    vIdGTADestino :string;
    function PesquisaIDGrid(id: string): integer;
  public
    procedure CarregaProdutorOrigem(IdPropriedade:String);
    procedure CarregaProdutorDestino(IdPropriedade:String);
    procedure TotalMachoFemea;
    procedure LimpaEdit;
    procedure MyShowMessage(msg:string;btnCancel:Boolean);
    procedure AbreAnimaisGTA(idGTA:string);
    procedure AtualizaDadosGTADestino(idGTA:string);
    procedure AbreAnimaisMovGTA(vFiltro:string;SemGTA:Integer);
    procedure DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
    procedure Filtro;
    var
     FActiveForm : TForm;
     vIdPropriedaeOrigem,vIdVeiculoSaida,vIdComprador,vIdPropriedaeDestino,vIdProdutorOrigem,vIdProdutorDestino,vTipoGTA,vOriDest  :string;
     v0A12M,v0A12F,v13A24M,v13A24F,v25A36M,v25A36F,vMais36F,vMais36M:Single;
     vMovGTa,vState:integer;
     vIdGtaSelecionada:string;
  end;

var
  frmCadGTA: TfrmCadGTA;

implementation

{$R *.fmx}

uses UServiceDB, UPropriedadeParceira, UPrincipal, UMsgDlg, UCompradorGado;


procedure TfrmCadGTA.btnCancelarClick(Sender: TObject);
begin
  edtGTADestino.Text       :='';
  lblTotalSelecionado.Text :='0';
  edtAniGTA.Text           :='0';
  edtAniVinculado.Text     :='0';
  MudarAba(tbiMnu,sender);
end;

procedure TfrmCadGTA.btnCbxIgnoraClick(Sender: TObject);
begin
 if serviceDB.vTipoUser='1' then
   cbxIgnoraEstoqueChip.Enabled := true
 else
 begin
   cbxIgnoraEstoqueChip.Enabled := false;
   MyShowMessage('Usuario sem permissão',false);
 end;
end;

procedure TfrmCadGTA.btnConfirmaClick(Sender: TObject);
var
 vPos :integer;
 VALOR_FRETE_CAB,VALOR_COMISSAO_CAB,PESO_B_ORIGEM,PESO_B_DESTINO,ID_COMPRADOR:STRING;
begin
    EditTab.SetFocus;
    if(edtNumero.Text.Length=0) then
    begin
      MyShowMessage('Infome o Numero (*)',false);
      edtNumero.SetFocus;
      Exit;
    end;
    if(edtSerie.Text.Length=0) then
    begin
     MyShowMessage('Infome a Serie (*)',false);
     edtSerie.SetFocus;
     Exit;
    end;
    if(cbxUF.ItemIndex=-1)then
    begin
     MyShowMessage('Infome a UF (*)',false);
     cbxUF.SetFocus;
     Exit;
    end;
    if(edtEmissao.Text.Length=0)then
    begin
     MyShowMessage('Infome a Emissao (*)',false);
     edtEmissao.SetFocus;
     Exit;
    end;
    if(edtValidade.Text.Length=0)then
    begin
     MyShowMessage('Infome a Validade (*)',false);
     edtValidade.SetFocus;
     Exit;
    end;
    if(vIdPropriedaeOrigem.Length=0) then
    begin
     MyShowMessage('Infome o Propriedade de Origem (*)',false);
     Exit;
    end;
    if(edtProdutorOrigem.Text.Length=0) then
    begin
      MyShowMessage('Infome o Produtor de Origem (*)',false);
      Exit;
    end;
    if(edtProdutorDestino.Text.Length=0)then
    begin
      MyShowMessage('Infome o Produtor de Destino (*)',false);
      edtProdutorDestino.SetFocus;
      Exit;
    end;
    if(edtPropriedadeDestino.Text.Length=0)then
    begin
      MyShowMessage('Infome a Propriedade de Destino (*)',false);
      edtPropriedadeDestino.SetFocus;
      Exit;
    end;
    if(edtZeroDozeFemea.Text.Length=0)then
    begin
      MyShowMessage('Informe a quantidade de 0 a 12 femea',false);
      edtZeroDozeFemea.SetFocus;
      Exit;
    end;

    if(edtZeroDozeMacho.Text.Length=0)then
    begin
      MyShowMessage('Informe a quantidade de 0 a 12 MACHO',false);
      edtZeroDozeMacho.SetFocus;
      Exit;
    end;

    if(TrezeA24Femea.Text.Length=0)then
    begin
      MyShowMessage('Informe a quantidade de 13 a 24 FEMEA',false);
      TrezeA24Femea.SetFocus;
      Exit;
    end;

    if(TrezeA24Macho.Text.Length=0)then
    begin
      MyShowMessage('Informe a quantidade de 13 a 24 MACHO',false);
      TrezeA24Macho.SetFocus;
      Exit;
    end;

    if(VinteECincoA36Femea.Text.Length=0)then
    begin
      MyShowMessage('Informe a quantidade de 25 a 36 FEMEA',false);
      VinteECincoA36Femea.SetFocus;
      Exit;
    end;

    if(VinteECincoA36Macho.Text.Length=0)then
    begin
     MyShowMessage('Informe a quantidade de 25 a 36 MACHO',false);
     VinteECincoA36Macho.SetFocus;
     Exit;
    end;

    if(MAIS36Macho.Text.Length=0)then
    begin
     MyShowMessage('Informe a quantidade de MAIS DE 36 MACHO',false);
     MAIS36Macho.SetFocus;
     Exit;
    end;

    if(Mais36Femea.Text.Length=0)then
    begin
     MyShowMessage('Informe a quantidade de MAIS DE 36 FEMEA',false);
     Mais36Femea.SetFocus;
     Exit;
    end;

    if cbxTipoGTA.ItemIndex=-1 then
    begin
      MyShowMessage('Informe o tipo(E= Entrada| S= SAÍDA)',false);
      Exit;
    end;

//    if(edtValorCabeca.Text.Length=0) then
//    begin
//     MyShowMessage('Infome o Valor por Cabeça',false);
//     edtValorCabeca.SetFocus;
//     Exit;
//    end;

    if(cbxRastreados.ItemIndex=-1) then
    begin
     MyShowMessage('Infome se os Animais ja são restreados na Origem!',false);
     cbxRastreados.SetFocus;
     Exit;
    end;

//    if edtValorFrete.Text.Length=0 then
//     VALOR_FRETE_CAB    :='0'
//    else
//     VALOR_FRETE_CAB    := StringReplace(edtValorFrete.Text,',','.',[rfReplaceAll]);
//
//    if edtValorComissaoCab.Text.Length=0 then
//     VALOR_COMISSAO_CAB :='0'
//    else
//     VALOR_COMISSAO_CAB := StringReplace(edtValorComissaoCab.Text,',','.',[rfReplaceAll]);

    if edtPesoBalancaoOri.Text.Length=0 then
     PESO_B_ORIGEM    :='0'
    else
     PESO_B_ORIGEM    := StringReplace(edtPesoBalancaoOri.Text,',','.',[rfReplaceAll]);

    if edtPesoBalancaoDestino.Text.Length=0 then
     PESO_B_DESTINO    :='0'
    else
     PESO_B_DESTINO    := StringReplace(edtPesoBalancaoDestino.Text,',','.',[rfReplaceAll]);

    if edtComprador.Text.Length=0 then
     vIdComprador       :='0';

    if vState =1 then
    begin
     if not serviceDB.VerificaGTAExiste(edtNumero.Text, edtSerie.Text, cbxTipoGTA.Selected.Text)then
     begin
       MyShowMessage('Gta ja cadastrada!!',false);
       Exit;
     end;

     if not serviceDB.VerificaGTAMesmoNumero(edtNumero.Text)then
     begin
       MessageDlg('Já existe uma GTA cadastrada com esse número, deseja casdatrar assim mesmo?', System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbNo
      ], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
      case AResult of
      mrYES:
      begin
      end;
      mrNo:
       begin
         Exit;
       end;
      end;
      end);
     end;
    end;
   try
     if vState =1 then
     begin
      serviceDB.InsereGta(
      edtNumero.Text.QuotedString,
      edtSerie.Text.QuotedString,
      cbxUF.Selected.Text.QuotedString,
      FormatDateTime('mm/dd/yyyy',edtEmissao.Date).QuotedString,
      FormatDateTime('mm/dd/yyyy',edtValidade.Date).QuotedString,
      edtZeroDozeFemea.Text,
      edtZeroDozeMacho.Text,
      TrezeA24Femea.Text,
      TrezeA24Macho.Text,
      VinteECincoA36Femea.Text,
      VinteECincoA36Macho.Text,
      Mais36Femea.Text,
      Mais36Macho.Text,
      serviceDB.vIdUserLogado,
      QuotedStr(cbxTipoGTA.Selected.Text),
       vIdPropriedaeOrigem,
       vIdProdutorOrigem,
       vIdPropriedaeDestino,
       vIdProdutorDestino,
       '0',
       intToStr(cbxRastreados.ItemIndex),
       '0',
       '0',
       PESO_B_ORIGEM,
       PESO_B_DESTINO,
       vIdComprador,
       '0',
       cbxIgnoraEstoqueChip.ItemIndex.ToString);
       serviceDB.TableGTA.Active := false;
       serviceDB.TableGTA.Active := true;
       MudarAba(tbiMnu,sender);
     end;
     if vState=2 then
     begin
      serviceDB.UpdateGta(
        serviceDB.TableGTAID.AsString,
        edtNumero.Text.QuotedString,
        edtSerie.Text.QuotedString,
        cbxUF.Selected.Text.QuotedString,
        FormatDateTime('mm/dd/yyyy',edtEmissao.Date).QuotedString,
        FormatDateTime('mm/dd/yyyy',edtValidade.Date).QuotedString,
        edtZeroDozeFemea.Text,
        edtZeroDozeMacho.Text,
        TrezeA24Femea.Text,
        TrezeA24Macho.Text,
        VinteECincoA36Femea.Text,
        VinteECincoA36Macho.Text,
        Mais36Femea.Text,
        Mais36Macho.Text,
        serviceDB.vIdUserLogado,
        QuotedStr('E'),
        vIdPropriedaeOrigem,
        vIdProdutorOrigem,
        vIdPropriedaeDestino,
        vIdProdutorDestino,
        '0',
        intToStr(cbxRastreados.ItemIndex),
        '0',
        '0',
        PESO_B_ORIGEM,
        PESO_B_DESTINO,
        vIdComprador,
        vIdVeiculoSaida,
        cbxIgnoraEstoqueChip.ItemIndex.ToString);
        serviceDB.TableGTA.Active := false;
        serviceDB.TableGTA.Active := true;
        if frmPrincipal.vMov>0 then
        begin
         serviceDB.TableGTA.Filtered := false;
         serviceDB.TableGTA.Filter   := 'LOTADA=0';
         serviceDB.TableGTA.Filtered := true;
        end;
      MudarAba(tbiMnu,sender);
     end;
    except
     on e : Exception do
      ShowMessage('Erro ao Inserir GTA: '+e.Message)
    end;
end;

procedure TfrmCadGTA.btnConfirmaMovClick(Sender: TObject);
var
 x:integer;
begin
 if edtGTADestino.Text.Length<0 then
 begin
   MyShowMessage('Selecione a GTA destino!',false);
   Exit;
 end
 else
  vIdGTADestino := edtGTADestino.TagString;

 if lblTotalSelecionado.Text='0' then
 begin
   MyShowMessage('Selecione os animais a serem movimentados!',false);
   Exit;
 end;
 if StrToInt(lblTotalSelecionado.Text)>
  (StrToInt(edtAniGTA.Text)-StrToInt(edtAniVinculado.Text)) then
 begin
   MyShowMessage('Quantidade de animais selecionados maior que saldo da GTA Destino!',false);
   Exit;
 end;
 try
   for X := 0 to gridAnimaisSelecionados.RowCount-1 do
   begin
     try
      serviceDB.MovimentaAnimalGTA(gridAnimaisSelecionados.Cells[0,x],vIdGTADestino,vTipoGTA);
     except
      on E : Exception do
       MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
     end;
   end;
   serviceDB.AtualizaGTAProc(vIdGTADestino);
   serviceDB.AtualizaGTAProc(vIdGtaSelecionada);
   serviceDB.AbreQryGTA(frmPrincipal.vIDPropriedadePropria);
   edtGTADestino.Text       :='';
   lblTotalSelecionado.Text :='0';
   edtAniGTA.Text           :='0';
   edtAniVinculado.Text     :='0';
   MyShowMessage('Animais movimentados com sucesso!',false);
   MudarAba(tbiMnu,sender);
 except
  on E : Exception do
   MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
 end;
end;

procedure TfrmCadGTA.btnLocalizarAnimaisClick(Sender: TObject);
var
 vFiltro:string;
 SemGTA:Integer;
 vDataDe,vDataATE,vIdGTA,vIdContrato:String;
begin
 vDataDe  := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString;
 vDataATE := FormatDateTime('mm/dd/yyyy',edtFDataEntAte.Date).QuotedString;

 if chkPeriodoProc.IsChecked then
   vFiltro := vFiltro +' AND CAST(COALESCE(DATA_PROC,DATAREG) AS date) BETWEEN '+vDataDe +' AND '+vDataATE;

 if chkAnimalSemGTA.IsChecked then
 begin
   SemGTA :=1;
   edtFNumGTA.Text :='';
 end
 ELSE
  SemGTA :=0;

 if edtFNumGTA.Text.Length>0 then
 begin
  vIdGTA  := serviceDB.RetornaIdGTA(edtFNumGTA.Text);
  if vIdGTA='' then
  begin
    MyShowMessage('Numero de GTA não encontrado!',false);
    Exit;
  end;
   vFiltro := vFiltro +' AND GTA_ID ='+vIdGTA
 end;

 if edtNumContrato.Text.Length>0 then
 begin
  vIdContrato  := serviceDB.RetornaIdContrato(edtNumContrato.Text);
  if vIdContrato='' then
  begin
    MyShowMessage('Numero de Contrato não encontrado!',false);
    Exit;
  end;                                                
  vFiltro := vFiltro +' AND ID_CONTRATO ='+vIdContrato
 end;                                
 frmCadGTA.AbreAnimaisMovGTA(vFiltro,SemGTA);
end;


procedure TfrmCadGTA.CarregaProdutorDestino(IdPropriedade: String);
begin
end;

procedure TfrmCadGTA.CarregaProdutorOrigem(IdPropriedade: String);
var
 vQryAux :TFDQuery;
begin
// vQryAux := TFDQuery.Create(nil);
// vQryAux.Connection := serviceDB.fCon;
// cbxProdOrigem.Items.Clear;
// with vQryAux,vQryAux.SQL do
// begin
//   Clear;
//   Add('select * from produtores_origem');
//   Add('where status=1 and id_propriedade='+IdPropriedade);
//   Open;
//   while not vQryAux.Eof do
//   begin
//     cbxProdOrigem.Items.Add(FieldByName('ID').AsString+'-'+FieldByName('NOME').AsString);
//     vQryAux.Next;
//   end;
//   cbxProdOrigem.ItemIndex :=-1;
// end;
// vQryAux.Free;
end;

procedure TfrmCadGTA.cbxProdOrigemClick(Sender: TObject);
begin
 if edtPropriedadeOrigem.Text.Length =0 then
 begin
   ShowMessage('Selecione a propriedade!');
   edtPropriedadeOrigem.SetFocus;
 end;
end;

procedure TfrmCadGTA.cbxTipoGTAChange(Sender: TObject);
begin
 if cbxTipoGTA.ItemIndex=1 then
 begin
   edtPropriedadeOrigem.Text      := serviceDB.vNomePropriedade;
   vIdPropriedaeOrigem            := serviceDB.vIdPropriedade;
   edtPropriedadeDestino.Text     := '';
   vIdPropriedaeDestino           := '';
   edtProdutorOrigem.Text         := '';
   edtProdutorDestino.Text        := '';
   cbxRastreados.ItemIndex        := 0;
   cbxRastreados.Enabled          := false;
   edtPropriedadeOrigem.Enabled   := false;
   edtPropriedadeDestino.Enabled  := false;
 end;
 if cbxTipoGTA.ItemIndex=0 then
 begin
   cbxRastreados.Enabled          := true;
   edtPropriedadeDestino.Text     := serviceDB.vNomePropriedade;
   vIdPropriedaeDestino           := serviceDB.vIdPropriedade;
   edtPropriedadeDestino.Enabled  := false;
   edtPropriedadeOrigem.Enabled   := false;

   edtProdutorOrigem.Text         := '';
   edtProdutorDestino.Text        := '';
   edtPropriedadeOrigem.Text      := '';
   vIdPropriedaeOrigem            := '';
 end;
 edtSerie.Text                    := '';
end;

procedure TfrmCadGTA.cbxTipoGTAFChange(Sender: TObject);
begin
 if cbxTipoGTAF.ItemIndex>0 then

end;

procedure TfrmCadGTA.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
 edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

procedure TfrmCadGTA.Edit1ChangeTracking(Sender: TObject);
begin
 TotalMachoFemea;
end;

procedure TfrmCadGTA.edtValorCabecaExit(Sender: TObject);
begin
 DelayedSetFocus(edtProdutorOrigem);
end;

procedure TfrmCadGTA.edtValorCabecaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadGTA.AbreAnimaisGTA(idGTA: string);
begin
 with qryAniGTA,qryAniGTA.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL');
   Add('WHERE STATUS<>-1 AND GTA_ID=:GTA_ID');
   ParamByName('GTA_ID').AsString := idGTA;
   Open;
 end;
end;

procedure TfrmCadGTA.AbreAnimaisMovGTA(vFiltro: string; SemGTA: Integer);
begin
 with qryAniGTA,qryAniGTA.SQL do
 begin
   Clear;
   Add('SELECT * FROM ANIMAL');
   Add('WHERE STATUS<>-1');
   if SemGTA=1 then
    Add('AND (GTA_ID IS NULL OR GTA_ID=0) ');
   Add(vFiltro);
   Open;
 end;
end;

procedure TfrmCadGTA.AtualizaDadosGTADestino(idGTA: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from gta');
   Add('where id='+idGTA);
   Open;
   edtAniGTA.Text       := FieldByName('TOTAL_GTA').AsString;
   edtAniVinculado.Text := FieldByName('TOTAL_BRINCADOS').AsString;
 end;
 vQryAux.Free;
end;

procedure TfrmCadGTA.btnBuscaDestinoClick(Sender: TObject);
begin
 if cbxTipoGTA.ItemIndex =-1 then
  begin
    ShowMessage('Informe o tipo de GTA(Entrada,Saida)');
    Exit;
  end;
  vOriDest := 'O';
  serviceDB.TablePropriedades.Close;
  serviceDB.TablePropriedades.Open;
  if vIdPropriedaeDestino.Length>0 then
  begin
    serviceDB.TablePropriedades.Filtered := false;
    serviceDB.TablePropriedades.Filter   := 'id='+vIdPropriedaeDestino;
    serviceDB.TablePropriedades.Filtered := true;
  end
  else
  begin
    serviceDB.TablePropriedades.Filtered := false;
    serviceDB.TablePropriedades.Filter   := 'id<>'+vIdPropriedaeOrigem;
    serviceDB.TablePropriedades.Filtered := true;
   end;
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

procedure TfrmCadGTA.btnBuscarOrigemClick(Sender: TObject);
begin
  if cbxTipoGTA.ItemIndex =-1 then
  begin
    ShowMessage('Informe o tipo de GTA(Entrada,Saida)');
    Exit;
  end;
  vOriDest := 'O';

   serviceDB.TablePropriedades.Close;
   serviceDB.TablePropriedades.Open;
   if vIdPropriedaeOrigem.Length>0 then
   begin
    serviceDB.TablePropriedades.Filtered := false;
    serviceDB.TablePropriedades.Filter   := 'id='+vIdPropriedaeOrigem;
    serviceDB.TablePropriedades.Filtered := true;
   end
   else
   begin
    serviceDB.TablePropriedades.Filtered := false;
    serviceDB.TablePropriedades.Filter   := 'id<>'+vIdPropriedaeDestino;
    serviceDB.TablePropriedades.Filtered := true;
   end;
   serviceDB.TableProdutores.Open;

  frmCadPropriedades := TfrmCadPropriedades.Create(nil);
  try
    frmPrincipal.vCadGTA :=true;
    frmCadPropriedades.ShowModal;
  finally
    edtPropriedadeOrigem.text    := serviceDB.TablePropriedadesNOME.AsString;
    vIdPropriedaeOrigem          := serviceDB.TablePropriedadesID.AsString;
    vIdProdutorOrigem            := serviceDB.TableProdutoresID.AsString;
    edtProdutorOrigem.Text       := serviceDB.TableProdutoresNOME.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmCadGTA.edtBuscarCompradorClick(Sender: TObject);
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

procedure TfrmCadGTA.edtFiltroNameChangeTracking(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadGTA.edtProdutorOrigemClick(Sender: TObject);
begin
  if cbxTipoGTA.ItemIndex =-1 then
  begin
    ShowMessage('Informe o tipo de GTA(Entrada,Saida)');
    Exit;
  end;
end;

procedure TfrmCadGTA.edtZeroDozeFemeaChange(Sender: TObject);
begin
 TotalMachoFemea;
end;

procedure TfrmCadGTA.edtZeroDozeFemeaChangeTracking(Sender: TObject);
begin
 TotalMachoFemea;
end;

procedure TfrmCadGTA.Filtro;
var
 vFiltro :string;
begin
 vFiltro :='1=1 ';
 if edtFiltroName.Text.Length>0 then
  vFiltro := vFiltro+'AND NUMERO LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');

 if cbxTipoGTAF.ItemIndex>0 then
 begin
   if cbxTipoGTAF.ItemIndex=1 then
     vFiltro := vFiltro+'AND TIPO ='+QuotedStr('E');
   if cbxTipoGTAF.ItemIndex=2 then
     vFiltro := vFiltro+'AND TIPO ='+QuotedStr('S')
 end;
 if edtProdutorOf.Text.Length>0 then
  vFiltro := vFiltro+'AND NOME_2 LIKE '+QuotedStr('%'+edtProdutorOf.Text+'%');
 if edtPropriedadeOF.Text.Length>0 then
  vFiltro := vFiltro+'AND NOME LIKE '+QuotedStr('%'+edtPropriedadeOF.Text+'%');

 if cbxStatus.ItemIndex>0 then
 begin
  if cbxStatus.ItemIndex=1 then
   vFiltro := vFiltro+'AND LOTADA=0';
  if cbxStatus.ItemIndex=2 then
   vFiltro := vFiltro+'AND LOTADA=1';
 end;

 if vFiltro.Length>0 then
 begin
   serviceDB.TableGTA.Filtered := false;
   serviceDB.TableGTA.Filter   := vFiltro;
   serviceDB.TableGTA.Filtered := true;
 end
 else
 begin
   serviceDB.TableGTA.Filtered := false;
   serviceDB.TableGTA.Close;
   serviceDB.TableGTA.Open;
 end;
end;

procedure TfrmCadGTA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  serviceDB.vCadGTA :=0;
  tbPrincipal.ActiveTab := tbiMnu;
end;

procedure TfrmCadGTA.FormCreate(Sender: TObject);
begin
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiMnu;
end;

procedure TfrmCadGTA.FormShow(Sender: TObject);
begin
 if(frmPrincipal.vMov=0)and(serviceDB.vGeraAnexoSaida=0) then
  serviceDB.AbreQryGTA(frmPrincipal.vIDPropriedadePropria);
  vIdGtaSelecionada :='';
end;

procedure TfrmCadGTA.Mais36FemeaChange(Sender: TObject);
begin
  TotalMachoFemea;
end;

procedure TfrmCadGTA.Mais36FemeaChangeTracking(Sender: TObject);
begin
 TotalMachoFemea;
end;

procedure TfrmCadGTA.Mais36MachoChange(Sender: TObject);
begin
  TotalMachoFemea;

end;

procedure TfrmCadGTA.Mais36MachoChangeTracking(Sender: TObject);
begin
 TotalMachoFemea;
end;

procedure TfrmCadGTA.MAIS36MachoExit(Sender: TObject);
begin
 DelayedSetFocus(edtZeroDozeFemea);
end;

procedure TfrmCadGTA.MenuItem2Click(Sender: TObject);
begin
 try
  serviceDB.AtualizaGTAProc(serviceDB.TableGTAID.AsString);
  MyShowMessage('GTA Atualizada com sucesso!',false);
  Filtro;
 except
 on E : Exception do
   begin
     ShowMessage('Exception message = '+E.Message);
   end;
 end;
end;

procedure TfrmCadGTA.MyShowMessage(msg: string;btnCancel:Boolean);
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

procedure TfrmCadGTA.SearchEditButton1Click(Sender: TObject);
begin
 vMovGTa :=1;
 MudarAba(tbiMnu,sender);
end;

procedure TfrmCadGTA.SpeedButton2Click(Sender: TObject);
var
 dlg :TFrmmsgDlg;
begin
  if Grid1.RowCount=0 then
   Exit;
  if PesquisaIDGrid(qryAniGTAID.AsString)>0 then
  begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Animal ja selecionado!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
     end);
     Exit;
  end
  else
  begin
    gridAnimaisSelecionados.RowCount                                        :=gridAnimaisSelecionados.RowCount+1;
    gridAnimaisSelecionados.Cells[0,gridAnimaisSelecionados.RowCount-1]     := qryAniGTAID.AsString;
    gridAnimaisSelecionados.Cells[1,gridAnimaisSelecionados.RowCount-1]     := qryAniGTAIDENTIFICACAO_2.AsString;
    gridAnimaisSelecionados.Cells[2,gridAnimaisSelecionados.RowCount-1]     := qryAniGTAIDENTIFICACAO_1.AsString;
    lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
    Grid1.SelectRow(Grid1.Row+1);
  end;
end;

procedure TfrmCadGTA.SpeedButton3Click(Sender: TObject);
begin
 if gridAnimaisSelecionados.Row>-1 then
  DeleteRow(gridAnimaisSelecionados.Row, gridAnimaisSelecionados);
 lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
end;

procedure TfrmCadGTA.SpeedButton4Click(Sender: TObject);
var
 i:integer;
begin
 if Grid1.RowCount=0 then
   Exit;
 for I := 0 to  Grid1.RowCount-1 do
 begin
  if PesquisaIDGrid(qryAniGTAID.AsString)>0 then
  begin
     dlg := TFrmmsgDlg.Create(nil);
     dlg.Position := TFormPosition.ScreenCenter;
     dlg.msg.Text := 'Animal ja selecionado!';
     dlg.btnCancel.Visible := false;
     dlg.ShowModal(
     procedure(ModalResult: TModalResult)
     begin
     end);
     Exit;
  end
  else
  begin
    gridAnimaisSelecionados.RowCount                                        :=gridAnimaisSelecionados.RowCount+1;
    gridAnimaisSelecionados.Cells[0,gridAnimaisSelecionados.RowCount-1]     := qryAniGTAID.AsString;
    gridAnimaisSelecionados.Cells[1,gridAnimaisSelecionados.RowCount-1]     := qryAniGTAIDENTIFICACAO_2.AsString;
    gridAnimaisSelecionados.Cells[2,gridAnimaisSelecionados.RowCount-1]     := qryAniGTAIDENTIFICACAO_1.AsString;
    lblTotalSelecionado.Text := IntToStr(gridAnimaisSelecionados.RowCount);
    Grid1.SelectRow(Grid1.Row+1);
  end;
 end;
end;

function TfrmCadGTA.PesquisaIDGrid(id: string): integer;
var
 i,vResult:integer;
begin
  vResult :=0;
  for I := 0 to gridAnimaisSelecionados.RowCount-1 do
  begin
     if gridAnimaisSelecionados.Cells[0,I]=id then
     begin
        vResult:=1;
     end;
  end;
  Result := vResult;
end;

procedure TfrmCadGTA.DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
var
  i, j: Integer;
begin
  with AGrid do
  begin
    if (ARowIndex = RowCount) then
      RowCount := RowCount - 1
    else
    begin
      for i := ARowIndex to RowCount -1 do
        for j := 0 to ColumnCount-1 do
          Cells[j, i] := Cells[j, i + 1];

      RowCount := RowCount - 1;
    end;
  end;
end;

procedure TfrmCadGTA.SpinBox5ChangeTracking(Sender: TObject);
begin
 TotalMachoFemea;
end;

procedure TfrmCadGTA.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 vIdGtaSelecionada:= serviceDB.TableGTAID.AsString;
 Close;
end;

procedure TfrmCadGTA.gridPropriedadeCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
   edtPropriedadeOrigem.text := serviceDB.TablePropriedadesNOME.AsString;
   vIdPropriedaeOrigem       := serviceDB.TablePropriedadesID.AsString;
   CarregaProdutorOrigem(vIdPropriedaeOrigem);
   tbPrincipal.ActiveTab     := tbiCad;
end;

procedure TfrmCadGTA.imgCloseClick(Sender: TObject);
begin
 if frmPrincipal.vMov=1 then
  Close
 else
  inherited;
end;

procedure TfrmCadGTA.LimpaEdit;
begin
  edtZeroDozeMacho.text :='0';
  edtZeroDozefemea.text :='0';
  TrezeA24Macho.text :='0';
  TrezeA24Femea.text :='0';
  VinteECincoA36Macho.text :='0';
  VinteECincoA36Femea.text :='0';
  Mais36Macho.text :='0';
  Mais36Femea.text :='0';
  edtNumero.Text :='';
  edtSerie.Text  :='';
  cbxUF.ItemIndex :=-1;
  edtPropriedadeOrigem.Text:='';
  edtPropriedadeDestino.Text      :='';
  edtProdutorOrigem.Text   :='';
  cbxTipoGTA.ItemIndex     :=-1;
  edtValorCabeca.Text     :='';
  serviceDB.qryConfigPadrao.Close;
  serviceDB.qryConfigPadrao.Open;
  if serviceDB.qryConfigPadraoESTOQUE_CHIP.AsString='1' then
  begin
    btnCbxIgnora.Visible           := true;
    cbxIgnoraEstoqueChip.Visible   := true;
    lblIgnoraEstoque.Visible       := true;
    cbxIgnoraEstoqueChip.ItemIndex := 0;
  end
  else
  begin
    btnCbxIgnora.Visible          := false;
    cbxIgnoraEstoqueChip.Visible  := false;
    lblIgnoraEstoque.Visible      := false;
  end;
end;

procedure TfrmCadGTA.TMSFMXLiveGridBindSourceDB1CellDblClick(Sender: TObject;
  ACol, ARow: Integer);
begin
 if vMovGTa=1 then
 begin
   edtGTADestino.Text      := serviceDB.TableGTANUMERO.AsString;
   edtGTADestino.TagString := serviceDB.TableGTAID.AsString;
   AtualizaDadosGTADestino(serviceDB.TableGTAID.AsString);
   MudarAba(tbiMovAnimais,sender);
 end
 else
 begin
  Close;
 end;
end;

procedure TfrmCadGTA.TotalMachoFemea;
begin
end;

procedure TfrmCadGTA.TreeExcluiProdutorClick(Sender: TObject);
begin
   MessageDlg('Deseja Realmente deletar essa Propriedade?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
  procedure(const AResult: System.UITypes.TModalResult)
  begin
  case AResult of
  mrYES:
  begin
      try
       serviceDB.TableProdutores.Edit;
       serviceDB.TableProdutoresSTATUS.AsInteger :=0;
       serviceDB.TableProdutores.ApplyUpdates(-1);
       serviceDB.TableProdutores.Close;
       serviceDB.TableProdutores.Open;
       ShowMessage('Dados deletados com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  mrNo:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
  end);
end;

procedure TfrmCadGTA.TreeExcluiPropriedadeClick(Sender: TObject);
begin
  MessageDlg('Deseja Realmente deletar essa Propriedade?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
  procedure(const AResult: System.UITypes.TModalResult)
  begin
  case AResult of
  mrYES:
  begin
      try
       serviceDB.qryPropriedadeOrigem.Edit;
       serviceDB.qryPropriedadeOrigemSTATUS.AsInteger :=0;
       serviceDB.qryPropriedadeOrigem.ApplyUpdates(-1);
       serviceDB.qryPropriedadeOrigem.Close;
       serviceDB.qryPropriedadeOrigem.Open;
       ShowMessage('Dados deletados com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  mrNo:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
  end);
end;

procedure TfrmCadGTA.TreeExportaExcelClick(Sender: TObject);
var
 Path :string;
begin
 TMSFMXGridExcelIO1.Options.ExportCellProperties := true;
 TMSFMXGridExcelIO1.Options.ExportOverwrite := omAlways;
 TMSFMXGridExcelIO1.Options.ExportImages := true;
 if SaveDialog1.Execute then
 begin
  Path := SaveDialog1.FileName;
  TMSFMXGridExcelIO1.XLSExport(Path);
  MyShowMessage('Arquivo gerado com sucesso!',false);
 end;
end;

procedure TfrmCadGTA.TreeItemEditarClick(Sender: TObject);
var
 vIdexComboProdutor,i:integer;
begin
  serviceDB.qryConfigPadrao.Close;
  serviceDB.qryConfigPadrao.Open;
  if serviceDB.qryConfigPadraoESTOQUE_CHIP.AsString='1' then
  begin
    btnCbxIgnora.Visible          := true;
    cbxIgnoraEstoqueChip.Visible  := true;
    lblIgnoraEstoque.Visible      := true;
  end
  else
  begin
    btnCbxIgnora.Visible          := false;
    cbxIgnoraEstoqueChip.Visible  := false;
    lblIgnoraEstoque.Visible      := false;
  end;
  cbxIgnoraEstoqueChip.Enabled := false;

  serviceDB.vCadGTA :=1;
  serviceDB.TableGTA.Edit;
  vState :=2;
  try
   edtPropriedadeOrigem.Text      := serviceDB.TableGTANOME.AsString;
   edtPropriedadeDestino.Text     := serviceDB.TableGTANOME_1.AsString;
   edtProdutorOrigem.Text         := serviceDB.TableGTANOME_2.AsString;
   edtProdutorDestino.Text        := serviceDB.TableGTANOME_3.AsString;
   edtNumero.Text                 := serviceDB.TableGtaNUMERO.AsString;
   edtSerie.Text                  := serviceDB.TableGtaSERIE.AsString;
   cbxUF.ItemIndex                := cbxUF.Items.IndexOf(serviceDB.TableGtaUF.AsString);
   edtEmissao.Date                := serviceDB.TableGtaDATA_EMISSAO.AsDateTime;
   edtValidade.Date               := serviceDB.TableGtaDATA_VALIDADE.AsDateTime;
   vIdPropriedaeOrigem            := serviceDB.TableGtaID_PROPRIEDADE_ORIGEM.AsString;
   vIdProdutorOrigem              := serviceDB.TableGtaID_PRODUTOR_ORIGEM.AsString;
   vIdProdutorDestino             := serviceDB.TableGtaID_PRODUTOR_DESTINO.AsString;
   vIdPropriedaeDestino           := serviceDB.TableGTAID_PROPRIEDADE_DESTINO.AsString;
   vIdComprador                   := serviceDB.TableGTAID_COMPRADOR.AsString;
   edtZeroDozeFemea.text          := serviceDB.TableGtaZERO_A_12_FEMEA.AsString;
   edtZeroDozeMacho.text          := serviceDB.TableGtaZERO_A_12_MACHO.AsString;
   TrezeA24Femea.text             := serviceDB.TableGTATREZE_A_24_FEMEA.AsString;
   TrezeA24Macho.text             := serviceDB.TableGTATREZE_A_24_MACHO.AsString;
   VinteECincoA36Femea.text       := serviceDB.TableGTAVITE_CINCO_A_36_FEMEA.AsString;
   VinteECincoA36Macho.text       := serviceDB.TableGTAVITE_CINCO_A_36_MACHO.AsString;
   Mais36Femea.text               := serviceDB.TableGTAMAIS_36_FEMEA.AsString;
   Mais36Macho.text               := serviceDB.TableGTAMAIS_36_MACHO.AsString;
   cbxRastreados.ItemIndex        := serviceDB.TableGTARASTREADO.AsInteger;
   edtValorCabeca.Text            := serviceDB.TableGTAVALOR_CAB.AsString;
   edtValorFrete.Text             := serviceDB.TableGTAVALOR_FRETE_CAB.AsString;
   edtValorComissaoCab.Text       := serviceDB.TableGTAVALOR_COMISSAO_CAB.AsString;
   edtPesoBalancaoOri.Text        := serviceDB.TableGTAPESO_B_ORIGEM.AsString;
   edtPesoBalancaoDestino.Text    := serviceDB.TableGTAPESO_B_DESTINO.AsString;
   edtComprador.Text              := serviceDB.TableGTANOME_4.AsString;
   vIdVeiculoSaida                := serviceDB.TableGTAID_VEICULO_SAIDA.AsString;
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Currais: '+e.Message)
  end;
end;

procedure TfrmCadGTA.TreeItemExcluirClick(Sender: TObject);
begin
 if(serviceDB.VerificaGTAUsada(serviceDB.TableGTAID.AsString)>0) then
 begin
   MyShowMessage('GTA usada impossivel deletar',false);
   Exit;
 end;

 MessageDlg('Deseja Realmente deletar essa GTA?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
  procedure(const AResult: System.UITypes.TModalResult)
  begin
  case AResult of
  mrYES:
  begin
      try
       serviceDB.TableGTA.Edit;
       serviceDB.TableGTASTATUS.AsInteger :=0;
       serviceDB.TableGTA.ApplyUpdates(-1);
       serviceDB.TableGTA.Close;
       serviceDB.TableGTA.Open;
       ShowMessage('Registro deletado com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  mrNo:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
  end);
end;

procedure TfrmCadGTA.TreeItemNovoClick(Sender: TObject);
begin
 LimpaEdit;
 edtEmissao.Date   :=date;
 edtValidade.Date  :=date+2;
 serviceDB.vCadGTA :=1;
 vState :=1;
 serviceDB.TableGTA.Close;
 serviceDB.TableGTA.Open;
 serviceDB.TableGTA.Insert;
 try
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Currais: '+e.Message)
  end;
end;

procedure TfrmCadGTA.TreeMovGTAClick(Sender: TObject);
begin
 gridAnimaisSelecionados.RowCount :=0;
 vTipoGTA   := serviceDB.TableGTATIPO.AsString;
 vIdGtaSelecionada := serviceDB.TableGTAid.AsString;
 MudarAba(tbiMovAnimais,sender);
end;

end.
