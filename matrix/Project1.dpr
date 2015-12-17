program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  n =8;
  m = 15;

 type
 matrix = array [1..8,1..15] of Integer;

 Procedure Input( var a:matrix);
 var
  i,j: Integer;
 begin
   Randomize;
   for i:=1 to n do
     for j:=1 to m do
        a[i,j]:=Random(90);
 end;
  Procedure Output( a:matrix);
 var
  i,j: Integer;
 begin
   for i:=1 to n do
     begin
     for j:=1 to m do
       write( a[i,j]:4);
     Writeln;
     end;
 end;
  procedure r ( a:matrix);
  var i,j : Integer;
      i1,j1,i2,j2: Integer;
  begin
    i1:=0;
    i2:=0;
    j1:=0;
    j2:=0;
    for i:=1 to n  do
    for j:=1 to m  do
      begin
        if a[i,j]=0 then
          if i1 = 0 then
          begin
            i1:=i;
            j1:=j;

          end
          else
          begin
            i2:=i;
            j2:=j;
          end;

      end;
    if i1 = 0 then
      Writeln('No Null symbols')
    else
      if i2 = 0 then
        Writeln('Only one Null: i = ', i1, '; j = ',j1)
      else
      begin
        Writeln('First Null: i = ', i1, '; j = ',j1);
        Writeln('Second Null: i = ', i2, '; j = ',j2);
        Writeln(i2+j2-i1-j1);
      end;

  end;

var
a: matrix;
begin

Input(a);
Output(a);
r(a);
Readln;

end.
