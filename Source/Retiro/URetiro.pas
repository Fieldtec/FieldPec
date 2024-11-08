unit URetiro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Winapi.Windows,db;

type
  TfrmCadRetiro = class(TfrmCadPadrao)
    Layout18: TLayout;
    Rectangle7: TRectangle;
    Layout19: TLayout;
    Label12: TLabel;
    Layout20: TLayout;
    edtNome: TEdit;
    Label3: TLabel;
    edtAreaHectares: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtAreaHectaresKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure TreeItemExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadRetiro: TfrmCadRetiro;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal, UMsgDlg;

procedure TfrmCadRetiro.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o nome do Retiro',false);
   Exit;
 end;
 if serviceDB.TableRetiro.State = dsInsert then
 begin
   if not serviceDB.VerificaRetiroExiste(edtNome.Text)then
   begin
     MyShowMessage('Já existe um Retiro com esse nome nessa propriedade!!',false);
     Exit;
   end;
 end;
 serviceDB.TableRetiroID_PROPRIEDADE.AsString := serviceDB.vIdPropriedade;
 serviceDB.TableRetiroID_USUARIO.AsString     := serviceDB.vIdUserLogado;
 serviceDB.TableRetiroNOME.AsString           := edtNome.Text;
 if edtAreaHectares.Text.Length>0 then
  serviceDB.TableRetiroAREA_HECTARES.AsString := edtAreaHectares.Text;
 try
  serviceDB.TableRetiro.ApplyUpdates(-1);
  serviceDB.AbrirRetirosPropriedade;
  tbPrincipal.ActiveTab := tbiMnu;
 except
  on E : Exception do
   myShowMessage('Erro ao inserir Retiro : '+E.Message,false);
 end;
end;

procedure TfrmCadRetiro.edtAreaHectaresKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadRetiro.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDB.TableRetiro.Filtered := false;
   serviceDB.TableRetiro.Filter   := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDB.TableRetiro.Filtered := true;
 end
 else
 begin
   serviceDB.TableRetiro.Filtered := false;
   serviceDB.AbrirRetirosPropriedade;
 end;
end;

procedure TfrmCadRetiro.FormShow(Sender: TObject);
begin
  serviceDB.AbrirRetirosPropriedade;
end;

procedure TfrmCadRetiro.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

procedure TfrmCadRetiro.TreeItemEditarClick(Sender: TObject);
begin
  serviceDB.TableRetiro.Edit;
  edtNome.Text                                 := serviceDB.TableRetiroNOME.AsString;
  edtAreaHectares.Text                         := serviceDB.TableRetiroAREA_HECTARES.AsString;
  serviceDB.TableRetiroID_PROPRIEDADE.AsString := serviceDB.vIdPropriedade;
  serviceDB.TableRetiroID_USUARIO.AsString     := serviceDB.vIdUserLogado;
  inherited;
end;

procedure TfrmCadRetiro.TreeItemExcluirClick(Sender: TObject);
var
 dlg : TFrmmsgDlg;
begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Deseja Realmente Deletar esse Retiro!!';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
       if dlg.vBntConfirmaMsg=1 then
       begin
         serviceDB.InativaRetiro(serviceDB.TableRetiroID.AsString);
         serviceDB.AbrirRetirosPropriedade;
       end
    end);
    Exit;
end;

procedure TfrmCadRetiro.TreeItemNovoClick(Sender: TObject);
begin
  edtNome.Text         :='';
  edtAreaHectares.Text :='';
  serviceDB.TableRetiro.Close;
  serviceDB.TableRetiro.Open;
  serviceDB.TableRetiro.Insert;
  inherited;
end;

end.
