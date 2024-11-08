unit UComunicadoNascimento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Effects, FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.ListBox,
  FMX.DateTimeCtrls, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Fmx.Bind.Grid, Data.Bind.Grid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Menus, ppBands, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppBarCod,UMsgDlg, UMsgDlgRel;

type
  TfrmComunicadoNascimento = class(TfrmCadPadrao)
    layNovoComunicado: TLayout;
    Rectangle4Morte: TRectangle;
    P: TLayout;
    Layout15Morte: TLayout;
    Label9: TLabel;
    Layout16Morte: TLayout;
    Layout17Morte: TLayout;
    Label8: TLabel;
    edtDataComNascimento: TDateEdit;
    Label13: TLabel;
    cbxProdutorDestino: TComboBox;
    Label4: TLabel;
    edtObs: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Layout1100000000: TLayout;
    Rectangle3000000: TRectangle;
    Layout12000000000: TLayout;
    Layout13000000000: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbxRaca: TComboBox;
    cbxCategoria: TComboBox;
    edtIdadeMeses: TEdit;
    Á: TShadowEffect;
    Layout9000000000000: TLayout;
    Rectangle2NSCI: TRectangle;
    O: TLayout;
    Layout17000000000: TLayout;
    Label300000000000: TLabel;
    Label4000000000: TLabel;
    edtIdentificacao1: TEdit;
    edtNumMae: TEdit;
    ShadowEffect11: TShadowEffect;
    Layout10: TLayout;
    Layout40: TLayout;
    Layout41: TLayout;
    lblLote: TLabel;
    Label80000000000: TLabel;
    edtPeso: TEdit;
    cbxCurralPasto: TComboBox;
    edtSisbov: TEdit;
    Label3: TLabel;
    StringGrid2NSCI: TStringGrid;
    Label5: TLabel;
    edtCarimbo: TEdit;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Raca: TFDQuery;
    Pasto: TFDQuery;
    Categoria: TFDQuery;
    PastoID: TIntegerField;
    PastoID_PROPRIEDADE: TIntegerField;
    PastoCODIGO: TStringField;
    PastoTIPO: TIntegerField;
    PastoUSER_ID: TIntegerField;
    PastoDATAREG: TSQLTimeStampField;
    PastoSTATUS: TIntegerField;
    PastoPESO_MINIMO: TIntegerField;
    PastoPESO_MAXIMO: TIntegerField;
    PastoCAPACIDADE: TIntegerField;
    PastoLOTACAO: TIntegerField;
    PastoSTATUS_LOTACAO: TStringField;
    RacaID: TIntegerField;
    RacaNOME: TStringField;
    RacaSTATUS: TIntegerField;
    RacaDATAREG: TSQLTimeStampField;
    RacaID_USER: TIntegerField;
    CategoriaID: TIntegerField;
    CategoriaNOME: TStringField;
    CategoriaSEXO: TStringField;
    CategoriaSTATUS: TIntegerField;
    CategoriaDATAREG: TSQLTimeStampField;
    CategoriaUSER_ID: TIntegerField;
    CategoriaFAIXA_ETARIA: TStringField;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToFieldNOME2: TLinkFillControlToField;
    BindSourceDB5: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    BindSourceDB6: TBindSourceDB;
    LinkFillControlToFieldID2: TLinkFillControlToField;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    ppDBPAnexoIX: TppDBPipeline;
    dsAnexoIX: TDataSource;
    TreeViewComunicado: TTreeViewItem;
    Image11: TImage;
    TreeViewItem4: TTreeViewItem;
    TreeViewItem5: TTreeViewItem;
    Image13: TImage;
    ppReportAnexoIX: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape9: TppShape;
    ppLabel4: TppLabel;
    ppLabel22: TppLabel;
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
    Image3: TImage;
    PastoQRCODE: TStringField;
    PastoLATITUDE: TStringField;
    PastoLONGITUDE: TStringField;
    PastoCUSTO_FIXO_DIA: TFMTBCDField;
    PastoAREA_HECTARES: TFMTBCDField;
    PastoID_RETIRO: TIntegerField;
    Layout15: TLayout;
    ShadowEffect1: TShadowEffect;
    Rectangle2: TRectangle;
    Layout16: TLayout;
    Image4: TImage;
    Label21: TLabel;
    ShadowEffect3: TShadowEffect;
    Rectangle6: TRectangle;
    Layout17: TLayout;
    Image14: TImage;
    Label22: TLabel;
    ShadowEffect4: TShadowEffect;
    cbxFiltroProdutor: TComboBox;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    Label24: TLabel;
    lblTotalAnimais2: TLabel;
    Label26: TLabel;
    lblMediaPeso2: TLabel;
    Rectangle4: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    RacaCODIGO_BND: TStringField;
    Layout5: TLayout;
    StringGrid2: TStringGrid;
    LinkGridToDataSourceBindSourceDB34: TLinkGridToDataSource;
    Rectangle11: TRectangle;
    TreeView2: TTreeView;
    Layout8: TLayout;
    Rectangle12: TRectangle;
    Label25: TLabel;
    lblTotalAnimais1: TLabel;
    Label28: TLabel;
    lblMediaPeso1: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label27: TLabel;
    TreeViewItem6: TTreeViewItem;
    Image15: TImage;
    TreeViewItem7: TTreeViewItem;
    Image17: TImage;
    TreeViewItem9: TTreeViewItem;
    Image18: TImage;
    TreeViewItem10: TTreeViewItem;
    Image19: TImage;
    TreeViewItem11: TTreeViewItem;
    Image21: TImage;
    TreeViewItem12: TTreeViewItem;
    Image22: TImage;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppReportAnexoIXSemCod: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText7: TppDBText;
    ppLabel46: TppLabel;
    ppDBText8: TppDBText;
    ppLabel47: TppLabel;
    ppDBText9: TppDBText;
    ppLabel48: TppLabel;
    ppDBText11: TppDBText;
    ppLabel50: TppLabel;
    ppDBText13: TppDBText;
    ppLabel51: TppLabel;
    ppDBText14: TppDBText;
    ppLabel52: TppLabel;
    ppDBText15: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape7: TppShape;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText40: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel58: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape12: TppShape;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    TreeViewISemCod: TTreeViewItem;
    Image6: TImage;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLine10: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure cbxRacaChange(Sender: TObject);
    procedure cbxCategoriaChange(Sender: TObject);
    procedure cbxCurralPastoChange(Sender: TObject);
    procedure edtIdentificacao1Exit(Sender: TObject);
    procedure edtIdentificacao1KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtSisbovKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtSisbovExit(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure AbreCurrais(idPropriedade:string);
    procedure edtNumMaeKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbxRacaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtIdadeMesesKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtPesoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure cbxCurralPastoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtCarimboKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure TreeViewItem4Click(Sender: TObject);
    procedure TreeViewItem5Click(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure lblmnuClick(Sender: TObject);
    procedure TreeViewComunicadoClick(Sender: TObject);
    procedure edtNumMaeExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure TreeNovoAnimalClick(Sender: TObject);
    procedure tbPrincipalChange(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; const ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure TreeViewISemCodClick(Sender: TObject);
  private
    procedure LimparCampos;
    procedure GeraComunicado(idCom:string);
    procedure GeraAnexoIX(IdCom:string);
    procedure SomarColunasGridForn;
  public
    var
     vIdProdutor,vIdRaca,vIdCategoria,vIdPasto,vIdAnimal,vDataProcEdit :string;
     vEdit:integer;
     dlg : TFrmmsgDlg;
  end;

var
  frmComunicadoNascimento: TfrmComunicadoNascimento;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal, ServiceDB2;

procedure TfrmComunicadoNascimento.AbreCurrais(idPropriedade: string);
begin
 with Pasto,Pasto.SQL do
 begin
   Clear;
   Add('SELECT * FROM CURRAIS WHERE STATUS=1 AND ID_PROPRIEDADE='+frmPrincipal.vIDPropriedadePropria);
   Open;
 end
end;

procedure TfrmComunicadoNascimento.SomarColunasGridForn;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
  Sum1: Double;
  Val1: Double;
  Sum2: Double;
  Val2: Double;
begin
  Sum := 0;
  Sum1:= 0;
  I   := 0;
  for I := 0 to StringGrid2NSCI.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid2NSCI.Cells[6,I],Val) then
    Sum := Sum + Val;
  end;
  if I>0 then
  begin
    lblMediaPeso1.Text       := FormatFloat('####,##.00',(Sum/StringGrid2NSCI.RowCount));
    lblMediaPeso2.Text       := FormatFloat('####,##.00',(Sum/StringGrid2NSCI.RowCount));
  end
  else
  begin
    lblMediaPeso1.Text        := '0.00';
    lblMediaPeso2.Text       := '0.00';
  end;
  lblTotalAnimais1.Text      := intToStr(I);
  lblTotalAnimais2.Text      := intToStr(I);
end;


procedure TfrmComunicadoNascimento.SpeedButton1Click(Sender: TObject);
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
 serviceDB.AbreComunicadoNascimento(vFiltro);
end;

procedure TfrmComunicadoNascimento.SpeedButton5Click(Sender: TObject);
begin
  Label2.Text := 'Comunicado de Nascimento';
  MudarAba(tbiMnu,sender);
end;

procedure TfrmComunicadoNascimento.btnConfirmaClick(Sender: TObject);
var
 vDataProc:string;
begin
 if edtIdadeMeses.Text.Length=0 then
 begin
   MyShowMessage('Informe a Idade em Meses!',false);
   edtIdadeMeses.SetFocus;
   Exit;
 end
 else
 begin
   if strToInt(edtIdadeMeses.Text)>10 then
   begin
     MyShowMessage('Idade maxima para nascimento é 10 meses!!',false);
     Exit;
   end;
 end;
 if(vEdit=0)and(edtSisbov.Text.Length=0)then
 begin
   MyShowMessage('Informe o SISBOV',false);
   Exit;
 end;
 if(cbxRaca.ItemIndex=-1)then
 begin
   MyShowMessage('Informe a Raça',false);
   Exit;
 end;
 if(cbxCategoria.ItemIndex=-1)then
 begin
   MyShowMessage('Informe a Categoria',false);
   Exit;
 end;
 if(cbxCurralPasto.ItemIndex=-1)then
 begin
   MyShowMessage('Informe o Pasto',false);
   Exit;
 end;
 if (vEdit=0)and (edtIdentificacao1.Text.Length>0) then
 begin
   if not serviceDB.VerificaIdentificacaoExit(edtIdentificacao1.Text.QuotedString) then
   begin
     MyShowMessage('Chip Em Uso',false);
     exit;
   end;
 end;
 if (vEdit=0)and(serviceDB.ChecaBrincoEstoque(edtSisbov.Text,vIdProdutor)) then
 begin
  MyShowMessage('SISBOV não localizado no estoque',false);
  exit;
 end;
 vDataProc     :=  FormatDateTime('mm/dd/yyyy',serviceDB.TableComunicadoNascimentoDATA.AsDateTime).QuotedString;
 vDataProcEdit :=  FormatDateTime('mm/dd/yyyy',serviceDB.TableComunicadoNascimentoDATA.AsDateTime);
 try
  if vEdit=0 then
  begin
   serviceDB.InsereAnimalNascimento(
    vIdPasto,
    vIdCategoria,
    vIdRaca,
    edtIdentificacao1.Text,
    edtSisbov.Text,
    vDataProc,
    edtIdadeMeses.Text,
    edtPeso.Text,
    edtPeso.Text,
    vDataProc,
    serviceDB.vIdUserLogado,
    frmPrincipal.vIDPropriedadePropria,
    vIdProdutor,
    'NASCIMENTO',
    serviceDB.TableComunicadoNascimentoid.AsString,
    edtNumMae.Text.QuotedString,
    edtCarimbo.Text.QuotedString);
    LimparCampos;
    serviceDB.qryGridAniNascimento.close;
    serviceDB.qryGridAniNascimento.Open;
    edtSisbov.SetFocus;
   end;
   if vEdit=1 then
   begin
   serviceDB.UPDATEAnimalNascimento(
    vIdAnimal,
    vIdPasto,
    vIdCategoria,
    vIdRaca,
    edtIdentificacao1.Text,
    edtSisbov.Text,
    vDataProcEdit,
    edtIdadeMeses.Text,
    edtPeso.Text,
    edtPeso.Text,
    vDataProcEdit,
    serviceDB.vIdUserLogado,
    frmPrincipal.vIDPropriedadePropria,
    vIdProdutor,
    'NASCIMENTO',
    edtNumMae.Text,
    edtCarimbo.Text);
    LimparCampos;
    serviceDB.qryGridAniNascimento.close;
    serviceDB.qryGridAniNascimento.Open;
    edtSisbov.SetFocus;
   end
 except
  on e : Exception do
    MyShowMessage('Erro ao Inserir Animal: '+e.Message,false)
 end;
 SomarColunasGridForn;
end;

procedure TfrmComunicadoNascimento.btnVoltarPadraoClick(Sender: TObject);
begin
 MudarAba(tbiMnu,sender);
end;

procedure TfrmComunicadoNascimento.cbxCategoriaChange(Sender: TObject);
begin
 if cbxCategoria.ItemIndex>-1 then
  vIdCategoria     := LinkFillControlToFieldNOME2.BindList.GetSelectedValue.AsString;
end;

procedure TfrmComunicadoNascimento.cbxCurralPastoChange(Sender: TObject);
begin
 if cbxCurralPasto.ItemIndex>-1 then
  vIdPasto := LinkFillControlToFieldID2.BindList.GetSelectedValue.AsString;
end;

procedure TfrmComunicadoNascimento.cbxCurralPastoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
 TThread.CreateAnonymousThread(
        procedure
        begin
          TThread.Synchronize( nil,
            procedure
            begin
              edtCarimbo.SetFocus;
            end
          );
        end
        ).Start;
end;

procedure TfrmComunicadoNascimento.cbxProdutorDestinoChange(Sender: TObject);
begin
 if cbxProdutorDestino.ItemIndex>-1 then
  vIdProdutor     := LinkFillControlToFieldNOME.BindList.GetSelectedValue.AsString
end;

procedure TfrmComunicadoNascimento.cbxRacaChange(Sender: TObject);
begin
 if cbxRaca.ItemIndex>-1 then
  vIdRaca     := LinkFillControlToFieldID.BindList.GetSelectedValue.AsString;
end;

procedure TfrmComunicadoNascimento.cbxRacaKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
if key=13 then
 TThread.CreateAnonymousThread(
        procedure
        begin
          TThread.Synchronize( nil,
            procedure
            begin
              cbxCategoria.SetFocus;
            end
          );
        end
        ).Start;
end;

procedure TfrmComunicadoNascimento.edtCarimboKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  btnConfirmaClick(sender);
end;

procedure TfrmComunicadoNascimento.edtIdadeMesesKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
if key=13 then
 TThread.CreateAnonymousThread(
        procedure
        begin
          TThread.Synchronize( nil,
            procedure
            begin
              edtPeso.SetFocus;
            end
          );
        end
        ).Start;
end;

procedure TfrmComunicadoNascimento.edtIdentificacao1Exit(Sender: TObject);
begin
   if edtIdentificacao1.Text.Length>0 then
   begin
     if serviceDB.VerificaIdentificacaoExit(edtIdentificacao1.Text.QuotedString) then
     begin
        TThread.CreateAnonymousThread(
        procedure
        begin
          TThread.Synchronize( nil,
            procedure
            begin
              edtSisbov.SetFocus;
            end
          );
        end
        ).Start;
     end
     else
     begin
       edtIdentificacao1.SetFocus;
       MyShowMessage('Chip Em Uso',false);
       exit;
     end;
   end;
end;

procedure TfrmComunicadoNascimento.edtIdentificacao1KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  edtIdentificacao1Exit(sender);
end;

procedure TfrmComunicadoNascimento.edtNumMaeExit(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        cbxRaca.SetFocus;
      end
    );
  end
  ).Start;
end;

procedure TfrmComunicadoNascimento.edtNumMaeKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
 TThread.CreateAnonymousThread(
        procedure
        begin
          TThread.Synchronize( nil,
            procedure
            begin
              cbxRaca.SetFocus;
            end
          );
        end
        ).Start;

end;

procedure TfrmComunicadoNascimento.edtPesoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
if key=13 then
 TThread.CreateAnonymousThread(
        procedure
        begin
          TThread.Synchronize( nil,
            procedure
            begin
              cbxCurralPasto.SetFocus;
            end
          );
        end
        ).Start;
end;

procedure TfrmComunicadoNascimento.edtSisbovExit(Sender: TObject);
begin
 if edtSisbov.Text.Length>0 then
 begin
  if serviceDB.ChecaBrincoEstoque(edtSisbov.Text,vIdProdutor) then
   begin
    MyShowMessage('SISBOV não localizado no estoque',false);
    exit;
   end
   else
   begin
     TThread.CreateAnonymousThread(
        procedure
        begin
          TThread.Synchronize( nil,
            procedure
            begin
              edtNumMae.SetFocus;
            end
          );
        end
        ).Start;
   end;
  end
end;

procedure TfrmComunicadoNascimento.edtSisbovKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  edtSisbovExit(sender);
end;

procedure TfrmComunicadoNascimento.FormShow(Sender: TObject);
begin
 layNovoComunicado.Visible :=false;
 serviceDB.AbreComunicadoNascimento('');
 serviceDB.qryGridAniNascimento.Open();
 serviceDB.AbreProdutorProprio;
 cbxFiltroProdutor.Items.Clear;
 cbxFiltroProdutor.Items.Add('Todos');
 while not serviceDB.qryProdutorProprio.Eof do
 begin
   cbxFiltroProdutor.Items.Add(serviceDB.qryProdutorProprioNOME.AsString);
   serviceDB.qryProdutorProprio.Next;
 end;
 cbxFiltroProdutor.ItemIndex :=0;
 Raca.Close;
 Raca.Open;
 Categoria.Close;
 Categoria.Open;
 AbreCurrais(frmPrincipal.vIDPropriedadePropria);
 SomarColunasGridForn;
end;

procedure TfrmComunicadoNascimento.GeraAnexoIX(IdCom: string);
begin
 with serviceDB.qryAnexolXNasci,serviceDB.qryAnexolXNasci.SQL do
 begin
   Clear;
   Add('SELECT * FROM');
   Add('(SELECT');
   Add('p.SISBOV,');
   Add('p.MANEJO,');
   Add('p.CAIXA,');
   Add('po.NOME PRODUTOR,');
   Add('ppo.nome propriedades,');
   Add('PO.cpf_cnpj,');
   Add('PPO.cidade||''-''||PPO.uf CidadeUF,');
   Add('PPO.endereco,');
   Add('PPO.IE,');
   Add('pb.QTD_REG_PAGINA,');
   Add('FO.NOME_FANTASIA FABRICANTE,');
   Add('P.ID_PEDIDO IDPEDIDO,');
   Add(' PB.numero_pedido,');
   Add(' PB.data_solicitacao,');
   Add(' PB.tipo,');
   Add(' CE.nome_fantasia CERTIFICADORA_NOME,');
   Add(' coalesce(PPO.nirf,ppo.incra)NirfIncra');
   Add('FROM ESTOQUE_BRINCOS P');
   Add('JOIN PEDIDO_BRINCOS PB ON PB.ID=P.ID_PEDIDO');
   Add('JOIN FORNECEDOR_BRINCOS FO ON FO.ID=PB.ID_FORNECEDOR_BRINCO');
   Add('JOIN PRODUTORES PO ON PO.ID=PB.ID_PRODUTOR');
   Add('JOIN PROPRIEDADES PPO ON PPO.ID=PO.ID_PROPRIEDADE');
   Add('JOIN CERTIFICADORA CE ON CE.id=PB.id_certificadora');
   Add('WHERE CAIXA IN(');
   Add('SELECT DISTINCT ES.CAIXA FROM COMUNICADO_REIDENT_NUMEROS CR');
   Add('JOIN ESTOQUE_BRINCOS ES ON CR.SISBOV_NEW=ES.SISBOV');
   Add('WHERE CR.ID_COMUNICADO=:idCom)AND P.ID_PEDIDO IN(');
   Add('SELECT DISTINCT ES.ID_PEDIDO FROM COMUNICADO_REIDENT_NUMEROS CR');
   Add('JOIN ESTOQUE_BRINCOS ES ON CR.SISBOV_NEW=ES.SISBOV');
   Add('WHERE CR.ID_COMUNICADO=:idCom))y');
   Add('LEFT JOIN');
   Add('(SELECT');
   Add('a.ID_COM_NASCIMENTO ID_COMUNICADO,');
   Add('a.IDENTIFICACAO_2,');
   Add('a.IDADE_MESES,');
   Add('c.SEXO,');
   Add('r.CODIGO_BND,');
   Add(QuotedStr('N')+' Motivo,');
   Add('CAST(a.data_proc AS DATE)DATA_BRINCAGEM,');
   Add(' CAST(a.DATA_NASCIMENTO AS DATE)DN');
   Add('FROM ANIMAL a');
   Add('JOIN categorias C ON C.id=A.id_categoria');
   Add('JOIN RACA R ON R.id=A.id_raca');
   Add('WHERE A.STATUS<>0 AND  ID_COM_NASCIMENTO=:idCom)x');
   Add('ON y.sisbov=x.IDENTIFICACAO_2');
   ParamByName('idCom').AsString :=IdCom;
   Open;
 end;
end;

procedure TfrmComunicadoNascimento.GeraComunicado(idCom: string);
begin
 with serviceDBN.qryComNasci,serviceDBN.qryComNasci.SQL do
 begin
   Clear;
   Add('SELECT');
   Add('AN.IDENTIFICACAO_2,');
   Add('P.NOME PRODUTOR,');
   Add('P.CPF_CNPJ CNPJ_CPF,');
   Add('PP.IE,');
   Add('PP.NOME PROPRIEDADE,');
   Add('PP.COD_ERAS_BND,');
   Add('PP.CIDADE,');
   Add('PP.UF,');
   Add('PP.NIRF,');
   Add('PP.INCRA,');
   Add('CN."DATA",');
   Add('CN.OBSERVACAO');
   Add('FROM ANIMAL AN');
   Add('JOIN PRODUTORES P ON P.ID=AN.ID_PRODUTOR');
   Add('JOIN PROPRIEDADES PP ON PP.ID=P.ID_PROPRIEDADE');
   Add('JOIN COMUNICADO_NASCIMENTO CN ON CN.ID=AN.ID_COM_NASCIMENTO');
   Add('WHERE AN.STATUS>0 AND AN.ID_COM_NASCIMENTO='+idCom);
   Open;
 end;
end;

procedure TfrmComunicadoNascimento.imgCloseClick(Sender: TObject);
begin
 close;
end;

procedure TfrmComunicadoNascimento.imgMenuClick(Sender: TObject);
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

procedure TfrmComunicadoNascimento.lblmnuClick(Sender: TObject);
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

procedure TfrmComunicadoNascimento.LimparCampos;
begin
 cbxRaca.ItemIndex         :=-1;
 cbxCategoria.ItemIndex    :=-1;
 cbxCurralPasto.ItemIndex  :=-1;
 edtIdadeMeses.Text        :='';
 edtPeso.Text              :='';
 edtIdentificacao1.Text    :='';
 edtNumMae.Text            :='';
 edtCarimbo.Text           :='';
 edtSisbov.Text            :='';
end;

procedure TfrmComunicadoNascimento.MenuItem1Click(Sender: TObject);
begin
 vEdit :=1;
 vIdAnimal                 := serviceDB.qryGridAniNascimentoID.AsString;
 cbxRaca.ItemIndex         := cbxRaca.Items.IndexOf(serviceDB.qryGridAniNascimentoRACA.AsString);
 cbxCategoria.ItemIndex    := cbxCategoria.Items.IndexOf(serviceDB.qryGridAniNascimentoCATEGORIA.AsString);
 cbxCurralPasto.ItemIndex  := cbxCurralPasto.Items.IndexOf(serviceDB.qryGridAniNascimentoLOCAL_ATUAL.AsString);
 edtIdadeMeses.Text        := serviceDB.qryGridAniNascimentoIDADE_MESES.AsString;
 edtPeso.Text              := serviceDB.qryGridAniNascimentoPESO_ENTRADA.AsString;
 edtIdentificacao1.Text    := serviceDB.qryGridAniNascimentoCHIP.AsString;
 edtNumMae.Text            := serviceDB.qryGridAniNascimentoIDENTIFICACAO_MAE.AsString;
 edtCarimbo.Text           := serviceDB.qryGridAniNascimentoCARIMBO_NASCIMENTO.AsString;
 edtSisbov.Text            := serviceDB.qryGridAniNascimentoSISBOV.AsString;
 vIdRaca                   := serviceDB.qryGridAniNascimentoID_RACA.AsString;
 vIdCategoria              := serviceDB.qryGridAniNascimentoID_CATEGORIA.AsString;
 vIdPasto                  := serviceDB.qryGridAniNascimentoID_LOCAL.AsString;
 edtIdentificacao1.Enabled := false;
 edtSisbov.Enabled         := false;
end;

procedure TfrmComunicadoNascimento.MenuItem2Click(Sender: TObject);
begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Deseja Realmente Deletar esse Animal!!';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
       if dlg.vBntConfirmaMsg=1 then
       begin
         try
           serviceDB.InativaAnimal(serviceDB.qryGridAniNascimentoID.AsString);
           LimparCampos;
           serviceDB.qryGridAniNascimento.close;
           serviceDB.qryGridAniNascimento.Open;
           edtSisbov.SetFocus;
           MyShowMessage('Registro Deletado com Sucesso!',false);
          except
          on E : Exception do
           begin
             MyShowMessage('Exception class name = '+E.ClassName,false);
             MyShowMessage('Exception message = '+E.Message,false);
           end;
          end;
       end
    end);
    Exit;
