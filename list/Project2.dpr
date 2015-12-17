program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  A, gl: set of Char;
  s: string;
  i: Integer;
  j: Char;

begin
gl:=['e','y','u','i','o','a'];
a:=[];
Writeln('Input s:');
Readln(s);

for i:=1 to Length(s) do
  if s[i] in gl then
    if s[i] in a then
      begin
      gl:=gl-[s[i]];
      a:=a-[s[i]];
      end
    else
      a:=a+[s[i]];

for j in a do
  write(j:4);

Readln;
end.
