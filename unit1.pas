unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1; a,b,h,r,ans:double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    if RadioButton1.Checked then
  begin
     if Edit1.Text = '' then begin ShowMessage('Введите все параметры');
     Exit;
     end
     else
     a:= strtofloat(Edit1.text);
     ans:=a*a*a;
     Edit5.Text:= FloatToStr(ans);
  end;
    if RadioButton2.Checked then
  begin
     if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '')
     then begin ShowMessage('Введите все параметры');
     Exit;
     end
     else
     a:= strtofloat(Edit1.text);
     b:= strtofloat(Edit2.text);
     h:= strtofloat(Edit3.text);
     ans:=a*b*h;
     Edit5.Text:= FloatToStr(ans);
  end;
    if RadioButton3.Checked then
  begin
     if (Edit3.Text = '') or (Edit4.Text = '')
     then begin ShowMessage('Введите все параметры');
     Exit;
     end
     else
     h:= strtofloat(Edit3.text);
     r:= strtofloat(Edit4.text);
     ans:=pi*r*r*h;
     Edit5.Text:= FloatToStr(ans);
  end;
    if RadioButton4.Checked then
  begin
     if Edit4.Text = ''
     then begin ShowMessage('Введите все параметры');
     Exit;
     end
     else
     r:= strtofloat(Edit4.text);
     ans:=4/3*pi*r*r*r;
     Edit5.Text:= FloatToStr(ans);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  RadioButton1.Checked:= False;
  RadioButton2.Checked:= False;
  RadioButton3.Checked:= False;
  RadioButton4.Checked:= False;
  a:=0; b:=0; h:=0; r:=0; ANS:=0;
  end;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  if RadioButton1.Checked then
  begin
     Edit1.Enabled:= False;
     Edit2.Enabled:= False;
     Edit3.Enabled:= False;
     Edit4.Enabled:= False;
     Edit1.Enabled:= True;
     end;
  end;
procedure TForm1.RadioButton2Change(Sender: TObject);
begin
    if RadioButton2.Checked then
  begin
     Edit1.Enabled:= False;
     Edit2.Enabled:= False;
     Edit3.Enabled:= False;
     Edit4.Enabled:= False;
     Edit1.Enabled:= True;
     Edit2.Enabled:= True;
     Edit3.Enabled:= True;
     end;
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
     if RadioButton3.Checked then
  begin
     Edit1.Enabled:= False;
     Edit2.Enabled:= False;
     Edit3.Enabled:= False;
     Edit4.Enabled:= False;
     Edit3.Enabled:= True;
     Edit4.Enabled:= True;
     end;
end;

procedure TForm1.RadioButton4Change(Sender: TObject);
begin
     if RadioButton4.Checked then
  begin
     Edit1.Enabled:= False;
     Edit2.Enabled:= False;
     Edit3.Enabled:= False;
     Edit4.Enabled:= False;
     Edit4.Enabled:= True;
     end;
end;

end.

