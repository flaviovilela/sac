object FrmMensagem_Erro_Impressora_TEF: TFrmMensagem_Erro_Impressora_TEF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 89
  ClientWidth = 383
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblMensagem: TLabel
    Left = 0
    Top = 24
    Width = 385
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = 'IMPRESSORA N'#195'O RESPONDE. TENTAR NOVAMENTE?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 104
    Top = 61
    Width = 75
    Height = 25
    Caption = '&Sim'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 201
    Top = 61
    Width = 75
    Height = 25
    Caption = '&N'#227'o'
    TabOrder = 1
    OnClick = Button2Click
  end
end
