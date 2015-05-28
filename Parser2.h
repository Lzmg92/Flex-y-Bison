/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY2_PARSER2_H_INCLUDED
# define YY_YY2_PARSER2_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yy2debug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    var = 258,
    fun = 259,
    ret = 260,
    dent = 261,
    ddec = 262,
    dbool = 263,
    ver = 264,
    fal = 265,
    coma = 266,
    pycoma = 267,
    igualasig = 268,
    expabre = 269,
    expcierra = 270,
    mas = 271,
    menos = 272,
    por = 273,
    elev = 274,
    mod = 275,
    y = 276,
    o = 277,
    no = 278,
    mayor = 279,
    menor = 280,
    mayori = 281,
    menori = 282,
    igual = 283,
    dif = 284,
    parentesisa = 285,
    parentesisc = 286,
    llavea = 287,
    llavec = 288,
    si = 289,
    sinosi = 290,
    sino = 291,
    mientras = 292,
    para = 293,
    iden = 294,
    num = 295,
    dec = 296
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE YYSTYPE;
union YYSTYPE
{
#line 14 "Parser2.y" /* yacc.c:1909  */

  char STR [256];
 

#line 101 "Parser2.h" /* yacc.c:1909  */
};
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yy2lval;

int yy2parse (void);

#endif /* !YY_YY2_PARSER2_H_INCLUDED  */
