unit UPlanUsoMineral;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ListBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.Effects;

type
  TfrmPlanUsoMineral = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Label3: TLabel;
    cbxRetiroFiltro: TComboBox;
    Label4: TLabel;
    cbxPastoFiltro: TComboBox;
    Label5: TLabel;
    cbxCochoFiltro: TComboBox;
    cbxSuplementoMineralFiltro: TComboBox;
    qryAux: TFDQuery;
    Rectangle2: TRectangle;
    lblTotalLotes: TLabel;
    layAlteracao: TLayout;
    RecStatusAcao: TRectangle;
    Layout108: TLayout;
    Layout109: TLayout;
    Image80: TImage;
    Layout110: TLayout;
    Layout111: TLayout;
    Layout112: TLayout;
    ShadowEffect4: TShadowEffect;
    Layout113: TLayout;
    ShadowEffect3: TShadowEffect;
    btnConfirmar: TRectangle;
    Layout114: TLayout;
    Image81: TImage;
    Label24: TLabel;
    ShadowEffect5: TShadowEffect;
    btnCancel: TRectangle;
    Layout116: TLayout;
    Image83: TImage;
    Label25: TLabel;
    ShadowEffect6: TShadowEffect;
    msg: TLabel;
    Rectangle3: TRectangle;
    Layout1: TLayout;
    Rectangle4: TRectangle;
    Label6: TLabel;
    lblTotalLotesTroca: TLabel;
    Rectangle5: TRectangle;
    Label7: TLabel;
    cbxSuplementoTroca: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure cbxSuplementoMineralFiltroChange(Sender: TObject);
    procedure cbxRetiroFiltroChange(Sender: TObject);
    procedure cbxPastoFiltroChange(Sender: TObject);
    procedure cbxCochoFiltroChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure cbxSuplementoTrocaChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    vIdSuplementoTroca:string;
    procedure MontaFiltro;
    procedure CarregaFiltros(idPropriedade:string);
  end;

var
  frmPlanUsoMineral: TfrmPlanUsoMineral;

implementation

{$R *.fmx}

uses ServiceRel, UCadUsers, UServiceDB, UMsgDlg, ServiceDB2;

procedure TfrmPlanUsoMineral.btnCancelClick(Sender: TObject);
begin
 layAlteracao.Visible := false;
end;

procedure TfrmPlanUsoMineral.btnConfirmarClick(Sender: TObject);
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Deseja realmente Alterar o suplemento dos lotes selecionados?';
  dlg.btnCancel.Visible := true;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    if dlg.vBntConfirmaMsg=1 then
    begin
     try
       serviceDB.TablePlanUsoMineral.First;
       while not serviceDB.TablePlanUsoMineral.Eof do
       begin
         serviceDB.AlteraUsoMineral(
          serviceDB.TablePlanUsoMineralID_COCHO.AsString,
          vIdSuplementoTroca,
          FormatDateTime('mm/dd/yyyy',date));
         serviceDB.TablePlanUsoMineral.Next;
       end;
       dlg := TFrmmsgDlg.Create(nil);
       dlg.Position := TFormPosition.ScreenCenter;
       dlg.msg.Text := 'Suplemento alterado com sucesso!';
       dlg.btnCancel.Visible := false;

       dlg.ShowModal(
       procedure(ModalResult: TModalResult)
       begin
         layAlteracao.Visible := false;
         MontaFiltro;
       end);
     except
      on e: Exception do
       MyShowMessage('Erro ao alterar mineral:'+e.Message,false);
     end;
    end;
  end);
end;

