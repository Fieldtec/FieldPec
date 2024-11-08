unit UDiariasOcupacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.StdCtrls, FMX.ListBox,
  FMX.DateTimeCtrls, FMX.Controls.Presentation, FMX.Objects, FMX.TreeView,
  FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.TabControl, UMsgDlgRel, UMsgDlg;

type
  TfrmDiariasOcupacao = class(TForm)
    layMnuPrincipal: TLayout;
    layMnu: TLayout;
    recMnu: TRectangle;
    Treemnu: TTreeView;
    TreeItemNovo: TTreeViewItem;
    Image2: TImage;
    TreeItemEditar: TTreeViewItem;
    Image5: TImage;
    TreeItemRelGeral: TTreeViewItem;
    Image1: TImage;
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
    Label4: TLabel;
    cbxPastoOrigem: TComboBox;
    btnConfirmar: TSpeedButton;
    Image3: TImage;
    StringGrid1: TStringGrid;
    LayInfPadrao: TLayout;
    RectangleInfPadrao: TRectangle;
    Layout1: TLayout;
    lblCountLotes: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    edtFDataEntDE: TDateEdit;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    Label10: TLabel;
    qryAux: TFDQuery;
    lblTotalDiarias: TLabel;
    lblDiariasMedias: TLabel;
    SaveDialog1: TSaveDialog;
    TabGrids: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    StringGrid2: TStringGrid;
    cbxSexoF: TComboBox;
    lblSexoF: TLabel;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    TreeItemRelSexo: TTreeViewItem;
    Image4: TImage;
    procedure btnConfirmarClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemRelGeralClick(Sender: TObject);
    procedure TabGridsChange(Sender: TObject);
    procedure TreeItemRelSexoClick(Sender: TObject);
  private
    vInsert  :integer;
    dlg :TFrmmsgDlg;
    vFiltro  :string;
    procedure CarregaCombo;
    procedure SomarColunasGridForn;
    procedure SomarColunasGridForn1;
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
  public
    { Public declarations }
  end;

var
  frmDiariasOcupacao: TfrmDiariasOcupacao;

implementation

{$R *.fmx}

uses UPrincipal, ServiceRel, UServiceDB;

procedure TfrmDiariasOcupacao.MyShowMessage(msg: string; btnCancel: Boolean);
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

