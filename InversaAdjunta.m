fprintf('\nINVERSA POR LA ADJUNTA\n')

fprintf('\nLLENAR MATRIZ 3X3:\n')

fprintf('La matriz es de 3 por 3');
    for N=1:3
        for M=1:3
            fprintf('\nIngrese el valor para el elemento de la fila %d y columna %d: ',N,M);
            A(N,M)= input('\');
        end
        
    end

fprintf('\nCALCULAR DETERMINANTE DE A:\n')

DetA= det(A)

fprintf('\nHALLAR TRANSPUESTA DE A:\n')

TdeA= A.'

fprintf('\nCALCULAR ADJUNTA DE A:\n')


A11= [A(2,2) A(2,3); A(3,2) A(3,3)];
A11= det(A11);
A12= [A(2,1) A(2,3); A(3,1) A(3,3)];
A12=-det(A12);
A13= [A(2,1) A(2,2); A(3,1) A(3,2)];
A13= det(A13);
A21= [A(1,2) A(1,3); A(3,2) A(3,3)];
A21=-det(A21);
A22= [A(1,1) A(1,3); A(3,1) A(3,3)];
A22=det(A22);
A23= [A(1,1) A(1,2); A(3,1) A(3,2)];
A23=-det(A23);
A31= [A(1,2) A(1,3); A(2,2) A(2,3)];
A31=det(A31);
A32= [A(1,1) A(1,3); A(2,1) A(2,3)];
A32= -det(A32);
A33= [A(1,1) A(1,2); A(2,1) A(2,2)];
A33= det(A33);

fprintf ('LLENAR MATRIZ ADJUNTA:\n\n');

AdjAt= [A11 A12 A13; A21 A22 A23; A31 A32 A33]
AdjAtT=AdjAt.';
fprintf('CALCULO DE LA INVERSA:\n\n');

AINV= AdjAtT/DetA


fprintf('CALCULO DEL VECTOR UNITARIO:\n\n');

 fprintf('CREAR VECTOR V:\n\n');
fprintf('Para Graficar el vector, este debe ser de dos elementos, uno en X y otro en Y \n\n');
 for K=1:2
            fprintf('Ingrese el valor para el elemento de la fila 1 y columna %d: ',K);
            V(1,K)= input('\');
 end


 fprintf('CALCULAR NORMA O MAGNITUD DE V:\n\n');

MdeV= norm(V)

fprintf('CALCULO DEL VECTOR UNITARIO, V/|V|\n\n');

Vuni=V/MdeV
U=Vuni(1,1);
V=Vuni(1,2);

quiver(0,0,U,V)
