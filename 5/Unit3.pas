unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm3 = class(TForm)
    QuickRep1: TQuickRep;
    qrbndDetailBand1: TQRBand;
    qrbndPageFooterBand1: TQRBand;
    qrbndSummaryBand1: TQRBand;
    qrbndTitleBand1: TQRBand;
    qrbndColumnHeaderBand1: TQRBand;
    QRLabel_2: TQRLabel;
    QRLabel_3: TQRLabel;
    QRLabel_4: TQRLabel;
    qrdbtxtNAME_F: TQRDBText;
    qrdbtxtkv: TQRDBText;
    qrdbtxtnl: TQRDBText;
    qrxpr1: TQRExpr;
    qrxpr2: TQRExpr;
    qrsysdt1: TQRSysData;
    qrsysdt2: TQRSysData;
    QRLabel_1: TQRLabel;
    QRLabel_5: TQRLabel;
    QRLabel_6: TQRLabel;
    QRLabel_7: TQRLabel;
    QRLabel_8: TQRLabel;
    QRLabel_9: TQRLabel;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    qrshp3: TQRShape;
    qrshp4: TQRShape;
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
