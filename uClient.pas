unit uClient;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.Edit, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Layouts;

type
  TclientFrm = class(TForm)
    Layout1: TLayout;
    searchBtn: TButton;
    searchEdt: TEdit;
    searchGrd: TGrid;
    Nombre: TColumn;
    Precio: TColumn;
    Descripcion: TColumn;
    procedure searchEdtClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  clientFrm: TclientFrm;

implementation

{$R *.fmx}

procedure TclientFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
clientFrm.Close;
end;

procedure TclientFrm.searchEdtClick(Sender: TObject);
begin
searchEdt.Text:='';
end;

end.
