unit UAuxMorte;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Effects;

type
  TfrmCadAuxMorte = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout1hehe: TLayout;
    Layout3ge: TLayout;
    Label4: TLabel;
    edtCausaMorte: TEdit;
    Rectangle2: TRectangle;
    Label3: TLabel;
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure imgCloseClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAuxMorte: TfrmCadAuxMorte;

implementation

{$R *.fmx}

uses UServiceDB;

procedure TfrmCadAuxMorte.btnConfirmaClick(Sender: TObject);
begin
  if edtCausaMorte.Text.Length=0 then
  begin
    MyShowMessage('Informe a Causa',false);
    Exit;
  end;
  if not serviceDB.VerificaCausaExite(edtCausaMorte.Text) then
  begin
    MyShowMessage('Causa ja cadastrada',false);
    Exit;
  end;
  serviceDB.qryAuxMorteID_USER.AsString := serviceDB.vIdUserLogado;
  serviceDB.qryAuxMorteNOME.AsString    := edtCausaMorte.Text;
  try
   serviceDB.qryAuxMorte.ApplyUpdates(-1);
   serviceDB.qryAuxMorte.Close;
   serviceDB.qryAuxMorte.Open;
   tbPrincipal.ActiveTab := tbiMnu;
  except
   on E : Exception do
    MyShowMessage(E.ClassName+' error raised, with message : '+E.Message,false);
  end;
end;

procedure TfrmCadAuxMorte.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.qryAuxMorte.Filtered := false;
   serviceDB.qryAuxMorte.Filter   :=' NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.qryAuxMorte.Filtered := true;
 end
 else
 begin
   serviceDB.qryAuxMorte.Filtered := false;
   serviceDB.qryAuxMorte.Close;
   serviceDB.qryAuxMorte.Open;
 end;
end;

procedure TfrmCadAuxMorte.imgCloseClick(Sender: TObject);
begin
 close;
end;

procedure TfrmCadAuxMorte.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

procedure TfrmCadAuxMorte.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.qryAuxMorte.Edit;
  edtCausaMorte.Text := serviceDB.qryAuxMorteNOME.AsString;
  inherited;
end;

procedure TfrmCadAuxMorte.TreeItemNovoClick(Sender: TObject);
begin
  serviceDB.qryAuxMorte.Close;
  serviceDB.qryAuxMorte.Open;
  serviceDB.qryAuxMorte.Insert;
  inherited;
end;

end.
