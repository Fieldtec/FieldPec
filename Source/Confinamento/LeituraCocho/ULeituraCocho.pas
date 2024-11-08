 unit ULeituraCocho;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.WebBrowser, View.WebCharts,
  FMX.ListBox, FMX.Effects, FMX.ListView,Charts.Types,Vcl.Controls;

type
  TfrmLeituradeCocho = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    layListaCurrais: TLayout;
    Rectangle3: TRectangle;
    listaCurrais: TListView;
    layFornecimento: TLayout;
    Layout1: TLayout;
    layLnacaNota: TLayout;
    Rectangle8: TRectangle;
    Layout9: TLayout;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    edtAjuste: TEdit;
    btnConfirmaNota: TRectangle;
    Layout8: TLayout;
    Image4: TImage;
    Label15: TLabel;
    Image6: TImage;
    ShadowEffect2: TShadowEffect;
    cbxNota: TComboBox;
    Layout4: TLayout;
    WebCharts1: TWebCharts;
    WebBrowser1: TWebBrowser;
    FDQuery1: TFDQuery;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    TreeExcluirInd: TTreeViewItem;
    TreeExcluiGeral: TTreeViewItem;
    TreeViewItem1: TTreeViewItem;
    Image7: TImage;
    TreeViewItem2: TTreeViewItem;
    dataLeitura: TDateEdit;
    SpeedButton1: TSpeedButton;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    WebBrowser2: TWebBrowser;
    Rectangle33: TRectangle;
    btnGeraLista: TRectangle;
    Layout3: TLayout;
    Image3: TImage;
    Label18: TLabel;
    Edit1: TEdit;
    edtDataForn: TDateEdit;
    Label12: TLabel;
    Label9: TLabel;
    Layout6: TLayout;
    Rectangle10: TRectangle;
    lblCurralSelcted: TLabel;
    Layout5: TLayout;
    rdBarras: TRadioButton;
    rdLinha: TRadioButton;
    Layout7: TLayout;
    Rectangle2: TRectangle;
    Label5: TLabel;
    lblAjuste: TLabel;
    Label3: TLabel;
    rdPorcentagem: TRadioButton;
    rdKgMsCab: TRadioButton;
    layPopUpCad: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout10: TLayout;
    Layout11: TLayout;
    Layout12: TLayout;
    Label4: TLabel;
    Image8: TImage;
    Layout13: TLayout;
    btnConfirmar: TRectangle;
    Label6: TLabel;
    btnVoltar: TLabel;
    Layout14: TLayout;
    Layout15: TLayout;
    Label7: TLabel;
    Rectangle6: TRectangle;
    edtNomeCad: TEdit;
    ClearEditButton1: TClearEditButton;
    Layout53: TLayout;
    Layout31: TLayout;
    Label28: TLabel;
    Label32: TLabel;
    rdMarcaTudo: TRadioButton;
    rdDesmarcaTudo: TRadioButton;
    lvPermissoes: TListView;
    img_uncheck: TImage;
    img_check: TImage;
    imgMarcaAll: TImage;
    imgDesmarcaAll: TImage;
    Label8: TLabel;
    Label13: TLabel;
    TreeReplicar: TTreeViewItem;
    Image9: TImage;
    Label14: TLabel;
    TreeViewItem3: TTreeViewItem;
    edtDtReplica: TDateEdit;
    edtDataReplica: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure edtFDataEntDEChange(Sender: TObject);
    procedure edtFDataEntATEChange(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure btnGeraListaClick(Sender: TObject);
    procedure listaCurraisItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure cbxNotaChange(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeExcluiGeralClick(Sender: TObject);
    procedure TreeExcluirIndClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure cbxNotaKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rdBarrasChange(Sender: TObject);
    procedure rdLinhaChange(Sender: TObject);
    procedure rdPorcentagemChange(Sender: TObject);
    procedure rdKgMsCabChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeReplicarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure rdMarcaTudoChange(Sender: TObject);
    procedure rdDesmarcaTudoChange(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure lvPermissoesItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure edtDataReplicaClick(Sender: TObject);
  private
    procedure Filtro;
    procedure GeraGrafico(idCurral,idLote,vData,vTipo:string);
    procedure GeraLista;
    Procedure StyleComboBoxItems();
    procedure GeraListaContas(vChecked:boolean);
  public
    vReplica :integer;
    vIdCurralSelect,vIdLoteSelect,vQtdeCabSelect,MediaPesoSelect,vRealDiaAnterior:string;
  end;

var
  frmLeituradeCocho: TfrmLeituradeCocho;

implementation

{$R *.fmx}

uses USeviceConfinamento, UServiceDB, UPrincipal, UdmReportConf;

procedure TfrmLeituradeCocho.btnConfirmaClick(Sender: TObject);
var
 vIdex:integer;
 v  :TListItemDrawable;
 Pt : TPoint;
 vUltimaData:string;
begin
  if lblCurralSelcted.Text='...' then
  begin
   MyShowMessage('Selecione o Curral!!',false);
   Exit;
  end;
  vIdex  := listaCurrais.ItemIndex;
  if cbxNota.ItemIndex=-1 then
  begin
    MyShowMessage('Informe a Nota!!',false);
    Exit;
  end;
  if vRealDiaAnterior='0' then
  begin
    vUltimaData := ServiceConf.RetornaUltimoForneMaiorQZero(vIdLoteSelect,vIdCurralSelect);
    MyShowMessage('Ultimo fornecimento do Lote com Realizado maior que zero foi em :'+vUltimaData+#13+
    ' Deseja Replicar o realizado dessa data?',true);
    case frmPrincipal.vConfirma of
    1:
    begin
          try
           if rdPorcentagem.IsChecked then
           begin
            ServiceConf.InsereLeituraCocho('1',vIdLoteSelect,vIdCurralSelect,
            FormatDateTime('mm/dd/yyyy',edtDataForn.Date).QuotedString,
            stringReplace(cbxNota.Selected.Text,',','.',[rfReplaceAll]),
            stringReplace(edtAjuste.Text,',','.',[rfReplaceAll]),'1');
           end
           else
           begin
            ServiceConf.InsereLeituraCocho('2',vIdLoteSelect,vIdCurralSelect,
            FormatDateTime('mm/dd/yyyy',edtDataForn.Date).QuotedString,
            stringReplace(cbxNota.Selected.Text,',','.',[rfReplaceAll]),
            stringReplace(edtAjuste.Text,',','.',[rfReplaceAll]),'1');
           end;

           GeraLista;
           TThread.CreateAnonymousThread(procedure
           begin
            TThread.Synchronize(nil, procedure
            begin
             if vIdex<listaCurrais.Items.Count-1 then
             begin
              listaCurrais.ItemIndex :=vIdex+1;
              Pt := Mouse.CursorPos;
              v  :=  TListItemView(Sender).Drawables[listaCurrais.ItemIndex];
              listaCurraisItemClickEx(listaCurrais,listaCurrais.ItemIndex,pt,v);
              listaCurrais.Selected  := listaCurrais.Items[listaCurrais.ItemIndex];
             end
             else
             begin
               lblCurralSelcted.Text :='...';
               listaCurrais.SetFocus;
             end
            end);
           end).Start;
          except
           on e : Exception do
             MyShowMessage('Erro ao Atualizar Leitura: '+e.Message,false)
          end;
          //
    end;
    0:
     begin
       myShowMessage('Operação Abortada',false);
     end;
    end;
  end
  else
  begin
   try
     if rdPorcentagem.IsChecked then
     begin
      ServiceConf.InsereLeituraCocho('1',vIdLoteSelect,vIdCurralSelect,
      FormatDateTime('mm/dd/yyyy',edtDataForn.Date).QuotedString,
      stringReplace(cbxNota.Selected.Text,',','.',[rfReplaceAll]),
      stringReplace(edtAjuste.Text,',','.',[rfReplaceAll]),'1');
     end
     else
     begin
      ServiceConf.InsereLeituraCocho('2',vIdLoteSelect,vIdCurralSelect,
      FormatDateTime('mm/dd/yyyy',edtDataForn.Date).QuotedString,
      stringReplace(cbxNota.Selected.Text,',','.',[rfReplaceAll]),
      stringReplace(edtAjuste.Text,',','.',[rfReplaceAll]),'1');
     end;
     GeraLista;



     TThread.CreateAnonymousThread(procedure
     begin
      TThread.Synchronize(nil, procedure
      begin
       if vIdex<listaCurrais.Items.Count-1 then
       begin
        listaCurrais.ItemIndex :=vIdex+1;
        Pt := Mouse.CursorPos;
        v  :=  TListItemView(Sender).Drawables[listaCurrais.ItemIndex];
        listaCurraisItemClickEx(listaCurrais,listaCurrais.ItemIndex,pt,v);
        listaCurrais.Selected  := listaCurrais.Items[listaCurrais.ItemIndex];
       end
       else
       begin
         lblCurralSelcted.Text :='...';
         listaCurrais.SetFocus;
       end
      end);
     end).Start;
    except
     on e : Exception do
       MyShowMessage('Erro ao Atualizar Leitura: '+e.Message,false)
    end;
  end;
end;

procedure TfrmLeituradeCocho.btnConfirmarClick(Sender: TObject);
var
 vIdex:integer;
 v  :TListItemDrawable;
 Pt : TPoint;
 vUltimaData:string;
 I,X:integer;
begin
  X   :=0;
  for I := 0 to lvPermissoes.Items.Count-1 do
  begin
   if lvPermissoes.items[I].Checked then
   begin
    ServiceConf.InsereLeituraCocho(
    '2',
    lvPermissoes.items[I].ButtonText,
    lvPermissoes.items[i].TagString,
    FormatDateTime('mm/dd/yyyy',edtDtReplica.date).QuotedString,
    stringReplace(lvPermissoes.items[I].Detail,',','.',[rfReplaceAll]),
    '0','2');
   end;
  end;
  MyShowMessage('Leitura Lançada com sucesso!',false);
  layPopUpCad.Visible := false;
end;

procedure TfrmLeituradeCocho.btnGeraListaClick(Sender: TObject);
begin
 if edtDataForn.Date>date then
 begin
  MyShowMessage('Data não pode ser futura!!',false);
  Exit;
 end;
 GeraLista;
end;

procedure TfrmLeituradeCocho.btnVoltarPadraoClick(Sender: TObject);
begin
  Filtro;
  inherited;
end;

procedure TfrmLeituradeCocho.cbxNotaChange(Sender: TObject);
begin
 if cbxNota.ItemIndex>-1 then
  edtAjuste.Text := ServiceConf.RetornaAjusteNota(stringReplace(
  cbxNota.Selected.Text,',','.',[rfReplaceAll]));
end;

procedure TfrmLeituradeCocho.cbxNotaKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=13 then
   btnConfirmaClick(Sender);
end;

procedure TfrmLeituradeCocho.edtDataReplicaClick(Sender: TObject);
var
 vFiltro,vDataDe,vDataAte :string;
begin
  vReplica            := 1;
  vDataDe             := FormatDateTime('mm/dd/yyyy',edtDtReplica.Date-1).QuotedString;
  vFiltro             :=' AND a.DATA_LEITURA ='+vDataDe;
  ServiceConf.AbrirLeituraCocho(vFiltro);
  GeraListaContas(false);
  layPopUpCad.Visible := true;
end;

procedure TfrmLeituradeCocho.edtFDataEntATEChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmLeituradeCocho.edtFDataEntDEChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmLeituradeCocho.edtFiltroNameChangeTracking(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmLeituradeCocho.Filtro;
var
 vFiltro,vDataDe,vDataAte :string;
begin
  vDataDe             := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString;
  vDataAte            := FormatDateTime('mm/dd/yyyy',edtFDataEntAte.Date).QuotedString;
  vFiltro             :=' AND a.DATA_LEITURA BETWEEN '+vDataDe+' and '+vDataAte;
  if edtFiltroName.Text.Length>0 then
   vFiltro            := vFiltro+' AND B.CODIGO LIKE '+edtFiltroName.Text;
  ServiceConf.AbrirLeituraCocho(vFiltro);
end;

procedure TfrmLeituradeCocho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// TThread.CreateAnonymousThread(procedure
//  begin
//      try
//       serviceDB.FCon.ExecSQL('EXECUTE PROCEDURE ATUALIZA_GMD_ANIMAL_FAZ');
//       serviceDB.FCon.Commit;
//      except
//       on e : Exception do
//        MyShowMessage('Erro ao Atualizar Lotes: '+e.Message,false)
//      end;
//  end).Start;
end;

procedure TfrmLeituradeCocho.FormShow(Sender: TObject);
var
 vFiltro,vData :string;
begin
  layPopUpCad.Visible        := false;
  TreeItemExcluir.IsExpanded := false;
  layListaCurrais.Visible    := false;
  layFornecimento.Visible    := false;
  vData               := FormatDateTime('mm/dd/yyyy',date).QuotedString;
  vFiltro             :=' AND a.DATA_ALTERACAO BETWEEN '+vData+' and '+vData;
  edtFDataEntDE.Date  := date;
  edtFDataEntATE.Date := date;
  ServiceConf.AbrirLeituraCocho(vFiltro);
  ServiceConf.AbreConfiguracaoNotaCocho;
  inherited;
end;

procedure TfrmLeituradeCocho.GeraGrafico(idCurral,IdLote,vData,vTipo: string);
var
 vQry,vQry1,vQry2,vQry3 :TFDQuery;
 vResult:string;
 vHeigth :integer;
begin
 vHeigth := 110;//trunc((frmLeituradeCocho.Height-290)/2);

 vQry            := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;

 vQry1            := TFDQuery.Create(nil);
 vQry1.Connection := serviceDB.FCon;

 vQry2            := TFDQuery.Create(nil);
 vQry2.Connection := serviceDB.FCon;

 vQry3            := TFDQuery.Create(nil);
 vQry3.Connection := serviceDB.FCon;

 with vQry1,vQry1.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' FIRST 7');
   Add(' a.data_fornecimento "Label",');
   Add('sum(a.CONSUMO_MN)/count(DISTINCT a.ID_ANIMAL)"Value"');
   Add('FROM ANIMAL_FORNECIMENTO_CONF a');
   Add('WHERE ID_LOTE='+idLote);
   Add('GROUP BY data_fornecimento');
   Add('ORDER BY data_fornecimento DESC');
   Open;
 end;
 with vQry2,vQry2.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' FIRST 7');
   Add(' a.data_fornecimento "Label",');
   Add('sum(a.CONSUMO_MS)/count(DISTINCT a.ID_ANIMAL)"Value"');
   Add('FROM ANIMAL_FORNECIMENTO_CONF a');
   Add('WHERE ID_LOTE=:IN_LOTE');
   Add('GROUP BY data_fornecimento');
   Add('ORDER BY data_fornecimento DESC');
   ParamByName('IN_LOTE').AsString   :=idLote;
   Open;
 end;
 with vQry3,vQry3.SQL do
 begin
   Clear;
   Add('SELECT');
   Add(' FIRST 7');
   Add(' a.data_fornecimento "Label",');
   Add(' sum(a.ims_pv)/count(DISTINCT a.ID_ANIMAL) "Value"');
   Add('FROM ANIMAL_FORNECIMENTO_CONF a');
   Add('WHERE ID_LOTE=:IN_LOTE');
   Add('GROUP BY data_fornecimento');
   Add('ORDER BY data_fornecimento DESC');
   ParamByName('IN_LOTE').AsString   :=idLote;
   Open;
 end;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT DATA_LEITURA "Label",NOTA "Value" FROM LEITURA_COCHO');
   Add('WHERE STATUS=1 AND ID_CURRAL=:ID_CURRAL');
   Add('AND ID IN(SELECT FIRST 7 ID FROM LEITURA_COCHO WHERE STATUS=1 AND');
   Add('ID_CURRAL=:ID_CURRAL AND DATA_LEITURA<=:DATA');
   Add('ORDER BY DATA_LEITURA DESC)');
   Add('ORDER BY DATA_LEITURA DESC');
   ParamByName('ID_CURRAL').AsString :=idCurral;
   ParamByName('DATA').AsDate        :=strToDate(vData);
   Open;
 end;
 if vTipo='1' then
 begin
   WebCharts1
  .BackgroundColor('#2e353b')
  .NewProject
    .Rows
    .Tag
      .Add(
        WebCharts1
        .ContinuosProject
         .Charts
           ._ChartType(bar)
            .Attributes
              .Heigth(vHeigth)
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
                .Types('bar')
                .BackgroundColor('0,102,0')
                .Fill(true)
                .BorderWidth(2)
                .BorderColor('0,0,0')
                .DataSet(vQry3)
             .&End
             .DataSet
                .textLabel('Consumo MS')
                .Types('bar')
                .BackgroundColor('128,0,0')
                .Fill(true)
                .BorderWidth(2)
                .BorderColor('0,0,0')
                .DataSet(vQry2)
             .&End
             .DataSet
                .textLabel('Consumo MN')
                .Types('bar')
                .BackgroundColor('30,182,203')
                .Fill(true)
                .BorderWidth(2)
                .BorderColor('0,0,0')
                .DataSet(vQry1)
             .&End
            .&End
          .&End
         .HTML
       )
      .&End
   .&End
  .WebBrowser(WebBrowser1)
  .Generated;

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
              .Heigth(vHeigth)
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
                .DataSet(vQry)
             .&End
            .&End
          .&End
         .HTML
       )
      .&End
   .&End
  .WebBrowser(WebBrowser2)
  .Generated;
end
else
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
              .Heigth(vHeigth)
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
                .DataSet(vQry3)
             .&End
             .DataSet
                .textLabel('Consumo MS')
                .Types('line')
                .BackgroundColor('128,0,0')
                .Fill(true)
                .BorderWidth(2)
                .BorderColor('0,0,0')
                .DataSet(vQry2)
             .&End
             .DataSet
                .textLabel('Consumo MN')
                .Types('line')
                .BackgroundColor('30,182,203')
                .Fill(true)
                .BorderWidth(2)
                .BorderColor('0,0,0')
                .DataSet(vQry1)
             .&End
            .&End
          .&End
         .HTML
       )
      .&End
   .&End
  .WebBrowser(WebBrowser1)
  .Generated;

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
              .Heigth(vHeigth)
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
                .DataSet(vQry)
             .&End
            .&End
          .&End
         .HTML
       )
      .&End
   .&End
  .WebBrowser(WebBrowser2)
  .Generated;
