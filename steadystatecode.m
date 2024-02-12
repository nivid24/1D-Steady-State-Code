%Name - Nivid Mehta
%Roll no - 21BME114D
%Date - 11/2/24

L=1;
N=7;
dx=L/(N-1);
k = 1;
Q = 0;
A = zeros(N,N);
A(1,1) = 2;
A(N,N)=2
for i = 2:N-1
    A(i-1,i)=-1
    A(i,i-1) =-1
    A(i,i) = 2
    A(i,i+1) =-1
    A(N,N-1) = -1
end
disp(A)
 b = zeros(N,1);
 b(1) = 100;
 b(N) = 10;
 T = inv(A)*b;
 x = linspace(0,L,N);
 plot(x,T,'g', 'linewidth' , 1.5);
 xlabel('Distance(m)');
 ylabel('Temperature(c)');
 title('Temperature Distribution')
 grid on;