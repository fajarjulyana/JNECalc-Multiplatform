unit MainMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    Label1: TLabel;
    Layout2: TLayout;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    Line1: TLine;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit6: TEdit;
    Label19: TLabel;
    Edit7: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure tambahanOperasi;
    procedure perubahanRumus;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  tambahanpanjang, tambahanlebar, tambahantinggi, ongkoskirim : Double;
implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
panjang, lebar, tinggi, volume: Double;
begin
if (TryStrToFloat(Edit1.Text,panjang) and TryStrToFloat(Edit2.Text,Lebar) and TryStrToFloat(Edit3.Text, Tinggi)) then
begin
  volume := (panjang + tambahanpanjang) * (lebar + tambahanlebar) * (tinggi + tambahantinggi) / ongkoskirim;
  label7.Text := FloatToStr(volume) + ' kg';
  end
  else
  begin
    ShowMessage('Masukan nilai yang valid untuk panjang, lebar dan tinggi');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    tambahanOperasi;
    perubahanRumus;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 1 then
begin
   Edit4.Text := '13';
   Edit5.Text := '5';
   Edit6.Text := '5';
   tambahanOperasi;
   perubahanRumus;
   end
else
if ComboBox1.ItemIndex = 2 then
begin
   Edit4.Text := '17';
   Edit5.Text := '9';
   Edit6.Text := '9';
   tambahanOperasi;
   perubahanRumus;
end
else
if ComboBox1.ItemIndex = 3 then
begin
   Edit4.Text := '19';
   Edit5.Text := '12';
   Edit6.Text := '12';
   tambahanOperasi;
   perubahanRumus;
end
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
tambahanOperasi;
end;

procedure TForm1.perubahanRumus;
begin
    label9.text := edit4.Text + ') x';
    label11.text := edit5.Text + ') x';
    label13.text := edit6.Text + ')';
    label14.Text := edit7.Text;
end;

procedure TForm1.tambahanOperasi;
begin
tambahanpanjang := StrtoFloat(Edit4.Text);
tambahanlebar := strtofloat(Edit5.Text);
tambahantinggi := strtofloat(Edit6.Text);
ongkoskirim := strtofloat(Edit7.Text);

end;

end.
