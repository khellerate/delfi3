program P;

uses
  Forms,
  UMain in 'UMain.pas' {FMain},
  UView in 'UView.pas' {FView},
  UKEdit in 'UKEdit.pas' {FKEdit},
  USEdit in 'USEdit.pas' {FSEdit},
  UEdit in 'UEdit.pas' {FEdit},
  UDM in 'UDM.pas' {DMM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMM, DMM);
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFView, FView);
  Application.CreateForm(TFKEdit, FKEdit);
  Application.CreateForm(TFSEdit, FSEdit);
  Application.CreateForm(TFEdit, FEdit);
  Application.Run;
end.
