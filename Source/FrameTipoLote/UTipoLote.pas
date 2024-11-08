unit UTipoLote;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox;

type
  TFrameTipoLote = class(TFrame)
    Layout39: TLayout;
    Layout40: TLayout;
    Label18: TLabel;
    Image41: TImage;
    Layout1: TLayout;
    Layout2: TLayout;
    cbxTipoLote: TComboBox;
    Layout8: TLayout;
    btnConfirmar: TRectangle;
    Label5: TLabel;
    procedure Image41Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal;

procedure TFrameTipoLote.btnConfirmarClick(Sender: TObject);
begin
 if cbxTipoLote.ItemIndex=-1 then
 begin
    frmPrincipal.MyShowMessage('Selecione o tipo de lote!',false);
    vTipoLote := cbxTipoLote.ItemIndex.ToString;
    FrameTipoLote.free;
 end;
end;

procedure TFrameTipoLote.Image41Click(Sender: TObject);
begin
 if cbxTipoLote.ItemIndex=-1 then
 begin
    frmPrincipal.MyShowMessage('Selecione o tipo de lote!',false);
    vTipoLote := cbxTipoLote.ItemIndex.ToString;
    FrameTipoLote.free;
 end;
end;

end.
