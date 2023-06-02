%{
#include <stdio.h> 
%}

/* Definitions */

whitespace  [ \t]+
digit       [0-9]
letter      [a-zA-Z]
nonzero     [1-9]
type        int|flt|boo|str|chr
comment     "``".*
commentBlock "```"([^`]*|[\n]*)"```"

checkEquals (==)
checkNot    (!=)
checkBigger (>)
checkSmall  (<)
checkBigEq  (>=)
checkSmalEq (<=)
conditionalOp   (==|!=|<|>|<=|>=)


string      ["][^"]*["]
charErr     ['][^'"].+[']
char        ['][^'"][']
integer     ({digit}|({nonzero}{digit}+))
integerErr  ([0]{digit}+)
float       ({integer}[.]{digit}*) 
floatErr    ({integerErr}[.]{digit}*)
bool        true|false


sign        [+|-]
plus        [+]
minus       [-]
divide      [/]
mult        [*]
equals      [=]
underscore  [_]
operator    [*|/|+|-]

identifier  ({letter}|[_])({letter}|{digit}|[_])*
literal     {integer}|{string}|{bool}|{char}|{float}
expression  {literal}([\ ]*{operator}[\ ]*{literal})*
variable    {type}[\ ]*{identifier}
parameter   {type}[\ ]*{identifier}
declaration {variable}[\ ]*[=][\ ]*{expression}
assignment  {identifier}[\ ]*[=][\ ]*{expression}
condition   [!]?({literal}|{identifier})[\ ]*{conditionalOp}[\ ]*({literal}|{identifier})
block       {statement}+
condition-sequence  {condition}[\ ]*([&||][\ ]*{condition})*
statement   {declaration}|{assignment}|{if-statement}|{block}



 
%%

if                      { printf("IF "); }

elsif                   { printf("ELSIF "); }

else                    { printf("ELSE "); }

while                   { printf("WHILE ");}

df                      { printf("FUNCTION ");}

return                  { printf("RETURN ");}

{commentBlock}          { printf("COMMENT BLOCK ");}

{comment}               { printf("COMMENT LINE ");}

"("                     { printf("LPAREN "); }

")"                     { printf("RPAREN "); }

"{"                     { printf("LBRACE "); }

"}"                     { printf("RBRACE "); }

"&"                     { printf("AND "); }

"|"                     { printf("OR "); }

{checkBigger}           { printf("GREATER ");}

{checkEquals}           { printf("EQUALS ");}

{checkNot}              { printf("NOT EQUALS ");}

{checkSmalEq}           { printf("SMALLER OR EQUALS ");}

{checkBigEq}            { printf("GREATER OR EQUALS ");}

{checkSmall}            { printf("SMALLER ");}

{equals}                { printf("EQUALS ");}

{plus}                  { printf("PLUS "); } 

{minus}                 { printf("MINUS "); }

{divide}                { printf("DIVIDE "); }

{mult}                  { printf("MULTIPLY "); }

{type}                  { printf("TYPE ");}

{bool}                  { printf("BOOLEAN ");}

{integerErr}            { printf("WRONGINTEGERFORMAT "); }

{integer}               { printf("INTEGER ");}

{floatErr}              { printf("WRONGFLOATFORMAT "); }

{float}                 { printf("FLOAT ");}

{string}                { printf("STRING "); }

{charErr}               { printf("WRONGCHARFORMAT "); }

{char}                  { printf("CHARACTER ");}

{identifier}            { printf("IDENTIFIER ");}

;   	    	        { printf("SEMICOLON ");}

\n                      { printf("\n");}

{whitespace}            ;

.			            { printf("SYNTAX ERROR! ");}

%%


int main(void) {
    yylex();
    return 0;
}
