program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Function f(b,a: real; n: integer): real;
Var
F0: real;
i: integer;
x: real;
Begin
Result:= (b - a) / n;
X:=a;
F0:=0;

For i:=1 to n-1 do
begin
x:=x+result;
F0:=f0+x*sin(x*x);
End;
Result:=abs(result*f0);
End;

Var
Eps: real;
S, Y, x, a,b: real;
I, n: integer;
f0: real;
Begin
Write('Input a = ');
Readln(a);
Write('Input b = ');
Readln(b);
Write('Input eps  = ');
Readln(eps);
S := 0;
N := 1;
While abs(f(a,b,n) - f(a,b,n*2)) > eps do
Begin
N:=n*2;
end;
S:=f(a,b,n);


Writeln('s = ', s);
Writeln('n = ', n);
Readln;
End.


