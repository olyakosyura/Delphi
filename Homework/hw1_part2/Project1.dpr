program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
Var 
X,y,f: integer;
Begin
Write('Input x  = ');
Readln(x);
Write('Input y = ');
Readln(y);
If x = y then f := 0;
If x > y then f := y*y*y-2*x+1;
If x < y then f := x*x - 2*y + x*y;
Writeln(' f = ', f);
Readln;
End.

