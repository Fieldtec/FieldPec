unit URateioOutrosCustos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls, FMX.EditBox, FMX.NumberBox, FMX.Menus;

type
  TfrmReteioOutrosCustos = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    StringGrid2: TStringGrid;
    Label3: TLabel;
    Action1: TAction;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label4: TLabel;
    edtFDataEntDE: TDateEdit;
    Label5: TLabel;
    Layout1: TLayout;
    Layout3: TLayout;
    Rectangle4: TRectangle;
    Layout4: TLayout;
    Label6: TLabel;
    Layout5: TLayout;
    edtData: TDateEdit;
    Label7: TLabel;
    edtValorTotal: TNumberBox;
    Rectangle5: TRectangle;
    Layout6: TLayout;
    Layout7: TLayout;
    Label8: TLabel;
    edtDescricao: TEdit;
    edtValorItem: TNumberBox;
    Label9: TLabel;
    btnAdd: TRectangle;
    Layout8: TLayout;
    Image7: TImage;
    Label10: TLabel;
    gridItens: TStringGrid;
    StringColumn1: TStringColumn;
    CurrencyColumn1: TCurrencyColumn;
    PopupMenu1: TPopupMenu;
    Excluir: TMenuItem;
    TreeRatear: TTreeViewItem;
    Image3: TImage;
    FloatColumn1: TFloatColumn;
    Label11: TLabel;
    edtTotalAnimais: TNumberBox;
    procedure FormShow(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure TreeRatearClick(Sender: TObject);
    procedure edtFDataEntDEClosePicker(Sender: TObject);
    procedure edtFDataEntATEClosePicker(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtDataClosePicker(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Filtrar;
    procedure SomarValorGrid;
    procedure DeleteRow(ARowIndex: Integer; AGrid: TStringGrid);
  end;

var
  frmReteioOutrosCustos: TfrmReteioOutrosCustos;

implementation

{$R *.fmx}

uses ServiceDB2, UServiceDB, UPrincipal;

{ TfrmReteioOutrosCustos }

procedure TfrmReteioOutrosCustos.btnAddClick(Sender: TObject);
begin
 edtDescricao.SetFocus;
 if edtDescricao.Text.Length=0 then
 begin
   MyShowMessage('Informe uma descrição',false);
   Exit;
 end;
 if edtValorItem.Value=0 then
 begin
   MyShowMessage('Valor deve ser diferente de zero!',false);
   Exit;
 end;
 gridItens.RowCount := gridItens.RowCount+1;
 gridItens.Cells[0,gridItens.RowCount-1]:=edtDescricao.Text;
 gridItens.Cells[1,gridItens.RowCount-1]:=edtValorItem.Text;
 gridItens.Cells[2,gridItens.RowCount-1]:=FloatToStr(edtValorItem.Value/edtTotalAnimais.Value);
 edtDescricao.Text  :='';
 edtValorItem.Value :=0;
 edtDescricao.SetFocus;
 SomarValorGrid;
end;

procedure TfrmReteioOutrosCustos.btnConfirmaClick(Sender: TObject);
var
 vidRateio:string;
  I: Integer;
begin
 if gridItens.RowCount=0 then
 begin
   MyShowMessage('Adicione pelo menos um valor!',false);
   Exit;
 end;
 ServiceDBN.RATEIO_OUTROS_CUSTOS.Close;
 ServiceDBN.RATEIO_OUTROS_CUSTOS.Open;
 ServiceDBN.RATEIO_OUTROS_CUSTOS.Insert;
 ServiceDBN.RATEIO_OUTROS_CUSTOSID_USUARIO.AsString         := ServiceDB.vIdUserLogado;
 ServiceDBN.RATEIO_OUTROS_CUSTOSID_PROPRIEDADE.AsString     := ServiceDB.vIdPropriedade;
 ServiceDBN.RATEIO_OUTROS_CUSTOSDATA_BASE.AsDateTime        := edtData.DateTime;
 ServiceDBN.RATEIO_OUTROS_CUSTOSVALOR_TOTAL_CABECA.AsFloat  := edtValorTotal.Value;
 try
   ServiceDBN.RATEIO_OUTROS_CUSTOS.ApplyUpdates(-1);
   vidRateio := serviceDBN.RetornaMaxIdRateio;
   for I := 0 to gridItens.RowCount-1 do
   begin
     ServiceDBN.DET_RATEIO_OUTROS_CUSTOS_I.Close;
     ServiceDBN.DET_RATEIO_OUTROS_CUSTOS_I.Open;
     ServiceDBN.DET_RATEIO_OUTROS_CUSTOS_I.Insert;
     ServiceDBN.DET_RATEIO_OUTROS_CUSTOS_IID_USUARIO.AsString       := ServiceDB.vIdUserLogado;
     ServiceDBN.DET_RATEIO_OUTROS_CUSTOS_IID_OUTROS_CUSTOS.AsString := vidRateio;
     ServiceDBN.DET_RATEIO_OUTROS_CUSTOS_IDESCRICAO.AsString        := gridItens.Cells[0,I];
     ServiceDBN.DET_RATEIO_OUTROS_CUSTOS_IVALOR_CABECA.AsFloat      := gridItens.Cells[1,I].ToDouble;
     ServiceDBN.DET_RATEIO_OUTROS_CUSTOS_I.ApplyUpdates(-1);
   end;
   MyShowMessage('Rateio cadastrado com sucesso!',false);
   Filtrar;
   MudarAba(tbiMnu,sender);
 except
  on E : Exception do
    MyShowMessage('Error ao cadastrar Rateio : '+E.Message,false);
 end;
end;

procedure TfrmReteioOutrosCustos.DeleteRow(ARowIndex: Integer;
  AGrid: TStringGrid);
var
  i, j: Integer;
begin
  with AGrid do
  begin
    if (ARowIndex = RowCount) then
      RowCount := RowCount - 1
    else
    begin
      for i := ARowIndex to RowCount-1 do
        for j := 0 to ColumnCount-1 do
          Cells[j, i] := Cells[j, i + 1];
      RowCount := RowCount - 1;
    end;
  end;
  SomarValorGrid;
end;

procedure TfrmReteioOutrosCustos.edtDataClosePicker(Sender: TObject);
begin
 edtTotalAnimais.Value := serviceDBN.RetornaQtdTotalCabeca(edtData.Date);
end;

procedure TfrmReteioOutrosCustos.edtFDataEntATEClosePicker(Sender: TObject);
begin
 Filtrar;
end;

procedure TfrmReteioOutrosCustos.edtFDataEntDEClosePicker(Sender: TObject);
begin
 Filtrar;
end;

procedure TfrmReteioOutrosCustos.ExcluirClick(Sender: TObject);
begin
 DeleteRow(gridItens.Row,gridItens);
end;

procedure TfrmReteioOutrosCustos.Filtrar;
begin
 serviceDBN.AbrirRateioCustos(edtFDataEntDE.Date,edtFDataEntATE.Date);
end;

procedure TfrmReteioOutrosCustos.FormShow(Sender: TObject);
begin
  Filtrar;
  inherited;
end;

procedure TfrmReteioOutrosCustos.SomarValorGrid;
var
  I: Integer;
  vValor:double;
begin
 if gridItens.RowCount>0 then
 begin
   vValor:=0;
   for I := 0 to gridItens.RowCount-1 do
   begin
    vValor := vValor+gridItens.Cells[2,I].ToDouble;
   end;
   edtValorTotal.Value :=vValor;
 end
 else
   edtValorTotal.Value :=0;
end;

procedure TfrmReteioOutrosCustos.TreeItemExcluirClick(Sender: TObject);
begin
  if serviceDBN.RATEIO_OUTROS_CUSTOSSTATUS.AsInteger=2 then
  begin
    MyShowMessage('Valor ja reteado impossivel deletar!',false);
    Exit;
  end;
  MyShowMessage('Deseja Realmente Excluir esse Registro?',true);
  case frmPrincipal.vConfirma of
  1:
  begin
      try
       serviceDBN.RATEIO_OUTROS_CUSTOS.Edit;
       serviceDBN.RATEIO_OUTROS_CUSTOSSTATUS.AsInteger := -1;
       serviceDBN.RATEIO_OUTROS_CUSTOS.ApplyUpdates(-1);
       Filtrar;
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

procedure TfrmReteioOutrosCustos.TreeItemNovoClick(Sender: TObject);
begin
 edtData.IsEmpty     := true;
 edtDescricao.Text   :='';
 edtValorItem.Value  :=0;
 edtValorTotal.Value :=0;
 gridItens.RowCount  :=0;
 inherited;
end;

procedure TfrmReteioOutrosCustos.TreeRatearClick(Sender: TObject);
begin
  if serviceDBN.RATEIO_OUTROS_CUSTOSSTATUS.AsInteger=2 then
  begin
    MyShowMessage('Valor ja reteado!!!',false);
    Exit;
  end;


  MyShowMessage('Deseja Realmente Ratear esse Valor?',true);
  case frmPrincipal.vConfirma of
  1: begin
       try
        serviceDBN.RatearOutrasValore(
         serviceDBN.RATEIO_OUTROS_CUSTOSDATA_BASE.AsDateTime,
         stringReplace(serviceDBN.RATEIO_OUTROS_CUSTOSVALOR_TOTAL_CABECA.AsString,',','.',[rfReplaceAll]),
         serviceDBN.RATEIO_OUTROS_CUSTOSID.AsString
        );
        MyShowMessage('Valor rateado com sucesso!',false);
        Filtrar;
       except
        on E : Exception do
          MyShowMessage('Error ao Ratear valores : '+E.Message,false);
       end;
     end;
  end;

end;

end.
