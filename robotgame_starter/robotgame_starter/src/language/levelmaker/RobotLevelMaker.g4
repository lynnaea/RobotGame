grammar RobotLevelMaker;

program: statement+;
statement: moveStatement | rotateStatement | loopStatement | logStatement;
moveStatement: MOVE EOS;
rotateStatement: ROTATE EOS;
loopStatement: LOOP (LPAREN amount RPAREN) LCURLY statement+ RCURLY;
amount: INT;
logStatement: LOG (LPAREN logMessage RPAREN)? EOS;
logMessage: STRING;
