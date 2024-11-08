unit UDashLotes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.Layouts, FMX.StdCtrls,
  FMX.Controls.Presentation, UMsgDlg, FMX.WebBrowser, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, View.WebCharts,Charts.Types,
  FMX.Effects,Vcl.Controls;

type
  TfrmDashLotes = class(TForm)
    ToolBar3: TToolBar;
    btnVoltarPadrao: TSpeedButton;
    ImageVoltaPadrao: TImage;
    layListaCurrais: TLayout;
    Rectangle3: TRectangle;
    listaCurrais: TListView;
    layChart: TLayout;
    WebBrowser1: TWebBrowser;
    FDQuery1: TFDQuery;
    WebCharts1: TWebCharts;
    Layout176: TLayout;
    Rectangle30: TRectangle;
    RectotalAnimaisSexo: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    ShadowEffect1: TShadowEffect;
    Label2: TLabel;
    recMachoConf: TRectangle;
    Layout169: TLayout;
    Image122: TImage;
    Layout172: TLayout;
    ShadowEffect9: TShadowEffect;
    lblConfMacho: TLabel;
    Label65: TLabel;
    recFemeaConf: TRectangle;
    Layout168: TLayout;
    Image123: TImage;
    Layout173: TLayout;
    ShadowEffect10: TShadowEffect;
    lblConfFemea: TLabel;
    Label67: TLabel;
    imgLogo: TImage;
    Layout3: TLayout;
    Rectangle2: TRectangle;
    recPesos: TRectangle;
    Layout8: TLayout;
    Layout9: TLayout;
    recPesoMedEnt: TRectangle;
    Layout10: TLayout;
    Image3: TImage;
    Layout11: TLayout;
    ShadowEffect4: TShadowEffect;
    lblPesoMedEnt: TLabel;
    Label7: TLabel;
    RecArrobaProj: TRectangle;
    Layout12: TLayout;
    Image4: TImage;
    Layout13: TLayout;
    ShadowEffect5: TShadowEffect;
    lblArrobaProj: TLabel;
    Label9: TLabel;
    ShadowEffect6: TShadowEffect;
    RecArrobaProd: TRectangle;
    Layout4: TLayout;
    Image1: TImage;
    Layout5: TLayout;
    ShadowEffect2: TShadowEffect;
    lblArrobaProd: TLabel;
    Label3: TLabel;
    RecPesoMedProj: TRectangle;
    Layout6: TLayout;
    Image2: TImage;
    Layout7: TLayout;
    ShadowEffect3: TShadowEffect;
    lblPesoMedProj: TLabel;
    Label5: TLabel;
    RectotalAnimais: TRectangle;
    Layout14: TLayout;
    Image5: TImage;
    Layout15: TLayout;
    ShadowEffect7: TShadowEffect;
    lblTotalAnimais: TLabel;
    Label4: TLabel;
    Layout16: TLayout;
    Rectangle1: TRectangle;
    RecUltimoForn: TRectangle;
    Layout177: TLayout;
    Image124: TImage;
    Layout178: TLayout;
    ShadowEffect11: TShadowEffect;
    lblUltimoFornecimento: TLabel;
    Label69: TLabel;
    recUltimaEntrada: TRectangle;
    Layout180: TLayout;
    Image126: TImage;
    Layout181: TLayout;
    ShadowEffect13: TShadowEffect;
    lblUltimaEntradaAnimal: TLabel;
    Label72: TLabel;
    recDiasMedio: TRectangle;
    Layout17: TLayout;
    Image6: TImage;
    Layout18: TLayout;
    ShadowEffect8: TShadowEffect;
    lblDiasMedio: TLabel;
    Label6: TLabel;
    RecArrEntrada: TRectangle;
    Layout19: TLayout;
    Image7: TImage;
    Layout20: TLayout;
    ShadowEffect12: TShadowEffect;
    lblArrEntrada: TLabel;
    Label8: TLabel;
    Recgmd: TRectangle;
    Label10: TLabel;
    Layout21: TLayout;
    Image8: TImage;
    Layout22: TLayout;
    ShadowEffect14: TShadowEffect;
    lblGMD: TLabel;
    recRacaoAtual: TRectangle;
    Layout23: TLayout;
    Image9: TImage;
    Layout24: TLayout;
    ShadowEffect15: TShadowEffect;
    lblRacaoAtual: TLabel;
    Label12: TLabel;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Layout25: TLayout;
    Image10: TImage;
    Layout26: TLayout;
    ShadowEffect16: TShadowEffect;
    lblDiarias: TLabel;
    Label11: TLabel;
    Rectangle6: TRectangle;
    Layout27: TLayout;
    Image11: TImage;
    Layout28: TLayout;
    ShadowEffect17: TShadowEffect;
    lblDiasRacao: TLabel;
    Label13: TLabel;
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure listaCurraisItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure listaCurraisChange(Sender: TObject);
  private
    { Private declarations }
  public
    vAbirTela:integer;
    dlg :TFrmmsgDlg;
    vIdLoteSelect,vIdCurralSelect:STRING;
    procedure GeraLista;
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
    procedure LabelQtdeConfPasto;
  end;

