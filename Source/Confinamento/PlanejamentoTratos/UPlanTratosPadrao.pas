unit UPlanTratosPadrao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,db,
  FMX.DateTimeCtrls;

type
  TfrmCadPlanTratosPadrao = class(TfrmCadPadrao)
    layNovoAlimento: TLayout;
    Rectangle6: TRectangle;
    Layout15: TLayout;
    C: TRectangle;
    Layout19: TLayout;
    Edit4: TEdit;
    edtPercent: TEdit;
    Layout18: TLayout;
    Label17: TLabel;
    Label18: TLabel;
    Layout20: TLayout;
    btnAddAlimento: TRectangle;
    Layout21: TLayout;
    Image8: TImage;
    Label20: TLabel;
    edtCancelaAlimento: TRectangle;
    Layout22: TLayout;
    Image9: TImage;
    Label21: TLabel;
    Rectangle8: TRectangle;
    Layout23: TLayout;
    Label9: TLabel;
    Label10: TLabel;
    Layout24: TLayout;
    Edit1: TEdit;
    edtTrato: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    Label3: TLabel;
    lblTotalTratos: TLabel;
    Label4: TLabel;
    lblPercentTrato: TLabel;
    Label5: TLabel;
    edtHora: TTimeEdit;
    TreeAtualizarLotes: TTreeViewItem;
    Image3: TImage;
    procedure edtPercentKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure StringGrid1EditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtCancelaAlimentoClick(Sender: TObject);
    procedure btnAddAlimentoClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure TreeAtualizarLotesClick(Sender: TObject);
  private
    vIrregular:string;
  public
    procedure SomarColunasGrid;
  end;

var
  frmCadPlanTratosPadrao: TfrmCadPlanTratosPadrao;

implementation

{$R *.fmx}

uses USeviceConfinamento, UPrincipal, ServiceDB2, UServiceDB;

procedure TfrmCadPlanTratosPadrao.btnAddAlimentoClick(Sender: TObject);
begin
 if edtPercent.Text.Length=0 then
 begin
   MyShowMessage('Informe a Porcentagem %!!',false);
   Exit;
 end;
 if strToInt(edtPercent.Text)>100 then
 begin
   MyShowMessage('Porcentagem não pode ser maior que 100%!!',false);
   Exit;
 end;
 if ServiceConf.PlanejamentoTrato.State=dsEdit then
 begin
   ServiceConf.PlanejamentoTratoID_USUARIO_ALTERACAO.AsString := serviceDB.vIdUserLogado;
   ServiceConf.PlanejamentoTratoDATA_ALTERACAO.AsDateTime     := NOW;
 end
 else
 begin
   ServiceConf.PlanejamentoTratoID_USUARIO.AsString   := serviceDB.vIdUserLogado;
 end;
 ServiceConf.PlanejamentoTratoHORA.AsDateTime         := edtHora.DateTime;
 ServiceConf.PlanejamentoTratoTRATO.AsString          := edtTrato.Text;
 ServiceConf.PlanejamentoTratoPERCENT.AsString        := edtPercent.Text;
 ServiceConf.PlanejamentoTratoID_PROPRIEDADE.AsString := serviceDB.vIdPropriedade;
 try
   ServiceConf.PlanejamentoTrato.ApplyUpdates(-1);
   ServiceConf.PlanejamentoTratoDefault;
   SomarColunasGrid;
   layNovoAlimento.Visible := false;
 except
   on e : Exception do
    myShowMessage('Erro ao Inserir Trato: '+e.Message,false)
 end;
end;

procedure TfrmCadPlanTratosPadrao.edtCancelaAlimentoClick(Sender: TObject);
begin
 if ServiceConf.PlanejamentoTrato.State=dsInsert then
  ServiceConf.PlanejamentoTrato.CancelUpdates;
  ServiceConf.PlanejamentoTrato.Close;
  ServiceConf.PlanejamentoTrato.Open;
 layNovoAlimento.Visible := false;
end;

