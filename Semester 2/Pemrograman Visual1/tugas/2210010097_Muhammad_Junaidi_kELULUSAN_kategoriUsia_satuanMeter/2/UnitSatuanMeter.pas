unit UnitSatuanMeter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormSatuanMeter = class(TForm)
    satuanMeter: TComboBox;
    titile: TLabel;
    inputNilai: TEdit;
    Label1: TLabel;
    ButtonProses: TButton;
    ButtonBersihkan: TButton;
    output1: TEdit;
    output2: TEdit;
    output3: TEdit;
    output4: TEdit;
    output5: TEdit;
    output6: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabelNilai: TLabel;
    procedure satuanMeterChange(Sender: TObject);
    procedure ButtonProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSatuanMeter: TFormSatuanMeter;

implementation

{$R *.dfm}

procedure TFormSatuanMeter.ButtonProsesClick(Sender: TObject); // event button proses
var
  km, hm, dam, m, dm, cm, mm ,nilaiInput : double;
begin
  nilaiInput := StrToFloat(inputNilai.Text); // mengambil nilai yang diinputkan
  case satuanMeter.ItemIndex of // memeriksa nilai satuanMeter.itemsIndex
    0 : begin // jika satuanMeter.ItemIndex bernilai 0 maka akan menjalankan block kode dibawah
      km := nilaiInput; // variable dimasukan kevariable km
      hm := km * 1e1;  // mengkonversi satuan km ke hm
      dam:= km * 1e2;  // mengkonversi satuan km ke dam
      m  := km * 1e3; // mengkonversi satuan km ke m
      dm := km * 1e4; // mengkonversi satuan km ke dm
      cm := km * 1e5; // mengkonversi satuan km ke cm
      mm := km * 1e6; // mengkonversi satuan km ke mm
      output1.text := floatTostr(hm); // mengisikan nilai hm kedalam output1.text
      output2.text := floatTostr(dam); // mengisikan nilai dam kedalam output2.text
      output3.text := floatTostr(m); // mengisikan nilai m kedalam output3.text
      output4.text := floatTostr(dm); // mengisikan nilai dm kedalam output4.text
      output5.text := floatTostr(cm); // mengisikan nilai cm kedalam output5.text
      output6.text := floatTostr(mm); // mengisikan nilai mm kedalam output6.text
    end;
    1 : begin // jika satuanMeter.ItemIndex bernilai 1 maka akan menjalankan block kode dibawah
      hm := nilaiInput; // variable dimasukan kevariable hm
      km := hm * 1e-1; // mengkonversi satuan hm ke km
      dam:= hm * 1e1;  // mengkonversi satuan hm ke dam
      m  := hm * 1e2; // mengkonversi satuan hm ke m
      dm := hm * 1e3; // mengkonversi satuan hm ke dm
      cm := hm * 1e4; // mengkonversi satuan hm ke cm
      mm := hm * 1e5; // mengkonversi satuan hm ke mm
      output1.text := floatTostr(km);  // mengisikan nilai km kedalam output1.text
      output2.text := floatTostr(dam); // mengisikan nilai dam kedalam output2.text
      output3.text := floatTostr(m);   // mengisikan nilai m kedalam output3.text
      output4.text := floatTostr(dm);  // mengisikan nilai dm kedalam output4.text
      output5.text := floatTostr(cm);  // mengisikan nilai cm kedalam output5.text
      output6.text := floatTostr(mm);  // mengisikan nilai mm kedalam output6.text
    end;
    2 : begin  // jika satuanMeter.ItemIndex bernilai 2 maka akan menjalankan block kode dibawah
      dam := nilaiInput; // variable dimasukan kevariable dam
      km := dam * 1e-2; // mengkonversi satuan dam ke km
      hm := dam * 1e-1; // mengkonversi satuan dam ke hm
      m  := dam * 1e1; // mengkonversi satuan dam ke m
      dm := dam * 1e2; // mengkonversi satuan dam ke dm
      cm := dam * 1e3; // mengkonversi satuan dam ke cm
      mm := dam * 1e4; // mengkonversi satuan dam ke mm
      output1.text := floatTostr(km);
      output2.text := floatTostr(hm);
      output3.text := floatTostr(m);
      output4.text := floatTostr(dm);
      output5.text := floatTostr(cm);
      output6.text := floatTostr(mm);
    end;
    3 : begin // jika satuanMeter.ItemIndex bernilai 3 maka akan menjalankan block kode dibawah
      m := nilaiInput; // variable dimasukan kevariable m
      km := m * 1e-3;
      hm := m * 1e-2;
      dam:= m * 1e-1;
      dm := m * 1e1;
      cm := m * 1e2;
      mm := m * 1e3;
      output1.text := floatTostr(km);
      output2.text := floatTostr(hm);
      output3.text := floatTostr(dam);
      output4.text := floatTostr(dm);
      output5.text := floatTostr(cm);
      output6.text := floatTostr(mm);
    end;
    4 : begin // jika satuanMeter.ItemIndex bernilai 4 maka akan menjalankan block kode dibawah
      dm := nilaiInput; // variable dimasukan kevariable dm
      km := dm * 1e-4;
      hm := dm * 1e-3;
      dam:= dm * 1e-2;
      m  := dm * 1e-1;
      cm := dm * 1e1;
      mm := dm * 1e2;
      output1.text := floatTostr(km);
      output2.text := floatTostr(hm);
      output3.text := floatTostr(dam);
      output4.text := floatTostr(m);
      output5.text := floatTostr(cm);
      output6.text := floatTostr(mm);
    end;
    5 : begin // jika satuanMeter.ItemIndex bernilai 5 maka akan menjalankan block kode dibawah
      cm := nilaiInput; // variable dimasukan kevariable cm
      km := cm * 1e-5;
      hm := cm * 1e-4;
      dam:= cm * 1e-3;
      m  := cm * 1e-2;
      dm := cm * 1e-1;
      mm := cm * 1e1;
      output1.text := floatTostr(km);
      output2.text := floatTostr(hm);
      output3.text := floatTostr(dam);
      output4.text := floatTostr(m);
      output5.text := floatTostr(dm);
      output6.text := floatTostr(mm);
    end;
    6 : begin  // jika satuanMeter.ItemIndex bernilai 6 maka akan menjalankan block kode dibawah
      mm := nilaiInput; // variable dimasukan kevariable mm
      km := mm * 1e-6;
      hm := mm * 1e-5;
      dam:= mm * 1e-4;
      m  := mm * 1e-3;
      dm := mm * 1e-2;
      cm := mm * 1e-1;
      output1.text := floatTostr(km);
      output2.text := floatTostr(hm);
      output3.text := floatTostr(dam);
      output4.text := floatTostr(m);
      output5.text := floatTostr(dm);
      output6.text := floatTostr(cm);
    end;
  end;

