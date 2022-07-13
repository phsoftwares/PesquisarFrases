unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmPrincipal = class(TForm)
    btnInserir: TButton;
    btnBuscar: TButton;
    frases: TListBox;
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    buscarFrase:boolean;
    numeroLinha:integer;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uFrase;

procedure TfrmPrincipal.btnBuscarClick(Sender: TObject);
begin
 try
buscarFrase:=true;
  frmFrases := tfrmFrases.create(self);
  frmFrases.showmodal;
finally
     frmFrases.Release;
    frmFrases := nil;
end;
end;

procedure TfrmPrincipal.btnInserirClick(Sender: TObject);
begin
try
buscarFrase:=false;
  frmFrases := tfrmFrases.create(self);
  frmFrases.showmodal;
finally
frmFrases.Release;
frmFrases := nil;
end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
numeroLinha:=0;
buscarFrase:=false;
end;

end.
