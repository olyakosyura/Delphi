program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

  type
  TPNumber = ^TNumber;
  TNumber = record
    number: integer;
    next: TPNumber; // ��������� ������� ������
  end;

var
n,i: integer;
head: TPNumber; // ������ (������) ������

procedure New_Element();
var
  curr: TPNumber; // ����� ������� ������
begin
  new(curr); // �������� ������ ��� �������� ������
  Readln(curr^.number);

   // ���������� � ������ ������
  curr^.next := head;
  head := curr;
end;


// ������� ������

procedure Print_List();
var
  curr: TPNumber; // ������� ������� ������
  n: integer; // ����� (���-�� ���������) ������
  st: string; // ��������� ������������� ������
begin
  n := 0;
  st := '';
  curr := head; // ��������� �� ������ ������� ������
  while curr <> nil do
  begin
    n := n + 1;
    st := st + InttoStr(curr^.number) + ' ';
    curr := curr^.next; // ��������� �� ��������� �������

  end;

  if n <> 0
    then Writeln(st)
  else Writeln('No elements in list');
end;

procedure New_Print_List();
var
  curr: TPNumber; // ������� ������� ������
  n,i,nk: integer; // ����� (���-�� ���������) ������
  st,temp: string; // ��������� ������������� ������
begin
  n := 0;
  st := '';
  temp:='';
  curr := head; // ��������� �� ������ ������� ������
  while curr <> nil do
  begin
    n := n + 1;
    if curr^.number < 0 then
    st := st + InttoStr(curr^.number) + ' '
    else
    begin
     temp := temp + InttoStr(curr^.number) + ' ';
     nk:=nk+1;
    end;
    curr := curr^.next; // ��������� �� ��������� �������
  end;

  i:=0;
 for i:=length(temp) downto 0 do
 begin
      if temp[i] = ' ' then
        begin
      st:=st+Copy(temp, i, length(temp)-i);
      Delete(temp, i, length(temp)-i);
         end;
   end;

   st:=st+' '+temp;


  if n <> 0
    then Writeln(st)
  else Writeln('No elements in list');
end;

begin
 Write('Input n = ');
 readln(n);

 for i:=1 to n do
 begin
 write('Input new element of list: ');
 New_Element();
 end;

 // Print_List();
  New_Print_list();



  Readln;
end.
