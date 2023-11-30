unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    InputNama: TLabel;
    Input: TEdit;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    Tanggal_Lahir: TDateTimePicker;
    lbl3: TLabel;
    Prodi: TComboBox;
    lbl4: TLabel;
    rg1: TRadioGroup;
    Alamat: TLabel;
    Alamat1: TEdit;
    lbl5: TLabel;
    edt2: TEdit;
    lbl6: TLabel;
    edt3: TEdit;
    lbl7: TLabel;
    cbb1: TComboBox;
    lbl8: TLabel;
    rg2: TRadioGroup;
    lbl9: TLabel;
    Daftar: TButton;
    Ulangi: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
