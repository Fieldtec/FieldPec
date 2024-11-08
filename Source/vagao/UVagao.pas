unit UVagao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,DB,
  FMX.ListBox;

type
  TfrmCadVagao = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    Layout4: TLayout;
    edtNome: TEdit;
    Rectangle3: TRectangle;
    Layout1: TLayout;
    Label3: TLabel;
    Layout5: TLayout;
    edtCapacidade: TEdit;
    Layout6: TLayout;
    Rectangle4: TRectangle;
    Label5: TLabel;
    StringGrid2: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layPopUpCad: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Label6: TLabel;
    Image3: TImage;
    Layout10: TLayout;
    btnConfirmar: TRectangle;
    Label7: TLabel;
    btnVoltar: TLabel;
    Layout11: TLayout;
    Layout12: TLayout;
    Label8: TLabel;
    Rectangle5: TRectangle;
    edtNomeRacao: TEdit;
    ClearEditButton1: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    Layout13: TLayout;
    Layout14: TLayout;
    edtBatida: TLabel;
    Rectangle6: TRectangle;
    edtBatidaRacao: TEdit;
    ClearEditButton2: TClearEditButton;
    Layout15: TLayout;
    Rectangle7: TRectangle;
    TreeView1: TTreeView;
    TreeViewItem1: TTreeViewItem;
    Image4: TImage;
    TreeViewItem2: TTreeViewItem;
    Image6: TImage;
    TreeViewItem3: TTreeViewItem;
    Image7: TImage;
    Label9: TLabel;
    edtVolumeMt: TEdit;
    Label10: TLabel;
    cbxRotrmix: TComboBox;
    cbxDsitribuidor: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    edtTempoMistura: TEdit;
    Label13: TLabel;
    edtCodigo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    procedure AbreQry;
  public
    { Public declarations }
  end;

var
  frmCadVagao: TfrmCadVagao;

implementation

{$R *.fmx}

uses ServiceDB2, UCadRacao, USeviceConfinamento, UServiceDB;

procedure TfrmCadVagao.AbreQry;
begin
 serviceDBN.VAGAO.Close;
  serviceDBN.VAGAO.OPen;
  serviceDBN.VagaoRacao.Close;
  serviceDBN.VagaoRacao.OPen;
  serviceDBN.VagaoRacaoAlim.Close;
  serviceDBN.VagaoRacaoAlim.OPen;
end;

procedure TfrmCadVagao.btnConfirmaClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o Nome do vagão!',false);
   Exit;
 end;

 if (edtCapacidade.Text.Length=0) or (edtCapacidade.Text='0') then
 begin
   MyShowMessage('Informe a capacidade vagão!',false);
   Exit;
 end;

 serviceDBN.VAGAONOME.AsString       := edtNome.Text;
 serviceDBN.VAGAOCAPACIDADE.AsString := edtCapacidade.Text;
 serviceDBN.VAGAOID_USUARIO.AsString := serviceDB.vIdUserLogado;
 serviceDBN.VAGAOVOLUME.AsString     := edtVolumeMt.Text;
 serviceDBN.VAGAOMIX.AsInteger       := cbxRotrmix.ItemIndex;
 serviceDBN.VAGAODISTRIBUIDOR.AsInteger  := cbxDsitribuidor.ItemIndex;
 serviceDBN.VAGAOTEMPO_MISTURA.AsString  := edtTempoMistura.Text;
 serviceDBN.VAGAOCODIGO.AsString         := edtCodigo.Text;
 try
   serviceDBN.VAGAO.ApplyUpdates(-1);
   AbreQry;
   MyShowMessage('Vagão cadastrado com sucesso!',false);
   MudarAba(tbiMnu,SENDER)
 except
 on e : Exception do
  MyShowMessage('Erro ao Inserir Usuario: '+e.Message,FALSE)
 end;
end;

procedure TfrmCadVagao.btnConfirmarClick(Sender: TObject);
begin
  if edtNomeRacao.Text.Length =0 then
  begin
    MyShowMessage('Informe a ração!',false);
    Exit;
  end;
  if (edtBatidaRacao.Text.Length =0) or (StrToInt(edtBatidaRacao.Text)<=0) then
  begin
    MyShowMessage('Informe a Batida!',false);
    Exit;
  end;
  serviceDBN.VagaoRacaoID_VAGAO.AsString   := serviceDBN.VAGAOID.AsString;
  serviceDBN.VagaoRacaoID_RECEITA.AsString := edtNomeRacao.TagString;
  serviceDBN.VagaoRacaoID_USUARIO.AsString := serviceDB.vIdUserLogado;
  serviceDBN.VagaoRacaoBATIDA.AsString     := edtBatidaRacao.Text;
  try
   serviceDBN.VagaoRacao.ApplyUpdates(-1);
   serviceDBN.GerarInsumosRacaoVagao(edtNomeRacao.TagString, serviceDBN.VAGAOID.AsString,
    edtBatidaRacao.Text);
   MyShowMessage('Ração Adicionada com sucesso!',false);
   AbreQry;
   layPopUpCad.Visible := false;
  except
    on E : Exception do
     begin
       MyShowMessage('Exception message = '+E.Message,false);
     end;
  end;
end;

