unit URelSaida;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.Effects, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.DateTimeCtrls, FMX.TMSLiveGridDataBinding,
  FMX.TMSBaseControl, FMX.TMSGridCell, FMX.TMSGridOptions, FMX.TMSGridData,
  FMX.TMSCustomGrid, FMX.TMSLiveGrid, FMX.GridExcelIO;

type
  TfrmRelSaida = class(TfrmCadPadrao)
    btnImprimir: TRectangle;
    Layout96: TLayout;
    Image74: TImage;
    Label13: TLabel;
    btnExportaGrid: TRectangle;
    Layout81: TLayout;
    Image43: TImage;
    Label48: TLabel;
    ShadowEffect47: TShadowEffect;
    btnGerar: TRectangle;
    Layout1: TLayout;
    Label3: TLabel;
    SearchEditButton1: TSearchEditButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Layout3: TLayout;
    Label4: TLabel;
    lblTotalAnimais: TLabel;
    GroupBox4: TGroupBox;
    edtFDataSaiATE: TDateEdit;
    Label41: TLabel;
    edtFDataSaiDe: TDateEdit;
    Label42: TLabel;
    edtRebanho: TEdit;
    SearchEditButton2: TSearchEditButton;
    Label5: TLabel;
    edtCurral: TEdit;
    SearchEditButton3: TSearchEditButton;
    Label6: TLabel;
    TMSFMXLiveGridBindSourceDB1: TTMSFMXLiveGrid;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    TMSFMXGridExcelIO1: TTMSFMXGridExcelIO;
    SaveDialog1: TSaveDialog;
    procedure btnGerarClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportaGridClick(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure chkPeriodoSaidaChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnGerarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnGerarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    procedure ExpTXT(DataSet: TDataSet; Arq: string);
  public
    { Public declarations }
  end;

var
  frmRelSaida: TfrmRelSaida;

implementation

{$R *.fmx}

uses ServiceRel, USaidaGrupo, UServiceDB, UPropriedadeParceira, UAuxRebanho,
  UCurralConfinamento, ServiceDB2;

procedure TfrmRelSaida.btnExportaGridClick(Sender: TObject);
var
 Path :string;
begin
 TMSFMXGridExcelIO1.Options.ExportCellProperties := true;
 TMSFMXGridExcelIO1.Options.ExportOverwrite := omAlways;
 TMSFMXGridExcelIO1.Options.ExportImages := true;
 if SaveDialog1.Execute then
 begin
  Path := SaveDialog1.FileName;
  TMSFMXGridExcelIO1.XLSExport(Path);
  MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
 end;

// if SaveDialog1.Execute then
//   ExpTXT(SerRel.TRelSaida,SaveDialog1.FileName);
// MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmRelSaida.ExpTXT(DataSet: TDataSet; Arq: string);
var
  i: integer;
  sl: TStringList;
  st: string;
begin
  DataSet.First;
  sl := TStringList.Create;
  try
    st := '';
    for i := 0 to DataSet.Fields.Count - 1 do
      st := st + DataSet.Fields[i].DisplayLabel + ';';
    sl.Add(st);
    DataSet.First;
    while not DataSet.Eof do
    begin
      st := '';
      for i := 0 to DataSet.Fields.Count - 1 do
        st := st + DataSet.Fields[i].DisplayText + ';';
      sl.Add(st);
      DataSet.Next;
    end;
    sl.SaveToFile(Arq);
  finally
     sl.free;
  end;
end;

procedure TfrmRelSaida.btnGerarClick(Sender: TObject);
var
 vFiltro:string;
begin
   if edtFDataSaiDe.Text.Length=0 then
   begin
     ShowMessage('Informe a data inicial');
     edtFDataSaiDe.SetFocus;
     Exit;
   end;
   if edtFDataSaiATE.Text.Length=0 then
   begin
     ShowMessage('Informe a data Final');
     edtFDataSaiATE.SetFocus;
     Exit;
   end;
  if edtFDataSaiATE.Date<edtFDataSaiDe.Date then
   begin
     ShowMessage('Data final nao pode ser menor que inicial');
     edtFDataSaiATE.SetFocus;
     Exit;
   end;
   if edtFiltroName.Text.Length=0 then
     vFiltro := VFiltro + 'and cast(S.DATA_SAIDA as date) between '+
      QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiDe.Date))+
      ' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiATE.Date));

  if edtFiltroName.Text.Length>0 then
   vFiltro := VFiltro + 'and a.ID_LOTESAIDA='+edtFiltroName.Text;

  if edtRebanho.Text.Length>0 then
   vFiltro := VFiltro + 'and ar.NOME='+edtRebanho.Text.QuotedString;

  if edtCurral.Text.Length>0 then
   vFiltro := VFiltro + 'and c.CODIGO='+edtCurral.Text.QuotedString;

 SerRel.AbreRelSaida(vFiltro);
 lblTotalAnimais.Text    := intToStr(StringGrid1.RowCount);
 btnExportaGrid.Enabled  := not  SerRel.TRelSaida.IsEmpty;
 btnImprimir.Enabled     := not  SerRel.TRelSaida.IsEmpty;

