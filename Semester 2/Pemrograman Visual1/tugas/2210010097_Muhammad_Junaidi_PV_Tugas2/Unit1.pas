unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    showMessageButton1: TButton;
    messageDialogButton22: TButton;
    messageDialogButton3: TButton;
    messageDialogButton4: TButton;
    messageDialogButton5: TButton;
    procedure showMessageClick(Sender: TObject);
    procedure showMessageButton1Click(Sender: TObject);
    procedure messageDialogButton22Click(Sender: TObject);
    procedure messageDialogButton3Click(Sender: TObject);
    procedure messageDialogButton4Click(Sender: TObject);
    procedure messageDialogButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.showMessageClick(Sender: TObject);
begin
  ShowMessage('Tombol di klik');
end;

procedure TForm1.showMessageButton1Click(Sender: TObject);
begin
  showMessage('ShowMassage di klik');
end;

procedure TForm1.messageDialogButton22Click(Sender: TObject);
begin
  MessageDlg('Iformation', mtInformation, [mbOK], 0);
end;

procedure TForm1.messageDialogButton3Click(Sender: TObject);
begin
  MessageDlg('Warning', mtWarning, [mbYes, mbNo], 0)
end;

procedure TForm1.messageDialogButton4Click(Sender: TObject);
begin
  MessageDlg('Error', mtError, [mbOK], 0);
end;

procedure TForm1.messageDialogButton5Click(Sender: TObject);
begin
  MessageDlg('Komfirmasi', mtConfirmation, [mbYes, mbNo], 0);
end;

end.
