unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}

procedure login(UserName, password : string); // procedure log in dengan dua parameter bertipe data string
begin
  if (UserName = 'admin') and (password = 'admin') then // mengecek apakah username dan password benar atau salah
  begin
    { jika username dann password sesuai maka tampikan pesan 'Login sukses' kemudian buka form3
    disana tempat kita akan memilih membuka form konversi celcius atau reamur}
    ShowMessage('Login sukses');
    form3.show;
  end
  else
    ShowMessage('mungkin username atau password salah');// jika username atau password salah maka kitim pesan 'mungkin username atau password salah'
end;

procedure login2(); // procedure log in tsnpa parameter
var
  User, pass : string;  // deklarasi variable User dan password dengan tipe data string
begin
  User := Form1.Edit1.Text;  // menambil username dari Form1.Edit1.Text
  pass := Form1.Edit2.Text;  // menambil password dari Form1.Edit2.Text
  {username dan password yang sudah kita ambil tadi akan di kirimkan ke procedure log in yang memiliki parameter}
  login(User, pass); // memanggil function log in yang pertama
end;

procedure TForm1.Button1Click(Sender: TObject); // event button login
begin
  login2(); // memanggi procedure yang tidak memiliki parameter
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char); // event onpress edit2
begin
  if Key = #13 then // jika button yang diklik adalah ENTER
    login2();       // maka memanggi procedure yang tidak memiliki parameter
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);  // vent onpress edit1
begin
  if Key = #13 then  // jika button yang diklik adalah ENTER
    login2();        // maka memanggi procedure yang tidak memiliki parameter
end;

end.
