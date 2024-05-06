program POSClient;



{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  uLogin in 'uLogin.pas' {loginFrm},
  uMain in 'uMain.pas' {mainFrm},
  uClient in 'uClient.pas' {clientFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TloginFrm, loginFrm);
  Application.CreateForm(TmainFrm, mainFrm);
  Application.CreateForm(TclientFrm, clientFrm);
  Application.Run;
end.
