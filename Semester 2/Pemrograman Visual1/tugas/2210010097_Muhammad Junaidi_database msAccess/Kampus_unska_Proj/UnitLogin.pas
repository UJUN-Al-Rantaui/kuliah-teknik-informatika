unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormLogin = class(TForm)
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
  FormLogin: TFormLogin;

implementation

uses UnitMenu;

{$R *.dfm}

procedure login(UserName, password : string); // procedure log in dengan dua parameter bertipe data string
var
  u, p : string;
begin
  u := 'admin';
  p := 'rahasia';
  if (SameText(UserName,u)) and ((SameText(password,p))) then // mengecek apakah username dan password benar atau salah
  begin
    { jika username dann password sesuai maka tampikan pesan 'Login sukses' }
    FormMenu.Show;
    ShowMessage('Login sukses');
  end
  else
    ShowMessage('mungkin username atau password salah');// jika username atau password salah maka kitim pesan 'mungkin username atau password salah'
end;

procedure TFormLogin.Button1Click(Sender: TObject); // event button login
begin
  login(Edit1.Text, Edit2.Text); // memanggi procedure yang tidak memiliki parameter
end;

procedure TFormLogin.Edit2KeyPress(Sender: TObject; var Key: Char); // event onpress edit2
begin
  if Key = #13 then // jika button yang diklik adalah ENTER
    login(Edit1.Text, Edit2.Text);       // maka memanggi procedure yang tidak memiliki parameter
end;

procedure TFormLogin.Edit1KeyPress(Sender: TObject; var Key: Char);  // vent onpress edit1
begin
  if Key = #13 then  // jika button yang diklik adalah ENTER
    login(Edit1.Text, Edit2.Text);        // maka memanggi procedure yang tidak memiliki parameter
end;

end.
