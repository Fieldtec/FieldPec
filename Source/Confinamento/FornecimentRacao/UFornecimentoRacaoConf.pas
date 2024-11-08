unit UFornecimentoRacaoConf;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Effects, FMX.ListBox, FMX.DateTimeCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.WebBrowser, View.WebCharts,Charts.Types,Vcl.Controls, FMX.Menus;

type
  TfrmFornecimentoConf = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    Label54: TLabel;
    cbxCurralF: TComboBox;
    cbxLoteF: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    cbxRacaoTrato: TComboBox;
    Label5: TLabel;
    edtTratoF: TEdit;
    btnLocaliza: TRectangle;
    Layout24: TLayout;
    Image23: TImage;
    Label47: TLabel;
    btnExportaGrid: TRectangle;
    Layout81: TLayout;
    Image43: TImage;
    Label48: TLabel;
    ShadowEffect47: TShadowEffect;
    qryAux: TFDQuery;
    Layout4: TLayout;
    Layout25: TLayout;
    Layout29: TLayout;
    Rectangle9: TRectangle;
    lblCount: TLabel;
    Layout31: TLayout;
    Label6: TLabel;
    lblTotalPrev: TLabel;
    Label7: TLabel;
    lblTotalReal: TLabel;
    Label8: TLabel;
    lblDif: TLabel;
    layListaCurrais: TLayout;
    listaCurrais: TListView;
    Rectangle2: TRectangle;
    GroupFiltros: TGroupBox;
    Edit1: TEdit;
    Label9: TLabel;
    Label16: TLabel;
    cbxRacaoForn: TComboBox;
    Label17: TLabel;
    Label12: TLabel;
    edtTratoForn: TComboBox;
    edtDataForn: TDateEdit;
    Rectangle3: TRectangle;
    layFornecimento: TLayout;
    Layout1: TLayout;
    Layout5: TLayout;
    Label13: TLabel;
    cbxMotorista: TComboBox;
    Label14: TLabel;
    edtHoraTrato: TTimeEdit;
    Rectangle7: TRectangle;
    Layout10: TLayout;
    Layout9: TLayout;
    Label19: TLabel;
    Label20: TLabel;
    Rectangle4: TRectangle;
    edtPrevisto: TEdit;
    Rectangle5: TRectangle;
    edtRealizado: TEdit;
    Rectangle8: TRectangle;
    Rectangle6: TRectangle;
    Layout8: TLayout;
    Image4: TImage;
    Label15: TLabel;
    Image6: TImage;
    ShadowEffect2: TShadowEffect;
    Rectangle33: TRectangle;
    lblCurralSelcted: TLabel;
    Layout6: TLayout;
    Rectangle10: TRectangle;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToFieldTRATO: TLinkFillControlToField;
    SaveDialog1: TSaveDialog;
    TreeViewFicha: TTreeViewItem;
    Image7: TImage;
    btnGeraLista: TRectangle;
    Layout3: TLayout;
    Image3: TImage;
    Label18: TLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    Rectangle11: TRectangle;
    Layout7: TLayout;
    Image8: TImage;
    Label21: TLabel;
    ShadowEffect1: TShadowEffect;
    procedure btnLocalizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure edtDataFornChange(Sender: TObject);
    procedure cbxMotoristaChange(Sender: TObject);
    procedure listaCurraisItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtRealizadoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtTratoFKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnExportaGridClick(Sender: TObject);
    procedure TreeViewFichaClick(Sender: TObject);
    procedure btnGeraListaClick(Sender: TObject);
    procedure cbxRacaoFornChange(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
  private
    procedure CarregaCombo;
    procedure CarregaComboRacaoFor(DataForn:TDate);
    procedure Filtro;
    procedure SomarColunasGridForn;
    procedure GeraLista;
  public
    vFiltro,vIdFornSelect,vIdRacaoForn,vIdMotorista,vIdCurralSelect,vIdLoteSelect,vQtdeCabSelect,MediaPesoSelect:string;
    vUltimoTrato,vItemSel:integer;
    Pt : TPoint;
  end;

var
  frmFornecimentoConf: TfrmFornecimentoConf;

implementation

{$R *.fmx}

uses USeviceConfinamento, UServiceDB, UPrincipal, UdmReportConf, ServiceDB2;

{ TfrmFornecimentoConf }

procedure TfrmFornecimentoConf.SomarColunasGridForn;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
  Sum1: Double;
  Val1: Double;
begin
  Sum := 0;
  Sum1:= 0;
  I   := 0;
  for I := 0 to StringGrid1.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid1.Cells[6,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(StringGrid1.Cells[7,I],Val1) then
    Sum1:= Sum1 + Val1;
  end;
  if I>0 then
  begin
    lblTotalPrev.Text     := FormatFloat('####,##.00',Sum);
    lblTotalReal.Text     := FormatFloat('####,##.00',Sum1);
    lblDif.Text           := FormatFloat('####,##.00',Sum-Sum1);
  end
  else
  begin
    lblTotalPrev.Text     := '0,00';
    lblTotalReal.Text     := '0,00';
    lblDif.Text           := '0,00';
  end;
  lblCount.Text           := intToStr(i);
end;

procedure TfrmFornecimentoConf.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir todos os tratos filtrados?',TRUE);
  case DLG.vBntConfirmaMsg of
  1:
  begin
      try
       ServiceConf.TFornecimentoRacao.first;
       while not ServiceConf.TFornecimentoRacao.eof  do
       begin
        ServiceConf.DeletaFornecimento(
         ServiceConf.TFornecimentoRacaoID.AsString,
         ServiceConf.TFornecimentoRacaoID_LOTE.AsString,
         ServiceConf.TFornecimentoRacaoDATA_FORN.AsString,
         ServiceConf.TFornecimentoRacaoTRATO.AsString
        );
        ServiceConf.TFornecimentoRacao.Next;
       end;
       MyShowMessage('Registro excluido com sucesso!',false);
       Filtro;
      except
      on E : Exception do
       begin
         MyShowMessage('Exception message = '+E.Message,false);
       end;
      end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',false);
   end;
  end;

end;

procedure TfrmFornecimentoConf.TreeItemNovoClick(Sender: TObject);
begin
  ServiceConf.PlanejamentoTratoDefault;
  vItemSel :=0;
  layListaCurrais.Visible := false;
  layFornecimento.visible := false;
  cbxRacaoTrato.ItemIndex :=-1;
  edtTratoForn.ItemIndex  :=-1;
  edtDataForn.Enabled     := true;
  edtDataForn.Date        := date;
  cbxMotorista.ItemIndex  :=-1;
  edtPrevisto.Text        :='0';
  edtRealizado.Text      :='0';
  CarregaComboRacaoFor(date);
  inherited;
end;


procedure TfrmFornecimentoConf.TreeViewFichaClick(Sender: TObject);
var
 DataDe,
 vFiltroFicha,vTrato:string;
begin
 //parametro Proc
 DataDe       :=  FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString;
 if edtTratoF.Text.Length>0 then
  vTrato:=edtTratoF.Text
 else
  vTrato:='0';
 //filtros
 if cbxCurralF.ItemIndex>0 then
  vFiltroFicha := vFiltroFicha+' AND CURRAL='+cbxCurralF.Selected.Text.QuotedString;
 if cbxLoteF.ItemIndex>0 then
  vFiltroFicha := vFiltroFicha+' AND LOTE='+cbxLoteF.Selected.Text.QuotedString;
 if cbxRacaoTrato.ItemIndex>0 then
  vFiltroFicha := vFiltroFicha+' AND RACAO='+cbxRacaoTrato.Selected.Text.QuotedString;
 dmRelConf.AbreFichaForne(DataDe,vTrato,vFiltroFicha);
end;

procedure TfrmFornecimentoConf.GeraLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
 ServiceConf.AbreListaFornecimentoCurrais(edtDataForn.Date,edtTratoForn.Selected.Text,vIdRacaoForn);
 if not ServiceConf.TListaCurraisForn.IsEmpty then
 begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
       layListaCurrais.Visible := true;
       listaCurrais.Items.Clear;
       ServiceConf.TListaCurraisForn.First;
       while not ServiceConf.TListaCurraisForn.eof do
       begin
         item := listaCurrais.Items.Add;
         with frmFornecimentoConf do
         begin
           with item  do
           begin
             txt      :=   TListItemText(Objects.FindDrawable('Text3'));
             txt.Text :=   ServiceConf.TListaCurraisFornCodigo.AsString;
             txt.TagString:= ServiceConf.TListaCurraisFornIDCURRAL.AsString;

             img := TListItemImage(Objects.FindDrawable('Image14'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgQtdCab.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text4'));
             txt.Text :=   'Qtde. Cab.';
             txt.TagString:= ServiceConf.TListaCurraisFornIDLOTE.AsString;

             txt      :=   TListItemText(Objects.FindDrawable('Text9'));
             txt.Text :=   ServiceConf.TListaCurraisFornQTDE_CAB.AsString;
             txt.TagString:= ServiceConf.TListaCurraisFornID.AsString;


             img := TListItemImage(Objects.FindDrawable('Image23'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgMediaPeso.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text6'));
             txt.Text :=   'Média Peso';
             txt      :=   TListItemText(Objects.FindDrawable('Text5'));
             txt.Text :=   ServiceConf.TListaCurraisFornMEDIA_PESO.AsString;


             img := TListItemImage(Objects.FindDrawable('Image24'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgDataEnt.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text8'));
             txt.Text :=   'Data Ent.';
             txt      :=   TListItemText(Objects.FindDrawable('Text7'));
             txt.Text :=   ServiceConf.TListaCurraisFornDATA_ENTRADA.AsString;

             img := TListItemImage(Objects.FindDrawable('Image25'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgDias.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text10'));
             txt.Text :=   'Dia Médio';
             txt      :=   TListItemText(Objects.FindDrawable('Text11'));
             txt.Text :=   ServiceConf.TListaCurraisFornDIAS_MEDIO.AsString;

             img := TListItemImage(Objects.FindDrawable('Image26'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.ImgPrevisto.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text13'));
             txt.Text :=   'Previsto(kg)';
             txt      :=   TListItemText(Objects.FindDrawable('Text14'));
             txt.Text :=   ServiceConf.TListaCurraisFornPREVISTO_MN_KG.AsString;

             img := TListItemImage(Objects.FindDrawable('Image27'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgRealizado.Bitmap;

             txt      :=   TListItemText(Objects.FindDrawable('Text15'));
             txt.Text :=   'Realizado(kg)';
             txt      :=   TListItemText(Objects.FindDrawable('Text16'));
             txt.Text :=   ServiceConf.TListaCurraisFornREALIZADO.AsString;

             if ServiceConf.TListaCurraisFornRealizado.AsInteger>0 then
             begin
              img := TListItemImage(Objects.FindDrawable('Image12'));
              img.ScalingMode := TImageScalingMode.Stretch;
              img.Bitmap      := frmPrincipal.imgPanelFornRealizado.Bitmap;
             end
             else
             begin
              img := TListItemImage(Objects.FindDrawable('Image12'));
              img.Bitmap      := nil;
             end
           end;
           ServiceConf.TListaCurraisForn.Next;
         end;
       end;
       listaCurrais.ItemIndex :=0;
    end);
   end).Start;
 end
 else
 begin
   layListaCurrais.Visible := false;
   MyShowMessage('Nenhum curral encontrado para esse filtro!',false);
 end;
end;

procedure TfrmFornecimentoConf.listaCurraisItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
 vPrev:string;
begin
 listaCurrais.SetFocus;
 vIdCurralSelect   :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').TagString;
 vIdLoteSelect     :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text4').TagString;
 edtRealizado.Text:=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text16').Text;
 vQtdeCabSelect   :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text9').Text;
 MediaPesoSelect  :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text5').Text;
 vIdFornSelect    :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text9').TagString;
 lblCurralSelcted.Text   :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').Text;
 vPrev                   :=TAppearanceListViewItem(listaCurrais.Selected).Objects.FindObjectT<TListItemText>
  ('Text14').Text;

 layFornecimento.Visible := true;
 edtRealizado.SelectAll;
 edtRealizado.SetFocus;
 vUltimoTrato := ServiceConf.RetornaMaxTratoLote(vIdLoteSelect);
 if strToInt(edtTratoForn.Selected.Text)=vUltimoTrato then
 begin
  edtPrevisto.Text  :=intToStr(ServiceConf.RetornaPrevistoCorrigido(vIdLoteSelect,edtDataForn.Text));
 end
 else
 begin
  edtPrevisto.Text  :=vPrev;
 end;
 vItemSel :=1;
end;

procedure TfrmFornecimentoConf.MenuItem1Click(Sender: TObject);
var
 Caminho:string;
begin
 if SaveDialog1.Execute then
 begin
   try
    Caminho := ExtractFilePath(SaveDialog1.FileName);
    serviceDBN.GeraArquivosAnimalTAG(Caminho);
    MyShowMessage('Arquivo Gerado com sucesso!',false);
   except
     on e : Exception do
     MyShowMessage('Erro ao Atualizar Fornecimento: '+e.Message,false)
   end;
 end;
end;

procedure TfrmFornecimentoConf.Rectangle11Click(Sender: TObject);
var
 Caminho:string;
begin
 if SaveDialog1.Execute then
 begin
   try
    Caminho := ExtractFilePath(SaveDialog1.FileName);
    serviceDBN.GeraArquivosAnimalTAG(Caminho);
    MyShowMessage('Arquivo Gerado com sucesso!',false);
   except
     on e : Exception do
     MyShowMessage('Erro ao Atualizar Fornecimento: '+e.Message,false)
   end;
 end;
end;

procedure TfrmFornecimentoConf.btnConfirmaClick(Sender: TObject);
var
 vIdex:integer;
 v  :TListItemDrawable;
begin
  vIdex  := listaCurrais.ItemIndex;
  if cbxMotorista.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o Motorista!',false);
    Exit;
  end;
  if edtRealizado.Text.Length=0 then
  begin
    MyShowMessage('Informe o Realizado',false);
    Exit;
  end;
  try
   ServiceConf.AtualizaFornecimento(vIdFornSelect, vIdMotorista,edtHoraTrato.Text, vQtdeCabSelect,
   StringReplace(MediaPesoSelect,',','.',[rfReplaceAll]),edtRealizado.Text,
   edtDataForn.Text,edtTratoForn.Selected.Text,vIdLoteSelect);
   GeraLista;
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
     if vIdex<listaCurrais.Items.Count-1 then
     begin
      listaCurrais.ItemIndex :=vIdex+1;
      Pt := Mouse.CursorPos;
      v :=  TListItemView(Sender).Drawables[listaCurrais.ItemIndex];
      listaCurraisItemClickEx(listaCurrais,listaCurrais.ItemIndex,pt,v);
      listaCurrais.Selected  := listaCurrais.Items[listaCurrais.ItemIndex];
     end
     else
     begin
       edtRealizado.Text       :='';
       edtPrevisto.Text        :='';
       lblCurralSelcted.Text   :='...';
     end;
    end);
   end).Start;
  except
   on e : Exception do
     MyShowMessage('Erro ao Atualizar Fornecimento: '+e.Message,false)
  end;
end;

procedure TfrmFornecimentoConf.btnExportaGridClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
 if SaveDialog1.Execute then
 begin
   csv:= tstringlist.create;
    for row:= 0 to StringGrid1.rowcount do
    begin
     s:= '';
     if row=0 then
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

procedure TfrmFornecimentoConf.btnGeraListaClick(Sender: TObject);
begin
 if edtTratoForn.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Trato',false);
   Exit;
 end;
 if cbxRacaoForn.ItemIndex=-1 then
 begin
   MyShowMessage('Informe a Ração',false);
   Exit;
 end;
 GeraLista;
end;

procedure TfrmFornecimentoConf.btnLocalizaClick(Sender: TObject);
begin
  Filtro;
  btnExportaGrid.Enabled := ServiceConf.TFornecimentoRacao.RecordCount>0;
  TreeViewFicha.Enabled  := ServiceConf.TFornecimentoRacao.RecordCount>0;
end;

procedure TfrmFornecimentoConf.CarregaCombo;
begin
  cbxCurralF.Items.Clear;
  cbxLoteF.Items.Clear;
  cbxMotorista.Items.Clear;
  cbxRacaoTrato.Items.Clear;
  cbxCurralF.Items.Add('Todos');
  cbxLoteF.Items.Add('Todos');
  cbxRacaoTrato.Items.Add('Todas');
  with qryAux,qryAux.SQL do
  begin
    Clear;
    Add('SELECT DISTINCT B.NOME RACAO FROM FORNECIMENTO_CONF A');
    Add('JOIN RACAO B ON A.ID_RACAO=B.ID');
    Add('WHERE A.STATUS>-1');
    Open;
    while not eof do
    begin
     cbxRacaoTrato.Items.Add(qryAux.FieldByName('RACAO').AsString);
     qryAux.Next;
    end;

    Clear;
    Add('SELECT CODIGO FROM CURRAIS');
    Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
    Add('AND TIPO=1');
    Add('ORDER BY CODIGO');
    Open;
    while not eof do
    begin
     cbxCurralF.Items.Add(qryAux.FieldByName('CODIGO').AsString);
     qryAux.Next;
    end;

    Clear;
    Add('SELECT ID FROM LOTE_NUTRICIONAL ');
    Add('WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
    Add('ORDER BY ID');
    Open;
    while not eof do
    begin
     cbxLoteF.Items.Add(qryAux.FieldByName('ID').AsString);
     qryAux.Next;
    end;


    Clear;
    Add('SELECT * FROM USERS');
    Add('WHERE STATUS=1 AND ID_CARGO=3 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
    Open;
    while not eof do
    begin
     cbxMotorista.Items.AddObject(qryAux.FieldByName('NAME').AsString,TObject(qryAux.FieldByName('ID').AsInteger));
     qryAux.Next;
    end;

    cbxCurralF.ItemIndex     :=0;
    cbxLoteF.ItemIndex       :=0;
    cbxRacaoTrato.ItemIndex  :=0;
  end;
end;

procedure TfrmFornecimentoConf.CarregaComboRacaoFor(DataForn: TDate);
begin
  cbxRacaoForn.Items.Clear;
  with qryAux,qryAux.SQL do
  begin
    Clear;
    Add('SELECT DISTINCT ID_RACAO,B.NOME RACAO FROM FORNECIMENTO_CONF A');
    Add('JOIN RACAO B ON A.ID_RACAO=B.ID');
    Add('WHERE A.STATUS>-1');
    Add('AND A.DATA_FORN=:DATA_FORN');
    ParamByName('DATA_FORN').AsDate := DataForn;
    Open;
    while not eof do
    begin
     cbxRacaoForn.Items.AddObject(qryAux.FieldByName('RACAO').AsString,TObject(qryAux.FieldByName('ID_RACAO').AsInteger));
     qryAux.Next;
    end;
  end;
end;

procedure TfrmFornecimentoConf.cbxMotoristaChange(Sender: TObject);
begin
 if cbxMotorista.ItemIndex>-1 then
   vIdMotorista := IntToStr(Integer(cbxMotorista.Items.Objects[cbxMotorista.ItemIndex]));
end;

procedure TfrmFornecimentoConf.cbxRacaoFornChange(Sender: TObject);
begin
  if cbxRacaoForn.ItemIndex>-1 then
   vIdRacaoForn := IntToStr(Integer(cbxRacaoForn.Items.Objects[cbxRacaoForn.ItemIndex]));
end;

procedure TfrmFornecimentoConf.edtDataFornChange(Sender: TObject);
begin
 CarregaComboRacaoFor(edtDataForn.Date);
end;

procedure TfrmFornecimentoConf.edtRealizadoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if KEY=13 then
  btnConfirmaClick(Sender);
end;

procedure TfrmFornecimentoConf.edtTratoFKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmFornecimentoConf.Filtro;
var
 DataDe,DataAte:string;
begin
 DataDe  :=  FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString;
 DataAte :=  FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date).QuotedString;
 vFiltro :=  'AND A.DATA_FORN BETWEEN '+DataDe+' AND '+DataAte;
 if cbxCurralF.ItemIndex>0 then
  vFiltro := vFiltro+' AND C.CODIGO='+cbxCurralF.Selected.Text.QuotedString;
 if cbxLoteF.ItemIndex>0 then
  vFiltro := vFiltro+' AND A.ID_LOTE='+cbxLoteF.Selected.Text.QuotedString;
 if cbxRacaoTrato.ItemIndex>0 then
  vFiltro := vFiltro+' AND D.NOME='+cbxRacaoTrato.Selected.Text.QuotedString;
 if edtTratoF.Text.Length>0 then
  vFiltro := vFiltro+' AND A.TRATO='+edtTratoF.Text.QuotedString;
 ServiceConf.AbreFornecimento(vFiltro);
 SomarColunasGridForn;
end;

procedure TfrmFornecimentoConf.FormShow(Sender: TObject);
begin
  TreeViewFicha.Enabled   := false;
  btnExportaGrid.Enabled  := false;
  layFornecimento.visible := false;
  layListaCurrais.Visible := false;
  CarregaCombo;
  edtFDataEntDE.Date  := date;
  edtFDataEntATE.Date := date;
  btnLocalizaClick(sender);
  inherited;
end;

end.

