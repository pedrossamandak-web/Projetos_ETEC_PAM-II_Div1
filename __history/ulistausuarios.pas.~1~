unit ulistausuarios;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView, FMX.Layouts,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, System.JSON;

type
  Tfrmlistausuarios = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    ListView1: TListView;
    Button1: TButton;
    Button2: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    jsnobj: TJSONObject; // jsonencode - PHP
    // ctrl+shift+c
    procedure carregaDados();
  end;

var
  frmlistausuarios: Tfrmlistausuarios;

implementation

{$R *.fmx}

uses umodulo, uiuusuario;

procedure Tfrmlistausuarios.Button2Click(Sender: TObject);
begin
  frmiuusuario.id := 0;
  frmiuusuario.Show;
end;

procedure Tfrmlistausuarios.carregaDados;
begin
  try
    jsnobj := TJSONObject.Create;
    jsnobj.AddPair('op', 'l');
    jsnobj.AddPair('nome', '');
    // conexao com o servidor da API
    // dm.RESTClient1.BaseURL := 'http://localhost/Projetos_ETEC_PWEB-III_Div1';
    // direcionar para a API especifica
    dm.RESTRequest1.Resource := '/usuarios/?jsn={parametro}';
    // conectar a API especifica para retornar os dados
    dm.RESTRequest1.Execute;
  finally
    jsnobj.DisposeOf;
  end;
end;

procedure Tfrmlistausuarios.FormShow(Sender: TObject);
begin
  carregaDados;
  { with dm.usuario do
    begin
    Close;
    SQL.Clear;
    SQL.Add('select * from usuarios;');
    Open;
    end; }
end;

end.
