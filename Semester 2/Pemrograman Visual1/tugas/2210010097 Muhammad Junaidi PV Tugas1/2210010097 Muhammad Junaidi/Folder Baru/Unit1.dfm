object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1044
  Height = 541
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object InputNama: TLabel
    Left = 8
    Top = 73
    Width = 81
    Height = 19
    Caption = 'Input NIM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 8
    Top = 105
    Width = 103
    Height = 19
    Cursor = crHandPoint
    Caption = 'Nama Lengkap'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 134
    Width = 105
    Height = 19
    Cursor = crHandPoint
    Caption = 'Tanggal Lahir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 164
    Width = 95
    Height = 19
    Caption = 'Program Studi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 6
    Top = 199
    Width = 95
    Height = 19
    Cursor = crHandPoint
    Caption = 'Jenis Kelamin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Alamat: TLabel
    Left = 7
    Top = 233
    Width = 48
    Height = 19
    Cursor = crHandPoint
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 7
    Top = 263
    Width = 44
    Height = 19
    Cursor = crHandPoint
    Caption = 'No Hp'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 7
    Top = 293
    Width = 90
    Height = 19
    Cursor = crHandPoint
    Caption = 'Alamat Email'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 10
    Top = 329
    Width = 89
    Height = 19
    Caption = 'Kepercayaan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 6
    Top = 359
    Width = 122
    Height = 19
    Cursor = crHandPoint
    Caption = 'Status Pernikahan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 56
    Top = 8
    Width = 227
    Height = 36
    Alignment = taCenter
    Caption = 'Data Mahasiswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Input: TEdit
    Left = 131
    Top = 73
    Width = 241
    Height = 23
    Cursor = crIBeam
    Hint = 'Masukan NIM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object edt1: TEdit
    Left = 131
    Top = 105
    Width = 241
    Height = 23
    Cursor = crIBeam
    Hint = 'Masukkan Nama Lengkap'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object Tanggal_Lahir: TDateTimePicker
    Left = 131
    Top = 134
    Width = 237
    Height = 24
    Cursor = crHandPoint
    Hint = 'Pilih Tanggal'
    Date = 45006.676590011570000000
    Time = 45006.676590011570000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object Prodi: TComboBox
    Left = 132
    Top = 167
    Width = 236
    Height = 23
    Hint = 'Pilih Program studi'
    HelpType = htKeyword
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ItemHeight = 15
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Items.Strings = (
      'Tehnik Informatika'
      'Sistem Informasi'
      'Farmasi'
      'B Inggris'
      'Dll')
  end
  object rg1: TRadioGroup
    Left = 132
    Top = 190
    Width = 241
    Height = 33
    Hint = 'Pilih'
    BiDiMode = bdLeftToRight
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Items.Strings = (
      'Lakki-laki'
      'Perempuan')
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object Alamat1: TEdit
    Left = 130
    Top = 233
    Width = 241
    Height = 23
    Cursor = crIBeam
    Hint = 'Masukkan Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object edt2: TEdit
    Left = 130
    Top = 263
    Width = 241
    Height = 23
    Cursor = crIBeam
    Hint = 'Masukan No Hp yang dapat di hubungi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object edt3: TEdit
    Left = 130
    Top = 293
    Width = 241
    Height = 23
    Cursor = crIBeam
    Hint = 'Masukan Email'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object cbb1: TComboBox
    Left = 132
    Top = 326
    Width = 236
    Height = 23
    Hint = 'Pilih Agama yang di percayai'
    HelpType = htKeyword
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ItemHeight = 15
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    Items.Strings = (
      'Islam'
      'Hindu'
      'Budha'
      'Katollik'
      'Kristen')
  end
  object rg2: TRadioGroup
    Left = 132
    Top = 350
    Width = 241
    Height = 33
    Hint = 'Pilih'
    BiDiMode = bdLeftToRight
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Items.Strings = (
      'Sudah menikah'
      'Belum menikah')
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object Daftar: TButton
    Left = 136
    Top = 408
    Width = 49
    Height = 33
    Caption = 'Daftar'
    TabOrder = 10
  end
  object Ulangi: TButton
    Left = 208
    Top = 408
    Width = 49
    Height = 33
    Caption = 'Ulangi'
    TabOrder = 11
  end
end
