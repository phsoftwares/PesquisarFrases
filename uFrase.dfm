object frmFrases: TfrmFrases
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inserir Texto'
  ClientHeight = 529
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edtFiltro: TEdit
    Left = 16
    Top = 24
    Width = 246
    Height = 21
    TabOrder = 0
  end
  object btnFiltro: TButton
    Left = 16
    Top = 64
    Width = 121
    Height = 33
    Caption = 'Inserir Frase'
    TabOrder = 1
    OnClick = btnFiltroClick
  end
  object btnCancelar: TButton
    Left = 141
    Top = 64
    Width = 121
    Height = 33
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = btnCancelarClick
  end
end
