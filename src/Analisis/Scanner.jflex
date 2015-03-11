package Analisis;
import Main.Inicio;
import java_cup.runtime.Symbol;


%%



%cupsym TablaSimbolos
%class Lexico
%cup
%public
%unicode
%line
%column
%char
%ignorecase

/*ER*/
numero =[0-9]+
letra =[a-zA-ZÑñ]+
alfanumerico=[a-zA-ZÑñ0-9]+
directorio={letra}:
contenido=[\"] [^\"\n]+ [\"\n]


%%


/* PALABRAS RESERVADAS */

"<estructura>"   {Inicio.agregarToken("&lt;estructura&gt;",yycolumn,yyline,"#4363C4"); }
"</estructura>"  {Inicio.agregarToken("&lt;&#47;estructura&gt;",yycolumn,yyline,"#4363C4");}

"<directorio>"   {Inicio.agregarToken("&lt;directorio&gt;",yycolumn,yyline,"#0A0A0B"); }
"</directorio>"  {Inicio.agregarToken("&lt;&#47;directorio&gt;",yycolumn,yyline,"#0A0A0B");}

"<carpeta>"      {Inicio.agregarToken("&lt;carpeta&gt;",yycolumn,yyline,"#0AD948");}
"</carpeta>"     {Inicio.agregarToken("&lt;&#47;carpeta&gt;",yycolumn,yyline,"#0AD948"); }

"<nombre>"       {Inicio.agregarToken("&lt;nombre&gt;",yycolumn,yyline,"#878686"); }
"</nombre>"      {Inicio.agregarToken("&lt;&#47;nombre&gt;",yycolumn,yyline,"#878686"); }

"<documento>"    {Inicio.agregarToken("&lt;documento&gt;",yycolumn,yyline,"#FF0000"); }
"</documento>"   {Inicio.agregarToken("&lt;&#47;documento&gt;",yycolumn,yyline,"#FF0000"); }

"<formato>"      {Inicio.agregarToken("&lt;formato&gt;",yycolumn,yyline,"#F48E08"); }
"</formato>"     {Inicio.agregarToken("&lt;&#47;formato&gt;",yycolumn,yyline,"#F48E08"); }

"<contenido>"    {Inicio.agregarToken("&lt;contenido&gt;",yycolumn,yyline,"#A912D3"); }
"</contenido>"   {Inicio.agregarToken("&lt;&#47;contenido&gt;",yycolumn,yyline,"#A912D3");}

{numero} {Inicio.agregarToken(yytext(),yycolumn,yyline,"#553C42");}
{alfanumerico} {Inicio.agregarToken(yytext(),yycolumn,yyline,"#553C42");}
{directorio} {Inicio.agregarToken(yytext(),yycolumn,yyline,"#553C42"); }
{contenido} {Inicio.agregarToken(yytext(),yycolumn,yyline,"#553C42");}



/* BLANCOS */
[ \t\r\f\n]+|<|>|"/" { /* Se ignoran */}

/* CUAQUIER OTRO */
. {Inicio.agregarErrorLexico(yytext(),yycolumn,yyline);}