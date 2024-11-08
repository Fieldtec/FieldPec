unit UBaixaManualFarmaco;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.EditBox, FMX.NumberBox,
  FMX.DateTimeCtrls, FMX.ListBox, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope,Winapi.Windows,DB;

type
  TfrmBaixaManualFarmaco = class(TfrmCadPadrao)
    Layout8: TLayout;
    Rectangle3: TRectangle;
    Layout9: TLayout;
    Layout10: TLayout;
    Label7: TLabel;
    Layout11: TLayout;
    Label15: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Layout12: TLayout;
    ComboBox2: TComboBox;
    Layout13: TLayout;
    edtFarmaco: TEdit;
    EditButton1: TEditButton;
    edtDataSaida: TDateEdit;
    cbxTipoEmbalagem: TComboBox;
    EdtEmbalagemML: TNumberBox;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Label4: TLabel;
    Layout5: TLayout;
    Label13: TLabel;
    Layout6: TLayout;
    Layout7: TLayout;
    edtTotalUni: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure EditButton1Click(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure EdtEmbalagemMLKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtTotalUniKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    vIdFarmaco:string;
  end;

var
  frmBaixaManualFarmaco: TfrmBaixaManualFarmaco;

implementation

{$R *.fmx}

uses UFarmacos, UServiceDB, UPrincipal;

procedure TfrmBaixaManualFarmaco.btnConfirmaClick(Sender: TObject);
begin
  if edtFarmaco.Text.Length=0 then
  begin
    MyShowMessage('Informe o Farmaco',false);
    Exit;
  end;
  if cbxTipoEmbalagem.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o Tipo de Embalagem',false);
    Exit;
  end;
  if cbxTipoEmbalagem.ItemIndex=0 then
  begin
    if (EdtEmbalagemML.Text.Length=0) or (EdtEmbalagemML.Text='0,00')  then
    begin
     MyShowMessage('Informe o ML da Embalagem',false);
     Exit;
    end;
  end;
  if(edtFarmaco.Text.Length=0) or (edtFarmaco.Text='0,00') then
  begin
    MyShowMessage('Informe o Total de Unidade a ser baixada',false);
    Exit;
  end;
  if serviceDB.BAIXA_MANUAL_FARMACO.State= dsInsert then
  begin
   serviceDB.BAIXA_MANUAL_FARMACOID_USUARIO.AsString      := serviceDB.vIdUserLogado;
   serviceDB.BAIXA_MANUAL_FARMACOID_PROPRIEDADE.AsString  := serviceDB.vIdPropriedade;
  end;
  if serviceDB.BAIXA_MANUAL_FARMACO.State= dsEdit then
  begin
   serviceDB.BAIXA_MANUAL_FARMACODATA_ULTIMA_ALTERACAO.AsDateTime      := now;
   serviceDB.BAIXA_MANUAL_FARMACOID_USUARIO_ALTERACAO.AsString         := serviceDB.vIdUserLogado;
  end;
  serviceDB.BAIXA_MANUAL_FARMACOID_FARMACO.AsString      := vIdFarmaco;
  serviceDB.BAIXA_MANUAL_FARMACOTIPO_EMBALAGEM.AsInteger := cbxTipoEmbalagem.ItemIndex;
  serviceDB.BAIXA_MANUAL_FARMACOML_EMBALAGEM.AsString    := EdtEmbalagemML.Text;
  serviceDB.BAIXA_MANUAL_FARMACOTOTAL_UNIDADE.AsString   := edtTotalUni.Text;
  serviceDB.BAIXA_MANUAL_FARMACODATA_SAIDA.AsDateTime    := edtDataSaida.Date;
  try
    serviceDB.BAIXA_MANUAL_FARMACO.ApplyUpdates(-1);
    serviceDB.AbreBaixaManualFarmaco(serviceDB.vIdPropriedade,'');
  except
   on E : Exception do
    MYShowMessage(E.ClassName+' Error ao Inserir Baixa : '+E.Message,false);
  end;
  MudarAba(tbiMnu,sender);
end;

procedure TfrmBaixaManualFarmaco.EditButton1Click(Sender: TObject);
begin
  frmCadFarmaco := TfrmCadFarmaco.Create(Self);
  try
    frmCadFarmaco.ShowModal;
    if frmCadFarmaco.vFarmacoSelecionado=1 then
    begin
      vIdFarmaco      := serviceDB.TableFarmacosID.AsString;
      edtFarmaco.Text := serviceDB.TableFarmacosNOME.AsString;
    end;
  finally
    frmCadFarmaco.Free;
  end;
end;

procedure TfrmBaixaManualFarmaco.EdtEmbalagemMLKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmBaixaManualFarmaco.edtFiltroNameChangeTracking(Sender: TObject);
var
 vFiltro:string;
begin
 if edtFiltroName.Text.Length>0 then
  vFiltro := ' and f.nome like '+QuotedStr('%'+edtFiltroName.Text+'%');
 serviceDB.AbreBaixaManualFarmaco(serviceDB.VidPropriedade,vFiltro);
end;

procedure TfrmBaixaManualFarmaco.edtTotalUniKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmBaixaManualFarmaco.FormShow(Sender: TObject);
begin
  inherited;
  serviceDB.AbreBaixaManualFarmaco(serviceDB.VidPropriedade,'');
end;

procedure TfrmBaixaManualFarmaco.TreeItemEditarClick(Sender: TObject);
begin
 serviceDB.BAIXA_MANUAL_FARMACO.Edit;
  vIdFarmaco                 := serviceDB.BAIXA_MANUAL_FARMACOID_FARMACO.AsString;
  edtFarmaco.Text            := serviceDB.BAIXA_MANUAL_FARMACOFARMACONOME.AsString;
  cbxTipoEmbalagem.ItemIndex := serviceDB.BAIXA_MANUAL_FARMACOTIPO_EMBALAGEM.AsInteger;
  EdtEmbalagemML.Text        := serviceDB.BAIXA_MANUAL_FARMACOML_EMBALAGEM.AsString;
  edtTotalUni.Text           := serviceDB.BAIXA_MANUAL_FARMACOTOTAL_UNIDADE.AsString;
  inherited;
end;

procedure TfrmBaixaManualFarmaco.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente excluir esse registro?',true);
  if frmprincipal.vConfirma=1  then
  begin
    try
     serviceDB.BAIXA_MANUAL_FARMACO.Edit;
     serviceDB.BAIXA_MANUAL_FARMACOSTATUS.AsInteger :=0;
     serviceDB.BAIXA_MANUAL_FARMACO.ApplyUpdates(-1);
     serviceDB.AbreBaixaManualFarmaco(serviceDB.vIdPropriedade,'');
     ShowMessage('Registro excluido com Sucesso!');
    except
    on E : Exception do
     begin
       ShowMessage('Exception class name = '+E.ClassName);
       ShowMessage('Exception message = '+E.Message);
     end;
    end;
  end;
end;

procedure TfrmBaixaManualFarmaco.TreeItemNovoClick(Sender: TObject);
begin
  edtTotalUni.Text           := '';
  cbxTipoEmbalagem.ItemIndex := -1;
  edtFarmaco.Text            :='';
  serviceDB.BAIXA_MANUAL_FARMACO.Close;
  serviceDB.BAIXA_MANUAL_FARMACO.Open;
  serviceDB.BAIXA_MANUAL_FARMACO.Insert;
  inherited;
end;

end.
