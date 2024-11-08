unit URelHisObsManejo;

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
  FireDAC.Comp.Client,UMsgDlg;

type
  TfrmRelHistObsManejo = class(TForm)
    layMnuPrincipal: TLayout;
    layMnu: TLayout;
    recMnu: TRectangle;
    Treemnu: TTreeView;
    TreeItemNovo: TTreeViewItem;
    Image2: TImage;
    TreeItemEditar: TTreeViewItem;
    Image5: TImage;
    TreeItemExcluir: TTreeViewItem;
    Image1: TImage;
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
    GroupBox1: TGroupBox;
    edtFiltroName: TEdit;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    chkPeriodoProc: TCheckBox;
    Label4: TLabel;
    cbxPastoOrigem: TComboBox;
    btnConfirmar: TSpeedButton;
    Image3: TImage;
    StringGrid1: TStringGrid;
    LayInfPadrao: TLayout;
    RectangleInfPadrao: TRectangle;
    Layout1: TLayout;
    lblCountAni: TLabel;
    Label3: TLabel;
    edtChip: TEdit;
    cbxStatus: TComboBox;
    Label53: TLabel;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    SaveDialog1: TSaveDialog;
    procedure btnConfirmarClick(Sender: TObject);
    procedure cbxPastoOrigemChange(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
  private
    dlg :TFrmmsgDlg;
    procedure CarregaCombo;
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
  public
    viDPastoOrigem:string;
  end;

var
  frmRelHistObsManejo: TfrmRelHistObsManejo;

implementation

{$R *.fmx}

uses ServiceRel, UPrincipal, UServiceDB;

procedure TfrmRelHistObsManejo.btnConfirmarClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro :='';
 if chkPeriodoProc.IsChecked then
 begin
   vFiltro :=' AND DATA_ULTIMO_PESO BETWEEN '+FormatDateTime('mm/dd/yyyy',edtFDataEntDE.date).QuotedString+' AND '+
    FormatDateTime('mm/dd/yyyy',edtFDataEntATE.date).QuotedString;
 end;
 if edtFiltroName.Text.Length>0 then
   vFiltro := vFiltro+' AND A.IDENTIFICACAO_2='+edtFiltroName.Text.QuotedString;
 if edtChip.Text.Length>0 then
   vFiltro := vFiltro+' AND A.IDENTIFICACAO_1='+edtChip.Text.QuotedString;
 if cbxPastoOrigem.ItemIndex>0 then
   vFiltro := vFiltro+' AND A.ID_LOCAL='+viDPastoOrigem;
 if cbxStatus.ItemIndex>0 then
   vFiltro := vFiltro+'AND A.STATUS='+IntToStr(cbxStatus.ItemIndex);
   SerRel.AbreHistObsManejo(vFiltro);
 lblCountAni.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmRelHistObsManejo.CarregaCombo;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 cbxPastoOrigem.Items.Clear;
 cbxPastoOrigem.Items.Add('TODOS');
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM CURRAIS WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   while not vQry.Eof do
   begin
     cbxPastoOrigem.Items.AddObject(vQry.FieldByName('CODIGO').AsString,TObject(vQry.FieldByName('ID').AsInteger));
     vQry.Next;
   end;
 end;
 cbxPastoOrigem.ItemIndex  :=0;
 vQry.Free;
end;

procedure TfrmRelHistObsManejo.cbxPastoOrigemChange(Sender: TObject);
begin
  if cbxPastoOrigem.ItemIndex>-0 then
   viDPastoOrigem := IntToStr(Integer(cbxPastoOrigem.Items.Objects[cbxPastoOrigem.ItemIndex]));
end;

procedure TfrmRelHistObsManejo.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntATE.Enabled := chkPeriodoProc.IsChecked;
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
end;

procedure TfrmRelHistObsManejo.FormShow(Sender: TObject);
begin
 CarregaCombo;
end;

procedure TfrmRelHistObsManejo.imgCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmRelHistObsManejo.MyShowMessage(msg: string; btnCancel: Boolean);
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    frmPrincipal.vConfirma := dlg.vBntConfirmaMsg;
  end);
end;

procedure TfrmRelHistObsManejo.TreeItemEditarClick(Sender: TObject);
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

procedure TfrmRelHistObsManejo.TreeItemExcluirClick(Sender: TObject);
begin
 if SerRel.qryRelHistObs.IsEmpty then
 begin
   MyShowMessage('Sem dados para esses filtros!',false);
   Exit;
 end;
 SerRel.ppRepHistObsManejo.Print;
end;

end.
