unit URetiradaChip;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls, FMX.Effects, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ppCtrls, ppPrnabl, ppBands, ppCache, ppDesignLayer,
  ppParameter, ppVar;

type
  TfrmRetiradaChip = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    B: TRectangle;
    Layout24: TLayout;
    Image23: TImage;
    Label47: TLabel;
    Layout18: TLayout;
    Rectangle7: TRectangle;
    Layout19: TLayout;
    Label12: TLabel;
    Label3: TLabel;
    Layout20: TLayout;
    EdtdataRetirada: TDateEdit;
    edtRetiradoPor: TEdit;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    Layout4: TLayout;
    edtPedidoBrincos: TEdit;
    EditButton1: TEditButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtCaixaInicio: TEdit;
    edtNumeroInicio: TEdit;
    edtCaixaFim: TEdit;
    edtNumeroFim: TEdit;
    Layout5: TLayout;
    Rectangle3: TRectangle;
    Layout6: TLayout;
    Label9: TLabel;
    Layout7: TLayout;
    edtTotalChips: TEdit;
    EditButton2: TEditButton;
    TreeViewItem1: TTreeViewItem;
    Image3: TImage;
    btnExportaGrid: TRectangle;
    Layout81: TLayout;
    Image43: TImage;
    Label48: TLabel;
    ShadowEffect47: TShadowEffect;
    SaveDialog1: TSaveDialog;
    dsRetirada: TDataSource;
    ppRepFicha: TppReport;
    ppDBFicha: TppDBPipeline;
    RertiradaChipFicha: TFDQuery;
    RertiradaChipFichaID: TIntegerField;
    RertiradaChipFichaID_PEDIDO: TIntegerField;
    RertiradaChipFichaDATA_SAIDA: TDateField;
    RertiradaChipFichaCAIXA_INI: TIntegerField;
    RertiradaChipFichaCAIXA_FIM: TIntegerField;
    RertiradaChipFichaNUMERO_INI: TStringField;
    RertiradaChipFichaNUMERO_FIM: TStringField;
    RertiradaChipFichaDESTINADO: TStringField;
    RertiradaChipFichaSTATUS: TIntegerField;
    RertiradaChipFichaID_REPONSAVEL: TIntegerField;
    RertiradaChipFichaID_USUARIO_ALTERACAO: TIntegerField;
    RertiradaChipFichaDATA_ALTERACAO: TSQLTimeStampField;
    RertiradaChipFichaDATAREG: TSQLTimeStampField;
    RertiradaChipFichaNUMERO_PEDIDO: TStringField;
    RertiradaChipFichaRESPONAVEL: TStringField;
    RertiradaChipFichaQTDE_TOTAL: TIntegerField;
    RertiradaChipFichaID_COMPRADOR: TIntegerField;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppImage1: TppImage;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppShape2: TppShape;
    btnImprimir: TRectangle;
    Layout96: TLayout;
    Image74: TImage;
    Label13: TLabel;
    Layout8: TLayout;
    Label14: TLabel;
    lblTotalRetirado: TLabel;
    Label15: TLabel;
    lblTotalUsados: TLabel;
    Label16: TLabel;
    lblTotalNaoUsados: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure edtCaixaInicioEnter(Sender: TObject);
    procedure edtCaixaFimEnter(Sender: TObject);
    procedure edtCaixaInicioExit(Sender: TObject);
    procedure edtCaixaFimExit(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure BClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnExportaGridClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    procedure Filtro;
  public
    { Public declarations }
  end;

var
  frmRetiradaChip: TfrmRetiradaChip;

implementation

{$R *.fmx}

uses uServiceDB, UEstoqueChip, UMsgDlg, UCompradorGado, UPrincipal;

procedure TfrmRetiradaChip.BClick(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmRetiradaChip.btnConfirmaClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
 EdtdataRetirada.SetFocus;
 if edtRetiradoPor.Text.Length=0 then
 begin
   MyShowMessage('Informe o responsavel pela retirada!',false);
   Exit;
 end;
 if edtPedidoBrincos.Text.Length=0 then
 begin
   MyShowMessage('Informe o Pedido de Brincos!',false);
   Exit;
 end;
 if edtCaixaInicio.Text.Length=0 then
 begin
   MyShowMessage('Informe a Caixa Inicio!',false);
   Exit;
 end;


  if not serviceDB.VerificaNumeroUsarioEntreCaixas(
                                                   edtPedidoBrincos.TagString,
                                                   edtCaixaInicio.Text,
                                                   edtCaixaFim.Text) then
  begin
   MyShowMessage('Existe chips usados nessa sequencia de caixas impossivel fazer a retirada!',false);
   Exit;
  end;

 if edtCaixaFim.Text.Length=0 then
 begin
   MyShowMessage('Informe a Caixa Fim!',false);
   Exit;
 end;
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Confirma a retirada de '+edtTotalChips.Text+' Chips do estoque por '+
     edtRetiradoPor.Text+' em '+
      EdtdataRetirada.Text+' ?';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
       if dlg.vBntConfirmaMsg=1 then
       begin
        try
           serviceDB.RertiradaChipID_PEDIDO.AsString     := edtPedidoBrincos.TagString;
           serviceDB.RertiradaChipID_REPONSAVEL.AsString := serviceDB.vIdUserLogado;
           serviceDB.RertiradaChipDATA_SAIDA.AsDateTime  := EdtdataRetirada.Date;
           serviceDB.RertiradaChipCAIXA_INI.AsString     := edtCaixaInicio.Text;
           serviceDB.RertiradaChipCAIXA_FIM.AsString     := edtCaixaFim.Text;
           serviceDB.RertiradaChipNUMERO_INI.AsString    := edtNumeroInicio.Text;
           serviceDB.RertiradaChipNUMERO_FIM.AsString    := edtNumeroFim.Text;
           serviceDB.RertiradaChipID_COMPRADOR.AsString  := edtRetiradoPor.TagString;
           serviceDB.RertiradaChipQTDE_TOTAL.AsString    := edtTotalChips.Text;
           serviceDB.RertiradaChip.ApplyUpdates(-1);

           serviceDB.MudaStatusChipRetirada(edtPedidoBrincos.TagString,
            edtCaixaInicio.Text,edtCaixaFim.Text);

           serviceDB.AtualizaEstoqueBrincoChip;

           Filtro;

           MudarAba(tbiMnu,sender);
        except
          on E : Exception do
            myShowMessage('Erro ao inserir Retirada : '+E.Message,false);
        end;
       end
    end);
end;

procedure TfrmRetiradaChip.btnExportaGridClick(Sender: TObject);
begin
 if SaveDialog1.Execute then
   frmPrincipal.ExpTXT(serviceDB.RertiradaChip,SaveDialog1.FileName);
 MyShowMessage('Arquivo gerado com sucesso :'+#13+SaveDialog1.FileName,false);
end;

procedure TfrmRetiradaChip.btnImprimirClick(Sender: TObject);
begin
 BindSourceDB1.DataSet := nil;
 serviceDB.ppRepFicha.PrintReport;
 BindSourceDB1.DataSet := serviceDB.RertiradaChip;
end;

procedure TfrmRetiradaChip.EditButton1Click(Sender: TObject);
begin
  edtCaixaInicio.Text  :='';
  edtCaixaFim.Text     :='';
  edtNumeroInicio.Text :='';
  edtNumeroFim.Text    :='';
  try
    frmCadPedidoChip := TfrmCadPedidoChip.Create(Self);
    frmCadPedidoChip.vEdit := 1;
    frmCadPedidoChip.ShowModal;
  finally
   begin
    edtPedidoBrincos.Text      := serviceDB.PedioChipNUMERO_PEDIDO.AsString;
    edtPedidoBrincos.TagString := serviceDB.PedioChipID.AsString;
    frmCadPedidoChip.Free;
   end;
  end;
end;

procedure TfrmRetiradaChip.EditButton2Click(Sender: TObject);
begin
  serviceDB.vCadGTA :=1;
  try
    frmCadCompradorGado := TfrmCadCompradorGado.Create(Self);
    frmCadCompradorGado.ShowModal;
  finally
   begin
    edtRetiradoPor.Text        := serviceDB.TableCompradorNOME.AsString;
    edtRetiradoPor.TagString := serviceDB.TableCompradorID.AsString;
    frmCadCompradorGado.Free;
   end;
  end;
end;

procedure TfrmRetiradaChip.edtCaixaFimEnter(Sender: TObject);
begin
 if edtPedidoBrincos.Text.Length=0 then
 begin
   MyShowMessage('Informe Pedido de Brincos!',false);
   edtPedidoBrincos.SetFocus;
 end;
end;

procedure TfrmRetiradaChip.edtCaixaFimExit(Sender: TObject);
begin
 if(edtCaixaFim.Text.Length>0) and (edtPedidoBrincos.Text.Length>0) then
 begin
  edtNumeroFim.Text := serviceDB.RetornaFinalCaixa(
   edtPedidoBrincos.TagString,
   edtCaixaFim.Text);
 end;
 if (edtPedidoBrincos.Text.Length>0) and (edtCaixaInicio.Text.Length>0)
  and (edtCaixaFim.Text.Length>0) then
 begin
   edtTotalChips.Text := serviceDB.RetornaQtdTotalChip(
    edtPedidoBrincos.TagString,
    edtCaixaInicio.Text,
    edtCaixaFim.Text);
 end;
end;

procedure TfrmRetiradaChip.edtCaixaInicioEnter(Sender: TObject);
begin
 if edtPedidoBrincos.Text.Length=0 then
 begin
   MyShowMessage('Informe Pedido de Brincos!',false);
   edtPedidoBrincos.SetFocus;
 end;
end;

procedure TfrmRetiradaChip.edtCaixaInicioExit(Sender: TObject);
begin
 if(edtCaixaInicio.Text.Length>0) and (edtPedidoBrincos.Text.Length>0) then
 begin
   edtNumeroInicio.Text := serviceDB.RetornaInicialCaixa(
    edtPedidoBrincos.TagString,
    edtCaixaInicio.Text);
 end;
 if (edtPedidoBrincos.Text.Length>0) and (edtCaixaInicio.Text.Length>0)
  and (edtCaixaFim.Text.Length>0) then
 begin
   edtTotalChips.Text := serviceDB.RetornaQtdTotalChip(
    edtPedidoBrincos.TagString,
    edtCaixaInicio.Text,
    edtCaixaFim.Text);
 end;
end;

procedure TfrmRetiradaChip.Filtro;
var
 vFiltro :string;
 vDataDe,vDataAte:string;
begin
 vDataDe   := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString;
 vDataAte  := FormatDateTime('mm/dd/yyyy',edtFDataEntAte.Date).QuotedString;

 vFiltro   := 'AND DATA_SAIDA BETWEEN '+vDataDe+' and '+vDataAte;

 if edtFiltroName.Text.Length>0 then
  vFiltro := vFiltro + ' and C.NOME like '+QuotedStr('%'+edtFiltroName.Text+'%');

 serviceDB.AbreRetiradaChip(vFiltro);

 if serviceDB.RertiradaResumo.IsEmpty then
 begin
   lblTotalRetirado.Text :='0';
   lblTotalUsados.Text :='0';
   lblTotalNaoUsados.Text :='0';
 end
 else
 begin
   lblTotalRetirado.Text  := serviceDB.RertiradaResumoTOTALRETIRADO.AsString;
   lblTotalUsados.Text    := serviceDB.RertiradaResumoTOTALUSADO.AsString;
   lblTotalNaoUsados.Text := serviceDB.RertiradaResumoTOTALNAOUSADO.AsString;
 end;


end;

procedure TfrmRetiradaChip.FormShow(Sender: TObject);
begin
  Filtro;
  inherited;
end;

procedure TfrmRetiradaChip.TreeItemExcluirClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente Cancelar essa retirada e retornor os chips para o estoque?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
     if dlg.vBntConfirmaMsg=1 then
     begin
      try
       serviceDB.RetornaChipRetirada(
        serviceDB.RertiradaChipId_Pedido.AsString,
        serviceDB.RertiradaChipCAIXA_INI.AsString,
        serviceDB.RertiradaChipCAIXA_FIM.AsString
       );
       serviceDB.RertiradaChip.Edit;
       serviceDB.RertiradaChipSTATUS.AsInteger :=-1;
       serviceDB.RertiradaChip.ApplyUpdates(-1);
       serviceDB.AtualizaEstoqueBrincoChip;
       MyShowMessage('Registro Inativado com Sucesso!',false);
       Filtro;
      except
      on E : Exception do
       begin
         MyShowMessage('Erro ao cancelar retirada :'+E.Message,false);
       end;
      end;
     end
  end);
end;

procedure TfrmRetiradaChip.TreeItemNovoClick(Sender: TObject);
begin
  EdtdataRetirada.Date  := date;
  edtRetiradoPor.Text   := '';
  edtPedidoBrincos.Text :='';
  edtCaixaInicio.Text :='';
  edtCaixaFim.Text :='';
  edtNumeroInicio.Text :='';
  edtNumeroFim.Text :='';
  edtTotalChips.Text :='';
  serviceDB.RertiradaChip.Insert;
  inherited;
end;

procedure TfrmRetiradaChip.TreeViewItem1Click(Sender: TObject);
begin
 if serviceDB.RertiradaChip.IsEmpty then
 begin
   MyShowMessage('Selecione a retirada!',false);
   Exit;
 end;
 RertiradaChipFicha.Close;
 RertiradaChipFicha.ParamByName('id').AsInteger := serviceDB.RertiradaChipID.AsInteger;
 serviceDB.RertiradaChip.Open;
 ppRepFicha.PrintReport;
end;

end.
