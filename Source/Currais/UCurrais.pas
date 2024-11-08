unit UCurrais;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,Data.db,Winapi.Windows,
  FMX.Effects, FMX.ListBox, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.ComboEdit;

type
  TfrmCadCurral = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    lblCadCurralPasto: TLabel;
    Layout1: TLayout;
    GroupBox2: TGroupBox;
    layDados: TLayout;
    TabControlTipo: TTabControl;
    tbiIndividual: TTabItem;
    tbiAutomatico: TTabItem;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Layout11: TLayout;
    edtCapacidade: TEdit;
    edtCodigo: TEdit;
    edtPesoMinimo: TEdit;
    Label11: TLabel;
    edtPesoMaximo: TEdit;
    Label12: TLabel;
    edtLotacao: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout12: TLayout;
    Label7: TLabel;
    Label8: TLabel;
    Layout13: TLayout;
    edtNome2: TEdit;
    edtNumeroIni: TEdit;
    Layout14: TLayout;
    Layout15: TLayout;
    Label13: TLabel;
    Layout16: TLayout;
    edtCapacidade2: TEdit;
    Label9: TLabel;
    edtNumeroFinal: TEdit;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Layout17: TLayout;
    Rectangle7: TRectangle;
    PTIMA: TLayout;
    Image7: TImage;
    Layout18: TLayout;
    Layout19: TLayout;
    Label3: TLabel;
    edtQrCode: TEdit;
    LinkControlToField8: TLinkControlToField;
    Layout20: TLayout;
    Rectangle8: TRectangle;
    Layout21: TLayout;
    Label14: TLabel;
    Label15: TLabel;
    Layout22: TLayout;
    edtLatitude: TEdit;
    edtLongitude: TEdit;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    tbiCadCocho: TTabItem;
    Layout23: TLayout;
    Layout24: TLayout;
    Rectangle9: TRectangle;
    Edit1: TEdit;
    Layout26: TLayout;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    Label30: TLabel;
    ToolBar2: TToolBar;
    Layout44: TLayout;
    Layout45: TLayout;
    Rectangle15: TRectangle;
    Layout46: TLayout;
    Label26: TLabel;
    Layout47: TLayout;
    edtNomeCocho: TEdit;
    Layout48: TLayout;
    Rectangle16: TRectangle;
    Layout49: TLayout;
    Label29: TLabel;
    Layout50: TLayout;
    edtPasto: TEdit;
    Layout25: TLayout;
    TreeView1: TTreeView;
    btnNovoCocho: TTreeViewItem;
    Image6: TImage;
    btnEditaCocho: TTreeViewItem;
    Image10: TImage;
    btnExcluirCocho: TTreeViewItem;
    Image11: TImage;
    Layout27: TLayout;
    Rectangle10: TRectangle;
    Label16: TLabel;
    gridCocho: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    LinkControlToField11: TLinkControlToField;
    edtSave: TEdit;
    Layout28: TLayout;
    Rectangle11: TRectangle;
    Layout29: TLayout;
    Label17: TLabel;
    Layout30: TLayout;
    edtMineral: TEdit;
    btnBuscaMineral: TEditButton;
    B: TLabel;
    edtCustoFixoOp: TEdit;
    Label18: TLabel;
    edtAreaHe: TEdit;
    Layout31: TLayout;
    Rectangle12: TRectangle;
    Layout32: TLayout;
    Image3: TImage;
    Layout33: TLayout;
    Layout34: TLayout;
    lblMetragem: TLabel;
    Label19: TLabel;
    Edit3: TEdit;
    edtCodigoBarras: TEdit;
    LinkControlToFieldTAG: TLinkControlToField;
    Layout35: TLayout;
    Rectangle13: TRectangle;
    Layout36: TLayout;
    Label20: TLabel;
    Layout37: TLayout;
    edtRetiro: TEdit;
    btnBuscarOrigem: TEditButton;
    Layout38: TLayout;
    Rectangle14: TRectangle;
    Layout39: TLayout;
    Label21: TLabel;
    Layout40: TLayout;
    edtRetiroAuto: TEdit;
    EditButton1: TEditButton;
    Label22: TLabel;
    Layout41: TLayout;
    btnConfirmaCocho: TRectangle;
    Layout42: TLayout;
    Image4: TImage;
    Label23: TLabel;
    ShadowEffect2: TShadowEffect;
    btnCancelaCocho: TRectangle;
    Layout43: TLayout;
    Image13: TImage;
    Label24: TLabel;
    ShadowEffect3: TShadowEffect;
    rdIndividual: TCheckBox;
    rdGeral: TCheckBox;
    SpeedButton2: TSpeedButton;
    Image8: TImage;
    Rectangle4: TRectangle;
    Rectangle17: TRectangle;
    cbxRetiro: TComboBox;
    Label25: TLabel;
    edtMetragem: TEdit;
    Label10: TLabel;
    cbxCreepFeed: TComboBox;
    edtTab: TEdit;
    Layout51: TLayout;
    Rectangle19: TRectangle;
    Layout54: TLayout;
    Label32: TLabel;
    Layout55: TLayout;
    Edit4: TEdit;
    edtTagPastoIni: TEdit;
    edtTagPastoFim: TEdit;
    Label33: TLabel;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure imgCloseClick(Sender: TObject);
    procedure btnNovoCochoClick(Sender: TObject);
    procedure btnEditaCochoClick(Sender: TObject);
    procedure btnExcluirCochoClick(Sender: TObject);
    procedure btnBuscaMineralClick(Sender: TObject);
    procedure edtCapacidadeKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtNumeroKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtLatitudeExit(Sender: TObject);
    procedure edtLongitudeExit(Sender: TObject);
    procedure edtCustoFixoOpKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure gridCochoCellDblClick(const Column: TColumn; const Row: Integer);
    procedure btnBuscarOrigemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditButton1Click(Sender: TObject);
    procedure btnConfirmaCochoClick(Sender: TObject);
    procedure rdIndividualChange(Sender: TObject);
    procedure rdGeralChange(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure edtPesoMaximoExit(Sender: TObject);
    procedure edtNumeroFinalExit(Sender: TObject);
    procedure edtCapacidade2Exit(Sender: TObject);
    procedure edtPastoExit(Sender: TObject);
    procedure edtMineralExit(Sender: TObject);
    procedure btnCancelaCochoClick(Sender: TObject);
    procedure cbxRetiroChange(Sender: TObject);
    procedure edtMetragemKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtCapacidadeExit(Sender: TObject);
  private
    vIdPasto:string;
    procedure DelayedSetFocus(control: TControl);
  public
    vIdRetiro,vIdRetiroF : integer;
  end;

var
  frmCadCurral: TfrmCadCurral;

implementation

{$R *.fmx}

uses UCadUsers, UPrincipal,UServiceDB,USuplementoMineral, UMsgDlg, URetiro;
procedure TfrmCadCurral.DelayedSetFocus(control: TControl);
begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
         procedure
         begin
           control.SetFocus;
         end
      );
    end
  ).Start;
