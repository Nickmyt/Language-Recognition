%{
  /*Νο descriptions */
%}
%%
 [\t]+  {/*no action*/}
 Given {printf(" %s: Einai Rima \n",yytext);}
 Point|Line|Triangle {printf("%s : Einai Geometriki ontontita \n",yytext);}
 Square|Pentagon {printf("%s : Einai Geometriki ontontita \n",yytext);}
 [A-H]|[A-H]}{2}|[A-H]{3}|[A-E]{4}|[A-E]{5} {for(int count =0;count<yyleng-1;count++){
                                                     if(strchr(yytext+1+count,yytext[count])){
                                                             REJECT;}}
                                                             printf("%s  : Einai Onoma geometrikis ontontita\n",yytext);}

 [A-Z]+ {printf("%s : Den einai onoma geometrikis ontontitas \n",yytext);}

%%
int Main(){
 printf("Enter a Sentence :");
 yylex();
 return 0;
}
/*
Για αντιμετώπιση προβλημάτων με το yywrap
int yywrap(){
 return(1);
}
*/
