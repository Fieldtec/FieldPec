unit UIndicaFarmaco;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,db;

type
  TfrmAuxIndicacaoFarmaco = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxIndicacaoFarmaco: TfrmAuxIndicacaoFarmaco;

implementation

{$R *.fmx}

uses UCadUsers, UServiceDB, UMsgDlg;

procedure TfrmAuxIndicacaoFarmaco.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length = 0 then
 begin
   MyShowMessage('Informe o Nome!',false);
   TThread.Synchronize(nil,procedure
   begin
    edtNome.SetFocus;
   end);
   Exit;
 end;
 if serviceDB.TableAuxIndicacaoFarmaco.State=dsInsert then
 begin
   if not serviceDB.VerificaIndicacaoFarmaco(edtNome.Text)then
   begin
    MyShowMessage('Já existe uma Indicação com esse nome',false);
    Exit;
   end;
 end;
 serviceDB.TableAuxIndicacaoFarmacoNOME.AsString       := edtNome.Text;
 serviceDB.TableAuxIndicacaoFarmacoID_USUARIO.AsString := serviceDB.vIdUserLogado;
 try
   serviceDB.TableAuxIndicacaoFarmaco.ApplyUpdates(-1);
   MyShowMessage('Cadastro atualizado com sucesso!',false);
   serviceDB.TableAuxIndicacaoFarmaco.Close;
   serviceDB.TableAuxIndicacaoFarmaco.Open();
   MudarAba(tbiMnu,sender);
 except
   on E : Exception do
    MYShowMessage(E.ClassName+' Error ao Inserir Indicação Farmaco : '+E.Message,false);
 end;
end;

procedure TfrmAuxIndicacaoFarmaco.edtFiltroNameChangeTracking(Sender: TObject);
begin
  if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableAuxIndicacaoFarmaco.Filtered := false;
   serviceDB.TableAuxIndicacaoFarmaco.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableAuxIndicacaoFarmaco.Filtered := true;
 end
 else
 begin
   serviceDB.TableAuxIndicacaoFarmaco.Filtered := false;
   serviceDB.TableAuxIndicacaoFarmaco.Close;
   serviceDB.TableAuxIndicacaoFarmaco.Open;
 end;
end;

procedure TfrmAuxIndicacaoFarmaco.FormShow(Sender: TObject);
begin
  serviceDB.TableAuxIndicacaoFarmaco.Close;
  serviceDB.TableAuxIndicacaoFarmaco.Open;
end;

procedure TfrmAuxIndicacaoFarmaco.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmAuxIndicacaoFarmaco.TreeItemEditarClick(Sender: TObject);
begin
  edtNome.Text :=serviceDB.TableAuxIndicacaoFarmacoNOME.AsString;
  serviceDB.TableAuxIndicacaoFarmaco.Edit;
  MudarAba(tbiCad,sender);
end;

procedure TfrmAuxIndicacaoFarmaco.TreeItemExcluirClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja Realmente excluir esse registro?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1  then
    begin
      try
       serviceDB.TableAuxIndicacaoFarmaco.Edit;
       serviceDB.TableAuxIndicacaoFarmacoSTATUS.AsInteger :=0;
       serviceDB.TableAuxIndicacaoFarmaco.ApplyUpdates(-1);
       serviceDB.TableAuxIndicacaoFarmaco.Close;
       serviceDB.TableAuxIndicacaoFarmaco.Open;
       ShowMessage('Registro excluido com Sucesso!');
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

procedure TfrmAuxIndicacaoFarmaco.TreeItemNovoClick(Sender: TObject);
begin
  edtNome.Text :='';
  serviceDB.TableAuxIndicacaoFarmaco.Close;
  serviceDB.TableAuxIndicacaoFarmaco.Open;
  serviceDB.TableAuxIndicacaoFarmaco.Insert;
  MudarAba(tbiCad,sender);
end;

end.