end;

procedure TfrmComunicadoNascimento.Rectangle2Click(Sender: TObject);
begin
if cbxProdutorDestino.ItemIndex=-1 then
 begin
   MyShowMessage('Selecione o Produtor',false);
   Exit;
 end;
 if edtDataComNascimento.Text.Length=0 then
 begin
   MyShowMessage('Informe a Data',false);
   Exit;
 end;
 serviceDB.TableComunicadoNascimentoID_PRODUTOR.AsString := vIdProdutor;
 serviceDB.TableComunicadoNascimentoDATA.AsDateTime       := edtDataComNascimento.Date;
 serviceDB.TableComunicadoNascimentoID_USUARIO.AsString  := serviceDB.vIdUserLogado;
 if serviceDB.TableComunicadoNascimento.State=dsInsert then
  serviceDB.TableComunicadoNascimentoNUMERO.AsString      := serviceDB.RetornaNumeroComNasci(frmPrincipal.vIDPropriedadePropria);
 serviceDB.TableComunicadoNascimentoOBSERVACAO.AsString  := edtObs.Text;
 try
   serviceDB.TableComunicadoNascimento.ApplyUpdates(-1);
   MyShowMessage('Comunicado Gerado com Sucesso!',false);
   serviceDB.TableComunicadoNascimento.Close;
   serviceDB.TableComunicadoNascimento.Open;
   cbxProdutorDestino.ItemIndex :=-1;
   edtObs.Text :='';
   layNovoComunicado.Visible := false;
 finally

 end;
