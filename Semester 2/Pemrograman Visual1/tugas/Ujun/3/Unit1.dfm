object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 426
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 874
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Form Tagihan Listrik Pelanggan PT. PLN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 573
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 63
    Width = 369
    Height = 170
    Caption = 'Data Pelanggan'
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 80
      Height = 13
      Caption = 'Nama Pelanggan'
    end
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 110
      Height = 13
      Caption = 'Kode Jenis Pelangggan'
    end
    object Label4: TLabel
      Left = 16
      Top = 75
      Width = 75
      Height = 13
      Caption = 'Jenis Penaggan'
    end
    object Label5: TLabel
      Left = 16
      Top = 102
      Width = 87
      Height = 13
      Caption = 'Jumlah Pemakaian'
    end
    object Edit1: TEdit
      Left = 144
      Top = 21
      Width = 201
      Height = 21
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 144
      Top = 75
      Width = 201
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 144
      Top = 48
      Width = 201
      Height = 21
      TabOrder = 2
      Text = 'Pillih Jenis Pelanggan'
      OnChange = ComboBox1Change
      Items.Strings = (
        'L01'
        'L02'
        'L03'
        'L04')
    end
    object Edit2: TEdit
      Left = 144
      Top = 102
      Width = 201
      Height = 21
      TabOrder = 3
    end
    object Button1: TButton
      Left = 108
      Top = 129
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 189
      Top = 129
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 270
      Top = 129
      Width = 75
      Height = 25
      Caption = 'Hitung'
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 239
    Width = 369
    Height = 162
    Caption = 'Rincian Biaya'
    TabOrder = 1
    object Label6: TLabel
      Left = 16
      Top = 27
      Width = 59
      Height = 13
      Caption = 'Biaya Beban'
    end
    object Label7: TLabel
      Left = 16
      Top = 54
      Width = 65
      Height = 13
      Caption = 'Harga Per M3'
    end
    object Label8: TLabel
      Left = 16
      Top = 78
      Width = 56
      Height = 13
      Caption = 'Total Harga'
    end
    object Label9: TLabel
      Left = 16
      Top = 108
      Width = 52
      Height = 13
      Caption = 'Pajak 10%'
    end
    object Label10: TLabel
      Left = 16
      Top = 135
      Width = 65
      Height = 13
      Caption = 'Total Tagihan'
    end
    object Edit4: TEdit
      Left = 144
      Top = 24
      Width = 201
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 144
      Top = 51
      Width = 201
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 144
      Top = 78
      Width = 201
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object Edit7: TEdit
      Left = 144
      Top = 105
      Width = 201
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object Edit8: TEdit
      Left = 144
      Top = 132
      Width = 201
      Height = 21
      Enabled = False
      TabOrder = 4
    end
  end
  object GroupBox3: TGroupBox
    Left = 392
    Top = 63
    Width = 474
    Height = 338
    Caption = 'Struk Tagihan'
    TabOrder = 2
    object Label11: TLabel
      Left = 16
      Top = 24
      Width = 80
      Height = 13
      Caption = 'Nama Pelanggan'
    end
    object Label12: TLabel
      Left = 16
      Top = 48
      Width = 104
      Height = 13
      Caption = 'Kode Jenis Pelanggan'
    end
    object Label13: TLabel
      Left = 16
      Top = 74
      Width = 77
      Height = 13
      Caption = 'Jenis Pelanggan'
    end
    object Label14: TLabel
      Left = 16
      Top = 99
      Width = 76
      Height = 13
      Caption = 'Jumlah Pemaian'
    end
    object Label15: TLabel
      Left = 16
      Top = 122
      Width = 59
      Height = 13
      Caption = 'Biaya Beban'
    end
    object Label16: TLabel
      Left = 16
      Top = 141
      Width = 67
      Height = 13
      Caption = 'Harga Per M#'
    end
    object Label17: TLabel
      Left = 16
      Top = 160
      Width = 56
      Height = 13
      Caption = 'Total Harga'
    end
    object Label18: TLabel
      Left = 19
      Top = 179
      Width = 52
      Height = 13
      Caption = 'Pajak 10%'
    end
    object Label19: TLabel
      Left = 20
      Top = 198
      Width = 67
      Height = 13
      Caption = 'Total Tagiihan'
    end
    object Label20: TLabel
      Left = 144
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Label20'
    end
    object Label21: TLabel
      Left = 144
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Label21'
    end
    object Label22: TLabel
      Left = 144
      Top = 74
      Width = 37
      Height = 13
      Caption = 'Label22'
    end
    object Label23: TLabel
      Left = 144
      Top = 99
      Width = 37
      Height = 13
      Caption = 'Label23'
    end
    object Label24: TLabel
      Left = 144
      Top = 122
      Width = 37
      Height = 13
      Caption = 'Label24'
    end
    object Label25: TLabel
      Left = 144
      Top = 141
      Width = 37
      Height = 13
      Caption = 'Label25'
    end
    object Label26: TLabel
      Left = 144
      Top = 160
      Width = 37
      Height = 13
      Caption = 'Label26'
    end
    object Label27: TLabel
      Left = 144
      Top = 179
      Width = 37
      Height = 13
      Caption = 'Label27'
    end
    object Label28: TLabel
      Left = 144
      Top = 198
      Width = 37
      Height = 13
      Caption = 'Label28'
    end
  end
end
