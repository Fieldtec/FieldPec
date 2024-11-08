unit UCadRaca;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,Data.Db, FMX.Effects,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadRacas = class(TfrmCadPadrao)
    Layout6: TLayout;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    Label3: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    edtNome: TEdit;
    LinkControlToField1: TLinkControlToField;
    Rectangle2: TRectangle;
    Label5: TLabel;
    edtCodRacaBND: TEdit;
    FDQuery1: TFDQuery;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure FormShowfi(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmCadRacas: TfrmCadRacas;

implementation

{$R *.fmx}

uses UCadUsers, UCurrais, UPrincipal, UPropriedadeParceira, UServiceDB,
  ServiceDB2;



procedure TfrmCadRacas.btnConfirmaClick(Sender: TObject);
var
 vCodRaca :string;
begin
  EditTab.SetFocus;
 if edtNome.Text.Length=0 then
  begin
   MyShowMessage('Infome o nome da Raça!',false);
   edtNome.SetFocus;
   Exit;
  end;
  vCodRaca := serviceDB.VerificaRacaExiste(edtNome.Text);
  if (vCodRaca.Length=0) and (serviceDB.TableRacas.State=dsInsert) then
  begin
   try
     serviceDB.TableRacasCODIGO_BND.AsString       := edtCodRacaBND.Text;
     serviceDB.TableRacasID_USER.AsString          := serviceDB.vIdUserLogado;
     serviceDB.TableRacas.ApplyUpdates(-1);
     serviceDB.TableRacas.Active := false;
     serviceDB.TableRacas.Active := true;
     MudarAba(tbiMnu,sender);
    except
     on e : Exception do
      MyShowMessage('Erro ao Inserir RAÇA: '+e.Message,false);
    end;
  end
  else
   MyShowMessage('Ja existe uma Raça com esse nome!!',false);
end;

procedure TfrmCadRacas.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableRacas.Filtered := false;
   serviceDB.TableRacas.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableRacas.Filtered := true;
 end
 else
 begin
   serviceDB.TableRacas.Filtered := false;
   serviceDB.TableRacas.Close;
   serviceDB.TableRacas.Open;
 end;
end;

procedure TfrmCadRacas.FormShowfi(Sender: TObject);
begin
  serviceDB.TableRacas.Close;
  serviceDB.TableRacas.Open;
end;

procedure TfrmCadRacas.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadRacas.TreeItemEditarClick(Sender: TObject);
begin
  try
   serviceDB.TableRacas.Edit;
   edtCodRacaBND.Text := serviceDB.TableRacasCODIGO_BND.AsString;
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Raça: '+e.Message)
  end;
end;

procedure TfrmCadRacas.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Inativar essa Raça?',false);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableRacas.Edit;
       serviceDB.TableRacasSTATUS.AsInteger :=0;
       serviceDB.TableRacas.ApplyUpdates(-1);
       serviceDB.TableRacas.Close;
       serviceDB.TableRacas.Open;
       ShowMessage('Registro inativado com Sucesso!');
      except
      on E : Exception do
       begin
         ShowMessage('Exception class name = '+E.ClassName);
         ShowMessage('Exception message = '+E.Message);
       end;
      end;
  end;
  2:
   begin
     ShowMessage('Operação Abortada');
   end;
  end;
end;

procedure TfrmCadRacas.TreeItemNovoClick(Sender: TObject);
begin
   try
   serviceDB.TableRacas.Close;
   serviceDB.TableRacas.Open;
   serviceDB.TableRacas.Insert;
   edtCodRacaBND.Text :='';
   inherited;
  except
   on e : Exception do
   ShowMessage('Erro ao Inserir Currais: '+e.Message)
  end;
end;

end.
