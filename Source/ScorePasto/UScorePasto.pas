unit UScorePasto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.DateTimeCtrls;

type
  TfrmScorePasto = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Label4: TLabel;
    Label5: TLabel;
    Layout8: TLayout;
    edtPasto: TEdit;
    EditButton1: TEditButton;
    ClearEditButton1: TClearEditButton;
    edtDataScore: TDateEdit;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Label3: TLabel;
    Layout4: TLayout;
    cbxScore: TComboBox;
    procedure btnConfirmaClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    vIdPasto:string;
  end;

var
  frmScorePasto: TfrmScorePasto;

implementation

{$R *.fmx}

uses ServiceDB2, UCurrais, ServiceRel, UServiceDB, UPrincipal;

procedure TfrmScorePasto.btnConfirmaClick(Sender: TObject);
begin
  if edtPasto.Text.Length=0 then
  begin
    MyShowMessage('Informe o pasto!!',false);
    Exit;
  end;
  if cbxScore.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o Score!!',false);
    Exit;
  end;
  serviceDBN.SCOREPASTOID_PASTO.AsString   := vIdPasto;
  serviceDBN.SCOREPASTOID_USUARIO.AsString := serviceDB.vIdUserLogado;
  serviceDBN.SCOREPASTODATA.AsDateTime     := edtDataScore.DateTime;
  serviceDBN.SCOREPASTOSCORE.AsInteger     := cbxScore.ItemIndex;
  try
   serviceDBN.SCOREPASTO.ApplyUpdates(-1);
   MyShowMessage('Score Lançado com Sucesso!',false);
   serviceDBN.AbreScorePasto('');
   MudarAba(tbiMnu,Sender);
   inherited;
  except
   on E : Exception do
    ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
end;

procedure TfrmScorePasto.EditButton1Click(Sender: TObject);
begin
  frmPrincipal.vMov :=1;
  frmCadCurral := TfrmCadCurral.Create(nil);
  try
    frmCadCurral.ShowModal;
  finally
    vIdPasto                      := serviceDB.TableCurraisID.AsString;
    edtPasto.Text                 := serviceDB.TableCurraisCODIGO.AsString;
    frmCadCurral.Free;
  end;
end;

procedure TfrmScorePasto.edtFiltroNameChangeTracking(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro := ' AND B.CODIGO LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
 serviceDBN.AbreScorePasto(vFiltro);
end;

procedure TfrmScorePasto.FormShow(Sender: TObject);
begin
  serviceDBN.AbreScorePasto('');
  inherited;
end;

procedure TfrmScorePasto.TreeItemExcluirClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Excluir esse Score?',false);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDBN.SCOREPASTO.Edit;
       serviceDBN.SCOREPASTOSTATUS.AsInteger :=0;
       serviceDBN.SCOREPASTO.ApplyUpdates(-1);
       serviceDBN.AbreScorePasto('');
       MyShowMessage('Registro inativado com Sucesso!',false);
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

procedure TfrmScorePasto.TreeItemNovoClick(Sender: TObject);
begin
 edtPasto.Text      :='';
 edtDataScore.Date  := Date;
 cbxScore.ItemIndex :=-1;
 serviceDBN.SCOREPASTO.Insert;
 MudarAba(tbiCad,Sender);
end;

end.