end;

procedure TfrmCadCurral.edtMetragemKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadCurral.EditButton1Click(Sender: TObject);
begin
  serviceDB.AbrirRetirosPropriedade;
  frmCadRetiro := TfrmCadRetiro.Create(nil);
  try
    frmCadRetiro.ShowModal;
  finally
    edtRetiroAuto.text           := serviceDB.TableRetiroNOME.AsString;
    vIdRetiro                    := serviceDB.TableRetiroID.AsInteger;
    frmCadRetiro.Free;
  end;
end;

procedure TfrmCadCurral.edtCustoFixoOpKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadCurral.btnBuscaMineralClick(Sender: TObject);
begin
 serviceDB.AbreSuplementoMineral;
 frmPrincipal.vForn:=1;
 frmCadSuplementoMineral := TfrmCadSuplementoMineral.Create(nil);
  try
    frmCadSuplementoMineral.ShowModal;
  finally
    edtMineral.Text                          := serviceDB.SuplementoMineralNOME.AsString;
    serviceDB.TableCochoID_MINERAL.AsInteger := serviceDB.SuplementoMineralID.AsInteger;
    frmCadSuplementoMineral.Free;
  end;
end;

procedure TfrmCadCurral.btnBuscarOrigemClick(Sender: TObject);
begin
  serviceDB.AbrirRetirosPropriedade;
  frmCadRetiro := TfrmCadRetiro.Create(nil);
  try
    frmCadRetiro.ShowModal;
  finally
    edtRetiro.text               := serviceDB.TableRetiroNOME.AsString;
    vIdRetiro                    := serviceDB.TableRetiroID.AsInteger;
    frmCadRetiro.Free;
  end;
