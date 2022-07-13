unit uFrase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFrases = class(TForm)
    edtFiltro: TEdit;
    btnFiltro: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFrases: TfrmFrases;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TfrmFrases.btnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TfrmFrases.btnFiltroClick(Sender: TObject);
begin
if edtFiltro.text  <> '' then
begin
if frmprincipal.buscarFrase = true then
begin
 frmprincipal.frases.Perform(LB_SELECTSTRING,0,(pchar(edtfiltro.text)));
 showmessage('Foi encontrada a frase');
end
else
begin
 frmprincipal.frases.items.add(edtFiltro.text);
 edtFiltro.clear;
 edtFiltro.setfocus;
end;
end;
end;

procedure TfrmFrases.FormShow(Sender: TObject);
begin
if frmprincipal.buscarFrase = true then
begin
  caption:='Buscar Texto';
  btnFiltro.Caption:='Buscar Frase';
end
else
begin
   caption:='Inserir Texto';
  btnFiltro.Caption:='Inserir Frase';
end;

end;

end.
