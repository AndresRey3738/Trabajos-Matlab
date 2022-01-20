fprintf('OPERACIONES CON MATRICES:\n\n');

fprintf('CREAR MATRICES:\n\n RECUERDE QUE LAS MATRICES DEBEN SER DEL MISMO TAMANO.\n');
n1=input('Ingrese el numero de filas para la matriz A: ');
m1=input('Ingrese el numero de columnas para la matriz A: ');
fprintf('La matriz es de %d por %d.',n1,m1);
    for C=1:n1
        for D=1:m1
            fprintf('\nIngrese el valor para el elemento de la fila %d y columna %d: ',C,D);
            A(C,D)= input('\');
        end
        
    end
    
n2=input('\nIngrese el numero de filas para la matriz B: ');
m2=input('\nIngrese el numero de columnas para la matriz B: ');
fprintf('\nLa matriz es de %d por %d.',n2,m2);
    for E=1:n2
        for F=1:m2
            fprintf('\nIngrese el valor para el elemento de la fila %d y columna %d: ',E,F);
            B(E,F)= input('\');
        end
        
    end
    if(n1==n2&&m1==m2)
fprintf('\nMatriz Resultado de suma(SUMA A+B):\n\n');

SUMA= A+B

fprintf('Matriz Resultado de resta(RESTA A-B):\n\n');

RESTA= A-B

fprintf('Matriz Resultado de multiplcacion por un escalar(MultEscalar 3*A):\n\n');

MultEscalar= 3*A
if(n1~=m1&&n2~=m2)
    fprintf('\nNo es posible multiplicar matrices que no sean cuadradas\n');
    fprintf('\nPero su producto punto es: \n');
    dot(A,B)
end
if(n1==m1&&n2==m2)
fprintf('Matriz Resultado de multiplcacion(MULTIPLICACION A*B):\n\n');

MULTIPLICACION= A*B
end
fprintf('Transpuesta de una matriz (T):\n\n');

T= A.'
    end
    if(n1~=n2)
        fprintf('LAS MATRICES NO SON DEL MISMO TAMANO, NO SE PUEDEN OPERAR.');
    end
    if(m1~=m2)
            fprintf('LAS MATRICES NO SON DEL MISMO TAMANO, NO SE PUEDEN OPERAR.\n');
    end
fprintf('Calculo de angulo de un vector con respecto al eje X:\n\n');

fprintf('Crear vector(V):\n\n');
fprintf('Para Calcular el angulo, el vector debe ser de dos elementos, uno en X y otro en Y \n\n');
 for G=1:2
            fprintf('Ingrese el valor para el elemento de la fila 1 y columna %d: ',G);
            V(1,G)= input('\');
 end

fprintf('Hallar magnitud(M):\n\n');
M= norm(V)

fprintf('Calculo del angulo(Angulo):\n\n');
Angulo = asind(V(1,2)/M)
    
