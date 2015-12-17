program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
TPer = class
public
x1,x2,x3,y1,y2,y3: integer;
constructor Create(Nx1,Ny1,Nx2,Ny2,Nx3,Ny3: integer);
procedure Print;
function Perimetr: real;
end;
constructor TPer.Create(Nx1,Ny1,Nx2,Ny2,Nx3,Ny3: integer);
begin
  x1:=Nx1;
  y1:=Ny1;
  x2:=Nx2;
  y2:=Ny2;
  x3:=Nx3;
  y3:=Ny3;
end;

procedure TPer.Print;
begin
  Writeln;
  writeln('First point: ', x1:6, y1:6);
  writeln('Second point: ', x2:6, y2:6);
  writeln('Third point: ', x3:6, y3:6);
  Writeln;
end;


function TPer.Perimetr: real;
begin
  result:=sqrt(sqr(x2-x1)+sqr(y2-y1))+sqrt(sqr(x3-x2)+sqr(y3-y2))+sqrt(sqr(x1-x3)+sqr(y1-y3));
end;

type
TSq = class(TPer)
public
function Square: real;
end;
function TSq.Square: real;
begin
  result:=((x1-x3)*(y2-y3)-(x2-x3)*(y1-y3))/2;
end;

var
T1: TPer;
T2: TSq;
s,p: real;
begin
T1:=Tper.Create(1,1,5,2,8,4);
T1.Print;
writeln('Perimetr:', T1.Perimetr:4:6);

T2:=TSq.Create(1,7,4,7,8,9);
T2.Print;
writeln('Square:', T2.Square:4:6);


Readln;
End.


