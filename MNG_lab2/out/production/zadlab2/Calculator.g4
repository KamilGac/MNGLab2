grammar Calculator;

expression: multiplicativeExpression ((PLUS | MINUS) multiplicativeExpression)*;
multiplicativeExpression: powerExpression ((MULT | DIV) powerExpression)*;
powerExpression: sqrtExpression (POW sqrtExpression)*;
sqrtExpression: integralExpression | SQRT sqrtExpression;
integralExpression: MINUS INT | INT | LPAREN expression RPAREN;

INT: [0-9]+ ;
PLUS: '+' ;
MINUS: '-' ;
MULT: '*' ;
DIV: '/' ;
POW: '^';
SQRT: 'sqrt';
LPAREN: '(';
RPAREN: ')';
WS : [ \t\r\n]+ -> skip ;