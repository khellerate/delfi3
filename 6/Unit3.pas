unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm3 = class(TForm)
    QuickRep1: TQuickRep;
    qrbndTitleBand1: TQRBand;
    qrbndSummaryBand1: TQRBand;
    qrbndPageFooterBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    QRLabel_1: TQRLabel;
    QRLabel_2: TQRLabel;
    QRLabel_3: TQRLabel;
    qrdbtxtNAME_F: TQRDBText;
    qrdbtxtADRESS: TQRDBText;
    qrsbdtl1: TQRSubDetail;
    qrbndGroupFooterBand1: TQRBand;
    qrbndGroupHeaderBand1: TQRBand;
    QRLabel_4: TQRLabel;
    QRLabel_5: TQRLabel;
    QRLabel_6: TQRLabel;
    qrdbtxtN_nakladnoi: TQRDBText;
    qrdbtxtData_postavki: TQRDBText;
    qrdbtxtSumma: TQRDBText;
    QRLabel_7: TQRLabel;
    qrxpr1: TQRExpr;
    QRLabel_11: TQRLabel;
    qrxpr2: TQRExpr;
    QRLabel_8: TQRLabel;
    qrsysdt1: TQRSysData;
    qrsysdt2: TQRSysData;
    QRLabel_9: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit2;

{$R *.dfm}

end.
