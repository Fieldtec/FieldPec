unit UEstoqueFarmaco;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, FMX.DateTimeCtrls, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope, FMX.ListBox, FMX.EditBox, FMX.NumberBox,Winapi.Windows,
  DB;

type
  TfrmEstoqueFarmaco = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    Label3: TLabel;
    edtNumNFFiltro: TEdit;
    btnFiltar: TSpeedButton;
    Image23: TImage;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Label4: TLabel;
    Layout5: TLayout;
    Label6: TLabel;
    Label9: TLabel;
    Layout6: TLayout;
    Layout7: TLayout;
    edtValorTotalNF: TNumberBox;
    edtNumNF: TEdit;
    Layout8: TLayout;
    Rectangle3: TRectangle;
    Layout9: TLayout;
    Layout10: TLayout;
    Label7: TLabel;
    Layout11: TLayout;
    Label15: TLabel;
    Layout12: TLayout;
    ComboBox2: TComboBox;
    Layout13: TLayout;
    edtFarmaco: TEdit;
    EditButton1: TEditButton;
    Label5: TLabel;
    edtDataEntrada: TDateEdit;
    Label8: TLabel;
    cbxTipoEmbalagem: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    edtTotalUni: TEdit;
    Label14: TLabel;
    Label16: TLabel;
    edtValorUNI: TNumberBox;
    edtValorML: TNumberBox;
    EdtEmbalagemML: TNumberBox;
    Layout14: TLayout;
    Rectangle4: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    Label17: TLabel;
    Layout17: TLayout;
    Label18: TLabel;
    Layout18: TLayout;
    ComboBox1: TComboBox;
    Layout19: TLayout;
    edtPartida: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure edtFarmacoClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure cbxTipoEmbalagemChange(Sender: TObject);
    procedure edtTotalUniKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtTotalUniChangeTracking(Sender: TObject);
    procedure edtValorTotalNFChangeTracking(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure EdtEmbalagemMLExit(Sender: TObject);
    procedure edtTotalUniExit(Sender: TObject);
  private
    procedure LimpaCampos;
  public
    vIdFarmaco:string;
  end;

var
  frmEstoqueFarmaco: TfrmEstoqueFarmaco;

implementation

{$R *.fmx}

uses UServiceDB, UFarmacos;

procedure TfrmEstoqueFarmaco.btnConfirmaClick(Sender: TObject);
begin
 if edtFarmaco.Text.Length = 0 then
 begin
   MyShowMessage('Informe o Farmaco!',false);
   TThread.Synchronize(nil,procedure
   begin
    edtFarmaco.SetFocus;
   end);
   Exit;
 end;
 if cbxTipoEmbalagem.ItemIndex = -1 then
 begin
   MyShowMessage('Informe o Tipo de Embalagem!',false);
   TThread.Synchronize(nil,procedure
   begin
    cbxTipoEmbalagem.SetFocus;
   end);
   Exit;
 end;
 if cbxTipoEmbalagem.ItemIndex = 0 then
 begin
   if (EdtEmbalagemML.Value=0) or (EdtEmbalagemML.Text.Length=0) then
   begin
     MyShowMessage('Informe o ML da Embalagem!',false);
     TThread.Synchronize(nil,procedure
     begin
      EdtEmbalagemML.SetFocus;
     end);
     Exit;
   end;
 end;
 if edtNumNF.Text.Length=0 then
 begin
   MyShowMessage('Informe o Número da Nota Fiscal!',false);
   TThread.Synchronize(nil,procedure
   begin
    edtNumNF.SetFocus;
   end);
   Exit;
 end;
 if (edtValorTotalNF.Text.Length=0)or(edtValorTotalNF.Value=0)  then
 begin
   MyShowMessage('Informe o Valor da Nota Fiscal!',false);
   TThread.Synchronize(nil,procedure
   begin
    edtValorTotalNF.SetFocus;
   end);
   Exit;
 end;
 if (edtTotalUni.Text.Length=0)or(edtTotalUni.Text='0')  then
 begin
   MyShowMessage('Informe o Total de Unidades!',false);
   TThread.Synchronize(nil,procedure
   begin
    edtTotalUni.SetFocus;
   end);
   Exit;
 end;
 if (edtTotalUni.Text.Length>0)and(edtValorTotalNF.Value>0) then
 begin
   edtValorUNI.Value  := edtValorTotalNF.Value/strToInt(edtTotalUni.Text);
   edtValorML.Value   := edtValorTotalNF.Value/(strToInt(edtTotalUni.Text)*EdtEmbalagemML.Value);
 end;
 serviceDB.TableEstoqueFarmacoDATA_ENTRADA.AsDateTime  := edtDataEntrada.Date;
 serviceDB.TableEstoqueFarmacoID_FARMACO.AsString      := vIdFarmaco;
 serviceDB.TableEstoqueFarmacoTIPO_EMBALAGEM.AsInteger := cbxTipoEmbalagem.ItemIndex;
 serviceDB.TableEstoqueFarmacoML_EMBALAGEM.AsString    := EdtEmbalagemML.Text;
 serviceDB.TableEstoqueFarmacoTOTAL_UNIDADE.AsString   := edtTotalUni.Text;
 serviceDB.TableEstoqueFarmacoTOTAL_ML.AsFloat         := StrToInt(edtTotalUni.Text)*EdtEmbalagemML.Value;
 serviceDB.TableEstoqueFarmacoNUMERO_NF.AsString       := edtNumNF.Text;
 serviceDB.TableEstoqueFarmacoVALOR_NF.AsString        := edtValorTotalNF.Text;
 serviceDB.TableEstoqueFarmacoID_PROPRIEDADE.AsString  := serviceDB.vIdPropriedade;
 serviceDB.TableEstoqueFarmacoVALOR_UNIDADE.AsString   := edtValorUNI.Text;
 serviceDB.TableEstoqueFarmacoVALOR_ML.AsString        := edtValorML.Text;
 serviceDB.TableEstoqueFarmacoPARTIDA.AsString         := edtPartida.Text;
 if serviceDB.TableEstoqueFarmaco.State=dsInsert then
  serviceDB.TableEstoqueFarmacoID_USUARIO.AsString      := serviceDB.vIdUserLogado;
 if serviceDB.TableEstoqueFarmaco.State=dsEdit then
 begin
  serviceDB.TableEstoqueFarmacoID_USUARIO_ALTERACAO.AsString    := serviceDB.vIdUserLogado;
  serviceDB.TableEstoqueFarmacoDATA_ULTIMA_ALTERACAO.AsDateTime := now;
 end;
 try
   serviceDB.TableEstoqueFarmaco.ApplyUpdates(-1);
   MyShowMessage('Cadastro atualizado com sucesso!',false);
   serviceDB.TableEstoqueFarmaco.Close;
   serviceDB.TableEstoqueFarmaco.Open();
   MudarAba(tbiMnu,sender);
 except
   on E : Exception do
    MYShowMessage(E.ClassName+' Error ao Inserir NF : '+E.Message,false);
 end;
end;

procedure TfrmEstoqueFarmaco.btnFiltarClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro := '';
 if edtFiltroName.Text.Length>0 then
  vFiltro := vFiltro+' AND F.NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
 if edtNumNFFiltro.Text.Length>0 then
  vFiltro := vFiltro+' AND EF.NUMERO_NF ='+edtNumNFFiltro.Text;
 vFiltro := vFiltro+' AND EF.DATA_ENTRADA BETWEEN '+
  FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString+' AND '+
  FormatDateTime('mm/dd/yyyy',edtFDataEntAte.Date).QuotedString;
 serviceDB.AbreEstoqueFarmacoFazenda(vFiltro);
end;

procedure TfrmEstoqueFarmaco.cbxTipoEmbalagemChange(Sender: TObject);
begin
  if cbxTipoEmbalagem.ItemIndex=0 then
  begin
   EdtEmbalagemML.Enabled := true;
   EdtEmbalagemML.SetFocus;
  end
  else
  begin
   EdtEmbalagemML.Enabled := false;
   EdtEmbalagemML.Text    := '0';
  end;
end;

procedure TfrmEstoqueFarmaco.EditButton1Click(Sender: TObject);
begin
  frmCadFarmaco := TfrmCadFarmaco.Create(Self);
  try
    frmCadFarmaco.ShowModal;
    if frmCadFarmaco.vFarmacoSelecionado=1 then
    begin
      vIdFarmaco      := serviceDB.TableFarmacosID.AsString;
      edtFarmaco.Text := serviceDB.TableFarmacosNOME.AsString;
    end;
  finally
    frmCadFarmaco.Free;
  end;
end;

procedure TfrmEstoqueFarmaco.EdtEmbalagemMLExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
         procedure
         begin
           edtNumNF.SetFocus;
           edtNumNF.SelectAll;
         end
      );
    end
  ).Start;
