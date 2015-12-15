program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
Var
A: array[1..6,1..6] of char;
K, I, j,m,n: integer;

Begin
Writeln('Input array of char');
For I :=1 to 6 do
Begin
For j:=1 to 6 do
Read(a[I,j]);
Readln;
End;

Writeln;
Writeln('array:');
For i:=1 to 6 do
begin
For j:=1 to 6 do
Write(a[I,j], ' ');
Writeln;
End;

M:=0;
For j:=1 to 6 do
Begin
N:=0;
For i:=1 to 6 do
For k:=i+1 to 6 do
If a[I,j]=a[k,j] then n:=n+1;
If n> 0 then
Begin
write(j, ' ');
m:=m+1;
end;
End;

If m = 0 then writeln('No double symbols in columns');

Readln;
End.

