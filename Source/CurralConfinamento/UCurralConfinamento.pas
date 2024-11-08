unit UCurralConfinamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCurrais, System.Rtti, FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Effects, FMX.Edit, FMX.ScrollBox,
  FMX.Grid, FMX.ListBox, FMX.Controls.Presentation, FMX.Objects, FMX.TreeView,
  FMX.Layouts,Data.DB;

type
  TfrmCadCurralConf = class(TfrmCadCurral)
    edtNumeroInd: TEdit;
    Label27: TLabel;
    LayoutTags: TLayout;
    Rectangle18: TRectangle;
    Layout52: TLayout;
    Label28: TLabel;
    Label31: TLabel;
    Layout53: TLayout;
    edtTagIni: TEdit;
    edtTagFim: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure StringGrid1EditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure edtNumeroIndKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtNumeroIniKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtNumeroFinalKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtCodigoExit(Sender: TObject);
    procedure edtNumeroIndExit(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCurralConf: TfrmCadCurralConf;

implementation

{$R *.fmx}

uses ServiceRel, UServiceDB, UPrincipal;

procedure TfrmCadCurralConf.btnConfirmaClick(Sender: TObject);
var
 I:integer;
 vCodCurral,vCodigo:string;
begin
  edtQrCode.SetFocus;

  if serviceDB.TableCurrais.State=dsEdit then
  begin
    serviceDB.TableCurraisCODIGO.AsString           :=edtCodigo.Text;
    serviceDB.TableCurraisTIPO.AsInteger            :=1;
    serviceDB.TableCurraisCAPACIDADE.AsString       :=edtCapacidade.Text;
    serviceDB.TableCurraisPESO_MINIMO.AsString      :=edtPesoMinimo.Text;
    serviceDB.TableCurraisPESO_MAXIMO.AsString      :=edtPesoMaximo.Text;
    serviceDB.TableCurraisTAG_INICIO.AsString       :=edtTagIni.Text;
    serviceDB.TableCurraisTAG_FIM.AsString          :=edtTagFim.Text;
    try
     serviceDB.TableCurrais.ApplyUpdates(-1);
    except
     on e : Exception do
      MyShowMessage('Erro ao Editar Curral: '+e.Message,false)
  end;
  end
  else
  begin
      if rdIndividual.IsChecked then
      begin
        if edtCodigo.Text.Length=0 then
        begin
          MyShowMessage('Informe a Linha!!',false);
          edtCodigo.SetFocus;
          Exit;
        end;
        if edtNumeroInd.Text.Length=0 then
        begin
          MyShowMessage('Informe o Numero!!',false);
          edtNumeroInd.SetFocus;
          Exit;
        end;
        if (edtCapacidade.Text.Length=0) or (edtCapacidade.Text='0') then
        begin
          MyShowMessage('Informe a capacidade!!',false);
          edtCapacidade.SetFocus;
          Exit;
        end;
        if (edtPesoMinimo.Text.Length=0)then
        begin
          MyShowMessage('Informe o Peso Minimo!!',false);
          edtPesoMinimo.SetFocus;
          Exit;
        end;
        if(edtPesoMaximo.Text.Length=0)then
        begin
          MyShowMessage('Informe o Peso Maximo!!',false);
          edtPesoMaximo.SetFocus;
          Exit;
        end;
        vCodigo := edtCodigo.Text+'-'+edtNumeroInd.Text;
        if serviceDB.TableCurrais.State=dsInsert then
          vCodCurral := serviceDB.VerificaCurralExiste(vCodigo);
          if vCodCurral.Length=0 then
          begin
               serviceDB.TableCurraisUSER_ID.AsString          :=serviceDB.vIdUserLogado;
               serviceDB.TableCurraisID_PROPRIEDADE.AsString   :=frmPrincipal.vIDPropriedadePropria;
               serviceDB.TableCurraisTIPO.AsString             :='1';
               serviceDB.TableCurraisQRCODE.AsString           :=edtQrCode.Text;
               serviceDB.TableCurraisCODIGO.AsString           :=vCodigo;
               serviceDB.TableCurraisCAPACIDADE.AsString       :=edtCapacidade.Text;
               serviceDB.TableCurraisPESO_MINIMO.AsString      :=edtPesoMinimo.Text;
               serviceDB.TableCurraisPESO_MAXIMO.AsString      :=edtPesoMaximo.Text;
               serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString   :=serviceDB.qryConfigPadraoCUSTO_FIXO_PADRAO.AsString;;
               serviceDB.TableCurraisAREA_HECTARES.AsString    :=edtAreaHe.Text;
               serviceDB.TableCurraisTAG_INICIO.AsString       :=edtTagIni.Text;
               serviceDB.TableCurraisTAG_FIM.AsString          :=edtTagFim.Text;
               if edtRetiro.Text.Length>0 then
                serviceDB.TableCurraisID_RETIRO.AsInteger := vIdRetiro;
              try
               serviceDB.TableCurrais.ApplyUpdates(-1);
              except
               on e : Exception do
               MyShowMessage('Erro ao Inserir Curral: '+e.Message,false)
              end;
          end
          else
          begin
            MyShowMessage('Ja existe um Local com esse nome!! ',false);
            Exit;
          end;
      end;//INDIVIDUAL
      if rdGeral.IsChecked then
      begin
        if edtNome2.Text.Length=0 then
        begin
          MyShowMessage('Informe o nome!!',false);
          edtNome2.SetFocus;
          Exit;
        end;
        if (edtNumeroIni.Text.Length=0) or (edtNumeroIni.Text='0') then
        begin
          MyShowMessage('Informe o Numero Inicial!!',false);
          edtNumeroIni.SetFocus;
          Exit;
        end;
        if (edtNumeroFinal.Text.Length=0) or (edtNumeroFinal.Text='0') then
        begin
          MyShowMessage('Informe o Numero Final!!',false);
          edtNumeroFinal.SetFocus;
          Exit;
        end;
        if (edtCapacidade2.Text.Length=0) or (edtCapacidade2.Text='0') then
        begin
          MyShowMessage('Informe a capacidade!!',false);
          edtNumeroFinal.SetFocus;
          Exit;
        end;
        I := StrToInt(edtNumeroIni.Text);
        while I<=strToInt(edtNumeroFinal.Text) do
        begin
         vCodCurral := serviceDB.VerificaCurralExiste(edtNome2.Text+'-'+IntToStr(I));
         if vCodCurral.Length=0 then
         begin
           try
             serviceDB.TableCurrais.Insert;
             serviceDB.TableCurraisUSER_ID.AsString          :=serviceDB.vIdUserLogado;
             serviceDB.TableCurraisID_PROPRIEDADE.AsString   :=frmPrincipal.vIDPropriedadePropria;
             serviceDB.TableCurraisCODIGO.AsString           :=edtNome2.Text+'-'+IntToStr(I);
             serviceDB.TableCurraisTIPO.AsString             :='1';
             serviceDB.TableCurraisCAPACIDADE.AsString       :=edtCapacidade2.Text;
             serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString   :=serviceDB.qryConfigPadraoCUSTO_FIXO_PADRAO.AsString;
             serviceDB.TableCurraisAREA_HECTARES.AsString    :=edtAreaHe.Text;
             if edtRetiroAuto.Text.Length>0 then
                serviceDB.TableCurraisID_RETIRO.AsInteger := vIdRetiro;
             serviceDB.TableCurrais.ApplyUpdates(-1);
             serviceDB.TableCurrais.Active := false;
             serviceDB.TableCurrais.Active := true;
             inc(I);
            except
             on e : Exception do
              MyShowMessage('Erro ao Inserir Curral Confinamento: '+e.Message,false)
            end;
         end
         else
         begin
            MyShowMessage('Ja existe um Local com esse nome:'+edtNome2.Text+'-'+IntToStr(I),false);
            i:= strToInt(edtNumeroFinal.Text)+1;
            Exit;
         end;
        end;
      end;//EM GRUPO
       MyShowMessage('Curral Confinamento gerado com sucesso!',false);
  end;
  serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'1');
  MudarAba(tbiMnu,sender);
  serviceDB.TableCurrais.Active := false;
  serviceDB.TableCurrais.Active := true;
