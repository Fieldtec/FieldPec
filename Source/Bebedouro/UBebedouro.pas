unit UBebedouro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Winapi.Windows,Data.DB, FMX.DateTimeCtrls, FMX.Memo;

type
  TfrmBebedouro = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout35: TLayout;
    Rectangle13: TRectangle;
    Layout36: TLayout;
    Layout37: TLayout;
    edtPasto: TEdit;
    btnBuscarPasto: TEditButton;
    Layout9: TLayout;
    Rectangle3: TRectangle;
    Layout10: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Layout11: TLayout;
    edtIdentificacao: TEdit;
    edtVolume: TEdit;
    EdtVazao: TEdit;
    edtFrequenciLimpeza: TEdit;
    ClearEditButton1: TClearEditButton;
    Layout1: TLayout;
    Label20: TLabel;
    chkPasto: TRadioButton;
    chkConfinamento: TRadioButton;
    TreeHistLimpeza: TTreeViewItem;
    Image3: TImage;
    TbiHist: TTabItem;
    Layout3: TLayout;
    Rectangle2: TRectangle;
    Label3: TLabel;
    Layout4: TLayout;
    Image4: TImage;
    GroupBox2: TGroupBox;
    etdPastoFiltro: TEdit;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label7: TLabel;
    edtFDataEntDE: TDateEdit;
    Label10: TLabel;
    btnLocalizarAnimais: TRectangle;
    Layout24: TLayout;
    Image23: TImage;
    Label47: TLabel;
    StringGrid2: TStringGrid;
    Layout5: TLayout;
    btnNovaLimpeza: TRectangle;
    Layout6: TLayout;
    Image6: TImage;
    Label8: TLabel;
    btnExcluirLimpeza: TRectangle;
    Layout7: TLayout;
    Image7: TImage;
    Label9: TLabel;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    layNovaLimpeza: TLayout;
    ToolBar1: TToolBar;
    Rectangle4: TRectangle;
    Label13: TLabel;
    Layout12: TLayout;
    Layout13: TLayout;
    Rectangle5: TRectangle;
    Layout14: TLayout;
    Label14: TLabel;
    Layout15: TLayout;
    edtBebedouroNovo: TEdit;
    EditButton1: TEditButton;
    Layout16: TLayout;
    Rectangle6: TRectangle;
    Layout17: TLayout;
    Label15: TLabel;
    Layout18: TLayout;
    edtResponsavel: TEdit;
    EditButton2: TEditButton;
    Layout19: TLayout;
    Rectangle7: TRectangle;
    Layout20: TLayout;
    Label16: TLabel;
    Layout21: TLayout;
    edtDataLimpeza: TDateEdit;
    Label17: TLabel;
    edtHoraLimpeza: TTimeEdit;
    Layout22: TLayout;
    btnNovaLeitura: TRectangle;
    Layout23: TLayout;
    Image9: TImage;
    Label18: TLabel;
    Rectangle9: TRectangle;
    Layout25: TLayout;
    Image10: TImage;
    Label19: TLabel;
    Layout26: TLayout;
    Rectangle10: TRectangle;
    Layout27: TLayout;
    Label21: TLabel;
    Layout28: TLayout;
    edtObservacao: TMemo;
    ClearEditButton2: TClearEditButton;
    ClearEditButton3: TClearEditButton;
    procedure btnBuscarPastoClick(Sender: TObject);
    procedure edtVolumeKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtFrequenciLimpezaKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure EditButton2Click(Sender: TObject);
    procedure btnNovaLeituraClick(Sender: TObject);
    procedure btnNovaLimpezaClick(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
    procedure TreeHistLimpezaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLocalizarAnimaisClick(Sender: TObject);
  private
    var
     vidPasto,vIdBebedouro,vIdResponsavel:string;
     vNovaLeitura:integer;
  public
    { Public declarations }
  end;

var
  frmBebedouro: TfrmBebedouro;

implementation

{$R *.fmx}

uses ServiceDB2, ServiceRel, UPrincipal, UServiceDB, UCurrais,
  UCurralConfinamento, UCadUsers;

procedure TfrmBebedouro.btnBuscarPastoClick(Sender: TObject);
begin
  if (not chkPasto.IsChecked) and (not chkConfinamento.IsChecked) then
  begin
    MyShowMessage('Selecione o Tipo(Pasto ou Confinamento',false);
    Exit;
  end;
  if chkPasto.IsChecked then
  begin
    frmPrincipal.vMov:=1;
    frmCadCurral := TfrmCadCurral.Create(Self);
    try
      frmCadCurral.ShowModal;
    finally
      edtPasto.Text := serviceDB.TableCurraisCODIGO.AsString;
      vidPasto      := serviceDB.TableCurraisID.AsString;
      frmCadCurral.Free;
    end;
  end;
  if chkConfinamento.IsChecked then
  begin
    frmCadCurralConf := TfrmCadCurralConf.Create(Self);
    try
      frmCadCurralConf.ShowModal;
    finally
      edtPasto.Text := serviceDB.TableCurraisCODIGO.AsString;
      vidPasto      := serviceDB.TableCurraisID.AsString;
      frmCadCurralConf.Free;
    end;
  end;
end;

procedure TfrmBebedouro.btnCancelarClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       serviceDBN.DeletaLimpezaBebedouro(serviceDBN.QRYLIMPEZABEBEDOUROID.AsString);
       myShowMessage('Registro Deletado com Sucesso!',false);
       serviceDBN.AbreLimpezaBebedouro('');
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

procedure TfrmBebedouro.btnConfirmaClick(Sender: TObject);
begin
  if edtPasto.Text.Length=0 then
  begin
    MyShowMessage('Informe o Pasto!!',false);
    edtPasto.SetFocus;
    Exit;
  end;
  if edtFrequenciLimpeza.Text.Length=0 then
  begin
    MyShowMessage('Informe a Frequência!!',false);
    edtFrequenciLimpeza.SetFocus;
    Exit;
  end;
  if(serviceDBN.BEBEDOURO.State=dsInsert) then
   serviceDBN.BEBEDOUROID_USUARIO.AsString := serviceDB.vIdUserLogado
  else
  begin
   serviceDBN.BEBEDOUROID_USUARIO_ALTERACAO.AsString := serviceDB.vIdUserLogado;
   serviceDBN.BEBEDOURODATA_ALTERACAO.AsDateTime     := now;
  end;
   serviceDBN.BEBEDOUROID_PASTO.AsString             := vidPasto;

  if edtIdentificacao.Text.Length>0 then
   serviceDBN.BEBEDOUROIDENTIFICACAO.AsString        := edtIdentificacao.Text;

  if edtVolume.Text.Length>0 then
   serviceDBN.BEBEDOUROVOLUME.AsString               := edtVolume.Text;

  if EdtVazao.Text.Length>0 then
   serviceDBN.BEBEDOUROVAZAO.AsString               := EdtVazao.Text;
  serviceDBN.BEBEDOUROFREQ_LIMPEZA.AsString         := edtFrequenciLimpeza.Text;
  serviceDBN.BEBEDOUROID_PASTO.AsString             := vidPasto;
  try
    serviceDBN.BEBEDOURO.ApplyUpdates(-1);
    myShowMessage('Dados Cadastrado com Sucesso!',false);
    serviceDBN.AbreBebedouro('');
    MudarAba(tbiMnu,sender);
  except
  on e : Exception do
   myShowMessage('Erro ao Inserir Dados: '+e.Message,false)
  end;
end;

procedure TfrmBebedouro.btnLocalizarAnimaisClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro:='';
 if etdPastoFiltro.Text.Length>0 then
   vFiltro:=' and c.codigo ='+QuotedStr(etdPastoFiltro.Text);
 vFiltro:= vFiltro+' and a.data between '+FormatDateTime('mm/dd/yyyy',edtFDataEntDE.DATE).QuotedString+
 ' AND '+FormatDateTime('mm/dd/yyyy',edtFDataEntATE.DATE).QuotedString;
 serviceDBN.AbreLimpezaBebedouro(vFiltro);
end;

procedure TfrmBebedouro.btnNovaLeituraClick(Sender: TObject);
begin
  if edtBebedouroNovo.Text.Length=0 then
  begin
    MyShowMessage('Informe o Bebedouro!!',false);
    edtBebedouroNovo.SetFocus;
    Exit;
  end;
  if edtResponsavel.Text.Length=0 then
  begin
    MyShowMessage('Informe o Responsavel!!',false);
    edtResponsavel.SetFocus;
    Exit;
  end;
  serviceDBN.LIMPEZABEBEDOUROID_USUARIO.AsString      := serviceDB.vIdUserLogado;
  serviceDBN.LIMPEZABEBEDOUROID_RESPOPNSAVEL.AsString := vIdResponsavel;
  serviceDBN.LIMPEZABEBEDOUROID_BEBEDOURO.AsString    := vIdBebedouro;
  serviceDBN.LIMPEZABEBEDOURODATA.AsDateTime          := edtDataLimpeza.Date;
  serviceDBN.LIMPEZABEBEDOUROHORA.AsDateTime          := edtHoraLimpeza.Time;
  serviceDBN.LIMPEZABEBEDOUROOBSERVACAO.AsString      := edtObservacao.Text;
  try
    serviceDBN.LIMPEZABEBEDOURO.ApplyUpdates(-1);
    myShowMessage('Limpeza Cadastrado com Sucesso!',false);
    serviceDBN.AbreLimpezaBebedouro('');
    layNovaLimpeza.Visible := false;
  except
  on e : Exception do
   myShowMessage('Erro ao Inserir Dados: '+e.Message,false)
  end;
end;

procedure TfrmBebedouro.btnNovaLimpezaClick(Sender: TObject);
begin
 edtBebedouroNovo.Text   :='';
 edtResponsavel.Text     :='';
 edtObservacao.Lines.Clear;
 serviceDBN.LIMPEZABEBEDOURO.Close;
 serviceDBN.LIMPEZABEBEDOURO.Open;
 serviceDBN.LIMPEZABEBEDOURO.Insert;
 layNovaLimpeza.Visible  := true;
end;

procedure TfrmBebedouro.EditButton1Click(Sender: TObject);
begin
  vNovaLeitura :=1;
  MudarAba(tbiMnu,sender);
end;

procedure TfrmBebedouro.EditButton2Click(Sender: TObject);
begin
 frmCadUsers := TfrmCadUsers.Create(nil);
  try
    frmCadUsers.ShowModal;
  finally
    edtResponsavel.text   := serviceDB.TableUsersNAME.AsString;
    vIdResponsavel        := serviceDB.TableUsersID.AsString;
    frmCadUsers.Free;
  end;
end;

procedure TfrmBebedouro.edtFiltroNameChangeTracking(Sender: TObject);
begin
 if edtFiltroName.Text.Length>0 then
 begin
   serviceDBN.BEBEDOURO.Filtered := false;
   serviceDBN.BEBEDOURO.Filter   := 'PASTO LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   serviceDBN.BEBEDOURO.Filtered := true;
 end
 else
 begin
   serviceDBN.BEBEDOURO.Filtered := false;
   serviceDBN.BEBEDOURO.Close;
   serviceDBN.BEBEDOURO.Open;
 end;
end;

procedure TfrmBebedouro.edtFrequenciLimpezaKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmBebedouro.edtVolumeKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmBebedouro.FormShow(Sender: TObject);
begin
  layNovaLimpeza.Visible  := false;
  serviceDBN.AbreBebedouro('');
  inherited;
end;

procedure TfrmBebedouro.Rectangle9Click(Sender: TObject);
begin
 layNovaLimpeza.Visible := false;
end;

procedure TfrmBebedouro.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  if vNovaLeitura=1 then
  begin
    edtBebedouroNovo.Text := serviceDBN.BEBEDOUROPASTO.AsString;
    vIdBebedouro          := serviceDBN.BEBEDOUROID.AsString;
    tbPrincipal.ActiveTab := TbiHist;
    vNovaLeitura:=0;
  end;
end;

procedure TfrmBebedouro.TreeHistLimpezaClick(Sender: TObject);
begin
 serviceDBN.AbreLimpezaBebedouro('');
 MudarAba(TbiHist,Sender);
end;

procedure TfrmBebedouro.TreeItemEditarClick(Sender: TObject);
begin
  serviceDBN.BEBEDOURO.Edit;
  edtPasto.Text             := serviceDBN.BEBEDOUROPASTO.AsString;
  vidPasto                  := serviceDBN.BEBEDOUROID_PASTO.AsString;
  edtIdentificacao.Text     := serviceDBN.BEBEDOUROIDENTIFICACAO.AsString;
  edtVolume.Text            := serviceDBN.BEBEDOUROVOLUME.AsString;
  EdtVazao.Text             := serviceDBN.BEBEDOUROVAZAO.AsString;
  edtFrequenciLimpeza.Text  := serviceDBN.BEBEDOUROFREQ_LIMPEZA.AsString;
  MudarAba(tbiCad,Sender);
end;

procedure TfrmBebedouro.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       serviceDBN.BEBEDOURO.Edit;
       serviceDBN.BEBEDOUROSTATUS.AsInteger :=0;
       serviceDBN.BEBEDOURO.ApplyUpdates(-1);
       serviceDBN.AbreBebedouro('');
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

procedure TfrmBebedouro.TreeItemNovoClick(Sender: TObject);
begin
 serviceDB.qryConfigPadrao.Close;
 serviceDB.qryConfigPadrao.Open;
 serviceDB.qryConfigPadrao.Filtered := false;
 serviceDB.qryConfigPadrao.Filter   := 'ID_PROPRIEDADE='+serviceDB.vIdPropriedade;
 serviceDB.qryConfigPadrao.Filtered := true;
 edtFrequenciLimpeza.Text           := serviceDB.qryConfigPadraoFREQ_LIMPA_BEBEDOURO.AsString;

 edtPasto.Text:='';
 EdtVazao.Text:='';
 edtIdentificacao.Text:='';
 edtVolume.Text:='';

 serviceDBN.AbrePluviometria('');
 serviceDBN.BEBEDOURO.Insert;
 MudarAba(tbiCad,Sender);
 inherited;
end;

end.
