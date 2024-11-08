unit UDashEstoque;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, View.WebCharts,
  FMX.StdCtrls, FMX.ListView, FMX.Controls.Presentation, FMX.Effects,
  FMX.Objects, FMX.WebBrowser, FMX.Layouts, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,UMsgDlg,Vcl.Controls,Charts.Types;

type
  TfrmDashBoard = class(TForm)
    FDQuery1: TFDQuery;
    imgLogo: TImage;
    layChart: TLayout;
    Layout16: TLayout;
    Rectangle1: TRectangle;
    RecUltimaEntrada: TRectangle;
    Layout177: TLayout;
    Image124: TImage;
    Layout178: TLayout;
    ShadowEffect11: TShadowEffect;
    lblUltimaEntrada: TLabel;
    Label69: TLabel;
    recUltimaBaixa: TRectangle;
    Layout180: TLayout;
    Image126: TImage;
    Layout181: TLayout;
    ShadowEffect13: TShadowEffect;
    lblUltimaBaixa: TLabel;
    Label72: TLabel;
    recRacaoSaldoAtual: TRectangle;
    Layout23: TLayout;
    Image9: TImage;
    Layout24: TLayout;
    ShadowEffect15: TShadowEffect;
    lblSaldoAtual: TLabel;
    Label12: TLabel;
    layListaCurrais: TLayout;
    Rectangle3: TRectangle;
    listaCurrais: TListView;
    ToolBar3: TToolBar;
    btnVoltarPadrao: TSpeedButton;
    ImageVoltaPadrao: TImage;
    WebCharts1: TWebCharts;
    Rectangle4: TRectangle;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    RecConsumoMedio: TRectangle;
    Layout2: TLayout;
    Image1: TImage;
    Layout3: TLayout;
    ShadowEffect1: TShadowEffect;
    lblConsumoMedio: TLabel;
    Label2: TLabel;
    recPrevisaoDias: TRectangle;
    Layout4: TLayout;
    Image2: TImage;
    Layout5: TLayout;
    ShadowEffect2: TShadowEffect;
    lblPrevisaoDia: TLabel;
    Label4: TLabel;
    recCustoMedio: TRectangle;
    Layout6: TLayout;
    Image3: TImage;
    Layout7: TLayout;
    ShadowEffect3: TShadowEffect;
    lblCustoMedio: TLabel;
    Label6: TLabel;
    WebBrowser1: TWebBrowser;
    RectUltimaAtualizacaoMS: TRectangle;
    Layout8: TLayout;
    Image4: TImage;
    Layout9: TLayout;
    ShadowEffect4: TShadowEffect;
    lblUltimaAtualizacaoMS: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure listaCurraisItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure listaCurraisChange(Sender: TObject);
    procedure btnVoltarPadraoClick(Sender: TObject);
  private
    { Private declarations }
  public
    dlg :TFrmmsgDlg;
    VidAlimento:string;
    vAbirTela:integer;
    procedure GeraLista;
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
    procedure AtualizaDash(idAlimento:string);
  end;

var
  frmDashBoard: TfrmDashBoard;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB, ServiceDB2, UPlanConfi, USeviceConfinamento;

{ TfrmDashBoard }

procedure TfrmDashBoard.AtualizaDash(idAlimento: string);
var
 vQry :TFDQuery;
 vUltimaBaixa,vUltimaFab:string;
 vQryAux,vQryAux1,vQryAux2,vQryAux3,vQryAux4,vQryAux5,vQryAux6,
 vQryAux7,vQryAux8,vQryAux9,vQryAux10:TFDQuery;
