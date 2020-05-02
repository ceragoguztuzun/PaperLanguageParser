%option yylineno
digit  	     [0-9]
signs        [+-]
integer      {digit}+
double       {digit}*(\.)?{digit}+
string       \"[^\"]*\"
url 	     \"https?:\/\/[a-zA-Z0-9\#\+\=\-\\/_\*]+[\.a-zA-z]+\"
identifier   [A-Za-z]({digit}|[A-Za-z])*
%%
\n ;
return return(RETURN);
main return(MAIN);
\+ return(PLUS);
\- return(MINUS);
\/ return(DIVIDE);
\* return(MULTIPLY);
\!\= return(NOT_EQUAL);
\=\= return(COMPARISON);
\= return(ASSIGN_OP);
\< return(SMALLER_THAN);
\> return(BIGGER_THAN);
\<\= return(SMALLER_THAN_OR_EQ);
\>\= return(BIGGER_THAN_OR_EQ);
, return(COMMA);
\; return(SEMICOLON);
int return(INT_TYPE);
string return(STRING_TYPE);
double return(DOUBLE_TYPE);
void return(VOID_TYPE);
if return(IF);
else return(ELSE);
while return(WHILE);
for return(FOR);
or return(OR);
xor return(XOR);
and return(AND);
not return(NOT);
ON return(ON);
OFF return(OFF);
get return(GET);
read return(READ);
print return(PRINT);
println return(PRINTLN);
connect return(CONNECT);
receive return(RECEIVE);
send return(SEND);
switch return(SWITCH);
temperature return(TEMPERATURE);
heat return(HEAT);
time return(TIME);
sound return(SOUND);
humidity return(HUMIDITY);
airPressure return(AIR_PRESSURE);
airQuality return(AIR_QUALITY);
light return(LIGHT);
#[^#]*# ;
\( return(LEFT_PARANTHESIS);
\) return(RIGHT_PARANTHESIS);
\{ return(LEFT_CURLY_BRACKET);
\} return(RIGHT_CURLY_BRACKET);
\[ return(LEFT_SQUARE_BRACKET);
\] return(RIGHT_SQUARE_BRACKET);
{integer} return(INTEGER);
{double} return(DOUBLE);
{url} return(URL);
{identifier} return(IDENTIFIER);
{string} return(STRING);
. ; 
%%
int yywrap() { return 1; }