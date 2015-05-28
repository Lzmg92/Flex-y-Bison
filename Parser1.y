%{
#include "Scanner1.h"
#include <iostream>
#include <QString>
extern int yy1lineno;
extern int columna1;
extern char *yy1text;
int yy1error(const char* mens)
{
 std::cout <<mens<<" near of "<<"--"<<yy1text<<"--"<<" posicion "<<columna1<< std::endl;
 return 0;
 }
 %}
 %union{
  char STR [256];
 }
 %token<STR> Narchivo
 %token<STR> Nprincipal
 %token<STR>Nnombre
 %token<STR>Ntipo
 %token<STR> Nllavea
 %token<STR> Nllavec
 %token<STR> Ncoma
 %token<STR> Niden
  %token<STR> Nstr
 %token<STR> Nfnm
 %token<STR> Npal
%%

 S: Niden Nllavea
     LISTA PRINCIPAL Nllavec  { std::cout<<"fin del analisis"<<std::endl; }
     | error Nllavea LISTA PRINCIPAL Nllavec   { std::cout<<"fin"<<std::endl; }
     | Niden error LISTA PRINCIPAL Nllavec   { std::cout<<"fin"<<std::endl; };

 LISTA: LISTA K
  | K;

K: Narchivo Nllavea
Nnombre Nstr
Ncoma
Ntipo A Nllavec Ncoma
| error Ncoma;

A:   Nfnm
        |  Npal
        |  error ;

PRINCIPAL:  Nprincipal Nllavea Nnombre Nstr Nllavec;
 %%
