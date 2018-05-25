unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.ExtCtrls, Jpeg;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ODAbrirIamgem: TOpenPictureDialog;
    SDSalvarImagem: TSaveDialog;
    Button3: TButton;
    Shape1: TShape;
    ImgFoto: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure AbrirImagem;
    procedure SalvaImagem;
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}
{
  Declarar a USES Jpeg para trabalhar com estae formato
  Propriedade Proportional do TImage setada como True apra que a imagem se ajuste ao elemento.
}
procedure TfrmPrincipal.AbrirImagem;
var
  CaminhoImagem, FormatoImg : String;
  JPG : TJPegImage;
  BMP: TBitmap;
begin
  if ODAbrirIamgem.Execute then
    begin
      try
        BMP := TBitmap.Create();
        JPG := TJPEGImage.Create();

        FormatoImg := ExtractFileExt(ODAbrirIamgem.FileName);

        if FormatoImg = '.bmp' then
        begin
          BMP.LoadFromFile(ODAbrirIamgem.FileName);
          ImgFoto.Picture.Assign(BMP);
          ImgFoto.Picture.Assign(JPG);
        end else if FormatoImg = '.jpg' then
        begin
          JPG.LoadFromFile(ODAbrirIamgem.FileName);
          ImgFoto.Picture.Assign(JPG);
        end;
        ImgFoto.Picture.LoadFromFile(ODAbrirIamgem.FileName);
      finally
        FreeAndNil(JPG);
        FreeAndNil(BMP);
      end;
    end;
end;

procedure TfrmPrincipal.SalvaImagem;
begin
  SDSalvarImagem.Execute();
  if Length(ODAbrirIamgem.FileName) <= 0 then
  begin
    ShowMessage('Sem arquivo para salvar...');
  end else
    ImgFoto.Picture.SaveToFile(ChangeFileExt(SDSalvarImagem.FileName, '.jpg'));
    ShowMessage('Imagem salva com sucesso...');
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  AbrirImagem;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  SalvaImagem;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  ImgFoto.Picture := nil;
end;

end.
