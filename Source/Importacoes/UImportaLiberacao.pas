unit UImportaLiberacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.Edit, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.ScrollBox, FMX.Grid,
  FMX.Controls.Presentation, FMX.Effects, FMX.Objects, FMX.TreeView, FMX.Layouts,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope;

type
  TfrmImportaDataLiberacao = class(TfrmCadPadrao)
    Layout1: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Label3: TLabel;
    edtArquivo: TEdit;
    EditButton1: TEditButton;
    qryLiberacao: TFDQuery;
    qryLiberacaoID: TIntegerField;
    qryLiberacaoSISBOV: TStringField;
    qryLiberacaoDATA_LIBERACAO: TDateField;
    qryLiberacaoDATAREG: TDateField;
    qryLiberacaoID_USUARIO: TIntegerField;
    SaveDialog1: TSaveDialog;
    LayValidaImportacao: TLayout;
    Rectangle1800000000000000: TRectangle;
    lblIrregular: TLabel;
    lblQtdAnimaisArquivo: TLabel;
    lblQtdAnimaisProcImports: TLabel;
    ToolBar5: TToolBar;
    Label3300000: TLabel;
    lblQtdAnimalSemLiberacao: TLabel;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Label4: TLabel;
    procedure EditButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtFiltroNameKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure TreeItemNovoClick(Sender: TObject);
  private
    function NumLinhasArq(Arqtexto:String): integer;
  public
    { Public declarations }
  end;

var
  frmImportaDataLiberacao: TfrmImportaDataLiberacao;

implementation

{$R *.fmx}

uses UServiceDB;

procedure TfrmImportaDataLiberacao.btnCancelarClick(Sender: TObject);
begin
 qryLiberacao.Close;
 qryLiberacao.Open;
 tbPrincipal.ActiveTab := tbiMnu;
end;

procedure TfrmImportaDataLiberacao.btnConfirmaClick(Sender: TObject);
begin
 qryLiberacao.Close;
 qryLiberacao.Open;
 tbPrincipal.ActiveTab := tbiMnu;
end;

procedure TfrmImportaDataLiberacao.EditButton1Click(Sender: TObject);
var
 Txt         : TextFile;
 Quebra      : TStringList;
 Arq,Identificacao1,Data: String;
 vData:TDateTime;
 I,Contador,Irregular:integer;
 vQryAux:TFDQuery;
begin
 vQryAux            := TFDQuery.Create(nil);
 vQryAux.Connection := serviceDB.fCon;
 Quebra  := TStringList.Create;
 if SaveDialog1.Execute then
 begin
   I:=0;
   edtArquivo.Text :=SaveDialog1.FileName;
   AssignFile(Txt,edtArquivo.Text);
   reset(txt);
   lblQtdAnimaisArquivo.Text    := 'Qtde Animais Arq.:'+IntToStr(NumLinhasArq(edtArquivo.Text)-1);
   LayValidaImportacao.Visible := true;
   Irregular := 0;
   with vQryAux,vQryAux.SQL do
   begin
     Clear;
     Add('DELETE FROM TMP_LIBERACAO_BND');
     ExecSQL;
   end;
   qryLiberacao.Close;
   qryLiberacao.Open;
   TThread.CreateAnonymousThread(
    procedure
    begin
       while not Eoln(txt) do
       begin
        Quebra.Clear;
        Readln(txt,Arq);
        ExtractStrings([';'],[],pchar(Arq),Quebra);
          if i>0 then
          begin
             Identificacao1 := Quebra.Strings[0];
             data           := Quebra.Strings[1];
             if (Identificacao1.Length>0) and TryStrToDate(Data,vData) then
             begin
               with vQryAux,vQryAux.SQL do
               begin
                 Clear;
                 Add('INSERT INTO TMP_LIBERACAO_BND(SISBOV,DATA_LIBERACAO,ID_USUARIO)VALUES');
                 Add('(:SISBOV,:DATA_LIBERACAO,:ID_USUARIO)');
                 ParamByName('SISBOV').AsString       := Identificacao1;
                 ParamByName('DATA_LIBERACAO').AsDate := vData;
                 ParamByName('ID_USUARIO').AsString   := serviceDB.vIdUserLogado;
                 try
                  ExecSQL;
                 except
                   on e : Exception do
                     ShowMessage('Erro ao Atualizar Configuracao: '+e.Message)
                 end
               end;
               TThread.Synchronize( nil,
               procedure
               begin
                 lblQtdAnimaisProcImports.Text := 'Qtde. Animais Proc.:'+intToStr(i);
               end);
             end;
          end;
        inc(i);
       end;
       TThread.Synchronize( nil,
       procedure
       begin
         with vQryAux,vQryAux.SQL do
         begin
           Clear;
           Add('SELECT * FROM ANIMAL');
           Add('WHERE STATUS=1 AND DATA_LIBERACAO IS null');
           Open;
         end;
         lblQtdAnimalSemLiberacao.text := 'Qtde Animais Ativos Sem data Data de liberação:'+
          IntToStr(vQryAux.RecordCount);
         ShowMessage('Dados importados com sucesso!');
         vQryAux.Free;
       end);
    end).Start;
 end;
end;

procedure TfrmImportaDataLiberacao.edtFiltroNameKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if (key=13) or (key=9) then
 begin
   if edtFiltroName.Text.Length>0 then
   begin
     qryLiberacao.Filtered := false;
     qryLiberacao.Filter   := 'SISBOV='+edtFiltroName.Text.QuotedString;
     qryLiberacao.Filtered := true;
     if qryLiberacao.RecordCount=0 then
     begin
       ShowMessage('SISBOV Não encontrado!!');
       qryLiberacao.Filtered := false;
       qryLiberacao.Close;
       qryLiberacao.Open;
     end;
   end;
 end;
end;

procedure TfrmImportaDataLiberacao.FormCreate(Sender: TObject);
begin
  qryLiberacao.close;
  qryLiberacao.open;
  inherited;

end;

function TfrmImportaDataLiberacao.NumLinhasArq(Arqtexto: String): integer;
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

procedure TfrmImportaDataLiberacao.TreeItemNovoClick(Sender: TObject);
begin
  edtArquivo.Text :='';
  inherited;
end;

end.
