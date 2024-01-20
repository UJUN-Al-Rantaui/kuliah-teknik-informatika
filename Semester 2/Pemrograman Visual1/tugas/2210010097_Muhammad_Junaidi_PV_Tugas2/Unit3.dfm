object Form2: TForm2
  Left = 213
  Top = 155
  Caption = 'Form2'
  ClientHeight = 495
  ClientWidth = 1028
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object masukanCelcius: TLabel
    Left = 98
    Top = 19
    Width = 168
    Height = 29
    Alignment = taCenter
    Caption = 'Masukan Celcius'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Label1: TLabel
    Left = 104
    Top = 112
    Width = 162
    Height = 29
    Caption = 'Hasil Fahrenheit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object inputSuhuCelcius: TEdit
    Left = 272
    Top = 16
    Width = 217
    Height = 37
    Cursor = crIBeam
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnEnter = inputSuhuCelciusEnter
  end
  object ulangiulang: TButton
    Left = 385
    Top = 64
    Width = 105
    Height = 41
    Cursor = crHandPoint
    Hint = 'ulangi konversi'
    Caption = 'ULANG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = ulangiulangClick
  end
  object kolomHasilKonversi: TEdit
    Left = 272
    Top = 112
    Width = 217
    Height = 21
    Hint = 'tempat hasil komversi ditampilkan'
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object konversi: TButton
    Left = 272
    Top = 64
    Width = 105
    Height = 41
    Caption = 'konversi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = konversiClick
  end
end
