unit umenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type
  Tfrmmenu = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    id: integer;
    nome: string;
    logado: integer;
  end;

var
  frmmenu: Tfrmmenu;

implementation

{$R *.fmx}

end.
