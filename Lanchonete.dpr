program Lanchonete;

uses
  System.StartUpCopy,
  FMX.Forms,
  uacesso in 'uacesso.pas' {frmacesso},
  umodulo in 'umodulo.pas' {dm: TDataModule},
  uiuusuario in 'uiuusuario.pas' {frmiuusuario},
  ulistausuarios in 'ulistausuarios.pas' {frmlistausuarios},
  uwebview in 'uwebview.pas' {frmwebview},
  umenu in 'umenu.pas' {frmmenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmacesso, frmacesso);
  Application.CreateForm(Tfrmlistausuarios, frmlistausuarios);
  Application.CreateForm(Tfrmwebview, frmwebview);
  Application.CreateForm(Tfrmiuusuario, frmiuusuario);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrmmenu, frmmenu);
  Application.Run;
end.
