unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Kembali: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit4;

{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject); // konversi reamur
begin
  form2.Show(); // membuka form konversi reamur
end;

procedure TForm3.Button1Click(Sender: TObject); // konversi Celcius
begin
  form4.show(); // membuka form konversi Celcius
end;

procedure TForm3.KembaliClick(Sender: TObject); // tombol kembali
begin
  Form3.Close(); // menutup form3
end;

end.