end;

procedure TFormSatuanMeter.satuanMeterChange(Sender: TObject); // event comboBoxSatuanMeter diketika terjadi perubahahan
begin
  case satuanMeter.ItemIndex of // memeriksa index comboBox yang diberi nama satuanMeter
    0 : begin  // jika satuanMeter.ItemIndex bernilai 0 maka akan menjalankan block kode dibawah  // satuanMeter.items adalah array = {Kilometer (km), Hektometer (hm), Dekameter (dam), Meter (m), Desimeter (dm), Sentimeter (cm), Milimeter (mm)};
      Label1.Caption := satuanMeter.Items[1]; // mengisi label1.caption dengan satuanMeter.Items[1] = Hektometer (hm)
      Label2.Caption := satuanMeter.Items[2]; // mengisi label1.caption dengan satuanMeter.Items[2] = Dekameter (dam)
      Label3.Caption := satuanMeter.Items[3]; // mengisi label1.caption dengan satuanMeter.Items[3] = Meter (m
      Label4.Caption := satuanMeter.Items[4]; // mengisi label1.caption dengan satuanMeter.Items[4] = Desimeter (dm)
      Label5.Caption := satuanMeter.Items[5]; // mengisi label1.caption dengan satuanMeter.Items[5] = Sentimeter (cm)
      Label6.Caption := satuanMeter.Items[6]; //mengisi label1.caption dengan  satuanMeter.Items[6] = Milimeter (mm))
    end;
    1 : begin // jika satuanMeter.ItemIndex bernilai 1 maka akan menjalankan block kode dibawah
      Label1.Caption := satuanMeter.Items[0]; // satuanMeter.Items[0] = Kilometer (km)
      Label2.Caption := satuanMeter.Items[2];
      Label3.Caption := satuanMeter.Items[3];
      Label4.Caption := satuanMeter.Items[4];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    2 : begin // jika satuanMeter.ItemIndex bernilai 2 maka akan menjalankan block kode dibawah
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[3];
      Label4.Caption := satuanMeter.Items[4];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    3 : begin  // jika satuanMeter.ItemIndex bernilai 3 maka akan menjalankan block kode dibawah
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[2];
      Label4.Caption := satuanMeter.Items[4];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    4 : begin  // jika satuanMeter.ItemIndex bernilai 4 maka akan menjalankan block kode dibawah
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[2];
      Label4.Caption := satuanMeter.Items[3];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    5 : begin // jika satuanMeter.ItemIndex bernilai 5 maka akan menjalankan block kode dibawah
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[2];
      Label4.Caption := satuanMeter.Items[3];
      Label5.Caption := satuanMeter.Items[4];
      Label6.Caption := satuanMeter.Items[6];
    end;
    6 : begin // jika satuanMeter.ItemIndex bernilai 6 maka akan menjalankan block kode dibawah
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[2];
      Label4.Caption := satuanMeter.Items[3];
      Label5.Caption := satuanMeter.Items[4];
      Label6.Caption := satuanMeter.Items[5];
    end;
  end;

end;

end.
