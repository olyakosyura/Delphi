program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
a,b,c: set of char;
sogl: set of char;
i: integer;
s: string;
j: char;
begin
writeln('Input s:');
readln(s);
sogl:=['b','v','g','d','z','l','m','n','r'];
a:=[];
b:=[];
c:=[];
for i := 1 to length(s) do
  begin
    if s[i]=' ' then
    begin
    if b = [] then
      b:=a
      else
      begin
       for j in a do
         if j in b then c:=c+[j]


      end;
    a:=[];
    end;
    if s[i] in sogl then a:=a+[s[i]];
  end;

for j in c do
write(j:3);

Readln;
End.


