unit uacesso;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.StdCtrls, System.JSON;

type
  Tfrmacesso = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Image1: TImage;
    edtusuario: TEdit;
    edtsenha: TEdit;
    btnacessar: TButton;
    procedure btnacessarClick(Sender: TObject);
  private
    { Private declarations }
    id:integer;
    nome:string;
    usuario:string;
    logado:boolean;
    jsnobj: TJSONObject; // jsonencode - PHP
    procedure geraJSON();
  public
    { Public declarations }
  end;

var
  frmacesso: Tfrmacesso;

implementation

{$R *.fmx}

uses umodulo;

{ Tfrmacesso }

procedure Tfrmacesso.btnacessarClick(Sender: TObject);
begin
  geraJSON;
end;

procedure Tfrmacesso.geraJSON;
begin
  try
    jsnobj := TJSONObject.Create;
    //jsnobj.AddPair('op','l');
    jsnobj.AddPair('usuario', edtusuario.Text);
    jsnobj.AddPair('senha', edtsenha.Text);
    { chamada da API }
    dm.RESTRequest1.Resource := '/usuarios/login.php?jsn={parametro}';
    { jsnobj.ToString -> pega os dados e transforma em
      {"usuario":"valor","senha":"valor" }// }
    //ShowMessage(jsnobj.ToString);
     dm.RESTRequest1.Params.AddUrlSegment('parametro', jsnobj.ToString);
     dm.RESTRequest1.Execute;
     //carga do usuário logado
      ShowMessage(IntToStr(dm.usuariosid.AsInteger) + '-' + dm.usuariosnome.AsString);
  finally
    jsnobj.DisposeOf;
  end;
end;

end.