end;

procedure TfrmComunicadoNascimento.Rectangle6Click(Sender: TObject);
begin
 layNovoComunicado.Visible :=false;
end;

procedure TfrmComunicadoNascimento.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
 vIdProdutor := serviceDB.TableComunicadoNascimentoID_PRODUTOR.AsString;
 if vIdProdutor.Length>0 then
  Rectangle1.Enabled        := true;
 SomarColunasGridForn;
end;

procedure TfrmComunicadoNascimento.StringGrid1SelectCell(Sender: TObject;
  const ACol, ARow: Integer; var CanSelect: Boolean);
begin
 SomarColunasGridForn;
end;

procedure TfrmComunicadoNascimento.tbPrincipalChange(Sender: TObject);
begin
 case tbPrincipal.TabIndex of
  0:Label2.Text :='Comunicado de Nascimento';
  1:Label2.Text :='Novo Animal Nascimento';
  2:Label2.Text :='Lista de Animais Nascimento'
 end;
end;

procedure TfrmComunicadoNascimento.TreeItemEditarClick(Sender: TObject);
begin
 serviceDB.TableComunicadoNascimento.Edit;
 vIdProdutor               := serviceDB.TableComunicadoNascimentoID_PRODUTOR.AsString;
 edtDataComNascimento.Date := serviceDB.TableComunicadoNascimentoDATA.AsDateTime;
 serviceDB.vIdUserLogado   := serviceDB.TableComunicadoNascimentoID_USUARIO.AsString;
 edtObs.Text               := serviceDB.TableComunicadoNascimentoOBSERVACAO.AsString;
 layNovoComunicado.Visible := true;
