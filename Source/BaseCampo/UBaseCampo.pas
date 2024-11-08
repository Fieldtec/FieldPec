unit UBaseCampo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.ListBox, FMX.DateTimeCtrls,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,Shellapi,
  Windows;

type
  TfrmBaseCampo = class(TfrmCadPadrao)
    Layout5: TLayout;
    Rectangle2Morte: TRectangle;
    Layout6Morte: TLayout;
    Layout9Morte: TLayout;
    Label4Morte: TLabel;
    cbxOperacao: TComboBox;
    Label3: TLabel;
    edtDataInicio: TDateEdit;
    layBrincosBaseCampo: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Label4: TLabel;
    Label5: TLabel;
    edtSISBOVIni: TEdit;
    edtSISBOVFim: TEdit;
    btnAddSequencia: TRectangle;
    Layout1: TLayout;
    Image3: TImage;
    Label6: TLabel;
    gridBrincos: TStringGrid;
    layGTA: TLayout;
    Rectangle3: TRectangle;
    Layout7: TLayout;
    Layout8: TLayout;
    Rectangle4: TRectangle;
    Layout9: TLayout;
    Image4: TImage;
    Label9: TLabel;
    GridGTAS: TStringGrid;
    Label7: TLabel;
    edtGTA: TEdit;
    btnBuscaGTA: TEditButton;
    ClearEditButton1: TClearEditButton;
    edtProdutorDestino: TEdit;
    edtProdutorOrigem: TEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtTotalAnimais: TEdit;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    StringColumn4: TStringColumn;
    StringColumn5: TStringColumn;
    StringColumn6: TStringColumn;
    StringColumn8: TStringColumn;
    StringColumn9: TStringColumn;
    StringColumn10: TStringColumn;
    Layout10: TLayout;
    Layout11: TLayout;
    lblProdutorDestino: TLabel;
    edtProdutorDestinoBase: TEdit;
    edtBuscaProdutorDestino: TEditButton;
    ClearEditButton4: TClearEditButton;
    btnConfirmaOp: TRectangle;
    Layout6: TLayout;
    Image6: TImage;
    Label12: TLabel;
    StringColumn7: TStringColumn;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure btnBuscaGTAClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure edtSISBOVIniExit(Sender: TObject);
    procedure edtBuscaProdutorDestinoClick(Sender: TObject);
    procedure edtSISBOVFimExit(Sender: TObject);
    procedure btnConfirmaOpClick(Sender: TObject);
    procedure btnAddSequenciaClick(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxOperacaoChange(Sender: TObject);
  private
    Procedure FileCopy( Const sourcefilename,targetfilename,NumeroBase:String);
    procedure AtualizaFieldConf(PathConfig,PathBDCampo:string);
  public
    vIdGTA,vProdutorDestino,vUFGta,vSerieGTA:string;
    vManejoInicio,vManejoFim:integer;
  end;

var
  frmBaseCampo: TfrmBaseCampo;

implementation

{$R *.fmx}

uses UCadGTA, ServiceDB2, UServiceDB, UPrincipal, UServiceBaseCampo,
  UPropriedadeParceira;

procedure TfrmBaseCampo.AtualizaFieldConf(PathConfig,PathBDCampo: string);
var
 arquivo:TStringList;
 I:integer;
begin
   arquivo := TStringList.Create;
    try
      arquivo.LoadFromFile(PathConfig);
      for I := 0 to arquivo.Count -1 do
      begin
        if Copy(arquivo[i],0,9) = 'basecampo' then
        begin
         arquivo.Delete(I);
         arquivo.Insert(I,'basecampo  = '+PathBDCampo);
         break;
        end;
      end;
      arquivo.SaveToFile(PathConfig);
   finally
      arquivo.Free;
   end;
end;

procedure TfrmBaseCampo.btnAddSequenciaClick(Sender: TObject);
var
 vQtdBrinco:string;
begin
 if(edtSISBOVIni.Text.Length=0)OR(edtSISBOVFim.Text.Length=0) then
 begin
   MyShowMessage('Informe o SISBOV Inicio e o SISBOV Fim',false);
   Exit;
 end;
 vQtdBrinco := DMBaseCampo.VerificaSequenciaBrinco(vProdutorDestino,intToStr(vManejoInicio),intToStr(vManejoFim));
 if vQtdBrinco='0' then
 begin
   MyShowMessage('Nenhum Brinco disponivel no estoque!',false);
   Exit;
 end;
 gridBrincos.RowCount                   := gridBrincos.RowCount+1;
 gridBrincos.Cells[0,gridBrincos.RowCount-1] := edtSISBOVIni.Text;
 gridBrincos.Cells[1,gridBrincos.RowCount-1] := edtSISBOVFim.Text;
 gridBrincos.Cells[2,gridBrincos.RowCount-1] := vQtdBrinco;
end;

procedure TfrmBaseCampo.btnBuscaGTAClick(Sender: TObject);
begin
 edtProdutorOrigem.Text     := '';
 edtProdutorDestino.Text    := '';
 serviceDB.AbreGTAEntradaGrupo(serviceDB.vIdPropriedade);
 frmCadGTA := TfrmCadGTA.Create(nil);
 try
  frmCadGTA.ShowModal;
 finally
  if(serviceDB.TableGTATOTAL_GTA.AsInteger-serviceDB.TableGTATOTAL_BRINCADOS.AsInteger)<=0 then
  begin
    MyShowMessage('GTA deve ter saldo maior que zero!',false);
  end
  else
  begin
    edtTotalAnimais.Text       := intToStr(serviceDB.TableGTATOTAL_GTA.AsInteger-serviceDB.TableGTATOTAL_BRINCADOS.AsInteger);
    vIdGTA                     := serviceDB.TableGTAID.AsString;
    edtGTA.text                := serviceDB.TableGTANUMERO.AsString;
    edtProdutorOrigem.text     := serviceDB.TableGTANOME_2.AsString;
    edtProdutorDestino.text    := serviceDB.TableGTANOME_3.AsString;
    vUFGta                     := serviceDB.TableGTAUF.AsString;
    vSerieGTA                  := serviceDB.TableGTASERIE.AsString;
    frmCadGTA.Free;
  end;
 end;
end;

procedure TfrmBaseCampo.btnConfirmaClick(Sender: TObject);
var
 vIdBaseCampo,caminho:string;
 i:integer;
begin
  if cbxOperacao.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o tipo de Operação!',false);
    Exit;
  end;
  caminho := frmPrincipal.vPath+'BaseCampo\';
  if not DirectoryExists(Caminho) then
   CreateDir(Caminho);

  case cbxOperacao.ItemIndex of
   0:begin
       DMBaseCampo.BaseCampoID_OPERACAO.AsInteger     :=1;
       DMBaseCampo.BaseCampoID_USUARIO.AsString       :=serviceDB.vIdUserLogado;
       DMBaseCampo.BaseCampoID_PROPRIEDADE.AsString   :=serviceDB.vIdPropriedade;
       DMBaseCampo.BaseCampoDATA_CRIACAO.AsDateTime   :=edtDataInicio.DateTime;
       try
        DMBaseCampo.BaseCampo.ApplyUpdates(-1);
        vIdBaseCampo      := DMBaseCampo.RetornaMaxIdBaseCampo;
        FileCopy(serviceDB.vPathBD,Caminho,vIdBaseCampo);
        DMBaseCampo.AtualizaConfiBaseCampo(vIdBaseCampo,'1',serviceDB.vIdPropriedade);
        MyShowMessage('Base Gerada com Sucesso!',false);
        DMBaseCampo.AbreBaseCampo('');
        MudarAba(tbiMnu,sender);
       except
        on E : Exception do
         ShowMessage('Erro ao Gerar Base Campo: '+E.Message);
       end;
     end;
    1:begin //Novos Animais
        if serviceDB.vRastreada='1' then //Rastreada
        begin
          if gridBrincos.RowCount=0 then
          begin
            MyShowMessage('Informe pelo menos uma Sequencia de Brincos!',false);
            Exit;
          end;
          if GridGTAS.RowCount=0 then
          begin
            MyShowMessage('Informe pelo menos uma GTA!',false);
            Exit;
          end;
          DMBaseCampo.BaseCampoID_OPERACAO.AsInteger     :=2;
          DMBaseCampo.BaseCampoID_USUARIO.AsString       :=serviceDB.vIdUserLogado;
          DMBaseCampo.BaseCampoID_PROPRIEDADE.AsString   :=serviceDB.vIdPropriedade;
          DMBaseCampo.BaseCampoDATA_CRIACAO.AsDateTime   :=edtDataInicio.DateTime;
          try
           DMBaseCampo.BaseCampo.ApplyUpdates(-1);
           vIdBaseCampo :=DMBaseCampo.RetornaMaxIdBaseCampo;
           for I := 0 to gridBrincos.RowCount-1 do
           begin
            if gridBrincos.Cells[0,I].Length>0 then
            begin
              DMBaseCampo.DetBaseCampoBrincos.Close;
              DMBaseCampo.DetBaseCampoBrincos.Open;
              DMBaseCampo.DetBaseCampoBrincos.Insert;
              DMBaseCampo.DetBaseCampoBrincosID_BASE_CAMPO.AsString  :=vIdBaseCampo;
              DMBaseCampo.DetBaseCampoBrincosSISBOV_INICIAL.AsString :=gridBrincos.Cells[0,I];
              DMBaseCampo.DetBaseCampoBrincosSISBOV_FINAL.AsString   :=gridBrincos.Cells[1,I];
              DMBaseCampo.DetBaseCampoBrincos.ApplyUpdates(-1);
              DMBaseCampo.AtualizaBrincosBaseCampo(gridBrincos.Cells[0,I],gridBrincos.Cells[1,I],vProdutorDestino,vIdBaseCampo);
            end;
           end;
           for I := 0 to GridGTAS.RowCount-1 do
           begin
            if GridGTAS.Cells[6,I].Length>0 then
            begin
             DMBaseCampo.DetBaseCampoGTA.Close;
             DMBaseCampo.DetBaseCampoGTA.Open;
             DMBaseCampo.DetBaseCampoGTA.Insert;
             DMBaseCampo.DetBaseCampoGTAID_BASE_CAMPO.AsString      :=vIdBaseCampo;
             DMBaseCampo.DetBaseCampoGTAID_GTA.AsString             :=GridGTAS.Cells[6,I];
             DMBaseCampo.DetBaseCampoGTA.ApplyUpdates(-1);
             DMBaseCampo.AtualizaGTABaseCampo(vIdBaseCampo, GridGTAS.Cells[6,I]);
            end;
           end;
           FileCopy(serviceDB.vPathBD,Caminho,vIdBaseCampo);
           DMBaseCampo.AtualizaConfiBaseCampo(vIdBaseCampo,'2',serviceDB.vIdPropriedade);
           MyShowMessage('Base Gerada com Sucesso!',false);
           DMBaseCampo.AbreBaseCampo('');
           MudarAba(tbiMnu,sender);
          except
           on E : Exception do
            ShowMessage('Erro ao Gerar Base Campo: '+E.Message);
          end;
        end
        else//Nao rastreada
        begin
          DMBaseCampo.BaseCampoID_OPERACAO.AsInteger     :=2;
          DMBaseCampo.BaseCampoID_USUARIO.AsString       :=serviceDB.vIdUserLogado;
          DMBaseCampo.BaseCampoID_PROPRIEDADE.AsString   :=serviceDB.vIdPropriedade;
          DMBaseCampo.BaseCampoDATA_CRIACAO.AsDateTime   :=edtDataInicio.DateTime;
          try
           DMBaseCampo.BaseCampo.ApplyUpdates(-1);
           vIdBaseCampo :=DMBaseCampo.RetornaMaxIdBaseCampo;
           for I := 0 to gridBrincos.RowCount-1 do
           begin
            if gridBrincos.Cells[0,I].Length>0 then
            begin
              DMBaseCampo.DetBaseCampoBrincos.Close;
              DMBaseCampo.DetBaseCampoBrincos.Open;
              DMBaseCampo.DetBaseCampoBrincos.Insert;
              DMBaseCampo.DetBaseCampoBrincosID_BASE_CAMPO.AsString  :=vIdBaseCampo;
              DMBaseCampo.DetBaseCampoBrincosSISBOV_INICIAL.AsString :=gridBrincos.Cells[0,I];
              DMBaseCampo.DetBaseCampoBrincosSISBOV_FINAL.AsString   :=gridBrincos.Cells[1,I];
              DMBaseCampo.DetBaseCampoBrincos.ApplyUpdates(-1);
              DMBaseCampo.AtualizaBrincosBaseCampo(gridBrincos.Cells[0,I],gridBrincos.Cells[1,I],vProdutorDestino,vIdBaseCampo);
            end;
           end;
           for I := 0 to GridGTAS.RowCount-1 do
           begin
            if GridGTAS.Cells[6,I].Length>0 then
            begin
             DMBaseCampo.DetBaseCampoGTA.Close;
             DMBaseCampo.DetBaseCampoGTA.Open;
             DMBaseCampo.DetBaseCampoGTA.Insert;
             DMBaseCampo.DetBaseCampoGTAID_BASE_CAMPO.AsString      :=vIdBaseCampo;
             DMBaseCampo.DetBaseCampoGTAID_GTA.AsString             :=GridGTAS.Cells[6,I];
             DMBaseCampo.DetBaseCampoGTA.ApplyUpdates(-1);
             DMBaseCampo.AtualizaGTABaseCampo(vIdBaseCampo, GridGTAS.Cells[6,I]);
            end;
           end;
           FileCopy(serviceDB.vPathBD,Caminho,vIdBaseCampo);
           DMBaseCampo.AtualizaConfiBaseCampo(vIdBaseCampo,'2',serviceDB.vIdPropriedade);
           MyShowMessage('Base Gerada com Sucesso!',false);
           DMBaseCampo.AbreBaseCampo('');
           MudarAba(tbiMnu,sender);
          except
          on E : Exception do
           ShowMessage('Erro ao Gerar Base Campo: '+E.Message);
          end;
        end;
      end;//Fim Novos Animais
      2:begin  //saida
       DMBaseCampo.BaseCampoID_OPERACAO.AsInteger     :=3;
       DMBaseCampo.BaseCampoID_USUARIO.AsString       :=serviceDB.vIdUserLogado;
       DMBaseCampo.BaseCampoID_PROPRIEDADE.AsString   :=serviceDB.vIdPropriedade;
       DMBaseCampo.BaseCampoDATA_CRIACAO.AsDateTime   :=edtDataInicio.DateTime;
        try
         DMBaseCampo.BaseCampo.ApplyUpdates(-1);
         vIdBaseCampo :=DMBaseCampo.RetornaMaxIdBaseCampo;
         FileCopy(serviceDB.vPathBD,Caminho,vIdBaseCampo);
         DMBaseCampo.AtualizaConfiBaseCampo(vIdBaseCampo,'3',serviceDB.vIdPropriedade);
         MyShowMessage('Base Gerada com Sucesso!',false);
         DMBaseCampo.AbreBaseCampo('');
         MudarAba(tbiMnu,sender);
        except
        on E : Exception do
         ShowMessage('Erro ao Gerar Base Campo: '+E.Message);
        end;
       end;
      3:begin
          if serviceDB.vRastreada='1' then //Rastreada
          begin
            if gridBrincos.RowCount=0 then
            begin
              MyShowMessage('Informe pelo menos uma Sequencia de Brincos!',false);
              Exit;
            end;
            if GridGTAS.RowCount=0 then
            begin
              MyShowMessage('Informe pelo menos uma GTA!',false);
              Exit;
            end;
            DMBaseCampo.BaseCampoID_OPERACAO.AsInteger     :=4;
            DMBaseCampo.BaseCampoID_USUARIO.AsString       :=serviceDB.vIdUserLogado;
            DMBaseCampo.BaseCampoID_PROPRIEDADE.AsString   :=serviceDB.vIdPropriedade;
            DMBaseCampo.BaseCampoDATA_CRIACAO.AsDateTime   :=edtDataInicio.DateTime;
            try
             DMBaseCampo.BaseCampo.ApplyUpdates(-1);
             vIdBaseCampo :=DMBaseCampo.RetornaMaxIdBaseCampo;
             for I := 0 to gridBrincos.RowCount-1 do
             begin
              if gridBrincos.Cells[0,I].Length>0 then
              begin
                DMBaseCampo.DetBaseCampoBrincos.Close;
                DMBaseCampo.DetBaseCampoBrincos.Open;
                DMBaseCampo.DetBaseCampoBrincos.Insert;
                DMBaseCampo.DetBaseCampoBrincosID_BASE_CAMPO.AsString  :=vIdBaseCampo;
                DMBaseCampo.DetBaseCampoBrincosSISBOV_INICIAL.AsString :=gridBrincos.Cells[0,I];
                DMBaseCampo.DetBaseCampoBrincosSISBOV_FINAL.AsString   :=gridBrincos.Cells[1,I];
                DMBaseCampo.DetBaseCampoBrincos.ApplyUpdates(-1);
                DMBaseCampo.AtualizaBrincosBaseCampo(gridBrincos.Cells[0,I],gridBrincos.Cells[1,I],vProdutorDestino,vIdBaseCampo);
              end;
             end;
             for I := 0 to GridGTAS.RowCount-1 do
             begin
              if GridGTAS.Cells[6,I].Length>0 then
              begin
               DMBaseCampo.DetBaseCampoGTA.Close;
               DMBaseCampo.DetBaseCampoGTA.Open;
               DMBaseCampo.DetBaseCampoGTA.Insert;
               DMBaseCampo.DetBaseCampoGTAID_BASE_CAMPO.AsString      :=vIdBaseCampo;
               DMBaseCampo.DetBaseCampoGTAID_GTA.AsString             :=GridGTAS.Cells[6,I];
               DMBaseCampo.DetBaseCampoGTA.ApplyUpdates(-1);
               DMBaseCampo.AtualizaGTABaseCampo(vIdBaseCampo, GridGTAS.Cells[6,I]);
              end;
             end;
             FileCopy(serviceDB.vPathBD,Caminho,vIdBaseCampo);
             DMBaseCampo.AtualizaConfiBaseCampo(vIdBaseCampo,'4',serviceDB.vIdPropriedade);
             MyShowMessage('Base Gerada com Sucesso!',false);
             DMBaseCampo.AbreBaseCampo('');
             MudarAba(tbiMnu,sender);
            except
             on E : Exception do
              ShowMessage('Erro ao Gerar Base Campo: '+E.Message);
            end;
          end
          else//Nao rastreada
          begin
            DMBaseCampo.BaseCampoID_OPERACAO.AsInteger     :=4;
            DMBaseCampo.BaseCampoID_USUARIO.AsString       :=serviceDB.vIdUserLogado;
            DMBaseCampo.BaseCampoID_PROPRIEDADE.AsString   :=serviceDB.vIdPropriedade;
            DMBaseCampo.BaseCampoDATA_CRIACAO.AsDateTime   :=edtDataInicio.DateTime;
            try
             DMBaseCampo.BaseCampo.ApplyUpdates(-1);
             vIdBaseCampo :=DMBaseCampo.RetornaMaxIdBaseCampo;
             for I := 0 to gridBrincos.RowCount-1 do
             begin
              if gridBrincos.Cells[0,I].Length>0 then
              begin
                DMBaseCampo.DetBaseCampoBrincos.Close;
                DMBaseCampo.DetBaseCampoBrincos.Open;
                DMBaseCampo.DetBaseCampoBrincos.Insert;
                DMBaseCampo.DetBaseCampoBrincosID_BASE_CAMPO.AsString  :=vIdBaseCampo;
                DMBaseCampo.DetBaseCampoBrincosSISBOV_INICIAL.AsString :=gridBrincos.Cells[0,I];
                DMBaseCampo.DetBaseCampoBrincosSISBOV_FINAL.AsString   :=gridBrincos.Cells[1,I];
                DMBaseCampo.DetBaseCampoBrincos.ApplyUpdates(-1);
                DMBaseCampo.AtualizaBrincosBaseCampo(gridBrincos.Cells[0,I],gridBrincos.Cells[1,I],vProdutorDestino,vIdBaseCampo);
              end;
             end;
             for I := 0 to GridGTAS.RowCount-1 do
             begin
              if GridGTAS.Cells[6,I].Length>0 then
              begin
               DMBaseCampo.DetBaseCampoGTA.Close;
               DMBaseCampo.DetBaseCampoGTA.Open;
               DMBaseCampo.DetBaseCampoGTA.Insert;
               DMBaseCampo.DetBaseCampoGTAID_BASE_CAMPO.AsString      :=vIdBaseCampo;
               DMBaseCampo.DetBaseCampoGTAID_GTA.AsString             :=GridGTAS.Cells[6,I];
               DMBaseCampo.DetBaseCampoGTA.ApplyUpdates(-1);
               DMBaseCampo.AtualizaGTABaseCampo(vIdBaseCampo, GridGTAS.Cells[6,I]);
              end;
             end;
             FileCopy(serviceDB.vPathBD,Caminho,vIdBaseCampo);
             DMBaseCampo.AtualizaConfiBaseCampo(vIdBaseCampo,'4',serviceDB.vIdPropriedade);
             MyShowMessage('Base Gerada com Sucesso!',false);
             DMBaseCampo.AbreBaseCampo('');
             MudarAba(tbiMnu,sender);
            except
            on E : Exception do
             ShowMessage('Erro ao Gerar Base Campo: '+E.Message);
            end;


          end;
        end;
  end;
end;

procedure TfrmBaseCampo.cbxOperacaoChange(Sender: TObject);
begin
 lblProdutorDestino.Enabled     := cbxOperacao.ItemIndex in[1,3];
 edtProdutorDestinoBase.Enabled := cbxOperacao.ItemIndex in[1,3];
 btnConfirmaOp.Visible          := cbxOperacao.ItemIndex >0;
end;

procedure TfrmBaseCampo.edtBuscaProdutorDestinoClick(Sender: TObject);
begin
   serviceDB.TablePropriedades.Close;
   serviceDB.TablePropriedades.Open;
   serviceDB.TablePropriedades.Filtered := false;
   serviceDB.TablePropriedades.Filter   := 'id='+serviceDB.vIdPropriedade;
   serviceDB.TablePropriedades.Filtered := true;
   serviceDB.TableProdutores.Open;
  frmCadPropriedades := TfrmCadPropriedades.Create(nil);
  try
    frmPrincipal.vCadGTA :=true;
    frmCadPropriedades.ShowModal;
  finally
    vProdutorDestino              := serviceDB.TableProdutoresID.AsString;
    edtProdutorDestinoBase.Text   := serviceDB.TableProdutoresNOME.AsString;
    frmCadPropriedades.Free;
  end;
end;

procedure TfrmBaseCampo.edtSISBOVFimExit(Sender: TObject);
begin
 if edtSISBOVFim.Text.Length=15 then
 begin
   btnAddSequencia.Enabled := true;
   vManejoFim  := strToInt(copy(edtSISBOVFim.Text,9,6));
   if vManejoInicio>vManejoFim then
   begin
     MyShowMessage('SISBOV FINAL não pode ser menor que o Inicial!',false);
     btnAddSequencia.Enabled := false;
     Exit;
   end;
    if DMBaseCampo.ValidaSisbovEstoque(vProdutorDestino,edtSISBOVFim.Text) then
    begin
      MyShowMessage('SISBOV Final Não Encontrado no Estoque!',false);
      btnAddSequencia.Enabled := false;
      Exit;
    end;
 end
 else
 begin
  MyShowMessage('SISBOV Final deve conter 15 Digitos!',false);
  btnAddSequencia.Enabled := false;
  Exit;
 end;

end;

procedure TfrmBaseCampo.edtSISBOVIniExit(Sender: TObject);
begin
 if edtSISBOVIni.Text.Length=15 then
 begin
  vManejoInicio := strToInt(copy(edtSISBOVIni.Text,9,6));
  if DMBaseCampo.ValidaSisbovEstoque(vProdutorDestino,edtSISBOVIni.Text) then
  begin
    MyShowMessage('SISBOV Inicio Não Encontrado no Estoque!',false);
    btnAddSequencia.Enabled := false;
    Exit;
  end;
 end
 else
 begin
   MyShowMessage('SISBOV Inicio deve conter 15 Digitos!',false);
   btnAddSequencia.Enabled := false;
   Exit;
 end;
 btnAddSequencia.Enabled := true;
end;

procedure TfrmBaseCampo.FileCopy(const sourcefilename, targetfilename, NumeroBase: String);
var
  ShFileOpStruct : TShFileOpStruct;
  NOmeOld,NOmeNEW:STRING;
begin
  FillChar(ShFileOpStruct,Sizeof(TShFileOpStruct),0);
  with ShFileOpStruct do begin
    wFunc := FO_COPY; {Parametro de cópia do arquivo ou pasta}
    pFrom := PChar(sourcefilename +#0); {diretório origem}
    pTo := PChar(targetfilename + #0); {diretório  destino}
    fFlags := FOF_ALLOWUNDO or FOF_SIMPLEPROGRESS or FOF_NOCONFIRMATION;
  end;
  try
  ShFileOperation(ShFileOpStruct);
  NOmeOld := targetfilename+serviceDB.vNomeBase;
  NOmeNEW := targetfilename+'BaseCampo_'+NumeroBase+'.FDB';
  IF NOT RenameFile(NOmeOld,NOmeNEW) THEN
  begin
   ShowMessage('Não foi possivel renomerar o arquivo da base de dados campo');
   Exit;
  end
  else
   AtualizaFieldConf(ExtractFilePath(ParamStr(0))+'fieldconf.ini',NOmeNEW);
  except
    on E : Exception do
      ShowMessage(' Houve um erro na cópia das imagens: ' + E.Message);
  end;
end;

procedure TfrmBaseCampo.FormShow(Sender: TObject);
begin
  DMBaseCampo.AbreBaseCampo('');
  inherited;
end;


procedure TfrmBaseCampo.Rectangle4Click(Sender: TObject);
var
 I:Integer;
 ok:Boolean;
begin
 if edtGTA.Text.Length=0 then
 begin
   MyShowMessage('Informe a GTA!',false);
   Exit;
 end;
  ok :=true;
  if GridGTAS.RowCount>0 then
   for I := 0 to GridGTAS.RowCount do
   begin
    IF vIdGTA = GridGTAS.Cells[6,I] then
    begin
     ok :=false;
     MyShowMessage('GTA já Adicionada',false);
     Break;
    end;
   end;
   if ok then
   begin
     GridGTAS.RowCount := GridGTAS.RowCount+1;
     GridGTAS.Cells[0,GridGTAS.RowCount-1] := edtGTA.Text;
     GridGTAS.Cells[1,GridGTAS.RowCount-1] := vUFGta;
     GridGTAS.Cells[2,GridGTAS.RowCount-1] := vSerieGTA;
     GridGTAS.Cells[3,GridGTAS.RowCount-1] := edtTotalAnimais.Text;
     GridGTAS.Cells[4,GridGTAS.RowCount-1] := edtProdutorOrigem.Text;
     GridGTAS.Cells[5,GridGTAS.RowCount-1] := edtProdutorDestino.Text;
     GridGTAS.Cells[6,GridGTAS.RowCount-1] := vIdGTA;
     edtGTA.Text             :='';
     edtProdutorDestino.Text :='';
     edtProdutorOrigem.Text  :='';
     edtTotalAnimais.Text    :='0';
   end;
end;

procedure TfrmBaseCampo.btnConfirmaOpClick(Sender: TObject);
begin
  if cbxOperacao.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o tipo de Operação',false);
    Exit;
  end
  else
  begin
    if(cbxOperacao.ItemIndex in[1,3])  then
    begin
     if edtProdutorDestinoBase.Text.Length=0 then
     begin
       MyShowMessage('Informe o produtor de destino!',false);
       Exit;
     end
     else
     begin
       layGTA.Visible                  := true;
       layBrincosBaseCampo.Visible     := true;
       edtProdutorDestinoBase.visible  := true;
       lblProdutorDestino.visible      := true;
     end;
    end;

    if(cbxOperacao.ItemIndex in[2,3]) and (serviceDB.vRastreada='1') then
    begin
     if edtProdutorDestinoBase.Text.Length=0 then
     begin
       MyShowMessage('Informe o produtor de destino!',false);
       Exit;
     end
     else
     begin
       layGTA.Visible                  := true;
       layBrincosBaseCampo.Visible     := serviceDB.vRastreada='1';
       edtProdutorDestinoBase.visible  := true;
       lblProdutorDestino.visible      := true;
     end;
    end;
  end;
  layBtnControls.Enabled         := true;
end;

procedure TfrmBaseCampo.TreeItemNovoClick(Sender: TObject);
begin
  layBtnControls.Enabled         := false;
  btnConfirmaOp.Visible          := false;
  lblProdutorDestino.Enabled     := false;
  edtProdutorDestinoBase.Enabled := false;
  layBrincosBaseCampo.Visible    := false;
  layGTA.Visible                 := false;
  cbxOperacao.ItemIndex          :=-1;
  edtSISBOVIni.Text              :='';
  edtSISBOVFim.Text              :='';
  edtGTA.Text                    :='';
  edtProdutorOrigem.Text         :='';
  edtProdutorDestino.Text        :='';
  edtTotalAnimais.Text           :='0';
  gridBrincos.RowCount           :=0;
  GridGTAS.RowCount              :=0;
  DMBaseCampo.BaseCampo.Insert;
  inherited;
end;

end.
