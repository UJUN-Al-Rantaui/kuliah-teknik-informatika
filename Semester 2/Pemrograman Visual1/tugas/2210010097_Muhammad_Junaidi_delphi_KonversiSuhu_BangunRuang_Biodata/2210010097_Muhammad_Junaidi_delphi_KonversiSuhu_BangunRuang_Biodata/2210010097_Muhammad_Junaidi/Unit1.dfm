object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 393
  ClientWidth = 878
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 872
    Height = 42
    Align = alTop
    Alignment = taCenter
    Caption = 'Menu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 87
  end
  object konversiSuhu: TButton
    Left = 104
    Top = 212
    Width = 193
    Height = 41
    Cursor = crHandPoint
    Hint = 'Konversi suhu reamur'
    Caption = 'Konversi Suhu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = konversiSuhuClick
  end
  object bangunRuang: TButton
    Left = 336
    Top = 212
    Width = 193
    Height = 41
    Cursor = crHandPoint
    Hint = 'Balok dan Tabung'
    Caption = 'Bangun Ruang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = bangunRuangClick
  end
  object Biodata: TButton
    Left = 567
    Top = 212
    Width = 193
    Height = 41
    Cursor = crHandPoint
    Hint = 'Tampilkan Biodata Saya'
    Caption = 'Biodata'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BiodataClick
  end
end