end;

procedure TfrmComunicadoNascimento.TreeItemNovoClick(Sender: TObject);
begin
 edtIdentificacao1.Enabled := true;
 edtSisbov.Enabled         := true;
 cbxProdutorDestino.ItemIndex :=-1;
 edtObs.Text :='';
 serviceDB.TableComunicadoNascimento.Close;
 serviceDB.TableComunicadoNascimento.Open;
 serviceDB.TableComunicadoNascimento.Insert;
 layNovoComunicado.Visible :=true;
end;

procedure TfrmComunicadoNascimento.TreeNovoAnimalClick(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        Label2.Text           :='Animais Comunicado Nascimento : '+serviceDB.TableComunicadoNascimentoID.AsString;
        SomarColunasGridForn;
        MudarAba(tbiCad,sender);;
      end
    );
  end
  ).Start;
end;

procedure TfrmComunicadoNascimento.TreeViewComunicadoClick(Sender: TObject);
begin
 if TreeViewComunicado.IsExpanded then
  TreeViewComunicado.IsExpanded := false
 else
  TreeViewComunicado.IsExpanded := true;
end;

procedure TfrmComunicadoNascimento.TreeViewISemCodClick(Sender: TObject);
begin
 GeraAnexoIX(serviceDB.TableComunicadoNascimentoID.AsString);
 ppDetailBand3.PrintCount :=  serviceDB.qryAnexolXNasciQTD_REG_PAGINA.AsInteger;
 ppReportAnexoIXSemCod.Print;
