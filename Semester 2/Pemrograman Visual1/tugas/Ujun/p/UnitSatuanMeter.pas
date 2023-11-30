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

procedure TFormSatuanMeter.ButtonProsesClick(Sender: TObject);
var
  km, hm, dam, m, dm, cm, mm ,nilaiInput : double;
begin
  nilaiInput := StrToFloat(inputNilai.Text);
  case satuanMeter.ItemIndex of
    0 : begin
      km := nilaiInput;
      hm := km * 1e1;
      dam:= km * 1e2;
      m  := km * 1e3;
      dm := km * 1e4;
      cm := km * 1e5;
      mm := km * 1e6;
      output1.text := floatTostr(hm);
      output2.text := floatTostr(dam);
      output3.text := floatTostr(m);
      output4.text := floatTostr(dm);
      output5.text := floatTostr(cm);
      output6.text := floatTostr(mm);
    end;
    1 : begin
      hm := nilaiInput;
      km := hm * 1e-1;
      dam:= hm * 1e1;
      m  := hm * 1e2;
      dm := hm * 1e3;
      cm := hm * 1e4;
      mm := hm * 1e5;
      output1.text := floatTostr(km);
      output2.text := floatTostr(dam);
      output3.text := floatTostr(m);
      output4.text := floatTostr(dm);
      output5.text := floatTostr(cm);
      output6.text := floatTostr(mm);
    end;
    2 : begin
      dam := nilaiInput;
      km := dam * 1e-2;
      hm := dam * 1e-1;
      m  := dam * 1e1;
      dm := dam * 1e2;
      cm := dam * 1e3;
      mm := dam * 1e4;
      output1.text := floatTostr(km);
      output2.text := floatTostr(hm);
      output3.text := floatTostr(m);
      output4.text := floatTostr(dm);
      output5.text := floatTostr(cm);
      output6.text := floatTostr(mm);
    end;
    3 : begin
      m := nilaiInput;
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
    4 : begin
      dm := nilaiInput;
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
    5 : begin
      cm := nilaiInput;
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
    6 : begin
      mm := nilaiInput;
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

procedure TFormSatuanMeter.satuanMeterChange(Sender: TObject);
begin
  case satuanMeter.ItemIndex of
    0 : begin
      Label1.Caption := satuanMeter.Items[1];
      Label2.Caption := satuanMeter.Items[2];
      Label3.Caption := satuanMeter.Items[3];
      Label4.Caption := satuanMeter.Items[4];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    1 : begin
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[2];
      Label3.Caption := satuanMeter.Items[3];
      Label4.Caption := satuanMeter.Items[4];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    2 : begin
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[3];
      Label4.Caption := satuanMeter.Items[4];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    3 : begin
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[2];
      Label4.Caption := satuanMeter.Items[4];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    4 : begin
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[2];
      Label4.Caption := satuanMeter.Items[3];
      Label5.Caption := satuanMeter.Items[5];
      Label6.Caption := satuanMeter.Items[6];
    end;
    5 : begin
      Label1.Caption := satuanMeter.Items[0];
      Label2.Caption := satuanMeter.Items[1];
      Label3.Caption := satuanMeter.Items[2];
      Label4.Caption := satuanMeter.Items[3];
      Label5.Caption := satuanMeter.Items[4];
      Label6.Caption := satuanMeter.Items[6];
    end;
    6 : begin
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
