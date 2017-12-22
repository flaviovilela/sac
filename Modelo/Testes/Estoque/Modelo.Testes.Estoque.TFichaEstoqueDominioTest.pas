unit Modelo.Testes.Estoque.TFichaEstoqueDominioTest;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, Modelo.Entidade.Estoque.TFichaEstoqueLista,
  Modelo.Dominio.Estoque.TFichaEstoqueDominio, Modelo.Entidade.Estoque.TFichaEstoque,
  System.SysUtils, Modelo.Dominio.Estoque.IFichaEstoqueDominio, ADODB,
  Modelo.Entidade.NFE.TNotaFiscalItem, System.Generics.Collections;

type
  // Test methods for class TFichaEstoqueDominio

  TestTFichaEstoqueDominio = class(TTestCase)
  strict private
    FFichaEstoqueDominio: TFichaEstoqueDominio;
    FListaItem  : TObjectList<TNotaFiscalItem>;
    procedure InicializarCamposFicha1(FichaEstoque : TFichaEstoque);
    procedure InicializarCamposFicha2(FichaEstoque : TFichaEstoque);
    procedure InicializarCamposFicha3(FichaEstoque: TFichaEstoque);
    procedure InicializarCamposFicha4(FichaEstoque: TFichaEstoque);


  public
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestsalvarFichaEstoque;
    procedure TestCalcularCustos;

  public
    procedure AfterConstruction; override;
  end;

implementation

procedure TestTFichaEstoqueDominio.AfterConstruction;
begin
  inherited;
end;


procedure TestTFichaEstoqueDominio.SetUp;
begin
  FFichaEstoqueDominio := TFichaEstoqueDominio.Create;
  FListaItem  := TObjectList<TNotaFiscalItem>.Create;
end;

procedure TestTFichaEstoqueDominio.TearDown;
begin
  FFichaEstoqueDominio.Free;
  FFichaEstoqueDominio := nil;
  FListaItem.Free;
  FListaItem := nil;
end;

procedure TestTFichaEstoqueDominio.TestsalvarFichaEstoque;
var
  ReturnValue: Integer;
  FichaEstoque : TFichaEstoque;
begin

  FichaEstoque := TFichaEstoque.Create;
  InicializarCamposFicha1(FichaEstoque);
  ReturnValue := FFichaEstoqueDominio.salvarFichaEstoque(FichaEstoque);
  CheckTrue(ReturnValue > 0,'Erro: N�o foi poss�vel salvar a ficha de estoque.');
  FreeAndNil(FichaEstoque);

  FichaEstoque := TFichaEstoque.Create;
  InicializarCamposFicha2(FichaEstoque);
  ReturnValue := FFichaEstoqueDominio.salvarFichaEstoque(FichaEstoque);
  CheckTrue(ReturnValue > 0,'Erro: N�o foi poss�vel salvar a ficha de estoque.');
  FreeAndNil(FichaEstoque);

  FichaEstoque := TFichaEstoque.Create;
  InicializarCamposFicha3(FichaEstoque);
  ReturnValue := FFichaEstoqueDominio.salvarFichaEstoque(FichaEstoque);
  CheckTrue(ReturnValue > 0,'Erro: N�o foi poss�vel salvar a ficha de estoque.');
  FreeAndNil(FichaEstoque);

  FichaEstoque := TFichaEstoque.Create;
  InicializarCamposFicha4(FichaEstoque);
  ReturnValue := FFichaEstoqueDominio.salvarFichaEstoque(FichaEstoque);
  CheckTrue(ReturnValue > 0,'Erro: N�o foi poss�vel salvar a ficha de estoque.');
  FreeAndNil(FichaEstoque);
end;

procedure TestTFichaEstoqueDominio.TestCalcularCustos;
var
  FichaEstoque : TFichaEstoque;
  I: Integer;
begin

end;

