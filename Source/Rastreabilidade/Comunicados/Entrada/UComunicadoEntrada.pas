unit UComunicadoEntrada;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Effects, FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.ListBox,
  FMX.DateTimeCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Fmx.Bind.Grid, Data.Bind.Grid, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppBands, ppCache, ppDesignLayer,
  ppParameter, ppTableGrid, ppStrtch, ppMemo, ppVar, ppBarCod;

type
  TfrmCadComunicadoEnt = class(TfrmCadPadrao)
    Rectangle1Ent: TRectangle;
    Layout1ent: TLayout;
    Layout3Ent: TLayout;
    Label3ent: TLabel;
    Label4ent: TLabel;
    edtProdutorOrigem: TEdit;
    btnBuscarOrigem: TEditButton;
    ShadowEffect2: TShadowEffect;
    cbxProdutorDestino: TComboBox;
    Rectangle2Ent: TRectangle;
    Layout4Ent: TLayout;
    Layout5Ent: TLayout;
    ShadowEffect3: TShadowEffect;
    Layout6Ent: TLayout;
    Layout7Ent: TLayout;
    Layout8Ent: TLayout;
    Layout9Ent: TLayout;
    Layout10Ent: TLayout;
    LayoutAlgum: TLayout;
    Layout12Ent: TLayout;
    gridGtaProc: TStringGrid;
    GridGTACom: TStringGrid;
    Label6Ent: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Layout13Ent: TLayout;
    btnAddGTA: TSpeedButton;
    btnRemoveGTA: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Label9: TLabel;
    edtProdutorOrigemF: TEdit;
    Label10: TLabel;
    edtProdutorDestinoF: TEdit;
    Label11: TLabel;
    cbxStatusF: TComboBox;
    btnFiltraAnimal: TSpeedButton;
    Image23: TImage;
    lblTotalGtaProc: TLabel;
    lblTotalGTACom: TLabel;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Layout11ent: TLayout;
    Rectangle3Ent: TRectangle;
    Label12Ent: TLabel;
    StringGrid2: TStringGrid;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    DsAnimaisAnexoV: TDataSource;
    DsCabecalhoAnexoV: TDataSource;
    DSGtasAnexoV: TDataSource;
    TreeViewItem1: TTreeViewItem;
    TreeAnexoIX: TTreeViewItem;
    dsAnexoIX: TDataSource;
    Image6: TImage;
    Image7: TImage;
    ppReportAnexoX: TppReport;
    ppParameterList2: TppParameterList;
    ppDBAnexoIX: TppDBPipeline;
    ppDBPAnimaisAnexoV: TppDBPipeline;
    ppDBPGtasAnexoV: TppDBPipeline;
    ppDBPGtasAnexoVppField1: TppField;
    ppDBPGtasAnexoVppField2: TppField;
    ppDBCabecalhoAnexoV: TppDBPipeline;
    ppReportAnexoV: TppReport;
    ppParameterList1: TppParameterList;
    Label3: TLabel;
    cbxTipoComunicado: TComboBox;
    btnConfirmar: TSpeedButton;
    Image3: TImage;
    TreeAnexoIXSemCod: TTreeViewItem;
    Image4: TImage;
    ppReportAnexoXSemCod: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel9: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppDBText15: TppDBText;
    ppLabel40: TppLabel;
    ppDBText31: TppDBText;
    ppLabel42: TppLabel;
    ppDBText32: TppDBText;
    ppLabel43: TppLabel;
    ppDBText33: TppDBText;
    ppLabel46: TppLabel;
    ppDBText35: TppDBText;
    ppLabel47: TppLabel;
    ppDBText36: TppDBText;
    ppLabel48: TppLabel;
    ppDBText37: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppShape4: TppShape;
    ppDBText38: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel51: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape13: TppShape;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppShape16: TppShape;
    ppLabel72: TppLabel;
    layDataEntrada: TLayout;
    Rectangle2: TRectangle;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    Image8: TImage;
    Label4: TLabel;
    Layout1: TLayout;
    Layout3: TLayout;
    Label5: TLabel;
    Layout4: TLayout;
    edtEmissao: TDateEdit;
    Label6: TLabel;
    edtValidade: TDateEdit;
    Label12: TLabel;
    edtDataEntrada: TDateEdit;
    Layout5: TLayout;
    btnConfirmaDataEntradaCom: TRectangle;
    Layout6: TLayout;
    Image9: TImage;
    Label13: TLabel;
    qryBuscaGTA: TFDQuery;
    qryBuscaGTAID: TIntegerField;
    qryBuscaGTANUMERO: TStringField;
    qryBuscaGTASERIE: TStringField;
    qryBuscaGTAUF: TStringField;
    qryBuscaGTADATA_EMISSAO: TDateField;
    qryBuscaGTADATA_VALIDADE: TDateField;
    qryBuscaGTAZERO_A_12_FEMEA: TIntegerField;
    qryBuscaGTAZERO_A_12_MACHO: TIntegerField;
    qryBuscaGTATREZE_A_24_FEMEA: TIntegerField;
    qryBuscaGTATREZE_A_24_MACHO: TIntegerField;
    qryBuscaGTAVITE_CINCO_A_36_FEMEA: TIntegerField;
    qryBuscaGTAVITE_CINCO_A_36_MACHO: TIntegerField;
    qryBuscaGTAMAIS_36_FEMEA: TIntegerField;
    qryBuscaGTAMAIS_36_MACHO: TIntegerField;
    qryBuscaGTASTATUS: TIntegerField;
    qryBuscaGTAUSER_ID: TIntegerField;
    qryBuscaGTADATA_REG: TSQLTimeStampField;
    qryBuscaGTATIPO: TStringField;
    qryBuscaGTAID_PROPRIEDADE_ORIGEM: TIntegerField;
    qryBuscaGTAID_PRODUTOR_ORIGEM: TIntegerField;
    qryBuscaGTAID_PROPRIEDADE_DESTINO: TIntegerField;
    qryBuscaGTAID_PRODUTOR_DESTINO: TIntegerField;
    qryBuscaGTATOTAL_BRINCADOS: TIntegerField;
    qryBuscaGTALOTADA: TIntegerField;
    qryBuscaGTAGUID: TStringField;
    qryBuscaGTAZERO_A_12_FEMEA_PROC: TIntegerField;
    qryBuscaGTAZERO_A_12_MACHO_PROC: TIntegerField;
    qryBuscaGTATREZE_A_24_FEMEA_PROC: TIntegerField;
    qryBuscaGTATREZE_A_24_MACHO_PROC: TIntegerField;
    qryBuscaGTAVITE_CINCO_A_36_FEMEA_PROC: TIntegerField;
    qryBuscaGTAVITE_CINCO_A_36_MACHO_PROC: TIntegerField;
    qryBuscaGTAMAIS_36_FEMEA_PROC: TIntegerField;
    qryBuscaGTAMAIS_36_MACHO_PROC: TIntegerField;
    qryBuscaGTAVALOR_CAB: TLargeintField;
    qryBuscaGTAID_COMUNICADO: TIntegerField;
    qryBuscaGTAID_VEICULO_SAIDA: TIntegerField;
    qryBuscaGTARASTREADO: TIntegerField;
    qryBuscaGTAID_USUARIO_ALTERACAO: TIntegerField;
    qryBuscaGTADATA_ALTERACAO: TSQLTimeStampField;
    qryBuscaGTAVALOR_FRETE_CAB: TFMTBCDField;
    qryBuscaGTAVALOR_COMISSAO_CAB: TFMTBCDField;
    qryBuscaGTAPESO_B_ORIGEM: TFMTBCDField;
    qryBuscaGTAPESO_B_DESTINO: TFMTBCDField;
    qryBuscaGTAID_COMPRADOR: TIntegerField;
    qryBuscaGTATOTAL_FEMEAS: TLargeintField;
    qryBuscaGTATOTAL_MACHOS: TLargeintField;
    qryBuscaGTATOTAL_GTA: TLargeintField;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    ppLine11: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel79: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppShape15: TppShape;
    ppMemo1: TppMemo;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText17: TppDBText;
    ppLabel26: TppLabel;
    ppShape17: TppShape;
    ppLabel27: TppLabel;
    ppDBText18: TppDBText;
    ppLabel28: TppLabel;
    ppDBText19: TppDBText;
    ppLabel29: TppLabel;
    ppDBText20: TppDBText;
    ppLabel30: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel31: TppLabel;
    ppDBText23: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppDBText24: TppDBText;
    ppLabel34: TppLabel;
    ppDBText25: TppDBText;
    ppLabel35: TppLabel;
    ppDBText26: TppDBText;
    ppLabel36: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel37: TppLabel;
    ppDBText29: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel49: TppLabel;
    ppLabel73: TppLabel;
    ppLabel78: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppShape20: TppShape;
    ppDBText30: TppDBText;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppLine6: TppLine;
    ppLabel87: TppLabel;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppLblTotalAnimaisPagina: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape14: TppShape;
    ppShape11: TppShape;
    ppShape5: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel17: TppLabel;
    ppShape6: TppShape;
    ppMemoGTAS: TppMemo;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText34: TppDBText;
    ppLblTotalAnimais: TppLabel;
    ppShape12: TppShape;
    ppLabel4: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppLabel41: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel5: TppLabel;
    ppLabel50: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape7: TppShape;
    ppDBText14: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
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
    ppLabel77: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLabel57: TppLabel;
    ppLabel64: TppLabel;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnBuscarOrigemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltraAnimalClick(Sender: TObject);
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure btnAddGTAClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnRemoveGTAClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure ppHeaderBand1BeforeGenerate(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure TreeAnexoIXClick(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure ppHeaderBand1AfterPrint(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure cbxTipoComunicadoChange(Sender: TObject);
    procedure TreeAnexoIXSemCodClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnConfirmaDataEntradaComClick(Sender: TObject);
    procedure ppFooterBand2AfterPrint(Sender: TObject);
  private
    function  PesquisaGTAAdd(idGTA:String):Boolean;
  public
    vConfirmado:integer;
    vIdProdutorOrigem,vIdProdutorDestino:string;
    procedure BuscaGTA(idProdutorOrigem,idProdutorDestino,Tipo:string);
    procedure BuscaGTA_2(idProdutorOrigem,idProdutorDestino,Tipo,Emissao,Validade:string);

  end;

var
  frmCadComunicadoEnt: TfrmCadComunicadoEnt;

implementation

{$R *.fmx}

uses UServiceDB, UPropriedadeParceira, UPrincipal;

{ TfrmCadComunicadoEnt }

procedure TfrmCadComunicadoEnt.btnAddGTAClick(Sender: TObject);
var
 I:integer;
 Emissao,Validade:string;
begin
 if GridGTACom.RowCount=0 then
 begin
   BuscaGTA_2(vidProdutorOrigem, vidProdutorDestino,
   intToStr(cbxTipoComunicado.ItemIndex),
   FormatDateTime('mm/dd/yyyy',qryBuscaGTADATA_EMISSAO.AsDateTime).QuotedString,
   FormatDateTime('mm/dd/yyyy',qryBuscaGTADATA_VALIDADE.AsDateTime).QuotedString);
 end;

 I:= GridGTACom.RowCount;
 if qryBuscaGTAID.AsString<>'' then
 begin
   if PesquisaGTAAdd(qryBuscaGTAID.AsString) then
   begin
     serviceDB.TableTMP_GTA_COM_ENT.Close;
     serviceDB.TableTMP_GTA_COM_ENT.Open;
     serviceDB.TableTMP_GTA_COM_ENT.Insert;
     serviceDB.TableTMP_GTA_COM_ENTID_GTA.AsString        := qryBuscaGTAID.AsString;
     serviceDB.TableTMP_GTA_COM_ENTNUM_GTA.AsString       := qryBuscaGTANUMERO.AsString;
     serviceDB.TableTMP_GTA_COM_ENTTOTAL_ANIMAIS.AsString := qryBuscaGTATOTAL_GTA.AsString;;
     serviceDB.TableTMP_GTA_COM_ENT.ApplyUpdates(-1);
     serviceDB.TableTMP_GTA_COM_ENT.Close;
     serviceDB.TableTMP_GTA_COM_ENT.Open;
     Emissao  :=qryBuscaGTADATA_EMISSAO.AsString;
     Validade :=qryBuscaGTADATA_VALIDADE.AsString;
     if gridGtaProc.Row<gridGtaProc.RowCount then
      gridGtaProc.SelectRow(gridGtaProc.Row+1);
   end
   else
    MyShowMessage('GTA Já Adicionada!!',false);
 end;
 lblTotalGTACom.Text := intToStr(GridGTACom.RowCount);
end;

procedure TfrmCadComunicadoEnt.btnBuscarOrigemClick(Sender: TObject);
begin
  serviceDB.vCadPedido:=1;
  serviceDB.AbreQryPropriedades('0');
  frmCadPropriedades := TfrmCadPropriedades.Create(Self);
  try
    frmCadPropriedades.ShowModal;
    vIdProdutorOrigem      := serviceDB.TableProdutoresID.AsString;
    edtProdutorOrigem.Text := serviceDB.TableProdutoresNOME.AsString;
  finally
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmCadComunicadoEnt.btnCancelarClick(Sender: TObject);
begin
  edtProdutorOrigem.Text :='';
  cbxProdutorDestino.ItemIndex :=-1;
  lblTotalGtaProc.Text    :='0';
  lblTotalGTACom.Text     :='0';
  gridGtaProc.RowCount    :=0;
  GridGTACom.RowCount     :=0;
  MudarAba(tbiMnu,sender);
end;

procedure TfrmCadComunicadoEnt.btnConfirmaClick(Sender: TObject);
begin
 if lblTotalGTACom.Text='0' then
 begin
   MyShowMessage('Selecione pelo menos uma GTA!',false);
   Exit;
 end;
 edtEmissao.Date      := qryBuscaGTADATA_EMISSAO.AsDateTime;
 edtValidade.Date     := qryBuscaGTADATA_VALIDADE.AsDateTime;
 edtDataEntrada.Text  := serviceDB.RetornaDataEntradAnimalGTA(qryBuscaGTAID.AsString);
 layDataEntrada.Visible := true;
end;

procedure TfrmCadComunicadoEnt.btnConfirmaDataEntradaComClick(Sender: TObject);
var
 vIdComunicado:string;
begin
 if edtDataEntrada.Date<edtEmissao.Date then
 begin
   MyShowMessage('Data de entrada nao pode ser menor que a emissão da GTA!',false);
   Exit;
 end;
 if edtDataEntrada.Date>edtValidade.Date then
 begin
   MyShowMessage('Data de entrada nao pode ser mairo que a validade da GTA!',false);
   Exit;
 end;
 serviceDB.TableComunicadoEntrada.Close;
 serviceDB.TableComunicadoEntrada.Open;
 serviceDB.TableComunicadoEntrada.Insert;
 serviceDB.TableComunicadoEntradaNUMERO.AsString              := serviceDB.RetornaNumeroComEnt(frmPrincipal.vIDPropriedadePropria);
 serviceDB.TableComunicadoEntradaID_PRODUTOR_ORIGEM.AsString  := vIdProdutorOrigem;
 serviceDB.TableComunicadoEntradaID_PRODUTOR_DESTINO.AsString := vIdProdutorDestino;
 serviceDB.TableComunicadoEntradaOUTRO_ERAS.AsInteger         := cbxTipoComunicado.ItemIndex;
 serviceDB.TableComunicadoEntradaDATA_ENTRADA.AsDateTime      := edtDataEntrada.Date;
 try
  serviceDB.TableComunicadoEntrada.ApplyUpdates(-1);
  vIdComunicado := serviceDB.RetornaMaxIDComEnt;
  serviceDB.TableTMP_GTA_COM_ENT.First;
  while not serviceDB.TableTMP_GTA_COM_ENT.Eof do
  begin
    serviceDB.AtualizaGTAIdComunicado(serviceDB.TableTMP_GTA_COM_ENTID_GTA.AsString,VidComunicado);
    serviceDB.TableTMP_GTA_COM_ENT.Next;
  end;

  MyShowMessage('Comunicado gerado com sucesso!!',false);
  serviceDB.TableComunicadoEntrada.Close;
  serviceDB.TableComunicadoEntrada.Open;
  MudarAba(tbiMnu,sender);
 except
   on E : Exception do
      MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
 end;
end;

procedure TfrmCadComunicadoEnt.btnConfirmarClick(Sender: TObject);
var
 vDataDe,vDataAte,vTipo:string;
begin
 serviceDB.DeletaGtaTMP;
 if edtProdutorOrigem.Text.Length=0 then
 begin
   MyShowMessage('Informe o produtor de Origem!',false);
   Exit;
 end;
 if cbxProdutorDestino.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o produtor de Destino!',false);
   Exit;
 end;
 if cbxTipoComunicado.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo de Comunicado!',false);
   Exit;
 end;
 vConfirmado:=1;
 if cbxTipoComunicado.ItemIndex>-1 then
  vTipo      := intToStr(cbxTipoComunicado.ItemIndex)
 else
  vTipo      :='';
 BuscaGTA(vIdProdutorOrigem,vIdProdutorDestino,vTipo);
end;

procedure TfrmCadComunicadoEnt.btnFiltraAnimalClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro :='';

 if edtFiltroName.Text.Length>0 then
  vFiltro := 'AND NUMERO='+edtFiltroName.Text;

 if edtProdutorOrigemF.Text.Length>0 then
  vFiltro :=vFiltro+' AND PO.NOME LIKE '+QuotedStr('%'+edtProdutorOrigemF.Text+'%');

 if edtProdutorDestinoF.Text.Length>0 then
  vFiltro :=vFiltro+' AND PD.NOME LIKE '+QuotedStr('%'+edtProdutorDestinoF.Text+'%');

 if cbxStatusF.ItemIndex>0 then
  vFiltro :=vFiltro+' AND CE.STATUS_COMUNICADO ='+IntToStr(cbxStatusF.ItemIndex-1);

 serviceDB.AbreComunicadoEntrada(vFiltro);
end;

procedure TfrmCadComunicadoEnt.btnRemoveGTAClick(Sender: TObject);
begin
 if GridGTACom.RowCount>0 then
 begin
  serviceDB.TableTMP_GTA_COM_ENT.Delete;
  serviceDB.TableTMP_GTA_COM_ENT.ApplyUpdates(-1);
  serviceDB.TableTMP_GTA_COM_ENT.Close;
  serviceDB.TableTMP_GTA_COM_ENT.Open();
 end;
 if GridGTACom.RowCount=0 then
   btnConfirmarClick(sender);
 lblTotalGTACom.Text := intToStr(GridGTACom.RowCount);
end;

procedure TfrmCadComunicadoEnt.BuscaGTA(idProdutorOrigem,
  idProdutorDestino,Tipo: string);
var
 vQry:TFDQuery;
 I:Integer;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with qryBuscaGTA,qryBuscaGTA.SQL do
 begin
   Clear;
   Add('SELECT * FROM gta');
   Add('WHERE status=1 AND lotada=1');
   Add('AND id_comunicado=0');
   Add('AND ID_PROPRIEDADE_DESTINO='+serviceDB.vIdPropriedade);
   Add('AND id_produtor_origem='+idProdutorOrigem);
   Add('AND id_produtor_destino='+idProdutorDestino);
   if Tipo='0' then
    Add('AND RASTREADO=0');
   if Tipo='1' then
    Add('AND RASTREADO=1');
   vQry.SQL.Text;
   Open;
 end;
 lblTotalGtaProc.Text := intToStr(gridGtaProc.RowCount);
 vQry.Free;
end;

procedure TfrmCadComunicadoEnt.BuscaGTA_2(idProdutorOrigem, idProdutorDestino,
  Tipo, Emissao, Validade: string);
var
 vQry:TFDQuery;
 I:Integer;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with qryBuscaGTA,qryBuscaGTA.SQL do
 begin
   Clear;
   Add('SELECT * FROM gta');
   Add('WHERE status=1 AND lotada=1');
   Add('AND id_comunicado=0');
   Add('AND ID_PROPRIEDADE_DESTINO='+serviceDB.vIdPropriedade);
   Add('AND id_produtor_origem='+idProdutorOrigem);
   Add('AND id_produtor_destino='+idProdutorDestino);
   Add('AND DATA_EMISSAO='+Emissao);
   Add('AND DATA_VALIDADE='+Validade);
   if Tipo='0' then
    Add('AND RASTREADO=0');
   if Tipo='1' then
    Add('AND RASTREADO=1');
   Open;
 end;
 lblTotalGtaProc.Text := intToStr(gridGtaProc.RowCount);
 vQry.Free;
end;

procedure TfrmCadComunicadoEnt.cbxProdutorDestinoChange(Sender: TObject);
begin
 if cbxProdutorDestino.ItemIndex>-1 then
  vIdProdutorDestino   := LinkFillControlToFieldID.BindList.GetSelectedValue.AsString
end;

procedure TfrmCadComunicadoEnt.cbxTipoComunicadoChange(Sender: TObject);
begin
 if cbxTipoComunicado.ItemIndex>0 then
  if vConfirmado=1 then
   BuscaGTA(vIdProdutorOrigem,vIdProdutorDestino,intToStr(cbxTipoComunicado.ItemIndex));
end;

procedure TfrmCadComunicadoEnt.FormShow(Sender: TObject);
begin
 layDataEntrada.Visible := false;
 cbxStatusF.ItemIndex :=0;
 serviceDB.AbreProdutorProprio;
 serviceDB.AbreComunicadoEntrada('');
 serviceDB.qryGtasComunicadoEnt.Open;
 serviceDB.GtasAnexoV.Open;
 serviceDB.CabecalhoAnexoV.Open;
 serviceDB.AnimaisAnexoV.Open;
end;

function TfrmCadComunicadoEnt.PesquisaGTAAdd(idGTA: String): Boolean;
var
 vQry:TFDQuery;
 I:Integer;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM TMP_GTA_COM_ENT');
   Add('WHERE ID_GTA='+idGTA);
   Open;
   Result := vQry.IsEmpty;
 end;
end;

procedure TfrmCadComunicadoEnt.ppDetailBand2BeforePrint(Sender: TObject);
begin
 ppDetailBand2.PrintCount := serviceDB.AnexoIXQTD_REG_PAGINA.AsInteger;
end;

procedure TfrmCadComunicadoEnt.ppFooterBand2AfterPrint(Sender: TObject);
begin
 ppLblTotalAnimaisPagina.Text :='Total :'+ppDetailBand1.Count.ToString+' de ' + ppLblTotalAnimais.Text;
end;

procedure TfrmCadComunicadoEnt.ppHeaderBand1AfterPrint(Sender: TObject);
var
 vQry :TFDQuery;
begin
 vQry                := TFDQuery.Create(nil);
 vQry.Connection     := serviceDB.FCon;
 with vQry,vQry.SQL do
 begin
  Add('SELECT COUNT(*) qtd FROM ANIMAL AN');
  Add('JOIN GTA G ON G.ID=AN.GTA_ID AND G.STATUS>-1');
  Add('WHERE AN.STATUS>0 AND G.ID_COMUNICADO='+serviceDB.TableComunicadoEntradaID.AsString);
  Open;
  ppLblTotalAnimais.Text := FieldByName('qtd').AsString;
 end;
end;

procedure TfrmCadComunicadoEnt.ppHeaderBand1BeforeGenerate(Sender: TObject);
var
 vGTA :String;
 i,x:integer;
begin
 i:=1;
 x:=1;
 vGTA:=' ';
 ppMemoGTAS.Lines.Clear;
 serviceDB.GtasAnexoV.First;
 while not serviceDB.GtasAnexoV.Eof do
 begin
  vGTA := TRIM(vGTA)+TRIM(serviceDB.GtasAnexoVGTAS.AsString)+'   ';
  if serviceDB.GtasAnexoV.RecordCount>8 then
  begin
    if (i=8) or (x=serviceDB.GtasAnexoV.RecordCount) then
    begin
     ppMemoGTAS.Lines.Add(vGTA);
     vGTA :='';
     i:=1;
    end;
  end
  else
  begin
   if i=serviceDB.GtasAnexoV.RecordCount then
     ppMemoGTAS.Lines.Add(vGTA);
  end;
  inc(i);
  inc(x);
  serviceDB.GtasAnexoV.Next;
 end;
end;

procedure TfrmCadComunicadoEnt.SpeedButton1Click(Sender: TObject);
begin
 layDataEntrada.Visible := false;
end;

procedure TfrmCadComunicadoEnt.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  TreeAnexoIX.Enabled       := serviceDB.TableComunicadoEntradaOUTRO_ERAS.AsInteger=0;
  TreeAnexoIXSemCod.Enabled := serviceDB.TableComunicadoEntradaOUTRO_ERAS.AsInteger=0;
end;

procedure TfrmCadComunicadoEnt.TreeItemExcluirClick(Sender: TObject);
begin
  TreeAnexoIX.Enabled := serviceDB.TableComunicadoEntradaOUTRO_ERAS.AsInteger=0;
 if TreeItemExcluir.IsExpanded then
  TreeItemExcluir.IsExpanded := false
 else
  TreeItemExcluir.IsExpanded := true;
end;

procedure TfrmCadComunicadoEnt.TreeItemNovoClick(Sender: TObject);
begin
  vConfirmado                  :=0;
  edtProdutorOrigem.Text       :='';
  cbxProdutorDestino.ItemIndex :=-1;
  lblTotalGtaProc.Text         :='0';
  lblTotalGTACom.Text          :='0';
  gridGtaProc.RowCount         :=0;
  GridGTACom.RowCount          :=0;
  cbxTipoComunicado.ItemIndex  := -1;
  serviceDB.DeleteTMP_GTA;
  serviceDB.AbreComunicadoEntrada('');
  inherited;
end;

procedure TfrmCadComunicadoEnt.TreeViewItem1Click(Sender: TObject);
begin
  ppReportAnexoV.Print;
end;

procedure TfrmCadComunicadoEnt.TreeAnexoIXSemCodClick(Sender: TObject);
begin
  serviceDB.AbreAnexoIXComunicadoEntradaSemCod(serviceDB.TableComunicadoEntradaID.AsString);
end;

procedure TfrmCadComunicadoEnt.TreeAnexoIXClick(Sender: TObject);
begin
 serviceDB.AbreAnexoIXComunicadoEntrada(serviceDB.TableComunicadoEntradaID.AsString);
end;

end.
