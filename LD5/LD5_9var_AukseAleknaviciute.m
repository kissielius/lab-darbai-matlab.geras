%1a
C = cell(1,4);

C{1} = [4 8 10];
C{2} = 'Laba diena';
C{3} = [true false];
C{4} = ["A" "B" "C" "D"];

%1b
funkcija = {@length}

ilgiai = cellfun(funkcija{1}, C);

disp(C);
disp('Elementų ilgiai:');
disp(ilgiai);

cellplot(C);

%2
m = input('Įveskite m:');

disp('1 funkcija: sin');
disp('2 funkcija: cos');

f = input('Pasirinkite funkciją: ');

figure;

for i = 0:15

   x=m:0.1:(m+4*pi);

   if f==1
       y = sin(x);
   else
       y = cos(x);
   end
   
   stem(x,y);
   grid on;
   xlabel('x');
   ylabel('y');

   pause(0.5);

   m=m+pi/8;

end

%%papildoma
sakinys = input('Įveskite sakinį: ', 's');
simbolis = input('Kokį simbolį pašalinti? ', 's');

naujas = '';
kiek = 0;

for i=1:length(sakinys)
    if sakinys(i) == simbolis
        kiek = kiek + 1;
    else
        naujas = [naujas sakinys(i)];
    end
end

disp('Naujas sakinys: ');
disp(naujas);

disp('Pašalinta simbolių: ');
disp(kiek);