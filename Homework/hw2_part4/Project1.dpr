program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
func = function(x:real):real;


function fsin(x:real):real;
begin
  result:= x*x +sin(x/2)-1
end;
function f(x:real):real;
begin
  result:=x*x*x*x*x+x*x*x*3+x*x+1
end;
procedure kor(fk: func; eps:real);
var
y:real;
a, b: real;
x: real;
begin
a:=-5;
b:=0.1;

x := (a+b)/2;
if fk(a)*fk(b)<0 then
  begin
  repeat
     y:=(a+b)/2;
     if fk(a)*fk(y)<=0 then  b:=y
     else
     a:=y;
  until abs(b-a)<eps;
     x:=(a+b)/2;
  end;
writeln('x=',x:4:6,' f(x)=', fk(x):4:6);


end;

var
x,eps: real;
begin
writeln('Input eps: ');
readln(eps);
 kor(f,eps);
 kor(fsin,eps);
Readln;
End.


