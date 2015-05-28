%option noyywrap
%{
#include "Parser2.h"
#include <iostream>
#include <QString>
int columna2=0;
%}

letra   [A-Za-z]
dig     [0-9]
iden   ({letra}({letra}|{dig}|[_])+)
num  ({dig}+)
dec   ({num}[.]{num})
%%

"variable"                          {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return var; }
"funcion"                           {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return fun; }
"retornar"                         {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return ret; }

"entero"                            {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return dent; }
"decimal"                          { columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return ddec; }
"booleano"                       { columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return dbool; }

"verdadero"                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return ver; }
"falso"                                {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return fal; }

","                                       {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return coma;}
";"                                       {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return pycoma;}
":="                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return igualasig; }

"<"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return expabre; }
">"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return expcierra; }

"+"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return mas;}
"-"                                      {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return menos;}
"*"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return por; }
"^"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return elev; }
"%"                                   {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return mod;}

"y"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return y;}
"o"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return o; }
"no"                                  {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return no; }
"mayor"                           {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return mayor; }
"menor"                          {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return menor;}
"mayoroigual"               {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return mayori;}
"menoroigual"              {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return menori; }
"igual"                              {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return igual; }
"diferente"                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return dif; }

"("                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return parentesisa;}
")"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return parentesisc;}
"{"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return llavea; }
"}"                                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return llavec; }

"si"                                    {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return si; }
"sino si"                           {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return sinosi;}
"sino"                               {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return sino;}
"mientras"                     {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return mientras; }
"para"                              {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return para; }

{iden}                              {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return iden; }
{num}                              {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return num; }
{dec}                               {columna2=columna2+strlen(yy2lval.STR); strcpy(yy2lval.STR, yy2text); return dec; }

[[:blank:]]             { /*Se ignoran los espacios en blanco */ }
. {
 std::cout <<"Error Lexico "<<yy2text<<" posicion "<<columna2<<std::endl;
 }
%%