vQry.Free;
vQry1.Free;
vQry2.Free;
vQry3.Free;
end;

procedure TfrmLeituradeCocho.GeraLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
 ServiceConf.AbrirListaLeituradeCocho(edtDataForn.Date);
 if not ServiceConf.TListaLeitura.IsEmpty then
 begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
       layListaCurrais.Visible := true;
       layFornecimento.Visible := true;
       listaCurrais.Items.Clear;
       ServiceConf.TListaLeitura.First;
       while not ServiceConf.TListaLeitura.eof do
       begin
         item := listaCurrais.Items.Add;
         with frmLeituradeCocho do
         begin
           with item  do
           begin
             txt           := TListItemText(Objects.FindDrawable('Text3'));
             txt.Text      := ServiceConf.TListaLeituraCodigo.AsString;
             txt.TagString := ServiceConf.TListaLeituraIDCURRAL.AsString;

             img := TListItemImage(Objects.FindDrawable('Image14'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgQtdCab.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text4'));
             txt.Text :=   'Qtde. Cab.';
             txt.TagString:= ServiceConf.TListaLeituraIDLOTE.AsString;
             txt      :=   TListItemText(Objects.FindDrawable('Text9'));
             txt.Text :=   ServiceConf.TListaLeituraQTDE_CAB.AsString;


             img := TListItemImage(Objects.FindDrawable('Image23'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgMediaPeso.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text6'));
             txt.Text :=   'Média Peso';
             txt      :=   TListItemText(Objects.FindDrawable('Text5'));
             txt.Text :=   ServiceConf.TListaLeituraPESO_MEDIO.AsString;

             if ServiceConf.TListaLeituraULTIMALEITURA.AsDateTime=edtDataForn.Date then
             begin
              img := TListItemImage(Objects.FindDrawable('Image12'));
              img.ScalingMode := TImageScalingMode.Stretch;
              img.Bitmap      := frmPrincipal.imgPanelFornRealizado.Bitmap;

              txt      :=   TListItemText(Objects.FindDrawable('Text8'));
              txt.Text :=   'Nota:';
              txt      :=   TListItemText(Objects.FindDrawable('Text7'));
              txt.Text :=   ServiceConf.TListaLeituraNOTA.AsString;
             end
             else
             begin
              img := TListItemImage(Objects.FindDrawable('Image12'));
              img.Bitmap      := nil;
             end
           end;
           ServiceConf.TListaLeitura.Next;
         end;
       end;
       listaCurrais.ItemIndex :=0;
    end);
   end).Start;
 end
 else
 begin
   layListaCurrais.Visible := false;
   layFornecimento.Visible := false;
   MyShowMessage('Nenhum curral encontrado para esse filtro!',false);
 end;
end;

procedure TfrmLeituradeCocho.listaCurraisItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
 vNota,vAjuste:string;
begin
 listaCurrais.SetFocus;
 vIdCurralSelect   :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').TagString;
 vIdLoteSelect     :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text4').TagString;
 vQtdeCabSelect   :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text9').Text;
 MediaPesoSelect  :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text5').Text;
 lblCurralSelcted.Text   :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').Text;
 layFornecimento.Visible := true;
 vNota :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text7').Text;
 if vNota.Length>0 then
  cbxNota.ItemIndex    := cbxNota.Items.IndexOf(vNota);
 layLnacaNota.Enabled := true;
 if rdBarras.IsChecked then
  GeraGrafico(vIdCurralSelect,vIdLoteSelect,edtDataForn.Text,'1')
 else
  GeraGrafico(vIdCurralSelect,vIdLoteSelect,edtDataForn.Text,'2');
 cbxNota.SetFocus;
 vRealDiaAnterior := ServiceConf.RetornaFornecimentoDiaAnterior(edtDataForn.Date-1,vIdLoteSelect);
 if Length(vRealDiaAnterior)=0 then
 begin
   MyShowMessage('Lote sem fornecimento no dia anteriro',false);
   btnConfirmaNota.Enabled := false;
   Exit;
 end
 else
   btnConfirmaNota.Enabled := true;
end;

procedure TfrmLeituradeCocho.lvPermissoesItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
 if ItemObject is TListItemImage then
  begin
    lvPermissoes.Items[lvPermissoes.ItemIndex].Checked :=
     not lvPermissoes.Items[lvPermissoes.ItemIndex].Checked;

   if TListItemImage(ItemObject).Name='ChkMarcaAll'  then
    begin
      if lvPermissoes.Items[lvPermissoes.ItemIndex].Checked then
        TListItemImage(ItemObject).Bitmap    := img_check.Bitmap
      else
        TListItemImage(ItemObject).Bitmap     := img_uncheck.Bitmap;
    end;
  end;
end;

procedure TfrmLeituradeCocho.rdBarrasChange(Sender: TObject);
begin
 if rdBarras.IsChecked then
  GeraGrafico(vIdCurralSelect,vIdLoteSelect,edtDataForn.Text,'1');
end;

procedure TfrmLeituradeCocho.rdDesmarcaTudoChange(Sender: TObject);
begin
   GeraListaContas(rdMarcaTudo.IsChecked);
end;

procedure TfrmLeituradeCocho.rdKgMsCabChange(Sender: TObject);
begin
 edtAjuste.Enabled := rdKgMsCab.IsChecked;
 if rdKgMsCab.IsChecked then
  lblAjuste.Text:='Ajuste(KG/MS/CAB)'
end;

procedure TfrmLeituradeCocho.rdLinhaChange(Sender: TObject);
begin
 if rdLinha.IsChecked then
  GeraGrafico(vIdCurralSelect,vIdLoteSelect,edtDataForn.Text,'2');
end;

procedure TfrmLeituradeCocho.rdMarcaTudoChange(Sender: TObject);
begin
   GeraListaContas(rdMarcaTudo.IsChecked);
end;

procedure TfrmLeituradeCocho.rdPorcentagemChange(Sender: TObject);
begin
 if rdPorcentagem.IsChecked then
  lblAjuste.Text:='Ajuste %'
end;

procedure TfrmLeituradeCocho.SpeedButton1Click(Sender: TObject);
begin
  vReplica                :=0 ;
  if dmRelConf.AbreFichaLeituraCocho(dataLeitura.Date) then
   MyShowMessage('Sem dados para gerar essa ficha!',false);
end;

procedure TfrmLeituradeCocho.StyleComboBoxItems();
var
 Item : TListBoxItem;
 i : Integer;
begin
  for i := 0 to cbxNota.Count-1 do begin
    Item := cbxNota.ListItems[i];
    Item.Font.Size := 50;
    Item.StyledSettings := Item.StyledSettings - [TStyledSetting.Family,TStyledSetting.Size,TStyledSetting.FontColor];
  end;
end;

procedure TfrmLeituradeCocho.TreeExcluiGeralClick(Sender: TObject);
begin
  if ServiceConf.TLeituraCocho.RecordCount=0 then
  begin
    MyShowMessage('Nenhum registor para deletar',false);
    Exit;
  end;
  MyShowMessage('Deseja Realmente Deletar todas as leituras filtradas?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.TLeituraCocho.First;
       while not ServiceConf.TLeituraCocho.Eof do
       begin
         ServiceConf.DeletaLeituraeTratros(
         ServiceConf.TLeituraCochoID_LOTE.AsString,
         ServiceConf.TLeituraCochoID_CURRAL.AsString,
         FormatDateTime('mm/dd/yyyy',ServiceConf.TLeituraCochoDATA_LEITURA.AsDateTime).QuotedString);
         ServiceConf.TLeituraCocho.Next;
       end;
       myShowMessage('Registro Deletado com Sucesso!',false);
       Filtro;
      except
      on E : Exception do
       begin
         myShowMessage('Exception class name = '+E.ClassName,false);
         myShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  0:
   begin
     myShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmLeituradeCocho.TreeExcluirIndClick(Sender: TObject);
begin
  if ServiceConf.TLeituraCochoID_LOTE.AsString.Length=0 then
  begin
    MyShowMessage('Selecione uma leitura!',false);
    Exit;
  end;
  MyShowMessage('Deseja Realmente Deletar a leituras Selecionada?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.DeletaLeituraeTratros(ServiceConf.TLeituraCochoID_LOTE.AsString,
        ServiceConf.TLeituraCochoID_CURRAL.AsString,
        FormatDateTime('mm/dd/yyyy',edtDataForn.Date).QuotedString
       );
       Filtro;
       myShowMessage('Registro Deletado com Sucesso!',false);
      except
      on E : Exception do
       begin
         myShowMessage('Exception class name = '+E.ClassName,false);
         myShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  0:
   begin
     myShowMessage('Operação Abortada',false);
   end;
  end;
end;

procedure TfrmLeituradeCocho.TreeItemExcluirClick(Sender: TObject);
begin
 if TreeItemExcluir.IsExpanded then
  TreeItemExcluir.IsExpanded := false
 else
  TreeItemExcluir.IsExpanded := true;
end;

procedure TfrmLeituradeCocho.TreeItemNovoClick(Sender: TObject);
begin
  vReplica                :=0 ;
  rdPorcentagem.IsChecked := true;
  StyleComboBoxItems;
  inherited;
end;

procedure TfrmLeituradeCocho.TreeReplicarClick(Sender: TObject);
begin
 TreeReplicar.IsExpanded := not TreeReplicar.IsExpanded;
end;

procedure TfrmLeituradeCocho.GeraListaContas(vChecked:boolean);
var
 item       : TListViewItem;
 txt        : TListItemText;
 txtH       : TListItemPurpose;
 img        : TListItemImage;
 vFornAnte  : string;
begin
 lvPermissoes.Items.Clear;
 ServiceConf.TLeituraCocho.First;
 while not ServiceConf.TLeituraCocho.eof do
 begin
    item := lvPermissoes.Items.Add;
    item.ButtonText      := ServiceConf.TLeituraCochoID_LOTE.AsString;
    item.TagString := ServiceConf.TLeituraCochoID_CURRAL.AsString;
    vFornAnte      := ServiceConf.RetornaFornecimentoDiaAnterior(edtDtReplica.Date-1,
         ServiceConf.TLeituraCochoID_LOTE.AsString);
    if vFornAnte.Length>0 then
     item.Tag        := vFornAnte.ToInteger
    else
     item.Tag        := 0;
    item.Checked    := vChecked;
    item.Detail     := ServiceConf.TLeituraCochoNOTA.AsString;
    item.IndexTitle := ServiceConf.TLeituraCochoAJUSTE.AsString;
    with frmLeituradeCocho do
    begin
      with item  do
      begin
        txt             := TListItemText(Objects.FindDrawable('TxtDescricao'));
        txt.Text        := ServiceConf.TLeituraCochoDATA_LEITURA.AsString;

        txt             := TListItemText(Objects.FindDrawable('TextNomeConta'));
        txt.Text        := ServiceConf.TLeituraCochoCURRAL.AsString;

        txt             := TListItemText(Objects.FindDrawable('Text9'));
        txt.Text        := ServiceConf.TLeituraCochoNota.AsString;

        txt             := TListItemText(Objects.FindDrawable('Text10'));
        txt.Text        := ServiceConf.TLeituraCochoAJUSTE.AsString;

        txt             := TListItemText(Objects.FindDrawable('Text11'));
        txt.Text        := vFornAnte;

        img             := TListItemImage(Objects.FindDrawable('ChkMarcaAll'));
        if Checked then
         img.Bitmap     := img_check.Bitmap
        else
         img.Bitmap     := img_uncheck.Bitmap;

      end;
    end;
    ServiceConf.TLeituraCocho.next;
 end;
end;

procedure TfrmLeituradeCocho.Image8Click(Sender: TObject);
begin
 layPopUpCad.Visible := false;
end;

procedure TfrmLeituradeCocho.TreeViewItem1Click(Sender: TObject);
begin
  if TreeViewItem1.IsExpanded then
   TreeViewItem1.IsExpanded := false
  else
   TreeViewItem1.IsExpanded := true;
end;

end.
