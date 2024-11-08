unit UCadPadrao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.StdCtrls, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts,
  FMX.TabControl, FMX.ActnList, System.Actions, FMX.Effects,UMsgDlg;

type
  TfrmCadPadrao = class(TForm)
    layBase: TLayout;
    tbPrincipal: TTabControl;
    tbiMnu: TTabItem;
    layMnuPrincipal: TLayout;
    layMnu: TLayout;
    recMnu: TRectangle;
    Treemnu: TTreeView;
    TreeItemNovo: TTreeViewItem;
    TreeItemEditar: TTreeViewItem;
    TreeItemExcluir: TTreeViewItem;
    laySuperior: TLayout;
    tbiCad: TTabItem;
    layLista: TLayout;
    RecLista: TRectangle;
    GroupBox1: TGroupBox;
    edtFiltroName: TEdit;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    layCad: TLayout;
    Layout2: TLayout;
    Image5: TImage;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    EditTab: TEdit;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    layMnuPadrao: TLayout;
    imgMenu: TImage;
    btnVoltarPadrao: TSpeedButton;
    Rectangle1: TRectangle;
    layBtnControls: TLayout;
    btnConfirma: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    btnCancelar: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    lblmnu: TLabel;
    ImageVoltaPadrao: TImage;
    RecWhitPadrao: TRectangle;
    LayInfPadrao: TLayout;
    RectangleInfPadrao: TRectangle;
    procedure imgCloseClick(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    dlg :TFrmmsgDlg;
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure DelayedSetFocus(control: TControl);
  end;

var
  frmCadPadrao: TfrmCadPadrao;

implementation

{$R *.fmx}

uses  UPrincipal, UCadUsers, UServiceDB;

procedure TfrmCadPadrao.btnCancelarClick(Sender: TObject);
begin
  MudarAba(tbiMnu,Sender);
end;

procedure TfrmCadPadrao.btnConfirmaClick(Sender: TObject);
begin
 Application.ProcessMessages;
end;

procedure TfrmCadPadrao.btnVoltarPadraoClick(Sender: TObject);
begin
   MudarAba(tbiMnu,Sender);
end;

procedure TfrmCadPadrao.DelayedSetFocus(control: TControl);
begin
    TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
         procedure
         begin
           control.SetFocus;
         end
      );
    end
  ).Start;
end;

procedure TfrmCadPadrao.FormCreate(Sender: TObject);
begin
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiMnu;
  TreeItemNovo.Enabled   := serviceDB.vTipoUser='1';
 TreeItemExcluir.Enabled := serviceDB.vTipoUser='1';
 TreeItemEditar.Enabled  := serviceDB.vTipoUser='1';
end;

procedure TfrmCadPadrao.FormShow(Sender: TObject);
begin
 Treemnu.Enabled := (frmPrincipal.vIdBaseCampo='0') or (frmPrincipal.vIdBaseCampo='');
 serviceDB.TableAuxMotivoAplicacao.close;
 serviceDB.TableAuxMotivoAplicacao.Open;
end;

procedure TfrmCadPadrao.imgCloseClick(Sender: TObject);
begin
  close;
  frmPrincipal.MudarAba(frmPrincipal.tbimenu,sender);
end;

procedure TfrmCadPadrao.imgMenuClick(Sender: TObject);
begin
 if layMnu.Width = 210 then
 begin
   TreeItemNovo.Text    := '';
   TreeItemEditar.Text  := '';
   TreeItemExcluir.Text := '';
   layMnu.Width         := 60;
 end
 else
 begin
   TreeItemNovo.Text    := '           Novo';
   TreeItemEditar.Text  := '           Editar';
   TreeItemExcluir.Text := '           Excluir';
   layMnu.Width         := 210;
 end;
end;

procedure TfrmCadPadrao.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmCadPadrao.MyShowMessage(msg: string; btnCancel: Boolean);
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
    frmPrincipal.vConfirma := dlg.vBntConfirmaMsg;
  end);
end;

procedure TfrmCadPadrao.TreeItemEditarClick(Sender: TObject);
begin
 MudarAba(tbiCad,Sender);
end;

procedure TfrmCadPadrao.TreeItemNovoClick(Sender: TObject);
begin
 MudarAba(tbiCad,Sender);
end;

end.