end;

procedure TfrmCadCurral.btnCancelaCochoClick(Sender: TObject);
begin
  MudarAba(tbiMnu,sender);
end;

procedure TfrmCadCurral.btnConfirmaClick(Sender: TObject);
var
 I:integer;
 vCodCurral:string;
begin
  edttab.setFocus;
  if rdIndividual.IsChecked then
  begin
    if edtCodigo.Text.Length=0 then
    begin
      MyShowMessage('Informe o nome!!',false);
      edtCodigo.SetFocus;
      Exit;
    end;
    if (edtCapacidade.Text.Length=0) or (edtCapacidade.Text='0') then
    begin
      MyShowMessage('Informe a capacidade!!',false);
      edtCodigo.SetFocus;
      Exit;
    end;
    if serviceDB.TableCurrais.State=dsInsert then
      vCodCurral := serviceDB.VerificaCurralExiste(edtCodigo.Text);
      if vCodCurral.Length=0 then
      begin
           serviceDB.TableCurraisUSER_ID.AsString          :=serviceDB.vIdUserLogado;
           serviceDB.TableCurraisID_PROPRIEDADE.AsString   :=frmPrincipal.vIDPropriedadePropria;
           serviceDB.TableCurraisTIPO.AsString             :='0';
           serviceDB.TableCurraisQRCODE.AsString           :=edtQrCode.Text;
           serviceDB.TableCurraisCODIGO.AsString           :=edtCodigo.Text;
           serviceDB.TableCurraisCAPACIDADE.AsString       :=edtCapacidade.Text;
           serviceDB.TableCurraisPESO_MINIMO.AsString      :=edtPesoMinimo.Text;
           serviceDB.TableCurraisPESO_MAXIMO.AsString      :=edtPesoMaximo.Text;
           serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString   :='0';
           serviceDB.TableCurraisAREA_HECTARES.AsString    :=edtAreaHe.Text;
           if edtRetiro.Text.Length>0 then
            serviceDB.TableCurraisID_RETIRO.AsInteger      := vIdRetiro;
           serviceDB.TableCurraisTAG_INICIO.AsString       := edtTagPastoIni.Text;
           serviceDB.TableCurraisTAG_FIM.AsString          := edtTagPastoFim.Text;
          try
           serviceDB.TableCurrais.ApplyUpdates(-1);
          except
           on e : Exception do
            MyShowMessage('Erro ao Inserir Propriedade: '+e.Message,false)
          end;
      end
      else
      begin
        MyShowMessage('Ja existe um Local com esse nome!! ',false);
        Exit;
      end;
  end;//INDIVIDUAL
  if rdGeral.IsChecked then
  begin
    if edtNome2.Text.Length=0 then
    begin
      MyShowMessage('Informe o nome!!',false);
      edtNome2.SetFocus;
      Exit;
    end;
    if (edtNumeroIni.Text.Length=0) or (edtNumeroIni.Text='0') then
    begin
      MyShowMessage('Informe o Numero Inicial!!',false);
      edtNumeroIni.SetFocus;
      Exit;
    end;
    if (edtNumeroFinal.Text.Length=0) or (edtNumeroFinal.Text='0') then
    begin
      MyShowMessage('Informe o Numero Final!!',false);
      edtNumeroFinal.SetFocus;
      Exit;
    end;
    if (edtCapacidade2.Text.Length=0) or (edtCapacidade2.Text='0') then
    begin
      MyShowMessage('Informe a capacidade!!',false);
      edtNumeroFinal.SetFocus;
      Exit;
    end;
    I := StrToInt(edtNumeroIni.Text);
    while I<=strToInt(edtNumeroFinal.Text) do
    begin
     vCodCurral := serviceDB.VerificaCurralExiste(edtNome2.Text+'-'+IntToStr(I));
     if vCodCurral.Length=0 then
     begin
       try
         serviceDB.TableCurrais.Insert;
         serviceDB.TableCurraisUSER_ID.AsString          :=serviceDB.vIdUserLogado;
         serviceDB.TableCurraisID_PROPRIEDADE.AsString   :=frmPrincipal.vIDPropriedadePropria;
         serviceDB.TableCurraisCODIGO.AsString           :=edtNome2.Text+'-'+IntToStr(I);
         serviceDB.TableCurraisTIPO.AsString             :='0';
         serviceDB.TableCurraisCAPACIDADE.AsString       :=edtCapacidade2.Text;
         serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString   :=serviceDB.qryConfigPadraoCUSTO_FIXO_PADRAO.AsString;
         serviceDB.TableCurraisAREA_HECTARES.AsString    :=edtAreaHe.Text;
         if edtRetiroAuto.Text.Length>0 then
            serviceDB.TableCurraisID_RETIRO.AsInteger := vIdRetiro;
         serviceDB.TableCurrais.ApplyUpdates(-1);
         serviceDB.TableCurrais.Active := false;
         serviceDB.TableCurrais.Active := true;
         inc(I);
        except
         on e : Exception do
          MyShowMessage('Erro ao Inserir Propriedade: '+e.Message,false)
        end;
     end
     else
     begin
        MyShowMessage('Ja existe um Local com esse nome:'+edtNome2.Text+'-'+IntToStr(I),false);
        i:= strToInt(edtNumeroFinal.Text)+1;
        Exit;
     end;
    end;
  end;//EM GRUPO
   MyShowMessage('Pasto/Curral gerado com sucesso!',false);
   MudarAba(tbiMnu,sender);
   serviceDB.TableCurrais.Active := false;
   serviceDB.TableCurrais.Active := true;
