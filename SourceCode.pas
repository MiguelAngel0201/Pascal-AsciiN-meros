program AsciiTecla;
uses crt;

var tecla:char;
var x:integer;
begin

   writeln('N',#163,'mero de Tecla Ascii');
   write('Pulse una tecla a la que desea obtener el n',#163,'mero ascii de ella: ');
   {También puede funcionar con read, pero tendría que darle a la tecla enter para que me dé el número ascii de la letra´}
   readln(tecla);

   if (tecla='0') then
   begin
   tecla:=readkey;
   end

   else
   begin
   for x:=0 to 10 do
   begin
   writeln;
   writeln('Tecla: ', tecla);
   writeln( 'ASCII: ', ord(tecla) );
   {La función "ord" funciona para dar el número ascii de la tecla que se le está dando}

   writeln;
   writeln('Ingrese otro caracter, si desea salir pulse 0');
   readln(tecla);

   if(tecla='0') then

   tecla:=readkey;
   end
   end;
end.
