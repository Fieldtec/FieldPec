unit UFabricacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.DateTimeCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.EditBox, FMX.SpinBox;

type
  TfrmFabricacao = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Label3: TLabel;
    StringGrid2: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Label4: TLabel;
    Layout67: TLayout;
    Rectangle32: TRectangle;
    PTIMA: TLayout;
    Layout68: TLayout;
    Layout69: TLayout;
    lbltipo: TLabel;
    cbxTipoBaixa: TComboBox;
    Label5: TLabel;
    cbxCentroCusto: TComboBox;
    Label6: TLabel;
    dataFab: TDateEdit;
    Label7: TLabel;
    edtHoraIni: TTimeEdit;
    Label8: TLabel;
    edtHoraFim: TTimeEdit;
    Layout3: TLayout;
    Rectangle3: TRectangle;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Label9: TLabel;
    lblSelectTipo: TLabel;
    edtRacaoADD: TEdit;
    btnBuscaAlim: TEditButton;
    edtKGTotal: TEdit;
    Rectangle4: TRectangle;
    Layout7: TLayout;
    Image3: TImage;
    Label10: TLabel;
    layInsumos: TLayout;
    gridInsumos: TStringGrid;
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
    qryAux: TFDQuery;
    qryPrevistro: TFDQuery;
    Layout8: TLayout;
    Label17: TLabel;
    lblTotalPrevisto: TLabel;
    Label18: TLabel;
    lblTotalRealizado: TLabel;
    qryPrevistroALIMENTO: TStringField;
    qryPrevistroPREVISTO: TFloatField;
    edtResponsavel: TEdit;
    EditButton1: TEditButton;
    Label19: TLabel;
    qryPrevistroIDALIMENTO: TIntegerField;
    qryPrevistroIDCONSENTRADO: TIntegerField;
    qryPrevistroPERCENTMATERIASECA: TFMTBCDField;
    qryPrevistroVALORKG: TFMTBCDField;
    TreeViewItem1: TTreeViewItem;
    Image4: TImage;
    layImprimiFicha: TLayout;
    Rectangle6: TRectangle;
    Layout15: TLayout;
    C: TRectangle;
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
    Layout24: TLayout;
    Edit1: TEdit;
    edtPrevisaoFicha: TEdit;
    Rectangle7: TRectangle;
    Layout16: TLayout;
    Label28: TLabel;
    Label29: TLabel;
    Layout17: TLayout;
    edtRacaoFicha: TEdit;
    EditButton2: TEditButton;
    Edit2: TEdit;
    Label20: TLabel;
    edtQtdBatida: TSpinBox;
    Rectangle5: TRectangle;
    Layout9: TLayout;
    Label21: TLabel;
    Label22: TLabel;
    Layout10: TLayout;
    Edit4: TEdit;
    edtFabFicha: TDateEdit;
    Label11: TLabel;
    lblValorTotalFab: TLabel;
    qryPrevistroREALIZADO: TFloatField;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    StringColumn4: TStringColumn;
    StringColumn5: TStringColumn;
    StringColumn6: TStringColumn;
    StringColumn7: TStringColumn;
    procedure btnBuscaAlimClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure edtFDataEntDEChange(Sender: TObject);
    procedure edtFDataEntATEChange(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure cbxCentroCustoFChange(Sender: TObject);
    procedure cbxTipoBaixaFChange(Sender: TObject);
    procedure edtOperadorFChange(Sender: TObject);
    procedure edtKGTotalKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure gridInsumosEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure Rectangle4Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure cbxCentroCustoChange(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure edtHoraFimExit(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnCancelaFichaClick(Sender: TObject);
    procedure btnImprimiFichaClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure cbxTipoBaixaChange(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    vIdRacao,vIdCentroCusto,vIdResponsavel:string;
    procedure Filtro;
    procedure CarregaCombo;
    procedure SomarColunasGrid;
    procedure LimpaCampos;
  end;

var
  frmFabricacao: TfrmFabricacao;

implementation

{$R *.fmx}

uses USeviceConfinamento, UServiceDB, UCadRacao, UCadUsers, UdmReportConf,
  USuplementoMineral;

procedure TfrmFabricacao.btnBuscaAlimClick(Sender: TObject);
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

procedure TfrmFabricacao.btnCancelaFichaClick(Sender: TObject);
begin
 layImprimiFicha.Visible := false;
end;

procedure TfrmFabricacao.btnConfirmaClick(Sender: TObject);
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
  MudarAba(tbiMnu,sender);
 except
  on E: Exception do
    MyShowMessage('Erro ao inserir Fabricação : '+e.Message,false);
 end;
 inherited;
end;

procedure TfrmFabricacao.btnImprimiFichaClick(Sender: TObject);
begin
 if(edtPrevisaoFicha.Text.Length=0)
 or (edtPrevisaoFicha.Text='0') then
 begin
   MyShowMessage('Previsto deve ser maior que zero!',false);
   Exit;
 end;
 if edtRacaoFicha.Text.Length=0 then
 begin
   MyShowMessage('Informe a Ração!',false);
   Exit;
 end;
 dmRelConf.AbreFichaFabricacao(edtFabFicha.Text, edtPrevisaoFicha.Text,edtQtdBatida.Text,
  vidRacao);
 layImprimiFicha.Visible := false;
end;

procedure TfrmFabricacao.CarregaCombo;
begin
 cbxCentroCusto.Items.Clear;
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
    cbxCentroCustoF.Items.Add(FieldByName('NOME').AsString);
    qryAux.Next;
  end;
  cbxCentroCusto.ItemIndex  :=-1;
  cbxCentroCustoF.ItemIndex :=0;
 end;
end;

procedure TfrmFabricacao.cbxCentroCustoChange(Sender: TObject);
begin
 if cbxCentroCusto.ItemIndex>-1 then
   vIdCentroCusto := IntToStr(Integer(cbxCentroCusto.Items.Objects[cbxCentroCusto.ItemIndex]));
end;

procedure TfrmFabricacao.cbxCentroCustoFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmFabricacao.cbxTipoBaixaChange(Sender: TObject);
begin
 if cbxTipoBaixa.ItemIndex=3 then
  lblSelectTipo.Text := 'Pre-Mistura'
 else
  lblSelectTipo.Text := 'Ração'
end;

procedure TfrmFabricacao.cbxTipoBaixaFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmFabricacao.EditButton1Click(Sender: TObject);
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

procedure TfrmFabricacao.EditButton2Click(Sender: TObject);
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

procedure TfrmFabricacao.edtFDataEntATEChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmFabricacao.edtFDataEntDEChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmFabricacao.edtFiltroNameChangeTracking(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmFabricacao.edtHoraFimExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(procedure
 begin
  TThread.Synchronize(nil, procedure
  begin
    edtRacaoADD.SetFocus;
  end);
 end).Start;
end;

procedure TfrmFabricacao.edtKGTotalKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmFabricacao.edtOperadorFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmFabricacao.Filtro;
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
 ServiceConf.AbrirFabricacao(vFiltro);
end;

procedure TfrmFabricacao.FormCreate(Sender: TObject);
begin
  CarregaCombo;
  layImprimiFicha.Visible  := false;
  layInsumos.Visible       := false;
  edtFDataEntDE.Date       := date-7;
  edtFDataEntATE.Date      := date;
  Filtro;
  inherited;
end;

procedure TfrmFabricacao.gridInsumosEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
var
 vIndex :integer;
begin

  SomarColunasGrid;
//  TThread.CreateAnonymousThread(procedure
//  begin
//   TThread.Synchronize(nil, procedure
//   begin
//    if gridInsumos.Selected<gridInsumos.RowCount then
//    begin
//     vIndex := gridInsumos.Selected+1;
//     gridInsumos.Selected    := vIndex;
//     gridInsumos.ColumnIndex := 2;
//     gridInsumos.SetFocus;
//    end;
//   end);
//  end).Start;
end;

procedure TfrmFabricacao.imgCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFabricacao.LimpaCampos;
begin
 cbxTipoBaixa.ItemIndex   :=-1;
 cbxCentroCusto.ItemIndex :=-1;
 edtRacaoADD.Text         :='';
 edtKGTotal.Text          :='';
 edtResponsavel.Text      :='';
end;

procedure TfrmFabricacao.Rectangle4Click(Sender: TObject);
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
 if cbxTipoBaixa.ItemIndex=-1 then
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
     Add('case');
     Add('  when S.id=1 then s.valor_kg');
     Add('  else');
     Add('   B.CUSTO_MEDIO');
     Add(' end VALORKG,');
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
     Add(edtKGTotal.Text+' *(CAST(a.INCLUSAOMATERIANATURAL AS DOUBLE PRECISION)/100) Realizado');
     Add('b.MS PERCENTMATERIASECA');
     Add('FROM MINERAL_FORMULACAO a');
     Add('LEFT JOIN ALIMENTO b ON a.ID_ALIMENTO=b.ID');
     Add('WHERE a.STATUS=1 and a.ID_MINERAL='+vIdracao);
     qryAux.SQL.Text;
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
end;

procedure TfrmFabricacao.SomarColunasGrid;
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

procedure TfrmFabricacao.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
 if ServiceConf.TFabricacaoID.AsString.Length>0 then
  ServiceConf.AbrirFabricacaoInsumos(ServiceConf.TFabricacaoID.AsString)
 else
  ServiceConf.AbrirFabricacaoInsumos('0')
end;

procedure TfrmFabricacao.StringGrid1SelChanged(Sender: TObject);
begin
 if ServiceConf.TFabricacaoID.AsString.Length>0 then
  ServiceConf.AbrirFabricacaoInsumos(ServiceConf.TFabricacaoID.AsString)
 else
  ServiceConf.AbrirFabricacaoInsumos('0')
end;

procedure TfrmFabricacao.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir essa Fabricação??',TRUE);
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

procedure TfrmFabricacao.TreeItemNovoClick(Sender: TObject);
begin
  LimpaCampos;
  ServiceConf.TFabricacao.Close;
  ServiceConf.TFabricacao.Open;
  ServiceConf.TFabricacao.Insert;
  edtKGTotal.Text            := '';
  layInsumos.Visible         := false;
  layBtnControls.Enabled     := false;
  inherited;
end;

procedure TfrmFabricacao.TreeViewItem1Click(Sender: TObject);
begin
  layImprimiFicha.Visible  := true;
end;

end.