end;

procedure TfrmEstoqueFarmaco.edtFarmacoClick(Sender: TObject);
begin
 EditButton1Click(Sender);
end;

procedure TfrmEstoqueFarmaco.edtTotalUniChangeTracking(Sender: TObject);
begin
 if (edtTotalUni.Text.Length>0)and(edtValorTotalNF.Value>0) then
 begin
   edtValorUNI.Value  := edtValorTotalNF.Value/strToInt(edtTotalUni.Text);
   edtValorML.Value   := edtValorTotalNF.Value/(strToInt(edtTotalUni.Text)*EdtEmbalagemML.Value);
 end;
end;

procedure TfrmEstoqueFarmaco.edtTotalUniExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
         procedure
         begin
           edtPartida.SetFocus;
           edtPartida.SelectAll;
         end
      );
    end
  ).Start;
end;

procedure TfrmEstoqueFarmaco.edtTotalUniKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmEstoqueFarmaco.edtValorTotalNFChangeTracking(Sender: TObject);
begin
 if (edtTotalUni.Text.Length>0)and(edtValorTotalNF.Value>0) then
 begin
   edtValorUNI.Value  := edtValorTotalNF.Value/strToInt(edtTotalUni.Text);
   edtValorML.Value   := edtValorTotalNF.Value/(strToInt(edtTotalUni.Text)*EdtEmbalagemML.Value);
 end;
