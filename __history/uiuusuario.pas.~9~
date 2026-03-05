unit uiuusuario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls;

type
  Tfrmiuusuario = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    edtusunome: TEdit;
    edtusulogin: TEdit;
    edtususenha: TEdit;
    Layout5: TLayout;
    btngravar: TButton;
    procedure btngravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id: integer;
    logado: boolean;
  end;

var
  frmiuusuario: Tfrmiuusuario;

implementation

{$R *.fmx}

uses umodulo;

procedure Tfrmiuusuario.btngravarClick(Sender: TObject);
begin
  // enquanto eu estiver na query faça:
  with dm.usuario do
  begin
    Close;
    SQL.Clear;
    if (id = 0) then
    begin
      SQL.Add('insert into usuarios(usunome,usulogin,ususenha)values(:usunome,:usulogin,:ususenha);');
    end
    else
    begin
      SQL.Add('update usuarios set usunome=:usunome,usulogin=:usulogin,ususenha=:ususenha where usuid=:usuid');
      ParamByName('usuid').Value := id;
    end;

    ParamByName('usunome').Value := edtusunome.Text;
    ParamByName('usulogin').Value := edtusulogin.Text;
    ParamByName('ususenha').Value := edtususenha.Text;

    ExecSQL;
  end;
end;

procedure Tfrmiuusuario.FormShow(Sender: TObject);
begin
  id := 1;
  with dm.usuario do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from usuarios where usuid = :id;');
    ParamByName('id').Value := id;
    Open;
  end;
  edtusunome.Text := dm.usuariousunome.AsString;
  edtusulogin.Text := dm.usuariousulogin.AsString;
  edtususenha.Text := dm.usuarioususenha.AsString;
end;

end.
