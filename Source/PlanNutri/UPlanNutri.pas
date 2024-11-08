unit UPlanNutri;

interface

uses
    System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.TabControl, FMX.StdCtrls,
  FMX.Effects, FMX.Objects, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts, FMX.Menus, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,System.Win.Registry,
  Fmx.Bind.Grid, Data.Bind.Grid,FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Threading, FMX.EditBox, FMX.SpinBox,
  FMX.DateTimeCtrls, FMX.NumberBox,SHELLAPI,FMX.Platform.Win,FMX.Presentation.Messages,
  Tlhelp32,Windows,Messages, FMX.ActnList, System.Actions, System.ImageList,
  FMX.ImgList, FMX.Memo, FMX.TreeView, FireDAC.Stan.Intf,
  IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP,System.JSON,System.JSON.Writers,System.JSON.Types,
  UCadPadrao, FMX.Ani,FMX.WebBrowser,
  View.WebCharts, Datasnap.Provider, Datasnap.DBClient, Charts.Types,MidasLib;

type
  TfrmCadPlanNutri = class(TfrmCadPadrao)
    Layout5: TLayout;
    Layout6: TLayout;
    Label5: TLabel;
    Layout7: TLayout;
    edtCategoria: TEdit;
    EditButton1: TEditButton;
    BindingsList1: TBindingsList;
    Label7: TLabel;
    Label9: TLabel;
    edtFiltroIdadeMinima: TEdit;
    edtFiltroIdadeMax: TEdit;
    Rectangle3: TRectangle;
    Layout13: TLayout;
    Rectangle6: TRectangle;
    Layout14: TLayout;
    Label11: TLabel;
    Layout15: TLayout;
    Label12: TLabel;
    edtRacaFiltro: TEdit;
    recProjecao: TRectangle;
    Layout9: TLayout;
    Rectangle2: TRectangle;
    Label10: TLabel;
    WebCharts1: TWebCharts;
    cdsProjecaoGTP: TClientDataSet;
    qryProjecaoGTP: TFDQuery;
    dspProjecaoGTP: TDataSetProvider;
    dspProjecaoConsumo: TDataSetProvider;
    qryProjecaoConsumo: TFDQuery;
    cdsProjecaoConsumo: TClientDataSet;
    qryProjecaoGTPLabel: TStringField;
    qryProjecaoGTPValue: TFMTBCDField;
    qryProjecaoGTPRGB: TStringField;
    qryProjecaoConsumoLabel: TStringField;
    qryProjecaoConsumoValue: TFMTBCDField;
    qryProjecaoConsumoRGB: TStringField;
    cdsProjecaoGTPLabel: TStringField;
    cdsProjecaoGTPValue: TFMTBCDField;
    cdsProjecaoGTPRGB: TStringField;
    cdsProjecaoConsumoLabel: TStringField;
    cdsProjecaoConsumoValue: TFMTBCDField;
    cdsProjecaoConsumoRGB: TStringField;
    layTipoEntradas: TLayout;
    Rectangle50: TRectangle;
    Image24: TImage;
    ShadowEffect48: TShadowEffect;
    Layout25: TLayout;
    Layout26: TLayout;
    Label21: TLabel;
    Layout8: TLayout;
    edtNomeFase: TEdit;
    Layout55: TLayout;
    Rectangle15: TRectangle;
    Label31: TLabel;
    Layout56: TLayout;
    Image13: TImage;
    Label22: TLabel;
    Label24: TLabel;
    cbxMesIni: TComboBox;
    cbxMesFim: TComboBox;
    StringGrid2: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Layout10: TLayout;
    Layout12: TLayout;
    layAddFase: TLayout;
    Layout17: TLayout;
    ShadowEffect1: TShadowEffect;
    bntAddFase: TRectangle;
    Layout18: TLayout;
    Image9: TImage;
    Label23: TLabel;
    ShadowEffect2: TShadowEffect;
    Rectangle8: TRectangle;
    Layout16: TLayout;
    Image3: TImage;
    Label25: TLabel;
    ShadowEffect3: TShadowEffect;
    TreeView1: TTreeView;
    TreeNovaFase: TTreeViewItem;
    Image4: TImage;
    TreeViewItem2: TTreeViewItem;
    Image6: TImage;
    TreeInativaFase: TTreeViewItem;
    Image7: TImage;
    Rectangle7: TRectangle;
    Label28: TLabel;
    edtRaca: TEdit;
    btnBuscaRaca: TEditButton;
    edtMineral: TEdit;
    EditButton3: TEditButton;
    Label29: TLabel;
    edtFiltroMineral: TEdit;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Layout1: TLayout;
    Rectangle5: TRectangle;
    Layout3: TLayout;
    GridFases: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    StringGrid3: TStringGrid;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    StringColumn2: TStringColumn;
    StringColumn1: TStringColumn;
    StringColumnGMG: TFloatColumn;
    StringColumnFase: TStringColumn;
    procedure EditButton1Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtCategoriaClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure edtFiltroIdadeMinimaKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtFiltroIdadeMaxKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscaRacaClick(Sender: TObject);
    procedure edtRacaClick(Sender: TObject);
    procedure edtIdadeMINKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure imgCloseClick(Sender: TObject);
    procedure edtConsumoEstimadoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure bntAddFaseClick(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure TreeNovaFaseClick(Sender: TObject);
    procedure TreeInativaFaseClick(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure StringGrid2CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure StringGrid1EditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure edtFaseChangeTracking(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFaseAnoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtFiltroMineralChangeTracking(Sender: TObject);
    procedure GeraGridFases;
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure StringGrid3EditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);

  private
    { Private declarations }
    var
     WebBrowser1 :TWebBrowser;
     vIdFase:string;
    procedure Filtro;
    procedure LimpaCampos;
  public
    vIdCategoria,vIdRaca,vClickGrid :integer;
    vIdSuplemento:String;
    procedure AbreQryProjecao(vID:integer);
    procedure GeraGrid;
  end;

var
  frmCadPlanNutri: TfrmCadPlanNutri;

implementation

{$R *.fmx}

uses UServiceDB, UCadCategoria, UCadRaca, UMsgDlg, UPrincipal,
  USuplementoMineral, ServiceDB2;

procedure TfrmCadPlanNutri.AbreQryProjecao(vID: integer);
begin
end;

procedure TfrmCadPlanNutri.bntAddFaseClick(Sender: TObject);
begin
 if edtNomeFase.Text.Length=0 then
 begin
   myShowMessage('Informe o Nome da Fase',false);
   Exit;
 end
 else
 begin
   if not(serviceDB.VerificaNomeFaseExiste(edtNomeFase.Text)) then
   begin
     myShowMessage('Já existe uma fase com esse nome!',false);
     Exit;
   end;
 end;
 if cbxMesFim.ItemIndex =0  then
 begin
   myShowMessage('Informe o mes final da fase!',false);
   Exit;
 end;
 serviceDB.FASESNOME.AsString        := edtNomeFase.Text;
 serviceDB.FASESMES_INICIO.AsInteger := cbxMesIni.ItemIndex;
 serviceDB.FASESMES_FIM.AsInteger    := cbxMesFim.ItemIndex;
 serviceDB.FASESID_USUARIO.AsString  := serviceDB.vIdUserLogado;
 try
  serviceDB.FASES.ApplyUpdates(-1);
  serviceDB.FASES.Close;
  serviceDB.FASES.Open;
  layAddFase.Visible := false;
 except
   on E : Exception do
    myShowMessage('Erro ao inserir Fase : '+E.Message,false);
 end;
end;

procedure TfrmCadPlanNutri.btnBuscaRacaClick(Sender: TObject);
begin
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
  frmCadRacas := TfrmCadRacas.Create(nil);
  try
    frmCadRacas.ShowModal;
  finally
    edtRaca.text         := serviceDB.TableRacasNOME.AsString;
    vIdRaca              := serviceDB.TableRacasID.AsInteger;
    frmCadRacas.Free;
  end;
end;

procedure TfrmCadPlanNutri.btnCancelarClick(Sender: TObject);
begin
  serviceDB.AbrirPlanejamento('');
  inherited;

end;

procedure TfrmCadPlanNutri.btnConfirmaClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
  vIdPla:string;
  I:integer;
begin
  if edtCategoria.Text.Length=0 then
  begin
   dlg := TFrmmsgDlg.Create(nil);
   dlg.Position := TFormPosition.ScreenCenter;
   dlg.msg.Text := 'Infome a Categoria!';
   dlg.lblBtnConfirm.Text := 'Ok';
   dlg.btnCancel.Visible := false;
   dlg.ShowModal(
   procedure(ModalResult: TModalResult)
   begin
     edtCategoria.SetFocus;
   end);
   Exit;
  end;
  try
   if serviceDBN.PlanejamentoNutricional.State=dsInsert then
   begin
       serviceDB.InserePlanNutri(
        serviceDB.vIdUserLogado,
        intToStr(vIdCategoria),
        intToStr(vIdRaca),
        '0',
        '0',
        'NULL',
        'NULL',
        'NULL',
        vIdSuplemento);

        vIdPla := serviceDBN.RetornaMaxIDPlanejamento;

        for I := 0 to GridFases.RowCount-1 do
        begin
           serviceDBN.DET_FASE_PLAN.Close;
           serviceDBN.DET_FASE_PLAN.Open;
           serviceDBN.DET_FASE_PLAN.Insert;
            serviceDBN.DET_FASE_PLANID_PLANEJAMENTO.AsString :=vIdPla;
            serviceDBN.DET_FASE_PLANID_FASE.AsString         := GridFases.Cells[3,I];
            serviceDBN.DET_FASE_PLANCONSUMO_PV.AsString      := GridFases.Cells[2,I];
            serviceDBN.DET_FASE_PLANGMD.AsString             := GridFases.Cells[1,I];
            serviceDBN.DET_FASE_PLANID_USUARIO.AsString      := serviceDB.vIdUserLogado;
           serviceDBN.DET_FASE_PLAN.ApplyUpdates(-1);
        end;
   end;
   if serviceDBN.PlanejamentoNutricional.State=dsEdit then
   begin
     serviceDB.UpdatePlanNutri(
     serviceDBN.PlanejamentoNutricionalID.AsString,
     serviceDB.vIdUserLogado,
     intToStr(vIdCategoria),
     intToStr(vIdRaca),
     'NULL',
     'NULL',
     'NULL',
     'NULL',
     'NULL',
     vIdSuplemento);
   end;
   myShowMessage('Planejamento Cadastrado com sucesso!!',false);
   serviceDB.fCon.Commit;
   serviceDB.AbrirPlanejamento('');
   serviceDBN.DET_FASE_PLAN.Open();
   GeraGrid;
   MudarAba(tbiMnu,Sender);
   except
   on E : Exception do
     begin
       myShowMessage('Erro ao inserir Planejamento : '+E.Message,false);
     end;
   end;
end;

procedure TfrmCadPlanNutri.edtIdadeMINKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadPlanNutri.EditButton1Click(Sender: TObject);
begin
  serviceDB.TableCategorias.Close;
  serviceDB.TableCategorias.Open;
  frmCadCategoria := TfrmCadCategoria.Create(nil);
  try
    frmCadCategoria.ShowModal;
  finally
    edtCategoria.text            := serviceDB.TableCategoriasNOME.AsString;
    vIdCategoria                 := serviceDB.TableCategoriasID.AsInteger;
    edtRaca.SetFocus;
    frmCadCategoria.Free;
  end;
end;

procedure TfrmCadPlanNutri.EditButton2Click(Sender: TObject);
begin
 serviceDB.FASES.Close;
 serviceDB.FASES.Open;
 layTipoEntradas.Visible := true;
end;

procedure TfrmCadPlanNutri.EditButton3Click(Sender: TObject);
var
 I:integer;
begin
  serviceDB.AbreSuplementoMineral;
  frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(nil);
  try
    frmCadSuplementoMineral.ShowModal;
  finally
    edtMineral.text         := serviceDB.SuplementoMineralNOME.AsString;
    vIdSuplemento           := serviceDB.SuplementoMineralID.AsString;
    if serviceDB.SuplementoMineralINGESTAO_PERCENT_PV.AsString.Length>0 then
    begin
      for I := 0 to GridFases.RowCount-1 do
      begin
       GridFases.Cells[2,I]:= serviceDB.SuplementoMineralINGESTAO_PERCENT_PV.AsString;
      end;
    end;
   frmCadSuplementoMineral.Free;
  end;
end;

procedure TfrmCadPlanNutri.edtCategoriaClick(Sender: TObject);
begin
 EditButton1Click(sender);
 inherited;
end;

procedure TfrmCadPlanNutri.edtConsumoEstimadoKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadPlanNutri.edtFaseAnoClick(Sender: TObject);
begin
 EditButton2Click(sender);
end;

procedure TfrmCadPlanNutri.edtFaseChangeTracking(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadPlanNutri.edtFiltroIdadeMaxKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if not (KeyChar in ['0'..'9']) then
  KeyChar := #0;
end;

procedure TfrmCadPlanNutri.edtFiltroIdadeMinimaKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if not (KeyChar in ['0'..'9']) then
  KeyChar := #0;
end;

procedure TfrmCadPlanNutri.edtFiltroMineralChangeTracking(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadPlanNutri.edtFiltroNameChangeTracking(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmCadPlanNutri.edtRacaClick(Sender: TObject);
begin
 btnBuscaRacaClick(sender);
end;

procedure TfrmCadPlanNutri.Filtro;
var
 vFiltro   :string;
 vFiltrado :integer;
begin
 vFiltro   :='';
 vFiltrado :=0;
 if edtFiltroName.Text.Length>0 then
 begin
   vFiltro := vFiltro+' AND B.NOME LIKE '+ QuotedStr('%'+edtFiltroName.Text+'%');
   vFiltrado :=1;
 end;
 if edtRacaFiltro.Text.Length>0 then
 begin
   vFiltro := vFiltro+'AND C.NOME LIKE '+QuotedStr('%'+edtRacaFiltro.Text+'%');
   vFiltrado :=1;
 end;
 if edtFiltroMineral.Text.Length>0 then
 begin
   vFiltro := vFiltro+'AND SM.NOME LIKE '+ QuotedStr('%'+edtFiltroMineral.Text+'%');
   vFiltrado :=1;
 end;
 if vFiltrado>0 then
   serviceDB.AbrirPlanejamento(vFiltro)
 else
   serviceDB.AbrirPlanejamento('');
 GeraGrid;
end;

procedure TfrmCadPlanNutri.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  serviceDBN.PlanejamentoNutricional.Close;
  inherited;
end;

procedure TfrmCadPlanNutri.FormCreate(Sender: TObject);
begin
//  recProjecao.Visible:=false;
  layAddFase.Visible          := false;
  layTipoEntradas.Visible     := false;
  vClickGrid:=0;
  inherited;
end;

procedure TfrmCadPlanNutri.FormShow(Sender: TObject);
begin
  serviceDB.AbrirPlanejamento('');
  if StringGrid1.Cells[0,StringGrid1.Row].Length>0 then
   serviceDBN.AbreDetFazePlanejamento(StringGrid1.Cells[0,StringGrid1.Row]);
 GeraGrid;
end;

procedure TfrmCadPlanNutri.GeraGrid;
var
 I,X:integer;
begin
   I:=0;
   X:=1;
   serviceDBN.PlanejamentoNutricional.First;
   if not serviceDBN.PlanejamentoNutricional.IsEmpty then
   begin
     while not serviceDBN.PlanejamentoNutricional.Eof do
     begin
       StringGrid1.RowCount     := X;
       StringGrid1.Cells[0,I]   := serviceDBN.PlanejamentoNutricionalID.AsString;
       StringGrid1.Cells[1,I]   := serviceDBN.PlanejamentoNutricionalCATEGORIA.AsString;
       StringGrid1.Cells[2,I]   := serviceDBN.PlanejamentoNutricionalRACA.AsString;
       StringGrid1.Cells[3,I]   := serviceDBN.PlanejamentoNutricionalSUPLEMENTO.AsString;
       inc(i);
       inc(X);
       serviceDBN.PlanejamentoNutricional.Next;
     end;
   end
   else
     StringGrid1.RowCount    := 0;
end;

procedure TfrmCadPlanNutri.GeraGridFases;
var
 I,X:integer;
begin
 serviceDBN.AbrirGMDAno(FormatDateTime('yyyy',date));
 I:=0;
 X:=1;
 while not serviceDBN.GMD_ANUAL_FAZENDA.Eof do
 begin
   GridFases.RowCount     := X;
   GridFases.Cells[0,I]   := serviceDBN.GMD_ANUAL_FAZENDAMES_STR.AsString;
   GridFases.Cells[1,I]   := serviceDBN.GMD_ANUAL_FAZENDAGMD.AsString;
   GridFases.Cells[2,I]   := serviceDB.qryConfigPadraoCONSUMO_PV_PADRAO.AsString;
   GridFases.Cells[3,I]   := serviceDBN.GMD_ANUAL_FAZENDAMES.AsString;
   inc(i);
   inc(X);
   serviceDBN.GMD_ANUAL_FAZENDA.Next;
 end;
end;

procedure TfrmCadPlanNutri.Image13Click(Sender: TObject);
begin
 layTipoEntradas.Visible := false;
end;

procedure TfrmCadPlanNutri.imgCloseClick(Sender: TObject);
begin
  serviceDBN.PlanejamentoNutricional.Filtered:=false;
  serviceDBN.PlanejamentoNutricional.Close;
  serviceDBN.PlanejamentoNutricional.Open;
  Close;
end;

procedure TfrmCadPlanNutri.LimpaCampos;
begin
  edtRaca.Text            :='';
  edtCategoria.Text       :='';
end;

procedure TfrmCadPlanNutri.Rectangle8Click(Sender: TObject);
begin
 layAddFase.Visible := false;
end;

procedure TfrmCadPlanNutri.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

procedure TfrmCadPlanNutri.StringGrid1EditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  try
   serviceDB.UpdatePlanNutriGrid(
    StringGrid1.Cells[0,StringGrid1.Row],
    StringGrid1.Cells[3,StringGrid1.Row],
    StringGrid1.Cells[4,StringGrid1.Row],
    StringGrid1.Cells[5,StringGrid1.Row],
    StringGrid1.Cells[6,StringGrid1.Row]);
    serviceDB.FCon.Commit;
    serviceDBN.PlanejamentoNutricional.Close;
    serviceDBN.PlanejamentoNutricional.Open;
   Filtro;
   serviceDBN.AbreDetFazePlanejamento(StringGrid1.Cells[0,StringGrid1.Row]);
  except
   on E : Exception do
   begin
     myShowMessage('Exception class name = '+E.ClassName,false);
     myShowMessage('Exception message = '+E.Message,false);
   end;
  end;
end;

procedure TfrmCadPlanNutri.StringGrid1SelChanged(Sender: TObject);
begin
 if StringGrid1.Cells[0,StringGrid1.Row].Length>0 then
  serviceDBN.AbreDetFazePlanejamento(StringGrid1.Cells[0,StringGrid1.Row]);
end;

procedure TfrmCadPlanNutri.StringGrid2CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  layTipoEntradas.Visible := false;
end;

procedure TfrmCadPlanNutri.StringGrid3EditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
 serviceDBN.DET_FASE_PLAN.Edit;
  serviceDBN.DET_FASE_PLANGMD.AsString             := StringGrid3.Cells[1,StringGrid3.Row];
  serviceDBN.DET_FASE_PLANCONSUMO_PV.AsString      := StringGrid3.Cells[2,StringGrid3.Row];
 serviceDBN.DET_FASE_PLAN.ApplyUpdates(-1);
end;

procedure TfrmCadPlanNutri.TreeInativaFaseClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja realmente Inativar essa faixa?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      try
       serviceDB.FASES.Edit;
       serviceDB.FASESSTATUS.AsInteger :=-1;
       serviceDB.FASES.ApplyUpdates(-1);
       serviceDB.FASES.Close;
       serviceDB.FASES.Open;
      except
      end;
    end;
  end);
end;

procedure TfrmCadPlanNutri.TreeItemEditarClick(Sender: TObject);
begin
 serviceDB.AbrirPlanejamento('AND A.ID='+StringGrid1.Cells[0,StringGrid1.Row]);
 serviceDBN.PlanejamentoNutricional.Edit;
 edtCategoria.Text       := serviceDBN.PlanejamentoNutricionalCATEGORIA.AsString;
 edtRaca.Text            := serviceDBN.PlanejamentoNutricionalRACA.AsString;
 vIdCategoria            := serviceDBN.PlanejamentoNutricionalID_CATEGORIA.AsInteger;
 vIdRaca                 := serviceDBN.PlanejamentoNutricionalID_RACA.AsInteger;
 edtMineral.text         := serviceDBN.PlanejamentoNutricionalSUPLEMENTO.AsString;
 vIdSuplemento           := serviceDBN.PlanejamentoNutricionalID_MINERAL.AsString;
 edtRaca.Enabled         := false;
 edtCategoria.Enabled    := false;
 inherited;
end;

procedure TfrmCadPlanNutri.TreeItemExcluirClick(Sender: TObject);
begin
  myShowMessage('Deseja Realmente Inativar esse Planejamento?',true);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDBN.PlanejamentoNutricional.Edit;
       serviceDBN.PlanejamentoNutricionalSTATUS.AsInteger :=0;
       serviceDBN.PlanejamentoNutricional.ApplyUpdates(-1);
       serviceDBN.PlanejamentoNutricional.Close;
       serviceDBN.PlanejamentoNutricional.Open;
       myShowMessage('Registro inativado com Sucesso!',false);
      except
      on E : Exception do
       begin
         myShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  2:
   begin
     myShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmCadPlanNutri.TreeItemNovoClick(Sender: TObject);
begin
  serviceDB.qryConfigPadrao.Close;
  serviceDB.qryConfigPadrao.Open;
  serviceDB.qryConfigPadrao.Filtered := false;
  serviceDB.qryConfigPadrao.Filter   := 'ID_PROPRIEDADE='+serviceDB.vIdPropriedade;
  serviceDB.qryConfigPadrao.Filtered := true;

  serviceDBN.PlanejamentoNutricional.Close;
  serviceDBN.PlanejamentoNutricional.Open;
  serviceDBN.PlanejamentoNutricional.Insert;
  edtRaca.Enabled         := true;
  edtCategoria.Enabled    := true;
  GeraGridFases;
  LimpaCampos;
  inherited;
end;

procedure TfrmCadPlanNutri.TreeNovaFaseClick(Sender: TObject);
begin
 if serviceDB.RetornaMesMaxFase<12 then
 begin
   serviceDB.FASES.Close;
   serviceDB.FASES.Open;
   serviceDB.FASES.Insert;
   cbxMesIni.ItemIndex :=serviceDB.RetornaMesMaxFase;
   cbxMesIni.Enabled   := false;
   cbxMesFim.ItemIndex :=0;
   edtNomeFase.Text    :='';
   layAddFase.Visible := true;
 end
 else
 begin
   myShowMessage('Ja foram criadas todas as fases possíveis !',false);
   Exit;
 end;
end;

end.