procedure TfrmDiariasOcupacao.btnConfirmarClick(Sender: TObject);
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;
 serviceDB.qryConfigPadrao.Close;
 serviceDB.qryConfigPadrao.Open;
 serviceDB.qryConfigPadrao.Filtered := false;
 serviceDB.qryConfigPadrao.Filter   := 'ID_PROPRIEDADE='+serviceDB.vidPropriedade;
 serviceDB.qryConfigPadrao.Filtered := true;
 if (serviceDB.qryConfigPadraoDATA_DIARIAS.AsDateTime<date)then
 begin
  MyShowMessage('Diarias geradas ate a data:'+serviceDB.qryConfigPadraoDATA_DIARIAS.AsString+
  ' Deseja atualizar os dados, essa operação pode ser demorada?'
  ,true);
  case dlg.vBntConfirmaMsg of
    1:
    begin
        try
         with vQryAux,vQryAux.sql do
         begin
           Clear;
           Add('delete from TMP_EXTRATO_ANIMAIS where ID_FAZENDA='+serviceDB.vIdPropriedade);
           ExecSQL;

           Clear;
           Add('delete from TMP_EXTRATO_ANIMAIS_SEXO where ID_FAZENDA='+serviceDB.vIdPropriedade);
           ExecSQL;

           Clear;
           Add('INSERT INTO TMP_EXTRATO_ANIMAIS');
           Add('SELECT');
           Add('NULL,');
           Add('IDFazenda,');
           Add('ID_lOCAL,');
           Add('DATA_DIA,');
           Add('SALDO_INI,');
           Add('TOTAL_ENT,');
           Add('TOTAL_SAI,');
           Add('SALDO_FINAL');
           Add('FROM EXTRATO_DIARIAS('+serviceDB.vIdPropriedade+')');
           ExecSQL;


           Clear;
           Add('INSERT INTO TMP_EXTRATO_ANIMAIS_SEXO');
           Add('SELECT');
           Add('NULL ID,');
           Add('IDFAZENDA,');
           Add('ID_LOCAL,');
           Add(QuotedStr('F')+',');
           Add('DATA_DIA,');
           Add('SALDO_INI,');
           Add('TOTAL_ENT,');
           Add('TOTAL_SAI,');
           Add(' SALDO_FINAL');
           Add('FROM EXTRATO_DIARIAS_F('+serviceDB.vIdPropriedade+')');
           ExecSQL;

           Clear;
           Add('INSERT INTO TMP_EXTRATO_ANIMAIS_SEXO');
           Add('SELECT');
           Add('NULL ID,');
           Add('IDFAZENDA,');
           Add('ID_LOCAL,');
           Add(QuotedStr('M')+',');
           Add('DATA_DIA,');
           Add('SALDO_INI,');
           Add('TOTAL_ENT,');
           Add('TOTAL_SAI,');
           Add(' SALDO_FINAL');
           Add('FROM EXTRATO_DIARIAS_M('+serviceDB.vIdPropriedade+')');
           ExecSQL;

           serviceDB.qryConfigPadrao.Edit;
           serviceDB.qryConfigPadraoDATA_DIARIAS.AsDateTime := date;
           serviceDB.qryConfigPadrao.ApplyUpdates(-1);
           vInsert:=1;
           btnConfirmarClick(Sender);
         end;
         MyShowMessage('Dados deletados com Sucesso!',false);
        except
        on E : Exception do
         begin
           MyShowMessage('Exception class name = '+E.ClassName,false);
           MyShowMessage('Exception message = '+E.Message,false);
         end;
        end;
    end;
  end;
   vQryAux.Free;
 end
 else
 begin
   if TabGrids.TabIndex=0 then
    begin
     vFiltro :='';
     if cbxPastoOrigem.ItemIndex>0 then
      vFiltro := ' AND C.CODIGO='+cbxPastoOrigem.Selected.Text.QuotedString;
     SerRel.AbreDiariasOcupacao(edtFDataEntDE.Date,edtFDataEntATE.Date,vFiltro);
     SomarColunasGridForn;
    end;
    if TabGrids.TabIndex=1 then
    begin
     vFiltro :='';
     if cbxSexoF.ItemIndex>0 then
     begin
      if cbxSexoF.ItemIndex=1 then
      begin
       vFiltro := ' AND  TMP.SEXO=''M''';
       SerRel.ppLalblTotalFemeas.Visible := false;
       SerRel.ppLabel133.Visible         := false;

       SerRel.ppLalblTotalMacho.Visible := true;
       SerRel.ppLabel132.Visible        := true;
      end;
      if cbxSexoF.ItemIndex=2 then
      begin
       vFiltro := ' AND  TMP.SEXO=''F''';
       SerRel.ppLalblTotalMacho.Visible := false;
       SerRel.ppLabel132.Visible        := false;

       SerRel.ppLalblTotalFemeas.Visible:= true;
       SerRel.ppLabel133.Visible        := true;
      end;
     end
     else
     begin
       SerRel.ppLalblTotalMacho.Visible  := true;
       SerRel.ppLalblTotalFemeas.Visible := true;
       SerRel.ppLabel133.Visible         := true;
       SerRel.ppLabel132.Visible         := true;
     end;
     SerRel.AbreDiariasOcupacaoSexo(edtFDataEntDE.Date,edtFDataEntATE.Date,vFiltro);
     SomarColunasGridForn1;
   end;
 end;
end;

