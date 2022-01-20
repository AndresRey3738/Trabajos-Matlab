fprintf('Metodo de GaussJordan: \n');
n=input('Ingrese el numero de ecuaciones: ');
m=input('Ingrese el numero de incognitas: ');
x=-10:0.1:10;
if(n~=m)
    fprintf('\nLa matriz no es cuadrada, por lo tanto no se puede aplicar "Gauss Jordan".\n');
end
if(n==m)
for A=1:n
        for B=1:m
            fprintf('Ingrese el valor para el elemento de la fila %d y columna %d: ',A,B);
            Matriz(A,B)= input('\');
           
        end
end

fprintf('La matriz de coeficientes es:\n ');
Matriz
    fprintf('Ingrese los valores del vector solucion: \n');
        for D=1:n
            fprintf('Ingrese el valor para el elemento solucion 1, %d: ',D);
            Solu(1,D)=input('\');
           
        end
        
        Solu=Solu.';
        fprintf('La matriz de resultados es:\n ');
        Solu


C=[Matriz Solu];%%unión de los datos en una solo matriz
fprintf('La matriz unida es: \n');
C
for i=1:length(C(:,1)) %%para i desde la primera fila  hasta el número de filas existentes 
if C(i,i)~=1 %%si el elemento i,i de la diagonal es diferente de 1 
    C(i,:)= C(i,:)./C(i,i);  %entonces se convierte a 1  dividiendo toda la fila por dicho elemento
    disp(C)   %salida de datos
end
%además el resto de elementos de la columna deben convertirse a 0 :  
%es decir si  n es diferente de i ya que si i y n son iguales entonces el
%elemento se encuentra en la diagonal 
    for n=1:length(C(:,1)) %para n desde la primera fila hasta el número de filas existentes
      if n~=i % si n en la columna i no está en la diagonal es decir si i no es igual a n
          C(n,:)=-C(n,i).*C(i,:)+C(n,:); %entonces se convierte a 0 
           disp(C)
      end
    end
end

if(m==2)
Ceros=zeros(size(x));
plot(x,Ceros)
 grid on
             hold on
        for B=1:n
             Z=(Solu(B,1)-Matriz(B,1)*x)/Matriz(B,2);
            
              plot(x,Z)
        end
        
end
if(m~=2)
    fprintf('No es posible graficar en R2 la ecuacion porque posee mas de dosincognitas.')
end
end

            