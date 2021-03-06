object FrmConsulta_Conta_Fixa: TFrmConsulta_Conta_Fixa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Contas Fixas'
  ClientHeight = 536
  ClientWidth = 952
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 113
    Top = 502
    Width = 61
    Height = 13
    Caption = 'Valor Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 361
    Top = 21
    Width = 19
    Height = 13
    Caption = 'P.F.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 361
    Top = 68
    Width = 55
    Height = 13
    Caption = 'Dia Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 433
    Top = 68
    Width = 47
    Height = 13
    Caption = 'Dia Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 113
    Top = 110
    Width = 838
    Height = 386
    BorderStyle = bsNone
    DataSource = ds_qry_consulta_padrao
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo_Plano'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dia_Vencimento'
        Title.Caption = 'Dia'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Cadastro'
        Title.Caption = 'Data Cadastro'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tipo'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Plano'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observacao'
        Visible = True
      end>
  end
  object RGConsulta_Por: TRadioGroup
    Left = 113
    Top = 0
    Width = 122
    Height = 107
    Caption = 'Consulta por:'
    ItemIndex = 0
    Items.Strings = (
      'Tudo'
      'Dia'
      'Descri'#231#227'o'
      'Plano Financeiro')
    TabOrder = 3
  end
  object EdtConsulta: TEdit
    Left = 417
    Top = 38
    Width = 269
    Height = 17
    BevelEdges = [beTop, beRight, beBottom]
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnKeyDown = EdtConsultaKeyDown
  end
  object RGOrdena_Por: TRadioGroup
    Left = 240
    Top = 0
    Width = 114
    Height = 54
    Caption = 'Ordenar Pesquisa:'
    ItemIndex = 0
    Items.Strings = (
      'Descri'#231#227'o'
      'Dia')
    TabOrder = 4
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 97
    Height = 536
    Align = alLeft
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 93
    Caption = 'ToolBar1'
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
    HotTrackColor = clMenu
    Images = DM.ImgImagens_Consulta
    List = True
    ParentFont = False
    ShowCaptions = True
    TabOrder = 5
    ExplicitWidth = 111
    ExplicitHeight = 535
    object BBtnFiltrar: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = 'Clique para pesquisar'
      Caption = '&Pesquisar'
      ImageIndex = 1
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnFiltrarClick
    end
    object BBtnLimpar: TToolButton
      Left = 0
      Top = 38
      Cursor = crHandPoint
      Hint = 'Clique para limpar a pesquisa realizada e iniciar outra'
      Caption = 'Li&mpar'
      Enabled = False
      ImageIndex = 2
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnLimparClick
    end
    object BBtnImprimir: TToolButton
      Left = 0
      Top = 76
      Cursor = crHandPoint
      Hint = 'Clique para imprimir a pesquisa realizada'
      Caption = 'Imp&rimir'
      Enabled = False
      ImageIndex = 3
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnImprimirClick
    end
    object BBtnFechar: TToolButton
      Left = 0
      Top = 114
      Cursor = crHandPoint
      Hint = 'Clique para fechar a janela'
      Caption = '&Fechar'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = BBtnFecharClick
    end
  end
  object EdtValor_Total: TEdit
    Left = 113
    Top = 518
    Width = 117
    Height = 17
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Text = '0,00'
  end
  object EdtCodigo_Plano: TEdit
    Left = 361
    Top = 38
    Width = 57
    Height = 17
    Hint = 'Pressione F3 para consultar'
    BevelEdges = [beLeft, beTop, beBottom]
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clCream
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnKeyDown = EdtCodigo_PlanoKeyDown
    OnKeyPress = EdtCodigo_PlanoKeyPress
  end
  object EdtDia_Ini: TEdit
    Left = 361
    Top = 87
    Width = 51
    Height = 17
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    OnKeyDown = EdtConsultaKeyDown
  end
  object EdtDia_Fim: TEdit
    Left = 433
    Top = 87
    Width = 51
    Height = 17
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    OnKeyDown = EdtConsultaKeyDown
  end
  object RGTipo: TRadioGroup
    Left = 240
    Top = 54
    Width = 114
    Height = 53
    Caption = 'Tipo Conta:'
    ItemIndex = 0
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
    TabOrder = 9
  end
  object qryconsulta_conta: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select CF.*, PF.Plano, (select sum(CF.Valor) as Valor from Conta' +
        '_Fixa CF) from Conta_Fixa CF'
      'left join Plano_Financeiro PF on (CF.Codigo_Plano = PF.Codigo)')
    Left = 469
    Top = 272
    object qryconsulta_contaCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryconsulta_contaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryconsulta_contaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryconsulta_contaCodigo_Plano: TIntegerField
      FieldName = 'Codigo_Plano'
    end
    object qryconsulta_contaValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#0.0,0'
    end
    object qryconsulta_contaDia_Vencimento: TIntegerField
      FieldName = 'Dia_Vencimento'
    end
    object qryconsulta_contaTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object qryconsulta_contaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 200
    end
    object qryconsulta_contaPlano: TStringField
      FieldName = 'Plano'
      Size = 100
    end
    object qryconsulta_contaCOLUMN1: TFloatField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object ds_qry_consulta_padrao: TDataSource
    DataSet = qryconsulta_conta
    Left = 501
    Top = 272
  end
end
