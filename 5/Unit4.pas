unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm4 = class(TForm)
    QuickRep1: TQuickRep;
    qrbndDetailBand1: TQRBand;
    qrbndTitleBand1: TQRBand;
    qrbndSummaryBand1: TQRBand;
    qrbndPageFooterBand1: TQRBand;
    qrbndColumnHeaderBand1: TQRBand;
    QRLabel_1: TQRLabel;
    qrdbtxtNAME_F: TQRDBText;
    QRLabel_2: TQRLabel;
    QRLabel_3: TQRLabel;
    qrdbtxtDATA: TQRDBText;
    qrdbtxtPLATA: TQRDBText;
    qrxpr1: TQRExpr;
    QRLabel_4: TQRLabel;
    qrsysdt1: TQRSysData;
    QRLabel_5: TQRLabel;
    qrsysdt2: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit2;

{$R *.dfm}

end.
