unit UPluviometro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.DB;

type
  TfrmPluviometro = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
  private
    vConfirma:integer;
  public
    { Public declarations }
  end;

var
  frmPluviometro: TfrmPluviometro;

implementation

{$R *.fmx}

uses ServiceDB2, ServiceRel, UServiceDB, UMsgDlg, UMsgDlgRel, UPrincipal;

procedure TfrmPluviometro.btnConfirmaClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    myShowMessage('Infome o Nome!',false);
    edtNome.SetFocus;
    Exit;
  end
  else
  begin
    if(serviceDBN.PLUVIOMETRO.State =dsInsert) then
    begin
     if not serviceDB.VerificaExisteGenerico('PLUVIOMETRO','NOME',edtNome.Text)then
     begin
       myShowMessage('Já existe Pluviômetro cadastrado com esse nome!!',false);
       Exit;
     end
     else
     begin
       serviceDBN.PLUVIOMETROID_USUARIO.AsString      := serviceDB.vIdUserLogado;
       serviceDBN.PLUVIOMETRONOME.AsString            := edtNome.Text;
       serviceDBN.PLUVIOMETROID_PROPRIEDADE.AsString  := serviceDB.vIdPropriedade;
       try
         serviceDBN.PLUVIOMETRO.ApplyUpdates(-1);
         myShowMessage('Pluviômetro Cadastrado com Sucesso!',false);
         serviceDBN.PLUVIOMETRO.Close;
         serviceDBN.PLUVIOMETRO.Open;
         MudarAba(tbiMnu,sender);
       except
        on e : Exception do
         myShowMessage('Erro ao Inserir Pluviômetro: '+e.Message,false)
       end;
     end;
    end
    else
    begin
       serviceDBN.PLUVIOMETROID_USUARIO_ALTERACAO.AsString := serviceDB.vIdUserLogado;
       serviceDBN.PLUVIOMETRODATA_ALTERACAO.AsDateTime     := now;
       serviceDBN.PLUVIOMETRONOME.AsString                 := edtNome.Text;
       try
         serviceDB.TableAuxMotivoAplicacao.ApplyUpdates(-1);
         myShowMessage('Pluviômetro Cadastrado com sucesso!',false);
         serviceDB.TableAuxMotivoAplicacao.Close;
         serviceDB.TableAuxMotivoAplicacao.Open;
         MudarAba(tbiMnu,sender);
       except
         on e : Exception do
         myShowMessage('Erro ao Inserir Pluviômetro: '+e.Message,false)
       end;
    end;
  end;
end;

procedure TfrmPluviometro.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDBN.PLUVIOMETRO.Filtered := false;
   serviceDBN.PLUVIOMETRO.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDBN.PLUVIOMETRO.Filtered := true;
 end
 else
 begin
   serviceDBN.PLUVIOMETRO.Filtered := false;
   serviceDBN.PLUVIOMETRO.Close;
   serviceDBN.PLUVIOMETRO.Open;
 end;
end;

procedure TfrmPluviometro.FormShow(Sender: TObject);
begin
  serviceDBN.PLUVIOMETRO.Filtered:= false;
  serviceDBN.PLUVIOMETRO.Close;
  serviceDBN.PLUVIOMETRO.Open;
  serviceDBN.PLUVIOMETRO.Filtered:= false;
  serviceDBN.PLUVIOMETRO.Filter  :='ID_PROPRIEDADE='+serviceDB.vIdPropriedade;
  serviceDBN.PLUVIOMETRO.Filtered:= true;
  inherited;
end;

procedure TfrmPluviometro.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmPluviometro.TreeItemEditarClick(Sender: TObject);
begin
  serviceDBN.PLUVIOMETRO.Edit;
  edtNome.Text  := serviceDBN.PLUVIOMETRONOME.AsString;
  MudarAba(tbiCad,Sender);
end;

procedure TfrmPluviometro.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Pluviômetro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       serviceDBN.PLUVIOMETRO.Edit;
       serviceDBN.PLUVIOMETROSTATUS.AsInteger :=0;
       serviceDBN.PLUVIOMETRO.ApplyUpdates(-1);
       serviceDBN.PLUVIOMETRO.Close;
       serviceDBN.PLUVIOMETRO.Open;
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

   end;
  end;
end;

procedure TfrmPluviometro.TreeItemNovoClick(Sender: TObject);
begin
  edtNome.Text:='';
  serviceDBN.PLUVIOMETRO.Close;
  serviceDBN.PLUVIOMETRO.Open;
  serviceDBN.PLUVIOMETRO.Insert;
  MudarAba(tbiCad,Sender);
  inherited;
end;

end.
