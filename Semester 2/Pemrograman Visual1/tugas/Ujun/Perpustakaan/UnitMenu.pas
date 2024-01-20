unit UnitMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    btnKembali: TButton;
    btn1: TButton;
    btn2: TButton;
    procedure btnKembaliClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit1, Unit2, Unit3;

{$R *.dfm}

procedure TForm4.btnKembaliClick(Sender: TObject);
begin
  form1.Show;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  Form3.Show;
end;

end.
