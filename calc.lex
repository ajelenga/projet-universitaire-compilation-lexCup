import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column


entier = [0-9]+
booleen = "vrai"|"faux"
plus = "+"
mult = "*"
inferieur = "<"
egalite = "=="
negation = "non"
operaet = "et"
operaou = "ou"
lettre = [a-z]+
egale = "="
arobase = "@"
affichage = "PRINT"


%%
"(" {return new Symbol(sym.PARENOUV);}
")" {return new Symbol(sym.PARENFER);}

{entier} { return new Symbol (sym.ENTIER, new Integer(yytext()));}
{booleen} { return new Symbol (sym.BOOLEEN, new String (yytext()));}
{plus} { return new Symbol (sym.PLUS, new String (yytext()));}
{mult} { return new Symbol (sym.MULT, new String (yytext()));}
{inferieur} { return new Symbol (sym.INFERIEUR, new String (yytext()));}
{egalite} { return new Symbol (sym.EGALITE, new String (yytext()));}
{negation} { return new Symbol (sym.NEGATION, new String (yytext()));}
{operaet} { return new Symbol (sym.OPERAET, new String (yytext()));}
{operaou} { return new Symbol (sym.OPERAOU, new String (yytext()));}
{lettre} { return new Symbol (sym.LETTRE, new String (yytext()));}
{egale} { return new Symbol (sym.EGALE, new String (yytext()));}
{arobase} { return new Symbol (sym.AROBASE, new String(yytext())); }
{affichage} { return new Symbol (sym.AFFICHAGE, new String(yytext())); }


\n {return new Symbol(sym.SAUT);} 
" " {}
[\t]+ {}
. { System.out.println("Pas conforme ! " + (yyline+1)+ " " +yycolumn + " " + yytext());}  //ne rien faire

