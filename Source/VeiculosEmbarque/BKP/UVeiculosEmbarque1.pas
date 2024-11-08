unit UVeiculosEmbarque;

interface
uses
    System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.DateTimeCtrls, FMX.EditBox, FMX.NumberBox, FMX.ListBox,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.TabControl,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,FireDAC.Comp.Client,Winapi.Windows,
  FMX.Effects, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.TreeView, FMX.Menus,
  Fmx.Bind.Grid, Data.Bind.Grid, ppParameter, ppDesignLayer, ppCtrls, ppVar,
  ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, FMX.Memo, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, ppBarCod, ppStrtch, ppMemo,UMsgDlg;

type
  TfrmVeiculosEmbarquer = class(TForm)
    LayApartacao: TLayout;
    Layout66: TLayout;
    Rectangle17: TRectangle;
    Image25: TImage;
    ShadowEffect9: TShadowEffect;
    Rectangle18: TRectangle;
    Layout67: TLayout;
    Layout69: TLayout;
    ComboBox3: TComboBox;
    Layout70: TLayout;
    Label53: TLabel;
    Rectangle43: TRectangle;
    btnEraPorVeiculo: TRectangle;
    Layout77: TLayout;
    Label59: TLabel;
    ShadowEffect24: TShadowEffect;
    layAtualizaPesoBalancao: TRectangle;
    btnAtualizaPesoBalancao: TRectangle;
    Layout82: TLayout;
    Label58: TLabel;
    ShadowEffect1: TShadowEffect;
    gridVeiculos: TStringGrid;
    Rectangle20: TRectangle;
    Label60: TLabel;
    lblQtdeVeiculos: TLabel;
    Label61: TLabel;
    lblCapacidadeTotal: TLabel;
    Label62: TLabel;
    lblLotacaoTotal: TLabel;
    Layout83: TLayout;
    Layout84: TLayout;
    Rectangle25: TRectangle;
    TreeView1: TTreeView;
    TreeNovaGTA: TTreeViewItem;
    Image33: TImage;
    TreeItemEditar: TTreeViewItem;
    Image34: TImage;
    btnExcluiGTA: TTreeViewItem;
    Image35: TImage;
    gridGtasVeiculo: TStringGrid;
    Rectangle24: TRectangle;
    Label69: TLabel;
    Layout74: TLayout;
    Rectangle21: TRectangle;
    Label63: TLabel;
    Layout75: TLayout;
    Image28: TImage;
    BindSourceDB5: TBindSourceDB;
    BindSourceDB10: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB9: TLinkGridToDataSource;
    LinkGridToDataSourceBindSourceDB10: TLinkGridToDataSource;
    Ü: TBindSourceDB;
    procedure FormShow(Sender: TObject);
    procedure btnEraPorVeiculoClick(Sender: TObject);
    procedure btnAtualizaPesoBalancaoClick(Sender: TObject);
    procedure gridVeiculosCellClick(const Column: TColumn; const Row: Integer);
    procedure gridVeiculosEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure TreeNovaGTAClick(Sender: TObject);
    procedure btnExcluiGTAClick(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure gridVeiculosSelChanged(Sender: TObject);
  private
    { Private declarations }
  public
   vIdLs:string;
   vIdVeiculoEra,vIdCurral,vIdRebanhoDestino,vTipoCurral,vIdDestinoVenda,vIdMotivo,vProdutorOrigem,vPrpriedadeOrigem,vIdGTA,
     vIdRacaFiltro,vIdCatFiltro,vLoteSaida,vPrpriedadeDestino,vIdLocal,vPROPDestinoF,vPROPOrigemF,
     vIdVeiculoLista,vIdRebanhoOrigem,vIdLote:string;
     vIdRaca,vIdCategoria,vAltera,vTotalAnimaisGTA,vQtdAnimal,ICount,vTipoAnexo,
     vTransferencia,vImportacao,vTransSelect  :integer;
   procedure InfoGridVeiculos;
  end;

var
  frmVeiculosEmbarquer: TfrmVeiculosEmbarquer;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB, ServiceRel, UCadGTA;

procedure TfrmVeiculosEmbarquer.btnAtualizaPesoBalancaoClick(Sender: TObject);
var
 vPesoMedio:string;
begin
  if serviceDB.qryVeiculosLOTACAO.AsInteger=0 then
  begin
     frmPrincipal.MyShowMessage('Lotacao deve ser maior que zero!!',false);
     Exit;
  end;
  vPesoMedio := FormatFloat('####,##0.00',(serviceDB.qryVeiculosPESO_BALANCAO.AsFloat/
    serviceDB.qryVeiculosLOTACAO.AsFloat));

  frmPrincipal.MyShowMessage('Deseja Realmente Atualizar o Peso do Balanção nos animais?'+#13+
  'Peso Balanção: '+serviceDB.qryVeiculosPESO_BALANCAO.AsString+#13+
  'Peso Medio Animais: '+vPesoMedio,false);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       serviceDB.AtualizaPesoBalancaoAnimais(serviceDB.qryVeiculosID.AsString,
        StringReplace(vPesoMedio,',','.',[rfReplaceAll]));
       ShowMessage('Peso Atualizado com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  2:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
end;

procedure TfrmVeiculosEmbarquer.btnEraPorVeiculoClick(Sender: TObject);
begin
 if vIdVeiculoEra.Length=0 then
 begin
  frmPrincipal.MyShowMessage('Selecione um veículo!',false);
  Exit;
 end
 else
 begin
   SerRel.AbreEraEmbarque(servicedb.qryGridLoteSaidaID.AsString,vIdVeiculoEra);
   if not serRel.qryRelEraEmbaque.IsEmpty then
    serRel.ppRepRelEraEmbaque.Print
   else
   begin
     frmPrincipal.MyShowMessage('Veiculo Sem dados para gerar esse relatorio!',false);
   end;
 end;
end;

procedure TfrmVeiculosEmbarquer.btnExcluiGTAClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente Limpar a GTA Desse Veículo?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      try
        serviceDB.DesvinculaGTAVeiculo(vIdVeiculoEra,serviceDB.qryVeiculoGTASaidagtaid.asstring);
        serviceDB.AbreQryVeiculos(serviceDB.qryGridLoteSaidaID.AsString);
        serviceDB.AbreGtaVeiculoSaida(serviceDB.qryVeiculosID.AsString);
      except
      on E : Exception do
       begin
         frmPrincipal.MyShowMessage('Erro ao Desvincular Veiculo da GTA:'+E.Message,false);
       end;
      end;
    end;
  end);
end;

procedure TfrmVeiculosEmbarquer.FormShow(Sender: TObject);
begin
 serviceDB.AbreQryVeiculos(vIdLs);
 serviceDB.AbreQryLS(vIdLs);
 InfoGridVeiculos;
end;

procedure TfrmVeiculosEmbarquer.gridVeiculosCellClick(const Column: TColumn;
  const Row: Integer);
begin
   gridVeiculos.Columns[6].ReadOnly := serviceDB.qryVeiculosLOTACAO.AsInteger<=0
//  serviceDB.AbreGtaVeiculoSaida(serviceDB.qryVeiculosID.AsString);
//  vIdVeiculoEra := serviceDB.qryVeiculosID.AsString;
//  layAtualizaPesoBalancao.Visible :=
//   (serviceDB.qryVeiculosPESO_BALANCAO.AsString.Length>0) and
//    (serviceDB.qryVeiculosPESO_BALANCAO.AsString<>'0');
end;

procedure TfrmVeiculosEmbarquer.gridVeiculosEditingDone(Sender: TObject;
  const ACol, ARow: Integer);
begin
 if serviceDB.qryVeiculosLOTACAO.AsInteger=0 then
 begin
   frmPrincipal.MyShowMessage('Lotacao deve ser maior que zero!!',false);
   Exit;
 end
 else
  serviceDB.qryVeiculos.ApplyUpdates(-1)
end;

procedure TfrmVeiculosEmbarquer.gridVeiculosSelChanged(Sender: TObject);
begin
  serviceDB.AbreGtaVeiculoSaida(serviceDB.qryVeiculosID.AsString);
  vIdVeiculoEra := serviceDB.qryVeiculosID.AsString;
  layAtualizaPesoBalancao.Visible :=
   (serviceDB.qryVeiculosPESO_BALANCAO.AsString.Length>0) and
    (serviceDB.qryVeiculosPESO_BALANCAO.AsString<>'0');
end;

procedure TfrmVeiculosEmbarquer.Image28Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmVeiculosEmbarquer.InfoGridVeiculos;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
  Sum1: Double;
  Val1: Double;
  Sum2: Double;
  Val2: Double;
begin
  Sum := 0;
  Sum1:= 0;
  I   := 0;
  for I := 0 to gridVeiculos.RowCount-1 do
  begin
   if TryStrToFloat(gridVeiculos.Cells[3,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(gridVeiculos.Cells[4,I],Val1) then
    Sum1 := Sum1 + Val1;
  end;
  if I>0 then
  begin
   lblQtdeVeiculos.Text              := IntToStr(gridVeiculos.RowCount);
   lblCapacidadeTotal.Text           := intToStr(trunc(sum));
   lblLotacaoTotal.Text              := intToStr(trunc(sum1));
  end
  else
  begin
    lblQtdeVeiculos.Text              := IntToStr(gridVeiculos.RowCount);
    lblCapacidadeTotal.Text           := '0';
    lblLotacaoTotal.Text              := '0';
  end;
end;


procedure TfrmVeiculosEmbarquer.TreeNovaGTAClick(Sender: TObject);
var
 vQrt:TFDQuery;
 vTotalAnimaisGTA:integer;
begin
 if vIdVeiculoEra.Length=0 then
 begin
  frmPrincipal.MyShowMessage('Selecione o veiculo!',false);
  Exit;
 end;
 vTotalAnimaisGTA := serviceDB.RetornaTotalAnimaisGTAVeiculoSaida(vIdVeiculoEra);
 serviceDB.vGeraAnexoSaida :=1;
  serviceDB.AbreQryGTASaida(serviceDB.qryLoteSaidaID_PRODUTOR_ORIGEM.AsString,
  serviceDB.qryLoteSaidaID_PRODUTOR_DESTINO.AsString);
  frmCadGTA := TfrmCadGTA.Create(Self);
  try
    frmCadGTA.cbxTipoGTAF.ItemIndex:=2;
    frmCadGTA.cbxTipoGTAF.Enabled  :=false;
    frmCadGTA.ShowModal;
  finally
    if (frmCadGTA.vIdGtaSelecionada.Length>0)  then
    begin
     if (serviceDB.TableGTAID_VEICULO_SAIDA.AsString.Length>0)and
     (serviceDB.TableGTAID_VEICULO_SAIDA.AsString<>'0') then
      frmPrincipal.MyShowMessage('GTA Já vinculada a um Veículo!',false)
      else
      begin
       if(serviceDB.TableGTATOTAL_GTA.AsInteger+vTotalAnimaisGTA)>serviceDB.qryVeiculosLOTACAO.AsInteger then
         frmPrincipal.MyShowMessage('Total de animais da GTA maior que total de animais do veiculo!',false)
       else
       begin
        serviceDB.AtualizaVeiculosSaida(vIdVeiculoEra,
        frmCadGTA.vIdGtaSelecionada,serviceDB.TableGTATOTAL_GTA.AsString);
        serviceDB.AbreQryVeiculos(serviceDB.qryLoteSaidaID.AsString);
        serviceDB.AbreGtaVeiculoSaida(serviceDB.qryVeiculosID.AsString);
        InfoGridVeiculos;
        serviceDB.vGeraAnexoSaida :=0;
       end;
      end;
    end;
    frmCadGTA.Free;
  end;
end;

end.
