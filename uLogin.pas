unit uLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, uMain, FMX.Layouts;

type
  TloginFrm = class(TForm)
    loginBtn: TButton;
    exitBtn: TButton;
    userEdt: TEdit;
    passwordEdt: TEdit;
    Image1: TImage;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
    procedure exitBtnClick(Sender: TObject);
    procedure loginBtnClick(Sender: TObject);
    procedure userEdtClick(Sender: TObject);
    procedure passwordEdtClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure leerImagen (nombreRecurso : string);

  end;

var
  loginFrm: TloginFrm;

implementation

{$R *.fmx}

////////////////////////////////////////////////////////////////////////////////



procedure TloginFrm.FormCreate(Sender: TObject);
begin
  leerImagen('Bitmap_1')
end;

procedure TloginFrm.leerImagen(nombreRecurso: string);
var
  Recurso: TResourceStream;
  Stream: TMemoryStream;
begin
  Recurso := TResourceStream.Create(HInstance, nombreRecurso, RT_RCDATA);
  Stream := TMemoryStream.Create;
    try
      Recurso.SaveToStream(Stream);
      Stream.Position := 0;
      Image1.Bitmap.LoadFromStream(Stream);
    finally
      Recurso.Free;
      Stream.Free;
    end;
end;



procedure TloginFrm.loginBtnClick(Sender: TObject);
var
  user, password: string;
begin
  user := 'admin';
  password := 'admin';

  if (user = userEdt.Text) and (password = passwordEdt.Text) then
  begin
    try
      //Solo en windows
      //loginFrm.Free;
      loginFrm.Hide;
      mainFrm.Show;
    except
      on E: Exception do
        begin
          // Manejar la excepción
          ShowMessage('Se produjo una excepción: ' + E.Message);
        end;
    end;
  end
  else
    begin
      // Manejar el caso en que las credenciales no coincidan
      ShowMessage('Credenciales incorrectas');
    end;
end;


procedure TloginFrm.passwordEdtClick(Sender: TObject);
begin
passwordEdt.Text := '';
end;

procedure TloginFrm.userEdtClick(Sender: TObject);
begin
userEdt.Text := '';
end;

//C.G. Cierra el formulario login pero tambien me detiene la aplicacion.
procedure TloginFrm.exitBtnClick(Sender: TObject);
begin
loginFrm.Close;
end;




////////////////////////////////////////////////////////////////////////////////


end.