begin
 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;

  recRacaoSaldoAtual.Width      :=(Layout16.Width-280)/4;
  RecUltimaEntrada.Width        :=(Layout16.Width-280)/4;
  recUltimaBaixa.Width          :=(Layout16.Width-280)/4;
  RectUltimaAtualizacaoMS.Width :=(Layout16.Width-280)/4;

  recCustoMedio.Width        :=(Layout16.Width-280)/3;
  RecConsumoMedio.Width      :=(Layout16.Width-280)/3;
  recPrevisaoDias.Width      :=(Layout16.Width-280)/3;

  lblSaldoAtual.Text     :='0';
  lblUltimaEntrada.Text  :='00/00/0000';
  lblUltimaBaixa.Text    :='00/00/0000';
  lblCustoMedio.Text     :='0';
  lblConsumoMedio.Text   :='0';
  lblPrevisaoDia.Text    :='0';


  recRacaoSaldoAtual.Opacity      := 0;
  RecUltimaEntrada.Opacity        := 0;
  recUltimaBaixa.Opacity          := 0;
  RectUltimaAtualizacaoMS.Opacity := 0;

  recCustoMedio.Opacity           := 0;
  RecConsumoMedio.Opacity         := 0;
  recPrevisaoDias.Opacity         := 0;

 with vQry,vQry.SQL do
 begin

   ServiceConf.AtualizaSaldoAtualAlimento(idAlimento);
   Clear;
   Add('SELECT * FROM ALIMENTO WHERE ID='+idAlimento);
   Open;

   lblSaldoAtual.Text :=  FieldByName('SALDO_ATUAL').AsString;
   lblCustoMedio.Text :=  FieldByName('CUSTO_MEDIO').AsString;

   Clear;
   Add('SELECT MAX(F.DATA_FAB) ULTIMA_FAB FROM FABRICACAO_INSUMOS A');
   Add('JOIN FABRICACAO F ON F.ID=A.ID_FABRICACAO');
   Add('WHERE A.STATUS=1 AND F.ID_PROPRIEDADE=:ID_PROPRIEDADE');
   Add('AND A.ID_ALIMENTO=:ID');
   ParamByName('ID_PROPRIEDADE').AsString :=  serviceDB.vIdPropriedade;
   ParamByName('ID').AsString            :=  idAlimento;
   Open;
   vUltimaFab  := FieldByName('ULTIMA_FAB').AsString;

   Clear;
   Add('SELECT MAX("DATA") ULTIMA_BAIXA FROM BAIXA_ESTOQUE_INSUMO_IND A');
   Add('WHERE A.STATUS=1 AND ID_ALIMENTO=:ID AND A.ID_PROPRIEDADE=:ID_PROPRIEDADE');
   ParamByName('ID_PROPRIEDADE').AsString :=  serviceDB.vIdPropriedade;
   ParamByName('ID').AsString            :=  idAlimento;
   vQry.SQL.Text;
   Open;
   vUltimaBaixa := FieldByName('ULTIMA_BAIXA').AsString;

   if(vUltimaBaixa.Length>0)and(vUltimaFab.Length=0) then
    lblUltimaBaixa.Text := vUltimaBaixa;

   if(vUltimaBaixa.Length=0)and(vUltimaFab.Length>0) then
    lblUltimaBaixa.Text := vUltimaFab;

   if(vUltimaBaixa.Length>0)and(vUltimaFab.Length>0) then
   begin
     if StrToDate(vUltimaBaixa)>StrToDate(vUltimaFab) then
      lblUltimaBaixa.Text := vUltimaBaixa
     else
      lblUltimaBaixa.Text := vUltimaFab
   end;


   Clear;
   Add('SELECT MAX(DATA_ATUALIZACAO) DATA_ATUALIZACAO FROM HIST_MS_ALIMENTO A');
   Add('WHERE ID_ALIMENTO=:ID_ALIMENTO');
   Add('AND A.STATUS=1');
   ParamByName('ID_ALIMENTO').AsString            :=  idAlimento;
   vQry.SQL.Text;
   Open;
   lblUltimaAtualizacaoMS.Text := FieldByName('DATA_ATUALIZACAO').AsString;


   Clear;
   Add('SELECT MAX(DATA_ENTRADA) ULTIMA_ENTRADA FROM ESTOQUE_MINERAL_ENTRADA A');
   Add('WHERE STATUS=1 AND ID_PROPRIEDADE=:ID_PROPRIEDADE');
   Add('AND ID_ALIMENTO=:ID');
   ParamByName('ID_PROPRIEDADE').AsString :=  serviceDB.vIdPropriedade;
   ParamByName('ID').AsString            :=  idAlimento;
   Open;
   lblUltimaEntrada.Text                 :=  FieldByName('ULTIMA_ENTRADA').AsString;


   Clear;
   Add('SELECT');
   Add(' INSUMO,');
   Add(' AVG(CONSUMO_DIA) MEDIA_CONSUMO');
   Add('FROM');
   Add('(SELECT');
   Add('  FIRST 7');
   Add('  DATA_FORN,');
   Add('  INSUMO,');
   Add('  SUM((INCLUSAOMATERIANATURAL/100)*TOTAL_KG) CONSUMO_DIA');
   Add('from');
   Add('(SELECT');
   Add('r.id IDRACAO,');
   Add('b.DATA_FORN,');
   Add(' r.NOME RACAO,');
   Add(' sum(b.REALIZADO_MN_KG) TOTAL_KG');
   Add('FROM FORNECIMENTO_CONF b');
   Add('JOIN RACAO r ON r.ID=b.ID_RACAO');
   Add('WHERE B.STATUS=1 AND B.REALIZADO_MN_KG>0');
   Add('GROUP BY r.id,b.DATA_FORN,r.NOME)Y');
   Add('JOIN');
   Add('(SELECT A.IDRACAO,A.IDINSUMOALIMENTO,COALESCE(B.NOME,C.NOME) INSUMO,A.INCLUSAOMATERIANATURAL FROM RACAOINSUMOS A');
   Add('LEFT JOIN ALIMENTO B ON A.IDINSUMOALIMENTO=B.ID');
   Add('LEFT JOIN SUPLEMENTO_MINERAL C ON C.ID=A.ID_PREMISTURA');
   Add('WHERE A.STATUS=1) I');
   Add('ON I.IDRACAO=Y.IDRACAO');
   Add('WHERE IDINSUMOALIMENTO=:ID_ALIMENTO');
   Add('GROUP BY DATA_FORN,INSUMO');
   Add('ORDER BY DATA_FORN DESC)');
   Add('GROUP BY INSUMO');
   ParamByName('ID_ALIMENTO').AsString   :=  idAlimento;
   Open;
   lblConsumoMedio.Text                  :=  FieldByName('MEDIA_CONSUMO').AsString;
 end;

 vQryAux1 := TFDQuery.Create(nil);
 vQryAux1.Connection := serviceDB.FCon;

 vQryAux2 := TFDQuery.Create(nil);
 vQryAux2.Connection := serviceDB.FCon;

 vQryAux3 := TFDQuery.Create(nil);
 vQryAux3.Connection := serviceDB.FCon;

 with vQryAux1,vQryAux1.SQL do//consumo usltimos 7 dias
 begin
  Clear;
  Add('SELECT');
  Add('  FIRST 7');
  Add('  DATA_FORN "Label",');
  Add('  SUM((INCLUSAOMATERIANATURAL/100)*TOTAL_KG) "Value"');
  Add('from');
  Add('(SELECT');
  Add(' r.id IDRACAO,');
  Add(' b.DATA_FORN,');
  Add(' r.NOME RACAO,');
  Add(' sum(b.REALIZADO_MN_KG) TOTAL_KG');
  Add('FROM FORNECIMENTO_CONF b');
  Add('JOIN RACAO r ON r.ID=b.ID_RACAO');
  Add('WHERE B.STATUS=1 AND B.REALIZADO_MN_KG>0');
  Add('GROUP BY r.id,b.DATA_FORN,r.NOME)Y');
  Add('JOIN');
  Add('(SELECT A.IDRACAO,A.IDINSUMOALIMENTO,COALESCE(B.NOME,C.NOME) INSUMO,A.INCLUSAOMATERIANATURAL FROM RACAOINSUMOS A');
  Add('LEFT JOIN ALIMENTO B ON A.IDINSUMOALIMENTO=B.ID');
  Add(' LEFT JOIN SUPLEMENTO_MINERAL C ON C.ID=A.ID_PREMISTURA');
  Add('WHERE A.STATUS=1) I');
  Add('ON I.IDRACAO=Y.IDRACAO');
  Add('WHERE IDINSUMOALIMENTO=:ID_ALIMENTO');
  Add('GROUP BY DATA_FORN,INSUMO');
  Add('ORDER BY DATA_FORN DESC');
  ParamByName('ID_ALIMENTO').AsString   :=  idAlimento;
  Open;
 end;
 with vQryAux2,vQryAux2.SQL do//consumo usltimos 7 dias
 begin
  Clear;
  Add('SELECT DATA_ATUALIZACAO "Label",MS_NEW "Value" FROM HIST_MS_ALIMENTO');
  Add('WHERE STATUS=1 AND ID_ALIMENTO=:ID_ALIMENTO');
  Add('ORDER BY DATA_ATUALIZACAO DESC');
  ParamByName('ID_ALIMENTO').AsString   :=  idAlimento;
  Open;
 end;
 with vQryAux3,vQryAux3.SQL do//consumo usltimos 7 dias
 begin
  Clear;
  Add('SELECT ULTIMA_ENTRADA "Label",VALOR_MEDIO "Value" FROM HIST_VALOR_INSUMOS');
  Add('WHERE STATUS=1 AND ID_ALIMENTO=:ID_ALIMENTO');
  Add('ORDER BY ULTIMA_ENTRADA DESC');
  ParamByName('ID_ALIMENTO').AsString   :=  idAlimento;
  Open;
 end;
  WebCharts1
 .BackgroundColor('#2e353b')
 .NewProject
 .Rows
  .Tag
    .Add(
      WebCharts1
      .ContinuosProject
       .Charts
         ._ChartType(line)
          .Attributes
            .Heigth(50)
            .Name('Consumo Útimos 7 Dias')
            .ColSpan(12)
            .Options
              .Title
               .text('Consumo Útimos 7 Dias')
               .fontColorHEX('#FFFFFF')
              .&End
              .Legend
               .display(false)
               .position('bottom')
              .&End
              .Scales
                .Axes
                  .yAxe
                    .Stacked(true)
                  .&End
                .&End
              .&End
            .&End
            .Labelling
             .Format('0.0[00]')
             .RGBColor('255,255,255,255')
             .FontSize(12)
             .FontStyle('bold') //normal, bold, italic
             .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
           .&End
           .DataSet
              .textLabel('Consumo MN Dia')
              .Types('line')
              .BackgroundColor('0,102,0')
              .Fill(true)
              .BorderWidth(2)
              .BorderColor('0,0,0')
              .DataSet(vQryAux1)
           .&End
          .&End
        .&End
       .HTML
     )
    .&End
   .&End
   .Rows
  .Tag
    .Add(
      WebCharts1
      .ContinuosProject
       .Charts
         ._ChartType(line)
          .Attributes
            .Heigth(50)
            .Name('HistMS')
            .ColSpan(12)
            .Options
              .Title
               .text('Histórico Atualização MS')
               .fontColorHEX('#FFFFFF')
              .&End
              .Legend
               .display(false)
               .position('bottom')
              .&End
              .Scales
                .Axes
                  .yAxe
                    .Stacked(true)
                  .&End
                .&End
              .&End
            .&End
            .Labelling
             .Format('0.0[00]')
             .RGBColor('255,255,255,255')
             .FontSize(12)
             .FontStyle('bold') //normal, bold, italic
             .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
           .&End
           .DataSet
              .textLabel('Histórico Atualização MS')
              .Types('line')
              .BackgroundColor('128,0,0')
              .Fill(true)
              .BorderWidth(2)
              .BorderColor('0,0,0')
              .DataSet(vQryAux2)
           .&End
          .&End
        .&End
       .HTML
     )
    .&End
   .&End
    .Rows
  .Tag
    .Add(
      WebCharts1
      .ContinuosProject
       .Charts
         ._ChartType(line)
          .Attributes
            .Heigth(50)
            .Name('HistCustoMedio')
            .ColSpan(12)
            .Options
              .Title
               .text('Histórico Custo Medio KG')
               .fontColorHEX('#FFFFFF')
              .&End
              .Legend
               .display(false)
               .position('bottom')
              .&End
              .Scales
                .Axes
                  .yAxe
                    .Stacked(true)
                  .&End
                .&End
              .&End
            .&End
            .Labelling
             .Format('0.0[00]')
             .RGBColor('255,255,255,255')
             .FontSize(12)
             .FontStyle('bold') //normal, bold, italic
             .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
           .&End
           .DataSet
              .textLabel('Histórico Custo Medio KG')
              .Types('line')
              .BackgroundColor('30,182,203')
              .Fill(true)
              .BorderWidth(2)
              .BorderColor('0,0,0')
              .DataSet(vQryAux3)
           .&End
          .&End
        .&End
       .HTML
     )
    .&End
   .&End
 .WebBrowser(WebBrowser1)
 .Generated;
 if(lblSaldoAtual.Text.Length>0) and (lblSaldoAtual.Text<>'0')and
 (lblConsumoMedio.Text.Length>0)and (lblConsumoMedio.Text<>'0')then
 begin
   lblPrevisaoDia.Text := intToStr(Trunc(strToFloat(lblSaldoAtual.Text)/strToFloat(lblConsumoMedio.Text)));
 end
 else
   lblPrevisaoDia.Text := '0';

 recRacaoSaldoAtual.AnimateFloatDelay('Opacity', 1,0.7,0.2);;
 RecUltimaEntrada.AnimateFloatDelay('Opacity', 1,0.7,0.4);
 recUltimaBaixa.AnimateFloatDelay('Opacity', 1,0.7,0.6);
 RectUltimaAtualizacaoMS.AnimateFloatDelay('Opacity', 1,0.7,0.8);
 recCustoMedio.AnimateFloatDelay('Opacity', 1,0.7,1.0);
 RecConsumoMedio.AnimateFloatDelay('Opacity', 1,0.7,1.2);
 recPrevisaoDias.AnimateFloatDelay('Opacity', 1,0.7,1.4);
 vQryAux1.Free;
 vQryAux2.Free;
 vQryAux3.Free;
 vQry.Free;