end;

procedure TfrmRelSaida.btnGerarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 TRectangle(sender).Opacity := 0.5;
end;

procedure TfrmRelSaida.btnGerarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 TRectangle(sender).Opacity := 1;
end;

procedure TfrmRelSaida.btnImprimirClick(Sender: TObject);
var
 vFiltro:string;
begin
   if edtFDataSaiDe.Text.Length=0 then
   begin
     ShowMessage('Informe a data inicial');
     edtFDataSaiDe.SetFocus;
     Exit;
   end;
   if edtFDataSaiATE.Text.Length=0 then
   begin
     ShowMessage('Informe a data Final');
     edtFDataSaiATE.SetFocus;
     Exit;
   end;
  if edtFDataSaiATE.Date<edtFDataSaiDe.Date then
   begin
     ShowMessage('Data final nao pode ser menor que inicial');
     edtFDataSaiATE.SetFocus;
     Exit;
   end;
   if edtFiltroName.Text.Length=0 then
     vFiltro := VFiltro + 'and cast(S.DATA_SAIDA as date) between '+
      QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiDe.Date))+
      ' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',edtFDataSaiATE.Date));

  if edtFiltroName.Text.Length>0 then
   vFiltro := VFiltro + 'and LOTE_SAIDA='+edtFiltroName.Text;

  if edtRebanho.Text.Length>0 then
   vFiltro := VFiltro + 'and ar.NOME='+edtRebanho.Text.QuotedString;

  if edtCurral.Text.Length>0 then
   vFiltro := VFiltro + 'and c.CODIGO='+edtCurral.Text.QuotedString;

  SerRel.AbreRelSaidaSintetico(vFiltro);
end;

procedure TfrmRelSaida.chkPeriodoSaidaChange(Sender: TObject);
begin
 edtFDataSaiDE.Enabled  := true;
 edtFDataSaiAte.Enabled := true;
end;

procedure TfrmRelSaida.FormShow(Sender: TObject);
begin
  inherited;
  btnGerar.Enabled  := true;
  btnExportaGrid.Enabled  := false;
  btnImprimir.Enabled     := false;
end;

procedure TfrmRelSaida.SearchEditButton1Click(Sender: TObject);
begin
  frmSaidaGrupo := TfrmSaidaGrupo.Create(nil);
  try
    frmSaidaGrupo.vRelSaida :=1;
    frmSaidaGrupo.ShowModal;
  finally
    edtFiltroName.Text := serviceDB.qryGridLoteSaidaID.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmRelSaida.SearchEditButton2Click(Sender: TObject);
begin
  frmCadRebanho := TfrmCadRebanho.Create(nil);
  try
    frmCadRebanho.ShowModal;
  finally
    edtRebanho.Text := serviceDBN.TAuxRebanhoNOME.AsString;
    frmCadRebanho.Free;
  end;
end;

procedure TfrmRelSaida.SearchEditButton3Click(Sender: TObject);
begin
 frmCadCurralConf := TfrmCadCurralConf.Create(nil);
  try
    frmCadCurralConf.ShowModal;
  finally
    edtCurral.Text := serviceDB.TableCurraisCODIGO.AsString;
    frmCadCurralConf.Free;
  end;
end;

end.
