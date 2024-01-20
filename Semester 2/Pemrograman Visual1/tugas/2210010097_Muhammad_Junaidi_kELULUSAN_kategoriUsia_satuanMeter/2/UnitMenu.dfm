object Menu: TMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 338
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object title: TLabel
    Left = 0
    Top = 0
    Width = 861
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Menu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 88
  end
  object kelulusan: TButton
    Left = 352
    Top = 103
    Width = 179
    Height = 42
    Caption = 'Kelulusan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = kelulusanClick
  end
  object kategoriUsia: TButton
    Left = 352
    Top = 151
    Width = 179
    Height = 42
    Caption = 'Kategori Usia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = kategoriUsiaClick
  end
  object konversiJarak: TButton
    Left = 352
    Top = 199
    Width = 179
    Height = 42
    Caption = 'Satuan Meter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = konversiJarakClick
  end
end
