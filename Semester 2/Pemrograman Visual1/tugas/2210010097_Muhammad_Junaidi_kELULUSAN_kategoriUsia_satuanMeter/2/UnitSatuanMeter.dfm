object FormSatuanMeter: TFormSatuanMeter
  Left = 0
  Top = 0
  Caption = 'Meter'
  ClientHeight = 534
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object titile: TLabel
    Left = 0
    Top = 0
    Width = 1003
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Satuan Meter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 210
  end
  object Label1: TLabel
    Left = 136
    Top = 227
    Width = 127
    Height = 26
    Caption = 'Kilometer (km)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 267
    Width = 147
    Height = 26
    Caption = 'Hektometer (hm)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 136
    Top = 307
    Width = 149
    Height = 26
    Caption = 'Dekameter (dam)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 136
    Top = 347
    Width = 132
    Height = 26
    Caption = 'Desimeter (dm)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 136
    Top = 387
    Width = 137
    Height = 26
    Caption = 'Sentimeter (cm)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 136
    Top = 427
    Width = 135
    Height = 26
    Caption = 'Milimeter (mm)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object LabelNilai: TLabel
    Left = 136
    Top = 131
    Width = 89
    Height = 26
    Caption = 'Input Nilai'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object satuanMeter: TComboBox
    Left = 312
    Top = 80
    Width = 385
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ItemIndex = 3
    ParentFont = False
    TabOrder = 0
    Text = 'Meter (m)'
    OnChange = satuanMeterChange
    Items.Strings = (
      'Kilometer (km)'
      'Hektometer (hm)'
      'Dekameter (dam)'
      'Meter (m)'
      'Desimeter (dm)'
      'Sentimeter (cm)'
      'Milimeter (mm)')
  end
  object inputNilai: TEdit
    Left = 312
    Top = 128
    Width = 385
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ButtonProses: TButton
    Left = 312
    Top = 168
    Width = 121
    Height = 33
    Caption = 'Proses'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonProsesClick
  end
  object ButtonBersihkan: TButton
    Left = 456
    Top = 168
    Width = 121
    Height = 33
    Caption = 'Bersihkan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object output1: TEdit
    Left = 312
    Top = 224
    Width = 385
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object output2: TEdit
    Left = 312
    Top = 264
    Width = 385
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object output3: TEdit
    Left = 312
    Top = 304
    Width = 385
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object output4: TEdit
    Left = 312
    Top = 344
    Width = 385
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object output5: TEdit
    Left = 312
    Top = 384
    Width = 385
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object output6: TEdit
    Left = 312
    Top = 424
    Width = 385
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
end