procedure TfrmPlanUsoMineral.CarregaFiltros(idPropriedade:string);
begin
//  TThread.CreateAnonymousThread(
//  procedure
//  begin
//   TThread.Synchronize( nil,
//   procedure
//   begin
    cbxRetiroFiltro.Items.Clear;
    cbxCochoFiltro.Items.Clear;
    cbxPastoFiltro.Items.Clear;
    cbxSuplementoMineralFiltro.Items.Clear;
    cbxSuplementoTroca.Items.Clear;

    cbxRetiroFiltro.Items.Add('Todos');
    cbxCochoFiltro.Items.Add('Todos');
    cbxPastoFiltro.Items.Add('Todos');
    cbxSuplementoMineralFiltro.Items.Add('Todos');
    cbxSuplementoMineralFiltro.Items.Add('Em Branco');
    with qryAux,qryAux.SQL do
    begin
     Clear;
     Add('select * from RETIRO');
     Add('WHERE status=1 and ID_PROPRIEDADE='+idPropriedade);
     Open;
     while not qryAux.eof do
     begin
       cbxRetiroFiltro.Items.Add(FieldByName('NOME').AsString);
       qryAux.Next;
     end;
     cbxRetiroFiltro.ItemIndex :=0;

     Clear;
     Add('select * from COCHO b');
     Add('JOIN CURRAIS c ON c.ID=b.ID_PASTO');
     Add('WHERE b.status=1 AND c.ID_PROPRIEDADE='+idPropriedade);
     Open;
     while not qryAux.eof do
     begin
       cbxCochoFiltro.Items.Add(FieldByName('NOME').AsString);
       qryAux.Next;
     end;
     cbxCochoFiltro.ItemIndex :=0;

     Clear;
     Add('select * from CURRAIS');
     Add('WHERE status=1 AND ID_PROPRIEDADE='+idPropriedade);
     Open;
     while not qryAux.eof do
     begin
       cbxPastoFiltro.Items.Add(FieldByName('CODIGO').AsString);
       qryAux.Next;
     end;
     cbxPastoFiltro.ItemIndex :=0;

     Clear;
     Add('SELECT * FROM SUPLEMENTO_MINERAL WHERE STATUS=1');
     Open;
     while not qryAux.eof do
     begin
       cbxSuplementoMineralFiltro.Items.Add(FieldByName('NOME').AsString);
       cbxSuplementoTroca.Items.AddObject(QryAux.FieldByName('NOME').AsString,
        TObject(QryAux.FieldByName('ID').AsInteger));
       qryAux.Next;
     end;
     cbxSuplementoMineralFiltro.ItemIndex :=0;
    end;
//   end);
//  end).Start;
end;

procedure TfrmPlanUsoMineral.cbxCochoFiltroChange(Sender: TObject);
begin
 MontaFiltro;
end;

procedure TfrmPlanUsoMineral.cbxPastoFiltroChange(Sender: TObject);
begin
 MontaFiltro;
end;

procedure TfrmPlanUsoMineral.cbxRetiroFiltroChange(Sender: TObject);
begin
 MontaFiltro;
end;

procedure TfrmPlanUsoMineral.cbxSuplementoMineralFiltroChange(Sender: TObject);
begin
 MontaFiltro;
end;

procedure TfrmPlanUsoMineral.cbxSuplementoTrocaChange(Sender: TObject);
begin
 if cbxSuplementoTroca.ItemIndex>-1 then
  vIdSuplementoTroca := IntToStr(Integer(cbxSuplementoTroca.Items.Objects[cbxSuplementoTroca.ItemIndex]));
end;

procedure TfrmPlanUsoMineral.FormShow(Sender: TObject);
begin
  serviceDBN.VerificaDestinoPlanNutricional;
  CarregaFiltros(serviceDB.vIdPropriedade);
  serviceDB.AbrePlanUsoMinralFazenda(serviceDB.vIdPropriedade,'');
  lblTotalLotes.Text := 'Total de Lotes: '+IntToStr(StringGrid1.RowCount);
  layAlteracao.Visible := false;
  inherited;
end;

procedure TfrmPlanUsoMineral.MontaFiltro;
var
 vFiltro:string;
begin
 vFiltro:='';
 if cbxSuplementoMineralFiltro.ItemIndex>0 then
 begin
   if cbxSuplementoMineralFiltro.ItemIndex=1 then
    vFiltro:= vFiltro + ' AND a.ID_MINERAL IS NULL'
   else
   if cbxSuplementoMineralFiltro.ItemIndex>1 then
    vFiltro:= vFiltro + ' AND d.NOME='+cbxSuplementoMineralFiltro.Selected.Text.QuotedString;
 end;

 if cbxRetiroFiltro.ItemIndex>0 then
  vFiltro:= vFiltro + ' AND R.NOME='+cbxRetiroFiltro.Selected.Text.QuotedString;

 if cbxPastoFiltro.ItemIndex>0 then
  vFiltro:= vFiltro + ' AND C.CODIGO='+cbxPastoFiltro.Selected.Text.QuotedString;

 if cbxCochoFiltro.ItemIndex>0 then
  vFiltro:= vFiltro + ' AND B.NOME='+cbxCochoFiltro.Selected.Text.QuotedString;

 serviceDB.AbrePlanUsoMinralFazenda(serviceDB.vIdPropriedade,vFiltro);
 lblTotalLotes.Text := 'Total de Lotes: '+IntToStr(StringGrid1.RowCount);
end;

procedure TfrmPlanUsoMineral.TreeItemNovoClick(Sender: TObject);
begin
 cbxSuplementoTroca.ItemIndex :=-1;
 lblTotalLotesTroca.Text      := IntToStr(StringGrid1.RowCount);
 layAlteracao.Visible         := true;
end;

end.