var
  frmDashLotes: TfrmDashLotes;

implementation

{$R *.fmx}

uses UPrincipal, USeviceConfinamento, UServiceDB;

procedure TfrmDashLotes.btnVoltarPadraoClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmDashLotes.FormShow(Sender: TObject);
begin
  vAbirTela        := 1;
  layChart.Visible := false;
  imgLogo.Visible  := true;
  GeraLista;
end;

procedure TfrmDashLotes.GeraLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
 ServiceConf.AbreLotes('');
 if not ServiceConf.TLoteNutricional.IsEmpty then
 begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
       layListaCurrais.Visible := true;
       listaCurrais.Items.Clear;
       ServiceConf.TLoteNutricional.First;
       while not ServiceConf.TLoteNutricional.eof do
       begin
         item := listaCurrais.Items.Add;
         with frmDashLotes do
         begin
           with item  do
           begin
             txt      :=   TListItemText(Objects.FindDrawable('Text3'));
             txt.Text :=   ServiceConf.TLoteNutricionalCURRAL.AsString;
             txt.TagString:= ServiceConf.TLoteNutricionalID_LOCAL.AsString;

             img := TListItemImage(Objects.FindDrawable('Image14'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgQtdCab.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text4'));
             txt.Text :=   'Qtde. Cab.';
             txt.TagString:= ServiceConf.TLoteNutricionalID.AsString;

             txt      :=   TListItemText(Objects.FindDrawable('Text9'));
             txt.Text :=   ServiceConf.TLoteNutricionalQTDE_CAB.AsString;

             img := TListItemImage(Objects.FindDrawable('Image23'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgMediaPeso.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text6'));
             txt.Text :=   'Média Peso';
             txt      :=   TListItemText(Objects.FindDrawable('Text5'));
             txt.Text :=   ServiceConf.TLoteNutricionalPESO_MEDIO.AsString;


             img := TListItemImage(Objects.FindDrawable('Image24'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgDataEnt.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text8'));
             txt.Text :=   'Data Ent.';
             txt      :=   TListItemText(Objects.FindDrawable('Text7'));
             txt.Text :=   ServiceConf.TLoteNutricionalDATA_ENTRADA.AsString;

             img := TListItemImage(Objects.FindDrawable('Image25'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgDias.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text10'));
             txt.Text :=   'Dia Médio';
             txt      :=   TListItemText(Objects.FindDrawable('Text11'));
             txt.Text :=   ServiceConf.TLoteNutricionalDIAS_MEDIO.AsString;

           end;
           ServiceConf.TLoteNutricional.Next;
         end;
       end;
       listaCurrais.ItemIndex :=0;
    end);
   end).Start;
 end
 else
 begin
   layListaCurrais.Visible := false;
   MyShowMessage('Nenhum Lote encontrado para esse filtro!',false);
 end;
end;

procedure TfrmDashLotes.listaCurraisChange(Sender: TObject);
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

procedure TfrmDashLotes.listaCurraisItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
 vQryAux,vQryAux1,vQryAux2,vQryAux3,vQryAux4,vQryAux5,vQryAux6,
 vQryAux7,vQryAux8,vQryAux9,vQryAux10:TFDQuery;
begin
  vIdCurralSelect   := TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').TagString;
  vIdLoteSelect     := TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text4').TagString;
  layChart.Visible := true;
  imgLogo.Visible  := false;
  LabelQtdeConfPasto;
  vQryAux := TFDQuery.Create(nil);
  vQryAux.Connection := serviceDB.FCon;

  vQryAux1 := TFDQuery.Create(nil);
  vQryAux1.Connection := serviceDB.FCon;

  vQryAux2 := TFDQuery.Create(nil);
  vQryAux2.Connection := serviceDB.FCon;

  vQryAux3 := TFDQuery.Create(nil);
  vQryAux3.Connection := serviceDB.FCon;

  vQryAux4 := TFDQuery.Create(nil);
  vQryAux4.Connection := serviceDB.FCon;

  vQryAux5 := TFDQuery.Create(nil);
  vQryAux5.Connection := serviceDB.FCon;

  vQryAux6 := TFDQuery.Create(nil);
  vQryAux6.Connection := serviceDB.FCon;

  vQryAux7 := TFDQuery.Create(nil);
  vQryAux7.Connection := serviceDB.FCon;

  vQryAux8 := TFDQuery.Create(nil);
  vQryAux8.Connection := serviceDB.FCon;

  vQryAux9 := TFDQuery.Create(nil);
  vQryAux9.Connection := serviceDB.FCon;

  vQryAux10 := TFDQuery.Create(nil);
  vQryAux10.Connection := serviceDB.FCon;

  with vQryAux,vQryAux.SQL do
  begin
    Clear;
    Add('SELECT B.NOME "Label" ,COUNT(*) "Value",');
    Add('MAX((SELECT FIRST 1 RGB FROM CORES WHERE id=c.id))"RGB"');
    Add('FROM ANIMAL A');
    Add('JOIN RACA B ON A.ID_RACA=B.ID');
    Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
    Add('JOIN CURRAIS D ON D.ID=A.ID_LOCAL');
    Add('WHERE A.STATUS=1 AND D.ID='+vIdCurralSelect);
    Add('GROUP BY B.NOME');
    Open;
  end;
  with vQryAux1,vQryAux1.SQL do
  begin
    Clear;
    Add('SELECT C.NOME "Label" ,COUNT(*) "Value",');
    Add('MAX((SELECT FIRST 1 RGB FROM CORES WHERE id=c.id))"RGB"');
    Add('FROM ANIMAL A');
    Add('JOIN RACA B ON A.ID_RACA=B.ID');
    Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
    Add('JOIN CURRAIS D ON D.ID=A.ID_LOCAL');
    Add('WHERE A.STATUS=1 AND D.ID='+vIdCurralSelect);
    Add('GROUP BY C.NOME');
    Open;
  end;

 with vQryAux2,vQryAux2.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' FIRST 7');
   Add(' a.data_fornecimento "Label",');
   Add('sum(a.CONSUMO_MN)/count(DISTINCT a.ID_ANIMAL)"Value"');
   Add('FROM ANIMAL_FORNECIMENTO_CONF a');
   Add('WHERE ID_LOTE='+vIdLoteSelect+' AND ID_CURRAL='+vIdCurralSelect);
   Add('GROUP BY data_fornecimento');
   Add('ORDER BY data_fornecimento DESC');
   Open;
 end;
 with vQryAux3,vQryAux3.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' FIRST 7');
   Add(' a.data_fornecimento "Label",');
   Add('sum(a.consumo_ms)/count(DISTINCT a.ID_ANIMAL)"Value"');
   Add('FROM ANIMAL_FORNECIMENTO_CONF a');
   Add('WHERE ID_LOTE=:IN_LOTE AND ID_CURRAL=:ID_CURRAL');
   Add('GROUP BY data_fornecimento');
   Add('ORDER BY data_fornecimento DESC');
   ParamByName('IN_LOTE').AsString   :=vIdLoteSelect;
   ParamByName('ID_CURRAL').AsString :=vIdCurralSelect;
   Open;
 end;
 with vQryAux4,vQryAux4.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' FIRST 7');
   Add(' a.data_fornecimento "Label",');
   Add('sum(a.ims_pv)/count(DISTINCT a.ID_ANIMAL) "Value"');
   Add('FROM ANIMAL_FORNECIMENTO_CONF a');
   Add('WHERE ID_LOTE=:IN_LOTE AND ID_CURRAL=:ID_CURRAL');
   Add('GROUP BY data_fornecimento');
   Add('ORDER BY data_fornecimento DESC');
   ParamByName('IN_LOTE').AsString   :=vIdLoteSelect;
   ParamByName('ID_CURRAL').AsString :=vIdCurralSelect;
   Open;
 end;
 with vQryAux5,vQryAux5.SQL do
 begin
   Clear;
   Add('SELECT DATA_LEITURA "Label",NOTA "Value" FROM LEITURA_COCHO');
   Add('WHERE STATUS=1 AND ID_CURRAL=:ID_CURRAL');
   Add('AND ID IN(SELECT FIRST 7 ID FROM LEITURA_COCHO WHERE STATUS=1 AND');
   Add('ID_CURRAL=:ID_CURRAL');
   Add('ORDER BY DATA_LEITURA DESC)');
   Add('ORDER BY DATA_LEITURA DESC');
   ParamByName('ID_CURRAL').AsString :=vIdCurralSelect;
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
            ._ChartType(pie)
              .Attributes
                .Heigth(150)
                .Name('AnimaisPorRaca')
                .ColSpan(4)
                .Options
                  .Title
                     .text('Animal por Raça')
                     .display(true)
                     .position('top')
                     .fontSize(15)
                     .fontFamily('Arial')
                     .fontColorHEX('#FFFFFF')
                     .fontStyle('bold')
                  .&End
                  .Legend
                    .display(true)
                    .position('bottom')
                  .&End
                .&End
                 .Labelling
                   .Format('0,000')
                   .RGBColor('255,255,255,255')
                   .FontSize(12)
                   .FontStyle('bold') //normal, bold, italic
                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                 .&End
                 .DataSet
                  .textLabel('Previsto')
//                  .BackgroundColor('1,1,1')
                  .Fill(false)
                  .BorderWidth(2)
//                  .BackgroundColor('14,55,200')
                  .DataSet(vQryAux)
                .&End
              .&End
            .&End
           .&End
          .HTML
         )
        .&End
        .Tag
        .Add(
          WebCharts1
          .ContinuosProject
           .Charts
            ._ChartType(pie)
              .Attributes
                .Heigth(150)
                .Name('AnimaisPorCategoria')
                .ColSpan(4)
                .Options
                  .Title
                     .text('Animal por Categoria')
                     .display(true)
                     .position('top')
                     .fontSize(15)
                     .fontFamily('Arial')
                     .fontColorHEX('#FFFFFF')
                     .fontStyle('bold')
                  .&End
                  .Legend
                    .display(true)
                    .position('bottom')
                  .&End
                .&End
                 .Labelling
                   .Format('0,000')
                   .RGBColor('255,255,255,255')
                   .FontSize(12)
                   .FontStyle('bold') //normal, bold, italic
                   .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                 .&End
                 .DataSet
                  .textLabel('Previsto')
//                  .BackgroundColor('1,1,1')
                  .Fill(false)
                  .BorderWidth(2)
//                  .BackgroundColor('14,55,200')
                  .DataSet(vQryAux1)
                .&End
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
                .Heigth(110)
                .Name('Histórico de Consumo')
                .ColSpan(12)
                .Options
                  .Title
                   .text('Histórico de Consumo')
                   .fontColorHEX('#FFFFFF')
                  .&End
                  .Legend
                   .display(true)
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
                  .textLabel('Consumo %MS PV')
                  .Types('line')
                  .BackgroundColor('0,102,0')
                  .Fill(true)
                  .BorderWidth(2)
                  .BorderColor('0,0,0')
                  .DataSet(vQryAux4)
               .&End
               .DataSet
                  .textLabel('Consumo MS')
                  .Types('line')
                  .BackgroundColor('128,0,0')
                  .Fill(true)
                  .BorderWidth(2)
                  .BorderColor('0,0,0')
                  .DataSet(vQryAux3)
               .&End
               .DataSet
                  .textLabel('Consumo MN')
                  .Types('line')
                  .BackgroundColor('30,182,203')
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
                  .Heigth(110)
                  .Name('Historico de Notas')
                  .ColSpan(12)
                  .Options
                    .Title
                     .text('Historico de Notas')
                     .fontColorHEX('#FFFFFF')
                    .&End
                    .Legend
                     .display(false)
                     .position('bottom')
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
                    .textLabel('Nota')
                    .Types('line')
                    .BackgroundColor('1,1,1')
                    .Fill(false)
                    .BorderWidth(2)
                    .BorderColor('30,182,203')
                    .DataSet(vQryAux5)
                 .&End
                .&End
              .&End
             .HTML
           )
          .&End
         .&End
     .WebBrowser(WebBrowser1)
     .Generated;
     vQryAux.Free;
     vQryAux1.Free;
     vQryAux2.Free;
     vQryAux3.Free;
     vQryAux4.Free;
     vQryAux5.Free;
     vQryAux6.Free;
     vQryAux7.Free;
     vQryAux8.Free;
     vQryAux9.Free;
     vQryAux10.Free;
     vAbirTela         :=0;
end;

procedure TfrmDashLotes.LabelQtdeConfPasto;
var
 vQry8 :TFDQuery;
begin
  vQry8              := TFDQuery.Create(nil);
  vQry8.Connection   := serviceDB.fCon;

  RectotalAnimaisSexo.Width :=273;
  RectotalAnimais.Width     :=(layChart.Width-280)/3;
  recDiasMedio.Width        :=(layChart.Width-280)/3;

  recPesoMedEnt.Width       :=(layChart.Width-10)/5;
  RecArrEntrada.Width       :=(layChart.Width-10)/5;
  RecPesoMedProj.Width      :=(layChart.Width-10)/5;
  RecArrobaProj.Width       :=(layChart.Width-10)/5;

  recRacaoAtual.Width       :=(layChart.Width-10)/3;
  RecUltimoForn.Width       :=(layChart.Width-10)/3;


  lblConfMacho.Text  :='0';
  lblConfFemea.Text  :='0';
  lblPesoMedProj.Text:='0';
  lblPesoMedEnt.Text :='0';
  lblArrobaProj.Text :='0';
  lblArrobaProd.Text :='0';
  lblArrEntrada.Text :='0';
  lblRacaoAtual.Text :='...';
  lblDiasMedio.Text  :='0';
  lblGMD.Text        :='0';

  RectotalAnimais.Opacity         := 0;
  RectotalAnimaisSexo.Opacity     := 0;
  RecUltimoForn.Opacity           := 0;
  recUltimaEntrada.Opacity        := 0;
  recPesoMedEnt.Opacity           := 0;
  recPesoMedEnt.Opacity           := 0;
  RecPesoMedProj.Opacity          := 0;
  RecArrobaProj.Opacity           := 0;
  RecArrobaProd.Opacity           := 0;
  recDiasMedio.Opacity            := 0;
  Recgmd.Opacity                  := 0;
  RecArrEntrada.Opacity           := 0;
  recRacaoAtual.Opacity           := 0;

  with vQry8,vQry8.SQL do
  begin
   Clear;
   Add('SELECT TIPO,SEXO,COUNT(*) QTD FROM(');
   Add('SELECT');
   Add('CASE');
   Add('WHEN B.TIPO=1 THEN ''CONFINAMENTO''');
   Add('ELSE ''PASTO''');
   Add('END TIPO,');
   Add('C.SEXO');
   Add('FROM ANIMAL A');
   Add('JOIN CURRAIS B ON A.ID_LOCAL=B.ID');
   Add('JOIN CATEGORIAS C ON C.ID=A.ID_CATEGORIA');
   Add('WHERE A.STATUS=1 AND A.ID_LOCAL='+vIdCurralSelect+')');
   Add('GROUP BY TIPO,SEXO');
   Open;
   while not vQry8.eof do
   begin
     if FieldByName('Tipo').AsString ='CONFINAMENTO' then
     begin
       if FieldByName('sexo').AsString ='M' then
        lblConfMacho.Text  :=FieldByName('QTD').AsString;
       if FieldByName('sexo').AsString ='F' then
        lblConfFemea.Text  :=FieldByName('QTD').AsString;
     end;
     vQry8.Next;
   end;
   Clear;
   Add('SELECT max(DATA_FORN)maxData FROM FORNECIMENTO_CONF');
   Add('WHERE STATUS=1 AND ID_LOCAL='+vIdCurralSelect);
   Open;
   lblUltimoFornecimento.Text := FieldByName('maxData').AsString;

   Clear;
   Add('SELECT max(A.DATA_PROC)maxData FROM ANIMAL a');
   Add('JOIN CURRAIS b ON a.ID_LOCAL=b.id AND tipo=1');
   Add('WHERE A.STATUS=1 AND ID_LOCAL='+vIdCurralSelect);
   Open;
   lblUltimaEntradaAnimal.Text := FieldByName('maxData').AsString;

   Clear;
   Add('SELECT');
   Add(' RACAO_ATUAL,');
   Add(' (DIA-MIN_DIA)+1 DIAS');
   Add('FROM');
   Add('(SELECT');
   Add(' CASE');
   Add('  WHEN TIPO=1 THEN ''Adaptação''');
   Add('    WHEN TIPO=2 THEN ''Crescimento''');
   Add('    WHEN TIPO=3 THEN ''Terminação''');
   Add('    WHEN TIPO=4 THEN ''Transição''');
   Add('   END RACAO_ATUAL,');
   Add('   DIA,');
   Add('   B.ID,');
   Add('   (SELECT MIN(DIA)  from DET_LOTE_PLANEJAMENTO A');
   Add('   WHERE ID_LOTE=970 AND ID_RACAO=B.ID) MIN_DIA');
   Add('from DET_LOTE_PLANEJAMENTO A');
   Add('JOIN RACAO B ON A.ID_RACAO=B.ID');
   Add('WHERE ID_LOTE='+vIdLoteSelect);
   Add('AND "DATA"=CURRENT_DATE');
   Add('GROUP BY B.ID,DIA,TIPO,ID_LOTE) Y ');
   Open;
   lblRacaoAtual.Text := FieldByName('RACAO_ATUAL').AsString;
   lblDiasRacao.Text  := FieldByName('DIAS').AsString;

   Clear;
   Add('SELECT');
   Add('    Count(*) QtdCab,');
   Add('    avg(coalesce(a.PESO_ENTRADA_CONF,a.PESO_ENTRADA))ENTRADA,');
   Add('    avg(a.PESO_ESTIMADO)Projetado,');
   Add('    avg(coalesce(a.PESO_ENTRADA_CONF,a.PESO_ENTRADA)/30)ArrobaEnt,');
   Add('    avg(a.PESO_ESTIMADO/30) ArrobaProj,');
   Add('    avg(a.PESO_ESTIMADO/30)-avg(coalesce(a.PESO_ENTRADA_CONF,a.PESO_ENTRADA)/30) ArrobaProd,');
   Add('    AVG((PESO_ESTIMADO-coalesce(a.PESO_ENTRADA_CONF,a.PESO_ENTRADA)))/(sum( (CURRENT_DATE+1) -COALESCE(cast( a.DATA_ENTRADA_CONF as date),cast(a.DATA_PROC as date)))/Count(*))  GMD,');
   Add('    AVG((PESO_ESTIMADO-coalesce(a.PESO_ENTRADA_CONF,a.PESO_ENTRADA)))gtp,');
   Add('    sum(coalesce(a.PESO_ENTRADA_CONF,a.PESO_ENTRADA))/30 TotalArrPesoEnt,');
   Add('    sum(a.PESO_ESTIMADO)/30 TotalArrPesoProj,');
   Add('    (sum(a.PESO_ESTIMADO)-sum(coalesce(a.PESO_ENTRADA_CONF,a.PESO_ENTRADA)))/30 TotalEmArroba,');
   Add('    cast(sum( (CURRENT_DATE+1) -COALESCE(cast( a.DATA_ENTRADA_CONF as date),cast(a.DATA_PROC as date)))/ Count(*) as DECIMAL(15, 5) ) Dias,');
   Add('    sum( (CURRENT_DATE+1) -COALESCE(cast( a.DATA_ENTRADA_CONF as date),cast(a.DATA_PROC as date))) DIARIAS');
   Add('FROM ANIMAL A');
   Add('JOIN CURRAIS D ON D.ID=A.ID_LOCAL');
   Add('JOIN LOTE_NUTRICIONAL l ON a.ID_LOTE=l.ID');
   Add('WHERE A.STATUS=1  AND D.TIPO=1');
   Add('AND A.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('AND A.ID_LOCAL='+vIdCurralSelect);
   Open;
   lblPesoMedProj.Text  :=FieldByName('Projetado').AsString;
   lblPesoMedEnt.Text   :=FieldByName('ENTRADA').AsString;
   lblArrobaProj.Text   :=FieldByName('ArrobaProj').AsString;
   lblArrobaProd.Text   :=FieldByName('ArrobaProd').AsString;
   lblTotalAnimais.Text :=FieldByName('QtdCab').AsString;
   lblDiasMedio.Text    :=FieldByName('Dias').AsString;
   lblDiarias.Text      :=FieldByName('DIARIAS').AsString;
   if FieldByName('ENTRADA').AsInteger>0 then
    lblArrEntrada.Text  := FormatFloat('####,#0.00',(FieldByName('ENTRADA').AsFloat/30));
   lblGMD.Text          :=FieldByName('GMD').AsString;

   RectotalAnimais.AnimateFloatDelay('Opacity', 1,0.7,0.2);
   RectotalAnimaisSexo.AnimateFloatDelay('Opacity', 1,0.7,0.4);
   RecDiasMedio.AnimateFloatDelay('Opacity', 1,0.7,0.6);
   Recgmd.AnimateFloatDelay('Opacity', 1,0.7,0.8);
   RecPesoMedEnt.AnimateFloatDelay('Opacity', 1,0.7,1.0);
   RecArrEntrada.AnimateFloatDelay('Opacity', 1,0.7,1.2);
   RecPesoMedProj.AnimateFloatDelay('Opacity', 1,0.7,1.4);
   RecArrobaProj.AnimateFloatDelay('Opacity', 1,0.7,1.6);
   RecArrobaProd.AnimateFloatDelay('Opacity', 1,0.7,1.8);
   RecRacaoAtual.AnimateFloatDelay('Opacity', 1,0.7,2.0);
   RecUltimoForn.AnimateFloatDelay('Opacity', 1,0.7,2.2);
   recUltimaEntrada.AnimateFloatDelay('Opacity', 1,0.7,2.4);
  end;
end;

procedure TfrmDashLotes.MyShowMessage(msg: string; btnCancel: Boolean);
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
