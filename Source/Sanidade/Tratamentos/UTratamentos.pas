unit UTratamentos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.DateTimeCtrls,FireDAC.Comp.Client,Winapi.Windows,
  FMX.TMSLiveGridDataBinding, FMX.TMSBaseControl, FMX.TMSGridCell,
  FMX.TMSGridOptions, FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSLiveGrid,
  FMX.GridExcelIO;

type
  TfrmTratamentoSani = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    GroupBox2: TGroupBox;
    edtFiltraAnimalCad: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    cbxLocalAtualFiltroCad: TComboBox;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    chkPeriodoProc: TCheckBox;
    btnFiltar: TSpeedButton;
    Image23: TImage;
    Layout1: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    StringGrid2: TStringGrid;
    Rectangle2: TRectangle;
    Layout5: TLayout;
    Rectangle3: TRectangle;
    Layout6: TLayout;
    Layout7: TLayout;
    Rectangle4: TRectangle;
    Layout9: TLayout;
    Rectangle5: TRectangle;
    Layout10: TLayout;
    Layout11: TLayout;
    Rectangle6: TRectangle;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    GridFarmacos: TStringGrid;
    Layout16: TLayout;
    Rectangle8: TRectangle;
    Layout17: TLayout;
    Label7: TLabel;
    cbxResponsavelAplicacao: TComboBox;
    Layout8: TLayout;
    Layout18: TLayout;
    Layout19: TLayout;
    Label5: TLabel;
    cbxTipoTratamento: TComboBox;
    Label8: TLabel;
    EdtDataTratamento: TDateEdit;
    Layout20: TLayout;
    ShadowEffect1: TShadowEffect;
    Rectangle9: TRectangle;
    Layout21: TLayout;
    Image3: TImage;
    Label9: TLabel;
    ShadowEffect2: TShadowEffect;
    Label12: TLabel;
    cbxLocalFiltro: TComboBox;
    StringColumn1: TStringColumn;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Label13: TLabel;
    lblTotalAnimais: TLabel;
    btnBuscaTratamentos: TSpeedButton;
    Image4: TImage;
    GroupBox4: TGroupBox;
    edtDataAteF: TDateEdit;
    Label14: TLabel;
    edtDataDeF: TDateEdit;
    Label15: TLabel;
    CheckPeriodoF: TCheckBox;
    GroupBox5: TGroupBox;
    Layout22: TLayout;
    rdFarmaco: TCheckBox;
    rdProtocolo: TCheckBox;
    EdtProtocoloFarmaco: TEdit;
    EditButton1: TEditButton;
    FloatColumn1: TFloatColumn;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToFieldNAME: TLinkFillControlToField;
    StringColumn2: TStringColumn;
    Layout23: TLayout;
    Rectangle10: TRectangle;
    Label6: TLabel;
    lblTotalReg: TLabel;
    Label16: TLabel;
    cbxFarmacoF: TComboBox;
    Label17: TLabel;
    cbxProtocoloF: TComboBox;
    Label18: TLabel;
    StringColumn3: TStringColumn;
    layImgAguarde: TLayout;
    Layout91: TLayout;
    imgAguarde: TImage;
    lblAguarde: TLabel;
    Label19: TLabel;
    cbxOrigemDados: TComboBox;
    layAlteraSanidade: TLayout;
    Rectangle11: TRectangle;
    Image30: TImage;
    Layout25: TLayout;
    lblTotalRegAplicado: TLabel;
    ToolBar1: TToolBar;
    Label21: TLabel;
    Rectangle12: TRectangle;
    Label22: TLabel;
    cbxProdutoAlterar: TComboBox;
    Rectangle13: TRectangle;
    Label23: TLabel;
    Layout26: TLayout;
    edtDoseAlterar: TEdit;
    Image8: TImage;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToFieldNOME: TLinkFillControlToField;
    Layout27: TLayout;
    btnConfirmaAlteracao: TRectangle;
    Layout28: TLayout;
    Image7: TImage;
    Label24: TLabel;
    Label20: TLabel;
    cbxMotivoTratamentoF: TComboBox;
    Layout24: TLayout;
    Rectangle14: TRectangle;
    Layout29: TLayout;
    Label25: TLabel;
    edtMotivo: TEdit;
    EditButton2: TEditButton;
    TreeViewRel: TTreeViewItem;
    TreeViewItem1: TTreeViewItem;
    Image6: TImage;
    TreeViewItem2: TTreeViewItem;
    Image9: TImage;
    Image10: TImage;
    edtChip: TEdit;
    Label26: TLabel;
    edtChipF: TEdit;
    Label27: TLabel;
    Column1: TColumn;
    Column2: TColumn;
    Column3: TColumn;
    layImportacao: TLayout;
    Layout30: TLayout;
    Rectangle15: TRectangle;
    Layout33: TLayout;
    Layout46: TLayout;
    Label44: TLabel;
    rdChip: TRadioButton;
    rdSisbov: TRadioButton;
    Layout49: TLayout;
    edtArquivo: TEdit;
    EditButton3: TEditButton;
    SaveDialog2: TSaveDialog;
    Layout47: TLayout;
    Rectangle16: TRectangle;
    Layout50: TLayout;
    Image22: TImage;
    Label45: TLabel;
    btnImportaPlanilha: TSpeedButton;
    Image21: TImage;
    TreeExportaExcel: TTreeViewItem;
    Image11: TImage;
    TMSFMXLiveGridBindSourceDB1: TTMSFMXLiveGrid;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    TMSFMXGridExcelIO1: TTMSFMXGridExcelIO;
    SaveDialog1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure btnBuscaTratamentosClick(Sender: TObject);
    procedure rdFarmacoChange(Sender: TObject);
    procedure rdProtocoloChange(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure cbxResponsavelAplicacaoChange(Sender: TObject);
    procedure CheckPeriodoFChange(Sender: TObject);
    procedure chkPeriodoProcChange(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure btnConfirmaAlteracaoClick(Sender: TObject);
    procedure cbxProdutoAlterarChange(Sender: TObject);
    procedure edtDoseAlterarKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EditButton2Click(Sender: TObject);
    procedure TreeViewRelClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure btnImportaPlanilhaClick(Sender: TObject);
    procedure TreeExportaExcelClick(Sender: TObject);
  private
    procedure CarregaCombo(idPropriedade:string);
    procedure LimpaCampos;
  public
    vIdProtocolo,vIdFarmaco,vIdResponsavel,vIdFarmacoAlterar,
    vIdMotivo,vImportacao:string;
    function GetStrNumber(const S: string): string;
  end;

var
  frmTratamentoSani: TfrmTratamentoSani;

implementation

{$R *.fmx}

uses UServiceDB, UProtocolo, UFarmacos, UMsgDlg, UMotivoAplicacao, ServiceRel;

procedure TfrmTratamentoSani.btnConfirmaAlteracaoClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente Alterar esse(s) '+ lblTotalReg.Text +' registros?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  var
   i   : integer;
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      try
       for i := 0 to StringGrid1.RowCount-1 do
       begin
         serviceDB.AlterarTratamentos(StringGrid1.Cells[0,i],
          vIdFarmacoAlterar,
          StringReplace(edtDoseAlterar.Text,',','.',[rfReplaceAll]));
       end;
       myShowMessage('Registro excluido com Sucesso!',false);
       btnBuscaTratamentosClick(Sender);
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
    end;
  end);
end;

procedure TfrmTratamentoSani.btnConfirmaClick(Sender: TObject);
var
 x:integer;
 vDoseCalculada,DosePV,PesoDose,UltimoPeso :Double;
begin
 if EdtDataTratamento.Date>date then
 begin
   MyShowMessage('A data da Aplicação não pode ser futura!!',false);
   Exit;
 end;
 if edtMotivo.Text.Length=0 then
 begin
   MyShowMessage('Informe o motivo do tratamento',false);
   Exit;
 end;
 if cbxTipoTratamento.ItemIndex =-1 then
 begin
   MyShowMessage('Selecione o tipo de Tratamento!!',false);
   Exit;
 end;
 if EdtProtocoloFarmaco.Text.Length=0 then
 begin
   MyShowMessage('Informe o Farmaco ou Protocolo',false);
   Exit;
 end;
 if cbxResponsavelAplicacao.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Responsavel pela aplicação!!',false);
   Exit;
 end;
 for x := 0 to GridFarmacos.RowCount-1 do
 begin
   if (GridFarmacos.Cells[1,x]='0') and (GridFarmacos.Cells[3,x]='0') then
   begin
    MyShowMessage('Existe Farmaco com a dose zerada'+#13+
    'Corrija antes de aplicar!',false);
    Exit;
    Break;
   end;
 end;

  TThread.CreateAnonymousThread(
  procedure
   var
    i:integer;
  begin
    TThread.Synchronize( nil,
    procedure
    begin
      layImgAguarde.Visible :=true;
    end);
    serviceDB.TableAnimaisTratamento.first;
     try
       while NOT serviceDB.TableAnimaisTratamento.Eof do
       begin
         for I := 0 to GridFarmacos.RowCount-1 do
         begin
          serviceDB.TableTratamentosInsert.Close;
          serviceDB.TableTratamentosInsert.Open;
          serviceDB.TableTratamentosInsert.Insert;

          serviceDB.TableTratamentosInsertID_ANIMAL.AsString                   := serviceDB.TableAnimaisTratamentoID.AsString;
          serviceDB.TableTratamentosInsertID_FARMACO.AsString                  := GridFarmacos.Cells[2,i];
          if vIdProtocolo.Length>0 then
           serviceDB.TableTratamentosInsertID_PROTOCOLO.AsString               := vIdProtocolo;

          if GridFarmacos.Cells[6,i]='0' then
            serviceDB.TableTratamentosInsertDOSE_ML.AsString                     := GridFarmacos.Cells[1,i]
          else
          begin
            if (GridFarmacos.Cells[5,i].Length=0) or
             (GridFarmacos.Cells[5,i]='0')then
            begin
               myShowMessage('Peso da dose deve ser maior que zero!',false);
               Exit;
            end
            else
             PesoDose := strToFloat(GridFarmacos.Cells[5,i]);

            if (serviceDB.TableAnimaisTratamentoULTIMO_PESO_C.AsString.Length=0)
             or(serviceDB.TableAnimaisTratamentoULTIMO_PESO_C.AsFloat<=0) then
            begin
               myShowMessage('Peso do animal deve ser maior que zero!',false);
               Exit;
            end
            else
             UltimoPeso := serviceDB.TableAnimaisTratamentoULTIMO_PESO_C.AsFloat;

            if (GridFarmacos.Cells[3,i].Length=0) or
             (GridFarmacos.Cells[3,i]='0')then
            begin
               myShowMessage('Dose por Peso deve ser maior que zero!',false);
               Exit;
            end
            else
             DosePV := strToFloat(GridFarmacos.Cells[3,i]);

            vDoseCalculada :=
              (UltimoPeso/PesoDose)*DosePV ;
            serviceDB.TableTratamentosInsertDOSE_ML.AsFloat := vDoseCalculada;
          end;


          serviceDB.TableTratamentosInsertID_PROPRIEDAE.AsString               := serviceDB.vIdPropriedade;
          serviceDB.TableTratamentosInsertID_LOCAL_ATUAL.AsString              := serviceDB.TableAnimaisTratamentoID_LOCAL.AsString;
          serviceDB.TableTratamentosInsertDATA_APLICACAO.AsDateTime            := EdtDataTratamento.Date;
          serviceDB.TableTratamentosInsertTIPO_APLICACAO.AsInteger             := 2;
          serviceDB.TableTratamentosInsertID_RESPONSAVEL_APLICACAO.AsString    := vIdResponsavel;
          serviceDB.TableTratamentosInsertID_RESPONSAVEL_APLI_DIREITO.AsString := vIdResponsavel;
          serviceDB.TableTratamentosInsertID_USUARIO.AsString                  := serviceDB.vIdUserLogado;
          serviceDB.TableTratamentosInsertTIPO_TRATAMENTO.AsInteger            := cbxTipoTratamento.ItemIndex+1;
          serviceDB.TableTratamentosInsertCARENCIA_DIAS.AsString               := GridFarmacos.Cells[4,i];
          serviceDB.TableTratamentosInsertID_MOTIVO_APLICACAO.AsString         := vIdMotivo;
          try
           serviceDB.TableTratamentosInsert.ApplyUpdates(0);
          except
           on E : Exception do
             TThread.Synchronize( nil,
             procedure
             begin
               begin
                myShowMessage('Erro ao Incluir Tratamento :'+E.Message,false);
                layImgAguarde.Visible :=false;
                Exit;
               end;
             end);
          end;
         end;
         serviceDB.TableAnimaisTratamento.Next;
       end;
       TThread.Synchronize( nil,
       procedure
       begin
         layImgAguarde.Visible :=false;
         myShowMessage('Tratamento Realizado com Sucesso!',false);
         LimpaCampos;
       end);
     except
      on E : Exception do
       TThread.Synchronize( nil,
       procedure
       begin
         layImgAguarde.Visible :=false;
         myShowMessage('Erro ao Incluir Tratamento :'+E.Message,false);
       end);
     end;
  end
  ).Start;
end;

procedure TfrmTratamentoSani.btnFiltarClick(Sender: TObject);
var
 vFiltro:string;
begin
 vImportacao := 'N';
 vFiltro :='';
 if edtFiltraAnimalCad.Text.Length>0 then
  vFiltro := vFiltro+'AND A.IDENTIFICACAO_2='+edtFiltraAnimalCad.Text.QuotedString;

 if edtChip.Text.Length>0 then
  vFiltro := vFiltro+'AND A.IDENTIFICACAO_1='+edtChip.Text.QuotedString;


 if cbxLocalAtualFiltroCad.ItemIndex>0 then
  vFiltro := vFiltro+'AND CU.CODIGO='+cbxLocalAtualFiltroCad.Selected.Text.QuotedString;

 if chkPeriodoProc.IsChecked then
 begin
   vFiltro := vFiltro+'AND A.DATA_PROC between '+FormatDateTime('mm/dd/yyyy',edtFDataEntDE.Date).QuotedString+' and '+
   FormatDateTime('mm/dd/yyyy',edtFDataEntATE.Date).QuotedString;
 end;
 serviceDB.AbreAnimalSanidadeTratamento(vFiltro,vImportacao);
 lblTotalAnimais.Text := intToStr(StringGrid2.RowCount);
end;

procedure TfrmTratamentoSani.btnImportaPlanilhaClick(Sender: TObject);
begin
 layImportacao.Visible     := TRUE;
end;

procedure TfrmTratamentoSani.CarregaCombo(idPropriedade: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 cbxLocalAtualFiltroCad.Items.Clear;
 cbxLocalAtualFiltroCad.Items.Add('Todos');
 cbxLocalFiltro.Items.Clear;
 cbxLocalFiltro.Items.Add('Todos');

 cbxFarmacoF.Items.Clear;
 cbxFarmacoF.Items.Add('Todos');

 cbxProtocoloF.Items.Clear;
 cbxProtocoloF.Items.Add('Todos');

 cbxMotivoTratamentoF.Items.Clear;
 cbxMotivoTratamentoF.Items.Add('Todos');

 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM protocolo_sanitario');
   Add('where status=1');
   Open;
   while not vQryAux.Eof do
   begin
     cbxProtocoloF.Items.Add(vQryAux.FieldByName('Nome').AsString);
     vQryAux.Next;
   end;

   Clear;
   Add('select * from farmaco');
   Add('where status=1');
   Open;
   while not vQryAux.Eof do
   begin
     cbxFarmacoF.Items.Add(vQryAux.FieldByName('Nome').AsString);
     vQryAux.Next;
   end;

   Clear;
   Add('select * from CURRAIS');
   Add('where status=1 and ID_PROPRIEDADE='+serviceDB.vIdPropriedade);
   Open;
   while not vQryAux.Eof do
   begin
     cbxLocalAtualFiltroCad.Items.Add(vQryAux.FieldByName('codigo').AsString);
     cbxLocalFiltro.Items.Add(vQryAux.FieldByName('codigo').AsString);
     vQryAux.Next;
   end;

   Clear;
   Add('select * from AUX_MOTIVO_APLICACAO');
   Add('where status=1');
   Open;
   while not vQryAux.Eof do
   begin
     cbxMotivoTratamentoF.Items.Add(vQryAux.FieldByName('MOTIVO').AsString);
     vQryAux.Next;
   end;
   cbxMotivoTratamentoF.ItemIndex    := 0;
   cbxLocalAtualFiltroCad.ItemIndex  := 0;
   cbxLocalFiltro.ItemIndex          := 0;
   cbxFarmacoF.ItemIndex             := 0;
   cbxProtocoloF.ItemIndex           := 0;
 end;
end;

procedure TfrmTratamentoSani.cbxProdutoAlterarChange(Sender: TObject);
begin
 if cbxProdutoAlterar.ItemIndex>-1 then
   vIdFarmacoAlterar := LinkFillControlToFieldNOME.BindList.GetSelectedValue.AsString
 else
   vIdFarmacoAlterar :='';
end;

procedure TfrmTratamentoSani.cbxResponsavelAplicacaoChange(Sender: TObject);
begin
 if cbxResponsavelAplicacao.ItemIndex>-1 then
  vIdResponsavel := LinkFillControlToFieldNAME.BindList.GetSelectedValue.AsString;
end;

procedure TfrmTratamentoSani.CheckPeriodoFChange(Sender: TObject);
begin
  edtDataDeF.Enabled   := CheckPeriodoF.IsChecked;
  edtDataAteF.Enabled  := CheckPeriodoF.IsChecked;
end;

procedure TfrmTratamentoSani.chkPeriodoProcChange(Sender: TObject);
begin
  edtFDataEntATE.Enabled := chkPeriodoProc.IsChecked;
  edtFDataEntDE.Enabled  := chkPeriodoProc.IsChecked;
end;

procedure TfrmTratamentoSani.EditButton1Click(Sender: TObject);
var
 i:integer;
begin
  if(rdFarmaco.IsChecked=false)and(rdProtocolo.IsChecked=false)then
  begin
    MyShowMessage('Selecione Protocolo ou Farmaco antes de Buscar!',false);
    Exit;
  end;

  if rdFarmaco.IsChecked then
  begin
   frmCadFarmaco := TfrmCadFarmaco.Create(Self);
   try
     frmCadFarmaco.ShowModal;
   finally
    if frmCadFarmaco.vFarmacoSelecionado=1 then
    begin
     vIdFarmaco               := serviceDB.TableFarmacosID.AsString;
     EdtProtocoloFarmaco.Text := serviceDB.TableFarmacosNOME.AsString;
     GridFarmacos.RowCount    := 1;
     GridFarmacos.Cells[0,0]  := serviceDB.TableFarmacosNOME.AsString;
     GridFarmacos.Cells[1,0]  := serviceDB.TableFarmacosML_DOSE_FIXA.AsString;
     GridFarmacos.Cells[2,0]  := serviceDB.TableFarmacosID.AsString;
     GridFarmacos.Cells[3,0]  := serviceDB.TableFarmacosML_DOSE_PV.AsString;
     GridFarmacos.Cells[5,0]  := serviceDB.TableFarmacosKG_DOSE_PV.AsString;
     GridFarmacos.Cells[6,0]  := serviceDB.TableFarmacosTIPO_APICACAO.AsString;
     GridFarmacos.Cells[4,0]  := serviceDB.TableFarmacosCARENCIA_DIA.AsString;
    end;
    frmCadFarmaco.Free;
   end;
  end;

  if rdProtocolo.IsChecked then
  begin
   frmCadProtocolo := TfrmCadProtocolo.Create(Self);
   try
     frmCadProtocolo.ShowModal;
   finally
     if frmCadProtocolo.vProtocoloSelecionado =1 then
     begin
      vIdProtocolo               := serviceDB.TableProtocoloID.AsString;
      EdtProtocoloFarmaco.Text   := serviceDB.TableProtocoloNOME.AsString;
      GridFarmacos.RowCount      := serviceDB.TableProtocoloFarmacos.RecordCount;
      serviceDB.TableProtocoloFarmacos.First;
      I:=0;
      while not serviceDB.TableProtocoloFarmacos.Eof do
      begin
        GridFarmacos.Cells[0,i]  := serviceDB.TableProtocoloFarmacosFARMACO.AsString;
        GridFarmacos.Cells[1,i]  := serviceDB.TableProtocoloFarmacosDOSE_FIXA_ML.AsString;
        GridFarmacos.Cells[2,i]  := serviceDB.TableProtocoloFarmacosID_FARMACO.AsString;
        GridFarmacos.Cells[3,i]  := serviceDB.TableProtocoloFarmacosDOSE_PESO_ML.AsString;
        GridFarmacos.Cells[5,i]  := serviceDB.TableProtocoloFarmacosDOSE_PESO_KG.AsString;
        GridFarmacos.Cells[6,i]  := serviceDB.TableProtocoloFarmacosTIPO_DOSAGEM.AsString;
        GridFarmacos.Cells[4,i]  := serviceDB.TableProtocoloFarmacosCARENCIA_DIAS.AsString;
        inc(i);
        serviceDB.TableProtocoloFarmacos.Next;
      end;
     end;
    frmCadProtocolo.Free;
   end;
  end;
end;

procedure TfrmTratamentoSani.EditButton2Click(Sender: TObject);
begin
 frmAuxMotivoAplicacao := TfrmAuxMotivoAplicacao.Create(nil);
 try
   frmAuxMotivoAplicacao.ShowModal;
 finally
   edtMotivo.Text           := serviceDB.TableAuxMotivoAplicacaoMOTIVO.AsString;
   vIdMotivo                := serviceDB.TableAuxMotivoAplicacaoID.AsString;
 end;
 frmAuxMotivoAplicacao.Release;
end;

procedure TfrmTratamentoSani.EditButton3Click(Sender: TObject);
var
 Linhas, Colunas:TStringList;
 i,j:integer;
 vQryAux : TFDQuery;
 chip : string;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;

 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM TMP_ANIMAL');
   ExecSQL;
 end;

 Linhas := TStringList.Create;
 Colunas := TStringList.Create;
 try
   if SaveDialog2.Execute then
    Linhas.LoadFromFile(SaveDialog2.FileName); //Carregando arquivo
   for i := 0 to Pred(Linhas.Count) do
   begin
     {Transformando os dados das colunas em Linhas}
     Colunas.text := Linhas.Strings[i];
     if i>0 then
     begin
       chip := GetStrNumber(Colunas.text);
       for j := 0 to Pred(Colunas.Count) do
       begin
         if (Colunas.text.Length>0) then
           begin
             with vQryAux,vQryAux.SQL do
             begin
               Clear;
               Add('INSERT INTO TMP_ANIMAL(');
               if rdChip.IsChecked then
                Add('IDENTIFICACAO_1');
               if rdSisbov.IsChecked then
                Add('IDENTIFICACAO_2');
               Add(')VALUES(');
               Add(':SISBOV');
               Add(')');
               ParamByName('SISBOV').AsString      := chip;
               try
                ExecSQL;
               except
                 on e : Exception do
                   ShowMessage('Erro ao Atualizar Configuracao: '+e.Message)
               end
             end;
           end;
       end;
     end;
   end;
    if j>0 then
    begin
      layImportacao.Visible := false;
       MyShowMessage('Dados Importados com Sucesso!'+#13+
        ' Os animais encontrados no arquivos serão filtrados no Grid',false);
      vImportacao := 'S';
      serviceDB.AbreAnimalSanidadeTratamento('',vImportacao);
      lblTotalAnimais.Text := intToStr(StringGrid2.RowCount);
    end;

   finally
    Linhas.Free;
    Colunas.Free;
 end;
 vQryAux.Free;
end;

procedure TfrmTratamentoSani.edtDoseAlterarKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
   KeyChar := #0;
end;

procedure TfrmTratamentoSani.FormShow(Sender: TObject);
var
 vFiltro:string;
begin
  edtDataDeF.Date := Date-30;
  layAlteraSanidade.Visible := false;
  layImportacao.Visible     := false;
  vFiltro :='AND AN.DATA_APLICACAO between '+FormatDateTime('mm/dd/yyyy',edtDataDeF.Date).QuotedString+' and '+
   FormatDateTime('mm/dd/yyyy',edtDataAteF.Date).QuotedString;
  serviceDB.AbreAnimalSanidade(vFiltro);
  lblTotalReg.Text := intToStr(TMSFMXLiveGridBindSourceDB1.RowCount-1);
  CarregaCombo(serviceDB.vIdPropriedade);
  serviceDB.AbreUsuariosFazenda;
  layImgAguarde.Visible :=false;
end;

function TfrmTratamentoSani.GetStrNumber(const S: string): string;
var
  vText : PChar;
begin
  vText := PChar(S);
  Result := '';

  while (vText^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(vText^, ['0'..'9']) then
    {$ELSE}
    if vText^ in ['0'..'9'] then
    {$ENDIF}
      Result := Result + vText^;

    Inc(vText);
  end;
end;

procedure TfrmTratamentoSani.Image8Click(Sender: TObject);
begin
  cbxProdutoAlterar.ItemIndex := -1;
  edtDoseAlterar.Text         := '';
  layAlteraSanidade.Visible   := false;
end;

procedure TfrmTratamentoSani.LimpaCampos;
begin
 cbxTipoTratamento.ItemIndex       :=-1;
 rdFarmaco.IsChecked               := false;
 rdProtocolo.IsChecked             := false;
 EdtProtocoloFarmaco.Text          :='';
 GridFarmacos.RowCount             :=0;
 cbxResponsavelAplicacao.ItemIndex :=-1;
end;

procedure TfrmTratamentoSani.rdFarmacoChange(Sender: TObject);
begin
  if rdProtocolo.IsChecked then
  begin
    rdProtocolo.IsChecked    := false;
    EdtProtocoloFarmaco.Text :='';
    GridFarmacos.RowCount    :=0;
  end;
end;

procedure TfrmTratamentoSani.rdProtocoloChange(Sender: TObject);
begin
 if rdFarmaco.IsChecked then
 begin
  rdFarmaco.IsChecked      := false;
  EdtProtocoloFarmaco.Text :='';
  GridFarmacos.RowCount    :=0;
 end;
end;

procedure TfrmTratamentoSani.btnBuscaTratamentosClick(Sender: TObject);
var
 vFiltro,vOrigemDados:string;
begin
 vFiltro :='';
 if edtFiltroName.Text.Length>0 then
  vFiltro := vFiltro+'AND A.IDENTIFICACAO_2='+edtFiltroName.Text.QuotedString;

 if edtChipF.Text.Length>0 then
  vFiltro := vFiltro+'AND A.IDENTIFICACAO_1='+edtChipF.Text.QuotedString;

 if cbxLocalFiltro.ItemIndex>0 then
  vFiltro := vFiltro+'AND CU.CODIGO='+cbxLocalFiltro.Selected.Text.QuotedString;

 if cbxProtocoloF.ItemIndex>0 then
  vFiltro := vFiltro+'AND pr.nome='+cbxProtocoloF.Selected.Text.QuotedString;

 if cbxFarmacoF.ItemIndex>0 then
  vFiltro := vFiltro+'AND fa.nome='+cbxFarmacoF.Selected.Text.QuotedString;

  if cbxMotivoTratamentoF.ItemIndex>0 then
  vFiltro := vFiltro+'AND axm.MOTIVO='+cbxMotivoTratamentoF.Selected.Text.QuotedString;

 if cbxOrigemDados.ItemIndex>0 then
 begin
   if cbxOrigemDados.ItemIndex=1 then
    vFiltro := vFiltro+'AND an.ORIGEM_DADOS=0';
   if cbxOrigemDados.ItemIndex=2 then
    vFiltro := vFiltro+'AND an.ORIGEM_DADOS=1';
 end;

 if CheckPeriodoF.IsChecked then
 begin
   vFiltro := vFiltro+'AND AN.DATA_APLICACAO between '+FormatDateTime('mm/dd/yyyy',edtDataDeF.Date).QuotedString+' and '+
   FormatDateTime('mm/dd/yyyy',edtDataAteF.Date).QuotedString;
 end;
 serviceDB.AbreAnimalSanidade(vFiltro);
 lblTotalReg.Text := intToStr(TMSFMXLiveGridBindSourceDB1.RowCount-1);
end;

procedure TfrmTratamentoSani.TreeExportaExcelClick(Sender: TObject);
var
 Path :string;
begin
 TMSFMXGridExcelIO1.Options.ExportCellProperties := true;
 TMSFMXGridExcelIO1.Options.ExportOverwrite := omAlways;
 TMSFMXGridExcelIO1.Options.ExportImages := true;
 if SaveDialog1.Execute then
 begin
  Path := SaveDialog1.FileName;
  TMSFMXGridExcelIO1.XLSExport(Path);
  MyShowMessage('Arquivo gerado com sucesso!',false);
 end;

end;

procedure TfrmTratamentoSani.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.TableFarmacos.Close;
  serviceDB.TableFarmacos.Open;
  layAlteraSanidade.Visible := true;
  lblTotalRegAplicado.Text  := 'Total de Registros Filtrados:'+lblTotalReg.Text;
end;

procedure TfrmTratamentoSani.TreeItemExcluirClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente excluir esses '+ lblTotalReg.Text +' registros?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  var
   i   : integer;
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      try
       for i := 0 to StringGrid1.RowCount-1 do
       begin
         serviceDB.ExcluirTratamentos(StringGrid1.Cells[0,i]);
       end;
       myShowMessage('Registro excluido com Sucesso!',false);
       btnBuscaTratamentosClick(Sender);
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
    end;
  end);

end;

procedure TfrmTratamentoSani.TreeViewItem1Click(Sender: TObject);
begin
 if strToInt(lblTotalReg.Text)=0 then
 begin
  MyShowMessage('Filtre os dados antes de gerar o relatório!',false);
  Exit;
 end
 else
 begin
  SerRel.ppReportSanidadeAnalitico.Print;
 end;
end;

procedure TfrmTratamentoSani.TreeViewRelClick(Sender: TObject);
begin
 if TreeViewRel.IsExpanded then
  TreeViewRel.IsExpanded := false
 else
  TreeViewRel.IsExpanded := true;
end;

end.