procedure TfrmCadVagao.btnVoltarClick(Sender: TObject);
begin
 layPopUpCad.Visible := false;
end;

procedure TfrmCadVagao.FormShow(Sender: TObject);
begin
  inherited;
  layPopUpCad.Visible := false;
  AbreQry;
end;

procedure TfrmCadVagao.Image3Click(Sender: TObject);
begin
 layPopUpCad.Visible := false;
end;

procedure TfrmCadVagao.SearchEditButton1Click(Sender: TObject);
begin
  frmCadRacao := TfrmCadRacao.Create(Self);
  try
    frmCadRacao.ShowModal;
   finally
   begin
    edtNomeRacao.Text      := ServiceConf.TRacaoNOME.AsString;
    edtNomeRacao.TagString := ServiceConf.TRacaoid.AsString;
    frmCadRacao.Free;
   end;
  end;
end;

procedure TfrmCadVagao.TreeItemEditarClick(Sender: TObject);
begin
  inherited;
  edtNome.Text       := serviceDBN.VAGAONOME.AsString;
  edtCapacidade.Text := serviceDBN.VAGAOCAPACIDADE.AsString;

  edtVolumeMt.Text          := serviceDBN.VAGAOVOLUME.AsString;
  if serviceDBN.VAGAOMIX.AsString.Length>0 then
   cbxRotrmix.ItemIndex      := serviceDBN.VAGAOMIX.AsInteger
  ELSE
   cbxRotrmix.ItemIndex      := 0;

  if serviceDBN.VAGAODISTRIBUIDOR.AsString.Length>0 then
    cbxDsitribuidor.ItemIndex := serviceDBN.VAGAODISTRIBUIDOR.AsInteger
  ELSE
      cbxDsitribuidor.ItemIndex := 0;

  edtTempoMistura.Text      := serviceDBN.VAGAOTEMPO_MISTURA.AsString;
  edtCodigo.Text            := serviceDBN.VAGAOCODIGO.AsString;

  serviceDBN.VAGAO.Edit;
  MudarAba(tbiCad,SENDER);
end;

procedure TfrmCadVagao.TreeItemExcluirClick(Sender: TObject);
begin
  begin
    MyShowMessage('Deseja Realmente deletar esse Pasto?',true);
    case dlg.vBntConfirmaMsg of
    1:
    begin
        try
         serviceDBN.VAGAO.Edit;
         serviceDBN.VAGAOSTATUS.AsInteger :=0;
         serviceDBN.VAGAO.ApplyUpdates(-1);
         MyShowMessage('Dados deletados com Sucesso!',false);
         AbreQry;
        except
        on E : Exception do
         begin
           MyShowMessage('Exception class name = '+E.ClassName,false);
           MyShowMessage('Exception message = '+E.Message,false);
         end;
        end;
    end;
    2:
     begin
       MyShowMessage('Operação Abortada',false);
     end;
    end;
  end;
end;

procedure TfrmCadVagao.TreeItemNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.Text :='';
  edtCapacidade.Text :='';

  edtVolumeMt.Text          := '';
  cbxRotrmix.ItemIndex      := 0;
  cbxDsitribuidor.ItemIndex := 0;
  edtTempoMistura.Text      := '';
  edtCodigo.Text            :='';

  serviceDBN.VAGAO.Insert;
  MudarAba(tbiCad,SENDER);
end;

procedure TfrmCadVagao.TreeViewItem1Click(Sender: TObject);
begin
 if serviceDBN.VAGAOID.AsString.Length=0 then
 begin
   MyShowMessage('Selecione o vagao!',false);
   Exit;
 end;
 edtBatidaRacao.Text :='0';
 edtNomeRacao.Text   := '';
 serviceDBN.VagaoRacao.Insert;
 layPopUpCad.Visible := true;
end;

procedure TfrmCadVagao.TreeViewItem2Click(Sender: TObject);
begin
if serviceDBN.VAGAOID.AsString.Length=0 then
 begin
   MyShowMessage('Selecione o vagao!',false);
   Exit;
 end;
 edtNomeRacao.Text      := serviceDBN.VagaoRacaoNOME.AsString;
 edtNomeRacao.TagString := serviceDBN.VagaoRacaoID_RECEITA.AsString;
 edtBatidaRacao.Text    :=  serviceDBN.VagaoRacaoBATIDA.AsString;
 serviceDBN.VagaoRacao.Edit;
 layPopUpCad.Visible := true;
end;

procedure TfrmCadVagao.TreeViewItem3Click(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente deletar esse Pasto?',true);
    case dlg.vBntConfirmaMsg of
    1:
    begin
        try
         serviceDBN.VagaoRacao.Edit;
         serviceDBN.VagaoRacaoSTATUS.AsInteger :=0;
         serviceDBN.VagaoRacao.ApplyUpdates(-1);
         MyShowMessage('Dados deletados com Sucesso!',false);
         AbreQry;
        except
        on E : Exception do
         begin
           MyShowMessage('Exception class name = '+E.ClassName,false);
           MyShowMessage('Exception message = '+E.Message,false);
         end;
        end;
    end;
    2:
     begin
       MyShowMessage('Operação Abortada',false);
     end;
    end;
end;

end.
