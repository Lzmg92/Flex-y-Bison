%option noyywrap
%option nounput
%{
#include "Parser1.h"
#include <iostream>
#include <QString>
int columna1=0;
%}

letra   [A-Za-z]
dig     [0-9]
palabra    (({letra}|{dig})+)
stri     ([\"]{palabra}[.]{palabra}[\"])
%%


"fnm"                           {columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Nfnm; }
"pal"                           {columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Npal; }
"archivo:"                  { columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Narchivo; }
"principal:"                { columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Nprincipal; }
"nombre:"                   {columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Nnombre;}
"tipo:"                          {columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Ntipo;}
"{"                                 { columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Nllavea; }
"}"                                 { columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Nllavec; }
","                                 { columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Ncoma; }
{palabra}                     { columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Niden; }
{stri}                             {  columna1=columna1+strlen(yy1lval.STR); strcpy(yy1lval.STR, yy1text); return Nstr; }

[[:blank:]]             { /*Se ignoran los espacios en blanco */ }
. {
 std::cout <<"Error Lexico "<<yy1text<<" posicion "<<columna1<<std::endl;
 }
%%
