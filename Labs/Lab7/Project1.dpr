program Project1;

{$APPTYPE CONSOLE}
 //���� ������������� ������� ������� B(n,m),(n,m<=10).
 //������������� ��, ���������� ������ � �������
 //����������� �� ���������� ���������.
uses
  SysUtils;
const
n = 10;
m = 10;
type
matrix = array[1..n,1..m] of integer;
procedure input(var b: matrix);
var i,j: integer;
begin
  randomize;
  for i:=1 to n do
    for j:=1  to m do
      b[i,j]:=random(n)-(m div 2);
end;
procedure output(b: matrix);
var i,j: integer;
begin
  for i:=1 to n do
    begin
    for j:=1  to m do
      write(b[i,j]:4);
    writeln;
    end;
end;
procedure sort(var b:matrix);
var
i,j,temp,min: integer;
a: array[1..n] of integer;
  k: Integer;
begin
for i := 1 to n do
  begin
    min:=b[i,1];
    for j := 1 to m do
      if b[i,j]<min then
      min:=b[i,j];
    a[i]:=min;
    writeln(a[i]);
  end;
for i:=1 to n do
   for j:=i to n-1 do
     if a[i]<a[i+1] then
      for k := 1 to m do
      begin
        temp:=b[i,k];
        b[i,k]:=b[i,k+1];
        b[i,k+1]:=temp;
      end;

end;



Var
b: matrix;
begin
input(b);
output(b);
writeln;
sort(b);
output(b);

Readln;
End.
