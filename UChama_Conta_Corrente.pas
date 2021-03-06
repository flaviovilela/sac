unit UChama_Conta_Corrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, ToolWin, ImgList, DB, UGeral,
  ADODB, UConsulta;

type
  TFrmChama_Conta_Corrente = class(TForm)
    DBGrid1: TDBGrid;
    RGConsulta_Por: TRadioGroup;
    EdtConsulta: TEdit;
    RGOrdena_Por: TRadioGroup;
    ToolBar1: TToolBar;
    BBtnFiltrar: TToolButton;
    BBtnFechar: TToolButton;
    LblMarca: TLabel;
    qrychama_conta: TADOQuery;
    ds_qry_consulta_padrao: TDataSource;
    qrychama_contaCodigo: TAutoIncField;
    qrychama_contaData_Abertura: TDateTimeField;
    qrychama_contaData_Cadastro: TDateTimeField;
    qrychama_contaConta: TStringField;
    qrychama_contaAgencia: TStringField;
    qrychama_contaCodigo_Banco: TIntegerField;
    qrychama_contaNome_Agencia: TStringField;
    qrychama_contaNome_Correntista: TStringField;
    qrychama_contaSaldo_Inicial: TFloatField;
    qrychama_contaLimite: TFloatField;
    qrychama_contaSaldo_Atual: TFloatField;
    qrychama_contaNome: TStringField;
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
  FrmChama_Conta_Corrente: TFrmChama_Conta_Corrente;
  Util: TUtil;
  Consulta: TConsulta;
implementation

uses UDM, UCadastro_Conta_Corrente, UBaixar_Titulo, ULancamento_Banco,
  UConsulta_Saldo_Bancario, Modelo.Entidade.TContaCorrente,
  UConsulta_Lancamento_Banco, ULancamento_Caixa;

{$R *.dfm}

procedure TFrmChama_Conta_Corrente.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmChama_Conta_Corrente.BBtnFiltrarClick(Sender: TObject);
begin
  Consulta.Chama_Conta_Corrente(EdtConsulta.Text);
end;

