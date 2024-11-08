unit UBND;

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
  FMX.WebBrowser,Vcl.Controls,
  FMX.Ani, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,Windows,Winapi.TlHelp32,
  System.Notification, System.Threading, ppParameter, ppDesignLayer, ppCtrls,
  ppBands, ppClass, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, Fmx.Bind.Grid, Data.Bind.Grid, FMX.Menus, ppVar,MidasLib,
  View.WebCharts,Charts.Types, FireDAC.Stan.StorageBin,System.Generics.Collections,
  FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FireDAC.Comp.UI,
  Winapi.ActiveX, UCadPadrao, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfrmCadBND = class(TfrmCadPadrao)
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    Layout4: TLayout;
    Layout5: TLayout;
    Label4: TLabel;
    edtPathPdf: TEdit;
    EditButton1: TEditButton;
    ShadowEffect3: TShadowEffect;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToFieldID: TLinkFillControlToField;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    lblQtdAnimaisArquivo: TLabel;
    btnImport: TSpeedButton;
    ComboBox1: TComboBox;
    Label6: TLabel;
    btnFiltraAnimal: TSpeedButton;
    Image23: TImage;
    LinkFillControlToFieldID2: TLinkFillControlToField;
    lblAguarde: TLabel;
    layGrid: TLayout;
    ListView1: TListView;
    Rectangle3bnd: TRectangle;
    Layout6: TLayout;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Rectangle1bnd: TRectangle;
    Layout1bnd: TLayout;
    Layout3bnd: TLayout;
    Label3: TLabel;
    cbxProdutorDestino: TComboBox;
    ShadowEffect2: TShadowEffect;
    Layout1: TLayout;
    Layout8bnd: TLayout;
    Rectangle4bnd: TRectangle;
    lblTotalAnimais: TLabel;
    LinkFillControlToField1: TLinkFillControlToField;
    Label9: TLabel;
    Label11: TLabel;
    procedure cbxProdutorDestinoChange(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure btnFiltraAnimalClick(Sender: TObject);
    procedure TreeItemExcluirClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
  private
    function NumLinhasArq(Arqtexto: String): integer;
    function RemoveAcento(const pText: string): string;
  public
    var
    vWebBrowser:TWebBrowser;
    vIdProdutor,vIdProdutorFiltro  :STRING;

  end;

var
  frmCadBND: TfrmCadBND;

implementation

{$R *.fmx}

uses UServiceDB, UPrincipal;



procedure TfrmCadBND.btnConfirmaClick(Sender: TObject);
begin
 MudarAba(tbiMnu,Sender);
end;

procedure TfrmCadBND.btnFiltraAnimalClick(Sender: TObject);
var
 myThread : TThread;
 item   : TListViewItem;
 txt    : TListItemText;
begin
 if ComboBox1.ItemIndex=-1 then
 begin
   ShowMessage('Informe o Produtor!!');
   Exit;
 end;
   ListView1.Items.Clear;
   serviceDB.AbreBNDProdutor(vIdProdutorFiltro,edtFiltroName.Text);
   myThread := TThread.CreateAnonymousThread(
   procedure
   var
     I      : integer;
   begin
    TThread.Synchronize(nil,procedure
    begin
     I :=1;
     while not serviceDB.BND.Eof do
     begin
       item := ListView1.Items.Add;
       with frmCadBND do
       begin
         with item  do
         begin
           txt :=   TListItemText(Objects.FindDrawable('Text1'));
           txt.Text := serviceDB.BNDSISBOV.AsString;
           txt.Font.Size  := 12;
           txt.Font.Style := [TFontStyle.fsBold];

           txt :=   TListItemText(Objects.FindDrawable('Text2'));
           txt.Text := serviceDB.BNDNASCIMENTO.AsString;
           txt.Font.Size  := 12;
           txt.Font.Style := [TFontStyle.fsBold];

           txt :=   TListItemText(Objects.FindDrawable('Text3'));
           txt.Text := serviceDB.BNDRACA.AsString;
           txt.Font.Size  := 12;
           txt.Font.Style := [TFontStyle.fsBold];

           txt :=   TListItemText(Objects.FindDrawable('Text4'));
           txt.Text := serviceDB.BNDINCLUSAO.AsString;
           txt.Font.Size  := 12;
           txt.Font.Style := [TFontStyle.fsBold];

           txt :=   TListItemText(Objects.FindDrawable('Text5'));
           txt.Text := serviceDB.BNDDATAREG.AsString;
           txt.Font.Size  := 12;
           txt.Font.Style := [TFontStyle.fsBold];

           txt :=   TListItemText(Objects.FindDrawable('Text8'));
           txt.Text := serviceDB.BNDSEXO.AsString;
           txt.Font.Size  := 12;
           txt.Font.Style := [TFontStyle.fsBold];

           INC(I);
         end;
       end;
       serviceDB.BND.Next;
     end;
     lblTotalAnimais.Text := intToStr(I-1);
    end);
   end);
   myThread.Start;
end;

procedure TfrmCadBND.btnImportClick(Sender: TObject);
var
 I,X           : Integer;
 Txt         : TextFile;
 Quebra      : TStringList;
 vPathGeral,Arq,vConsulta:string;
 vQryAux:TFDQuery;
 vSISBOV,vNASCIMENTO,vRACA,vSEXO,vINCLUSAO,vINVENTARIO:string;
 myThread : TThread;
begin
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
  X:=0;
  if cbxProdutorDestino.ItemIndex=-1 then
  begin
    ShowMessage('Informe o Produtor');
    Exit;
  end;
  Arq       := frmPrincipal.PathSaveText;
  vPathGeral:= frmPrincipal.PathPdfToText+' '+
  edtPathPdf.Text+' '+Arq;
  Winexec(PAnsiChar(AnsiString(vPathGeral)),SW_NORMAL);
  sleep(5000);
  Quebra  := TStringList.Create;
  AssignFile(Txt,Arq);
  reset(txt);
  with vQryAux,vQryAux.SQL do
  begin
    Clear;
    Add('DELETE FROM TMP_BND');
    ExecSQL;
  end;
  myThread := TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize(nil,procedure
    begin
      lblAguarde.Visible := true;
    end);
    while not Eoln(txt) do
    begin
      Quebra.Clear;
      Readln(txt,Arq);
      ExtractStrings([';'],[],pchar(Arq),Quebra);
      if i>0 then
      begin
         vSISBOV     :=Quebra.Strings[0];
         vNASCIMENTO :=Quebra.Strings[1];
         vRACA       :=Quebra.Strings[2];
         vSEXO       :=Quebra.Strings[3];
         vINCLUSAO   :=Quebra.Strings[4];
         vINVENTARIO :=Quebra.Strings[5];
         if COPY(vSEXO,0,1)='F' then
          vSexo :='FEMEA';
         vConsulta   := serviceDB.ConsultaSisbovBndProdutor(vSISBOV,vIdProdutor);
         if vConsulta<>'0' then
         begin
          TThread.Synchronize(nil,procedure
          begin
           ShowMessage('Sisbov :'+vSISBOV+' já cadastrado na BND do Produtor :'+vConsulta+#13+
           ' Para importar novamente é necessario excuir a BND desse produtor.')
          end);
          X :=1;
          Break
         end;
         with vQryAux,vQryAux.SQL do
         begin
           Clear;
           Add('INSERT INTO TMP_BND(ID_PRODUTOR, SISBOV, NASCIMENTO, RACA, SEXO, INCLUSAO, INVENTARIO)');
           Add('VALUES(:ID_PRODUTOR, :SISBOV, :NASCIMENTO, :RACA, :SEXO, :INCLUSAO, :INVENTARIO)');
           ParamByName('ID_PRODUTOR').AsString :=vIdProdutor;
           ParamByName('SISBOV').AsString      :=vSISBOV;
           ParamByName('NASCIMENTO').AsDate    :=strToDate(vNASCIMENTO);
           ParamByName('RACA').AsString        :=vRACA;
           ParamByName('SEXO').AsString        :=vSEXO;
           ParamByName('INCLUSAO').AsDate      :=strToDate(vINCLUSAO);
           ParamByName('INVENTARIO').AsString  :=vINVENTARIO;
           ExecSQL;
         end;
      end;
      inc(i);
      TThread.Synchronize(nil,procedure
      begin
       lblQtdAnimaisArquivo.Text   := IntToStr(i);
      end);
    end;
    TThread.Synchronize(nil,procedure
    begin
     if X=0 then
     begin
       with vQryAux,vQryAux.SQL do
       begin
         Clear;
         Add('INSERT INTO bnd_hist SELECT * FROM BND WHERE id_produtor='+vIdProdutor);
         ExecSQL;
         serviceDB.FCon.Commit;

         Clear;
         Add('DELETE FROM BND WHERE ID_PRODUTOR='+vIdProdutor);
         ExecSQL;
         serviceDB.FCon.Commit;

         Clear;
         Add('INSERT INTO BND(ID_PRODUTOR,ID_USUARIO,INCLUSAO,INVENTARIO,NASCIMENTO,RACA,SEXO,SISBOV)');
         Add('SELECT ID_PRODUTOR,'+serviceDB.vIdUserLogado+',INCLUSAO,INVENTARIO,NASCIMENTO,UPPER(RACA),UPPER(SEXO),SISBOV FROM TMP_BND');
         ExecSQL;
         serviceDB.FCon.Commit;
       end;
       ShowMessage('BND Importada com Sucesso!');
     end;
     MudarAba(tbiMnu,Sender);
    end);
  end);
  myThread.Start;
