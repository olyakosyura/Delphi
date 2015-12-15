program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const
N = 25;
Var
a: array [1..n] of integer;
Temp, I,  j: integer;
Begin
Randomize;
For I:=1 to n do
a[i]:=random(n)-n div 2;
For I:=1 to n do
Write(a[i],' ');
Writeln;

For I:=1 to n do
For j:=1 to n-1 do
If abs(a[j])>abs(a[j+1]) then
Begin
Temp:=a[j+1];
a[j+1]:=a[j];
a[j]:=temp;
End;

Writeln('Sorted array:');
For I:=1 to n do
Write(a[i],' ');
Writeln;
Readln;
End. 

