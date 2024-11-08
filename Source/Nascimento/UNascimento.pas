unit UNascimento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.DateTimeCtrls, FMX.StdCtrls, FMX.TreeView, FMX.Layouts,
  FMX.ScrollBox, FMX.Grid, FMX.Effects, FMX.ListBox, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, FMX.TabControl, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ActnList, System.Actions,UMsgDlg;

type
  TfrmNascimento = class(TForm)
    tbPrincipal: TTabControl;
    tbiCad: TTabItem;
    layCad: TLayout;
    ToolBar3: TToolBar;
    btnVoltarPadrao: TSpeedButton;
    ImageVoltaPadrao: TImage;
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
    Layout1100000000: TLayout;
    Rectangle3000000: TRectangle;
    Layout12000000000: TLayout;
    Layout13000000000: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblLote: TLabel;
    Label80000000000: TLabel;
    Label5: TLabel;
    cbxRaca: TComboBox;
    cbxCategoria: TComboBox;
    edtIdadeMeses: TEdit;
    edtPeso: TEdit;
    cbxCurralPasto: TComboBox;
    edtCarimbo: TEdit;
    Á: TShadowEffect;
    Layout9000000000000: TLayout;
    Rectangle2NSCI: TRectangle;
    O: TLayout;
    Layout17000000000: TLayout;
    Label300000000000: TLabel;
    Label4000000000: TLabel;
    Label3: TLabel;
    edtIdentificacao1: TEdit;
    edtNumMae: TEdit;
    edtSisbov: TEdit;
    ShadowEffect11: TShadowEffect;
    Layout10: TLayout;
    Layout40: TLayout;
    Layout41: TLayout;
    tbiAnimais: TTabItem;
    Layout1: TLayout;
    layMnu: TLayout;
    Rectangle1NSCI: TRectangle;
    TreeView1: TTreeView;
    TreeItemNovo: TTreeViewItem;
    Image6: TImage;
    TreeItemEditar: TTreeViewItem;
    Image9: TImage;
    TreeItemExcluir: TTreeViewItem;
    Image10: TImage;
    ShadowEffect2: TShadowEffect;
    Layout4: TLayout;
    Rectangle3: TRectangle;
    Label7: TLabel;
    Layout6: TLayout;
    Image20: TImage;
    Label14: TLabel;
    SpeedButton5: TSpeedButton;
    Image7: TImage;
    Layout7: TLayout;
    Rectangle5: TRectangle;
    GroupBox2: TGroupBox;
    edtFiltraAnimal: TEdit;
    Label15: TLabel;
    Layout1NSCI: TLayout;
    StringGrid3NSCI: TStringGrid;
    Layout29: TLayout;
    Rectangle34: TRectangle;
    Label6: TLabel;
    lblTotalAnimais: TLabel;
    Label16: TLabel;
    lblMediaPeso: TLabel;
    Label49: TLabel;
    lblMediaPesoProj: TLabel;
    Layout9: TLayout;
    Rectangle7: TRectangle;
    Layout11: TLayout;
    Layout12: TLayout;
    Label17: TLabel;
    Layout13: TLayout;
    Layout14: TLayout;
    Label18: TLabel;
    DateEdit1: TDateEdit;
    Label19: TLabel;
    ComboBox1: TComboBox;
    ToolBar1: TToolBar;
    SpeedButton3: TSpeedButton;
    Image24: TImage;
    SpeedButton4: TSpeedButton;
    Image25: TImage;
    Label20: TLabel;
    Edit2: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToFieldID2: TLinkFillControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToFieldID3: TLinkFillControlToField;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    Layout5: TLayout;
    Layout8: TLayout;
    Label1: TLabel;
    Label4: TLabel;
    ShadowEffect1: TShadowEffect;
    Layout15: TLayout;
    Layout16: TLayout;
    Layout17: TLayout;
    cbxProdutorDestino: TComboBox;
    edtDataComNascimento: TDateEdit;
    BindSourceDB5: TBindSourceDB;
    LinkFillControlToFieldID4: TLinkFillControlToField;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label2: TLabel;
    edtFDataEntDE: TDateEdit;
    Label8: TLabel;
    chkPeriodoProc: TCheckBox;
    btnFiltar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure cbxRacaChange(Sender: TObject);
    procedure cbxCategoriaChange(Sender: TObject);
    procedure cbxCurralPastoChange(Sender: TObject);
    procedure edtIdentificacao1KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtSisbovKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtNumMaeKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbxCategoriaKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbxRacaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtIdadeMesesKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtPesoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure cbxCurralPastoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
  private
    dlg   : TFrmmsgDlg;
    vEdit :integer;
    vIdAnimal,vIdRaca,vIdPasto,vIdCategoria,
    vDataProc,vDataProcEdit,vIdProdutor:string;
    procedure LimparCampos;
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
    procedure SomarColunasGridForn;
  public

  end;