end;

procedure TfrmCadCurral.btnConfirmaCochoClick(Sender: TObject);
begin
  edtSave.SetFocus;
  if (edtNomeCocho.Text.Length=0)then
  begin
    MyShowMessage('Preencha os dados obrigatorios!!',false);
    Exit;
  end;

  if serviceDB.TableCocho.State = dsInsert then
   if not serviceDB.VerificaCochoExiste(edtNomeCocho.Text,vIdPasto) then
   begin
     MyShowMessage('Ja existe um Cocho com esse nome neste Pasto!',false);
     Exit;
   end;
  serviceDB.TableCochoCREEPFEED.AsInteger  := cbxCreepFeed.ItemIndex;
  if edtMetragem.Text.Length>0 then
   serviceDB.TableCochoMETRAGEM.AsString    := edtMetragem.Text
  else
   serviceDB.TableCochoMETRAGEM.AsFloat     := 0;

  serviceDB.TableCochoTAG.AsString         := edtCodigoBarras.Text;
  serviceDB.TableCochoID_PASTO.AsString    := vIdPasto;
  serviceDB.TableCochoID_USUARIO.AsString  := serviceDB.vIdUserLogado;
  try
   serviceDB.TableCocho.ApplyUpdates(-1);
   MyShowMessage('Cocho cadastrado com sucesso!!',false);
   MudarAba(tbiMnu,sender);
   serviceDB.TableCocho.Close;
   serviceDB.TableCocho.Open;
  except
    on e : Exception do
     MyShowMessage('Erro ao Inserir Cocho: '+e.Message,false)
  end;
end;

procedure TfrmCadCurral.btnEditaCochoClick(Sender: TObject);
begin
  serviceDB.TableCocho.Edit;
  vIdPasto                              := serviceDB.TableCurraisID.AsString;
  serviceDB.TableCochoID_PASTO.AsString := vIdPasto;
  edtPasto.Text                         := serviceDB.TableCurraisCODIGO.AsString;
  edtCodigoBarras.Text                  := serviceDB.TableCochoTAG.AsString;
  edtMetragem.Text       := serviceDB.TableCochoMETRAGEM.AsString;
  if serviceDB.TableCochoCREEPFEED.AsString.Length>0 then
   cbxCreepFeed.ItemIndex := serviceDB.TableCochoCREEPFEED.AsInteger
  else
   cbxCreepFeed.ItemIndex :=0;
//  edtMineral.Text                       := serviceDB.RetornaNomeMinetal(serviceDB.TableCochoID_MINERAL.AsString);
  MudarAba(tbiCadCocho,Sender);
end;

procedure TfrmCadCurral.btnExcluirCochoClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente deletar esse cocho?',true);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableCocho.Delete;
       serviceDB.TableCocho.ApplyUpdates(-1);
       serviceDB.TableCocho.Close;
       serviceDB.TableCocho.Open;
      except
      on E : Exception do
       begin
         MyShowMessage('Exception class name = '+E.ClassName,FALSE);
         MyShowMessage('Exception message = '+E.Message,FALSE);
       end;
      end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmCadCurral.btnNovoCochoClick(Sender: TObject);
