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
procedure kor(fk: func;  x:real; eps:real);
var
y:real;
begin
y:=fk(x);


end;

var
x,eps: real;
begin
writeln('Input x and eps: ');
readln(x,eps);
 kor(f,x,eps);
 kor(fsin,x,eps);
Readln;
End.