var
  frmNascimento: TfrmNascimento;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB;

procedure TfrmNascimento.btnCancelarClick(Sender: TObject);
begin
 LimparCampos;
 MudarAba(tbiAnimais,sender);
end;

procedure TfrmNascimento.btnConfirmaClick(Sender: TObject);
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
 if (vEdit=0)and (edtSisbov.Text.Length>0) then
 begin
   if not serviceDB.VerificaIdentificacaoExit(edtSisbov.Text.QuotedString) then
   begin
     MyShowMessage('NCF Em Uso',false);
     exit;
   end;
 end;
 vDataProc     :=  FormatDateTime('mm/dd/yyyy',edtDataComNascimento.Date );
 vDataProcEdit :=  FormatDateTime('mm/dd/yyyy',edtDataComNascimento.Date);
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
     '0',
     edtNumMae.Text.QuotedString,
     edtCarimbo.Text.QuotedString);
     LimparCampos;
     edtSisbov.SetFocus;
     MyShowMessage('Nascimento Inserido com Sucesso!',false);
     serviceDB.AbreAnimaisNascimento(serviceDB.vIdPropriedade,'');
     SomarColunasGridForn;
     MudarAba(tbiAnimais,sender);
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
     edtSisbov.SetFocus;
     MyShowMessage('Nascimento Atualizado com Sucesso!',false);
     serviceDB.AbreAnimaisNascimento(serviceDB.vIdPropriedade,'');
     SomarColunasGridForn;
     MudarAba(tbiAnimais,sender);
   end
 except
  on e : Exception do
    MyShowMessage('Erro ao Inserir Animal: '+e.Message,false)
 end;
end;

procedure TfrmNascimento.btnFiltarClick(Sender: TObject);
var
 vFiltro:string;
begin
 if edtFiltraAnimal.Text.Length>0 then
   vFiltro := vFiltro+' AND A.IDENTIFICACAO_2='+edtFiltraAnimal.Text;
 if chkPeriodoProc.IsChecked then
   vFiltro := vFiltro+' AND A.DATA_PROC BETWEEN '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date));
 serviceDB.AbreAnimaisNascimento(serviceDB.vIdPropriedade,vFiltro);
 SomarColunasGridForn;
end;

procedure TfrmNascimento.btnVoltarPadraoClick(Sender: TObject);
begin
 LimparCampos;
 MudarAba(tbiAnimais,sender);
end;

procedure TfrmNascimento.cbxCategoriaChange(Sender: TObject);
begin
 if cbxCategoria.ItemIndex>-1 then
  vIdCategoria     := LinkFillControlToFieldID2.BindList.GetSelectedValue.AsString;
end;

procedure TfrmNascimento.cbxCategoriaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
   if key=13 then
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize( nil,
     procedure
     begin
       edtIdadeMeses.SetFocus;
     end);
   end).Start;
end;

procedure TfrmNascimento.cbxCurralPastoChange(Sender: TObject);
begin
 if cbxCurralPasto.ItemIndex>-1 then
  vIdPasto := LinkFillControlToFieldID3.BindList.GetSelectedValue.AsString;
end;

procedure TfrmNascimento.cbxCurralPastoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize( nil,
     procedure
     begin
       edtCarimbo.SetFocus;
     end);
   end).Start;
end;

procedure TfrmNascimento.cbxProdutorDestinoChange(Sender: TObject);
begin
 if cbxProdutorDestino.ItemIndex>-1 then
  vIdProdutor     := LinkFillControlToFieldID4.BindList.GetSelectedValue.AsString
end;

procedure TfrmNascimento.cbxRacaChange(Sender: TObject);
begin
 if cbxRaca.ItemIndex>-1 then
  vIdRaca     := LinkFillControlToFieldID.BindList.GetSelectedValue.AsString;
end;

procedure TfrmNascimento.cbxRacaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
   if key=13 then
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize( nil,
     procedure
     begin
       cbxCategoria.SetFocus;
     end);
   end).Start;
end;

procedure TfrmNascimento.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
 edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

procedure TfrmNascimento.edtIdadeMesesKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize( nil,
     procedure
     begin
       edtPeso.SetFocus;
     end);
   end).Start;
end;

procedure TfrmNascimento.edtIdentificacao1KeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize( nil,
     procedure
     begin
       edtSisbov.SetFocus;
     end);
   end).Start;
end;

procedure TfrmNascimento.edtNumMaeKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=13 then
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize( nil,
     procedure
     begin
       cbxRaca.SetFocus;
     end);
   end).Start;
end;

procedure TfrmNascimento.edtPesoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize( nil,
     procedure
     begin
       cbxCurralPasto.SetFocus;
     end);
   end).Start;
end;

