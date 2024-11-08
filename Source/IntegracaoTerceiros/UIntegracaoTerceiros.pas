unit UIntegracaoTerceiros;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.Edit;

type
  TfrmIntegracaoTerceiros = class(TForm)
    layMnuPrincipal: TLayout;
    laySuperior: TLayout;
    Rectangle1: TRectangle;
    Label2: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    layMnuPadrao: TLayout;
    imgMenu: TImage;
    lblmnu: TLabel;
    layLista: TLayout;
    RecLista: TRectangle;
    LayInfPadrao: TLayout;
    RectangleInfPadrao: TRectangle;
    btnConectaTGC: TSpeedButton;
    lblConectaTGC: TLabel;
    Layout1: TLayout;
    layDados: TLayout;
    Layout2: TLayout;
    Label1: TLabel;
    Label3: TLabel;
    gridLotesField: TStringGrid;
    gridLotesTGC: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToFieldCONTR_CONTRATO: TLinkFillControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToFieldAR_CODALFA: TLinkFillControlToField;
    Layout3: TLayout;
    Rectangle2: TRectangle;
    Layout4: TLayout;
    Layout5: TLayout;
    Label4: TLabel;
    Label5: TLabel;
    lblLocalField: TLabel;
    lblLocalDestino: TLabel;
    Layout6: TLayout;
    Layout7: TLayout;
    Label6: TLabel;
    edtTotalAnimaisSync: TEdit;
    Layout8: TLayout;
    Label7: TLabel;
    cbxContratoDestino: TComboBox;
    Layout9: TLayout;
    Label8: TLabel;
    cbxRebanhoDestino: TComboBox;
    layBtnControls: TLayout;
    btnConfirma: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    LinkFillControlToFieldCONTR_CODFORNECEDOR: TLinkFillControlToField;
    LinkFillControlToFieldAR_CODALFA2: TLinkFillControlToField;
    procedure btnConectaTGCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
    procedure gridLotesFieldCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure gridLotesTGCCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure cbxContratoDestinoChange(Sender: TObject);
    procedure cbxRebanhoDestinoChange(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
  private
    { Private declarations }
    vIdCurralField,
    vIdLoteTGC,
    vContratoTGC,vIdFornecedorTGC,
    vRebanhoTGC:STRING;
  public

  end;

var
  frmIntegracaoTerceiros: TfrmIntegracaoTerceiros;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB, USevIntegracao, UMsgDlg, UMsgDlgRel;

procedure TfrmIntegracaoTerceiros.btnConectaTGCClick(Sender: TObject);
begin
 lblConectaTGC.Text := srvIntegracao.ConectaBDTGC;
 if lblConectaTGC.Text='TGC Conetado com Sucesso!' then
 begin
  srvIntegracao.AbreLotesField;
  srvIntegracao.LotesTGC.Close;
  srvIntegracao.LotesTGC.Open;
  srvIntegracao.TContratosTGC.close;
  srvIntegracao.TContratosTGC.Open;
  srvIntegracao.TRebanhoTGC.close;
  srvIntegracao.TRebanhoTGC.Open;
  layDados.Visible := true;
 end
 else
  layDados.Visible := false;
end;

procedure TfrmIntegracaoTerceiros.btnConfirmaClick(Sender: TObject);
var
 I,vCodCurral,vIdRacaTGC,vIdCategoriaTGC:integer;
begin
 if lblLocalDestino.Text.Length=0 then
 begin
   MyShowMessage('Selecione o Local destino!',false);
   Exit;
 end;
 if lblLocalField.Text.Length=0 then
 begin
   MyShowMessage('Selecione o Local Origem!',false);
   Exit;
 end;

 for I := 0 to gridLotesField.RowCount-1 do
 begin
   vCodCurral := srvIntegracao.VerificaCurralExisteTGC(lblLocalDestino.Text);
   if vCodCurral=0 then
    MyShowMessage('Local não encontrado no Sistema Destino',false)
   else
    if srvIntegracao.VerificaLoteExisteTGC(intToStr(vCodCurral))then
     MyShowMessage('Local não possui lote no Sistema Destino',false);
 end;
 if lblLocalField.Text.Length=0 then
 begin
   MyShowMessage('Selecione o lote do FieldPec, clicando duas vezes sobre o mesmo!',false);
   Exit;
 end;
 if lblLocalDestino.Text.Length=0 then
 begin
   MyShowMessage('Selecione o lote do sistema Destino, clicando duas vezes sobre o mesmo!',false);
   Exit;
 end;
 if cbxContratoDestino.ItemIndex=-1 then
 begin
   MyShowMessage('Selecione o Contrato do sistema Destino!',false);
   Exit;
 end;
 if cbxRebanhoDestino.ItemIndex=-1 then
 begin
   MyShowMessage('Selecione o Rebanho do sistema Destino!',false);
   Exit;
 end;
 srvIntegracao.AbreAnimisSinc(vIdCurralField);
 while not srvIntegracao.TAnimaisSync.Eof do
 begin
   vIdRacaTGC      := srvIntegracao.VerificaRacaExiste(srvIntegracao.TAnimaisSyncRACA.AsString);
   vIdCategoriaTGC := srvIntegracao.VerificaCategoriaExiste(srvIntegracao.TAnimaisSyncCATEGORIA.AsString);
   srvIntegracao.TAnimaisTGC.Close;
   srvIntegracao.TAnimaisTGC.Open;
   srvIntegracao.TAnimaisTGC.Insert;
   srvIntegracao.TAnimaisTGCCA_CODLOTE.AsString := vIdLoteTGC;
   srvIntegracao.TAnimaisTGCCA_CODFORNECEDOR.AsString := vIdFornecedorTGC;
   srvIntegracao.TAnimaisTGCCA_IDADE.AsString         := srvIntegracao.TAnimaisSyncIDADE_MESES.AsString;
   srvIntegracao.TAnimaisTGCCA_TIPOENTRADA.AsString   := 'Sync';
   srvIntegracao.TAnimaisTGCCA_NCF.AsString           := srvIntegracao.TAnimaisSyncID.AsString;
   if srvIntegracao.TAnimaisSyncIDENTIFICACAO_2.AsString.Length>0 then
    srvIntegracao.TAnimaisTGCCA_SISBOV.AsString        := srvIntegracao.TAnimaisSyncIDENTIFICACAO_2.AsString;
   if srvIntegracao.TAnimaisSyncIDENTIFICACAO_1.AsString.Length>0 then
   srvIntegracao.TAnimaisTGCCA_CHIP.AsString           := srvIntegracao.TAnimaisSyncIDENTIFICACAO_1.AsString;
   srvIntegracao.TAnimaisTGCCA_PESO_ENT.AsString       := srvIntegracao.TAnimaisSyncULTIMO_PESO.AsString;
   srvIntegracao.TAnimaisTGCCA_DATAENT.AsString        := srvIntegracao.TAnimaisSyncDATA_ULTIMO_PESO.AsString;
   srvIntegracao.TAnimaisTGCCA_VALORENT.AsString       := srvIntegracao.TAnimaisSyncVALOR_COMPRA.AsString;
   srvIntegracao.TAnimaisTGCCA_NUMCONTRATO.AsString    := vContratoTGC;
   srvIntegracao.TAnimaisTGCCA_CODCATEGORIA.AsInteger  := vIdCategoriaTGC;
   srvIntegracao.TAnimaisTGCCA_CODRACA.AsInteger       := vIdRacaTGC;
   srvIntegracao.TAnimaisTGCCA_REBANHO.AsString        := vRebanhoTGC;
   srvIntegracao.TAnimaisTGCCA_ULTIMO_CURRAL.AsString  := srvIntegracao.LotesTGCIDCURRAL.AsString;
   srvIntegracao.TAnimaisTGCCA_RC_ENTRADA.AsInteger    :=50;
   srvIntegracao.TAnimaisTGCCA_USUARIO.AsString        :='TGC';
   try
    srvIntegracao.TAnimaisTGC.ApplyUpdates(-1);
    srvIntegracao.AtualizaFlagSync(srvIntegracao.TAnimaisSyncID.AsString);
    srvIntegracao.TAnimaisSync.Next;
   except
    srvIntegracao.TAnimaisSync.Next;
   end;
 end;
end;

procedure TfrmIntegracaoTerceiros.cbxContratoDestinoChange(Sender: TObject);
begin
 if cbxContratoDestino.ItemIndex>-1 then
 begin
   vContratoTGC := cbxContratoDestino.Selected.Text;
   vIdFornecedorTGC := LinkFillControlToFieldCONTR_CODFORNECEDOR.BindList.GetSelectedValue.AsString;
 end;
end;

procedure TfrmIntegracaoTerceiros.cbxRebanhoDestinoChange(Sender: TObject);
begin
 if cbxRebanhoDestino.ItemIndex>-1 then
    vRebanhoTGC := cbxRebanhoDestino.Selected.Text;
end;

procedure TfrmIntegracaoTerceiros.FormShow(Sender: TObject);
begin
 layDados.Visible := FALSE;
end;

procedure TfrmIntegracaoTerceiros.gridLotesFieldCellDblClick(
  const Column: TColumn; const Row: Integer);
begin
  lblLocalField.Text         := srvIntegracao.LotesFieldCURRAL.AsString;
  edtTotalAnimaisSync.Text   := srvIntegracao.LotesFieldQTDCAB.AsString;
  vIdCurralField             := srvIntegracao.LotesFieldID.AsString;
end;

procedure TfrmIntegracaoTerceiros.gridLotesTGCCellDblClick(
  const Column: TColumn; const Row: Integer);
begin
 lblLocalDestino.Text := srvIntegracao.LotesTGCCURRAL.AsString;
 vIdLoteTGC           := srvIntegracao.LotesTGCLOTE.AsString;
end;

procedure TfrmIntegracaoTerceiros.imgCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmIntegracaoTerceiros.MyShowMessage(msg: string; btnCancel: Boolean);
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

end.
