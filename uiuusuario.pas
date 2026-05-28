unit uiuusuario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, System.JSON;

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
    Layout6: TLayout;
    btngravar: TButton;
    swtlogado: TSwitch;
    procedure btngravarClick(Sender: TObject);
  private
    { Private declarations }
    jsnobj: TJSONObject;
  public
    { Public declarations }
    id: integer;
  end;

var
  frmiuusuario: Tfrmiuusuario;

implementation

{$R *.fmx}

uses umodulo, ulistausuarios;

procedure Tfrmiuusuario.btngravarClick(Sender: TObject);
begin
    jsnobj:= TJSONObject.create;

    jsnobj.addpair('nome',edtusunome.text);
    jsnobj.addpair('login',edtusulogin.text);
    jsnobj.addpair('senha',edtususenha.text);

    if (id<>0) then
    begin
    jsnobj.addpair('id',id);
    jsnobj.addpair('logado',swtlogado.ischecked.tointeger);
    dm.RESTRequest1.Resource := '/usuarios/uusuario.php?jsn={parametro}'; //{"op":"sp","nome":""}
    dm.RESTRequest1.Params.AddUrlSegment('parametro',jsnobj.ToString);
    end
    else
    begin
     dm.RESTRequest1.Resource := '/usuarios/iusuario.php?jsn={parametro}'; //{"op":"sp","nome":""}
    dm.RESTRequest1.Params.AddUrlSegment('parametro',jsnobj.ToString);
    end;
    showmessage(jsnobj.ToString) ;
    dm.RESTRequest1.execute;
    frmlistausuarios.carregaDados;
    close;
end;


end.
