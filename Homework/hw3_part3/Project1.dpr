program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type

Tkv = class
public
square, cost: real;
constructor Create(ns,nc: real);
procedure Print;
function CostM: real;
end;
ar = array [1..3] of Tkv;
TSq = class
public
count: integer;
k: ar;
constructor Create(nc:integer; a:ar);
procedure Print;
procedure CostMin(Min:real);
end;
constructor Tkv.Create(ns,nc: real);
begin
square:=ns;
cost:=nc;
end;

procedure Tkv.Print;
begin
  Writeln;
  writeln('Square: ', square:4:6,'Cost: ', cost:4:6);
  Writeln;
end;


function Tkv.CostM: real;
begin
  result:=cost/square;
end;

constructor TSq.Create(nc:integer; a:ar);
begin
count:=nc;
k[1]:=Tkv.Create(32,2322332);
k[2]:=tkv.create(88,72732);
k[3]:=tkv.create(20,21212);
end;

procedure Tsq.Print;
var
  I: Integer;
begin
  Writeln;
  for I := 1 to count do
    k[i].Print;
   Writeln;
end;

procedure TSq.CostMin(Min:real);
var
  I: Integer;
begin
    writeln('Min = ', min:4:6);
    for I := 1 to count do
      if Min>k[i].CostM then
        k[i].Print;
end;

var
T: TSq;
a:ar;
begin
T:=T.Create(3,a);
T.Print;
T.CostMin(5000);
Readln;
End.