procedure TfrmDiariasOcupacao.CarregaCombo;
var
 vQry:TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := serviceDB.FCon;
 cbxPastoOrigem.Items.Clear;
 cbxPastoOrigem.Items.Add('Todos');
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM CURRAIS WHERE STATUS=1 AND ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   while not vQry.Eof do
   begin
     cbxPastoOrigem.Items.AddObject(vQry.FieldByName('CODIGO').AsString,TObject(vQry.FieldByName('ID').AsInteger));
     vQry.Next;
   end;
 end;
 cbxPastoOrigem.ItemIndex  :=0;
 vQry.Free;
end;

procedure TfrmDiariasOcupacao.FormShow(Sender: TObject);
begin
  vInsert :=0;
  CarregaCombo;
  cbxSexoF.Visible        := false;
  lblSexoF.Visible        := false;
  SerRel.qryTmpExtratoMovSexo.Close;
  SerRel.qryTmpExtratoMov.Close;
  TreeItemRelSexo.Visible := false;
  TabGrids.ActiveTab      := TabItem1;
end;

procedure TfrmDiariasOcupacao.imgCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmDiariasOcupacao.SomarColunasGridForn;
var
 vDataIni,vDataFim:string;
begin
 vDataIni := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString;
 vDataFim := FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date).QuotedString;
  with qryAux,qryAux.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('COUNT(DISTINCT TMP.ID_LOCAL) TotalLotes,');
    Add('SUM(TMP.SALDO_FINAL)TotalDiarias ,');
    Add('SUM(TMP.SALDO_FINAL)/COUNT(*) DiariasMedias');
    Add('FROM TMP_EXTRATO_ANIMAIS TMP');
    Add('JOIN CURRAIS C ON C.ID=ID_LOCAL');
    Add('WHERE SALDO_FINAL>0 AND DATA_DIA BETWEEN '+vDataIni+' AND '+vDataFim);
    Add('AND ID_FAZENDA='+serviceDB.vIdPropriedade);
    Add(vFiltro);
    Open;
    lblTotalDiarias.Text      := 'Total de Diárias: '+FieldByName('TotalDiarias').AsString;
    lblDiariasMedias.Text     := 'Média de Diárias: '+FieldByName('DiariasMedias').AsString;;
    lblCountLotes.Text        := 'Total Lotes: '+FieldByName('TotalLotes').AsString;
  end;
end;

procedure TfrmDiariasOcupacao.SomarColunasGridForn1;
var
 vDataIni,vDataFim:string;
 vDiariasMed,vDias:integer;
begin
 vDias    := trunc((edtFDataEntATE.Date-edtFDataEntDE.Date)+1);
 vDataIni := FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString;
 vDataFim := FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date).QuotedString;
  with qryAux,qryAux.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('SUM(TOTAL)TotalDiarias ,');
    Add('SUM(TOTAL)/COUNT(*) DiariasMedias,');
    Add('count(DISTINCT ID_LOCAL)TotalLotes');
    Add('FROM');
    Add('(SELECT');
    Add('ID_LOCAL,');
    Add('SUM(SALDO_FINAL) TOTAL,');
    Add('DATA_DIA,');
    Add('COUNT(DISTINCT ID_LOCAL) QTD');
    Add('FROM TMP_EXTRATO_ANIMAIS_SEXO TMP');
    Add('JOIN CURRAIS C ON C.ID=ID_LOCAL');
    Add('WHERE SALDO_FINAL>0 AND DATA_DIA BETWEEN '+vDataIni+' AND '+vDataFim);
    Add('AND ID_FAZENDA='+serviceDB.vIdPropriedade);
    Add(vFiltro);
    Add('GROUP BY DATA_DIA,ID_LOCAL)');
    Open;
    lblDiariasMedias.Text     := 'Média de Diárias: '+FieldByName('DiariasMedias').AsString;
    lblTotalDiarias.Text      := 'Total de Diárias: '+FieldByName('TotalDiarias').AsString;
    lblCountLotes.Text        := 'Total Lotes: '+FieldByName('TotalLotes').AsString;
  end;
