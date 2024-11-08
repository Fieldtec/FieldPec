unit UMsgDlgRel;

interface

uses
 System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Effects, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts, FMX.ActnList, System.Actions, FMX.TreeView, System.ImageList,
  FMX.ImgList, FMX.ListBox,FireDAC.Comp.Client, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, FMX.Grid, FMX.DateTimeCtrls, FMX.Memo,SHELLAPI,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FMX.WebBrowser,Vcl.Controls,FMX.Ani, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,Windows,Winapi.TlHelp32,
  System.Notification, System.Threading, ppParameter, ppDesignLayer, ppCtrls,
  ppBands, ppClass, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe;

type
  TFrmmsgDlgRel = class(TForm)
    RecStatusAcao: TRectangle;
    layBase: TLayout;
    Layout1: TLayout;
    imgLogo: TImage;
    Layout16: TLayout;
    ShadowEffect4: TShadowEffect;
    Timer1: TTimer;
    ppDB_REL_GEN_ATIVOS: TppDBPipeline;
    ppRepGenAtivos: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppImage6: TppImage;
    ppLabel60: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppShape13: TppShape;
    ppDBText35: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppDBText36: TppDBText;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape20: TppShape;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList6: TppParameterList;
    Layout2: TLayout;
    msg: TLabel;
    layBtnControls: TLayout;
    SEffectBtnConfirm1: TShadowEffect;
    btnConfirmar: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    SEffectBtnConfirm: TShadowEffect;
    btnCancel: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    SEffectBtnCancel: TShadowEffect;
  procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    vBntConfirmaMsg,vAguarde :integer;
    vPositionX,
    vPositionY :Single;
    vReport:string;
    procedure GeraRel(AnomeRel:string);
  end;

var
  FrmmsgDlgRel: TFrmmsgDlgRel;

implementation

{$R *.fmx}

uses UPrincipal, UServiceDB, USeviceConfinamento, UdmReportConf,
  URelatorioZooConf;

procedure TFrmmsgDlgRel.btnCancelClick(Sender: TObject);
begin
  vBntConfirmaMsg         :=2;
  Close;
end;

procedure TFrmmsgDlgRel.btnConfirmarClick(Sender: TObject);
begin
  vBntConfirmaMsg         :=1;
  Close;
end;

procedure TFrmmsgDlgRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 vAguarde :=0;
end;

procedure TFrmmsgDlgRel.FormCreate(Sender: TObject);
begin
  vBntConfirmaMsg         :=0;
end;

procedure TFrmmsgDlgRel.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkReturn then
 begin
   btnConfirmarClick(sender);
 end;
end;

procedure TFrmmsgDlgRel.GeraRel(AnomeRel: string);
var
 Task:ITask;
begin
  vPositionX              :=imgLogo.Position.X;
  vPositionY              :=imgLogo.Position.Y;
  if AnomeRel='ppRepGenAtivos' then
  begin
   Task := TTask.Create(
   procedure ()
   begin
     try
       serviceDB.qryRelResumoAtivo.close;
       serviceDB.qryRelResumoAtivo.Open;
       msg.Text :='Relatório Gerado com Sucesso!!';
       RecStatusAcao.Fill.Kind  :=  TBrushKind.Solid;
       RecStatusAcao.Fill.Color :=  TAlphaColorRec.Green;
       btnConfirmar.Visible := true;
      finally
      end;
   end);
   Task.Start;
  end;
 if AnomeRel='ListaAnimal' then
 begin
  Task := TTask.Create(
   procedure ()
   begin
     try
       frmPrincipal.AbrirQryGrid;
       Close;
      finally
      end;
   end);
   Task.Start;
 end;

 if AnomeRel='Zootecnico' then
 begin
  Task := TTask.Create(
   procedure ()
   begin
     TThread.Synchronize(nil, procedure
     begin
       try
         dmRelConf.GeraRelZoo(frmRelatorioZooConf.edtDataFiltro.Date);
         Close;
        except
        on E : Exception do
         begin
           frmPrincipal.myShowMessage('Erro ao gerar relatorio : '+E.Message,false);
         end;
       end;
     end);
   end);
   Task.Start;
 end;
end;

procedure TFrmmsgDlgRel.Timer1Timer(Sender: TObject);
begin
   if RecStatusAcao.Stroke.Color=TAlphaColorRec.Black then
   begin
     RecStatusAcao.Stroke.Kind  :=  TBrushKind.Solid;
     RecStatusAcao.Stroke.Color :=  TAlphaColorRec.Red;

     if(vPositionX=imgLogo.Position.X) then
     begin
       imgLogo.AnimateFloat('Position.X',imgLogo.Width*2,1.2
       ,TAnimationType.InOut,TInterpolationType.Back);
       imgLogo.AnimateFloat('Position.Y',1,0.5,TAnimationType.InOut,TInterpolationType.Back);
     end
     else
     begin
       imgLogo.AnimateFloat('Position.X',vPositionX,1.2
       ,TAnimationType.InOut,TInterpolationType.Back);
       imgLogo.AnimateFloat('Position.Y',vPositionY,0.5,TAnimationType.InOut,TInterpolationType.Back);
     end;
   end
   else
   begin
     RecStatusAcao.Stroke.Kind  :=  TBrushKind.Solid;
     RecStatusAcao.Stroke.Color :=  TAlphaColorRec.Black;
   end;
end;
end.
