unit UCurrais;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,Data.db;

type
  TfrmCadCurral = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    lblCadCurralPasto: TLabel;
    Layout1: TLayout;
    GroupBox2: TGroupBox;
    rdIndividual: TRadioButton;
    rdGeral: TRadioButton;
    layDados: TLayout;
    TabControlTipo: TTabControl;
    tbiIndividual: TTabItem;
    tbiAutomatico: TTabItem;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Label4: TLabel;
    lblNumeroIni: TLabel;
    Label10: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    edtNumero: TEdit;
    Layout9: TLayout;
    Layout10: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Layout11: TLayout;
    edtCapacidade: TEdit;
    edtCodigo: TEdit;
    edtPesoMinimo: TEdit;
    Label11: TLabel;
    edtPesoMaximo: TEdit;
    Label12: TLabel;
    edtLotacao: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout12: TLayout;
    Label7: TLabel;
    Label8: TLabel;
    Layout13: TLayout;
    edtNome2: TEdit;
    edtNumeroIni: TEdit;
    Layout14: TLayout;
    Layout15: TLayout;
    Label13: TLabel;
    Layout16: TLayout;
    edtCapacidade2: TEdit;
    Label9: TLabel;
    edtNumeroFinal: TEdit;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Layout17: TLayout;
    Rectangle7: TRectangle;
    PTIMA: TLayout;
    Image7: TImage;
    Layout18: TLayout;
    Layout19: TLayout;
    Label3: TLabel;
    edtQrCode: TEdit;
    LinkControlToField8: TLinkControlToField;
    Layout20: TLayout;
    Rectangle8: TRectangle;
    Layout21: TLayout;
    Label14: TLabel;
    Label15: TLabel;
    Layout22: TLayout;
    edtLatitude: TEdit;
    edtLongitude: TEdit;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rdIndividualChange(Sender: TObject);
    procedure rdGeralChange(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure imgCloseClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmCadCurral: TfrmCadCurral;

implementation

{$R *.fmx}

uses UCadUsers, UPrincipal, UPropriedadeParceira, UServiceDB;

procedure TfrmCadCurral.btnConfirmaClick(Sender: TObject);
var
 I:integer;
 vCodCurral:string;
begin
 edtNome.SetFocus;
 if rdIndividual.IsChecked then
 begin
     if edtNome.Text.Length=0 then
      begin
       MessageDlg('Infome o Nome!', System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes
      ], 0,
        procedure(const AResult: System.UITypes.TModalResult)
         begin
          case AResult of
          mrYES:
          begin
            edtNome.SetFocus;
            Exit;
          end;
         end;
        end);
      end
      else
      begin
        if (edtNumero.Text.Length=0) or (edtNumero.Text='0') then
        begin
         MessageDlg('Infome o Numero!', System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes
        ], 0,
          procedure(const AResult: System.UITypes.TModalResult)
           begin
            case AResult of
            mrYES:
            begin
              edtNumero.SetFocus;
              Exit;
            end;
           end;
          end);
        end
        else
        begin
          if (edtCapacidade.Text.Length=0) or (edtCapacidade.Text='0') then
          begin
           MessageDlg('Infome a Capacidade!', System.UITypes.TMsgDlgType.mtInformation,
          [System.UITypes.TMsgDlgBtn.mbYes
          ], 0,
            procedure(const AResult: System.UITypes.TModalResult)
             begin
              case AResult of
              mrYES:
              begin
                edtCapacidade.SetFocus;
                Exit;
              end;
             end;
            end);
          end
          else
          begin
            if serviceDB.TableCurrais.State=dsInsert then
            begin
                vCodCurral := serviceDB.VerificaCurralExiste(edtNome.Text,edtNumero.Text);
              if vCodCurral.Length=0 then
              begin
                 try
                   serviceDB.TableCurraisUSER_ID.AsString          :=serviceDB.vIdUserLogado;
                   serviceDB.TableCurraisID_PROPRIEDADE.AsString   :=frmPrincipal.vIDPropriedadePropria;
                   serviceDB.TableCurraisTIPO.AsString             :=frmPrincipal.vTipoCurral;
                   serviceDB.TableCurraisQRCODE.AsString           :=edtQrCode.Text;
                   serviceDB.TableCurrais.ApplyUpdates(-1);
                   serviceDB.TableCurrais.Active := false;
                   serviceDB.TableCurrais.Active := true;
                   MudarAba(tbiMnu,sender);
                  except
                   on e : Exception do
                   ShowMessage('Erro ao Inserir Propriedade: '+e.Message)
                  end;
              end
              else
              begin
               if serviceDB.VerificaStatusCurral(vCodCurral)='0' then
               begin
                  MessageDlg('Curral ja existe:'+edtNome.Text+'-'+edtNumero.Text+' desja reativalo?', System.UITypes.TMsgDlgType.mtInformation,
                  [System.UITypes.TMsgDlgBtn.mbYes,
                  System.UITypes.TMsgDlgBtn.mbNo
                  ], 0,
                  procedure(const AResult: System.UITypes.TModalResult)
                  begin
                  case AResult of
                  mrYES:
                  begin
                      try
                       serviceDB.ReativarCurral(vCodCurral);
                       ShowMessage('Curral Rativado com Sucesso!');
                       serviceDB.TableCurrais.Active := false;
                       serviceDB.TableCurrais.Active := true;
                       MudarAba(tbiMnu,sender);
                      except
                      on E : Exception do
                       begin
                         ShowMessage('Exception class name = '+E.ClassName);
                         ShowMessage('Exception message = '+E.Message);
                       end;
                      end;
                  end;
                  mrNo:
                   begin
                     ShowMessage('Operação Abortada');
                   end;
                  end;
                  end);
               end
               else
               begin
                   MessageDlg('Curral Ja Existe!', System.UITypes.TMsgDlgType.mtInformation,
                  [System.UITypes.TMsgDlgBtn.mbYes
                  ], 0,
                    procedure(const AResult: System.UITypes.TModalResult)
                     begin
                      case AResult of
                      mrYES:
                      begin
                        edtNome.SetFocus;
                        Exit;
                      end;
                     end;
                    end);
               end;
              end;
            end
            else
            begin
              try
               serviceDB.TableCurraisUSER_ID.AsString          :=serviceDB.vIdUserLogado;
               serviceDB.TableCurraisID_PROPRIEDADE.AsString   :=frmPrincipal.vIDPropriedadePropria;
               serviceDB.TableCurraisTIPO.AsString             :=frmPrincipal.vTipoCurral;
               serviceDB.TableCurraisQRCODE.AsString           :=edtQrCode.Text;
               serviceDB.TableCurrais.ApplyUpdates(-1);
               serviceDB.TableCurrais.Active := false;
               serviceDB.TableCurrais.Active := true;
               MudarAba(tbiMnu,sender);
              except
               on e : Exception do
               ShowMessage('Erro ao Inserir Propriedade: '+e.Message)
              end;
            end;
          end;
        end;
      end;
 end;
 if rdGeral.IsChecked then
 begin
      if edtNome2.Text.Length=0 then
      begin
       MessageDlg('Infome o Nome!', System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes
      ], 0,
        procedure(const AResult: System.UITypes.TModalResult)
         begin
          case AResult of
          mrYES:
          begin
            edtNome2.SetFocus;
            Exit;
          end;
         end;
        end);
      end
      else
      begin
        if (edtNumeroIni.Text.Length=0) or (edtNumeroIni.Text='0') then
        begin
         MessageDlg('Infome o Numero Inicial!', System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes
        ], 0,
          procedure(const AResult: System.UITypes.TModalResult)
           begin
            case AResult of
            mrYES:
            begin
              edtNumeroIni.SetFocus;
              Exit;
            end;
           end;
          end);
        end
        else
        begin
          if (edtNumeroFinal.Text.Length=0) or (edtNumeroFinal.Text='0') then
          begin
           MessageDlg('Infome o Numero Final!', System.UITypes.TMsgDlgType.mtInformation,
          [System.UITypes.TMsgDlgBtn.mbYes
          ], 0,
            procedure(const AResult: System.UITypes.TModalResult)
             begin
              case AResult of
              mrYES:
              begin
                edtNumeroFinal.SetFocus;
                Exit;
              end;
             end;
            end);
          end
          else
          begin
          if (edtCapacidade2.Text.Length=0) or (edtCapacidade2.Text='0') then
          begin
           MessageDlg('Infome a Capacidade!', System.UITypes.TMsgDlgType.mtInformation,
          [System.UITypes.TMsgDlgBtn.mbYes
          ], 0,
            procedure(const AResult: System.UITypes.TModalResult)
             begin
              case AResult of
              mrYES:
              begin
                edtCapacidade2.SetFocus;
                Exit;
              end;
             end;
            end);
          end
          else
           begin
             I := StrToInt(edtNumeroIni.Text);
             while I<=strToInt(edtNumeroFinal.Text) do
             begin
               vCodCurral := serviceDB.VerificaCurralExiste(edtNome2.Text,IntToStr(I));
               if vCodCurral.Length=0 then
               begin
                 try
                   serviceDB.TableCurrais.Insert;
                   serviceDB.TableCurraisUSER_ID.AsString          :=serviceDB.vIdUserLogado;
                   serviceDB.TableCurraisID_PROPRIEDADE.AsString   :=frmPrincipal.vIDPropriedadePropria;
                   serviceDB.TableCurraisNOME.AsString             :=edtNome2.Text;
                   serviceDB.TableCurraisNUMERO.AsInteger          := I;
                   serviceDB.TableCurraisTIPO.AsString             :=frmPrincipal.vTipoCurral;
                   serviceDB.TableCurraisCAPACIDADE.AsString       :=edtCapacidade2.Text;
                   serviceDB.TableCurrais.ApplyUpdates(-1);
                   serviceDB.TableCurrais.Active := false;
                   serviceDB.TableCurrais.Active := true;
                   inc(I);
                  except
                   on e : Exception do
                   ShowMessage('Erro ao Inserir Propriedade: '+e.Message)
                  end;
               end
               else
               begin
                  if serviceDB.VerificaStatusCurral(vCodCurral)='0' then
                    serviceDB.ReativarCurral(vCodCurral);
                  inc(I);
               end;
             end;
           end;
          end;
        end;
      end;
      serviceDB.TableCurrais.Active := false;
      serviceDB.TableCurrais.Active := true;
      MudarAba(tbiMnu,sender);
 end;
