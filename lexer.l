%{
#include <stdio.h>
%}

%%

[0-9]+                  { printf("NUMBER: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*  { printf("IDENTIFIER: %s\n", yytext); }
"="                     { printf("ASSIGNMENT: %s\n", yytext); }
"+"                     { printf("PLUS: %s\n", yytext); }
"-"                     { printf("MINUS: %s\n", yytext); }
"*"                     { printf("MULTIPLY: %s\n", yytext); }
"/"                     { printf("DIVIDE: %s\n", yytext); }
"("                     { printf("LPAREN: %s\n", yytext); }
")"                     { printf("RPAREN: %s\n", yytext); }
[ \t\n]+                { /* whitespace */ }
.                       { printf("UNKNOWN: %s\n", yytext); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}



