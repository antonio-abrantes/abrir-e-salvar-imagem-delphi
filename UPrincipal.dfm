object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Abrir e Salvar Imagens'
  ClientHeight = 274
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 21
    Top = 3
    Width = 269
    Height = 236
    Pen.Color = 16776176
    Shape = stRoundRect
  end
  object ImgFoto: TImage
    Left = 34
    Top = 8
    Width = 244
    Height = 225
    Center = True
    Proportional = True
  end
  object Button1: TButton
    Left = 27
    Top = 243
    Width = 75
    Height = 25
    Caption = 'ABRIR'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 119
    Top = 243
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 209
    Top = 243
    Width = 75
    Height = 25
    Caption = 'LIMPAR'
    TabOrder = 2
    OnClick = Button3Click
  end
  object ODAbrirIamgem: TOpenPictureDialog
    Left = 75
    Top = 185
  end
  object SDSalvarImagem: TSaveDialog
    Left = 210
    Top = 185
  end
end