procedure TfrmCadPlanTratosPadrao.edtPercentKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(keyChar in ['0'..'9',','] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadPlanTratosPadrao.FormShow(Sender: TObject);
begin
  layNovoAlimento.Visible :=false;
  ServiceConf.PlanejamentoTratoDefault;
  SomarColunasGrid;
  inherited;
end;

procedure TfrmCadPlanTratosPadrao.imgCloseClick(Sender: TObject);
begin
 if vIrregular='S' then
 begin
   MyShowMessage('Porcentagem de tratos irregular!!',false);
   Exit;
 end
 else
  Close;
end;

procedure TfrmCadPlanTratosPadrao.SomarColunasGrid;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
begin
  Sum := 0;
  I   := 0;
  for I := 0 to StringGrid1.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid1.Cells[2,I],Val) then
    Sum := Sum + Val;
  end;
  if I>0 then
  begin
    if Sum>100 then
    begin
      lblPercentTrato.Text :='Irregular Maior que 100% :'+FormatFloat('####,##.00%',sum);
      lblPercentTrato.FontColor := TAlphaColorRec.Darkred;
      vIrregular:='S';
    end;
    if Sum<100 then
    begin
      lblPercentTrato.Text :='Irregular Menor que 100% :'+FormatFloat('####,##.00%',sum);
      lblPercentTrato.FontColor := TAlphaColorRec.Darkred;
      vIrregular:='S';
    end;
    if Sum=100 then
    begin
      lblPercentTrato.Text :=FormatFloat('####,##.00%',sum);
      lblPercentTrato.FontColor := TAlphaColorRec.Lime;
      vIrregular:='N';
    end;
  end
  else
  begin
    lblPercentTrato.Text      := '0.00%';
  end;
  lblTotalTratos.Text := IntToStr(I);
end;

procedure TfrmCadPlanTratosPadrao.StringGrid1EditingDone(Sender: TObject;
  const ACol, ARow: Integer);
begin
  ServiceConf.PlanejamentoTratoID_USUARIO_ALTERACAO.AsString := serviceDB.vIdUserLogado;
  ServiceConf.PlanejamentoTratoDATA_ALTERACAO.AsDateTime     := NOW;
  ServiceConf.PlanejamentoTrato.ApplyUpdates(-1);
  ServiceConf.PlanejamentoTratoDefault;
  SomarColunasGrid;
end;

procedure TfrmCadPlanTratosPadrao.TreeAtualizarLotesClick(Sender: TObject);
begin
 try
  ServiceConf.AtualizaTratosLotes;
  myShowMessage('Lotes atualizados com sucesso!',false);
 except
   on E : Exception do
    myShowMessage('Erro ao atualizar lotes = '+E.Message,false);
  end;
end;

procedure TfrmCadPlanTratosPadrao.TreeItemEditarClick(Sender: TObject);
begin
 edtTrato.Text           := ServiceConf.PlanejamentoTratoTRATO.AsString;
 edtPercent.Text         := ServiceConf.PlanejamentoTratoPERCENT.AsString;
 edtHora.DateTime        := ServiceConf.PlanejamentoTratoHORA.AsDateTime;
 ServiceConf.PlanejamentoTrato.Edit;
 layNovoAlimento.Visible := true;
end;

procedure TfrmCadPlanTratosPadrao.TreeItemExcluirClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       ServiceConf.PlanejamentoTrato.Edit;
       ServiceConf.PlanejamentoTratoSTATUS.AsInteger :=-1;
       ServiceConf.PlanejamentoTrato.ApplyUpdates(-1);
       ServiceConf.PlanejamentoTratoDefault;
       SomarColunasGrid;
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

procedure TfrmCadPlanTratosPadrao.TreeItemNovoClick(Sender: TObject);
begin
 edtTrato.Text           := ServiceConf.RetormaMaxTrato;
 edtPercent.Text         := '';
 ServiceConf.PlanejamentoTrato.Insert;
 layNovoAlimento.Visible := true;
end;

end.
