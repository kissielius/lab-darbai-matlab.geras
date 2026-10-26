function B = pakartojimai(A, zemyn, desinen)
%PAKARTOJIMAI - pakartoja masyvą nurodytą kiekį kartų
%A - pradinis masyvas
%žemyn - kiek kartų kartoti žemyn
%dešinėn - kiek krtų kartoti į dešinę

B = [];

for i = 1:zemyn
    eilute = [];
    for j = 1:desinen
        eilute = [eilute A];
    end
    B = [B; eilute];
end
end