begin
  vIdPasto               := serviceDB.TableCurraisID.AsString;
  edtPasto.Text          := serviceDB.TableCurraisCODIGO.AsString;
  edtCodigoBarras.Text   :='0';
  edtMineral.Text        :='';
  edtMetragem.Text       :='';
  cbxCreepFeed.ItemIndex :=0;
  serviceDB.TableCocho.Insert;
  MudarAba(tbiCadCocho,Sender);
end;

procedure TfrmCadCurral.cbxRetiroChange(Sender: TObject);
begin
 if(cbxRetiro.ItemIndex>0) or (edtFiltroName.Text.Length>0) then
  begin
   vIdRetiroF := Integer(cbxRetiro.Items.Objects[cbxRetiro.ItemIndex]);
   serviceDB.TableCurrais.Filtered := false;
   if edtFiltroName.Text.Length>0 then
    serviceDB.TableCurrais.Filter   := 'CODIGO LIKE '+QuotedStr('%'+edtFiltroName.Text+'%')+' AND ID_RETIRO='+intToStr(vIdRetiroF)
   else
    serviceDB.TableCurrais.Filter   := 'ID_RETIRO='+intToStr(vIdRetiroF);
   serviceDB.TableCurrais.Filtered := true;
  end
  else
  begin
    serviceDB.TableCurrais.Filtered := false;
    serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'0');
  end;
end;

procedure TfrmCadCurral.edtCapacidade2Exit(Sender: TObject);
begin
 DelayedSetFocus(edtRetiroAuto);
end;

procedure TfrmCadCurral.edtCapacidadeExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize(TThread.CurrentThread,procedure
     begin
        edtPesoMinimo.setFocus;
     end)
   end
  ).Start;
end;

procedure TfrmCadCurral.edtCapacidadeKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadCurral.edtCodigoExit(Sender: TObject);
begin
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize(TThread.CurrentThread,procedure
     begin
        edtCapacidade.setFocus;
     end)
   end
  ).Start;
end;

procedure TfrmCadCurral.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableCurrais.Filtered := false;
   if cbxRetiro.ItemIndex>0 then
    serviceDB.TableCurrais.Filter   := 'CODIGO LIKE '+QuotedStr('%'+edtFiltroName.Text+'%')+' AND ID_RETIRO='+intToStr(vIdRetiroF)
   else
    serviceDB.TableCurrais.Filter   := 'CODIGO LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableCurrais.Filtered := true;
 end
 else
   serviceDB.TableCurrais.Filtered := false;
end;

procedure TfrmCadCurral.edtLatitudeExit(Sender: TObject);
begin
 DelayedSetFocus(edtLongitude);
end;

procedure TfrmCadCurral.edtLongitudeExit(Sender: TObject);
begin
  DelayedSetFocus(edtCustoFixoOp);
end;

procedure TfrmCadCurral.edtMineralExit(Sender: TObject);
begin
 DelayedSetFocus(edtCodigoBarras);
end;

procedure TfrmCadCurral.edtNumeroFinalExit(Sender: TObject);
begin
 DelayedSetFocus(edtCapacidade2);
end;

procedure TfrmCadCurral.edtNumeroKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
   MyShowMessage('Somente Números',FALSE);
 end;
end;

procedure TfrmCadCurral.edtPastoExit(Sender: TObject);
begin
 DelayedSetFocus(edtNomeCocho);
end;

procedure TfrmCadCurral.edtPesoMaximoExit(Sender: TObject);
begin
   TThread.CreateAnonymousThread(
   procedure
   begin
     TThread.Synchronize(TThread.CurrentThread,procedure
     begin
        edtAreaHe.setFocus;
     end)
   end
  ).Start;
end;

procedure TfrmCadCurral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.vCadCurral := 0;
  inherited;
end;

procedure TfrmCadCurral.FormCreate(Sender: TObject);
begin
   serviceDB.TableCocho.Open;
   cbxRetiro.Items.Clear;
   cbxRetiro.Items.Add('Todos');
   serviceDB.AbrirRetirosPropriedade;
   serviceDB.TableRetiro.First;
   while not serviceDB.TableRetiro.eof do
   begin
     cbxRetiro.Items.AddObject(serviceDB.TableRetiroNOME.AsString,TObject(serviceDB.TableRetiroID.AsInteger));
     serviceDB.TableRetiro.Next;
   end;
