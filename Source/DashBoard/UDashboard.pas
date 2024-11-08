unit UDashboard;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.WebBrowser,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects,
  SHDocVw, ActiveX;

type
  TfrmWeb = class(TForm)
    layBase: TLayout;
    laySuperior: TLayout;
    Rectangle1: TRectangle;
    layFechaPadrao: TLayout;
    imgClose: TImage;
    Image6: TImage;
    ScrollBox1: TScrollBox;
    procedure imgCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;
  end;

var
  frmWeb: TfrmWeb;

implementation

{$R *.fmx}

uses UPrincipal;

procedure TfrmWeb.imgCloseClick(Sender: TObject);
var
 vHTML :string;
begin
 vHTML :='<iframe    src="http://localhost:3000/public/dashboard/f8e10047-0829-413c-b06d-723d9804286f"    frameborder="0"    width="800"    height="600"    allowtransparency></iframe>';
//  WBLoadHTML(WebBrowser1,vHTML) ;


// Close;
end;

procedure TfrmWeb.WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   WebBrowser.Navigate('about:blank') ;
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms) ;
         ms.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
end;

end.
