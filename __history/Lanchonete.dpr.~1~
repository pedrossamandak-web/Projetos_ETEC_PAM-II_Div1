program Lanchonete;

uses
  System.StartUpCopy,
  FMX.Forms,
  uacesso in 'uacesso.pas' {frmacesso},
  umodulo in 'umodulo.pas' {dm: TDataModule},
  uiuusuario in 'uiuusuario.pas' {frmiuusuario},
  ulistausuarios in 'ulistausuarios.pas' {frmlistausuarios},
  uwebview in 'uwebview.pas' {frmwebview};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmacesso, frmacesso);
  Application.CreateForm(Tfrmlistausuarios, frmlistausuarios);
  Application.CreateForm(Tfrmwebview, frmwebview);
  Application.CreateForm(Tfrmiuusuario, frmiuusuario);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
