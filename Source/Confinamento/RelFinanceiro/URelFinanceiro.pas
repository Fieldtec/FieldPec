unit URelFinanceiro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.ScrollBox, FMX.Grid,
  FMX.StdCtrls, FMX.Effects, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Grid.Style, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmRelFinanceiro = class(TForm)
    laySuperior: TLayout;
    Rectangle1: TRectangle;
    Label2: TLabel;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    RecLista: TRectangle;
    GroupBox1: TGroupBox;
    edtFiltroName: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    edtDataFiltro: TDateEdit;
    btnExportaGrid: TRectangle;
    Layout81: TLayout;
    Image43: TImage;
    Label48: TLabel;
    ShadowEffect47: TShadowEffect;
    btnImprimir: TRectangle;
    Layout96: TLayout;
    Image74: TImage;
    Label13: TLabel;
    btnLocalizar: TSpeedButton;
    StringGrid1: TStringGrid;
    gridAnimais: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportaGridClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFinanceiro: TfrmRelFinanceiro;

implementation

{$R *.fmx}

uses URelatorioZooConf, UServiceDB, UPrincipal,UdmReportConf;

procedure TfrmRelFinanceiro.btnExportaGridClick(Sender: TObject);
begin
 if SaveDialog1.Execute then
  frmPrincipal.ExpTXT(dmRelConf.qryRelFinanceiro,SaveDialog1.FileName);
 frmPrincipal.MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmRelFinanceiro.btnImprimirClick(Sender: TObject);
begin
  if not dmRelConf.qryRelFinanceiro.IsEmpty then
  begin
   BindSourceDB1.DataSource :=nil;
   dmRelConf.ppRepRelFinanceiro.Print;
   BindSourceDB1.DataSource :=dmRelConf.dsRelFinanceiro;
  end;
end;


procedure TfrmRelFinanceiro.btnLocalizarClick(Sender: TObject);
begin
 dmRelConf.RelFinanceiro(edtDataFiltro.Date);
end;

procedure TfrmRelFinanceiro.imgCloseClick(Sender: TObject);
begin
 Close;
end;

end.
