unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, uClient, FMX.DialogService;

type
  TmainFrm = class(TForm)
    ventasBtn: TButton;
    facturasBtn: TButton;
    clientesBtn: TButton;
    Layout1: TLayout;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ventasBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainFrm: TmainFrm;

implementation

{$R *.fmx}

//C.G. Cuando cierro el formulario principal se detiene la aplicacion. (le doy hacia atras estando en el formulario main)
procedure TmainFrm.ventasBtnClick(Sender: TObject);
begin
clientFrm.Show;
end;


procedure TmainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;



end.
