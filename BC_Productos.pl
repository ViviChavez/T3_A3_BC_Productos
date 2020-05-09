
% articulo(clave, descripcion, precio)
producto(pr1, computadora, 15).
producto(pr2, raton_alambrico, 10).
producto(pr3, proyector, 10).
producto(pr4, adaptador_vga, 10).
producto(pr5, raton_inalambrico, 5).
producto(pr6, memoria_usb, 5).
producto(pr7, disco_externo, 5).
producto(pr8, escritorio, 100). 

% inventario(clave, existencias)
inventario(pr1, 32).
inventario(pr2, 4).
inventario(pr3, 5).
inventario(pr4, 64).
inventario(pr5, 12).
inventario(pr6, 10).
inventario(pr7, 89).

% cliente(nombre, ciudad, calificacion-credito)
cliente(ana, fresnillo, 5).
cliente(maria, jerez, 4).
cliente(luis, jerez, 2).
cliente(juan, zacatecas, 3).
cliente(gerardo, gaudalupe, 4).
cliente(david, zacatecas, 5).
cliente(perla, gaudalupe, 4).
cliente(omar, zacatecas, 3).
cliente(lucia, jerez, 4).
cliente(diana, fresnillo, 1).

% _ (guion bajo) COMODIN que permite UNIFICAR cualquier valor, SIN MOSTRARLO

%EJEMPLO: crear regla que muestre a los clientes de Jerez
clientes_jerez(Nombre) :- cliente(Nombre, jerez, _).	%PROBAR CONSULTA: clientes_jerez(Nombre).

%EJEMPLO 2: mostrar los clientes con calificacion de 5
clientes_5(Nombre) :- cliente(Nombre, _, 5).

%EJEMPLO 3: mostrar un listado con el nombre del producto y su existencia
producto_cantidad(Prod, Cant):- producto(NumProd, Prod, _) , inventario(NumProd, Cant).


%4.Encuentre la cantidad de limite en existencias para un artículo dado. digamos una computadora
limite(Clave,Cant):-producto(pr1,_,_),inventario(pr1,Cant).
%:-:-limite(Clave,Cant).
%true.
%Cant = 32.

%5.Encuentre el número de artículo para un nombre de artículo determinado.
numeroAe(Cant):-producto(Clave,computadora,_),inventario(Clave,Cant).
%:-numeroAe(Clave,Cant).
%true.
%Clave = pr1,
%Cant = 32.
%6.Encuentre el nivel de inventario para un número de artículo dado.
nivelinventario(Clave, Cant):- inventario(Clave, Cant).
%7.Crear una regla que ayude a mostrar la cantidad de artículos que hay para cada artículo. 
cantidad(Prod, Cant):- producto(Clave, Prod, _) , inventario(Clave, Cant).
%cantidad(Prod, Cant).
%Prod = computadora,
%Cant = 32 :-;
%Prod = raton_alambrico,
%Cant = 4 |;
%Prod = proyector,
%Cant = 5 |;
%Prod = adaptador_vga,
%Cant = 64 |;
%Prod = raton_inalambrico,
%Cant = 12 |;
%Prod = memoria_usb,
%Cant = 10 |;
%false.