procedure TFrmChama_Conta_Corrente.DBGrid1DblClick(Sender: TObject);
begin
  if (FrmCadastro_Conta_Corrente <> Nil) and (FrmCadastro_Conta_Corrente.ativo = true) then
  begin
    FrmCadastro_Conta_Corrente.EdtCodigo.Text:= qrychama_contaCodigo.AsString;
    FrmCadastro_Conta_Corrente.MEdtData_Cadastro.Text:= qrychama_contaData_Cadastro.AsString;
    if (qrychama_contaData_Abertura.AsString = '30/12/1899') then
      FrmCadastro_Conta_Corrente.MEdtData_Abertura.Text:= ''
    else
      FrmCadastro_Conta_Corrente.MEdtData_Abertura.Text:= qrychama_contaData_Abertura.AsString;
    FrmCadastro_Conta_Corrente.EdtConta_Corrente.Text:= qrychama_contaConta.AsString;
    FrmCadastro_Conta_Corrente.EdtAgencia.Text:= qrychama_contaAgencia.AsString;
    FrmCadastro_Conta_Corrente.EdtCodigo_Banco.Text:= qrychama_contaCodigo_Banco.AsString;
    FrmCadastro_Conta_Corrente.EdtBanco.Text:= qrychama_contaNome.AsString;
    FrmCadastro_Conta_Corrente.EdtNome_Agencia.Text:= qrychama_contaNome_Agencia.AsString;
    FrmCadastro_Conta_Corrente.EdtNome_Correntista.Text:= qrychama_contaNome_Correntista.AsString;
    FrmCadastro_Conta_Corrente.EdtSaldo_Inicial.Text:= FormatFloat('#0.0,0', qrychama_contaSaldo_Inicial.AsFloat);
    FrmCadastro_Conta_Corrente.EdtSaldo_Inicial.Text:= StringReplace(FrmCadastro_Conta_Corrente.EdtSaldo_Inicial.Text, ThousandSeparator, '', [rfReplaceAll]);

    FrmCadastro_Conta_Corrente.EdtLimite.Text:= FormatFloat('#0.0,0', qrychama_contaLimite.AsFloat);
    FrmCadastro_Conta_Corrente.EdtLimite.Text:= StringReplace(FrmCadastro_Conta_Corrente.EdtLimite.Text, ThousandSeparator, '', [rfReplaceAll]);

    FrmCadastro_Conta_Corrente.EdtSaldo_Atual.Text:= FormatFloat('#0.0,0', qrychama_contaSaldo_Atual.AsFloat);
    FrmCadastro_Conta_Corrente.EdtSaldo_Atual.Text:= StringReplace(FrmCadastro_Conta_Corrente.EdtSaldo_Atual.Text, ThousandSeparator, '', [rfReplaceAll]);
    FrmChama_Conta_Corrente.Close;
    FrmCadastro_Conta_Corrente.BBtnSalvar.Enabled:= true;
    FrmCadastro_Conta_Corrente.BBtnExcluir.Enabled:= true;
    FrmCadastro_Conta_Corrente.BBtnPesquisar.Enabled:= true;
    FrmCadastro_Conta_Corrente.BBtnCancelar.Enabled:= true;
    FrmCadastro_Conta_Corrente.BBtnNovo.Enabled:=  false;
    Util.Habilita_Campos(FrmCadastro_Conta_Corrente);
    FrmCadastro_Conta_Corrente.achei:= true;
  end
  else if (FrmBaixar_Titulo <> nil) then
  begin
    FrmBaixar_Titulo.EdtCodigo_Conta.Text:= qrychama_contaCodigo.AsString;
    FrmBaixar_Titulo.EdtConta.Text:= qrychama_contaConta.AsString;

    FrmBaixar_Titulo.ContaCorrente:= TContaCorrenteEntidade.Create;

    FrmBaixar_Titulo.ContaCorrente.Codigo:= qrychama_contaCodigo.AsInteger;
    FrmBaixar_Titulo.ContaCorrente.Saldo_Atual:= qrychama_contaSaldo_Atual.AsFloat;
    FrmBaixar_Titulo.ContaCorrente.NovoSaldo:= qrychama_contaSaldo_Atual.AsFloat;

    FrmChama_Conta_Corrente.Close;
  end
  else if (FrmLancamento_Banco <> NIL) and (FrmLancamento_Banco.ativo = true) and (FrmLancamento_Banco.conta = 0) then
  begin
    FrmLancamento_Banco.EdtCodigo_Conta.Text:= qrychama_contaCodigo.AsString;
    FrmLancamento_Banco.EdtConta.Text:= qrychama_contaConta.AsString;

    FrmLancamento_Banco.ContaCorrente:= TContaCorrenteEntidade.Create;

    FrmLancamento_Banco.ContaCorrente.Codigo:= qrychama_contaCodigo.AsInteger;
    FrmLancamento_Banco.ContaCorrente.Saldo_Atual:= qrychama_contaSaldo_Atual.AsFloat;
    FrmLancamento_Banco.ContaCorrente.NovoSaldo:= qrychama_contaSaldo_Atual.AsFloat;

    FrmChama_Conta_Corrente.Close;
  end
  else if (FrmLancamento_Banco <> NIL) and (FrmLancamento_Banco.ativo = true) and (FrmLancamento_Banco.conta = 1) then
  begin
    FrmLancamento_Banco.EdtCodigo_Conta_Destino.Text:= qrychama_contaCodigo.AsString;
    FrmLancamento_Banco.EdtConta_Destino.Text:= qrychama_contaConta.AsString;
    FrmChama_Conta_Corrente.Close;
  end
  else if (FrmConsulta_Saldo_Bancario <> nil) and (FrmConsulta_Saldo_Bancario.ativo = true) then
  begin
    FrmConsulta_Saldo_Bancario.EdtCodigo_Conta.Text:= qrychama_contaCodigo.AsString;
    FrmConsulta_Saldo_Bancario.EdtConsulta.Text:= qrychama_contaConta.AsString;
    FrmChama_Conta_Corrente.Close;
  end
  else if (FrmConsulta_Lancamento_Banco <> nil) and (FrmConsulta_Lancamento_Banco.ativo = true) then
  begin
    FrmConsulta_Lancamento_Banco.EdtCodigo_Conta.Text:= qrychama_contaCodigo.AsString;
    FrmConsulta_Lancamento_Banco.EdtConta.Text:= qrychama_contaConta.AsString;
    FrmChama_Conta_Corrente.Close;
  end
  else if (FrmLancamento_Caixa <> NIL) and (FrmLancamento_Caixa.ativo = true) then
  begin
    FrmLancamento_Caixa.EdtCodigo_Conta.Text:= qrychama_contaCodigo.AsString;
    FrmLancamento_Caixa.EdtConta.Text:= qrychama_contaConta.AsString;

    FrmLancamento_Caixa.ContaCorrente:= TContaCorrenteEntidade.Create;

    FrmLancamento_Caixa.ContaCorrente.Codigo:= qrychama_contaCodigo.AsInteger;
    FrmLancamento_Caixa.ContaCorrente.Saldo_Atual:= qrychama_contaSaldo_Atual.AsFloat;
    FrmLancamento_Caixa.ContaCorrente.NovoSaldo:= qrychama_contaSaldo_Atual.AsFloat;

    FrmChama_Conta_Corrente.Close;
  end;
end;

procedure TFrmChama_Conta_Corrente.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmChama_Conta_Corrente.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
    begin
      DBGrid1DblClick(self);
    end;

end;

procedure TFrmChama_Conta_Corrente.EdtConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    Consulta.Chama_Conta_Corrente(EdtConsulta.Text);
    DBGrid1.SetFocus;
  end;
end;

procedure TFrmChama_Conta_Corrente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FrmChama_Conta_Corrente.Release;
end;

procedure TFrmChama_Conta_Corrente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

end.
