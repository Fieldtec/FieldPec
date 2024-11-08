unit UCalendario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.Layouts, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Effects, FMX.ScrollBox, FMX.Grid,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.ListBox,
  FMX.DateTimeCtrls, FMX.Memo, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmCadCalendario = class(TfrmCadPadrao)
    ImageLogoCalendario: TImage;
    layMesAno: TLayout;
    bntMenosMes: TImage;
    btnMaisMes: TImage;
    lblMesAnoAtual: TLabel;
    Layout1: TLayout;
    Rec0: TRectangle;
    Rec1: TRectangle;
    Label4: TLabel;
    Rec2: TRectangle;
    Label5: TLabel;
    Rec3: TRectangle;
    Label6: TLabel;
    Rec4: TRectangle;
    Label7: TLabel;
    Rec5: TRectangle;
    Label8: TLabel;
    Rec6: TRectangle;
    Label9: TLabel;
    Rec7: TRectangle;
    Label10: TLabel;
    layCalendario: TLayout;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    lblData: TLabel;
    Layout8: TLayout;
    edtData: TDateEdit;
    Label3: TLabel;
    cbxTipoOcorrencia: TComboBox;
    Layout4: TLayout;
    Rectangle3: TRectangle;
    Layout5: TLayout;
    Layout9: TLayout;
    lblTipoOcorrencia: TLabel;
    edtTipoOcorrencia: TEdit;
    EditButton2: TEditButton;
    Label11: TLabel;
    edtDescricao: TMemo;
    Label12: TLabel;
    edtHora: TTimeEdit;
    layOcorrencia: TLayout;
    Rectangle5: TRectangle;
    Layout10: TLayout;
    Layout11: TLayout;
    Rectangle6: TRectangle;
    lblLayOcorrencia: TLabel;
    Layout12: TLayout;
    Image3: TImage;
    Layout13: TLayout;
    Image4: TImage;
    Label14: TLabel;
    layMnu1: TLayout;
    Rectangle7: TRectangle;
    TreeView1: TTreeView;
    TreeItemNovo1: TTreeViewItem;
    Image6: TImage;
    TreeItemEditar1: TTreeViewItem;
    Image7: TImage;
    TreeItemExcluir1: TTreeViewItem;
    Image8: TImage;
    Layout15: TLayout;
    StringGrid2: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    cbxAno: TComboBox;
    Label15: TLabel;
    Rectangle8: TRectangle;
    lblDescricao: TLabel;
    Rectangle4: TRectangle;
    procedure FormShow(Sender: TObject);
    procedure bntMenosMesClick(Sender: TObject);
    procedure btnMaisMesClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure StringGrid2CellClick(const Column: TColumn; const Row: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure cbxAnoChange(Sender: TObject);
    procedure cbxTipoOcorrenciaChange(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluir1Click(Sender: TObject);
  private
     function MesEstenso(mes:Integer):string;
  public
    iMesAtual:integer;
    vIdOcorrencia :string;
    vDta :TDate;
    procedure geraCalendario(dia,mes,ano:string);
    procedure GeraRet;
    procedure AbreDia(Sender :TObject);
  end;

var
  frmCadCalendario: TfrmCadCalendario;

implementation

{$R *.fmx}

uses UServiceDB, UAuxOcorrencia, UMsgDlg;

procedure TfrmCadCalendario.AbreDia(Sender :TObject);
var
 Dta:TDate;
 vData:String;
begin
  layMesAno.Visible := false;
  vData := intToStr(TSpeedButton(Sender).Tag).PadLeft(2,'0')+'/'+
   IntToStr(iMesAtual).PadLeft(2,'0')+'/'+
   cbxAno.Selected.Text;
  Dta  := StrToDate(vData);
  vDta := StrToDate(vData);
  lblDescricao.Text :='';
  lblLayOcorrencia.Text := 'Ocorrências e Agendamentos: '+vData;
  serviceDB.AbreCalendario(Dta);
  layOcorrencia.Visible := true;
end;

procedure TfrmCadCalendario.bntMenosMesClick(Sender: TObject);
begin
  if iMesAtual>1 then
   iMesAtual := iMesAtual -1;
  lblMesAnoAtual.Text :=  MesEstenso(iMesAtual);
  geraCalendario(
   FormatDateTime('dd',date),
   IntToStr(iMesAtual).PadLeft(2,'0'),
   cbxAno.Selected.Text
   );
end;

procedure TfrmCadCalendario.btnConfirmaClick(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
 if(edtData.Text.Length)=0  then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe a Data!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  Exit;
 end;
 if(edtHora.Text.Length)=0  then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe a Hora!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  Exit;
 end;
 if(cbxTipoOcorrencia.ItemIndex=0) and(edtTipoOcorrencia.Text.Length=0)  then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe o Tipo de Ocorrência!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  Exit;
 end;
 if(edtDescricao.Text.Length)=0  then
 begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Informe a Descrição!';
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  Exit;
 end;
 serviceDB.CalendarioDATA.AsDateTime            := edtData.Date;
 serviceDB.CalendarioHORA.AsDateTime            := edtHora.Time;
 serviceDB.CalendarioTIPO_EVENTO.AsInteger      := cbxTipoOcorrencia.ItemIndex;

 if cbxTipoOcorrencia.ItemIndex=0 then
  serviceDB.CalendarioID_OCORRENCIA.AsString     := vIdOcorrencia;

 serviceDB.CalendarioDESCRICAO_EVENTO.AsString  := edtDescricao.Text;
 serviceDB.CalendarioID_USUARIO.AsString        := serviceDB.vIdUserLogado;
 try
  serviceDB.Calendario.ApplyUpdates(-1);
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := 'Evento Cadastrado com Sucesso!!';
  dlg.btnCancel.Visible := false;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    serviceDB.Calendario.Close;
    serviceDB.Calendario.Open;
    layMesAno.Visible     := true;
    tbPrincipal.ActiveTab := tbiMnu;
    geraCalendario(
     FormatDateTime('dd',date),
     IntToStr(iMesAtual).PadLeft(2,'0'),
     cbxAno.Selected.Text
     );
  end);
 except
  on E: Exception do
  begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text :=  'Erro ao inserir Evento : '+e.Message;
    dlg.btnCancel.Visible := false;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  end;
 end;
end;

procedure TfrmCadCalendario.btnMaisMesClick(Sender: TObject);
begin
 if iMesAtual<12 then
   iMesAtual     :=  iMesAtual +1;
  lblMesAnoAtual.Text :=  MesEstenso(iMesAtual);
  geraCalendario(
   FormatDateTime('dd',date),
   IntToStr(iMesAtual).PadLeft(2,'0'),
   cbxAno.Selected.Text
   );
end;

procedure TfrmCadCalendario.cbxAnoChange(Sender: TObject);
begin
 geraCalendario(
   FormatDateTime('dd',date),
   IntToStr(iMesAtual).PadLeft(2,'0'),
   cbxAno.Selected.Text
   );
end;

procedure TfrmCadCalendario.cbxTipoOcorrenciaChange(Sender: TObject);
begin
  lblTipoOcorrencia.Visible := cbxTipoOcorrencia.ItemIndex =0;
  edtTipoOcorrencia.Visible := cbxTipoOcorrencia.ItemIndex =0;
end;

procedure TfrmCadCalendario.EditButton2Click(Sender: TObject);
begin
 serviceDB.AuxOcorrencia.Close;
 serviceDB.AuxOcorrencia.Open;
 frmAuxOcorrencia := TfrmAuxOcorrencia.Create(nil);
  try
    frmAuxOcorrencia.ShowModal;
  finally
    edtTipoOcorrencia.text    := serviceDB.AuxOcorrenciaOCORRENCIA.AsString;
    vIdOcorrencia             := serviceDB.AuxOcorrenciaID.AsString;
    frmAuxOcorrencia.Free;
  end;
end;

procedure TfrmCadCalendario.FormCreate(Sender: TObject);
begin
  layOcorrencia.Visible       := false;
  inherited;
end;

procedure TfrmCadCalendario.FormShow(Sender: TObject);
begin
 iMesAtual            := StrToInt(FormatDateTime('mm',date));
 lblMesAnoAtual.Text  := MesEstenso(iMesAtual);
 GeraRet;
 geraCalendario(
  FormatDateTime('dd',date),
  FormatDateTime('mm',date),
  cbxAno.Selected.Text
);
end;

procedure TfrmCadCalendario.geraCalendario(dia,mes,ano:string);
var
 Ret         : TRectangle;
 lbl,lbl1    : TLabel;
 I,vWith,iMes,
 iAno,x      : integer;
 sMES,sAno,
 vOco,vEve   : string;
 y,D1,D2     : real;
begin
  sMes                  := mes;
  sAno                  := ano;
  iMes                  := StrToInt(sMes);
  iAno                  := StrToInt(sAno);
 for i := 1 to 31 do
 begin
   if i<= MonthDays[IsLeapYear(iAno),iMes] then
   begin
     TRectangle(FindComponent('RetDia_'+IntToStr(i))).Visible    := true;

     if D1=0.5 then
     begin
       D2 := 0.5;
       D1 := 1.2;
     end
     else
     begin
       D1 := 0.5;
       D2 := 1.2;
     end;
     TRectangle(FindComponent('RetDia_'+IntToStr(i))).AnimateFloat('Position.X',DayOfWeek(strToDate(IntToStr(i)+'/'+sMes+'/'+sAno))*
                                                                    TRectangle(FindComponent('RetDia_'+IntToStr(i))).Width,D1,TAnimationType.InOut,TInterpolationType.Back);

     TRectangle(FindComponent('RetDia_'+IntToStr(i))).AnimateFloat('Position.Y',Y,D2,TAnimationType.InOut,TInterpolationType.Back);

     TRectangle(FindComponent('RetDia_'+IntToStr(i))).Position.X := DayOfWeek(strToDate(IntToStr(i)+'/'+sMes+'/'+sAno))*
                                                                    TRectangle(FindComponent('RetDia_'+IntToStr(i))).Width;
     TRectangle(FindComponent('RetDia_'+IntToStr(i))).Position.Y := y;

     if i=strToInt(FormatDateTime('dd',date)) then
       TRectangle(FindComponent('RetDia_'+IntToStr(i))).Fill.Color :=  TAlphaColors.Darkblue
     else
       TRectangle(FindComponent('RetDia_'+IntToStr(i))).Fill.Color :=  TAlphaColors.Black;

     vOco := IntToSTR(serviceDB.RetornaQtdOcorrencia(strToDate(IntToStr(i)+'/'+sMes+'/'+sAno)));
     vEve := IntToSTR(serviceDB.RetornaQtdAgendamentos(strToDate(IntToStr(i)+'/'+sMes+'/'+sAno)));

     if TLabel(FindComponent('lblOco_'+IntToStr(i)))<>nil then
     begin
       if vOco<>'0' then
       begin
        TLabel(FindComponent('lblOco_'+IntToStr(i))).Text     := 'Ocorrências: '+vOco;
        TLabel(FindComponent('lblOco_'+IntToStr(i))).Visible  := true;
       end
       else
       begin
        TLabel(FindComponent('lblOco_'+IntToStr(i))).Text     := '';
        TLabel(FindComponent('lblOco_'+IntToStr(i))).Visible  := false;
       end;
     end;

     if TLabel(FindComponent('lblEven_'+IntToStr(i)))<>nil then
     begin
      if vEve<>'0' then
      begin
       TLabel(FindComponent('lblEven_'+IntToStr(i))).Text    := 'Agendamentos: '+vEve;
       TLabel(FindComponent('lblEven_'+IntToStr(i))).Visible := true;
      end
      else
      begin
       TLabel(FindComponent('lblEven_'+IntToStr(i))).Text    := '';
       TLabel(FindComponent('lblEven_'+IntToStr(i))).Visible := false;
      end;
     end;
     if DayOfWeek(StrToDate(IntToStr(i)+'/'+sMES+'/'+sAno))=7 then
     begin
       y := y + TRectangle(FindComponent('RetDia_'+IntToStr(i))).Height;
     end;
   end
   else
    TRectangle(FindComponent('RetDia_'+IntToStr(i))).Visible  := False;
 end;

end;

procedure TfrmCadCalendario.GeraRet;
var
 Ret         : TRectangle;
 lblEven,lblOco    : TLabel;
 But         : TSpeedButton;
 I,vWith,vHeigth,iMes,
 iAno,x      : integer;
 sMES,sAno   : string;
 y           : real;
begin
 vWith                 := Trunc((ImageLogoCalendario.Width-10)/8);
 vHeigth               := Trunc((ImageLogoCalendario.Height-40)/5);
 Rec0.Width            := vWith;
 Rec1.Width            := vWith;
 Rec2.Width            := vWith;
 Rec3.Width            := vWith;
 Rec4.Width            := vWith;
 Rec5.Width            := vWith;
 Rec6.Width            := vWith;
 Rec7.Width            := vWith;
 for I := 1 to 31 do
 begin
   Ret        := TRectangle.Create(Self);
   Ret.Name   := 'RetDia_'+intToStr(i);
   Ret.Stroke.Color := TAlphaColors.White;
   Ret.Parent := (layCalendario);
   Ret.Width  := vWith;
   Ret.Height := vHeigth;
   Ret.Opacity:= 0.9;

   lblEven                        := TLabel.Create(self);
   lblEven.Name                   := 'lblEven_'+intToStr(i);
   lblEven.Align                  := TAlignLayout.Bottom;
   lblEven.StyledSettings         := lblEven.StyledSettings - [TStyledSetting.FontColor];
   lblEven.Text                   := '';
   lblEven.TextSettings.FontColor := TAlphaColors.White;
   lblEven.Margins.Left           := 3;
   lblEven.Parent                 := Ret;

   lblOco                         := TLabel.Create(self);
   lblOco.Name                    := 'lblOco_'+intToStr(i);
   lblOco.Align                   := TAlignLayout.Bottom;
   lblOco.StyledSettings          := lblOco.StyledSettings - [TStyledSetting.FontColor];
   lblOco.TextSettings.FontColor  := TAlphaColors.White;
   lblOco.Margins.Left            := 3;
   lblOco.Parent                  := Ret;
   lblOco.Text                    := '';

   But                            := TSpeedButton.Create(self);
   but.StyleLookup                := 'donetoolbutton';
   But.Align                      := TAlignLayout.Client;
   But.TextAlign                  := TTextAlign.Center;
   But.StyledSettings             := But.StyledSettings - [TStyledSetting.FontColor,TStyledSetting.Size];
   But.TextSettings.Font.Size     := 50;
   But.Text                       := intToStr(i);
   But.TextSettings.FontColor     := TAlphaColors.Chartreuse;
   But.Parent                     := Ret;
   But.Tag                        := I;
   But.OnClick                    := AbreDia;
 end;
end;

procedure TfrmCadCalendario.Image3Click(Sender: TObject);
begin
  layMesAno.Visible     := true;
  layOcorrencia.Visible := false;
  geraCalendario(
   FormatDateTime('dd',date),
   IntToStr(iMesAtual).PadLeft(2,'0'),
   cbxAno.Selected.Text
  );
end;

procedure TfrmCadCalendario.imgMenuClick(Sender: TObject);
begin
 if layMnu1.Width = 210 then
 begin
   TreeItemNovo1.Text    := '';
   TreeItemEditar1.Text  := '';
   TreeItemExcluir1.Text := '';
   layMnu1.Width         := 60;
 end
 else
 begin
   TreeItemNovo1.Text    := '           Novo';
   TreeItemEditar1.Text  := '           Editar';
   TreeItemExcluir1.Text := '           Excluir';
   layMnu1.Width         := 210;
 end;
end;

function TfrmCadCalendario.MesEstenso(mes: Integer): string;
begin
  case mes of
   1  : result:= 'Janeiro';
   2  : result:= 'Fevereiro';
   3  : result:= 'Março';
   4  : result:= 'Abril';
   5  : result:= 'Maio';
   6  : result:= 'Junho';
   7  : result:= 'Julho';
   8  : result:= 'Agosto';
   9  : result:= 'Setembro';
   10 : result:= 'Outubro';
   11 : result:= 'Novembro';
   12 : result:= 'Dezembro';
  end;
end;

procedure TfrmCadCalendario.StringGrid2CellClick(const Column: TColumn;
  const Row: Integer);
begin
  lblDescricao.Text := serviceDB.CalendarioDESCRICAO_EVENTO.AsString;
end;

procedure TfrmCadCalendario.TreeItemEditarClick(Sender: TObject);
begin
  layOcorrencia.Visible       := false;
  edtData.Date                := serviceDB.CalendarioDATA.AsDateTime;
  edtHora.Time                := serviceDB.CalendarioHORA.AsDateTime;
  cbxTipoOcorrencia.ItemIndex := serviceDB.CalendarioTIPO_EVENTO.AsInteger;
  edtDescricao.Text           :=(serviceDB.CalendarioDESCRICAO_EVENTO.AsString);
  serviceDB.Calendario.Edit;
  inherited;
end;

procedure TfrmCadCalendario.TreeItemExcluir1Click(Sender: TObject);
var
  dlg :TFrmmsgDlg;
begin
    dlg := TFrmmsgDlg.Create(nil);
    dlg.Position := TFormPosition.ScreenCenter;
    dlg.msg.Text := 'Deseja Realmente Excluir esse Evento?';
    dlg.btnCancel.Visible := true;
    dlg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      if dlg.vBntConfirmaMsg=1 then
      begin
        serviceDB.Calendario.Edit;
        serviceDB.CalendarioSTATUS.AsInteger :=-1;
        serviceDB.Calendario.ApplyUpdates(-1);
        layOcorrencia.Visible        := false;
         geraCalendario(
         FormatDateTime('dd',date),
         IntToStr(iMesAtual).PadLeft(2,'0'),
         cbxAno.Selected.Text
         );
      end;
    end);
    Exit;
end;

procedure TfrmCadCalendario.TreeItemNovoClick(Sender: TObject);
begin
  layOcorrencia.Visible       := false;
  edtData.Date                := vDta;
  edtData.Enabled             := false;
  edtHora.Time                := Time;
  cbxTipoOcorrencia.ItemIndex :=0;
  edtDescricao.Lines.Clear;
  lblTipoOcorrencia.Visible := true;
  edtTipoOcorrencia.Visible := true;
  serviceDB.Calendario.Close;
  serviceDB.Calendario.Open;
  serviceDB.Calendario.Insert;
  inherited;
end;

end.
