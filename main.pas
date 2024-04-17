unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TmainFrm = class(TForm)
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainFrm: TmainFrm;

implementation

{$R *.fmx}

//C.G. Cuando cierro el formulario principal se detiene la aplicacion.
procedure TmainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
