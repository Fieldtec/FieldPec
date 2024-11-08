unit UGraficoConsumo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, FMX.Layouts, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,FMX.WebBrowser,
  View.WebCharts,Charts.Types, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfrmGraficoConsumo = class(TForm)
    layMnuPrincipal: TLayout;
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
    edtDataDeFiltro: TDateEdit;
    edtDataAteFiltro: TDateEdit;
    Label23: TLabel;
    Label24: TLabel;
    LayInfPadrao: TLayout;
    RectangleInfPadrao: TRectangle;
    WebCharts1: TWebCharts;
    layGraficoGeral: TLayout;
    ListaCurrais: TListView;
    LayGrafico: TLayout;
    Image1: TImage;
    Label3: TLabel;
    edtRetiroF: TEdit;
    btnBuscaItem: TEditButton;
    ClearEditButton5: TClearEditButton;
    GroupBox2: TGroupBox;
    chkLinhas: TRadioButton;
    chkBarras: TRadioButton;
    layAguarde: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Image2: TImage;
    Label4: TLabel;
    btnGerar: TButton;
    procedure FormShow(Sender: TObject);
    procedure ListaCurraisItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure imgCloseClick(Sender: TObject);
    procedure btnBuscaItemClick(Sender: TObject);
    procedure ClearEditButton5Click(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private
    vIdPasto,vTemForn,vIdRetiro,vFiltro:string;
    WebBrowser1,WebBrowser2: TWebBrowser;
  public
   procedure GeraLisa(vFiltro:string);
   procedure MyShowMessage(msg: string;btnCancel:Boolean);
  end;

var
  frmGraficoConsumo: TfrmGraficoConsumo;

implementation

{$R *.fmx}

uses ServiceRel, UPrincipal, UServiceDB, UMsgDlg, URetiro;



{ TfrmGraficoConsumo }

procedure TfrmGraficoConsumo.GeraLisa(vFiltro:string);
var
 vQryAux,vQryAux1 :TFDQuery;
 vMax:string;
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vUltimoForn,vUltimoFornkg,Lotacao:string;
begin
 ListaCurrais.Items.Clear;
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;

 vQryAux1 := TFDQuery.Create(nil);
 vQryAux1.Connection := serviceDB.fCon;


 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT B.ID,B.CODIGO,B.LOTACAO FROM TMP_GRAFICO_CONSUMO A');
   Add('JOIN CURRAIS B ON A.PASTO=B.CODIGO AND B.ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Add('WHERE DATA_CONSUMO BETWEEN'+FormatDateTime('mm/dd/yyyy',edtDataDeFiltro.Date).QuotedString+' AND ');
   Add(FormatDateTime('mm/dd/yyyy',edtDataAteFiltro.Date).QuotedString);
   Add(vFiltro);
   Add('GROUP BY B.ID,B.CODIGO,B.LOTACAO');
   Open;
   while not vQryAux.Eof do
   begin
     Lotacao := vQryAux.FieldByName('LOTACAO').AsString;
     vUltimoFornkg :='';
     with vQryAux1,vQryAux1.SQL do
     begin
       Clear;
       Add('SELECT * FROM FORNECIMENTO WHERE ID_PASTO='+vQryAux.FieldByName('id').AsString);
       Add('AND DATA_FORNECIMENTO IN(');
       Add('SELECT  MAX(DATA_FORNECIMENTO) MAXDATA FROM FORNECIMENTO');
       Add('WHERE REALIZADO_COCHO_KG>0 AND ID_PASTO='+vQryAux.FieldByName('id').AsString+')');
       Open;
       vUltimoForn  := vQryAux1.FieldByName('DATA_FORNECIMENTO').AsString;
       if vUltimoForn.Length=0 then
        vUltimoForn  := 'Sem Fornecimento'
       else
       begin
        vUltimoForn   := 'Ultimo Fornecimento:'+vUltimoForn;
        vUltimoFornkg := vQryAux1.FieldByName('REALIZADO_COCHO_KG').AsString;
       end;
     end;

     item := ListaCurrais.Items.Add;
     with frmGraficoConsumo do
     begin
       with item  do
       begin
         txt :=   TListItemText(Objects.FindDrawable('Text1'));
         txt.Text := vQryAux.FieldByName('CODIGO').AsString;

         img := TListItemImage(Objects.FindDrawable('Image2'));
         img.Visible := true;
         img.Bitmap  := frmPrincipal.imgField.Bitmap;

         txt :=   TListItemText(Objects.FindDrawable('Text3'));
         txt.Text := FieldByName('ID').AsString;

         txt :=   TListItemText(Objects.FindDrawable('Text4'));
         txt.Text := vUltimoForn;

         if vUltimoFornkg.Length>0 then
         begin
          txt :=   TListItemText(Objects.FindDrawable('Text5'));
          txt.Text := 'KG Fornecido:'+vUltimoFornkg;
         end;

         txt :=   TListItemText(Objects.FindDrawable('Text6'));
         txt.Text :='Lotacao Atual:'+Lotacao;

       end;
     end;
     vQryAux.Next;
   end;

 end;
 vQryAux1.Free;
 vQryAux.Free;
end;

procedure TfrmGraficoConsumo.btnBuscaItemClick(Sender: TObject);
begin
  frmCadRetiro := TfrmCadRetiro.Create(nil);
  try
    frmCadRetiro.ShowModal;
  finally
    edtRetiroF.Text         := serviceDB.TableRetiroNOME.AsString;
    vIdRetiro               := serviceDB.TableRetiroID.AsString;
    frmCadRetiro.Free;
  end;
  vFiltro                 := 'AND ID_RETIRO='+vIdRetiro;
  GeraLisa(vFiltro);
end;

procedure TfrmGraficoConsumo.btnGerarClick(Sender: TObject);
begin
   if SerRel.GeraGraficoConsumo(edtDataDeFiltro.Text,edtDataAteFiltro.Text)<=0 then
   begin
     MyShowMessage('Não existe dados para gerar nesse período',false);
     Exit;
   end
   else
   begin
    GeraLisa(vFiltro);
    layGraficoGeral.Visible := true;
   end;
end;

procedure TfrmGraficoConsumo.ClearEditButton5Click(Sender: TObject);
begin
  GeraLisa('');
end;

procedure TfrmGraficoConsumo.FormShow(Sender: TObject);
begin
  layGraficoGeral.Visible := false;
  layAguarde.Visible := false;
  edtDataDeFiltro.Date := date-7;
end;

procedure TfrmGraficoConsumo.imgCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmGraficoConsumo.ListaCurraisItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdPasto:=
   TAppearanceListViewItem(ListaCurrais.Selected).Objects.FindObjectT<TListItemText>('Text3').Text;

  vTemForn:=
   TAppearanceListViewItem(ListaCurrais.Selected).Objects.FindObjectT<TListItemText>('Text4').Text;

  if vTemForn='Sem Fornecimento' then
  begin
    LayGrafico.Visible := false;
    MyShowMessage('Pasto Sem Fornecimento',false);
    Exit;
  end;
  LayGrafico.Visible := true;
  TThread.CreateAnonymousThread(procedure()
  begin
   TThread.Synchronize(nil,procedure
   begin
    layAguarde.Visible := true;
    SerRel.AbreGraficoConsumo(vIdPasto,edtDataDeFiltro.Text,edtDataAteFiltro.Text);
    if SerRel.TGraficoConsumo.IsEmpty then
    begin
      LayGrafico.Visible := false;
      MyShowMessage('Não existe dados para esse filtro',false);
      Exit;
    end;
    if WebBrowser1<>nil
     then WebBrowser1.Free;
    if WebBrowser2<>nil
     then WebBrowser1.Free;
    if chkBarras.IsChecked then
    begin
     try
     WebBrowser1        := TWebBrowser.Create(self);
     WebBrowser1.Name   := 'WebBrowser';
     WebBrowser1.Parent := LayGrafico;
     WebBrowser1.Visible:= true;
     WebBrowser1.Align          := TAlignLayout.Client;
     WebCharts1
     .BackgroundColor('#000000')
      .NewProject
       .Jumpline
        .Jumpline
      .Rows
         .Tag
             .Add(
               WebCharts1
               .ContinuosProject
                 .Charts
                  ._ChartType(bar)
                    .Attributes
                      .Name('Gráfico de Consumo')
                      .ColSpan(12)
                      .Options
                        .Title
                           .text('')
                           .display(true)
                           .position('top')
                           .fontSize(15)
                           .fontFamily('Arial')
                           .fontColorHEX('#FFFFFF')
                           .fontStyle('bold')
                         .&End
                        .Legend
                          .display(false)
                        .&End
                      .&End
                      .Labelling
                        .Format('0.0[00]')
                        .RGBColor('255,255,255,255')
                        .FontSize(12)
                        .FontStyle('bold') //normal, bold, italic
                        .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                      .&End
                      .Heigth(120)
                      .DataSet
                        .DataSet(SerRel.TGraficoConsumo)
                        .BackgroundColor('14,55,200')
                        .BorderColor('227,233,235')
                        .Fill(False)
                      .&End
                    .&End
                  .&End
                .&End
               .HTML
             )
            .&End
      .&End
      .Jumpline
      .Rows
      .&End
        .Rows
          .Tag
            .Add(
              WebCharts1
              .ContinuosProject
               .Table
                .TableClass
                 .tableSm
                 .tableHover
                 .tableDark
                .EndTableClass
                .DataSet
                 .DataSet(SerRel.TGraficoConsumoTabela)
                .&End
               .&End
              .HTML
            )
          .&End
       .&End
       .Jumpline
       .Jumpline
       .WebBrowser(WebBrowser1)
      .Generated;
     except
      on E : Exception do
       TThread.Synchronize(nil,procedure
       begin
        myShowMessage('Error ao gerar Grafico : '+E.Message,false);
        layAguarde.Visible := false;
       end);
    end;
    end;
    if chkLinhas.IsChecked then
    begin
     try
     WebBrowser1        := TWebBrowser.Create(self);
     WebBrowser1.Name   := 'WebBrowser';
     WebBrowser1.Parent := LayGrafico;
     WebBrowser1.Visible:= true;
     WebBrowser1.Align          := TAlignLayout.Client;
     WebCharts1
     .BackgroundColor('#000000')
      .NewProject
      .Rows
         .Tag
             .Add(
               WebCharts1
               .ContinuosProject
                 .Charts
                  ._ChartType(line)
                    .Attributes
                      .Name('Gráfico de Consumo')
                      .ColSpan(12)
                      .Options
                        .Title
                           .text('')
                           .display(true)
                           .position('top')
                           .fontSize(15)
                           .fontFamily('Arial')
                           .fontColorHEX('#FFFFFF')
                           .fontStyle('bold')
                         .&End
                        .Legend
                          .display(false)
                        .&End
                      .&End
                      .Labelling
                        .Format('0.0[00]')
                        .RGBColor('255,255,255,255')
                        .FontSize(12)
                        .FontStyle('bold') //normal, bold, italic
                        .FontFamily('Arial') //Open Sans, Arial, Helvetica e etc..
                      .&End
                      .Heigth(120)
                      .DataSet
                        .DataSet(SerRel.TGraficoConsumo)
                        .BackgroundColor('14,55,200')
                        .BorderColor('227,233,235')
                        .Fill(False)
                      .&End
                    .&End
                  .&End
                .&End
               .HTML
             )
            .&End
      .&End
      .Jumpline
      .Rows
      .&End
        .Rows
          .Tag
            .Add(
              WebCharts1
              .ContinuosProject
               .Table
                .TableClass
                 .tableSm
                 .tableHover
                 .tableDark
                .EndTableClass
                .DataSet
                 .DataSet(SerRel.TGraficoConsumoTabela)
                .&End
               .&End
              .HTML
            )
          .&End
       .&End
       .Jumpline
       .Jumpline
       .WebBrowser(WebBrowser1)
      .Generated;
     except
      on E : Exception do
       TThread.Synchronize(nil,procedure
       begin
        myShowMessage('Error ao gerar Grafico : '+E.Message,false);
        layAguarde.Visible := false;
       end);
    end;
    end;
    layAguarde.Visible := false;
  end);
 end).Start;
end;

procedure TfrmGraficoConsumo.MyShowMessage(msg: string; btnCancel: Boolean);
var
 dlg :TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
  end);
end;

end.
