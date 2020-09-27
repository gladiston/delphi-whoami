unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    NomeLBL: TLabel;
    PerfilLBL: TLabel;
    AdminLBL: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses utils_strfun, utils_shell;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  //
  Caption:=GetCurrentUserName;
  AdminLBL.Caption:='Adminstrador: '+IIF(IsWindowsAdmin,'Sim','Não');
  NomeLBL.Caption:='Eu sou '+GetCurrentUserName;
  PerfilLBL.Caption:='Perfil: '+GetDosEnv('USERPROFILE');
end;

end.
