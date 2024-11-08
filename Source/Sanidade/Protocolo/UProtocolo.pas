unit UProtocolo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,DB,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox;

type
  TfrmCadProtocolo = class(TfrmCadPadrao)
    Layout1: TLayout;
    Label3: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    TreeView1: TTreeView;
    TreeViewItem1: TTreeViewItem;
    Image3: TImage;
    TreeViewItem2: TTreeViewItem;
    Image4: TImage;
    TreeViewItem3: TTreeViewItem;
    Image6: TImage;
    StringGrid2: TStringGrid;
    layNovoProtocolo: TLayout;
    Rectangle3: TRectangle;
    Layout7: TLayout;
    Label5: TLabel;
    Layout8: TLayout;
    Rectangle4: TRectangle;
    Layout6: TLayout;
    Label4: TLabel;
    Layout9: TLayout;
    edtNome: TEdit;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Layout10: TLayout;
    ShadowEffect1: TShadowEffect;
    Rectangle7: TRectangle;
    Layout11: TLayout;
    Image7: TImage;
    Label6: TLabel;
    ShadowEffect2: TShadowEffect;
    Rectangle8: TRectangle;
    Layout12: TLayout;
    Image8: TImage;
    Label7: TLabel;
    ShadowEffect3: TShadowEffect;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Rectangle10: TRectangle;
    Layout5: TLayout;
    Label8: TLabel;
    Layout13: TLayout;
    cbxTipoProtocolo: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
  private
    { Private declarations }
  public
    vProtocoloSelecionado : integer;
  end;

var
  frmCadProtocolo: TfrmCadProtocolo;

implementation

{$R *.fmx}

uses UServiceDB, UFarmacos, UMsgDlg;

procedure TfrmCadProtocolo.btnCancelarClick(Sender: TObject);
begin
  layNovoProtocolo.Visible := false;
end;

procedure TfrmCadProtocolo.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length = 0 then
 begin
   MyShowMessage('Informe o Nome!',false);
   Exit;
 end;
 if cbxTipoProtocolo.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo!',false);
   Exit;
 end;
 if (serviceDB.TableProtocolo.State=dsInsert) then
  if not serviceDB.VerificaProtocoloFarmaco(edtNome.Text)then
  begin
   MyShowMessage('Já existe um protocolo com esse nome',false);
   Exit;
  end;
  serviceDB.TableProtocoloNOME.AsString        := edtNome.Text;
  serviceDB.TableProtocoloTIPO.AsInteger       := cbxTipoProtocolo.ItemIndex+1;
  serviceDB.TableProtocoloID_USUARIO.AsString  := serviceDB.vIdUserLogado;
  try
   serviceDB.TableProtocolo.ApplyUpdates(-1);
   MyShowMessage('Cadastro atualizado com sucesso!',false);
   serviceDB.TableProtocolo.Close;
   serviceDB.TableProtocolo.Open();
   serviceDB.TableProtocoloFarmacos.Close;
   serviceDB.TableProtocoloFarmacos.Open;
   layNovoProtocolo.Visible := false;
   Treemnu.Enabled          := true;
   TreeView1.Enabled        := true;
  except
   on E : Exception do
    MYShowMessage(E.ClassName+' Error ao Inserir Farmaco : '+E.Message,false);
  end;
end;

procedure TfrmCadProtocolo.FormShow(Sender: TObject);
begin
  vProtocoloSelecionado    :=0;
  TreeView1.Enabled        := false;
  layNovoProtocolo.Visible := false;
  serviceDB.TableProtocolo.Close;
  serviceDB.TableProtocolo.Open;
  serviceDB.TableProtocoloFarmacos.Open;
end;

procedure TfrmCadProtocolo.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  if serviceDB.TableProtocolo.RecordCount>0 then
   TreeView1.Enabled        := true;
end;

procedure TfrmCadProtocolo.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  vProtocoloSelecionado :=1;
  Close;
end;

procedure TfrmCadProtocolo.TreeItemEditarClick(Sender: TObject);
begin
  Treemnu.Enabled   := false;
  TreeView1.Enabled := false;
  edtNome.Text      := serviceDB.TableProtocoloNOME.AsString;
  if serviceDB.TableProtocoloTIPO.AsInteger>0 then
   cbxTipoProtocolo.ItemIndex :=serviceDB.TableProtocoloTIPO.AsInteger-1;
  serviceDB.TableProtocolo.Edit;
  layNovoProtocolo.Visible := true;
end;

procedure TfrmCadProtocolo.TreeItemExcluirClick(Sender: TObject);
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
       serviceDB.TableProtocolo.Edit;
       serviceDB.TableProtocoloSTATUS.AsInteger :=0;
       serviceDB.TableProtocolo.ApplyUpdates(-1);
       serviceDB.TableProtocolo.Close;
       serviceDB.TableProtocolo.Open;
       serviceDB.TableProtocoloFarmacos.Close;
       serviceDB.TableProtocoloFarmacos.Open;
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

procedure TfrmCadProtocolo.TreeItemNovoClick(Sender: TObject);
begin
  Treemnu.Enabled   := false;
  TreeView1.Enabled := false;
  edtNome.Text      :='';
  serviceDB.TableProtocolo.Close;
  serviceDB.TableProtocolo.Open;
  serviceDB.TableProtocolo.Insert;
  layNovoProtocolo.Visible := true;
end;

procedure TfrmCadProtocolo.TreeViewItem1Click(Sender: TObject);
begin
  frmCadFarmaco := TfrmCadFarmaco.Create(Self);
  try
    frmCadFarmaco.ShowModal;
    if frmCadFarmaco.vFarmacoSelecionado=1 then
    begin
      if not serviceDB.VerificaProtocoloFarmacoExiste(serviceDB.TableFarmacosID.AsString,
      serviceDB.TableProtocoloID.AsString) then
      begin
        MyShowMessage('Esse farmaco ja foi adicionado ao protocolo selecionado!!',false);
        Exit;
      end
      else
      begin
       serviceDB.InsereFarmacoProtocolo(
        serviceDB.TableProtocoloID.AsString,
        serviceDB.TableFarmacosID.AsString,
        serviceDB.TableFarmacosTIPO_APICACAO.AsString,
        serviceDB.TableFarmacosML_DOSE_FIXA.AsString,
        serviceDB.TableFarmacosML_DOSE_PV.AsString,
        serviceDB.TableFarmacosKG_DOSE_PV.AsString,
        serviceDB.TableFarmacosCARENCIA_DIA.AsString);
        serviceDB.TableProtocoloFarmacos.Close;
        serviceDB.TableProtocoloFarmacos.Open;
      end;
    end;
  finally
    frmCadFarmaco.Free;
  end;
end;

procedure TfrmCadProtocolo.TreeViewItem3Click(Sender: TObject);
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
       serviceDB.TableProtocoloFarmacos.Edit;
       serviceDB.TableProtocoloFarmacosSTATUS.AsInteger :=0;
       serviceDB.TableProtocoloFarmacos.ApplyUpdates(-1);
       serviceDB.TableProtocoloFarmacos.Close;
       serviceDB.TableProtocoloFarmacos.Open;
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

end.
