unit UChama_Banco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, ToolWin, ImgList, DB, UGeral,
  ADODB, UConsulta;

type
  TFrmChama_Banco = class(TForm)
    DBGrid1: TDBGrid;
    RGConsulta_Por: TRadioGroup;
    EdtConsulta: TEdit;
    RGOrdena_Por: TRadioGroup;
    ToolBar1: TToolBar;
    BBtnFiltrar: TToolButton;
    BBtnFechar: TToolButton;
    LblMarca: TLabel;
    qrychama_banco: TADOQuery;
    ds_qry_consulta_padrao: TDataSource;
    qrychama_bancoCodigo: TAutoIncField;
    qrychama_bancoNumero: TStringField;
    qrychama_bancoNome: TStringField;
    qrychama_bancoTelefone: TStringField;
    qrychama_bancoContato: TStringField;
    qrychama_bancoData_Cadastro: TDateTimeField;
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
  FrmChama_Banco: TFrmChama_Banco;
  Util: TUtil;
  Consulta: TConsulta;
implementation

uses UDM, UCadastro_Banco, UCadastro_Conta_Corrente, UCadastro_Cheque;

{$R *.dfm}

procedure TFrmChama_Banco.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmChama_Banco.BBtnFiltrarClick(Sender: TObject);
begin
  Consulta.Chama_Banco(EdtConsulta.Text);
end;

procedure TFrmChama_Banco.DBGrid1DblClick(Sender: TObject);
begin
  if (FrmCadastro_Banco <> Nil) and (FrmCadastro_Banco.ativo = true) then
  begin
    FrmCadastro_Banco.EdtCodigo.Text:= qrychama_bancoCodigo.AsString;
    FrmCadastro_Banco.EdtNumero.Text:= qrychama_bancoNumero.AsString;
    FrmCadastro_Banco.EdtNome.Text:= qrychama_bancoNome.AsString;
    FrmCadastro_Banco.EdtContato.Text:= qrychama_bancoContato.AsString;
    FrmCadastro_Banco.MEdtTelefone.Text:= qrychama_bancoTelefone.AsString;
    FrmCadastro_Banco.MEdtData_Cadastro.Text:= qrychama_bancoData_Cadastro.AsString;
    FrmChama_Banco.Close;
    FrmCadastro_Banco.BBtnSalvar.Enabled:= true;
    FrmCadastro_Banco.BBtnExcluir.Enabled:= true;
    FrmCadastro_Banco.BBtnPesquisar.Enabled:= true;
    FrmCadastro_Banco.BBtnCancelar.Enabled:= true;
    FrmCadastro_Banco.BBtnNovo.Enabled:= false;
    Util.Habilita_Campos(FrmCadastro_Banco);
    FrmCadastro_Banco.achei:= true;
  end
  else if (FrmCadastro_Conta_Corrente <> Nil) and (FrmCadastro_Conta_Corrente.ativo = true) then
  begin
    FrmCadastro_Conta_Corrente.EdtCodigo_Banco.Text:= qrychama_bancoCodigo.AsString;
    FrmCadastro_Conta_Corrente.EdtBanco.Text:= qrychama_bancoNome.AsString;
    FrmChama_Banco.Close;
  end
  else if (FrmCadastro_Cheque <> NIl) and (FrmCadastro_Cheque.ativo = true) then
  begin
    FrmCadastro_Cheque.EdtCodigo_Banco.Text:= qrychama_bancoCodigo.AsString;
    FrmCadastro_Cheque.EdtBanco.Text:= qrychama_bancoNome.AsString;
    FrmChama_Banco.Close;
  end;
end;

procedure TFrmChama_Banco.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFrmChama_Banco.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
    begin
      DBGrid1DblClick(self);
    end;
end;

procedure TFrmChama_Banco.EdtConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    Consulta.Chama_Banco(EdtConsulta.Text);
    DBGrid1.SetFocus;
  end;
end;

procedure TFrmChama_Banco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FrmChama_Banco.Release;
end;

procedure TFrmChama_Banco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

end.
