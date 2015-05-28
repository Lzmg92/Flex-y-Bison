%{
#include "Scanner2.h"
#include <iostream>
#include <QString>
extern int yy2lineno;
extern int columna2;
extern char *yy2text;
int yy2error(const char* mens)
{
 std::cout <<mens<<" near of "<<"--"<<yy2text<<"--"<<" posicion "<<columna2<< std::endl;
 return 0;
 }
 %}
 %union{
  char STR [256];
 }
%token<STR> var
%token<STR> fun
%token<STR> ret

%token<STR> dent
%token<STR> ddec
%token<STR> dbool

%token<STR> ver
%token<STR> fal

%token<STR> coma
%token<STR> pycoma
%token<STR> igualasig

%token<STR> expabre
%token<STR> expcierra

%left mas
%left menos
%left por
/* %left div */
%left elev
%left mod

%left y
%left o
%left no
%left mayor
%left menor
%left mayori
%left menori
%left igual
%left dif

%token<STR> parentesisa
%token<STR> parentesisc
%token<STR> llavea
%token<STR> llavec

%token<STR> si
%token<STR> sinosi
%token<STR> sino
%token<STR> mientras
%token<STR> para

%token<STR> iden
%token<STR> num
%token<STR> dec
%%

 S: LISTAF;

 LISTAF: LISTAF K
  | K;

TIPO: dent
           |ddec
           |dbool;

TINO: TIPO iden;

PARAMETROS: PARAMETROS coma TINO
                            | TINO;

K: fun TIPO iden parentesisa PARAMETROS parentesisc llavea CUERPO ret VAL pycoma llavec  { std::cout<<"fin del analisis A2"<<std::endl; }
    |fun TIPO iden parentesisa parentesisc llavea CUERPO ret VAL pycoma llavec { std::cout<<"fin del analisis A2"<<std::endl; } ;

/*cuerpo del archivo*/

CUERPO: CUERPO DEC
                  | DEC;

/*declaraciones*/

DEC: CREAVAR pycoma
        | ASIGVAR pycoma
        | SENTCONTROL
        | error pycoma;

/*operadores aritmeticos*/

E:  expabre mas   E E expcierra
   |  expabre menos E E expcierra
   |  expabre por E E expcierra
   | expabre div E E expcierra
   | expabre elev E E expcierra
   | expabre mod E E expcierra
   |  num
   | iden;

/*operadores logicos*/

L : expabre E igual E expcierra
    | expabre E dif E expcierra
    | expabre E mayor E expcierra
    | expabre E menor E expcierra
    | expabre E mayori E expcierra
    | expabre E menori E expcierra ;

M: ver
      |iden
      | fal
      | L;

/*condiciones logicas*/

CONDL : expabre M y M expcierra
            | expabre M o M expcierra
            | expabre  no M expcierra ;

/*variables, creacion y asignacion*/

IDENS: IDENS coma iden
            | iden;

/* IGUALID: igualasig iden; */

VERO: igualasig ver
           | igualasig fal;

NUM: igualasig E;

DECI: igualasig dec;

ASIGVAR:   iden NUM
                   | iden  DECI
                   | iden VERO ;

CREAVAR: var dent IDENS NUM
                   | var dent IDENS
                   | var ddec IDENS  DECI
                   | var ddec IDENS
                   | var dbool IDENS VERO
                   | var dbool IDENS;

/*sentencias de control*/

FINS: llavea CUERPO llavec;

        /* if - else if - esle*/
SENTCONTROL: SINO
                                |MIENTRAS
                                |PARA ;

SI:  si parentesisa CONDL parentesisc FINS;

LISTASNS: LISTASNS sinosi parentesisa CONDL parentesisc FINS
                    | sinosi parentesisa CONDL parentesisc FINS;

SINO: SI LISTASNS sino FINS
        |   SI sino FINS
        | SI;

        /*while*/

MIENTRAS: mientras parentesisa CONDL parentesisc FINS;

        /*for*/

PARA: para parentesisa
            var dent iden igualasig num pycoma
            L pycoma iden igualasig E
            parentesisc FINS;

/*valor de retorno*/

VAL: num
        |iden;

 %%
