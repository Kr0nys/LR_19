unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TfMain }

  TfMain = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    procedure ClearEntryClick(Sender: TObject);
    procedure Clear_LastClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure degreeClick(Sender: TObject);
    procedure Divide_One_on_XClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure squareClick(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure equalClick(Sender: TObject);
    procedure Zapyt(Sender: TObject);



  private

  public

  end;

var
  fMain: TfMain;
  a, b, c: real;
  znak : string;
implementation

{$R *.lfm}

{ TfMain }

procdeure TfMain.Edit1Change(Sender: TObject);
begin

end;

procedure TfMain.Zapyt(Sender: TObject);
var k2:AnsiString;
  k1:int64;
begin
  k2:=Edit1.Text;
  k1:= Pos(',',k2);
   if k1 = 0 then
      Edit1.Text:=Edit1.Text + (Sender as TButton).Caption
   else
    ShowMessage('Введите число');
end;

procedure TfMain.ClickBut(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;


procedure TfMain.Clear_LastClick(Sender: TObject);
var
  str: string;
begin
  str:= Edit1.Text;
  if str <> '' then
  delete(str, Length(str),1);
  Edit1.Text:=str;
end;


procedure TfMain.equalClick(Sender: TObject);
begin
  if Edit1.Text = '' then
     ShowMessage('Ввидите число')
  else
  begin
  b:= strtoFLoat(Edit1.Text);
  Edit1.Clear;
  case znak of
  '+' : c:= a+b;
  '-' : c:= a-b;
  '*' : c:=a*b;
  '/': if b = 0 then
     showmessage('На ноль делить нельзая')
  else
  c:=a/b;
  end;
  end;

  Edit1.Text:= FloatToStr(c);

end;


procedure TfMain.Divide_One_on_XClick(Sender: TObject);
begin
  if Edit1.Text = '' then
     ShowMessage('Введите число')
  else
  begin
  a:= strToFloat(Edit1.Text);
  if Edit1.Text = '0' then
     ShowMessage('На ноль делить нельзя')
  else
  begin
  a:= 1/(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
  end;
  end;
end;


procedure TfMain.ClearEntryClick(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfMain.ClearClick(Sender: TObject);
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;
end;



procedure TfMain.degreeClick(Sender: TObject);
begin
  if Edit1.Text = '' then
     ShowMessage('Введите числа')
  else
  begin
  a:= strToFloat(Edit1.Text);
  if a>0 then
  begin
  a:= sqrt(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
  end
  else
      ShowMessage('Корня из отрицательного числа не существует')
  end;
end;



procedure TfMain.squareClick(Sender: TObject);
begin
  if Edit1.Text = '' then
     ShowMessage('Введите числа')
  else
  begin
  a:= strToFloat(Edit1.Text);
  a:= sqr(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
  end; ;
end;

procedure TfMain.ClickZnak(Sender: TObject);
begin
   if Edit1.Text = '' then
      ShowMessage('Введите число')
   else
   begin
        a:= strToFloat(Edit1.Text);
        Edit1.clear;
        znak:=(Sender as TButton).Caption;
   end;
end;

end.

