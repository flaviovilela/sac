unit UChama_Grupo_Produto_Tributacao_COFINS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, ToolWin, ImgList, DB, UGeral,
  ADODB, UConsulta;

type
  TFrmChama_Grupo_Produto_Tributacao_COFINS = class(TForm)
    DBGrid1: TDBGrid;
    RGConsulta_Por: TRadioGroup;
    EdtConsulta: TEdit;
    RGOrdena_Por: TRadioGroup;
    ToolBar1: TToolBar;
    BBtnFiltrar: TToolButton;
    BBtnFechar: TToolButton;
    LblMarca: TLabel;
    qrychama_grupo: TADOQuery;
    ds_qry_consulta_padrao: TDataSource;
    qrychama_grupoCodigo: TAutoIncField;
    qrychama_grupoDescricao: TStringField;
    qrychama_grupoCodigo_Tratamento_COFINS: TIntegerField;
    qrychama_grupoData_Cadastro: TDateTimeField;
    qrychama_grupoDescricao_1: TStringField;
    procedure BBtnFiltrarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EdtConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmChama_Grupo_Produto_Tributacao_COFINS: TFrmChama_Grupo_Produto_Tributacao_COFINS;
  Util: TUtil;
  Consulta: TConsulta;
implementation

uses UDM, UCadastro_Produto, UCadastro_Grupo_Produto_Tributacao_COFINS,
  UCadastro_Grupo_Produto;

{$R *.dfm}

procedure TFrmChama_Grupo_Produto_Tributacao_COFINS.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmChama_Grupo_Produto_Tributacao_COFINS.BBtnFiltrarClick(Sender: TObject);
begin
  Consulta.Chama_Grupo_Produto_Tributacao_COFINS;
end;

procedure TFrmChama_Grupo_Produto_Tributacao_COFINS.DBGrid1DblClick(Sender: TObject);
begin
  if (FrmCadastro_Grupo_Produto_Tributacao_COFINS <> Nil) and (FrmCadastro_Grupo_Produto_Tributacao_COFINS.ativo = true) then
  begin
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.EdtCodigo.Text:= qrychama_grupoCodigo.AsString;
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.EdtDescricao.Text:= qrychama_grupoDescricao.AsString;
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.EdtCodigo_Tratamento_COFINS.Text:= qrychama_grupoCodigo_Tratamento_COFINS.AsString;
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.EdtTratamento_COFINS.Text:= qrychama_grupoDescricao_1.AsString;
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.MEdtData_Cadastro.Text:= qrychama_grupoData_Cadastro.AsString;
    FrmChama_Grupo_Produto_Tributacao_COFINS.Close;
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.BBtnSalvar.Enabled:= true;
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.BBtnExcluir.Enabled:= true;
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.BBtnPesquisar.Enabled:= true;
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.BBtnCancelar.Enabled:= true;
    Util.Habilita_Campos(FrmCadastro_Grupo_Produto_Tributacao_COFINS);
    FrmCadastro_Grupo_Produto_Tributacao_COFINS.achei:= true;
  end
  else if (FrmCadastro_Produto <> NIl) and (FrmCadastro_Produto.ativo = true) then
  begin
    FrmCadastro_Produto.EdtCodigo_Grupo_Tributacao_COFINS.Text:= qrychama_grupoCodigo.AsString;
    FrmCadastro_Produto.EdtGrupo_Tributacao_COFINS.Text:= qrychama_grupoDescricao.AsString;
    FrmChama_Grupo_Produto_Tributacao_COFINS.Close;
  end
  else if (FrmCadastro_Grupo_Produto <> NIl) and (FrmCadastro_Grupo_Produto.ativo = true) then
  begin
    FrmCadastro_Grupo_Produto.EdtCodigo_Grupo_COFINS.Text:= qrychama_grupoCodigo.AsString;
    FrmCadastro_Grupo_Produto.EdtGrupo_COFINS.Text:= qrychama_grupoDescricao.AsString;
    FrmChama_Grupo_Produto_Tributacao_COFINS.Close;
  end;
end;

procedure TFrmChama_Grupo_Produto_Tributacao_COFINS.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= cor_fonte_dbgrid; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:= cor_linha_dbgrid; //aqui � definida a cor do fundo
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State)
end;

procedure TFrmChama_Grupo_Produto_Tributacao_COFINS.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
    begin
      DBGrid1DblClick(self);
    end;
end;

procedure TFrmChama_Grupo_Produto_Tributacao_COFINS.EdtConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    Consulta.Chama_Grupo_Produto_Tributacao_COFINS;
    DBGrid1.SetFocus;
  end;
end;

procedure TFrmChama_Grupo_Produto_Tributacao_COFINS.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FrmChama_Grupo_Produto_Tributacao_COFINS.Release;
end;

procedure TFrmChama_Grupo_Produto_Tributacao_COFINS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

end.