end;

procedure TfrmEstoqueFarmaco.FormShow(Sender: TObject);
begin
 serviceDB.AbreEstoqueFarmacoFazenda('');
end;

procedure TfrmEstoqueFarmaco.LimpaCampos;
begin
  edtFarmaco.Text            :='';
  cbxTipoEmbalagem.ItemIndex :=-1;
  EdtEmbalagemML.Text        :='';
  edtNumNF.Text              :='';
  edtValorTotalNF.Text       :='';
  edtTotalUni.Text           :='';
  edtValorUNI.Text           :='';
  edtValorML.Text            :='';
  edtPartida.Text            :='';
  EdtEmbalagemML.Enabled     := false;
end;

procedure TfrmEstoqueFarmaco.TreeItemEditarClick(Sender: TObject);
begin
 serviceDB.TableEstoqueFarmaco.Edit;
 vIdFarmaco                 := serviceDB.TableEstoqueFarmacoID_FARMACO.AsString;
 edtFarmaco.Text            := serviceDB.TableEstoqueFarmacoFARMACOS.AsString;
 cbxTipoEmbalagem.ItemIndex := serviceDB.TableEstoqueFarmacoTIPO_EMBALAGEM.AsInteger;
 EdtEmbalagemML.Text        := serviceDB.TableEstoqueFarmacoML_EMBALAGEM.AsString;
 edtNumNF.Text              := serviceDB.TableEstoqueFarmacoNUMERO_NF.AsString;
 edtValorTotalNF.Text       := serviceDB.TableEstoqueFarmacoVALOR_NF.AsString;
 edtTotalUni.Text           := serviceDB.TableEstoqueFarmacoTOTAL_UNIDADE.AsString;
 edtValorUNI.Text           := serviceDB.TableEstoqueFarmacoVALOR_UNIDADE.AsString;
 edtValorML.Text            := serviceDB.TableEstoqueFarmacoVALOR_ML.AsString;
 edtPartida.Text            := serviceDB.TableEstoqueFarmacoPARTIDA.AsString;
 MudarAba(tbiCad,sender);
end;

procedure TfrmEstoqueFarmaco.TreeItemNovoClick(Sender: TObject);
begin
  LimpaCampos;
  serviceDB.TableEstoqueFarmaco.Close;
  serviceDB.TableEstoqueFarmaco.Open;
  serviceDB.TableEstoqueFarmaco.Insert;
  MudarAba(tbiCad,sender);
end;

end.