end;

procedure TfrmComunicadoNascimento.TreeViewItem1Click(Sender: TObject);
begin
 vEdit :=0;
 LimparCampos;
 MudarAba(tbiCad,Sender);
end;

procedure TfrmComunicadoNascimento.TreeViewItem2Click(Sender: TObject);
begin
 vEdit :=1;
 vIdAnimal                 := serviceDB.qryGridAniNascimentoID.AsString;
 cbxRaca.ItemIndex         := cbxRaca.Items.IndexOf(serviceDB.qryGridAniNascimentoRACA.AsString);
 cbxCategoria.ItemIndex    := cbxCategoria.Items.IndexOf(serviceDB.qryGridAniNascimentoCATEGORIA.AsString);
 cbxCurralPasto.ItemIndex  := cbxCurralPasto.Items.IndexOf(serviceDB.qryGridAniNascimentoLOCAL_ATUAL.AsString);
 edtIdadeMeses.Text        := serviceDB.qryGridAniNascimentoIDADE_MESES.AsString;
 edtPeso.Text              := serviceDB.qryGridAniNascimentoPESO_ENTRADA.AsString;
 edtIdentificacao1.Text    := serviceDB.qryGridAniNascimentoCHIP.AsString;
 edtNumMae.Text            := serviceDB.qryGridAniNascimentoIDENTIFICACAO_MAE.AsString;
 edtCarimbo.Text           := serviceDB.qryGridAniNascimentoCARIMBO_NASCIMENTO.AsString;
 edtSisbov.Text            := serviceDB.qryGridAniNascimentoSISBOV.AsString;
 vIdRaca                   := serviceDB.qryGridAniNascimentoID_RACA.AsString;
 vIdCategoria              := serviceDB.qryGridAniNascimentoID_CATEGORIA.AsString;
 vIdPasto                  := serviceDB.qryGridAniNascimentoID_LOCAL.AsString;
 edtIdentificacao1.Enabled := false;
 edtSisbov.Enabled         := false;
 MudarAba(tbiCad,sender);
