# Flex-y-Bison
Ejemplos de las entradas:
        ARCHIVO 1
-------------------------------------------------------------------        
        Proyecto2{
	archivo: {
	nombre; "funciones1.fnm",
	tipo: fnm
},
	archivo: {
	nombrem: "ejec1.pal",
	tipo: pal
},
	principa@l: {
	nombre: "ejec1.pal"
}
}
---------------------------------------------------------------------
        ARCHIVO 2
        funcion entero funcion1(){

variable entero ent1, ent3, ent4;

ent78 := 34;

variable entero ent2 := 43;
variable decimal dec2 := 3.90;

variable booleano bool2, bool21 := falso;
variable booleano bool1;

ent3 := <+ 2 5>;
ent4 := <- ent2 ent3>;

si(<verdadero y verdadero>){
ent4 := 4;
} sino si(<no falso>){
ent4 := 6;
} sino { 
ent4 :=0;
}

mientras(<verdadero y bool1>){
ent4 := <+ ent4 5>;
}


retornar 4;
}

funcion entero funcion1(){

variable entero ent1, ent3, ent4;

ent78 := 34;

variable entero ent2 := 43;
variable decimal dec2 := 3.90;

variable booleano bool2, bool21 := falso;
variable booleano bool1;

ent3 := <+ 2 5>;
ent4 := <- ent2 ent3>;

si(<verdadero y verdadero>){
ent4 := 4;
} sino si(<no falso>){
ent4 := 6;
} sino { 
ent4 :=0;
}
mientras(<verdadero y bool1>){
ent4 := <+ ent4 5>;
}
para(variable entero ig := 0; < 4 igual 5 >; ig := < + 2 3>){
ent5 := 4;}
retornar 4;
}



