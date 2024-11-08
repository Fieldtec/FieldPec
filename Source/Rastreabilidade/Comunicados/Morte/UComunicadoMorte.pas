unit UComunicadoMorte;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.Effects, FMX.ListBox,System.DateUtils,
  FMX.DateTimeCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.Components, Data.Bind.DBScope, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Grid, ppParameter, ppDesignLayer, ppCtrls, ppVar,
  ppBands, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe;

type
  TfrmComunicadoMorte = class(TfrmCadPadrao)
    LayoutGridDet: TLayout;
    GridDet: TStringGrid;
    Layout1: TLayout;
    Label3: TLabel;
    TreeView1: TTreeView;
    TreeViewItem1: TTreeViewItem;
    Image6: TImage;
    ShadowEffect2: TShadowEffect;
    Layout3: TLayout;
    Layout4Morte: TLayout;
    Edit1: TEdit;
    laydados: TLayout;
    Layout11Morte: TLayout;
    Rectangle3Morte: TRectangle;
    Layout12Morte: TLayout;
    Layout13Morte: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    edtIdadeMeses: TEdit;
    edtRaca: TEdit;
    edtCategoria: TEdit;
    edtDias: TEdit;
    Á: TShadowEffect;
    layDadosAnimal: TLayout;
    Rectangle12Morte: TRectangle;
    Layout25Morte: TLayout;
    Layout45Morte: TLayout;
    Label27: TLabel;
    Label29: TLabel;
    Label33: TLabel;
    edtUltimoProc: TEdit;
    edtUltimoPeso: TEdit;
    edtLocalAtual: TEdit;
    LayDadosMorte: TLayout;
    Layout7Morte: TLayout;
    Layout8Morte: TLayout;
    Label7: TLabel;
    lblDatMorte: TLabel;
    edtCausaMorte: TEdit;
    EditButton1: TEditButton;
    edtDataMorte: TDateEdit;
    Rectangle1Morte: TRectangle;
    Layout5: TLayout;
    Rectangle2Morte: TRectangle;
    Layout6Morte: TLayout;
    Layout9Morte: TLayout;
    Label4Morte: TLabel;
    Label5Morte: TLabel;
    edtChip: TEdit;
    edtIdentificacao: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layNovoComunicado: TLayout;
    Rectangle4Morte: TRectangle;
    Layout14Morte: TLayout;
    Layout15Morte: TLayout;
    Label9: TLabel;
    Layout16Morte: TLayout;
    Layout17Morte: TLayout;
    Label8: TLabel;
    edtDataComMorte: TDateEdit;
    Label13: TLabel;
    cbxProdutorDestino: TComboBox;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    TreeViewItem2: TTreeViewItem;
    Image9: TImage;
    TreeViewItemPrint: TTreeViewItem;
    TreeViewItem3: TTreeViewItem;
    Image10: TImage;
    Label14: TLabel;
    cbxTipoMorte: TComboBox;
    dsAnexoVIII: TDataSource;
    ppDBPAnexoVIII: TppDBPipeline;
    Image3: TImage;
    Label4: TLabel;
    edtObs: TEdit;
    cbxDestinoMorte: TComboBox;
    Label5: TLabel;
    ppReportComunicado: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel11: TppLabel;
    ppLabel5: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppShape6: TppShape;
    ppLabel16: TppLabel;
    ppDBText14: TppDBText;
    ppLabel21: TppLabel;
    ppLBLTotalAnimais: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape13: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape9: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppShape3: TppShape;
    myDBChKNatural: TppLabel;
    ppShape7: TppShape;
    myDBChkAcidental: TppLabel;
    ppShape8: TppShape;
    myDBChKSacrificio: TppLabel;
    ppDBText2: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    ppLabel18: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape1: TppShape;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    cbxFiltroProdutor: TComboBox;
    Label23: TLabel;
    SpeedButton3: TSpeedButton;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Layout8: TLayout;
    Rectangle12: TRectangle;
    Label25: TLabel;
    lblTotalAnimais1: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    ppLabel14: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure edtChipKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtIdentificacaoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EditButton1Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure TreeViewItemPrintClick(Sender: TObject);
    procedure ppHeaderBand1AfterPrint(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Rectangle7Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure btnConfirmaNovoComunicadoClick(Sender: TObject);
    procedure btnCancelaNovoComuinClick(Sender: TObject);
    procedure ppDetailBand1AfterPrint(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
  private
    procedure LimpaCampos;
  public
    vIdAnimal,vIdCausaMorte,vIdProdutor,vIdComunicado :string;
    vOp:integer;
    procedure BuscaDadosAnimal(Tipo, Numero, PropID: String);
  end;

var
  frmComunicadoMorte: TfrmComunicadoMorte;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal, UAuxMorte;

procedure TfrmComunicadoMorte.EditButton1Click(Sender: TObject);
begin
  serviceDB.qryAuxMorte.Close;
  serviceDB.qryAuxMorte.Open;
  frmCadAuxMorte := TfrmCadAuxMorte.Create(nil);
  try
    frmCadAuxMorte.ShowModal;
  finally
    edtCausaMorte.text         := serviceDB.qryAuxMorteNOME.AsString;
    vIdCausaMorte              := serviceDB.qryAuxMorteID.AsString;
    frmCadAuxMorte.Free;
  end;
end;

procedure TfrmComunicadoMorte.edtChipKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key =13 then
 begin
   if edtChip.Text.Length>0 then
   begin
     BuscaDadosAnimal('1', edtChip.Text, frmPrincipal.vIDPropriedadePropria);
   end;
 end;
end;

procedure TfrmComunicadoMorte.edtIdentificacaoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key =13 then
 begin
   if edtIdentificacao.Text.Length>0 then
   begin
     BuscaDadosAnimal('2', edtIdentificacao.Text, frmPrincipal.vIDPropriedadePropria);
   end;
 end;
end;

procedure TfrmComunicadoMorte.FormShow(Sender: TObject);
begin
 serviceDB.AbreComunicadoMorte('');
 serviceDB.DetComunicadoMorte.Close;
 serviceDB.DetComunicadoMorte.Open;
 serviceDB.AbreProdutorProprio;
 cbxFiltroProdutor.Items.Clear;
 cbxFiltroProdutor.Items.Add('Todos');
 while not serviceDB.qryProdutorProprio.Eof do
 begin
   cbxFiltroProdutor.Items.Add(serviceDB.qryProdutorProprioNOME.AsString);
   serviceDB.qryProdutorProprio.Next;
 end;
 cbxFiltroProdutor.ItemIndex :=0;
 layNovoComunicado.Visible := false;
 lblTotalAnimais1.Text     := IntToStr(GridDet.RowCount);
end;
procedure TfrmComunicadoMorte.LimpaCampos;
begin
 edtChip.Text             := '';
 edtIdentificacao.Text    := '';
 edtLocalAtual.Text       := '';
 edtRaca.text             := '';
 edtCategoria.Text        := '';
 edtIdadeMeses.Text       := '';
 edtUltimoProc.Text       := '';
 edtUltimoPeso.Text       := '';
end;

procedure TfrmComunicadoMorte.ppDetailBand1AfterPrint(Sender: TObject);
begin
 case  serviceDB.AnexoVIIITIPOINT.AsInteger of
  0:begin
      myDBChKSacrificio.Text := '';
      myDBChkAcidental.Text  := '';
      myDBChKNatural.Text    := 'X';
    end;
  1:begin
      myDBChKSacrificio.Text := '';
      myDBChkAcidental.Text  := 'X';
      myDBChKNatural.Text    := '';
    end;
  2:begin
      myDBChKSacrificio.Text := 'X';
      myDBChkAcidental.Text  := '';
      myDBChKNatural.Text    := '';
    end;
 end;
end;

procedure TfrmComunicadoMorte.ppHeaderBand1AfterPrint(Sender: TObject);
var
 vQry :TFDQuery;
begin
 vQry                := TFDQuery.Create(nil);
 vQry.Connection     := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
  Add('SELECT COUNT(*) qtd FROM ANIMAL AN');
  Add('WHERE AN.STATUS>0 AND AN.ID_COMUNICADO_MORTE='+serviceDB.TableComunicadoMorteID.AsString);
  Open;
  ppLblTotalAnimais.Text := FieldByName('qtd').AsString;
 end;
end;

procedure TfrmComunicadoMorte.Rectangle7Click(Sender: TObject);
begin
 if cbxProdutorDestino.ItemIndex=-1 then
 begin
   myShowMessage('Selecione o Produtor',false);
   Exit;
 end;
 if cbxDestinoMorte.ItemIndex=-1 then
 begin
   myShowMessage('Selecione o Destino dos Animais',false);
   Exit;
 end;
 if vOp=1 then
 begin
  serviceDB.TableComunicadoMorte.Insert;
  serviceDB.TableComunicadoMorteNUMERO.AsString      := ServiceDB.RetornaNumeroComMorte(frmPrincipal.vIDPropriedadePropria);
 end;

 if vOp=2 then
  serviceDB.TableComunicadoMorte.Edit;


 serviceDB.TableComunicadoMorteID_PRODUTOR.AsString := vIdProdutor;
 serviceDB.TableComunicadoMorteID_USUARIO.AsString  := serviceDB.vidUserLogado;
 serviceDB.TableComunicadoMorteDATA.AsDateTime      := edtDataComMorte.Date;
 serviceDB.TableComunicadoMorteOBS.AsString         := edtOBS.Text;
 serviceDB.TableComunicadoMorteDESTINO.AsString     := cbxDestinoMorte.Selected.Text;
 try
   serviceDB.TableComunicadoMorte.ApplyUpdates(-1);
   serviceDB.TableComunicadoMorte.Close;
   serviceDB.TableComunicadoMorte.Open;
   myShowMessage('Comunicado Gerado com Sucesso!!',false);
   layNovoComunicado.Visible := false;
 except
   on E: Exception do
    myShowMessage('Erro: ' + E.Message,false );
 end;
end;

procedure TfrmComunicadoMorte.Rectangle8Click(Sender: TObject);
begin
  cbxProdutorDestino.ItemIndex :=-1;
  layNovoComunicado.Visible := false;
end;

procedure TfrmComunicadoMorte.btnConfirmaNovoComunicadoClick(Sender: TObject);
begin
if cbxProdutorDestino.ItemIndex=-1 then
 begin
   myShowMessage('Selecione o Produtor',false);
   Exit;
 end;
 if cbxDestinoMorte.ItemIndex=-1 then
 begin
   myShowMessage('Selecione o Destino dos Animais',false);
   Exit;
 end;
 if vOp=1 then
 begin
  serviceDB.TableComunicadoMorte.Insert;
  serviceDB.TableComunicadoMorteNUMERO.AsString      := ServiceDB.RetornaNumeroComMorte(frmPrincipal.vIDPropriedadePropria);
 end;

 if vOp=2 then
  serviceDB.TableComunicadoMorte.Edit;


 serviceDB.TableComunicadoMorteID_PRODUTOR.AsString := vIdProdutor;
 serviceDB.TableComunicadoMorteID_USUARIO.AsString  := serviceDB.vidUserLogado;
 serviceDB.TableComunicadoMorteDATA.AsDateTime      := edtDataComMorte.Date;
 serviceDB.TableComunicadoMorteOBS.AsString         := edtOBS.Text;
 serviceDB.TableComunicadoMorteDESTINO.AsString     := cbxDestinoMorte.Selected.Text;
 try
   serviceDB.TableComunicadoMorte.ApplyUpdates(-1);
   serviceDB.TableComunicadoMorte.Close;
   serviceDB.TableComunicadoMorte.Open;
   myShowMessage('Comunicado Gerado com Sucesso!!',false);
   layNovoComunicado.Visible := false;
 except
   on E: Exception do
    myShowMessage('Erro: ' + E.Message,false );
 end;
end;

procedure TfrmComunicadoMorte.SpeedButton3Click(Sender: TObject);
var
 vFiltro:string;
begin
 if edtFiltroName.Text.Length>0 then
 begin
   vFiltro := vFiltro+' AND NUMERO='+edtFiltroName.Text;
 end;
 if cbxFiltroProdutor.ItemIndex>0 then
 begin
   vFiltro := vFiltro+' AND P.NOME='+cbxFiltroProdutor.Selected.Text.QuotedString;
 end;
 serviceDB.AbreComunicadoMorte(vFiltro);
end;

procedure TfrmComunicadoMorte.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  lblTotalAnimais1.Text     := IntToStr(GridDet.RowCount);
end;

procedure TfrmComunicadoMorte.StringGrid1SelChanged(Sender: TObject);
begin
   lblTotalAnimais1.Text     := IntToStr(GridDet.RowCount);
end;

procedure TfrmComunicadoMorte.TreeItemEditarClick(Sender: TObject);
begin
  vIdProdutor                  :=serviceDB.TableComunicadoMorteID_PRODUTOR.AsString;
  vOp                          :=2;
  layNovoComunicado.Visible    := true;
  cbxProdutorDestino.ItemIndex := cbxProdutorDestino.Items.IndexOf(serviceDB.TableComunicadoMortePRODUTOR.AsString);
  cbxDestinoMorte.ItemIndex    := cbxDestinoMorte.Items.IndexOf(serviceDB.TableComunicadoMorteDestino.AsString);
  edtObs.Text                  := serviceDB.TableComunicadoMorteOBS.AsString;
  cbxProdutorDestino.Enabled   := false;
  edtDataComMorte.Date         := serviceDB.TableComunicadoMorteDATA.AsDateTime;
end;

procedure TfrmComunicadoMorte.TreeItemNovoClick(Sender: TObject);
begin
 vOp :=1;
 serviceDB.TableComunicadoMorte.Close;
 serviceDB.TableComunicadoMorte.Open;
 layNovoComunicado.Visible    := true;
 cbxProdutorDestino.ItemIndex :=-1;
end;

procedure TfrmComunicadoMorte.TreeViewItem1Click(Sender: TObject);
begin
 vIdComunicado := serviceDB.TableComunicadoMorteID.AsString;
 vIdProdutor   := serviceDB.TableComunicadoMorteID_PRODUTOR.AsString;
 LimpaCampos;
 MudarAba(tbiCad,Sender);
end;

procedure TfrmComunicadoMorte.TreeViewItem2Click(Sender: TObject);
var
 vDiasProc :integer;
begin
 vIdAnimal                := serviceDB.DetComunicadoMorteID.AsString;
 edtLocalAtual.Text       := serviceDB.DetComunicadoMorteULTIMO_LOCAL.AsString;
 edtRaca.text             := serviceDB.DetComunicadoMorteRACA.AsString;
 edtCategoria.Text        := serviceDB.DetComunicadoMorteCATEGORIA.AsString;
 edtIdadeMeses.Text       := IntToStr(MonthsBetween(date,serviceDB.DetComunicadoMorteDATA_NASCIMENTO.AsDateTime));
 edtUltimoProc.Text       := serviceDB.DetComunicadoMorteDATA_ULTIMO_PESO.AsString;
 edtUltimoPeso.Text       := serviceDB.DetComunicadoMorteULTIMO_PESO.AsString;
 vDiasProc                := DaysBetween(now,serviceDB.DetComunicadoMorteDATA_PROC.AsDateTime);
 edtDias.Text             := intToStr(vDiasProc);
 edtIdentificacao.Text    := serviceDB.DetComunicadoMorteIDENTIFICACAO_2.AsString;
 edtChip.Text             := serviceDB.DetComunicadoMorteIDENTIFICACAO_1.AsString;
 edtCausaMorte.Text       := serviceDB.DetComunicadoMorteMOTIVO.AsString;
 vIdCausaMorte            := serviceDB.DetComunicadoMorteID_MOTIVO_MORTE.AsString;
 vIdProdutor              := serviceDB.DetComunicadoMorteID_PRODUTOR.AsString;
 vIdComunicado            := serviceDB.DetComunicadoMorteID_COMUNICADO_MORTE.AsString;
 edtChip.Enabled          := false;
 edtIdentificacao.Enabled := false;
 cbxTipoMorte.ItemIndex   := serviceDB.DetComunicadoMorteTIPO_MORTE.AsInteger;
 MudarAba(tbiCad,sender);
end;

procedure TfrmComunicadoMorte.TreeViewItem3Click(Sender: TObject);
begin
 if lblTotalAnimais1.Text<>'0' then
 begin
  serviceDB.AbreAnexoVIIIComunicadoMorte(serviceDB.TableComunicadoMorteID.AsString);
  ppReportComunicado.PrintReport;
 end
 else
  myShowMessage('Comunicado sem Animais',False);
end;

procedure TfrmComunicadoMorte.TreeViewItemPrintClick(Sender: TObject);
begin
 if TreeViewItemPrint.IsExpanded=true then
    TreeViewItemPrint.IsExpanded:=false
  else
    TreeViewItemPrint.IsExpanded:=true
end;

procedure TfrmComunicadoMorte.btnCancelaNovoComuinClick(Sender: TObject);
begin
 cbxProdutorDestino.ItemIndex :=-1;
 layNovoComunicado.Visible := false;
end;

procedure TfrmComunicadoMorte.btnCancelarClick(Sender: TObject);
begin
 LimpaCampos;
 MudarAba(tbiMnu,Sender);
end;

procedure TfrmComunicadoMorte.btnConfirmaClick(Sender: TObject);
begin
 if edtCausaMorte.Text.Length=0 then
 begin
   myShowMessage('Informe a Causa da Morte',false);
   Exit;
 end;
 if edtDataMorte.Text.Length=0 then
 begin
   myShowMessage('Informe a data da Morte',false);
   Exit
 end;
 if cbxTipoMorte.ItemIndex=-1 then
 begin
   myShowMessage('Informe o tipo de morte!',false);
   Exit;
 end;
 try
   serviceDB.MorteAnimalComunicado(serviceDB.TableComunicadoMorteID.AsString
   ,vIdAnimal, VIdCausaMorte, edtDataMorte.Text,
   IntToStr(cbxTipoMorte.ItemIndex));
   myShowMessage('Morte realizada com sucesso!',false);
   serviceDB.TableComunicadoMorte.Close;
   serviceDB.TableComunicadoMorte.Open;
   serviceDB.DetComunicadoMorte.Close;
   serviceDB.DetComunicadoMorte.Open;
   tbPrincipal.ActiveTab := tbiMnu;
 except
   on E : Exception do
    myShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
 end;
end;

procedure TfrmComunicadoMorte.BuscaDadosAnimal(Tipo, Numero, PropID: String);
var
 vDiasProc :integer;
begin
     if not serviceDB.AbreQryAnimaisExixtentesProdutor(vIdProdutor,Tipo,Numero,PropID) then
     begin
       vIdAnimal                := serviceDB.qryAnimalExistenteID.AsString;
       edtLocalAtual.Text       := serviceDB.qryAnimalExistenteCURRAL_PASTO.AsString;
       edtRaca.text             := serviceDB.qryAnimalExistenteRACA_NOME.AsString;
       edtCategoria.Text        := serviceDB.qryAnimalExistenteCATEGORIA_NOME.AsString;
       edtIdadeMeses.Text       := IntToStr(MonthsBetween(date,serviceDB.qryAnimalExistenteDATA_NASCIMENTO.AsDateTime));
       edtUltimoProc.Text       := serviceDB.qryAnimalExistenteDATA_ULTIMO_PESO.AsString;
       edtUltimoPeso.Text       := serviceDB.qryAnimalExistenteULTIMO_PESO.AsString;
       edtLocalAtual.Text       := serviceDB.qryAnimalExistenteCURRAL_PASTO.AsString;
       vDiasProc                := DaysBetween(now,serviceDB.qryAnimalExistenteDATAREG.AsDateTime);
       edtDias.Text             := intToStr(vDiasProc);
       if Tipo='1' then
        edtIdentificacao.Text   := serviceDB.qryAnimalExistenteIDENTIFICACAO_2.AsString;
       if Tipo='2' then
        edtChip.Text            := serviceDB.qryAnimalExistenteIDENTIFICACAO_1.AsString;
       laydados.Visible         := true;
       LayDadosMorte.Visible    := true;
       edtCausaMorte.SetFocus;
     end
     else
     begin
       vIdAnimal                := '';
       edtLocalAtual.Text       := '';
       edtRaca.text             := '';
       edtCategoria.Text        := '';
       edtIdadeMeses.Text       := '';
       edtUltimoProc.Text       := '';
       edtUltimoPeso.Text       := '';
       edtLocalAtual.Text       := '';
       edtDias.Text             := '';
       edtIdentificacao.Text    := '';
       edtChip.Text             := '';
       myShowMessage('Animal Nao Encontrado',false);
     end;
end;


procedure TfrmComunicadoMorte.cbxProdutorDestinoChange(Sender: TObject);
begin
 if cbxProdutorDestino.ItemIndex>-1 then
  vIdProdutor     := LinkFillControlToFieldID.BindList.GetSelectedValue.AsString
end;

end.