end;

procedure TfrmCadBND.cbxProdutorDestinoChange(Sender: TObject);
begin
  if cbxProdutorDestino.ItemIndex>-1 then
    vIdProdutor := LinkFillControlToField1.BindList.GetSelectedValue.AsString
end;

procedure TfrmCadBND.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex>-1 then
    vIdProdutorFiltro := LinkFillControlToFieldID2.BindList.GetSelectedValue.AsString
end;

procedure TfrmCadBND.EditButton1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
   edtPathPdf.Text     := OpenDialog1.FileName;

end;
procedure TfrmCadBND.FormShow(Sender: TObject);
begin
  serviceDB.AbreProdutorProprio;
  inherited;
end;

procedure TfrmCadBND.imgCloseClick(Sender: TObject);
begin
 Close;
end;

function TfrmCadBND.NumLinhasArq(Arqtexto: String): integer;
var
  f: Textfile;
  linha, cont:integer;
begin
 linha := 0;
 cont := 0;
 assignFile(f,Arqtexto);
 Reset(f);
 While not eof(f) Do
 begin
  ReadLn(f);
  Cont := Cont + 1;
 end;
 closefile(f);
result := cont;
end;


function TfrmCadBND.RemoveAcento(const pText: string): string;
type
  USAscii20127 = type AnsiString(20127);
begin
  Result := string(USAscii20127(pText));
end;

procedure TfrmCadBND.TreeItemExcluirClick(Sender: TObject);
var
  vQryAux : TFDQuery;
begin
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.FCon;
 if ComboBox1.ItemIndex=-1 then
 begin
   ShowMessage('Informe um Produtor');
   Exit;
 end;
 with vQryAux,vQryAux.SQL do
 begin
  Clear;
  Add('INSERT INTO bnd_hist SELECT * FROM BND WHERE id_produtor='+vIdProdutorFiltro);
  ExecSQL;
  serviceDB.FCon.Commit;

  Clear;
  Add('DELETE FROM BND WHERE ID_PRODUTOR='+vIdProdutorFiltro);
  ExecSQL;
  serviceDB.FCon.Commit;

  ShowMessage('Bnd Deletada com Sucesso!');
  btnFiltraAnimalClick(sender);
 end;
end;

procedure TfrmCadBND.TreeItemNovoClick(Sender: TObject);
begin
  cbxProdutorDestino.ItemIndex :=-1;
  lblQtdAnimaisArquivo.Text    :='';
  edtPathPdf.Text              :='';
  lblAguarde.Visible           :=false;
  inherited;
end;

end.
