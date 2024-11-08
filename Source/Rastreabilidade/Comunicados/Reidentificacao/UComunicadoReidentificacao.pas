unit UComunicadoReidentificacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Effects, FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.DateTimeCtrls,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ppBands, ppClass, ppBarCod, ppParameter, ppDesignLayer,
  ppCtrls, ppVar, ppStrtch, ppMemo, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppDB, ppDBPipe;

type
  TfrmCadComunicadoReident = class(TfrmCadPadrao)
    StringGridDet: TStringGrid;
    Rectangle10000001: TRectangle;
    Layout1Reident: TLayout;
    Layout3Reident: TLayout;
    Label3Reident: TLabel;
    Label5Reident: TLabel;
    edtDataEntrada: TDateEdit;
    btnConfirmar: TSpeedButton;
    ShadowEffect2: TShadowEffect;
    Rectangle2Reident: TRectangle;
    Layout4Reident: TLayout;
    Layout5: TLayout;
    Label6: TLabel;
    ShadowEffect3: TShadowEffect;
    edtSisbovAntigo: TEdit;
    btnBuscarAntigo: TSpeedButton;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtLocalAtual: TEdit;
    edtRaca: TEdit;
    edtIdadeAtual: TEdit;
    edtCategoria: TEdit;
    Rectangle3Reident: TRectangle;
    Layout6Reident: TLayout;
    Layout7: TLayout;
    Label10: TLabel;
    edtSisbovNovo: TEdit;
    ShadowEffect4: TShadowEffect;
    Rectangle4Reident: TRectangle;
    Layout8Reident: TLayout;
    ShadowEffect5: TShadowEffect;
    StringGrid2: TStringGrid;
    btnAdd: TSpeedButton;
    Image6: TImage;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    cbxProdutorDestino: TComboBox;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    Label11: TLabel;
    edtDataReident: TDateEdit;
    qryBuscaAnimal: TFDQuery;
    qryBuscaAnimalID: TIntegerField;
    qryBuscaAnimalIDADE_ATUAL: TLargeintField;
    qryBuscaAnimalRACA: TStringField;
    qryBuscaAnimalCATEGORIA: TStringField;
    qryBuscaAnimalLOCAL_ATUAL: TStringField;
    tmpReident: TFDQuery;
    tmpReidentID: TIntegerField;
    tmpReidentSISBOV_OLD: TStringField;
    tmpReidentSISBOV_NEW: TStringField;
    tmpReidentDATA: TDateField;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    tmpReidentIDADE_ATUAL: TIntegerField;
    TreeViewItemPrint: TTreeViewItem;
    TreeViewItem2: TTreeViewItem;
    Image7: TImage;
    TreeViewItem3: TTreeViewItem;
    Image8: TImage;
    Image9: TImage;
    ppDBDeclaracao: TppDBPipeline;
    dsDeclaracao: TDataSource;
    dsAnexoIX: TDataSource;
    ppDBAnexoIX: TppDBPipeline;
    ppReportComunicado: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppShape5: TppShape;
    ppMemo1: TppMemo;
    ppShape4: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
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
    ppShape6: TppShape;
    ppDetailBand1: TppDetailBand;
    ppShape7: TppShape;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape11: TppShape;
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
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppReportAnexoIX: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppShape9: TppShape;
    ppLabel26: TppLabel;
    ppDBText17: TppDBText;
    ppLabel27: TppLabel;
    ppDBText18: TppDBText;
    ppLabel28: TppLabel;
    ppDBText19: TppDBText;
    ppLabel29: TppLabel;
    ppDBText20: TppDBText;
    ppLabel30: TppLabel;
    ppDBText26: TppDBText;
    ppLabel23: TppLabel;
    ppDBText16: TppDBText;
    ppLabel49: TppLabel;
    ppDBText39: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppShape10: TppShape;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppLabel38: TppLabel;
    ppLine7: TppLine;
    ppLine6: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape8: TppShape;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    cbxFiltroProdutor: TComboBox;
    Label23: TLabel;
    SpeedButton3: TSpeedButton;
    Label3: TLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    TreeViewItem1: TTreeViewItem;
    Image3: TImage;
    ppReportAnexoIXSemCod: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppShape12: TppShape;
    ppLabel44: TppLabel;
    ppDBText14: TppDBText;
    ppLabel45: TppLabel;
    ppDBText15: TppDBText;
    ppLabel46: TppLabel;
    ppDBText31: TppDBText;
    ppLabel47: TppLabel;
    ppDBText32: TppDBText;
    ppLabel48: TppLabel;
    ppDBText33: TppDBText;
    ppLabel50: TppLabel;
    ppDBText34: TppDBText;
    ppLabel51: TppLabel;
    ppDBText35: TppDBText;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape13: TppShape;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel57: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape14: TppShape;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel61: TppLabel;
    ppLabel68: TppLabel;
    ppLabel14: TppLabel;
    ppShape2: TppShape;
    ppLabel69: TppLabel;
    ppShape15: TppShape;
    ppLine10: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLine11: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure btnBuscarAntigoClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeViewItemPrintClick(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    vIdProdutor:string;
  end;

var
  frmCadComunicadoReident: TfrmCadComunicadoReident;

implementation

{$R *.fmx}

uses UServiceDB;

procedure TfrmCadComunicadoReident.btnAddClick(Sender: TObject);
begin
 if edtSisbovNovo.Text.Length=0 then
 begin
   MyShowMessage('Informe o sisbov Novo!!',false);
   Exit;
 end;
 if edtDataReident.Text.Length=0 then
 begin
   MyShowMessage('Informe a data da Reidentificação!!',false);
   Exit;
 end;
 if serviceDB.ChecaBrincoEstoque(edtSisbovNovo.Text,vIdProdutor) then
 begin
   MyShowMessage('SISBOV não localizado no estoque',false);
   edtSisbovNovo.SetFocus;
   edtSisbovNovo.SelectAll;
   exit;
 end;
 if not serviceDB.ChecaTMPReident(edtSisbovNovo.Text,'NOVO') then
 begin
   MyShowMessage('SISBOV Novo ja utilizado nesse comunicado!',false);
   edtSisbovNovo.SetFocus;
   edtSisbovNovo.SelectAll;
   exit;
 end;

 tmpReident.Close;
 tmpReident.Open;
 tmpReident.Insert;
 tmpReidentSISBOV_OLD.AsString    := edtSisbovAntigo.Text;
 tmpReidentSISBOV_NEW.AsString    := edtSisbovNovo.Text;
 tmpReidentDATA.AsDateTime        := edtDataReident.Date;
 tmpReidentIDADE_ATUAL.AsString   := edtIdadeAtual.Text;
 try
  tmpReident.ApplyUpdates(-1);
  edtRaca.Text         :='';
  edtCategoria.Text    :='';
  edtIdadeAtual.Text   :='';
  edtLocalAtual.Text   :='';
  edtSisbovNovo.Text   :='';
  edtSisbovAntigo.Text :='';
  edtSisbovNovo.SetFocus;
 except
  on E: Exception do
   MyShowMessage('Erro: ' + E.Message ,false);
 end;

end;

procedure TfrmCadComunicadoReident.btnBuscarAntigoClick(Sender: TObject);
begin
 if not serviceDB.ChecaTMPReident(edtSisbovAntigo.Text,'ANTIGO') then
 begin
   MyShowMessage('SISBOV Antigo ja utilizado nesse comunicado!',false);
   edtSisbovAntigo.SetFocus;
   edtSisbovAntigo.SelectAll;
   exit;
 end;
 with qryBuscaAnimal,qryBuscaAnimal.SQL do
 begin
   Clear;
   Add('SELECT ');
   Add('A.ID,');
   Add('DATEDIFF(MONTH FROM A.DATA_NASCIMENTO TO CURRENT_DATE) IDADE_ATUAL,');
   Add('R.NOME RACA,');
   Add('C.NOME CATEGORIA,');
   Add('L.CODIGO LOCAL_ATUAL');
   Add('FROM ANIMAL A');
   Add('JOIN RACA R ON R.ID=A.ID_RACA');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('JOIN CURRAIS L ON L.ID=A.ID_LOCAL');
   Add('WHERE A.STATUS=1 AND A.ID_PRODUTOR='+vIdProdutor);
   Add('AND IDENTIFICACAO_2='+edtSisbovAntigo.Text.QuotedString);
   Open;
   if IsEmpty then
   begin
     MyShowMessage('SISBOV Não localizado!!',false);
     edtRaca.Text       :='';
     edtCategoria.Text  :='';
     edtIdadeAtual.Text :='';
     edtLocalAtual.Text :='';
     edtSisbovNovo.Text :='';
     edtSisbovNovo.Enabled := false;
     Exit;
   end
   else
   begin
     edtRaca.Text          :=qryBuscaAnimalRACA.AsString;
     edtCategoria.Text     :=qryBuscaAnimalCATEGORIA.AsString;
     edtIdadeAtual.Text    :=qryBuscaAnimalIDADE_ATUAL.AsString;
     edtLocalAtual.Text    :=qryBuscaAnimalLOCAL_ATUAL.AsString;
     edtSisbovNovo.Enabled := true;
   end;
 end;
end;

procedure TfrmCadComunicadoReident.btnConfirmaClick(Sender: TObject);
var
 vIdCom:string;
begin
  MessageDlg('Deseja Realmente gerar esse comunicado de Reidentificação?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
  procedure(const AResult: System.UITypes.TModalResult)
  begin
  case AResult of
  mrYES:
  begin
      try
       serviceDB.TableComunicadoReident.Close;
       serviceDB.TableComunicadoReident.Open;
       serviceDB.TableComunicadoReident.Insert;
       serviceDB.TableComunicadoReidentNUMERO.AsString      := serviceDB.RetornaNumeroComReident;
       serviceDB.TableComunicadoReidentDATA.AsDateTime      := edtDataEntrada.Date;
       serviceDB.TableComunicadoReidentID_PRODUTOR.AsString := vIdProdutor;
       serviceDB.TableComunicadoReidentID_USUARIO.AsString  := serviceDB.vIdUserLogado;
       serviceDB.TableComunicadoReident.ApplyUpdates(-1);
       serviceDB.FCon.Commit;
       vIdCom := serviceDB.RetornaMaxIDComReident;
       tmpReident.Close;
       tmpReident.Open;
       tmpReident.First;
       while not tmpReident.eof do
       begin
         serviceDB.ReidentificaAnimal(
          vIdCom,
          tmpReidentSISBOV_OLD.AsString,
          tmpReidentSISBOV_NEW.AsString,
          tmpReidentDATA.AsString,
          tmpReidentIDADE_ATUAL.AsString);
          tmpReident.Next;
       end;
       MyShowMessage('Comunicado gerado com sucesso!',false);
       serviceDB.TableComunicadoReident.Close;
       serviceDB.TableComunicadoReident.Open;
       serviceDB.TableDetComReident.Close;
       serviceDB.TableDetComReident.Open;
       tbPrincipal.ActiveTab := tbiMnu;
      except
      on E : Exception do
       begin
         MyShowMessage('Exception class name = '+E.ClassName,false);
         MyShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  mrNo:
   begin
     MyShowMessage('Operação Abortada',false);
   end;
  end;
  end);
end;

procedure TfrmCadComunicadoReident.btnConfirmarClick(Sender: TObject);
begin
  if edtDataEntrada.Text.Length=0 then
  begin
    MyShowMessage('Informe a data!!',false);
    Exit;
  end;
  if cbxProdutorDestino.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o Produtor!!',false);
    Exit;
  end;

  edtDataEntrada.Enabled      :=false;
  cbxProdutorDestino.Enabled  :=false;

  edtSisbovAntigo.Enabled     :=true;
  edtSisbovNovo.Enabled       :=true;
  btnAdd.Enabled              :=true;
end;

procedure TfrmCadComunicadoReident.cbxProdutorDestinoChange(Sender: TObject);
begin
 if cbxProdutorDestino.ItemIndex>-1 then
  vIdProdutor     := LinkFillControlToFieldNOME.BindList.GetSelectedValue.AsString
end;

procedure TfrmCadComunicadoReident.FormShow(Sender: TObject);
begin
 serviceDB.AbreComunicadoReident('');
 serviceDB.TableDetComReident.Open;
 serviceDB.AbreProdutorProprio;
 cbxFiltroProdutor.Items.Clear;
 cbxFiltroProdutor.Items.Add('Todos');
 while not serviceDB.qryProdutorProprio.Eof do
 begin
   cbxFiltroProdutor.Items.Add(serviceDB.qryProdutorProprioNOME.AsString);
   serviceDB.qryProdutorProprio.Next;
 end;
 cbxFiltroProdutor.ItemIndex :=0;
// serviceDB.DeclaracaoReident.open;
// serviceDB.AnexoIXReident.Open;
end;

procedure TfrmCadComunicadoReident.SpeedButton3Click(Sender: TObject);
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
 serviceDB.AbreComunicadoReident(vFiltro);
end;

procedure TfrmCadComunicadoReident.TreeItemNovoClick(Sender: TObject);
begin
  serviceDB.DeletaTmpReident;
  edtSisbovAntigo.Enabled :=false;
  edtSisbovNovo.Enabled   :=false;
  btnAdd.Enabled          :=false;
  inherited;
end;

procedure TfrmCadComunicadoReident.TreeViewItem1Click(Sender: TObject);
begin
 serviceDB.AbreAnexoIXComunicadoReident(serviceDB.TableComunicadoReidentID.AsString);
 ppDetailBand3.PrintCount := serviceDB.AnexoIXReidentQTD_REG_PAGINA.AsInteger;
 ppReportAnexoIXSemCod.Print;
end;

procedure TfrmCadComunicadoReident.TreeViewItem2Click(Sender: TObject);
begin
 ppReportComunicado.Print;
end;

procedure TfrmCadComunicadoReident.TreeViewItem3Click(Sender: TObject);
begin
  serviceDB.AbreAnexoIXComunicadoReident(serviceDB.TableComunicadoReidentID.AsString);
  ppDetailBand2.PrintCount := serviceDB.AnexoIXReidentQTD_REG_PAGINA.AsInteger;
  ppReportAnexoIX.Print;
end;

procedure TfrmCadComunicadoReident.TreeViewItemPrintClick(Sender: TObject);
begin
  if TreeViewItemPrint.IsExpanded then
  TreeViewItemPrint.IsExpanded := false
 else
  TreeViewItemPrint.IsExpanded := true;
end;

end.
