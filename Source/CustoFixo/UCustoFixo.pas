unit UCustoFixo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, FMX.ListBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Ani;

type
  TfrmCustoFixo = class(TfrmCadPadrao)
    Layout87: TLayout;
    GridCustoFixo: TStringGrid;
    StringColumn1: TStringColumn;
    CurrencyColumn1: TCurrencyColumn;
    CurrencyColumn2: TCurrencyColumn;
    CurrencyColumn3: TCurrencyColumn;
    CurrencyColumn4: TCurrencyColumn;
    CurrencyColumn5: TCurrencyColumn;
    CurrencyColumn6: TCurrencyColumn;
    CurrencyColumn7: TCurrencyColumn;
    CurrencyColumn8: TCurrencyColumn;
    CurrencyColumn9: TCurrencyColumn;
    CurrencyColumn10: TCurrencyColumn;
    CurrencyColumn11: TCurrencyColumn;
    CurrencyColumn12: TCurrencyColumn;
    cbxAnoCustoFixo: TComboBox;
    btnGerarCustoFixo: TRectangle;
    Layout88: TLayout;
    Image24: TImage;
    Label51: TLabel;
    FDQuery1: TFDQuery;
    LayAguarde: TLayout;
    recAguarde: TRectangle;
    layAguardeLBL: TLayout;
    lblAguarde: TLabel;
    imgSync: TImage;
    Animacao: TFloatAnimation;
    procedure cbxAnoCustoFixoChange(Sender: TObject);
    procedure btnGerarCustoFixoClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridCustoFixoCellClick(const Column: TColumn; const Row: Integer);
    procedure GridCustoFixoEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
  private
    { Private declarations }
  public
    procedure GeraGridCustoFixo;
  end;

var
  frmCustoFixo: TfrmCustoFixo;

implementation

{$R *.fmx}

uses UServiceDB;

procedure TfrmCustoFixo.btnGerarCustoFixoClick(Sender: TObject);
begin
  serviceDB.TableCustoFixo.Close;
  serviceDB.TableCustoFixo.Open;
  serviceDB.TableCustoFixo.Insert;
  serviceDB.TableCustoFixoID_USUARIO.AsString                := serviceDB.vIdUserLogado;
  serviceDB.TableCustoFixoUSER_ULTIMA_ALTERACAO.AsString     := serviceDB.vIdUserLogado;
  serviceDB.TableCustoFixoULTIMA_ALTERACAO.AsDateTime        := Now;
  serviceDB.TableCustoFixoID_PROPRIEDADE.AsString := serviceDB.vIdPropriedade;
  serviceDB.TableCustoFixoANO.AsString            := cbxAnoCustoFixo.Selected.Text;
  try
    serviceDB.TableCustoFixo.ApplyUpdates(-1);
    MyShowMessage('Custo Fixo gerado com sucesso!!',false);
    btnGerarCustoFixo.Visible := serviceDB.AbrirCustoFixoAno(cbxAnoCustoFixo.Selected.Text);
    GeraGridCustoFixo;
  except
    on e : Exception do
     MyShowMessage('Erro ao gerar Custo Fixo: '+e.Message,false);
  end;
end;

procedure TfrmCustoFixo.cbxAnoCustoFixoChange(Sender: TObject);
begin
  TreeItemNovo.Enabled      := false;
  btnGerarCustoFixo.Visible := serviceDB.AbrirCustoFixoAno(cbxAnoCustoFixo.Selected.Text);
  GeraGridCustoFixo;
end;

procedure TfrmCustoFixo.FormShow(Sender: TObject);
begin
  LayAguarde.Visible   := false;
  TreeItemNovo.Enabled := false;
  inherited;
end;

procedure TfrmCustoFixo.GeraGridCustoFixo;
var
 i:integer;
 vQryAux :TFDQuery;
