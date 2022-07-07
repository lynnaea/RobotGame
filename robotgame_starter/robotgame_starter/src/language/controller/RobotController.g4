grammar RobotController;

program: statement+;
statement: moveStatement | rotateStatement | loopStatement | logStatement;
moveStatement: MOVE EOS;
rotateStatement: ROTATE EOS;
loopStatement: LOOP (LPAREN amount RPAREN) LCURLY statement+ RCURLY;
amount: INT;
logStatement: LOG (LPAREN logMessage RPAREN)? EOS;
logMessage: STRING;


MOVE: 'move';
ROTATE: 'rotate';
EOS: ';';

LOOP: 'loop';
LOG: 'log';
LPAREN: '(';
RPAREN: ')';
LCURLY: '{';
RCURLY: '}';
INT: [0-9]+;
STRING: '"' (~[\r\n])* '"';


WS: (' '| '\t' | '\n' | '\r') -> skip;
COMMENT: '/*' .*? '*/' -> skip;
LINE_COMMENT: '//' ~[\r\n]* -> skip;