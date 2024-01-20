object Form1: TForm1
  Left = 204
  Top = 154
  Width = 445
  Height = 371
  Caption = 'Form1'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object showMessageButton1: TButton
    Left = 80
    Top = 40
    Width = 257
    Height = 49
    Cursor = crHandPoint
    Hint = 'TEKAN SHOW MESSAGE'
    Caption = 'showMessage'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = showMessageButton1Click
  end
  object messageDialogButton22: TButton
    Left = 80
    Top = 96
    Width = 257
    Height = 57
    Hint = 'tekan tombol informasi'
    Caption = 'messagedlg - mtInformation'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = messageDialogButton22Click
  end
  object messageDialogButton3: TButton
    Left = 80
    Top = 160
    Width = 257
    Height = 49
    Hint = 'tekan tombol Warning'
    Caption = 'messagedlg - mtWarning'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = messageDialogButton3Click
  end
  object messageDialogButton4: TButton
    Left = 80
    Top = 216
    Width = 257
    Height = 49
    Caption = 'messagedlg - mtError'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = messageDialogButton4Click
  end
  object messageDialogButton5: TButton
    Left = 80
    Top = 272
    Width = 257
    Height = 49
    Caption = 'messagedlg - mtConfirmation'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = messageDialogButton5Click
  end
end