end;

procedure TfrmCadCurralConf.edtNumeroIndExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
      edtCapacidade.SetFocus
    end);
   end).Start;
end;

procedure TfrmCadCurralConf.edtNumeroIndKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadCurralConf.edtCodigoExit(Sender: TObject);
begin
  TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
      edtNumeroInd.SetFocus
    end);
   end).Start;
end;

procedure TfrmCadCurralConf.edtNumeroFinalKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadCurralConf.edtNumeroIniKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9'] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadCurralConf.FormCreate(Sender: TObject);
begin
  inherited;
  TabControlTipo.TabPosition := TTabPosition.None;
  TabControlTipo.ActiveTab   := tbiIndividual;
end;

procedure TfrmCadCurralConf.FormShow(Sender: TObject);
begin
  serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'1');
  serviceDB.AtualizaLotacaoGeral(ServiceDB.vIdPropriedade);
end;

procedure TfrmCadCurralConf.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  close;
end;

procedure TfrmCadCurralConf.StringGrid1EditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  serviceDB.TableCurrais.ApplyUpdates(-1);
end;

procedure TfrmCadCurralConf.TreeItemEditarClick(Sender: TObject);
begin
 try
   Layout1.Visible := false;
   serviceDB.TableCurrais.Edit;
   rdIndividual.IsChecked :=true;
   Label4.Text         := 'Nome';
   edtNumeroInd.Visible:= false;
   Label27.Visible     := false;
   edtCustoFixoOp.Text := serviceDB.TableCurraisCUSTO_FIXO_DIA.AsString;
   edtTagIni.Text      := serviceDB.TableCurraisTAG_INICIO.AsString;
   edtTagFim.Text      := serviceDB.TableCurraisTAG_FIM.AsString;
   inherited;
  except
   on e : Exception do
   MyShowMessage('Erro ao Inserir Currais: '+e.Message,false)
  end;
end;

procedure TfrmCadCurralConf.TreeItemExcluirClick(Sender: TObject);
begin
  if serviceDB.TableCurraisLOTACAO.AsInteger>0 then
  begin
    MyShowMessage('Local possui animais ativos impossível excluir!',true);
    Exit;
  end
  else
  begin
    MyShowMessage('Deseja Realmente deletar esse Pasto?',true);
    case dlg.vBntConfirmaMsg of
    1:
    begin
        try
         serviceDB.TableCurrais.Edit;
         serviceDB.TableCurraisSTATUS.AsInteger :=0;
         serviceDB.TableCurrais.ApplyUpdates(-1);
         serviceDB.AbreQryCurrais(serviceDB.vIdPropriedade,'1');
         MyShowMessage('Dados deletados com Sucesso!',false);
        except
        on E : Exception do
         begin
           MyShowMessage('Exception class name = '+E.ClassName,false);
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
end;

procedure TfrmCadCurralConf.TreeItemNovoClick(Sender: TObject);
begin
   Label4.Text         := 'Linha (até 10 caracteres)*';
   edtNumeroInd.Visible:= true;
   Label27.Visible     := true;
   edtPesoMinimo.Text  :='0';
   edtPesoMaximo.Text  :='0';
   edtTagIni.Text      :='';
   edtTagFim.Text      :='';
  inherited;
end;

end.
