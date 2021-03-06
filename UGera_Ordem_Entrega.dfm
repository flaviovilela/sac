object FrmGera_Ordem_Entrega: TFrmGera_Ordem_Entrega
  Left = 225
  Top = 20
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerar Ordem de Entrega'
  ClientHeight = 534
  ClientWidth = 917
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 137
    Top = 0
    Width = 787
    Height = 541
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object LblData_Cadastro: TLabel
        Left = 191
        Top = 11
        Width = 31
        Height = 13
        Caption = 'Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 252
        Top = 11
        Width = 20
        Height = 13
        Caption = 'Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblNome: TLabel
        Left = 191
        Top = 51
        Width = 39
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 544
        Top = 51
        Width = 38
        Height = 13
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 191
        Top = 92
        Width = 66
        Height = 13
        Caption = 'Valor Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 278
        Top = 92
        Width = 58
        Height = 13
        Caption = 'Valor Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RGConsulta_Por: TRadioGroup
        Left = 1
        Top = 0
        Width = 184
        Height = 124
        Caption = 'Par'#226'metros para pesquisa'
        ItemIndex = 0
        Items.Strings = (
          'Pedido'
          'Cliente'
          'Data Pedido'
          'Data Prev. Ent.'
          'Valor do Pedido entre:')
        TabOrder = 7
      end
      object MEdtData_Inicial: TMaskEdit
        Left = 191
        Top = 26
        Width = 62
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
      object MEdtData_Final: TMaskEdit
        Left = 252
        Top = 26
        Width = 62
        Height = 17
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object EdtCodigo_Cliente: TEdit
        Left = 191
        Top = 66
        Width = 62
        Height = 17
        Hint = 'Pressione F3 para consultar'
        BevelEdges = [beLeft, beTop, beBottom]
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clCream
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = EdtCodigo_ClienteKeyDown
        OnKeyPress = EdtCodigo_ClienteKeyPress
      end
      object EdtCliente: TEdit
        Left = 252
        Top = 66
        Width = 293
        Height = 17
        TabStop = False
        BevelEdges = [beTop, beRight, beBottom]
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 3
        OnKeyPress = EdtClienteKeyPress
      end
      object EdtN_Pedido: TEdit
        Left = 544
        Top = 66
        Width = 81
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object EdtValor_Inicial: TEdit
        Left = 191
        Top = 107
        Width = 81
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 5
      end
      object EdtValor_Final: TEdit
        Left = 278
        Top = 107
        Width = 81
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object RGOrdena_Por: TRadioGroup
        Left = 1
        Top = 130
        Width = 184
        Height = 87
        Caption = 'Ordena por:'
        ItemIndex = 0
        Items.Strings = (
          'Cliente'
          'Data Pedido'
          'Data Prev. Ent.'
          'Valor do Pedido')
        TabOrder = 8
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Dados da Entrega'
      Enabled = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object LblCPF: TLabel
        Left = 711
        Top = 27
        Width = 53
        Height = 13
        Caption = 'CPF/CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LblEndereco: TLabel
        Left = 711
        Top = 43
        Width = 52
        Height = 13
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LblSetor: TLabel
        Left = 615
        Top = 24
        Width = 31
        Height = 13
        Caption = 'Setor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LblTelefone: TLabel
        Left = 711
        Top = 8
        Width = 49
        Height = 13
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LblCidade: TLabel
        Left = 711
        Top = -3
        Width = 38
        Height = 13
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LblUF: TLabel
        Left = 679
        Top = 24
        Width = 14
        Height = 13
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LblTipo_Logradouro: TLabel
        Left = 613
        Top = 43
        Width = 92
        Height = 13
        Caption = 'Tipo Logradouro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LblNumero: TLabel
        Left = 652
        Top = 24
        Width = 7
        Height = 13
        Caption = 'N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LblPedido: TLabel
        Left = 107
        Top = -2
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object Label5: TLabel
        Left = 1
        Top = 270
        Width = 45
        Height = 13
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 361
        Top = 270
        Width = 18
        Height = 13
        Caption = 'Un.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 402
        Top = 270
        Width = 57
        Height = 13
        Caption = 'Qtde. Ped.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblProduto: TLabel
        Left = 120
        Top = 270
        Width = 45
        Height = 13
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label1: TLabel
        Left = 471
        Top = 270
        Width = 54
        Height = 13
        Caption = 'Qtde. Ent.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 540
        Top = 270
        Width = 62
        Height = 13
        Caption = 'Qtde. Rest.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 301
        Width = 775
        Height = 206
        Hint = 'Aviso|Pressione Delete para remover o item selecionado|6'
        BorderStyle = bsNone
        DataSource = ds_qry_itens_compra
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Codigo_Venda'
            Title.Caption = 'Codigo Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Produto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sigla'
            Title.Caption = 'Un.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde'
            Title.Caption = 'Qtde.Ped.'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde_Entregue'
            Title.Caption = 'Qtde. Entr.'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde_Restante'
            Title.Caption = 'Qtde. Rest.'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Desconto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Tipo_Desconto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Sub_Total'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'N_Pedido'
            Visible = False
          end>
      end
      object EdtCodigo_Produto: TEdit
        Left = 1
        Top = 285
        Width = 113
        Height = 17
        Hint = 'Pressione F3 para consultar'
        BevelEdges = [beLeft, beTop, beBottom]
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyPress = EdtCodigo_ProdutoKeyPress
      end
      object EdtProduto: TEdit
        Left = 113
        Top = 285
        Width = 249
        Height = 17
        TabStop = False
        BevelEdges = [beTop, beRight, beBottom]
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyPress = EdtProdutoKeyPress
      end
      object EdtUnidade: TEdit
        Left = 361
        Top = 285
        Width = 42
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 2
      end
      object EdtQtde_Pedido: TEdit
        Left = 402
        Top = 285
        Width = 70
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 0
        Width = 775
        Height = 245
        Hint = 'Aviso|Pressione Delete para remover o item selecionado|6'
        BorderStyle = bsNone
        DataSource = ds_qry_compra
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'N_Pre_Venda'
            Title.Caption = 'Pr'#233'-Venda'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Nome_Fantasia'
            Title.Caption = 'Cliente'
            Width = 243
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Cliente'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Codigo_Condicao_Pagamento'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Outras_Despesas'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Tipo_Frete'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Valor_Frete'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Data_Venda'
            Title.Caption = 'Data Ped.'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Previsao_Entrega'
            Title.Caption = 'Prev. Entrega'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hora_Entrega'
            Title.Caption = 'Hora Entrega'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde_Itens'
            Title.Caption = 'Qtde. Itens'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Total_Produtos'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Peso_Total'
            Title.Caption = 'Peso Total'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desconto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Total_Pedido'
            Title.Caption = 'Total Pedido'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Status'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Observacoes'
            Visible = False
          end>
      end
      object Panel1: TPanel
        Left = 1
        Top = 245
        Width = 775
        Height = 24
        BevelInner = bvLowered
        Caption = #205'tens do Pedido Selecionado'
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 8
      end
      object EdtQtde_Entregue: TEdit
        Left = 471
        Top = 285
        Width = 70
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object EdtQtde_Restante: TEdit
        Left = 540
        Top = 285
        Width = 70
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 5
        OnEnter = EdtQtde_RestanteEnter
        OnKeyDown = EdtQtde_RestanteKeyDown
      end
    end
  end
  object TlbFerramentas: TToolBar
    Left = 0
    Top = 0
    Width = 128
    Height = 534
    Align = alLeft
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 124
    DrawingStyle = dsGradient
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientEndColor = clWindow
    HideClippedButtons = True
    HotTrackColor = clMenu
    Images = ImgImagens_Comandos
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = False
    TabOrder = 1
    object BBtnPesquisa: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Caption = '&Pesquisar'
      ImageIndex = 0
      ParentShowHint = False
      Wrap = True
      ShowHint = False
      OnClick = BBtnPesquisaClick
    end
    object BBtnGera_Entrega: TToolButton
      Left = 0
      Top = 38
      Cursor = crHandPoint
      Caption = '&Gera Entrega'
      Enabled = False
      ImageIndex = 1
      Wrap = True
      OnClick = BBtnGera_EntregaClick
    end
    object BBtnAltera: TToolButton
      Left = 0
      Top = 76
      Cursor = crHandPoint
      Caption = 'Alt. &Dt. Hr. Ent.'
      Enabled = False
      ImageIndex = 3
      Wrap = True
      OnClick = BBtnAlteraClick
    end
    object BBtnLimpar: TToolButton
      Left = 0
      Top = 114
      Cursor = crHandPoint
      Caption = '&Limpar'
      Enabled = False
      ImageIndex = 4
      Wrap = True
      OnClick = BBtnLimparClick
    end
    object BBtnFechar: TToolButton
      Left = 0
      Top = 152
      Cursor = crHandPoint
      Caption = 'Fechar Janela'
      ImageIndex = 2
      OnClick = BBtnFecharClick
    end
  end
  object ImgImagens_Comandos: TImageList
    AllocBy = 0
    Height = 32
    Width = 32
    Left = 632
    Top = 65528
    Bitmap = {
      494C010105000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000800000FF
      FF0000008000000000000000800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000800000FFFF000000
      8000000000000000800000FFFF00000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000800000FFFF00000080000000
      00000000800000FFFF000000800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000800000FFFF0000008000000000000000
      800000FFFF000000800000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000008000000000000000800000FF
      FF000000800000FFFF000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000800000008000000080000000000000000000000000800000FFFF000000
      800000FFFF000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008000000080000000800000000000000000800000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      800000FFFF000000000000000000008000000080000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000800000FF
      FF000000800000FFFF00000080000000000000800000008000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000800000FFFF000000
      800000FFFF000000800000FFFF00000000000000000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000800000FF
      FF000000800000FFFF000000800000FFFF000000000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000000000000000000000
      800000FFFF000000800000FFFF00000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000000
      00000000800000FFFF000000800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000FF00FF00C0C0C000000000000000000000800000008000000000
      0000000000000000800000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000FF00FF00C0C0C000FF00FF00C0C0C000FF00FF0000000000008000000080
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000FF00FF00C0C0C00000000000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF00FFFF
      FF00FF00FF00FFFFFF0000000000C0C0C000FF00FF00C0C0C000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FFFFFF00FF00
      FF00FFFFFF00FF00FF0000000000FF00FF00C0C0C000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FF00FF00FFFF
      FF00FF00FF00FFFFFF000000000000000000FF00FF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FFFFFF00FF00
      FF00FFFFFF00FF00FF00FFFFFF0000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FF00FF00FFFF
      FF00FF00FF00FFFFFF00FF00FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FF00
      FF00FFFFFF00FF00FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF00FFFF
      FF00FF00FF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000808080000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000000000000000000000000000808080000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C00000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006067600060676000606760006067
      6000606760006067600060676000606760006067600060676000606760006067
      6000606760006067600060676000606760006067600060676000606760006067
      6000606760006067600060676000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000010000000B0000
      0020000000570000004500000019000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDF2F500E2E3E300EBEBEC00F2F2F100FBFB
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0A79000DFA79F00D09F9000CF979000CF97
      9000CF979000CF979000CF979000C0979000C0978F00C0978F00C0978F00C097
      8F00C0978F00C0978F00C0978F00C0978F00C0978F00C0978F00C0978F00C097
      8F00C0979000DF978F0060676000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020000000400000032A1A1A1A49797
      97C38C8C8CFF686868FB7A7A7AC3000000510000000E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F90002629C0002629C00015C9100145B87001E5F
      85002A607F004F6B7B005F747D00828D930095989A00AEAEB200B9BAB900D9DA
      D900DEDFDF00F2F2F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00B5B5B500A1A1A100A2A2A200A9A9
      A900B4B4B400C0C0C000D3D3D300E7E7E700F3F3F300F3F3F300F2F2F200F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0AFAF00FFD8C000FFD8C000FFD8C000FFD8
      C000FFD8C000FFD8C000FFD8C000FFD8C000FFD8C000FFD8C000FFD8C000FFD8
      C000FFD8C000FFD8C000FFD8C000FFD8C000FFD8C000FFD8C000FFD8C000FFD8
      C000FFD09F00DF978F0060676000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000A000000630000006A9B9B9BDE9C9C9CFFBBBB
      BBFF9CB7C8FF9CA8ABFFA4A4A4FF717171F88E8E8E9800000024000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EEF500005D9B00005D9B0001609600016096000160
      96000160960002629C0001609600015C9100145B87001E5F85002A607F004F6B
      7B005F747D009B9D9E00E2E3E3000000000000000000FEFEFE00FDFDFD00FDFD
      FD00FBFBFB00FAFAFA00F8F8F800F6F6F600F4F4F400F2F2F200EFEFEF00EDED
      ED00E9E9E900E6E6E600E2E2E200E2E2E20013131300171615004288A400567F
      900068717500767676008383830097979700A9A9A900A8A8A800AAAAAA00C8C8
      C800FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CFB7AF00E0E8E000FFE0CF00FFE0CF00FFE0
      CF00FFE0CF00FFE0C000FFE0C000FFE0C000FFE0C000FFD8C000FFD8C000FFD8
      BF00FFD8BF00FFD8BF00FFD8BF00FFD8B000FFD8B000FFD8B000FFD0B000FFD0
      B000FFD8C000DF978F0060676000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000036464646FE2F2F2FFFA0A0A0FDD5D5D5FFE9E9
      E9FFB8D7EBFFA6B6B5FFD9D6D3FFCFCFCFFF8C8C8CFF767676D1000000440000
      0006000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000015C9100015C9100015C
      9100015C9100015C9100015C91000968A6001C79C7001F80CF001F80CF001F80
      CF001E7CCE001C79C7001C79C7001570BF001570BF00126EB9000968A600105D
      A80002629C001E5F8500AEAEB20000000000FBFBFB00EAEAEA00D5D5D500CCCC
      CC00C6C6C600C1C1C100BCBCBC00B6B6B600AFAFAF00A9A9A900A3A3A3009E9E
      9E0096969600909090008C8C8C008C8C8C007878780063605F0040C4E80042D3
      FF0041D2FF003BD6FF00606265003D413D004857470046614400456C42009898
      9800FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0B7AF00E0E8E000FFE0CF00FFE0CF00FFE0
      CF00FFE0CF00FFE0CF00FFE0CF00FFE0C000FFE0C000FFE0C000FFE0C000FFD8
      C000FFD8BF00FFD8BF00FFD8BF00FFD8BF00FFD8BF00FFD8B000FFD8B000FFD8
      B000FFD8C000DF978F0060676000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000077636363FF585858FFC7C7C7FFD7D7D7FFDEDE
      DEFFE1E1E1FFE5E4E4FFDFDEDCFFABABABFFD2D2D2FFAFAFAFFF727272ED0000
      0065000000070000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000015C9100094C7B000F3E
      68000F3E68000F3E68000C4470000E6BB1001E7CCE002184D1002588D3002184
      D1002184D1002184D1001F80CF001F80CF001F80CF001E7CCE001E7CCE001C79
      C7001570BF00145B8700A5A8A70000000000F7F7F700899A88004C6B49003B6A
      380034792F0030802B00378B3100328A2C00358E2E003691300039933200409A
      3A0043943C0060A85A0072B16C0086BA80006D6E6F005DDDFA005FDEFF005FDE
      FF005FDEFF005DDDFF003E5C68007E727200ACAFAC00D4D6D40070A769007377
      7300F3F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0B7AF00E0E8EF00FFE8D000FFE0CF00FFE0
      CF00FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0C000FFE0C000FFE0C000FFD8
      C000FFD8C000FFD8BF00FFD8BF00FFD8BF00FFD8BF00FFD8BF00FFD8BF00FFD8
      B000FFD8C000DF978F0060676000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001AFAFAF9F6B6B6BFF9D9D9DFFAFAEAEFFD5D5D5FFCBCA
      CAFFD1CDCEFFC6C4C4FFE4E4E4FFE6E6E6FFB2B2B2FFBEBEBEFFC6C6C6FF7575
      75F60000002F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A8A700EEEEEE00016096000C4470001338
      6000133860001033530006642800126EB9002588D3002A91D800268CD5002A91
      D800288FD700288FD700268CD500278DD600268CD500258AD500258AD5002184
      D1001E7CCE00145B87009B9D9E00000000000000000042A33D00BEDBB900C5E0
      C200D7EBD400CBE0C80037602600EEFBEC00ECFAEB00EFFDEE00F1FEF100F6FF
      F70035602200FBFFFC00F5FFF500F4FFF40081D0ED0070E3FF0074E6FF0074E6
      FF0075E6FF006EE2FF00173B4800302622008C898600B1B3B100789F73005F6B
      5E00ECECEC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0B7B000EFE8EF00FFE8D000FFE8D000FFE8
      D000FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0C000FFE0C000FFE0
      C000FFE0C000FFD8C000FFD8C000FFD8BF00FFD8BF00FFD8BF00FFD8BF00FFD8
      B000FFD8C000DF978F0060676000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000D0000002700000012919191B09D9D9DFFC5C5C5FF817475FFD1D1D1FFDDDC
      DCFFD0C9C9FF9F9393FFA7A1A2FFD7D6D6FFEDEDEDFFD1D1D1FFC7C2BDFF9F9C
      99FF0000004A0000000000000000000000000000000000000000000000000000
      000000000000F6F6F6006F926F0059785900E7E7E700016096000C4470001338
      60001033530002521400269051001570BF00258AD5002D94DA00258AD5002C92
      D9002C92D9002C92D900228AD5002A91D800288FD700288FD700258AD500228A
      D5002184D100145B870095989A00000000000000000041A13B00FDFFFD00F1FF
      F100F1FFF100FBFFFB002A5B1700FDFFFE00F1FFF100F1FFF100F1FFF100F3FF
      F30032611D00FDFFFE00F1FFF100F1FFF100D2E0D60077E4FF008AEEFF008AEE
      FF0085EAFF0065DCFF0045DDFF00010C1200483D3A008D8B8900789074004A5F
      4900E1E1E1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0BFB000EFE8EF00FFE8D000FFE8D000FFE8
      D000FFE8D000FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0C000FFE0
      C000FFE0C000FFE0C000FFD8C000FFD8C000FFD8C000FFD8BF00FFD8BF00FFD8
      BF00FFD8C000DF978F0060676000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000014BDBD
      BD8DA6A6A6E5999999A0828282D3C7C7C7FF9C9C9CFF3F3E3EFFC7C7C7FFCDCB
      CBFFCDC3C3FFADA0A0FF938586FF8D8484FFBDBBBBFFE5E5E5FFE7E5E4FFB5C1
      C7FE0000001E0000000000000000000000000000000000000000000000000000
      0000CDCDCC000C94110038C34B0059785900A5A8A7000C44700009213500056E
      0A0025982A0090E5A2005FB69E001977B9002D8ED8003097DB00258AD5003097
      DB003097DB003097DB00258AD5002D94DA002C92D9002C92D900268CD500288F
      D700258AD500145B8700828D93000000000000000000509C4C00F8FFF800F1FF
      F100F1FFF100FCFFFD003E6E2B00F1FEF100F1FFF100F1FFF100F1FFF100F1FF
      F10034662100F6FFF700F1FFF100F1FFF100E9F0E10075E0FF0098F3FF0095F0
      FF0077E0FF0081FAFF0061EFFF0047DBFF000B00000043383500767E7100334F
      3100CDCDCD00F9F9F900FEFEFE00000000000000000000000000C05750009077
      7F006F676F000000000000000000D0BFB000EFE8EF00FFE8D000FFE8D000FFE8
      D000FFE8D000FFE8D000FFE0D000FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0
      CF00FFE0C000FFE0C000FFE0C000FFE0C000FFD8C000FFD8BF00FFD8BF00FFD8
      BF00FFD8C000DF978F0060676000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000F9797979AB6B6
      B6FFA1A1A1FF606060FFB5B5B5FFC9C9C9FFAFAFAFFF595959FFBABABAFFAEA9
      A9FFC5B5B6FFB6A7A8FF9D8E8FFF897C7CFF817A7AFF8F8E8EFFD3D3D3FFE4E4
      E4D300000003000000000000000000000000000000000000000000000000A5A8
      A700168125002ABE3C0038C34B00056E0A002C772D00056E0A001D8D220055C0
      63007BD8920090E5A20045A286001C79C7002D8ED8003097DB00228AD5003399
      DD003097DB003097DB00268CD5003097DB002D94DA002D94DA00278DD6002A91
      D800268CD500015C910081888D000000000000000000B3BDB200D3EFD200F1FF
      F100F1FFF100F5FFF6004E7C3C00C3D8BE00F1FFF100F1FFF100F1FFF100F1FF
      F1004F7F3E00E1F1E000F1FFF100F1FFF100F0FDF000E2F3E900747071002E22
      210074AAAB00A8FAFF0093F8FF0074F8FF004DE4FF00062E3E001D1310005550
      49009A9A9A00DCDCDC00F5F5F500FDFDFD0000000000AF5750007F878F009F77
      9F00CF879F00705F6F0000000000DFBFB000EFE8EF00FFE8DF00FFE8DF00FFE8
      D000FFE8D000FFE8D000FFE8D000FFE8D000FFE0CF00FFE0CF00FFE0CF00FFE0
      CF00FFE0CF00FFE0CF00FFE0C000FFE0C000FFE0C000FFD8C000FFD8C000FFD8
      BF00FFD8C000DF978F0060676000000000000000000000000000000000000000
      00000000000000000000000000000000000A00000023000000597A7A7AFF7373
      73FFA5A5A5FF666666FFC0C0C0FFBBBABAFF948E8EFFAFADADFFB6B6B6FF9A97
      97FFA09595FF867D7EFF7B7273FF4F4445FF635A5BFF726D6DFF737272FFD0D0
      D0C30000000100000000000000000000000000000000F6F6F6006F926F0012AA
      1E0024BA35002ABE3C0034BC440043C556004CC960005CCE710062CF76006FD3
      84007BD8920025982A00054A2F001F80CF003295DC00389CDE00228AD500389C
      DE003399DD003399DD00278DD6003399DD003399DD003399DD002A91D8002D94
      DA002D8ED800015C91006D7C84000000000000000000E8E9E800B4E0B200F1FF
      F100F1FFF100F2FFF20084A87900A2BD9A00F1FFF100F1FFF100F1FFF100F1FF
      F1008FB08400A3BF9C00F1FFF100F1FFF100F2FFF200F0FDF000F4FFF4007776
      720017100F00557D7E00ABFCFF0095F8FF0069F5FF0050E7FF000E4E6500170E
      0B0079787800B7B7B700DFDFDF00F5F5F500000000007F776F003077D0005F67
      A000A08FA000D08F9F00705F6000DFBFB000EFF0EF00FFE8DF00FFE8DF00FFE8
      DF00FFE8D000FFE8D000FFE8D000FFE8D000FFE8D000FFE0CF00FFE0CF00FFE0
      CF00FFE0CF00FFE0CF00FFE0CF00FFE0C000FFE0C000FFE0C000FFD8C000FFD8
      C000FFD8C000DF978F0060676000000000000000000000000000000000000000
      000000000000000000000000000600000077595959DF6F6F6FC0686868FFB9B9
      B9FFAEAEAEFF808080FFCACACAFFA0A0A0FF9F9E9EFFDBDBDBFFE2E2E2FFE6E6
      E6FFD4D4D4FFB5AAABFF948080FF665454FF4A4242FF626161FF676767FFC1C1
      C196000000000000000000000000000000000000000075AB7500068B090018B8
      290018B829002ABE3C0034BC440043C556004CC960005CCE710062CF760074D6
      8B006FD38400025214000C4470002184D1003295DC00389CDE002588D300389C
      DE00379EE100379EE100278DD600379EE1003399DD003399DD002C92D9003295
      DC002C92D900015C91006D7C84000000000000000000F7F7F7008DCF8900F1FF
      F100F1FFF100F1FFF100B3CAAC0070986300F1FFF100F1FFF100F1FFF100F1FF
      F100B7CDB000618D5400F3FFF300F1FFF100F2FFF200F2FFF200F5FFF5006692
      57006C6667001A14140050747600ACFDFF008AF8FF006BF5FF004FE4FF000F55
      6E00392E2A0096969600C0C0C000E3E3E300000000005FBFFF0030A7FF003077
      D0005F67A000A08FA000CF879F00706F6F00EFF0EF00FFF0DF00FFE8DF00FFE8
      DF00FFE8DF00FFE8DF00FFE8D000FFE8D000FFE8D000FFE8D000FFE8D000FFE0
      CF00FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0C000FFE0C000FFE0C000FFE0
      C000FFD8C000DF978F0060676000000000000000000000000000000000000000
      0000000000000000000000000035888888F7515151FF303030FCBDBDBDFBC3C3
      C3FFABABABFF838383FFCACACAFFB3B3B3FFD9D9D9FFF8F8F8FFF8F8F8FFF9F9
      F9FFFCFCFCFFEAEAEAFFC7C6C6FF4E4E4EFF575757FF7C7C7CFF6A6A6AFF0000
      006E000000000000000000000000000000000000000000000000CDE3CD0012AA
      1E0024BA35002ABE3C0034BC440043C556004CC960005CCE71005CCE71001D8D
      2200054A2F0013386000094C7B002588D300389CDE00175B9A000D4D8F00164A
      75001E5F85003BA1E300288FD7003BA1E300379EE100379EE1002D94DA00389C
      DE003399DD00016096005F747D0000000000000000000000000053B34E00F5FF
      F500F1FFF100F1FFF100CAE1C600477D3700F1FFF100F1FFF100F1FFF100F1FF
      F100CFE4CC00467D3700F6FFF600F1FFF100F2FFF200F2FFF200F4FFF40087AE
      7C00F2F8F3006E686800231D1C00334D4D00A3F8FF008DF8FF006EF7FF0053E7
      FF000004070033343400AAAAAA00CBCBCB00000000007F87B00060D8FF003FAF
      FF003077CF005F6FAF00A08FA000CF879F008F778F00FFF0E000FFF0DF00FFE8
      DF00FFE8DF00FFE8DF00FFE8DF00FFE8D000FFE8D000FFE8D000FFE8D000FFE8
      D000FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0C000FFE0C000FFE0
      C000FFD8C000DF978F0060676000000000000000000000000000000000000000
      000000000014000000409595959B8E8E8EFF848484FFBCBCBCFFC2C2C2FFBBBA
      BAFFABABABFF8D8D8DFFCBCBCBFFDBDBDBFFF9F9F9FFF8F8F8FFF7F7F7FFF9F9
      F9FFFCFCFCFFF8F8F8FFF6F6F6FFE4E4E4FFB6B6B6FF7F7F7FFF6A6A6AFF0000
      006C000000000000000000000000000000000000000000000000000000004A8F
      4A000E9D16002ABE3C0034BC440038C34B0034BC440034A83C001D8D2200054A
      2F001338600013386000094C7B002D8ED8002F8BCB00105DA800126EB9000D53
      9B000F3E68003BA1E3002A91D8003BA1E3003BA1E3003BA1E3003097DB00379E
      E1003399DD0002629C004F6B7B00000000000000000000000000489A4300FAFF
      FB00F1FFF100F1FFF100F3FFF4004C8C3900F2FFF200F1FFF100F1FFF100F1FF
      F100F4FFF5004D903A00FCFFFD00F1FFF100F2FFF200F2FFF200F3FFF300B9D7
      B300DEEDDB00F4FDF400D2D7D000534D4C00131D1E00B2FFFF009CF8FF007DF9
      FF00918B8C002F2F2F003D3D3A008A8AB00000000000000000008F87B0005FD0
      FF0040AFFF003077D0005F67A000A08FA000CF879F00706F7000FFF0E000FFF0
      DF00FFE8DF00FFE8DF00FFE8DF00FFE8DF00FFE8D000FFE8D000FFE8D000FFE8
      D000FFE8D000FFE8D000FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0
      C000FFD8C000DF978F0060676000000000000000000000000000000000000000
      000B8E8E8E9A464646FD535353F57B7B7BFFBDBDBDFFC1C1C0FFBAB9B9FFB5B5
      B5FFABABABFF959595FFDDDDDDFFFAFAFAFFF7F7F7FFF7F7F7FFF7F7F7FFFAFA
      FAFFFBFBFBFFF8F8F8FFF8F8F8FFF8F8F8FFF2F2F2FFD6D6D6FF8B8B8BFF0000
      004A000000000000000000000000000000000000000000000000000000000000
      0000F7FBF7001D8D220024AD31005978590058839B00084E8200133860001338
      60001338600013386000084E82002D8ED8001563A8001F80CF002184D1001C79
      C700105DA8003794CC002C92D9003FA5E5003FA5E5003FA5E5003399DD003BA1
      E300379EE1000968A6004F6B7B0000000000000000000000000063995F00FDFF
      FD00FCFFFD00FCFFFD00000000005DA24900FBFFFC00F6FFF700F4FFF500F1FD
      F100F4FFF60060A54C00E9F7E900DEF1DD00D8EAD600D3E7D100CFE5CC00C2DD
      BD00A6CB9E00C3DBBE00BBD2B5009DB49700322C2C00111B1A00ACFFFF00E4F6
      FB007A7A7D007F7F8100625DA200726EB1000000000000000000000000008F87
      AF0050BFFF003FA7FF003087EF005F67A000A08FA000CF879F00706F7000FFF0
      E000FFF0E000FFF0DF00FFE8DF00FFE8DF00FFE8DF00FFE8D000FFE8D000FFE8
      D000FFE8D000FFE8D000FFE8D000FFE0CF00FFE0CF00FFE0CF00FFE0CF00FFE0
      CF00FFD8C000DF978F0060676000000000000000000000000000000000000000
      00499A9A9AFD5C5C5CFF575757FFBFBFBFFFBFBFBFFFB8B8B7FFB5B4B4FFADAD
      ADFFAEAEAEFF9E9E9EFFEAEAEAFFE1E1E1FFF2F2F2FFF8F8F8FFF9F9F9FFFCFC
      FCFFFBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFFAFAFAFFE2E2E2810000
      000B000000000000000000000000000000000000000000000000000000000000
      000000000000CDE3CD00359736006F926F004C7CA100094C7B00133860001338
      60001338600013386000035789003092DB00105DA800469BD900469BD9002F8B
      CB00105DA8003E9BD1002C92D90042A8E6003FA5E5003FA5E500379EE1003FA5
      E500379EE1000968A6003B647B0000000000000000000000000089A18700467C
      37004B863A0050913E00569A43006BAF57005CA248005C9D49005A9749005E99
      4D0067A7550073B4610074B4610075B0630071A7610071A5610079B06A0084BA
      740076B7630082BA73007EB36F007BAB6D007890700087858400858281007575
      7600D3D3D800D2D1DC00806DDD008881B1000000000000000000000000000000
      00008F87AF0060E0FF003FAFFF003077CF005F6FAF00A08FA000D087A000FFF0
      E000CFBFBF00BFAFAF00BFAFAF00BFAFAF00BFAFAF00C0A7AF00BFAFAF00FFE8
      D000FFE8D000FFE8D000FFE8D000FFE8D000FFE8CF00FFE0CF00FFE0CF00FFE0
      CF00FFD8C000DF978F0060676000000000000000000000000000000000019D9D
      9D9A7A7A7AFF8B8B8BFFBBBBBBFFBCBCBCFFB6B6B5FFB5B5B5FFACACABFFA7A7
      A7FFB2B2B2FFA8A8A8FFACACACFFCACACAFFE1E1E1FFEEEEEEFFF9F9F9FFFDFD
      FDFFFBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF7F7F78A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F8FA003280B2000F3E6800133860001338
      60001338600013386000035789003BA1E3002F8BCB00D3CFF200E2EEF5006E9F
      C0001563A80048AEEB002A91D80045AAEA0042A8E60045AAEA003BA1E3003FA5
      E5003FA5E5000B6CA9003B647B00000000000000000000000000CACECA00A7D7
      A400F1FEF100F2FFF300F5FFF50097C68C0000000000F8FFF900F8FFF900F9FF
      FA00FDFFFE0077B16700A7CBA000F9FFFA00FAFFFB00FBFFFC00FBFFFC000000
      000072AC650000000000FEFFFE0000000000FCFFFC00EBEEEA00C7C7C7008788
      8400C6BBDE00987ED300856AC500E1E0E3000000000000000000000000000000
      0000000000008F87B0005FD0FF00309FFF003077D00050677F00706F90008F87
      7F00AF878F00A07F7F00A07F7F00A0676F00B0878F00AF779000906760009F6F
      8F00E0D0CF00FFE8D000FFE8D000FFE8D000FFE8D000FFE8D000FFE0CF00FFE0
      CF00FFD8C000DF978F0060676000000000000000000000000000000000009595
      95A8868686FFBBBBBBFFB8B8B8FFB4B4B4FFB5B4B4FFABABABFFA8A7A7FF9E9E
      9EFFBDBDBDFFB4B4B4FFB0B0B0FFA8A8A8FFB6B6B6FFDCDCDCFFECECECFFFDFD
      FDFFFBFBFBFFFBFBFBFFFBFBFBFFF9F9F9FFF7F7F78D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDF2F5002A74A4000F3E6800133860001338
      6000133860000F3E6800035789003BA1E30042A8E600498BB30074ACD4001977
      B90049A3D90048AEEB002D94DA0048AEEB0045AAEA0048AEEB003FA5E50042A8
      E6003FA5E5001273B4002A607F000000000000000000000000000000000054B4
      5000F1FFF100F1FFF100F1FFF100AFD1A900E1F3E000F1FFF100F1FFF100F1FF
      F100F1FFF100B5D5AF0075A96B00F2FFF300F2FFF200F2FFF200F3FFF300F7FF
      F7005392430000000000F7FFF700F9FFF900FAFFFA00FAFFFA00FBFEFB00B5AB
      CA006E5A90008B819B0000000000FDFDFD000000000000000000000000000000
      000000000000000000008F87AF005FD0FF0060A7FF00908FAF00A08FA000AF8F
      9F00BF7F7F00E0C8A000FFF0C000FFFFD000FFFFDF00FFFFD000EFD0BF00BF87
      7F00A07F8F00EFD0C000FFE8D000FFE8D000FFE8D000FFE8D000FFE8D000FFE0
      CF00FFD8C000DF978F006067600000000000000000000000000000000004B6B6
      B6A0BABABAFFB5B5B5FFB1B1B1FFB0B0AFFFABABABFFA6A6A6FFA0A0A0FFABAB
      ABFFC1C1C1FFC8C8C8FFC5C5C5FFBDBDBDFFB7B7B7FFACACACFFC4C4C4FFF6F6
      F6FFF5F5F5FFFAFAFAFFF9F9F9FFF5F5F59B0000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9E7F0000C64980013386000133860001338
      6000133860000F3E6800015C91003FA5E50045AAEA00379EE100379EE1004BB1
      EE004BB1EE004BB1EE002D94DA004BB1EE0048AEEB0048AEEB0045AAEA0045AA
      EA0042A8E6001977B9001E5F85000000000000000000000000000000000043A6
      3D00F1FFF100F1FFF100F1FFF100DFF2DE00C4DEC100F1FFF100F1FFF100F1FF
      F100F1FFF100E3F4E2005F9A5200F5FFF500F2FFF200F2FFF200F3FFF300F5FF
      F50051924200FBFFFB00F7FFF700F9FFF900FAFFFA00FBFFFB00FCFFFC00FEFF
      FE00526C5000BEBEBE00FBFBFB00000000000000000000000000000000000000
      000000000000000000000000000090C8EF00D0D8EF00D0C8D00090776F00E0A7
      9000FFF0B000FFFFDF00FFFFD000FFFFDF00FFFFDF00FFFFDF00FFFFE000FFFF
      E000C08F90009F6F8F00E0D0CF00FFE8CF00FFE8D000FFE8D000FFE8D000FFE8
      D000FFD8C000DF978F006067600000000000000000000000000000000009B7B7
      B7E3B3B3B3FFAEAEAEFFABABABFFABABABFFA4A4A4FFA1A1A1FFAAAAAAFFCBCB
      CBFFC6C6C6FFCBCBCBFFD5D5D5FFD9D9D9FFD1D1D1FFC6C6C6FFBBBBBBFFB2B2
      B2FFD1D1D1FFE5E5E5FFE7E7E7A5000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C9DDEA000160960013386000103353001338
      6000133860000C447000015C910045AAEA0048AEEB00379EE1003BA1E3004EB5
      F0004BB1EE004EB5F0002D94DA004EB5F0004BB1EE004BB1EE0048AEEB0042A8
      E60048AEEB001977B900145B8700FFFFFE000000000000000000000000003F9F
      3A00F1FFF100F1FFF100F1FFF100F9FFFA00A5C99F00F1FFF100F1FFF100F1FF
      F100F1FFF100F0FDF00057954900FBFFFC00F2FFF200F2FFF200F3FFF300F4FF
      F400629E5500F3F9F200F7FFF700F9FFF900FAFFFA00FBFFFB00FCFFFC000000
      00003C773800B2B2B200F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000EFD0C000FFF8FF00C0A7AF00EFB79000FFE8
      BF00FFF8CF00FFF8CF00FFFFD000FFFFD000FFFFEF00FFFFEF00FFFFFF00FFFF
      FF00FFFFF000B07F7F0070576F00DFC8C000FFE8DF00FFE8D000FFE8D000FFE8
      D000FFD8C000DF978F00606760000000000000000000000000000000000DAFAF
      AFF5ABABABFFA6A6A6FFA8A8A8FFA2A2A2FFA1A1A0FFABABABFFD4D4D4FFD1D1
      D1FFD4D3D3FFD5D5D5FFD9D8D8FFE4E4E4FFE8E8E8FFE7E7E7FFD7D7D7FFCBCB
      CBFFC4C4C4FFC6C6C6FF00000037000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B9D1DD0002629C0006642800056E0A000921
      3500103353000C4470000160960045AAEA004BB1EE0049A3D9005CB2E80073BB
      E6007AC1E70086C2E40074ACD4009AC9DC009AC9DC009AC9DC00A7C8D700A7C8
      D70084BEDE001F81C600145B8700F9F9F900000000000000000000000000679D
      6500F3FFF300F1FFF100F1FFF100FAFFFB0071A56700F3FFF300F1FFF100F1FF
      F100F1FFF100F9FFF90058964A00F6FFF600F2FFF200F2FFF200F3FFF300F4FF
      F40082B27800C9DEC600F7FFF700F9FFF900FAFFFA00FBFFFB00FCFFFC000000
      00002F842900A7A7A700F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000F0D8C000FFF8FF00DFAFAF00FFE8B000FFFF
      D000FFE8B000FFF8CF00FFFFD000FFFFE000FFFFEF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF8D0009F5F6F00C0A7AF00FFE8DF00FFE8DF00FFE8D000FFE8
      D000FFD8C000DF978F00606760000000000000000000000000000000001AA9A9
      A9FFA4A4A4FFA3A2A2FF9F9F9FFFA1A1A0FFAAAAAAFFD4D4D4FFD7D7D6FFDAD9
      D9FFDADADAFFDDDCDCFFDDDDDDFFDDDDDDFFECECECFFF3F3F3FFF8F8F8FFEAEA
      EAFFDBDBDBFFD8D8D8FF00000024000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9BCC700015893000252140034BC44000252
      1400092135000C4470000160960042ACF10084BEDE00F1E3CF00F3E8D300FDEC
      D300FDECD300FDECD300FFF5D700FFF5D700FFF9D800F9F2D700FFF5D700FDEC
      D300FCE5C7001F81C60003578900F9F9F900000000000000000000000000CACF
      CA00FBFFFC00F1FFF100F1FFF100F5FFF50059964D00F8FFF800F1FFF100F1FF
      F100F1FFF100F6FFF600649F5800E7F7E700F2FFF200F2FFF200F3FFF300F4FF
      F4009AC1930088B38000F8FFF800F9FFF900FAFFFA00FBFFFB00FCFFFC000000
      0000358F2F0097979700EAEAEA00000000000000000000000000000000000000
      0000000000000000000000000000F0D8C000EFC8DF00FFC8AF00FFF8D000FFE8
      BF00FFE8B000FFFFCF00FFFFD000FFFFE000FFFFEF00FFFFFF00FFFFFF00FFFF
      FF00FFFFE000FFFFDF00B0877F007F677000FFE8DF00FFE8DF00FFE8DF00FFE8
      D000FFD8C000DF978F006067600000000000000000000000000000000033A1A1
      A1FF9D9D9DFF9C9C9BFF9C9C9CFFA9A9A9FFD2D2D2FFD9D9D9FFDBDBDAFFDFDE
      DEFFDDDCDCFFDDDCDCFFE9E9E8FFE3E2E2FFDEDDDDFFE0DFDFFFEBEBEBFFF3F3
      F3FFEBEBEBFFE2E2E2FF0000001D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9BAB9006F926F0012841400189B1F0045B24D0062CF76007BD8
      920034A83C0009485200005D9B005CB2E800E7E2D3005D58F200544EF1006762
      F3003E39EF00FFFFFE00544EF1003E39EF00211BED00EEEEFD00B6B3F800E9E4
      F300FFF4DC002184D10003578900F6F6F600000000000000000000000000F0F0
      F000F7FFF700F1FFF100F1FFF100F2FFF2004E934200FCFFFD00F1FFF100F1FF
      F100F1FFF100F2FFF20092BE8A00B7D4B400F2FFF200F2FFF200F3FFF300F4FF
      F400C0DBBC0070A56600F9FFF900F9FFF900FAFFFA00FBFFFB00FCFFFC00FEFF
      FE003C9735008C8C8C00E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000F0D8BF00DF9F9F00FFD0AF00FFF8CF00FFD8
      A000FFE8B000FFF8CF00FFFFD000FFFFE000FFFFE000FFFFF000FFFFFF00FFFF
      E000FFFFEF00FFFFDF00DFB7AF007F5F6F00FFE8DF00FFE8DF00FFE8DF00FFE8
      DF00FFD8C000DF978F00606760000000000000000000000000000000004A9999
      99FF979797FF969595FFA6A6A6FFCFCFCEFFD9D8D8FFD9D9D8FFE1E0E0FFE1E0
      E0FFDCDBDBFFE3E3E3FFEFEFEEFFE3E3E2FFE1E1E0FFE2E1E1FFDFDEDEFFD6D5
      D5FFDBDBDBFFDFDFDFE500000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E70012841400189B1F0043C5560055CA690062CF760067D17C0074D6
      8B0083DC9A000F785300005D9B005CB2E800EFEDD7000F08ED00544EF100A6A2
      F600544EF100BDBBFA00211BED00BDBBFA002B24EE00FFFFFE00B6B3F800EAE6
      F900FFF4DC002685C900015C9100F2F2F100000000000000000000000000FEFE
      FE00B8CFAB00C6D9BE00D2E3CC00DDEDD90056974900F1FAF000F0FBF000F2FD
      F200F3FFF400F5FFF500BDD8BA0070A76900FBFFFD00FBFFFD00FCFFFE00FCFF
      FD00F7FBF7005194460000000000FBFFFB00FBFFFB00FBFFFC00FCFFFC00FDFF
      FD0057A350007D7D7D00DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000EFD0C000FFC8B000FFE8C000FFF8C000FFD8
      A000FFE0B000FFF8BF00FFFFD000FFFFD000FFFFE000FFFFE000FFFFE000FFFF
      EF00FFFFDF00FFFFD000EFD0A000705F6000FFF0E000FFF0DF00FFE8DF00FFE8
      DF00FFD8C000DF8F7F0060676000000000000000000000000000000000629292
      92FF8F8F8FFFA3A3A3FFCCCCCCFFD7D6D6FFD7D6D6FFDDDDDDFFE1E1E1FFE0DF
      DFFFDFDFDFFFE7E6E6FFEDECECFFE6E5E5FFE7E7E7FFE4E4E4FFE0DFDFFFDFDF
      DEFFD2D2D2FD0000005E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A8F
      4A000E9D160034BC440034BC440043C556004CC960005CCE710067D17C0074D6
      8B007BD89200338E9500005D9B0068BBEC00F9F2D700211BED007974F500BDBB
      FA00FFFFFE000F08ED00B6B3F800D6D5FC002B27F000FFFFFE00B6B3F800E6E5
      FC00FFFBE400288FD700015C9100EEEEEE000000000000000000000000000000
      000072AF590072B05A0071AD58006FAB56006FA8550069A24F00679F4D00659B
      4900629746006094430061944400659649005B8D3C00598D3C00578C3A00578F
      3C005995410053943E0063A252006DA95E007DB672008BC0830098C79100A3CF
      9E0063AB5D0069706900D3D3D300FDFDFD000000000000000000000000000000
      0000000000000000000000000000F0D8C000FFD0BF00FFE0C000FFF8C000FFD8
      AF00FFF0C000FFF0BF00FFF8CF00FFFFD000FFFFDF00FFFFDF00FFFFDF00FFFF
      DF00FFFFD000FFFFDF00DFB790007F676F00FFF0E000FFB7B000FFAFB000FF9F
      A000FF9F9F00DF978F00606760000000000000000000000000000000007A8A8A
      8AFF9F9F9FFFC9C9C9FFD3D2D2FFD4D4D3FFDAD9D9FFDFDFDFFFE0E0DFFFE0E0
      DFFFE2E1E1FFE6E5E5FFEBEAEAFFEDEDEDFFEDECECFFEAE9E9FFE5E5E5FFDBDB
      DAF6000000540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E9D
      160024BA35002ABE3C0038C34B0043C556004CC960005CCE710067D17C0074D6
      8B007BD89200338E9500005D9B0068BBEC00F9F2D7000F08ED003D36EF00BDBB
      FA00FFFFFE000F08ED008681F500DFDDFB00312AEE00FFFFFE00B6B3F800AEAE
      B200C8B7A4002D94DA0001609600EEEEEE000000000000000000000000000000
      00006AB0550073B15B0073B15B0073B15B0073B15B0073B15B0073B15B0073B1
      5B0073B15B0073B15B0073B15B0073B15B0073B15B0072B25B0070B359006DB5
      580068B8550065BA540061BC52005DBF500057C24E0053C44B004FC74A004CC8
      49003CA134004C714900C4C4C400FAFAFA000000000000000000000000000000
      0000000000000000000000000000FFE0CF00E0C8C000FFE0B000FFFFDF00FFF0
      C000FFE0B000FFE0AF00FFF0C000FFF8CF00FFFFCF00FFFFD000FFFFDF00FFF8
      C000FFFFCF00FFF8CF00CF9F9000D0B7B000EFB79000F09F4000EF973000E08F
      3000DF873000BF8F6F0060676000000000000000000000000000B2B2B28F9B9B
      9BFFC5C4C4FFCECDCDFFD1D1D0FFD4D4D4FFDCDBDBFFDEDDDDFFDFDFDFFFE3E3
      E3FFE2E1E1FFE3E3E3FFECECEBFFEFEFEEFFEEEEEDFFEAEAEAFFE3E3E3EF0000
      003D000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000075AB750018B8
      290024BA350024BA350024AD310025982A00168125001D8D220055C063007BD8
      920045B24D00005774000968A6007AC1E700FFF5D7000F08ED004942F1006F6A
      F400322DF000FFFFFE00544EF100544EF1004942F1006F6AF4007469E800F4E5
      D50086C2E4003097DB0001609600E2E3E3000000000000000000000000000000
      00005AAE4C0073B15B0073B15B0073B15B0073B15B0073B15B0073B15B0073B1
      5B0073B15B0073B15B0073B15B0073B15B0073B15B0072B25B0070B359006DB5
      580068B8550065BA540061BC52005DBF500057C24E0053C44B004FC74A004CC8
      49003EA7360042753F00B8B8B800F6F6F6000000000000000000000000000000
      0000000000000000000000000000FFE0CF00F0E8DF00E0BFA000FFFFDF00FFFF
      F000FFF8EF00FFE8CF00FFD8A000FFF0C000FFE8B000FFF0C000FFF0C000FFF0
      C000FFF8D000FFE0B0009F5F6F00E0C8D000EFBFA000FFBF5F00FFA72F00FFA7
      1F00CF8F4F0060676000000000000000000000000000000000000000007FC0C0
      C0FFC8C8C8FFCDCCCCFFCFCFCEFFD6D6D6FFDADAD9FFDCDBDBFFE1E0E0FFE4E3
      E3FFE0E0DFFFE3E2E2FFECECEBFFF0F0F0FFEBEBEAFFE7E6E6E30000002B0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2EDE2001D8D220018B8
      290018B829001D8D22004A8F4A00296F8C00035789000664280055C063002598
      2A0002521400035789000B6CA90086C2E400F9F2D7006762F3008681F500B6B3
      F800BDBBFA00FFFFFE00F4F6FB00F4F6FB00FBFBFC00FFFFFE00FFFBED009AC9
      DC0051BCF900389CDE0002629C00DEDFDF000000000000000000000000000000
      00004FA6450074B15B0073B15B0073B15B0073B15B0073B15B0073B15B0073B1
      5B0073B15B0073B15B0073B15B0073B15B0073B15B0072B25B0070B359006DB5
      580068B8550065BA540061BC52005DBF500057C24E0053C44B004FC74A004CC8
      490041B13B003B7E3600ADADAD00F1F1F1000000000000000000000000000000
      0000000000000000000000000000FFE8CF00FFFFFF00CF979F00FFE8C000FFFF
      FF00FFFFFF00FFF8EF00FFD8B000FFE0BF00FFE0AF00FFD8A000FFE0AF00FFFF
      CF00FFF8BF00CF9F8F009F6F8F00FFF0EF00EFC8AF00FFD08F00FFB75000D09F
      6000606760000000000000000000000000000000000000000000000000000000
      0040D0D0D0CBCBCBCAFFD0CFCFFFD5D5D4FFD8D8D7FFDADADAFFE2E1E1FFE2E1
      E1FFDDDCDCFFE4E3E3FFEFEFEFFFEBEBEAFFE7E7E7D40000001D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008BC38B000C9411004A8F
      4A00D4D5D10000000000000000001B6D9F00015C910006642800056E0A001338
      600013386000035789001271AC0086C2E400FCE5C700FEF6EA00FEF6EA00FFF3
      E200FFF3E200FFEFDB00FFEFDB00FDECD300FAE7D500F1E3CF00D9DAD9004CB7
      F40055B8F500389CDE0002629C00D9DAD9000000000000000000000000000000
      000053A04D0074B05B0073B15B0073B15B0073B15B0073B15B0073B15B0073B1
      5B0073B15B0073B15B0073B15B0073B15B0073B15B0072B25B0070B359006DB5
      580068B8550065BA540061BC52005DBF500057C24E0053C44B004FC74A004CC8
      490044BE410036893000A2A2A200ECECEC000000000000000000000000000000
      0000000000000000000000000000FFE8D000FFFFFF00FFFFFF00EFA7B000FFFF
      F000FFFFFF00FFF8F000FFFFD000FFE8BF00FFE0A000FFF0BF00FFFFDF00FFE0
      AF00E0AF8F00C08F7F00FFF8EF00FFF0EF00F0D0B000FFD89F00CF976F006067
      6000000000000000000000000000000000000000000000000000000000000000
      00000000000100000059D6D6D6DED4D3D3FFD4D4D3FFDBDADAFFE0E0DFFFDEDD
      DDFFDCDCDBFFECEBEBFFEAE9E9FFEAEAEAC20000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008BC38B00068B0900E2E3
      E3000000000000000000000000001B6D9F00015C910009485200094852000F3E
      680013386000035789001271AC0068BBEC00E7DCCA00FCE5C700F4E5D500E7DC
      CA00D4D5D100B9D1DD00A7C8D7007AC1E70068BBEC0055B8F5004CB7F4004EB5
      F0004EB5F0003092DB0002629C00D9DAD9000000000000000000000000000000
      0000A7B6A60072AE5A0073B15B0073B15B0073B15B0073B15B0073B15B0073B1
      5B0073B15B0073B15B0073B15B0073B15B0073B15B0072B25B0070B359006DB5
      580068B8550065BA540061BC52005DBF500057C24E0053C44B004FC74A004CC8
      490048C946003A9B340091919100E2E2E2000000000000000000000000000000
      0000000000000000000000000000FFE8D000FFFFFF00FFFFFF00FFFFFF00BF77
      8F00F0D8BF00FFF0C000FFFFD000FFFFD000FFFFD000FFF0CF00FFD8A000CF97
      9F00C0978F00EFE8EF00E0E8EF00E0E8E000F0D0B000D0AF8F00606760000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000600000073DBDBDBEDDADAD9FFDDDCDCFFDDDC
      DCFFE5E5E4FFE9E8E8FFEEEEEEAD000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094C894004A8F4A000000
      0000000000000000000000000000A7C8D700498BB300498BB300498BB300498B
      B300498BB300016096001271AC0045AAEA0042ACF1003CA4EA00379EE1003293
      D4002F8BCB001F81C6001273B4000968A6000C649800015C9100015C91000158
      9300015C91001B6D9F004283AB00000000000000000000000000000000000000
      0000DDDFDD0065BB550069B656006BB457006FB3590071B15A0073B25B0075B2
      5D0076B25C0076B25C0075B15C0074B15B0074B15B0072B25B0070B359006DB5
      580068B8550065BA540061BC52005DBF500057C24E0053C44B004FC74A004CC8
      490048CC47003B9D34008F8F8F00DEDEDE000000000000000000000000000000
      0000000000000000000000000000FFD8B000FFE0BF00FFD8BF00FFD8BF00F0D0
      B000DFAFAF00DF9F9F00C0977F00CF977F00DFAFA000F0B7BF00E0B7A000DFAF
      A000EFBFAF00E0BFAF00E0BFAF00E0BFAF00EFC8AF00AF9F9000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010EBEBEB8CE0E0E0F7E5E5
      E5FFE8E8E8FFEFEFEF9400000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECF5EC00CDE3CD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B6D9F0002629C001271AC000968A6000160960001609600015C
      910002629C00015C9100005D9B000C6498000C6498004E8FB7006E9FC000B9D1
      DD00D9E7F000F6F8FA00FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00E8EAE800DADEDA00CBD2CA00BBC6
      BB00ADC8AC0099B1980089AC870076A672005FA6580058AC50005BB4500057B0
      4C0058B24C005AB64E005EC252005DC5520058C64F0054C74C0050C94B004CC9
      490048CF48003AA03400BDBDBD00EAEAEA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001A0000007BEAEA
      EAD6F2F2F2800000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008CB9D1004283AB0089A3B200A9BCC700E4EBEE00F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFBFA00E9EAE900D0D6D000BACC
      BA0094AE920087B38500E3E4E300FBFBFB00424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      FFFFFF00000000000000000000000000FFFFFE00000000000000000000000000
      FFFFFC00000000000000000000000000FFFFF800000000000000000000000000
      FFFFF000000000000000000000000000FFFFE000000000000000000000000000
      FFFFC001000000000000000000000000FFFF8003000000000000000000000000
      FFFF0007000000000000000000000000FFFE000F000000000000000000000000
      FFFC001F000000000000000000000000FFF8003F000000000000000000000000
      FFF0007F000000000000000000000000FFE000FF000000000000000000000000
      FFC001FF000000000000000000000000FF8003FF000000000000000000000000
      FF8007FF000000000000000000000000FF000FFF000000000000000000000000
      FF001FFF000000000000000000000000FF003FFF000000000000000000000000
      FF007FFF000000000000000000000000FF80FC7F000000000000000000000000
      DF81FD7F000000000000000000000000CFC30D9F000000000000000000000000
      D7D765E0000000000000000000000000D9DB39FF000000000000000000000000
      DFEDBFFF0000000000000000000000002FEEBFFF000000000000000000000000
      8E6F3FFF000000000000000000000000FF4FFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FF000001FFFFFFFFFFFE0FFFFFFFFFFF
      FE000001FFFFC1FFFFFC0003FFFE000FFE000001FFFF807FFFFC000180000007
      FE000001FFFE003FFF80000100000007FE000001FFFE001FFF80000100000007
      FE000001FFFC000FFE00000180000007FE000001FFFC000FF800000180000007
      FE000001FFE0000FF000000180000001C6000001FFC0000FE000000180000000
      82000001FFC0000F800000018000000080000001FF00000F8000000180000000
      80000001FE00001FC0000001C000000080000001FC00001FE0000001C0000000
      C0000001F000001FF0000001C2000000E0000001F000001FF8000001C0000000
      F0000001E000003FFE000001C0801500F8000001E000007FFE000001E0000402
      FC000001E00000FFFE000001E0000001FE000001E00001FFFE000000E0000011
      FE000001E00003FFFE000000E0000011FE000001E00003FFFE000000E0000011
      FE000001E00003FFF8000000E0000001FE000001E00003FFF0000000E0000201
      FE000001E00007FFE0000000F0000000FE000001E0000FFFE0000000F0000000
      FE000001C0001FFFC0000000F0000000FE000003E0003FFF80000000F0000000
      FE000007F0007FFF86000000F0000000FE00000FFC00FFFF8E000000F0000000
      FE00001FFF01FFFF9E000001F0000000FE00003FFF83FFFF9FF80001FE000000
      FFFFFFFFFFE7FFFFFFF81FFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  object qrypedido: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select P.*, C.Nome_Nome_Fantasia from Pedido P'
      'inner join Cliente C on (P.Codigo_Cliente = C.Codigo)'
      '')
    Left = 808
    Top = 152
    object qrypedidoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrypedidoN_Pedido: TStringField
      FieldName = 'N_Pedido'
      Size = 13
    end
    object qrypedidoN_Pre_Venda: TStringField
      FieldName = 'N_Pre_Venda'
      Size = 10
    end
    object qrypedidoCOO: TStringField
      FieldName = 'COO'
      Size = 6
    end
    object qrypedidoCOO_Vin: TStringField
      FieldName = 'COO_Vin'
      Size = 6
    end
    object qrypedidoCCF: TStringField
      FieldName = 'CCF'
      Size = 6
    end
    object qrypedidoCodigo_Cliente: TIntegerField
      FieldName = 'Codigo_Cliente'
    end
    object qrypedidoCodigo_Empresa: TIntegerField
      FieldName = 'Codigo_Empresa'
    end
    object qrypedidoCodigo_Veiculo: TIntegerField
      FieldName = 'Codigo_Veiculo'
    end
    object qrypedidoCodigo_Funcionario: TIntegerField
      FieldName = 'Codigo_Funcionario'
    end
    object qrypedidoCodigo_Tabela_Preco: TIntegerField
      FieldName = 'Codigo_Tabela_Preco'
    end
    object qrypedidoData_Venda: TDateTimeField
      FieldName = 'Data_Venda'
    end
    object qrypedidoData_Previsao_Entrega: TDateTimeField
      FieldName = 'Data_Previsao_Entrega'
    end
    object qrypedidoHora_Entrega: TStringField
      FieldName = 'Hora_Entrega'
      Size = 10
    end
    object qrypedidoQtde_Itens: TIntegerField
      FieldName = 'Qtde_Itens'
    end
    object qrypedidoQtde_Servicos: TIntegerField
      FieldName = 'Qtde_Servicos'
    end
    object qrypedidoTotal_Produtos: TFloatField
      FieldName = 'Total_Produtos'
    end
    object qrypedidoTotal_Servicos: TFloatField
      FieldName = 'Total_Servicos'
    end
    object qrypedidoPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object qrypedidoDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object qrypedidoTipo_Desconto: TStringField
      FieldName = 'Tipo_Desconto'
      Size = 1
    end
    object qrypedidoAcrecimo: TFloatField
      FieldName = 'Acrecimo'
    end
    object qrypedidoTipo_Acrecimo: TStringField
      FieldName = 'Tipo_Acrecimo'
      Size = 1
    end
    object qrypedidoTotal_Pedido: TFloatField
      FieldName = 'Total_Pedido'
      DisplayFormat = '#0.0,0'
    end
    object qrypedidoTotal_Desconto: TFloatField
      FieldName = 'Total_Desconto'
    end
    object qrypedidoTotal_Acrecimo: TFloatField
      FieldName = 'Total_Acrecimo'
    end
    object qrypedidoTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object qrypedidoStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object qrypedidoValor_Recebido: TFloatField
      FieldName = 'Valor_Recebido'
    end
    object qrypedidoTroco: TFloatField
      FieldName = 'Troco'
    end
    object qrypedidoMesclada: TIntegerField
      FieldName = 'Mesclada'
    end
    object qrypedidoProblema_Reclamado: TStringField
      FieldName = 'Problema_Reclamado'
      Size = 200
    end
    object qrypedidoProblema_Constatado: TStringField
      FieldName = 'Problema_Constatado'
      Size = 200
    end
    object qrypedidoSolucao: TStringField
      FieldName = 'Solucao'
      Size = 200
    end
    object qrypedidoNome_Nome_Fantasia: TStringField
      FieldName = 'Nome_Nome_Fantasia'
      Size = 50
    end
  end
  object rs: TRSPrinter
    PageSize = pzLetter
    PageLength = 0
    FastPrinter = Epson_LX
    FastFont = [Compress]
    FastPort = 'USB'
    SaveConfToRegistry = False
    Zoom = zHeight
    Preview = ppYes
    Title = 'Pedido'
    Left = 600
    Top = 65528
  end
  object qryitens_pedido: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'select IP.*, P.Codigo_Venda, P.Descricao, UM.Sigla from Itens_Pe' +
        'dido IP'
      'inner join Produto P on (IP.Codigo_Produto = P.Codigo)'
      
        'inner join Unidade_Medida UM on (P.Codigo_Unidade_Medida = UM.Co' +
        'digo)')
    Left = 816
    Top = 368
    object qryitens_pedidoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryitens_pedidoCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryitens_pedidoQtde: TFloatField
      FieldName = 'Qtde'
      DisplayFormat = '#0.0,0'
    end
    object qryitens_pedidoValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      DisplayFormat = '#0.0,0'
    end
    object qryitens_pedidoDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '#0.0,0'
    end
    object qryitens_pedidoTipo_Desconto: TStringField
      FieldName = 'Tipo_Desconto'
      Size = 1
    end
    object qryitens_pedidoSub_Total: TFloatField
      FieldName = 'Sub_Total'
      DisplayFormat = '#0.0,0'
    end
    object qryitens_pedidoCodigo_Venda: TStringField
      FieldName = 'Codigo_Venda'
    end
    object qryitens_pedidoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryitens_pedidoSigla: TStringField
      FieldName = 'Sigla'
      Size = 5
    end
    object qryitens_pedidoQtde_Entregue: TFloatField
      FieldName = 'Qtde_Entregue'
      DisplayFormat = '#0.0,0'
    end
    object qryitens_pedidoQtde_Restante: TFloatField
      FieldName = 'Qtde_Restante'
      DisplayFormat = '#0.0,0'
    end
  end
  object ds_qry_itens_compra: TDataSource
    DataSet = qryitens_pedido
    Left = 848
    Top = 368
  end
  object ds_qry_compra: TDataSource
    DataSet = qrypedido
    Left = 848
    Top = 152
  end
end
