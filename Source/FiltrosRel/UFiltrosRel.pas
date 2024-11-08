unit UFiltrosRel;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.DateTimeCtrls, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Objects,
  FMX.Layouts, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.TabControl, FMX.Edit;

type
  TfrmFiltrosRel = class(TForm)
    layFiltrosRel: TLayout;
    Rectangle19: TRectangle;
    Layout107: TLayout;
    Image79: TImage;
    Rectangle20: TRectangle;
    Layout114: TLayout;
    Rectangle21: TRectangle;
    Label27: TLabel;
    Image81: TImage;
    FDQuery1: TFDQuery;
    TabControl1: TTabControl;
    tbiFRelForn: TTabItem;
    tbiRelEntradaAni: TTabItem;
    Layout108: TLayout;
    GroupBox5: TGroupBox;
    Layout109: TLayout;
    Layout110: TLayout;
    Label24: TLabel;
    Label25: TLabel;
    edtDataDeRel: TDateEdit;
    edtDataAteRel: TDateEdit;
    Layout111: TLayout;
    Layout112: TLayout;
    btnGeraRel: TRectangle;
    Layout113: TLayout;
    Image80: TImage;
    Label26: TLabel;
    cbxPastoFiltro: TComboBox;
    Label28: TLabel;
    Label29: TLabel;
    cbxMineralFiltro: TComboBox;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    RdRelatorio: TRadioButton;
    RdFicha: TRadioButton;
    GroupBox1: TGroupBox;
    Layout2: TLayout;
    Layout3: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    DataDeFRelEntradaAnimal: TDateEdit;
    DataAteFRelEntradaAnimal: TDateEdit;
    Label3: TLabel;
    cbxPropriedadeOri: TComboBox;
    Rectangle2: TRectangle;
    Layout4: TLayout;
    Image1: TImage;
    Label4: TLabel;
    tbiRelSani: TTabItem;
    Rectangle3: TRectangle;
    Layout7: TLayout;
    Image2: TImage;
    Label8: TLabel;
    edtLocalOrigem: TEdit;
    EditButton6: TEditButton;
    ClearEditButton1: TClearEditButton;
    Label5: TLabel;
    Label6: TLabel;
    Layout5: TLayout;
    cbxSexo: TComboBox;
    procedure btnGeraRelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image81Click(Sender: TObject);
    procedure RdRelatorioClick(Sender: TObject);
    procedure RdFichaClick(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
    procedure EditButton6Click(Sender: TObject);
  private
    vidLocal:string;
    procedure CarregaComboFiltroRel;
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
  public
    { Public declarations }
  end;

var
  frmFiltrosRel: TfrmFiltrosRel;

implementation

{$R *.fmx}

uses UServiceDB, ServiceRel, UPrincipal, UMsgDlg, UCurrais;

procedure TfrmFiltrosRel.CarregaComboFiltroRel;
var
 vQryAux :TFDQuery;
 vMax:string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 cbxPastoFiltro.Items.Clear;
 cbxMineralFiltro.Items.Clear;
 cbxPropriedadeOri.Items.Clear;
 cbxPastoFiltro.Items.Add('Todos');
 cbxMineralFiltro.Items.Add('Todos');
 cbxPropriedadeOri.Items.Add('Todas');
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM SUPLEMENTO_MINERAL WHERE STATUS=1');
   Open;
   while not vQryAux.Eof do
   begin
     cbxMineralFiltro.Items.Add(FieldByName('NOME').AsString);
     vQryAux.Next;
   end;
   cbxMineralFiltro.ItemIndex :=0;

   Clear;
   Add('SELECT * FROM CURRAIS WHERE STATUS=1');
   Add('AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   while not vQryAux.Eof do
   begin
     cbxPastoFiltro.Items.Add(FieldByName('CODIGO').AsString);
     vQryAux.Next;
   end;
   cbxPastoFiltro.ItemIndex :=0;

   Clear;
   Add('SELECT * FROM PROPRIEDADES WHERE STATUS=1');
   Open;
   while not vQryAux.Eof do
   begin
     cbxPropriedadeOri.Items.Add(FieldByName('NOME').AsString);
     vQryAux.Next;
   end;
   cbxPropriedadeOri.ItemIndex :=0;

 end;
end;


procedure TfrmFiltrosRel.EditButton6Click(Sender: TObject);
begin
 frmCadCurral := TfrmCadCurral.Create(nil);
  try
    frmPrincipal.vMov:=1;
    frmCadCurral.ShowModal;
  finally
    edtLocalOrigem.text      := serviceDB.TableCurraisCODIGO.AsString;
    vidLocal                 :=  serviceDB.TableCurraisid.AsString;
    frmCadCurral.Free;
  end;
end;

procedure TfrmFiltrosRel.FormShow(Sender: TObject);
begin
 TabControl1.TabPosition := TTabPosition.None;
 CarregaComboFiltroRel;
end;

procedure TfrmFiltrosRel.Image81Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmFiltrosRel.MyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TfrmFiltrosRel.RdFichaClick(Sender: TObject);
begin
 RdRelatorio.IsChecked := false;
end;

procedure TfrmFiltrosRel.RdRelatorioClick(Sender: TObject);
begin
 RdFicha.IsChecked := false;

end;

procedure TfrmFiltrosRel.Rectangle2Click(Sender: TObject);
var
 vFiltro:string;
begin
  if cbxPropriedadeOri.ItemIndex>0 then
   vFiltro := ' AND pr.NOME='+cbxPropriedadeOri.Selected.Text.QuotedString
  else
   vFiltro :='';
  SerRel.RelRelacaoEntradaAnimal(serviceDB.vIdPropriedade,
  FormatDateTime('mm/dd/yyyy',DataDeFRelEntradaAnimal.date),
  FormatDateTime('mm/dd/yyyy',DataAteFRelEntradaAnimal.date),vFiltro);
end;

procedure TfrmFiltrosRel.Rectangle3Click(Sender: TObject);
var
 vIdLocal1,
 vIdSexo : string;
begin
 if edtLocalOrigem.Text.Length>0 then
  vIdLocal1 := vidLocal
 else
  vIdLocal1 := '';
 if cbxSexo.ItemIndex>0 then
 begin
   if cbxSexo.ItemIndex=1 then
    vIdSexo :='M';
   if cbxSexo.ItemIndex=2 then
    vIdSexo :='F'
 end
 else
  vIdSexo :='';
  SerRel.AbreRelEraAnimais(vIdLocal1,vIdSexo);
  if SerRel.qryRelEra.IsEmpty then
  begin
    MyShowMessage('Sem dados para esse filtro!',false);
    Exit;
  end;
  SerRel.ppRepRelEra.Print;
end;

procedure TfrmFiltrosRel.btnGeraRelClick(Sender: TObject);
begin
 if frmPrincipal.vTipoRel='FORN' then
 begin
  if RdRelatorio.IsChecked then
  begin
   with serviceDB.FornecimentoMineral,serviceDB.FornecimentoMineral.SQL do
   begin
     Clear;
     Add('SELECT f.*,c.*,s.*,us.Name Responsavel FROM fornecimento F');
     Add('JOIN currais C ON C.id=F.id_pasto');
     Add('JOIN suplemento_mineral S ON S.id=F.id_produto');
     Add('join users us on us.id = f.id_responsavel');
     Add('WHERE f.STATUS=1 AND DATA_FORNECIMENTO BETWEEN  '+FormatDateTime('mm/dd/yyyy',edtDataDeRel.Date).QuotedString);
     Add(' AND '+FormatDateTime('mm/dd/yyyy',edtDataAteRel.Date).QuotedString);
     if cbxPastoFiltro.ItemIndex>0 then
      Add('AND C.CODIGO='+cbxPastoFiltro.Selected.Text.QuotedString);
     if cbxMineralFiltro.ItemIndex>0 then
      Add('AND S.NOME='+cbxMineralFiltro.Selected.Text.QuotedString);
     Add('AND C.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
     try
      Open;
      if not IsEmpty then
       SerRel.ppReportRelForn.Print
      else
       myShowMessage('Não existe dados para esses filtros!',false);
     except
       on E : Exception do
       begin
         myShowMessage('Erro ao Gerar Relatorio '+E.Message,false);
       end;
     end;
   end;
  end;
  if RdFicha.IsChecked then
  begin
    serviceDB.AbrirPrevGrid(edtDataDeRel.Date,edtDataAteRel.Date,'Todos','Todos');
    if serviceDB.PrevisaoFornecimento.IsEmpty then
    begin
      myShowMessage('Nenhuma previsao gerada para esse periodo!',false);
      Exit;
    end
    else
     SerRel.ppFichaForneciemnto.PrintReport;
  end;
 end;
end;

end.