end;

procedure TfrmComunicadoNascimento.TreeViewItem3Click(Sender: TObject);
begin
  dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Deseja Realmente Deletar esse Animal!!';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
       if dlg.vBntConfirmaMsg=1 then
       begin
             try
               serviceDB.InativaAnimal(serviceDB.qryGridAniNascimentoID.AsString);
               LimparCampos;
               serviceDB.qryGridAniNascimento.close;
               serviceDB.qryGridAniNascimento.Open;
               edtSisbov.SetFocus;
               MyShowMessage('Registro Deletado com Sucesso!',false);
              except
              on E : Exception do
               begin
                 MyShowMessage('Exception class name = '+E.ClassName,false);
                 MyShowMessage('Exception message = '+E.Message,false);
               end;
              end;
       end
    end);
    Exit;
    SomarColunasGridForn;
end;

procedure TfrmComunicadoNascimento.TreeViewItem4Click(Sender: TObject);
begin
 if lblTotalAnimais1.Text='0' then
 begin
   MyShowMessage('Comunicado sem Animais!',false);
   Exit;
 end;
 GeraComunicado(serviceDB.TableComunicadoNascimentoID.AsString);
  serviceDBN.ppLBLTotalAnimais.Text := intToStr(serviceDBN.qryComNasci.RecordCount);
 serviceDBN.ppReportComunicado.Print;
end;

procedure TfrmComunicadoNascimento.TreeViewItem5Click(Sender: TObject);
begin
 GeraAnexoIX(serviceDB.TableComunicadoNascimentoID.AsString);
 ppDetailBand2.PrintCount :=  serviceDB.qryAnexolXNasciQTD_REG_PAGINA.AsInteger;
 ppReportAnexoIX.Print;
end;

end.
