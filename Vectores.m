fprintf('VECTORES...\n');
fprintf('Como se trabaja en R2, los vectores seran de dos elementos.\n');

fprintf('\nAhora se debe llenar los valores del vector U: \n');
 for A=1:2
            fprintf('Ingrese el valor para el elemento de la fila 1 y columna %d: ',A);
            U(1,A)= input('\');
 end
 fprintf('\nEl vector U es: \n');
 U
    fprintf('\nAhora se debe llenar los valores del vector V: \n');    
for B=1:2
            fprintf('Ingrese el valor para el elemento de la fila 1 y columna %d: ',B);
            V(1,B)= input('\');
end
  fprintf('\nEl vector U es: \n');
  V
  Coseno=(dot(U,V))/(norm(U)*norm(V));
fprintf('\nEl angulo entre vectores es: \n');
Angulo=acosd(Coseno)

fprintf('\nEl producto punto entre vectores es: \n');

dot(U,V)


%Para graficar: 
X1=U(1,1);
Y1=U(1,2);
quiver(0,0,X1,Y1)
hold
X2=V(1,1);
Y2=V(1,2);
quiver(0,0,X2,Y2)