//   cbxRetiro.ItemIndex:=0;
   StringGrid1.Row:=-1;
  inherited;
  TabControlTipo.TabPosition := TTabPosition.None;
  TabControlTipo.ActiveTab   := tbiIndividual;
end;

procedure TfrmCadCurral.FormShow(Sender: TObject);
begin
 Treemnu.Enabled := frmPrincipal.vIdBaseCampo='0';
 IF frmPrincipal.vMov<>5 THEN
 begin
   if frmPrincipal.vForn=1 then
   begin
     serviceDB.AbreQryCurraisComAnimais(ServiceDB.vIdPropriedade);
   end
   else
     serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,'');
 end;
end;

procedure TfrmCadCurral.gridCochoCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  if frmPrincipal.vForn=1 then
   Close;
end;

procedure TfrmCadCurral.imgCloseClick(Sender: TObject);
begin
 close;
end;
procedure TfrmCadCurral.rdGeralChange(Sender: TObject);
begin
 if rdGeral.IsChecked then
 begin
  rdIndividual.IsChecked := false;
  MudarAba(tbiAutomatico,Sender);
 end;
end;

procedure TfrmCadCurral.rdIndividualChange(Sender: TObject);
begin
 if rdIndividual.IsChecked then
 begin
  rdGeral.IsChecked := false;
  MudarAba(tbiIndividual,Sender);
 end;
end;

procedure TfrmCadCurral.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

procedure TfrmCadCurral.TreeItemEditarClick(Sender: TObject);
begin
  try
   Layout1.Visible := false;
   serviceDB.TableCurrais.Edit;
   rdIndividual.IsChecked :=true;
   serviceDB.TableCurraisTIPO.AsInteger :=0;
   edtCustoFixoOp.Text :=  serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString;
   edtRetiro.Text      :=  serviceDB.TableCurraisRETIRO.AsString;
   vIdRetiro           :=  serviceDB.TableCurraisID_RETIRO.AsInteger;
   edtTagPastoIni.Text      := serviceDB.TableCurraisTAG_INICIO.AsString;
   edtTagPastoFim.Text      := serviceDB.TableCurraisTAG_FIM.AsString;
   edtAreaHe.Text           := serviceDB.TableCurraisAREA_HECTARES.AsString;
   edtLatitude.Text         := serviceDB.TableCurraisLATITUDE.AsString;
   edtLongitude.Text        := serviceDB.TableCurraisLongitude.AsString;
   inherited;
  except
   on e : Exception do
   MyShowMessage('Erro ao Inserir Currais: '+e.Message,false)
  end;
end;

procedure TfrmCadCurral.TreeItemExcluirClick(Sender: TObject);
begin
  if serviceDB.TableCurraisLOTACAO.AsInteger>0 then
  begin
    MyShowMessage('Local possui animais ativos impossível excluir!',true);
    Exit;
  end
  else
  begin
    MyShowMessage('Deseja Realmente deletar esse Pasto?',true);
    case dlg.vBntConfirmaMsg of
    1:
    begin
        try
         serviceDB.TableCurrais.Edit;
         serviceDB.TableCurraisSTATUS.AsInteger :=0;
         serviceDB.TableCurrais.ApplyUpdates(-1);
         serviceDB.TableCurrais.Close;
         serviceDB.TableCurrais.Open;
         MyShowMessage('Dados deletados com Sucesso!',false);
        except
        on E : Exception do
         begin
           MyShowMessage('Exception class name = '+E.ClassName,false);
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
end;

procedure TfrmCadCurral.TreeItemNovoClick(Sender: TObject);
begin
  try
   rdIndividual.IsChecked := true;
   rdIndividualChange(sender);
   rdGeral.IsChecked      := false;
   serviceDB.qryConfigPadrao.Close;
   serviceDB.qryConfigPadrao.Open;
   serviceDB.TableCurrais.Close;
   serviceDB.TableCurrais.Open;
   serviceDB.TableCurrais.Insert;
   edtCustoFixoOp.Text := serviceDB.qryConfigPadraoCUSTO_FIXO_PADRAO.AsString;
   inherited
  except
   on e : Exception do
   MyShowMessage('Erro ao Inserir Currais: '+e.Message,false)
  end;
end;

end.
