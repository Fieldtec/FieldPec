unit URelatorioZooConf;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts,
  FMX.Effects, FMX.DateTimeCtrls, Data.DB,UMsgDlg, UMsgDlgRel, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox;

type
  TfrmRelatorioZooConf = class(TfrmCadPadrao)
    Label4: TLabel;
    edtDataFiltro: TDateEdit;
    btnExportaGrid: TRectangle;
    Layout81: TLayout;
    Image43: TImage;
    Label48: TLabel;
    btnImprimir: TRectangle;
    Layout96: TLayout;
    Image74: TImage;
    Label13: TLabel;
    ShadowEffect47: TShadowEffect;
    dsGrid: TDataSource;
    btnLocalizar: TSpeedButton;
    btnGerar: TRectangle;
    Layout1: TLayout;
    Image3: TImage;
    Label3: TLabel;
    lblTotalAnimais: TLabel;
    lblMediaPeso: TLabel;
    gridAnimais: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    SaveDialog1: TSaveDialog;
    layPrint: TLayout;
    Rectangle51: TRectangle;
    Rectangle52: TRectangle;
    Layout62: TLayout;
    Layout63: TLayout;
    Layout64: TLayout;
    Label61: TLabel;
    Layout65: TLayout;
    Image17: TImage;
    Layout61: TLayout;
    edtPrintProtocolo: TRectangle;
    Label71: TLabel;
    edtPrintProtocoloEspelho: TRectangle;
    Label72: TLabel;
    cbxTipoLoteF: TComboBox;
    Label39: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnExportaGridClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure edtPrintProtocoloClick(Sender: TObject);
    procedure edtPrintProtocoloEspelhoClick(Sender: TObject);
  private
    { Private declarations }
  public
   var
    dlg :TFrmmsgDlgRel;
    vQtdCab,
    vTotalPeso,
    vMediaPeso :Double;
   procedure MyShowMessage(msg,Report: string; btnCancel,btnClose: Boolean);
   procedure SomaColunasGrid;
  end;

var
  frmRelatorioZooConf: TfrmRelatorioZooConf;

implementation

{$R *.fmx}

uses USeviceConfinamento, UPrincipal, UdmReportConf;


procedure TfrmRelatorioZooConf.MyShowMessage(msg,Report: string; btnCancel,btnClose: Boolean);
begin
  dlg := TFrmmsgDlgRel.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.btnCancel.Visible := btnClose;
  dlg.GeraRel(Report);
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    frmPrincipal.vConfirma := dlg.vBntConfirmaMsg;
  end);
end;

procedure TfrmRelatorioZooConf.SomaColunasGrid;
begin
 vQtdCab    := 0;
 vTotalPeso := 0;
 vMediaPeso := 0;
 dmRelConf.TRelZooGrid.First;
 while not dmRelConf.TRelZooGrid.eof  do
 begin
   vQtdCab    := vQtdCab    + dmRelConf.TRelZooGridQTDE_CAB.AsFloat;
   vTotalPeso := vTotalPeso + (dmRelConf.TRelZooGridQTDE_CAB.AsFloat*dmRelConf.TRelZooGridPESO_ENTRADA.AsFloat);
   dmRelConf.TRelZooGrid.Next;
 end;
 if (vQtdCab>0)and(vTotalPeso>0)  then
  vMediaPeso := vTotalPeso/vQtdCab;

 lblTotalAnimais.Text := 'Total de Animais : '+ intToStr(trunc(vQtdCab));
 lblMediaPeso.Text    := 'Media Peso Entrada : '+FormatFloat('0.00',vMediaPeso);
end;

procedure TfrmRelatorioZooConf.btnExportaGridClick(Sender: TObject);
begin
 if SaveDialog1.Execute then
  frmPrincipal.ExpTXT(dmRelConf.TRelZooGrid,SaveDialog1.FileName);
 frmPrincipal.MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmRelatorioZooConf.btnGerarClick(Sender: TObject);
var
 myThread : TThread;
