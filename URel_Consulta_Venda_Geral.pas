unit URel_Consulta_Venda_Geral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, grimgctrl, ADODB,
  QRPDFFilt;

type
  TFrmRel_Consulta_Venda_Geral = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabeldata: TQRLabel;
    QRLabelHora: TQRLabel;
    QRHRule2: TQRHRule;
    LblEmpresa_Cabecalho: TQRLabel;
    QRBand4: TQRBand;
    LblEmpresa_Rodape: TQRLabel;
    LblTelefone_Rodape: TQRLabel;
    QRLabel25: TQRLabel;
    QRExpr2: TQRExpr;
    LblData: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    QRDBValor: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    LblEmpresa: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRel_Consulta_Venda_Geral: TFrmRel_Consulta_Venda_Geral;

implementation

uses UGeral, UDeclaracao, UConsulta_Venda;

{$R *.dfm}

procedure TFrmRel_Consulta_Venda_Geral.FormCreate(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TFrmRel_Consulta_Venda_Geral.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {if FrmConsulta_Venda.DBGrid1.SelectedRows.CurrentRowSelected then
    PrintBand:= true
  else
    PrintBand:= false; }
end;

procedure TFrmRel_Consulta_Venda_Geral.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabeldata.Caption:= datetostr(now);
  QRLabelHora.Caption:= timetostr(time);
  LblEmpresa.Caption:= nome_fantasia;

  LblData.Caption:= 'De ' + FrmConsulta_Venda.MEdtData_Inicial.Text + ' a ' + FrmConsulta_Venda.MEdtData_Final.Text;

  LblTelefone_Rodape.Caption:= telefone_relatorio;
  LblEmpresa_Rodape.Caption:= empresa_relatorio_rodape;
  LblEmpresa_Cabecalho.Caption:= empresa_relatorio_cabecalho;

end;
end.
