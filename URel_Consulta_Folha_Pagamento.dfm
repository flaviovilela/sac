object FrmRel_Consulta_Folha_Pagamento: TFrmRel_Consulta_Folha_Pagamento
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 598
  ClientWidth = 1109
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Scaled = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
    BeforePrint = QuickRep1BeforePrint
    DataSet = ADOQuery1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      '0')
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomOther
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 147
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        388.937500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel9: TQRLabel
        Left = 10
        Top = 20
        Width = 168
        Height = 23
        Size.Values = (
          60.854166666666680000
          26.458333333333330000
          52.916666666666670000
          444.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Folha de Pagamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel23: TQRLabel
        Left = 886
        Top = 15
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          2344.208333333333000000
          39.687500000000000000
          84.666666666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 886
        Top = 39
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          2344.208333333333000000
          103.187500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Hora:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabeldata: TQRLabel
        Left = 922
        Top = 15
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          2439.458333333333000000
          39.687500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabeldata'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabelHora: TQRLabel
        Left = 922
        Top = 39
        Width = 75
        Height = 17
        Size.Values = (
          44.979166666666670000
          2439.458333333333000000
          103.187500000000000000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabelHora'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRHRule2: TQRHRule
        Left = 10
        Top = 43
        Width = 209
        Size.Values = (
          26.458333333333330000
          26.458333333333330000
          113.770833333333300000
          552.979166666666700000)
        XLColumn = 0
        VertAdjust = 0
      end
      object LblEmpresa_Cabecalho: TQRLabel
        Left = 10
        Top = 51
        Width = 111
        Height = 17
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          134.937500000000000000
          293.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LblEmpresa_Cabecalho'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object LblConsulta_Lancamento: TQRLabel
        Left = 91
        Top = 99
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
          261.937500000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Contas a Pagar:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 10
        Top = 99
        Width = 75
        Height = 17
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          261.937500000000000000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Consulta por:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object LblFuncionario: TQRLabel
        Left = 409
        Top = 99
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          1082.145833333333000000
          261.937500000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Contas a Pagar:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 334
        Top = 99
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666670000
          883.708333333333400000
          261.937500000000000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Funcion'#225'rio:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object LblData: TQRLabel
        Left = 91
        Top = 122
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
          322.791666666666700000
          97.895833333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LblData'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 38
        Top = 122
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          322.791666666666700000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Per'#237'odo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object LblEmpresa: TQRLabel
        Left = 225
        Top = 20
        Width = 655
        Height = 23
        Size.Values = (
          60.854166666666680000
          595.312500000000000000
          52.916666666666670000
          1733.020833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'EMPRESA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 185
      Width = 1047
      Height = 41
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clSilver
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        108.479166666666700000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Codigo'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText16: TQRDBText
        Left = 5
        Top = 21
        Width = 356
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          55.562500000000000000
          941.916666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 709
        Top = 2
        Width = 55
        Height = 17
        Size.Values = (
          44.979166666666670000
          1875.895833333333000000
          5.291666666666667000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Comiss'#227'o'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 799
        Top = 2
        Width = 54
        Height = 17
        Size.Values = (
          44.979166666666670000
          2114.020833333333000000
          5.291666666666667000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Desconto'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 441
        Top = 2
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1166.812500000000000000
          5.291666666666667000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Fec'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 533
        Top = 2
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1410.229166666667000000
          5.291666666666667000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Entradas'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 367
        Top = 2
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          971.020833333333400000
          5.291666666666667000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#234's/Ano'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 629
        Top = 2
        Width = 38
        Height = 17
        Size.Values = (
          44.979166666666670000
          1664.229166666667000000
          5.291666666666667000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saidas'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 5
        Top = 2
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          5.291666666666667000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Funcion'#225'rio'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 891
        Top = 2
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          2357.437500000000000000
          5.291666666666667000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sal'#225'rio'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 979
        Top = 2
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          2590.270833333333000000
          5.291666666666667000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Qtde. Itens'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 367
        Top = 20
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          971.020833333333200000
          52.916666666666670000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Mes_Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 441
        Top = 21
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          1166.812500000000000000
          55.562500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Data_Fechamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 533
        Top = 21
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          1410.229166666667000000
          55.562500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Entradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = '#0.0,0'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 629
        Top = 21
        Width = 74
        Height = 17
        Size.Values = (
          44.979166666666670000
          1664.229166666667000000
          55.562500000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Saidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = '#0.0,0'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 709
        Top = 21
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          1875.895833333333000000
          55.562500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Comissao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = '#0.0,0'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 799
        Top = 21
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          2114.020833333333000000
          55.562500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = '#0.0,0'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 891
        Top = 21
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          2357.437500000000000000
          55.562500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Salario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = '#0.0,0'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 1000
        Top = 21
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          2645.833333333333000000
          55.562500000000000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clSilver
        DataSet = ADOQuery1
        DataField = 'Quantidade_Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 350
      Width = 1047
      Height = 24
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object LblEmpresa_Rodape: TQRLabel
        Left = 5
        Top = 4
        Width = 136
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          10.583333333333330000
          359.833333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FAV Sistemas e Consultoria'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object LblTelefone_Rodape: TQRLabel
        Left = 957
        Top = 4
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          2532.062500000000000000
          10.583333333333330000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Fone.: 8406-8000'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 517
        Top = 4
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          1367.895833333333000000
          10.583333333333330000
          97.895833333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#225'gina:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 565
        Top = 5
        Width = 68
        Height = 15
        Size.Values = (
          39.687500000000000000
          1494.895833333333000000
          13.229166666666670000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'PAGENUMBER'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRChildBand1: TQRChildBand
      Left = 38
      Top = 226
      Width = 1047
      Height = 22
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333340000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRGroup1
      PrintOrder = cboAfterParent
      object QRLabel5: TQRLabel
        Left = 5
        Top = 2
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          5.291666666666667000
          76.729166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #205'tem'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 501
        Top = 2
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          1325.562500000000000000
          5.291666666666667000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 396
        Top = 2
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          1047.750000000000000000
          5.291666666666667000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Natureza'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 248
      Width = 1047
      Height = 20
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRGroup1
      Size.Values = (
        52.916666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBValor: TQRDBText
        Left = 501
        Top = 1
        Width = 118
        Height = 17
        Size.Values = (
          44.979166666666670000
          1325.562500000000000000
          2.645833333333333000
          312.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = '#0.0,0'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBN_Nota_Fiscal: TQRDBText
        Left = 5
        Top = 1
        Width = 385
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          2.645833333333333000
          1018.645833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 396
        Top = 1
        Width = 99
        Height = 17
        Size.Values = (
          44.979166666666670000
          1047.750000000000000000
          2.645833333333333000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Natureza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 268
      Width = 1047
      Height = 21
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clMenu
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 289
      Width = 1047
      Height = 61
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        161.395833333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel2: TQRLabel
        Left = 5
        Top = 15
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          39.687500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Entradas:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 18
        Top = 38
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          47.625000000000000000
          100.541666666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Sa'#237'das:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 97
        Top = 15
        Width = 326
        Height = 17
        Size.Values = (
          44.979166666666670000
          256.645833333333400000
          39.687500000000000000
          862.541666666666900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(if(ADOQuery1.Natureza = '#39'ENTRADA'#39', ADOQuery1.Valor,0.0))'
        Mask = '#0.0,0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 97
        Top = 38
        Width = 310
        Height = 17
        Size.Values = (
          44.979166666666670000
          256.645833333333400000
          100.541666666666700000
          820.208333333333500000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(if(ADOQuery1.Natureza = '#39'SAIDA'#39', ADOQuery1.Valor,0.0))'
        Mask = '#0.0,0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select FP.*, IFP.*, IFF.Descricao, IFF.Natureza, Fun.Nome from F' +
        'olha_Pagamento FP'
      'inner join Itens_Folha_Pagamento IFP on (FP.Codigo = IFP.Codigo)'
      'inner join Itens_Folha IFF on (IFP.Codigo_Item = IFF.Codigo)'
      
        'inner join Funcionario Fun on (FP.Codigo_Funcionario = Fun.Codig' +
        'o)')
    Left = 392
    Top = 8
    object ADOQuery1Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADOQuery1Codigo_Funcionario: TIntegerField
      FieldName = 'Codigo_Funcionario'
    end
    object ADOQuery1Codigo_Empresa: TIntegerField
      FieldName = 'Codigo_Empresa'
    end
    object ADOQuery1Mes_Ano: TStringField
      FieldName = 'Mes_Ano'
      Size = 50
    end
    object ADOQuery1Data_Fechamento: TDateTimeField
      FieldName = 'Data_Fechamento'
    end
    object ADOQuery1Entradas: TFloatField
      FieldName = 'Entradas'
    end
    object ADOQuery1Saidas: TFloatField
      FieldName = 'Saidas'
    end
    object ADOQuery1Comissao: TFloatField
      FieldName = 'Comissao'
    end
    object ADOQuery1Desconto: TFloatField
      FieldName = 'Desconto'
    end
    object ADOQuery1Salario: TFloatField
      FieldName = 'Salario'
    end
    object ADOQuery1Quantidade_Itens: TIntegerField
      FieldName = 'Quantidade_Itens'
    end
    object ADOQuery1Observacao: TStringField
      FieldName = 'Observacao'
      Size = 300
    end
    object ADOQuery1Codigo_1: TIntegerField
      FieldName = 'Codigo_1'
    end
    object ADOQuery1Codigo_Item: TIntegerField
      FieldName = 'Codigo_Item'
    end
    object ADOQuery1Valor: TFloatField
      FieldName = 'Valor'
    end
    object ADOQuery1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object ADOQuery1Natureza: TStringField
      FieldName = 'Natureza'
      Size = 7
    end
    object ADOQuery1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = True
    TextEncoding = ASCIIEncoding
    Codepage = '1252'
    Left = 432
    Top = 8
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 240
    Top = 48
  end
end
