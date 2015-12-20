program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
TBook = record
  Name: string[40];
  Author: string[20];
  Year: integer;
end;

var
F: file of TBook;
Temp: Tbook;
FileName, NewFile: string;
FText: TextFile;
I, n: integer;

begin
FileName:='input.dat';
NewFile:='output.txt';
Assignfile(F,FileName);
Assignfile(FText,NewFile);
Rewrite(F);
Rewrite(FText);

writeln('Input N = ');
Readln(n);
Writeln('INput Old File:');
for I := 1 to n do
  begin
   readln(temp.Name);
   readln(temp.Author);
   readln(temp.Year);
   writeln(temp.Name:40, temp.Author:20, temp.Year:10);
  write(f,temp);

  end;

  closefile(f);
  reset(f);


Writeln('New File(output.txt):');

for I := FileSize(F)-1 downto 0 do
  begin
   Seek(F,i);
   read(f,temp);
   writeLN(ftext, temp.Name:40, temp.Author:20, temp.Year:10);
   writeln(temp.Name:40, temp.Author:20, temp.Year:10);

  end;

  closefile(f);
  closefile(ftext);
  readln;


end.