begin
   GridCustoFixo.RowCount :=1;
   I:=0;
   if serviceDB.TableCustoFixo.RecordCount>0 then
   begin
    serviceDB.TableCustoFixo.First;
    while not serviceDB.TableCustoFixo.Eof do
    begin
      GridCustoFixo.Cells[0,i]      := serviceDB.TableCustoFixoANO.AsString;
      GridCustoFixo.Cells[1,i]      := serviceDB.TableCustoFixoJANEIRO.AsString;
      GridCustoFixo.Cells[2,i]      := serviceDB.TableCustoFixoFEVEREIRO.AsString;
      GridCustoFixo.Cells[3,i]      := serviceDB.TableCustoFixoMARCO.AsString;
      GridCustoFixo.Cells[4,i]      := serviceDB.TableCustoFixoABRIL.AsString;
      GridCustoFixo.Cells[5,i]      := serviceDB.TableCustoFixoMAIO.AsString;
      GridCustoFixo.Cells[6,i]      := serviceDB.TableCustoFixoJUNHO.AsString;
      GridCustoFixo.Cells[7,i]      := serviceDB.TableCustoFixoJULHO.AsString;
      GridCustoFixo.Cells[8,i]      := serviceDB.TableCustoFixoAGOSTO.AsString;
      GridCustoFixo.Cells[9,i]      := serviceDB.TableCustoFixoSETEMBRO.AsString;
      GridCustoFixo.Cells[10,i]     := serviceDB.TableCustoFixoOUTUBRO.AsString;
      GridCustoFixo.Cells[11,i]     := serviceDB.TableCustoFixoNOVEMBRO.AsString;
      GridCustoFixo.Cells[12,i]     := serviceDB.TableCustoFixoDEZEMBRO.AsString;
      inc(i);
      serviceDB.TableCustoFixo.Next;
    end;
   end
   else
    GridCustoFixo.RowCount :=0;
   Application.ProcessMessages;
end;

procedure TfrmCustoFixo.GridCustoFixoCellClick(const Column: TColumn;
  const Row: Integer);
var
 LinhaSelecionada:string;
begin
 LinhaSelecionada:= GridCustoFixo.Cells[0,0];
 TreeItemNovo.Enabled := LinhaSelecionada.Length>0;
end;

procedure TfrmCustoFixo.GridCustoFixoEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
var
 vValor:string;
begin
 try
   vValor := GridCustoFixo.Cells[GridCustoFixo.col,GridCustoFixo.Row];
   GridCustoFixo.Selected :=-1;
   serviceDB.AtualizaCustoFixo(cbxAnoCustoFixo.Selected.Text,IntToStr(GridCustoFixo.Col),vValor);
   btnGerarCustoFixo.Visible := serviceDB.AbrirCustoFixoAno(cbxAnoCustoFixo.Selected.Text);
   GeraGridCustoFixo;
   if GridCustoFixo.col<13 then
    GridCustoFixo.Col := (GridCustoFixo.col+1);
    Application.ProcessMessages;
 except
   on e : Exception do
   MyShowMessage('Erro ao Atualizar Configuracao: '+e.Message,false)
  end;
end;

procedure TfrmCustoFixo.TreeItemNovoClick(Sender: TObject);
begin
    if GridCustoFixo.Col=0 then
    begin
      MyShowMessage('Selecione o mes que deseja recalcular!',false);
      Exit;
    end;
    MyShowMessage('Deseja Realmente recalcular o custo do Mes:'+
     GridCustoFixo.Col.ToString+' Ano :'+GridCustoFixo.Cells[0,0]+' ?'
    ,true);
    case dlg.vBntConfirmaMsg of
      1:
      begin
          try
            Animacao.Start;
            LayAguarde.Visible := true;
            Application.ProcessMessages;
            Sleep(1000);
            serviceDB.RecalculaCustoFixo(
            GridCustoFixo.Col,
            GridCustoFixo.Cells[0,0].ToInteger);
            LayAguarde.Visible   := false;
            Animacao.Stop;
            MyShowMessage('Custo Fixo Recalculado com sucesso!',false);
          except
          on E : Exception do
           begin
             MyShowMessage('Exception class name = '+E.ClassName,false);
             MyShowMessage('Exception message = '+E.Message,false);
           end;
          end;
      end;
    end;
end;

end.