end;

procedure TfrmCadCurral.edtFiltroNameChangeTracking(Sender: TObject);
begin
  if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableCurrais.Filtered := false;
   serviceDB.TableCurrais.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableCurrais.Filtered := true;
 end
 else
   serviceDB.TableCurrais.Filtered := false;
end;

procedure TfrmCadCurral.FormCreate(Sender: TObject);
begin
  inherited;
  TabControlTipo.TabPosition := TTabPosition.None;
  TabControlTipo.ActiveTab   := tbiIndividual;
end;

procedure TfrmCadCurral.imgCloseClick(Sender: TObject);
begin
 if frmPrincipal.vMov=1 then
  Close
 else
  inherited;
end;

procedure TfrmCadCurral.rdGeralChange(Sender: TObject);
begin
 MudarAba(tbiAutomatico,Sender);
end;

procedure TfrmCadCurral.rdIndividualChange(Sender: TObject);
begin
 MudarAba(tbiIndividual,Sender);
end;

procedure TfrmCadCurral.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadCurral.TreeItemEditarClick(Sender: TObject);
begin
  try
   Layout1.Visible := false;
   serviceDB.TableCurrais.Edit;
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Currais: '+e.Message)
  end;
end;

procedure TfrmCadCurral.TreeItemExcluirClick(Sender: TObject);
begin
  MessageDlg('Deseja Realmente deletar esse Curral?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
  procedure(const AResult: System.UITypes.TModalResult)
  begin
  case AResult of
  mrYES:
  begin
      try
       serviceDB.TableCurrais.Edit;
       serviceDB.TableCurraisSTATUS.AsInteger :=0;
       serviceDB.TableCurrais.ApplyUpdates(-1);
       serviceDB.TableCurrais.Close;
       serviceDB.TableCurrais.Open;
       ShowMessage('Dados deletados com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  mrNo:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
  end);
end;

procedure TfrmCadCurral.TreeItemNovoClick(Sender: TObject);
begin
 try
   serviceDB.TableCurrais.Close;
   serviceDB.TableCurrais.Open;
   serviceDB.TableCurrais.Insert;
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Currais: '+e.Message)
  end;
end;

end.