end;

procedure TfrmDashBoard.btnVoltarPadraoClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmDashBoard.FormShow(Sender: TObject);
begin
 layChart.Visible := false;
 vAbirTela        := 1;
 GeraLista;
end;

procedure TfrmDashBoard.GeraLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
 serviceDBN.ALIMENTOS.Close;
 serviceDBN.ALIMENTOS.Open;
 if not serviceDBN.ALIMENTOS.IsEmpty then
 begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
       layListaCurrais.Visible := true;
       listaCurrais.Items.Clear;
       serviceDBN.ALIMENTOS.First;
       while not serviceDBN.ALIMENTOS.eof do
       begin
         item := listaCurrais.Items.Add;
         with frmDashBoard do
         begin
           with item  do
           begin
             txt      :=   TListItemText(Objects.FindDrawable('Text3'));
             txt.Text :=   serviceDBN.ALIMENTOSNOME.AsString;
             txt.TagString:= serviceDBN.ALIMENTOSID.AsString;

             txt      :=   TListItemText(Objects.FindDrawable('Text4'));
             txt.Text :=   '%MS Atual:';

             txt      :=   TListItemText(Objects.FindDrawable('Text5'));
             txt.Text :=   serviceDBN.ALIMENTOSMS.AsString+'%';

             img := TListItemImage(Objects.FindDrawable('Image14'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgInsumo.Bitmap;
           end;
           serviceDBN.ALIMENTOS.Next;
         end;
       end;
       listaCurrais.ItemIndex :=0;
    end);
   end).Start;
 end
 else
 begin
   layListaCurrais.Visible := false;
   MyShowMessage('Nenhum Insumo encontrado para esse filtro!',false);
 end;
 vAbirTela         :=0;
end;
procedure TfrmDashBoard.listaCurraisChange(Sender: TObject);
var
 v  :TListItemDrawable;
 Pt : TPoint;
begin
 if vAbirTela = 0 then
 begin
   Pt := Mouse.CursorPos;
   v  :=  TListItemView(Sender).Drawables[listaCurrais.ItemIndex];
   listaCurraisItemClickEx(listaCurrais,listaCurrais.ItemIndex,pt,v);
 end;
end;

procedure TfrmDashBoard.listaCurraisItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
 VidAlimento   := TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').TagString;
  AtualizaDash(VidAlimento);
  layChart.Visible := true;
end;

procedure TfrmDashBoard.MyShowMessage(msg: string; btnCancel: Boolean);
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

end.
