program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
Var 
S: string; 
I: integer; 
Begin 
Writeln('Input string:');
Readln(s);
I:=0;
Writeln(s);
For i:=1 to length(s) do
Begin
If I = 1 then
If (s[1]='A') and (s[2]='B') and (s[3]='C') then
s[3]:='Y';
If I = length(s) then
If (s[length(s)]='F') and (s[length(s)-1]='E') and (s[length(s)-2]='D') then
s[length(s)-1]:='O';
If (s[i] = ' ') then
Begin
If (s[i+1]='A') and (s[i+2]='B') and (s[i+3]='C') then s[i+3]:='Y';
If (s[i-1]='F') and (s[i-2]='E') and (s[i-3]='D') then s[i-2]:='O';

End; 
End; 
Writeln(S); 

Readln; 
End.
