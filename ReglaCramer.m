
fprintf('Metodo de Cramer: \n');
fprintf('(La matriz debe ser cuadrada y su determinante no puede ser cero)');
n=input('Ingrese el numero de ecuaciones: ');
m=input('Ingrese el numero de incognitas: ');
if n~=m
    fprintf(' La matriz no es cuadrada, por lo tanto no se puede resolver por regla de Cramer.');
end 
    fprintf('La matriz es de %d por %d.',n,m);
    for A=1:n
        for B=1:m
            fprintf('Ingrese el valor para el elemento de la fila %d y columna %d: ',A,B);
            matriz(A,B)= input('\');
        end
        
    end
    fprintf(' La matriz es: \n');
    disp(matriz)
    fprintf('\n\n El determinante de la matriz es:\n');
    disp(det(matriz))
    if det(matriz)==0
        fprintf('El determinante es 0, entonces no se puede aplicar la regla de Cramer.');
    end
    
        fprintf('Ingrese los valores del vector solucion: \n');
        for D=1:n
            fprintf('Ingrese el valor para el elemento solucion 1, %d: ',D);
            sol(1,D)=input('\');
        end
        fprintf('El vector solucion es:\n');
        disp(sol')
        
        DetMatriz=det(matriz);
        P=matriz;
        sol=sol';
        cont=1;
        while(cont<=n)
       
            P(:,cont)=sol;
            
            Res(cont)=det(P)/DetMatriz;
            disp(fprintf('El valor de x[%d]=%f',cont, Res(cont)));
            P=matriz;
            cont=cont+1;
        end
        x=-10:0.1:10;
        if(m==2)
Ceros=zeros(size(x));
plot(x,Ceros)
 grid on
             hold on
        for B=1:n
             Z=(sol(B,1)-matriz(B,1)*x)/matriz(B,2);
            
              plot(x,Z)
        end
        
        end
if(m~=2)
    fprintf('No es posible graficar en R2 la ecuacion porque posee mas de dosincognitas.')
end
            