begin
 dmRelConf.AbreRelatorioZootecnico(edtDataFiltro.date,1,cbxTipoLoteF.ItemIndex-1);
 SomaColunasGrid;
 if not dmRelConf.TRelZooGrid.IsEmpty then
 begin
   frmPrincipal.MyShowMessage('Ja existe relatorio gerado para essa data,'+#13+
   ' deseja gerar Novamente?',true);
    case frmPrincipal.vConfirma of
      1:
      begin
        myThread := TThread.CreateAnonymousThread(
        procedure
        begin
         TThread.Synchronize(nil, procedure
         begin
           try
             BindSourceDB1.DataSource := nil;
             MyShowMessage('Gerando Aguarde...','Zootecnico',False,false);
             btnExportaGrid.Enabled := not dmRelConf.TRelZooGrid.IsEmpty;
             btnImprimir.Enabled    := not dmRelConf.TRelZooGrid.IsEmpty;
             BindSourceDB1.DataSource := dsGrid;
            except
            on E : Exception do
             begin
               frmPrincipal.myShowMessage('Erro ao gerar relatorio : '+E.Message,false);
             end;
           end;
         end);
        end);
        myThread.start();
      end;
    0:
     begin
      btnExportaGrid.Enabled := true;
      btnImprimir.Enabled    := true;
     end;
    end;
 end
 else
 begin
   myThread := TThread.CreateAnonymousThread(
    procedure
    begin
     TThread.Synchronize(nil, procedure
     begin
       try
         MyShowMessage('Gerando Aguarde...','Zootecnico',False,false);
         btnExportaGrid.Enabled := not dmRelConf.TRelZooGrid.IsEmpty;
         btnImprimir.Enabled    := not dmRelConf.TRelZooGrid.IsEmpty;
        except
        on E : Exception do
         begin
           frmPrincipal.myShowMessage('Erro ao gerar relatorio : '+E.Message,false);
         end;
       end;
     end);
    end);
    myThread.start();
 end;
end;

procedure TfrmRelatorioZooConf.btnImprimirClick(Sender: TObject);
begin
   layPrint.Visible := true;
end;

procedure TfrmRelatorioZooConf.btnLocalizarClick(Sender: TObject);
var
 myThread : TThread;
begin
 dmRelConf.AbreRelatorioZootecnico(edtDataFiltro.date,1,cbxTipoLoteF.ItemIndex-1);
 SomaColunasGrid;
 if dmRelConf.TRelZooGrid.IsEmpty then
 begin
   frmPrincipal.MyShowMessage('Não existe relatorio gerado para essa data,'+#13+
   ' deseja gerar agora?',true);
    case frmPrincipal.vConfirma of
      1:
      begin
        myThread := TThread.CreateAnonymousThread(
        procedure
        begin
         TThread.Synchronize(nil, procedure
         begin
           try
             MyShowMessage('Gerando Aguarde...','Zootecnico',False,false);
             btnExportaGrid.Enabled := not dmRelConf.TRelZooGrid.IsEmpty;
             btnImprimir.Enabled    := not dmRelConf.TRelZooGrid.IsEmpty;
            except
            on E : Exception do
             begin
               frmPrincipal.myShowMessage('Erro ao gerar relatorio : '+E.Message,false);
             end;
           end;
         end);
        end);
        myThread.start();
      end;
    0:
     begin

     end;
    end;
 end
 else
 begin
  btnExportaGrid.Enabled := true;
  btnImprimir.Enabled    := true;
 end;
end;

procedure TfrmRelatorioZooConf.edtPrintProtocoloClick(Sender: TObject);
begin
 dmRelConf.AbreRelatorioZootecnico(edtDataFiltro.date,1,cbxTipoLoteF.ItemIndex-1);
 SomaColunasGrid;
 dmRelConf.pLblPesoEntrada.Text := FormatFloat('0.00',vMediaPeso);
 dmRelConf.ppRepLoteAtivo.Print;
end;

procedure TfrmRelatorioZooConf.edtPrintProtocoloEspelhoClick(Sender: TObject);
begin
 dmRelConf.AbreRelatorioZootecnico(edtDataFiltro.date,0,cbxTipoLoteF.ItemIndex-1);
 SomaColunasGrid;
 dmRelConf.pLblPesoEntrada.Text := FormatFloat('0.00',vMediaPeso);
 dmRelConf.ppRepLoteAtivo.Print;
end;

procedure TfrmRelatorioZooConf.FormShow(Sender: TObject);
begin
  layPrint.Visible := false;
  btnExportaGrid.Enabled := false;
  btnImprimir.Enabled := false;
  dmRelConf.AbreRelatorioZootecnico(edtDataFiltro.date,1,cbxTipoLoteF.ItemIndex-1);
  SomaColunasGrid;
  btnExportaGrid.Enabled := not dmRelConf.TRelZooGrid.IsEmpty;
  btnImprimir.Enabled    := not dmRelConf.TRelZooGrid.IsEmpty;
  inherited;
end;

procedure TfrmRelatorioZooConf.Image17Click(Sender: TObject);
begin
 layPrint.Visible := false;
end;

end.
