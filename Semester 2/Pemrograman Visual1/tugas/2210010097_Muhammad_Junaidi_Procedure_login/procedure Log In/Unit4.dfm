object Form4: TForm4
  Left = 154
  Top = 1
  Width = 1044
  Height = 472
  Caption = 'Form4'
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 304
    Top = 120
    Width = 59
    Height = 26
    Caption = 'Celcius'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 304
    Top = 272
    Width = 66
    Height = 26
    Caption = 'Reamur'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 296
    Top = 192
    Width = 91
    Height = 26
    Caption = 'Fahrenheit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 304
    Top = 232
    Width = 51
    Height = 26
    Caption = 'Kelvin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 304
    Top = 304
    Width = 68
    Height = 26
    Caption = 'Rankine'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 441
    Top = 79
    Width = 202
    Height = 23
    Caption = 'input reamur harus angka'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label6: TLabel
    Left = 0
    Top = 0
    Width = 1028
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Konversi Celcius'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 416
    Top = 104
    Width = 249
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 425
    Top = 143
    Width = 105
    Height = 33
    Hint = 'Lakukaan proses konversi'
    Caption = 'Konversi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 552
    Top = 143
    Width = 105
    Height = 33
    Hint = 'Bersihkan semua angka'
    Caption = 'Bersihkan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 416
    Top = 184
    Width = 249
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 416
    Top = 224
    Width = 249
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 416
    Top = 264
    Width = 249
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 416
    Top = 304
    Width = 249
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object ButtonKembali: TButton
    Left = 0
    Top = 0
    Width = 105
    Height = 33
    Caption = 'Kembali'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = ButtonKembaliClick
  end
end
