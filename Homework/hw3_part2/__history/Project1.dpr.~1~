program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
TTrain = class
public
Number: integer;
Km: integer;
TimeMin: integer;
constructor Create(NewNumber,NewKM,NewTimeMin: integer);
procedure Print;
function Sr: real;
end;
constructor TTrain.Create(NewNumber,NewKM,NewTimeMin: integer);
begin
  Number:=NewNumber;
  KM:=NewKm;
  TimeMin:=NewTimeMin;
end;

procedure TTrain.Print;
begin
  Writeln;
  writeln('Train Number: ', Number, ' KM: ', km, ' Time(min): ',TimeMin);
  Writeln;
end;


function TTrain.Sr: real;
begin
  result:=km/(timemin/60);
end;
var
MyTrain: Ttrain;
sredn: real;
begin
MyTrain:=Ttrain.Create(1,10000,11724);
MyTrain.Print;
writeln('srednyaya skorost (km/h):', MyTrain.Sr:4:6);

Readln;
End.


