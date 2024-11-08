unit UHistoricoMov;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.DateTimeCtrls, FMX.ListBox,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmHistMovimentacao = class(TfrmCadPadrao)
    edtManejo: TEdit;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    chkPeriodoProc: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    cbxPastoOrigem: TComboBox;
    cbxPastoDestino: TComboBox;
    btnConfirmar: TSpeedButton;
    Image3: TImage;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout1: TLayout;
    lblCountAni: TLabel;
    FDQuery1: TFDQuery;
    SaveDialog1: TSaveDialog;
    Label6: TLabel;
    edtChip: TEdit;
    Label7: TLabel;
    cbxMotivo: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure cbxPastoOrigemChange(Sender: TObject);
    procedure cbxPastoDestinoChange(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
  private
     procedure CarregaCombo;
     procedure CarregaComboMotivo;

  public
    var
     viDPastoDestino,
     viDPastoOrigem:string;
  end;

var
  frmHistMovimentacao: TfrmHistMovimentacao;

implementation

{$R *.fmx}

uses UServiceDB, ServiceRel, UMsgDlg, UPrincipal;

procedure TfrmHistMovimentacao.btnConfirmarClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro :='';
 if chkPeriodoProc.IsChecked then
 begin
   vFiltro :=' AND "DATA" BETWEEN '+FormatDateTime('mm/dd/yyyy',edtFDataEntDE.date).QuotedString+' AND '+
    FormatDateTime('mm/dd/yyyy',edtFDataEntATE.date).QuotedString;
 end;
 if edtFiltroName.Text.Length>0 then
   vFiltro := vFiltro+' AND A.IDENTIFICACAO_2='+edtFiltroName.Text.QuotedString;
 if edtChip.Text.Length>0 then
   vFiltro := vFiltro+' AND A.IDENTIFICACAO_1='+edtChip.Text.QuotedString;
 if edtManejo.Text.Length>0 then
   vFiltro := vFiltro+' AND SUBSTRING(COALESCE(A.IDENTIFICACAO_2,A.IDENTIFICACAO_1) FROM 9 FOR 6)='+edtManejo.Text.QuotedString;
 if cbxPastoOrigem.ItemIndex>0 then
   vFiltro := vFiltro+' AND MA.ID_PASTO_ORIGEM='+viDPastoOrigem;
 if cbxPastoDestino.ItemIndex>0 then
   vFiltro := vFiltro+' AND MA.ID_PASTO_DESTINO='+viDPastoDestino;
 if cbxMotivo.ItemIndex>0 then
  vFiltro := vFiltro+' AND AX.NOME='+cbxMotivo.Selected.Text.QuotedString;
 serviceDB.AbreHistMovimentacao(vFiltro);
 lblCountAni.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmHistMovimentacao.CarregaCombo;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 cbxPastoOrigem.Items.Clear;
 cbxPastoDestino.Items.Clear;
 cbxPastoOrigem.Items.Add('Todos');
 cbxPastoDestino.Items.Add('Todos');
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM CURRAIS WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   while not vQry.Eof do
   begin
     cbxPastoOrigem.Items.AddObject(vQry.FieldByName('CODIGO').AsString,TObject(vQry.FieldByName('ID').AsInteger));
     cbxPastoDestino.Items.AddObject(vQry.FieldByName('CODIGO').AsString,TObject(vQry.FieldByName('ID').AsInteger));
     vQry.Next;
   end;
 end;
 cbxPastoOrigem.ItemIndex  :=0;
 cbxPastoDestino.ItemIndex :=0;
 vQry.Free;
end;

procedure TfrmHistMovimentacao.CarregaComboMotivo;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 cbxMotivo.Items.Clear;
 cbxMotivo.Items.Add('Todos');
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT ID,NOME FROM AUX_MOTIVO_MOVIMENTACAO WHERE STATUS =1');
   Open;
   while not vQry.Eof do
   begin
     cbxMotivo.Items.AddObject(vQry.FieldByName('NOME').AsString,TObject(vQry.FieldByName('ID').AsInteger));
     vQry.Next;
   end;
 end;
 cbxMotivo.ItemIndex  :=0;
 vQry.Free;
end;

procedure TfrmHistMovimentacao.cbxPastoDestinoChange(Sender: TObject);
begin
 if cbxPastoDestino.ItemIndex>-0 then
   viDPastoDestino := IntToStr(Integer(cbxPastoDestino.Items.Objects[cbxPastoDestino.ItemIndex]));
end;

procedure TfrmHistMovimentacao.cbxPastoOrigemChange(Sender: TObject);
begin
  if cbxPastoOrigem.ItemIndex>-0 then
   viDPastoOrigem := IntToStr(Integer(cbxPastoOrigem.Items.Objects[cbxPastoOrigem.ItemIndex]));
end;

procedure TfrmHistMovimentacao.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
 edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

procedure TfrmHistMovimentacao.FormShow(Sender: TObject);
begin
 edtFDataEntDE.Date := Date-7;
 serviceDB.AbreHistMovimentacao('AND "DATA" BETWEEN '+
  FormatDateTime('mm/dd/yyyy',date-7).QuotedString+' AND '+FormatDateTime('mm/dd/yyyy',date).QuotedString);
 lblCountAni.Text := intToStr(StringGrid1.RowCount);
 CarregaCombo;
 CarregaComboMotivo;
end;



procedure TfrmHistMovimentacao.TreeItemEditarClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
 if SaveDialog1.Execute then
 begin
   csv:= tstringlist.create;
   for row:= 1 to StringGrid1.rowcount do
    begin
     s:= '';
     if row=1 then
     begin
       for col:= 0 to StringGrid1.ColumnCount-1 do
        s:= s + StringGrid1.Columns[col].Header + ';';
       csv.add(s)
     end
     else
     begin
       for col:= 0 to StringGrid1.ColumnCount-1 do
        s:= s + StringGrid1.Cells[col, row-1] + ';';
       csv.add(s)
     end;
    end;
   csv.savetofile(SaveDialog1.FileName);
   csv.free;
 end;

end;

procedure TfrmHistMovimentacao.TreeItemExcluirClick(Sender: TObject);
begin
 SerRel.ppReportHistMov.Print;
end;

end.
