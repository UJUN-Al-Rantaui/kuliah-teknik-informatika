unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  edit1.clear();
  edit2.clear();
  edit4.clear();
  edit5.clear();
  edit6.clear();
  edit7.clear();
  edit8.clear();
  label20.Caption := '';
  label21.Caption := '';
  label22.Caption := '';
  label23.Caption := '';
  label24.Caption := '';
  label25.Caption := '';
  label26.Caption := '';
  label28.Caption := '';
  label27.Caption := '';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  label20.caption := edit1.text;
  label21.caption := comboBox1.text;
  label22.caption := edit3.text;
  label23.Caption := edit2.text;
  label24.Caption := edit4.text;
  label25.Caption := edit5.text;
  label26.Caption := edit6.text;
  label27.Caption := edit7.text;
  label28.Caption := edit8.text;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  beban_biaya, HargaPerM3, Total_Harga, Jml_pemakaian: integer;
  pajak, Total_Tagihan : double;
begin
  Jml_pemakaian := strToInt(edit2.text);

  case comboBox1.itemIndex of
  0:
  begin
    beban_biaya := 50000;
    HargaPerM3 := 2500;
  end;
  1:
  begin
    beban_biaya := 35000;
    HargaPerM3 := 2000;

  end;
  2:
  begin
    beban_biaya := 25000;
    HargaPerM3 := 1500;

  end;
  3:
  begin
    beban_biaya := 15000;
    HargaPerM3 := 750;
  end;
  end;

  Total_Harga := HargaPerM3 * Jml_pemakaian + beban_biaya;
  pajak := 10 * Total_Harga / 100;
  Total_Tagihan := Total_Harga + pajak;
  edit4.text := floatToStr(beban_biaya);
  edit5.text := floatToStr(HargaPerM3);
  edit6.text := floatToStr(Total_Harga);
  edit7.text := floatToStr(pajak);
  edit8.text := floatToStr(Total_Tagihan);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
var
  jenis : string;
begin
  case ComboBox1.ItemIndex of
  0 : jenis := 'Pabrik';
  1 : jenis := 'Swalayan';
  2 : jenis := 'Toko';
  3 : jenis := 'Rumah';
  end;

  edit3.text := jenis;
end;

end.
