unit UFabricaNova;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, UCadPadrao,
  System.Rtti, FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.Components, FMX.EditBox, FMX.SpinBox,
  FMX.DateTimeCtrls, FMX.ListBox, FMX.Edit, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.StdCtrls, FMX.ScrollBox, FMX.Grid,
  FMX.Controls.Presentation, FMX.Objects, FMX.TreeView, FMX.Layouts;
type
  TfrmFabricaRacaoNova = class(TfrmCadPadrao)
    TreeViewItem1: TTreeViewItem;
    Image4: TImage;
    TreeViewItem2: TTreeViewItem;
    Image6: TImage;
    TreeViewItem3: TTreeViewItem;
    Image7: TImage;
    Label3: TLabel;
    Edit1: TEdit;
    EditButton3: TEditButton;
    ClearEditButton1: TClearEditButton;
    Label23: TLabel;
    edtPreMistura: TEdit;
    EditButton5: TEditButton;
    ClearEditButton2: TClearEditButton;
    Label14: TLabel;
    cbxCentroCustoF: TComboBox;
    Label16: TLabel;
    cbxTipoBaixaF: TComboBox;
    Label15: TLabel;
    edtOperadorF: TEdit;
    EditButton4: TEditButton;
    GroupBox3: TGroupBox;
    edtFDataEntATE: TDateEdit;
    Label12: TLabel;
    edtFDataEntDE: TDateEdit;
    Label13: TLabel;
    layPopUpCad: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout234: TLayout;
    Layout235: TLayout;
    Layout236: TLayout;
    Label103: TLabel;
    Image161: TImage;
    Layout237: TLayout;
    Rectangle48: TRectangle;
    Label104: TLabel;
    btnVoltar: TLabel;
    Layout11: TLayout;
    Rectangle9: TRectangle;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    cbxTipoBaixaEdita: TComboBox;
    cbxCentroCustoEdita: TComboBox;
    edtDataBaixaEdita: TDateEdit;
    edtHoraInicioEdita: TTimeEdit;
    edtHoraFimEdita: TTimeEdit;
    layImprimiFicha: TLayout;
    Rectangle6: TRectangle;
    Layout15: TLayout;
    C: TRectangle;
    Rectangle5: TRectangle;
    Layout9: TLayout;
    Label21: TLabel;
    Label22: TLabel;
    Layout10: TLayout;
    Edit4: TEdit;
    edtFabFicha: TDateEdit;
    Layout20: TLayout;
    btnImprimiFicha: TRectangle;
    Layout21: TLayout;
    Image8: TImage;
    Label24: TLabel;
    btnCancelaFicha: TRectangle;
    Layout22: TLayout;
    Image9: TImage;
    Label25: TLabel;
    Rectangle8: TRectangle;
    Layout23: TLayout;
    Label26: TLabel;
    Label27: TLabel;
    Label20: TLabel;
    Layout24: TLayout;
    Edit2: TEdit;
    edtPrevisaoFicha: TEdit;
    edtQtdBatida: TSpinBox;
    Rectangle7: TRectangle;
    Layout16: TLayout;
    Label28: TLabel;
    Label29: TLabel;
    Layout17: TLayout;
    edtRacaoFicha: TEdit;
    EditButton2: TEditButton;
    Edit3: TEdit;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Edit5: TEdit;
    Image3: TImage;

   private

  public
    
  end;

var
  frmFabricaRacaoNova: TfrmFabricaRacaoNova;

implementation

{$R *.fmx}



end.
