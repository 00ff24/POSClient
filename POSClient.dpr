program POSClient;



{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  login in 'login.pas' {loginFrm},
  main in 'main.pas' {mainFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TloginFrm, loginFrm);
  Application.CreateForm(TmainFrm, mainFrm);
  Application.Run;
end.
