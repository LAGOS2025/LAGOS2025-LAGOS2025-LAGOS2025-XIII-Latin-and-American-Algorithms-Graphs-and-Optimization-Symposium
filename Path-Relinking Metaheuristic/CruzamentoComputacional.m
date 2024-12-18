function [sinal]=CruzamentoComputacional(R1,R2)
sinal=0;


P1=[R1(1,:)];P2=[R1(2,:)];
P3=[R2(1,:)];P4=[R2(2,:)];

%W1=[1 2];W2=[2 1];
%P1=[1.5 1];P2=[1.5 1.4];P3=[2 2];P4=[1 1];





d=((P4(2)-P3(2))*(P2(1)-P1(1)))-((P4(1)-P3(1))*(P2(2)-P1(2)));

if (d==0)
sinal=0;
else
u=(((P4(1)-P3(1))*(P1(2)-P3(2)))-((P4(2)-P3(2))*(P1(1)-P3(1))))/d;

v=(((P2(1)-P1(1))*(P1(2)-P3(2)))-((P2(2)-P1(2))*(P1(1)-P3(1))))/d;

if ((u==0)&(v==0))
    sinal=1;
elseif ((u>=0)&(u<=1)&(v>=0)&(v<=1))
   sinal=1;
end


end

end