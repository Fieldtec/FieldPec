unit UHistMovRebanho;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.StdCtrls, FMX.ScrollBox, FMX.Grid, FMX.ListBox,
  FMX.DateTimeCtrls, FMX.Edit, FMX.Controls.Presentation, FMX.Objects,
  FMX.TreeView, FMX.Layouts;

type
  TfrmHistMovRebanho = class(TForm)
    layBase: TLayout;
    tbPrincipal: TTabControl;
    tbiMnu: TTabItem;
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
    Label5: TLabel;
    cbxRebanhoOrigem: TComboBox;
    cbxRebanhoDestino: TComboBox;
    btnConfirmar: TSpeedButton;
    Image3: TImage;
    Label6: TLabel;
    edtChip: TEdit;
    StringGrid1: TStringGrid;
    LayInfPadrao: TLayout;
    RectangleInfPadrao: TRectangle;
    Layout1: TLayout;
    lblCountAni: TLabel;
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
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    SaveDialog1: TSaveDialog;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    FDQuery1: TFDQuery;
    procedure cbxRebanhoOrigemChange(Sender: TObject);
    procedure cbxRebanhoDestinoChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
  private
    viDRebanhoOrigem,viDRebanhoDestino:string;
  public
    procedure CarregaCombo;
  end;

var
  frmHistMovRebanho: TfrmHistMovRebanho;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal, ServiceRel;

procedure TfrmHistMovRebanho.btnConfirmarClick(Sender: TObject);
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
 if cbxRebanhoOrigem.ItemIndex>0 then
   vFiltro := vFiltro+' AND ro.ID='+viDRebanhoOrigem;
 if cbxRebanhoDestino.ItemIndex>0 then
   vFiltro := vFiltro+' AND rd.ID='+viDRebanhoDestino;
 SerRel.AbrirHistMovRebanho(vFiltro);
 lblCountAni.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmHistMovRebanho.CarregaCombo;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 cbxRebanhoOrigem.Items.Clear;
 cbxRebanhoDestino.Items.Clear;
 cbxRebanhoOrigem.Items.Add('Todos');
 cbxRebanhoDestino.Items.Add('Todos');
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM AUX_REBANHO WHERE STATUS=1');
   Open;
   while not vQry.Eof do
   begin
     cbxRebanhoOrigem.Items.AddObject(vQry.FieldByName('NOME').AsString,TObject(vQry.FieldByName('ID').AsInteger));
     cbxRebanhoDestino.Items.AddObject(vQry.FieldByName('NOME').AsString,TObject(vQry.FieldByName('ID').AsInteger));
     vQry.Next;
   end;
 end;
 cbxRebanhoOrigem.ItemIndex  :=0;
 cbxRebanhoDestino.ItemIndex :=0;
 vQry.Free;
end;

procedure TfrmHistMovRebanho.cbxRebanhoDestinoChange(Sender: TObject);
begin
 if cbxRebanhoDestino.ItemIndex>-0 then
   viDRebanhoDestino := IntToStr(Integer(cbxRebanhoDestino.Items.Objects[cbxRebanhoDestino.ItemIndex]));

end;

procedure TfrmHistMovRebanho.cbxRebanhoOrigemChange(Sender: TObject);
begin
 if cbxRebanhoOrigem.ItemIndex>-0 then
   viDRebanhoOrigem := IntToStr(Integer(cbxRebanhoOrigem.Items.Objects[cbxRebanhoOrigem.ItemIndex]));
end;

procedure TfrmHistMovRebanho.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
 edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

procedure TfrmHistMovRebanho.FormShow(Sender: TObject);
begin
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiMnu;
 CarregaCombo;
end;

procedure TfrmHistMovRebanho.imgCloseClick(Sender: TObject);
begin
 cLOSE;
end;

procedure TfrmHistMovRebanho.TreeItemEditarClick(Sender: TObject);
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

procedure TfrmHistMovRebanho.TreeItemExcluirClick(Sender: TObject);
begin
  SerRel.ppRepHistMovRebanho.Print;
end;

end.