end;

procedure TfrmDiariasOcupacao.TabGridsChange(Sender: TObject);
begin
  cbxSexoF.Visible           := TabGrids.ActiveTab =TabItem2;
  lblSexoF.Visible           := TabGrids.ActiveTab =TabItem2;
  TreeItemRelGeral.Visible   := TabGrids.ActiveTab =TabItem1;
  TreeItemRelSexo.Visible    := TabGrids.ActiveTab =TabItem2;
    vFiltro :='';
    if cbxPastoOrigem.ItemIndex>0 then
     vFiltro := ' AND C.CODIGO='+cbxPastoOrigem.Selected.Text.QuotedString;
    if TabGrids.TabIndex=1 then
    begin
     vFiltro :='';
     if cbxSexoF.ItemIndex>0 then
     begin
      if cbxSexoF.ItemIndex=1 then
      begin
       vFiltro := ' AND  TMP.SEXO=''M''';
       SerRel.ppLalblTotalFemeas.Visible := false;
       SerRel.ppLabel133.Visible         := false;

       SerRel.ppLalblTotalMacho.Visible := true;
       SerRel.ppLabel132.Visible        := true;
      end;
      if cbxSexoF.ItemIndex=2 then
      begin
       vFiltro := ' AND  TMP.SEXO=''F''';
       SerRel.ppLalblTotalMacho.Visible := false;
       SerRel.ppLabel132.Visible        := false;

       SerRel.ppLalblTotalFemeas.Visible:= true;
       SerRel.ppLabel133.Visible        := true;
      end;
     end
     else
     begin
       SerRel.ppLalblTotalMacho.Visible  := true;
       SerRel.ppLalblTotalFemeas.Visible := true;
       SerRel.ppLabel133.Visible         := true;
       SerRel.ppLabel132.Visible         := true;
     end;
     SerRel.AbreDiariasOcupacaoSexo(edtFDataEntDE.Date,edtFDataEntATE.Date,vFiltro);
     SomarColunasGridForn1;
    end
    else
    begin
      SerRel.AbreDiariasOcupacao(edtFDataEntDE.Date,edtFDataEntATE.Date,vFiltro);
      SomarColunasGridForn;
    end;
end;

procedure TfrmDiariasOcupacao.TreeItemEditarClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
 if TabGrids.TabIndex=0 then
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
 end
 else
 begin
   if SaveDialog1.Execute then
   begin
     csv:= tstringlist.create;
     for row:= 0 to StringGrid2.rowcount do
      begin
       s:= '';
       if row=0 then
       begin
         for col:= 0 to StringGrid2.ColumnCount-1 do
          s:= s + StringGrid2.Columns[col].Header + ';';
         csv.add(s)
       end
       else
       begin
         for col:= 0 to StringGrid2.ColumnCount-1 do
          s:= s + StringGrid2.Cells[col, row-1] + ';';
         csv.add(s)
       end;
      end;
     csv.savetofile(SaveDialog1.FileName);
     csv.free;
   end;
 end;
end;

procedure TfrmDiariasOcupacao.TreeItemRelGeralClick(Sender: TObject);
begin
  SerRel.pplblPeriodoGeral.Text := edtFDataEntDE.Text+' ate '+edtFDataEntATE.Text;
  SerRel.ppReldiarias.Print;
end;

procedure TfrmDiariasOcupacao.TreeItemRelSexoClick(Sender: TObject);
begin
 SerRel.ppLblPeriodoSexo.Text := edtFDataEntDE.Text+' ate '+edtFDataEntATE.Text;
 SerRel.AbreDiariasOcupacaoSexoSumario(edtFDataEntDE.Date,edtFDataEntATE.Date,vFiltro);
 SerRel.ppReldiariasSexo.Print;
end;

end.
