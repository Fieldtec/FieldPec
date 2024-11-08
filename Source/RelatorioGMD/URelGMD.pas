unit URelGMD;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.Effects,FMX.ListBox, FMX.DateTimeCtrls,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmRelGMD = class(TfrmCadPadrao)
    btnLocalizar: TSpeedButton;
    btnImprimir: TRectangle;
    Layout96: TLayout;
    Image74: TImage;
    Label13: TLabel;
    btnExportaGrid: TRectangle;
    Layout81: TLayout;
    Image43: TImage;
    Label48: TLabel;
    ShadowEffect47: TShadowEffect;
    edtLoteEntGrupo: TEdit;
    EditButton2: TEditButton;
    ClearEditButton2: TClearEditButton;
    Label3: TLabel;
    cbxtipoCurral: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    edtIdent1: TEdit;
    edtIdent2: TEdit;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    chkPeriodoProc: TCheckBox;
    SaveDialog1: TSaveDialog;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Label6: TLabel;
    cbxTipoPesagem: TComboBox;
    procedure EditButton2Click(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportaGridClick(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
  private
    { Private declarations }
  public
    vIdCurral :string;
  end;

var
  frmRelGMD: TfrmRelGMD;

implementation

{$R *.fmx}

uses UdmReportConf, UCurrais, UServiceDB, UPrincipal, UCurralConfinamento;

procedure TfrmRelGMD.btnExportaGridClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  frmPrincipal.ExpTXT(dmRelConf.RelGMDGrid,SaveDialog1.FileName);
 frmPrincipal.MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmRelGMD.btnImprimirClick(Sender: TObject);
begin
 dmRelConf.ppRepgmd.Print;
end;

procedure TfrmRelGMD.btnLocalizarClick(Sender: TObject);
var
 vDataIni,vDataFim,vFiltro:string;
begin
 if edtLoteEntGrupo.Text.Length=0 then
 begin
   MyShowMessage('Selecione o curral!',false);
   Exit;
 end;

 vFiltro :='';
 if edtIdent1.Text.Length>0 then
  vFiltro := vFiltro +' and R_CHIP='+edtIdent1.Text.QuotedString;

 if edtIdent2.Text.Length>0 then
  vFiltro := vFiltro +' and R_SISBOV='+edtIdent2.Text.QuotedString;

 if cbxTipoPesagem.ItemIndex>0 then
  vFiltro := vFiltro +' and TIPO='+cbxTipoPesagem.Selected.Text.QuotedString;



 IF chkPeriodoProc.IsChecked then
 begin
  vDataIni := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date);
  vDataFim := FormatDateTime('mm/dd/yyyy',edtFDataEntAte.Date);
 end
 else
 begin
  vDataIni := '01/01/2000';
  vDataFim := FormatDateTime('mm/dd/yyyy',Date);
 end;
 if vIdCurral.Length=0 then
  vIdCurral:='0';
  dmRelConf.GeraRelGMD(vIdCurral,vDataIni,vDataFim,vFiltro);

  btnExportaGrid.Enabled := NOT dmRelConf.RelGMDGrid.IsEmpty;
  btnImprimir.Enabled    := NOT dmRelConf.RelGMDGrid.IsEmpty;


end;

procedure TfrmRelGMD.chkPeriodoProcChange(Sender: TObject);
begin
 edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
 edtFDataEntAte.Enabled := chkPeriodoProc.IsChecked;
end;

procedure TfrmRelGMD.EditButton2Click(Sender: TObject);
begin
  if cbxtipoCurral.ItemIndex=-1 then
  begin
    frmPrincipal.MyShowMessage('Informe o tipo antes!',false);
    Exit;
  end;
  serviceDB.AbreQryCurrais(ServiceDB.vIdPropriedade,intToStr(cbxtipoCurral.ItemIndex));
  if cbxtipoCurral.ItemIndex=0 then
  begin
    frmCadCurral := TfrmCadCurral.Create(nil);
    try
      frmCadCurral.ShowModal;
    finally
      vIdCurral                     := serviceDB.TableCurraisID.AsString;
      edtLoteEntGrupo.Text          := serviceDB.TableCurraisCODIGO.AsString;
      frmCadCurral.Release;
    end;
  end;
  if cbxtipoCurral.ItemIndex=1 then
  begin
    frmCadCurralConf := TfrmCadCurralConf.Create(nil);
    try
      frmCadCurralConf.ShowModal;
    finally
      vIdCurral                     := serviceDB.TableCurraisID.AsString;
      edtLoteEntGrupo.Text          := serviceDB.TableCurraisCODIGO.AsString;
      frmCadCurralConf.Release;
    end;
  end;
end;

procedure TfrmRelGMD.FormShow(Sender: TObject);
begin
  btnExportaGrid.Enabled := FALSE;
  btnImprimir.Enabled    := FALSE;
  inherited;
end;

end.
