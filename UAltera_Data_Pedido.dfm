object FrmAltera_Data_Pedido: TFrmAltera_Data_Pedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informe a Data e Hora'
  ClientHeight = 129
  ClientWidth = 233
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 44
    Top = 45
    Width = 53
    Height = 13
    Caption = 'Prev. Ent.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 133
    Top = 45
    Width = 27
    Height = 13
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MEdtPrevisao_Entrega: TMaskEdit
    Left = 44
    Top = 60
    Width = 61
    Height = 17
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MEdtHora_Pedido: TMaskEdit
    Left = 133
    Top = 60
    Width = 41
    Height = 17
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditMask = '!99:99;1;_'
    MaxLength = 5
    TabOrder = 1
    Text = '  :  '
  end
  object btOK: TBitBtn
    Left = 75
    Top = 96
    Width = 75
    Height = 25
    Caption = 'OK'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000C8D0D400C8D0
      D400C8D0D400B6907D00B57F6800C6C9CC00C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C7CCD000C1806000C6503000B75A4100C3BFBD00C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400BFADA500D1886200C4724700C4502E00BA6F5C00C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C7CE
      D200C0866900D1875F00C5724900C5734A00BF432500C1B6B300C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C0AA
      9F00D6916C00CD774F00B94A2E00CC856000C7613C00B85F4700C7CFD300C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BCA19500D08D
      6A00D58D6500C84C2D00BD9E9300BD968200D2896400C5462800BF968C00C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C1B5B100C585
      6400D37B5900B96B5400C7CCD000C6CBCE00BE836500D2886200C4472D00C6B8
      B800C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C5C7
      C800BFB0AA00C6CBCD00C8D0D400C8D0D400C2BDBB00C8846100D07C5600C158
      4500C6CBCE00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BEADA500CE876100CD6B
      4900C5776B00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BDA49700D18D
      6800CD684600C6878000C7CFD300C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BEA3
      9500D6937000CA603E00C7908A00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C0A79C00CD876100C95D3D00C89B9700C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400BFADA500C6815D00CC5D4100C79F9B00C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C2BCBB00C1876A00CB614400BEA59C00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C6CACD00BB9A8A00B99A8B00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400}
    TabOrder = 2
    OnClick = btOKClick
  end
end