object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Repositorio de Frases'
  ClientHeight = 278
  ClientWidth = 509
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
  object btnInserir: TButton
    Left = 16
    Top = 8
    Width = 121
    Height = 33
    Caption = 'Inserir Frase'
    TabOrder = 0
    OnClick = btnInserirClick
  end
  object btnBuscar: TButton
    Left = 168
    Top = 8
    Width = 121
    Height = 33
    Caption = 'Buscar Frase'
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object frases: TListBox
    Left = 16
    Top = 56
    Width = 273
    Height = 193
    ItemHeight = 13
    TabOrder = 2
  end
end
