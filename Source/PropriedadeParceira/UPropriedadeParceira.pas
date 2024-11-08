unit UPropriedadeParceira;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.Objects, FMX.TreeView, FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ListBox,Data.Db,
  FMX.Effects,System.DateUtils;

type
  TfrmCadPropriedades = class(TfrmCadPadrao)
    tbiProdutor: TTabItem;
    Layout1: TLayout;
    Layout3: TLayout;
    ToolBar5: TToolBar;
    ToolBar6: TToolBar;
    Label3: TLabel;
    layProdutor: TLayout;
    StringGrid2: TStringGrid;
    TreeView1: TTreeView;
    TreeNovoProdutor: TTreeViewItem;
    Image8: TImage;
    TreeEditaProdutor: TTreeViewItem;
    Image9: TImage;
    TreeExcluiProdutor: TTreeViewItem;
    Image10: TImage;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    edtNome: TEdit;
    Layout9: TLayout;
    Layout10: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Layout11: TLayout;
    edtCidade: TEdit;
    Layout12: TLayout;
    Layout13: TLayout;
    Label7: TLabel;
    Layout14: TLayout;
    edtEndereco: TEdit;
    cbxUF: TComboBox;
    Layout15: TLayout;
    Layout16: TLayout;
    Label8: TLabel;
    Label9: TLabel;
    Layout17: TLayout;
    edtCodStabGTA: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    Label11: TLabel;
    Layout18: TLayout;
    Layout19: TLayout;
    Label12: TLabel;
    Layout20: TLayout;
    edtNomeProdutor: TEdit;
    Layout21: TLayout;
    Layout22: TLayout;
    Label13: TLabel;
    Layout23: TLayout;
    edtIE: TEdit;
    LinkControlToField3: TLinkControlToField;
    Rectangle9: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle5: TRectangle;
    Label10: TLabel;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Image3: TImage;
    Layout4: TLayout;
    ShadowEffect1: TShadowEffect;
    btnConfirmaProdutor: TRectangle;
    Layout24: TLayout;
    Image4: TImage;
    Label14: TLabel;
    ShadowEffect2: TShadowEffect;
    btnCancelaProdutor: TRectangle;
    Layout25: TLayout;
    Image11: TImage;
    Label15: TLabel;
    ShadowEffect3: TShadowEffect;
    edtCNPJCPFProdutor: TEdit;
    Label16: TLabel;
    edtCodErasBND: TEdit;
    Layout26: TLayout;
    Rectangle8: TRectangle;
    Layout27: TLayout;
    Label18: TLabel;
    Layout28: TLayout;
    Label17: TLabel;
    Label19: TLabel;
    edtSif: TEdit;
    edtNirf: TEdit;
    edtIncra: TEdit;
    Label20: TLabel;
    cbxTipo: TComboBox;
    Rectangle4: TRectangle;
    Image6pROP: TImage;
    procedure TreeItemNovoClick(Sender: TObject);
    procedure TreeItemEditarClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure edtFiltroNameChangeTracking(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnConfirmaProdutor1Click(Sender: TObject);
    procedure TreeNovoProdutorClick(Sender: TObject);
    procedure TreeEditaProdutorClick(Sender: TObject);
    procedure TreeExcluiProdutorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure edtCNPJCPFProdutorExit(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure StringGrid2CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgCloseClick(Sender: TObject);
    procedure cbxTipoChange(Sender: TObject);
    procedure edtNomeProdutorExit(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure cbxUFExit(Sender: TObject);
    procedure edtEnderecoExit(Sender: TObject);
    procedure edtCodErasBNDExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    vIdProp : string;
    LastTimeKeydown:TDatetime;
    Keys:string;
    function FormatarCPFCNPJ(const Doc: String): String;
    procedure Filtro;
  protected
  public
    vIdPropriedade:string;
  end;

var
  frmCadPropriedades: TfrmCadPropriedades;

implementation

{$R *.fmx}

uses UCadUsers, UPrincipal, UServiceDB, UCadCategoria;

procedure TfrmCadPropriedades.btnConfirmaClick(Sender: TObject);
begin
 edtNome.SetFocus;
 if edtNome.Text.Length=0 then
  begin
   MessageDlg('Infome o nome da Propriedade!', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes
  ], 0,
    procedure(const AResult: System.UITypes.TModalResult)
     begin
      case AResult of
      mrYES:
      begin
        edtNome.SetFocus;
        Exit;
      end;
     end;
    end);
  end
  else
  begin
    if edtCidade.Text.Length=0 then
    begin
     MessageDlg('Infome a Cidade da Propriedade!', System.UITypes.TMsgDlgType.mtInformation,
    [System.UITypes.TMsgDlgBtn.mbYes
    ], 0,
      procedure(const AResult: System.UITypes.TModalResult)
       begin
        case AResult of
        mrYES:
        begin
          edtCidade.SetFocus;
          Exit;
        end;
       end;
      end);
    end
    else
    begin
      if cbxUF.ItemIndex =-1 then
      begin
       MessageDlg('Infome o Esttado da Propriedade!', System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes
      ], 0,
        procedure(const AResult: System.UITypes.TModalResult)
         begin
          case AResult of
          mrYES:
          begin
            cbxUF.SetFocus;
            Exit;
          end;
         end;
        end);
      end
      else
      begin
        try
         serviceDB.TablePropriedadesNOME.AsString             := edtNome.Text;
         serviceDB.TablePropriedadesCIDADE.AsString           := edtCidade.Text;
         serviceDB.TablePropriedadesUF.AsString               := cbxUF.Selected.Text;
         serviceDB.TablePropriedadesENDERECO.AsString         := edtEndereco.Text;
         serviceDB.TablePropriedadesCOD_ESTAB_GTA.AsString    := edtCodStabGTA.Text;
         serviceDB.TablePropriedadesIE.AsString               := edtIE.Text;
         serviceDB.TablePropriedadesNIRF.AsString             := edtNirf.Text;
         serviceDB.TablePropriedadesINCRA.AsString            := edtIncra.Text;
         serviceDB.TablePropriedadesUSRER_ID.AsString :=serviceDB.vIdUserLogado;
         serviceDB.TablePropriedadesCIF.AsString              := edtSif.Text;
         serviceDB.TablePropriedadesCOD_ERAS_BND.AsString     := edtCodErasBND.Text;
         serviceDB.TablePropriedades.ApplyUpdates(-1);
         serviceDB.TablePropriedades.Active := false;
         serviceDB.TablePropriedades.Active := true;
         MudarAba(tbiMnu,sender);
        except
         on e : Exception do
         MyShowMessage('Erro ao Inserir Propriedade: '+e.Message,FALSE)
        end;
      end;
    end;
  end;
end;

procedure TfrmCadPropriedades.btnConfirmaProdutor1Click(Sender: TObject);
begin
  edtNomeProdutor.SetFocus;
  if edtNomeProdutor.Text.Length=0 then
  begin
   MyShowMessage('Infome o nome do Produtor!',false);
   edtNomeProdutor.SetFocus;
   Exit;
  end;
  if edtCNPJCPFProdutor.Text.Length=0 then
  begin
    MyShowMessage('Infome o cpf/cnpj do Produtor!',false);
    edtCNPJCPFProdutor.SetFocus;
    Exit;
  end;
  try
    serviceDB.TableProdutoresNOME.AsString           := edtNomeProdutor.Text;
    serviceDB.TableProdutoresCPF_CNPJ.AsString       := edtCNPJCPFProdutor.Text;
    serviceDB.TableProdutoresID_PROPRIEDADE.AsString := vIdProp;
    serviceDB.TableProdutoresUSER_ID.AsString        := serviceDB.vIdUserLogado;
    serviceDB.TableProdutoresCPF_CNPJ.AsString       := edtCNPJCPFProdutor.Text;
    serviceDB.TableProdutores.ApplyUpdates(-1);
    serviceDB.TableProdutores.Close;
    serviceDB.TableProdutores.Open;
    MudarAba(tbiMnu,sender);
  except
  on e : Exception do
    MyShowMessage('Erro ao Inserir Produtor: '+e.Message,false)
  end;
end;

procedure TfrmCadPropriedades.cbxTipoChange(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmCadPropriedades.cbxUFExit(Sender: TObject);
begin
 DelayedSetFocus(edtEndereco);
end;

procedure TfrmCadPropriedades.edtCNPJCPFProdutorExit(Sender: TObject);
begin
 edtCNPJCPFProdutor.Text := FormatarCPFCNPJ(edtCNPJCPFProdutor.Text);
end;

procedure TfrmCadPropriedades.edtCodErasBNDExit(Sender: TObject);
begin
  DelayedSetFocus(edtNirf);
end;

procedure TfrmCadPropriedades.edtEnderecoExit(Sender: TObject);
begin
  DelayedSetFocus(edtCodStabGTA);

end;

procedure TfrmCadPropriedades.edtFiltroNameChangeTracking(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmCadPropriedades.edtNomeExit(Sender: TObject);
begin
 DelayedSetFocus(edtCidade);
end;

procedure TfrmCadPropriedades.edtNomeProdutorExit(Sender: TObject);
begin
 DelayedSetFocus(edtCNPJCPFProdutor);
end;

procedure TfrmCadPropriedades.Filtro;
var
 vFiltro:string;
 vFiltrada:integer;
begin
 vFiltro   :='';
 vFiltrada :=0;
 if edtFiltroName.Text.Length>0 then
 begin
   vFiltro := 'NOME LIKE '+QuotedStr('%'+edtFiltroName.Text+'%');
   vFiltrada:=1;
 end
 else
 begin
  vFiltro   :='';
  vFiltrada :=0;
 end;
 if cbxTipo.ItemIndex>0 then
 begin
   if vFiltrada=0 then
   begin
     if cbxTipo.ItemIndex=1 then
     begin
       vFiltro := 'PROPRIA=1'
     end;
     if cbxTipo.ItemIndex=2 then
     begin
       vFiltro := 'PROPRIA=0'
     end;
   end;

   if vFiltrada=1 then
   begin
     if cbxTipo.ItemIndex=1 then
     begin
       vFiltro := vFiltro +' AND PROPRIA=1'
     end;
     if cbxTipo.ItemIndex=2 then
     begin
       vFiltro := vFiltro +' AND PROPRIA=0'
     end;
   end;
 end;

 if vFiltro.Length>0 then
  begin
   serviceDB.TablePropriedades.Filtered := false;
   serviceDB.TablePropriedades.Filter   := vFiltro;
   serviceDB.TablePropriedades.Filtered := true;
  end
 else
 begin
   serviceDB.TablePropriedades.Filtered := false;
   serviceDB.TablePropriedades.Close;
   serviceDB.TablePropriedades.Open;
   serviceDB.TableProdutores.Open;
 end;
end;

function TfrmCadPropriedades.FormatarCPFCNPJ(const Doc: String): String;
begin
 if (Length(Doc) = 11) then
 begin
   Result:= Copy(Doc,1,3) + '.' + Copy(Doc,4,3) + '.' + Copy(Doc,7,3) + '-' + Copy(Doc,10,2);
 end;
 if (Length(Doc) = 14) then
 begin
   Result:= Copy(Doc,1,2) + '.' + Copy(Doc,3,3) + '.' + Copy(Doc,6,3) + '/' + Copy(Doc,9,4) + '-' + Copy(Doc,13,2);
 end;
end;

procedure TfrmCadPropriedades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmPrincipal.vCadGTA := false;
end;

procedure TfrmCadPropriedades.FormCreate(Sender: TObject);
begin
  layProdutor.Enabled := false;
  inherited;
end;

procedure TfrmCadPropriedades.FormShow(Sender: TObject);
begin
  Treemnu.Enabled := frmPrincipal.vIdBaseCampo='0';
  inherited;
end;

procedure TfrmCadPropriedades.imgCloseClick(Sender: TObject);
begin
  if frmPrincipal.vMov=1 then
   Close
  else
   inherited;
end;
procedure TfrmCadPropriedades.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  vIdProp := StringGrid1.Cells[0,StringGrid1.Row];
  layProdutor.Enabled := true;
  inherited;
end;

procedure TfrmCadPropriedades.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
//  Close;
end;

procedure TfrmCadPropriedades.StringGrid2CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 if (frmPrincipal.vCadGTA) or (serviceDB.vCadPedido=1) then
  Close;
end;

procedure TfrmCadPropriedades.TreeEditaProdutorClick(Sender: TObject);
begin
 if vIdProp.Length=0 then
  begin
   MyShowMessage('Selecione a propriedade!!',false);
   Exit;
  end;
 try
   serviceDB.TableProdutores.Close;
   serviceDB.TableProdutores.Open;
   serviceDB.TableProdutores.Edit;
   edtNomeProdutor.Text  := serviceDB.TableProdutoresNOME.AsString;
   edtCNPJCPFProdutor.Text       := serviceDB.TableProdutoresCPF_CNPJ.AsString;
   MudarAba(tbiProdutor,sender);
  except
   on e : Exception do
   MyShowMessage('Erro ao Inserir Produtor: '+e.Message,FALSE)
  end;
end;

procedure TfrmCadPropriedades.TreeExcluiProdutorClick(Sender: TObject);
begin
  if vIdProp.Length=0 then
  begin
   MyShowMessage('Selecione a propriedade!!',false);
   Exit;
  end;
  MyShowMessage('Deseja Realmente deletar essa Propriedade?',True);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TableProdutores.Edit;
       serviceDB.TableProdutoresSTATUS.AsInteger :=0;
       serviceDB.TableProdutores.ApplyUpdates(-1);
       serviceDB.TableProdutores.Close;
       serviceDB.TableProdutores.Open;
       MyShowMessage('Dados deletados com Sucesso!',FALSE);
      except
      on E : Exception do
       begin
         MyShowMessage('Exception class name = '+E.ClassName,FALSE);
         MyShowMessage('Exception message = '+E.Message,FALSE);
       end;
      end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',FALSE);
   end;
  end;
end;





procedure TfrmCadPropriedades.TreeItemEditarClick(Sender: TObject);
begin
try
   edtNirf.Text              := serviceDB.TablePropriedadesNIRF.AsString;
   edtIncra.Text             := serviceDB.TablePropriedadesINCRA.AsString;
   edtSif.Text               := serviceDB.TablePropriedadesCIF.AsString;
   edtCodErasBND.Text        := serviceDB.TablePropriedadesCOD_ERAS_BND.AsString;
   edtNome.Text              := serviceDB.TablePropriedadesNOME.AsString;
   edtCidade.Text            := serviceDB.TablePropriedadesCIDADE.AsString;
   edtEndereco.Text          := serviceDB.TablePropriedadesENDERECO.AsString;
   edtIE.Text                := serviceDB.TablePropriedadesIE.AsString;
   edtCodStabGTA.Text        := serviceDB.TablePropriedadesCOD_ESTAB_GTA.AsString;
   cbxUF.Selected.Text       := serviceDB.TablePropriedadesUF.AsString;
   serviceDB.TablePropriedades.Edit;
   inherited;
  except
   on e : Exception do
   MyShowMessage('Erro ao Editar Propriedade: '+e.Message,FALSE)
  end;
end;

procedure TfrmCadPropriedades.TreeItemExcluirClick(Sender: TObject);
begin
 if serviceDB.TablePropriedadesPROPRIA.AsInteger=1 then
 begin
  MyShowMessage('Propriedade Própria impossivel deletar!!',false);
   Exit;
 end
 else
 begin
  MyShowMessage('Deseja Realmente deletar essa Propriedade?',true);
  case dlg.vBntConfirmaMsg of
  1:
  begin
      try
       serviceDB.TablePropriedades.Edit;
       serviceDB.TablePropriedadesSTATUS.AsInteger :=0;
       serviceDB.TablePropriedades.ApplyUpdates(-1);
       serviceDB.TablePropriedades.Close;
       serviceDB.TablePropriedades.Open;
       MyShowMessage('Dados deletados com Sucesso!',FALSE);
      except
      on E : Exception do
       begin
         MyShowMessage('Exception class name = '+E.ClassName,FALSE);
         MyShowMessage('Exception message = '+E.Message,FALSE);
       end;
      end;
  end;
  2:
   begin
     MyShowMessage('Operação Abortada',FALSE);
   end;
  end;
  end;
end;

procedure TfrmCadPropriedades.TreeItemNovoClick(Sender: TObject);
begin
  try
   serviceDB.TablePropriedades.Close;
   serviceDB.TablePropriedades.Open;
   serviceDB.TablePropriedades.Insert;
   inherited;
  except
   on e : Exception do
   MyShowMessage('Erro ao Inserir Propriedade: '+e.Message,FALSE)
  end;
end;

procedure TfrmCadPropriedades.TreeNovoProdutorClick(Sender: TObject);
begin
 if vIdProp.Length=0 then
  begin
   MyShowMessage('Selecione a propriedade!!',false);
   Exit;
  end;
 try
   serviceDB.TableProdutores.Close;
   serviceDB.TableProdutores.Open;
   serviceDB.TableProdutores.Insert;
   edtNomeProdutor.Text  := '';
   edtCNPJCPFProdutor.Text       := '';
   MudarAba(tbiProdutor,sender);
  except
   on e : Exception do
   MyShowMessage('Erro ao Inserir Produtor: '+e.Message,false)
  end;
end;

end.