procedure TestTFichaEstoqueDominio.InicializarCamposFicha1(FichaEstoque : TFichaEstoque);
begin
  FichaEstoque.Codigo := 0;
  FichaEstoque.DataLancamento := StrToDateTime('19/12/2014 09:00:00');
  FichaEstoque.DataMovimentacao := StrToDateTime('19/12/2014 09:00:00');
  FichaEstoque.TipoFichaEstoque :=  ENTRADA;
  FichaEstoque.TipoDocumento := NOTA_FISCAL_ENTRADA;
  FichaEstoque.NumDocumento := '223';
  FichaEstoque.ProdutoCodigo := 1;
  FichaEstoque.Quantidade := 20;
  FichaEstoque.ValorUnitario := 10;
  FichaEstoque.ValorUnitarioTotal := FichaEstoque.Quantidade * FichaEstoque.ValorUnitario;
  FichaEstoque.PrecoVendaVista := 30.00;
  FichaEstoque.PrecoVendaPrazo := 31.00;
  FichaEstoque.Saldo := FichaEstoque.Quantidade * FichaEstoque.CustoMedio;
end;


procedure TestTFichaEstoqueDominio.InicializarCamposFicha2(FichaEstoque: TFichaEstoque);
begin
  FichaEstoque.Codigo := 0;
  FichaEstoque.DataLancamento := StrToDateTime('19/12/2014 10:00:00');
  FichaEstoque.DataMovimentacao := StrToDateTime('19/12/2014 10:00:00');
  FichaEstoque.TipoFichaEstoque :=  ENTRADA;
  FichaEstoque.TipoDocumento := NOTA_FISCAL_ENTRADA;
  FichaEstoque.NumDocumento := '225';
  FichaEstoque.ProdutoCodigo := 1;
  FichaEstoque.Quantidade := 10;
  FichaEstoque.ValorUnitario := 12;
  FichaEstoque.ValorUnitarioTotal := FichaEstoque.Quantidade * FichaEstoque.ValorUnitario;
  FichaEstoque.PrecoVendaVista := 30.00;
  FichaEstoque.PrecoVendaPrazo := 31.00;
end;

procedure TestTFichaEstoqueDominio.InicializarCamposFicha3(FichaEstoque: TFichaEstoque);
begin
  FichaEstoque.Codigo := 0;
  FichaEstoque.DataLancamento := StrToDateTime('18/12/2014 08:00:00');
  FichaEstoque.DataMovimentacao := StrToDateTime('18/12/2014 08:00:00');
  FichaEstoque.TipoFichaEstoque :=  ENTRADA;
  FichaEstoque.TipoDocumento := NOTA_FISCAL_ENTRADA;
  FichaEstoque.NumDocumento := '226';
  FichaEstoque.ProdutoCodigo := 1;
  FichaEstoque.Quantidade := 30;
  FichaEstoque.ValorUnitario := 11;
  FichaEstoque.ValorUnitarioTotal := FichaEstoque.Quantidade * FichaEstoque.ValorUnitario;
  FichaEstoque.PrecoVendaVista := 30.00;
  FichaEstoque.PrecoVendaPrazo := 31.00;
end;

procedure TestTFichaEstoqueDominio.InicializarCamposFicha4(FichaEstoque: TFichaEstoque);
begin
  FichaEstoque.Codigo := 0;
  FichaEstoque.DataLancamento := StrToDateTime('19/12/2014 15:00:00');
  FichaEstoque.DataMovimentacao := StrToDateTime('19/12/2014 15:00:00');
  FichaEstoque.TipoFichaEstoque :=  SAIDA;
  FichaEstoque.TipoDocumento := NOTA_FISCAL_SAIDA;
  FichaEstoque.NumDocumento := '228';
  FichaEstoque.ProdutoCodigo := 1;
  FichaEstoque.Quantidade := 15;
  FichaEstoque.ValorUnitario := 10.83;
  FichaEstoque.ValorUnitarioTotal := FichaEstoque.Quantidade * FichaEstoque.ValorUnitario;
  FichaEstoque.PrecoVendaVista := 30.00;
  FichaEstoque.PrecoVendaPrazo := 31.00;
end;

initialization
  RegisterTest(TestTFichaEstoqueDominio.Suite);
end.
