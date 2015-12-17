program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  func = function(x: Real): Real;

function fsin(x: real):Real;
begin
  result:=Sin(x);
end;

function fcos(x: real):Real;
begin
  result:=cos(x*x);
end;


procedure neibr(x, y: Real);
var
  f1, f2: func;
begin
  write('y = sin(x) : ');
  f1:=fsin;
  if f1(x)= y then
    writeln('True')
  else Writeln('False');
  f1:=fcos;
  write('y = cos(x*x) : ');
  if f1(x)= y then
    writeln('True')
  else Writeln('False');


end;






var
i: Integer;
x,y: Real;
begin
for I := 1 to 10 do
  begin
    write('Input x = ');
    Readln(x);
    write('Input y = ');
    Readln(y);
    neibr(x,y);
  end;
Readln;
end.