procedure TfrmNascimento.edtSisbovKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize( nil,
     procedure
     begin
       edtNumMae.SetFocus;
     end);
   end).Start;
end;

procedure TfrmNascimento.FormShow(Sender: TObject);
begin
   tbPrincipal.TabPosition := TTabPosition.None;
   tbPrincipal.ActiveTab   := tbiAnimais;
   TThread.CreateAnonymousThread(
   procedure
   begin
     serviceDB.AbreQryCurrais(frmPrincipal.vIDPropriedadePropria,'');
     serviceDB.AbreProdutorProprio;
     serviceDB.TableRacas.Close;
     serviceDB.TableRacas.Open;
     serviceDB.TableCategorias.Close;
     serviceDB.TableCategorias.Open;
     TThread.Synchronize( nil,
     procedure
     begin
      serviceDB.AbreAnimaisNascimento(serviceDB.vIdPropriedade,'');
      SomarColunasGridForn;
     end);
   end).Start;
end;
procedure TfrmNascimento.Image20Click(Sender: TObject);
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


procedure TfrmNascimento.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmNascimento.LimparCampos;
begin
 cbxRaca.ItemIndex            :=-1;
 cbxCategoria.ItemIndex       :=-1;
 cbxCurralPasto.ItemIndex     :=-1;
 edtIdadeMeses.Text           :='';
 edtPeso.Text                 :='';
 edtIdentificacao1.Text       :='';
 edtNumMae.Text               :='';
 edtCarimbo.Text              :='';
 edtSisbov.Text               :='';
 cbxProdutorDestino.ItemIndex :=-1;
end;

procedure TfrmNascimento.TreeItemEditarClick(Sender: TObject);
begin
 vEdit :=1;
 vIdAnimal                     := serviceDB.TableAnimaisNasimentoID.AsString;
 cbxRaca.ItemIndex             := cbxRaca.Items.IndexOf(serviceDB.TableAnimaisNasimentoRACA.AsString);
 cbxCategoria.ItemIndex        := cbxCategoria.Items.IndexOf(serviceDB.TableAnimaisNasimentoCATEGORIA.AsString);
 cbxCurralPasto.ItemIndex      := cbxCurralPasto.Items.IndexOf(serviceDB.TableAnimaisNasimentoLOCAL.AsString);
 edtIdadeMeses.Text            := serviceDB.TableAnimaisNasimentoIDADE_MESES.AsString;
 edtPeso.Text                  := serviceDB.TableAnimaisNasimentoPESO_ENTRADA.AsString;
 edtIdentificacao1.Text        := serviceDB.TableAnimaisNasimentoIDENTIFICACAO_1.AsString;
 edtNumMae.Text                := serviceDB.TableAnimaisNasimentoIDENTIFICACAO_MAE.AsString;
 edtCarimbo.Text               := serviceDB.TableAnimaisNasimentoCARIMBO_NASCIMENTO.AsString;
 edtSisbov.Text                := serviceDB.TableAnimaisNasimentoIDENTIFICACAO_2.AsString;
 vIdRaca                       := serviceDB.TableAnimaisNasimentoID_RACA.AsString;
 vIdCategoria                  := serviceDB.TableAnimaisNasimentoID_CATEGORIA.AsString;
 vIdPasto                      := serviceDB.TableAnimaisNasimentoID_LOCAL.AsString;
 vIdProdutor                   := serviceDB.TableAnimaisNasimentoID_PRODUTOR.AsString;
 cbxProdutorDestino.ItemIndex  := cbxProdutorDestino.Items.IndexOf(serviceDB.TableAnimaisNasimentoPRODUTOR.AsString);
 edtIdentificacao1.Enabled     := false;
 edtSisbov.Enabled             := false;
 MudarAba(tbiCad,sender);
end;

procedure TfrmNascimento.MyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TfrmNascimento.TreeItemExcluirClick(Sender: TObject);
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
               serviceDB.InativaAnimal(serviceDB.TableAnimaisNasimentoID.AsString);
               LimparCampos;
               serviceDB.AbreAnimaisNascimento(serviceDB.vIdPropriedade,'');
               SomarColunasGridForn;
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

procedure TfrmNascimento.SomarColunasGridForn;
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
  for I := 0 to StringGrid3NSCI.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid3NSCI.Cells[6,I],Val) then
    Sum := Sum + Val;
  end;
  if I>0 then
    lblMediaPeso.Text        := FormatFloat('####,##.00',(Sum/StringGrid3NSCI.RowCount))
  else
    lblMediaPeso.Text        := '0.00';
  lblTotalAnimais.Text       := intToStr(I);
end;

procedure TfrmNascimento.SpeedButton5Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmNascimento.TreeItemNovoClick(Sender: TObject);
begin
 vEdit :=0;
 LimparCampos;
 MudarAba(tbiCad,Sender);
end;

end.
