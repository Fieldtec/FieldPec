unit UPluviometria;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls,Data.DB,Winapi.Windows;

type
  TfrmPluviometria = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout36: TLayout;
    Rectangle6: TRectangle;
    Layout37: TLayout;
    Label24: TLabel;
    Layout38: TLayout;
    edtPluviometro: TEdit;
    btnBuscaDestino: TEditButton;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label3: TLabel;
    Layout4: TLayout;
    edtData: TDateEdit;
    Label4: TLabel;
    edtTemMin: TEdit;
    Label5: TLabel;
    edtTempMax: TEdit;
    Label6: TLabel;
    edtChuvaMM: TEdit;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label11: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    btnLocalizarAnimais: TRectangle;
    Layout24: TLayout;
    Image23: TImage;
    Label47: TLabel;
    ClearEditButton1: TClearEditButton;
    procedure btnBuscaDestinoClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure btnLocalizarAnimaisClick(Sender: TObject);
    procedure edtTemMinKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtTempMaxKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtChuvaMMKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
  private
    vidPluv:string;
    vConfirma:integer;
  public
    { Public declarations }
  end;

var
  frmPluviometria: TfrmPluviometria;

implementation

{$R *.fmx}

uses ServiceDB2, ServiceRel, UServiceDB, UPluviometro, UPrevisaoForn,
  UPrincipal;

procedure TfrmPluviometria.btnBuscaDestinoClick(Sender: TObject);
begin
  frmPluviometro := TfrmPluviometro.Create(nil);
  try
    frmPluviometro.ShowModal;
  finally
    edtPluviometro.text    := serviceDBN.PLUVIOMETRONOME.AsString;
    vidPluv                := serviceDBN.PLUVIOMETROID.AsString;
    frmPluviometro.Free;
  end;
end;

procedure TfrmPluviometria.btnConfirmaClick(Sender: TObject);
begin
  if edtPluviometro.Text.Length=0 then
  begin
    myShowMessage('Infome o Pluviômetro!',false);
    edtPluviometro.SetFocus;
    Exit;
  end;
  if edtData.Text.Length=0 then
  begin
    myShowMessage('Infome a Data!',false);
    edtData.SetFocus;
    Exit;
  end;
  if edtTemMin.Text.Length=0 then
  begin
    myShowMessage('Infome a Temperatura Mínima!',false);
    edtTemMin.SetFocus;
    Exit;
  end;
  if edtTempMax.Text.Length=0 then
  begin
    myShowMessage('Infome a Temperatura Máxima!',false);
    edtTempMax.SetFocus;
    Exit;
  end;
  if edtChuvaMM.Text.Length=0 then
  begin
    myShowMessage('Infome a Chuva(mm)!',false);
    edtChuvaMM.SetFocus;
    Exit;
  end;
  if(serviceDBN.PLUVIOMETRIA.State=dsInsert) then
   serviceDBN.PLUVIOMETRIAID_USUARIO.AsString := serviceDB.vIdUserLogado
  else
  begin
   serviceDBN.PLUVIOMETRIAID_USUARIO_ALTERACAO.AsString := serviceDB.vIdUserLogado;
   serviceDBN.PLUVIOMETRIADATA_ALTERACAO.AsDateTime     := now;
  end;
   serviceDBN.PLUVIOMETRIAID_PLUVIOMETRO.AsString       := vidPluv;
   serviceDBN.PLUVIOMETRIADATA.AsDateTime               := edtData.DateTime;
   serviceDBN.PLUVIOMETRIATEMP_MIN.AsString             := edtTemMin.Text;
   serviceDBN.PLUVIOMETRIATEMP_MAX.AsString             := edtTempMax.Text;
   serviceDBN.PLUVIOMETRIAMM_CHUVA.AsString             := edtChuvaMM.Text;
  try
    serviceDBN.PLUVIOMETRIA.ApplyUpdates(-1);
    myShowMessage('Dados Cadastrado com Sucesso!',false);
    serviceDBN.AbrePluviometria('');
    MudarAba(tbiMnu,sender);
  except
  on e : Exception do
   myShowMessage('Erro ao Inserir Dados: '+e.Message,false)
  end;
end;
procedure TfrmPluviometria.btnLocalizarAnimaisClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro:='';
 if edtFiltroName.Text.Length>0 then
  vFiltro:= ' AND B.NOME='+edtFiltroName.Text.QuotedString;
 vFiltro := vFiltro+' AND DATA between '+FormatDateTime('mm/dd/yyyy',edtFDataEntDE.DATE).QuotedString+
 ' AND '+FormatDateTime('mm/dd/yyyy',edtFDataEntATE.DATE).QuotedString;
 serviceDBN.AbrePluviometria(vFiltro);
end;

procedure TfrmPluviometria.edtChuvaMMKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmPluviometria.edtTemMinKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmPluviometria.edtTempMaxKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmPluviometria.FormShow(Sender: TObject);
begin
  serviceDBN.AbrePluviometria('');
  inherited;
end;

procedure TfrmPluviometria.TreeItemEditarClick(Sender: TObject);
begin
  serviceDBN.PLUVIOMETRIA.Edit;
  edtPluviometro.Text  := serviceDBN.PLUVIOMETRIAPLUVIOMETRO.AsString;
  vidPluv              := serviceDBN.PLUVIOMETRIAID_PLUVIOMETRO.AsString;
  edtData.Date         := serviceDBN.PLUVIOMETRIADATA.AsDateTime;
  edtTemMin.Text       := serviceDBN.PLUVIOMETRIATEMP_MIN.AsString;
  edtTempMax.Text      := serviceDBN.PLUVIOMETRIATEMP_MAX.AsString;
  edtChuvaMM.Text      := serviceDBN.PLUVIOMETRIAMM_CHUVA.AsString;
  MudarAba(tbiCad,Sender);
end;

procedure TfrmPluviometria.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       serviceDBN.PLUVIOMETRIA.Edit;
       serviceDBN.PLUVIOMETRIASTATUS.AsInteger :=0;
       serviceDBN.PLUVIOMETRIA.ApplyUpdates(-1);
       serviceDBN.AbrePluviometria('');
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

procedure TfrmPluviometria.TreeItemNovoClick(Sender: TObject);
begin
  edtPluviometro.Text:='';
  edtTemMin.Text:='';
  edtTempMax.Text:='';
  edtChuvaMM.Text:='';
  serviceDBN.AbrePluviometria('');
  serviceDBN.PLUVIOMETRIA.Insert;
  MudarAba(tbiCad,Sender);
  inherited;
end;

end.
