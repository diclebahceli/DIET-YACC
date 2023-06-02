# Programming Language DIET
Group Members: Recep Samet Yigitkalan, Dicle Bahceli


## Syntax
```
<sign> ::= "+" | "-"

<digit> ::="0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"

<nonzero> ::= "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"

<integer> ::= [ <sign> ] (<digit> | <nonzero>{<digit>}) 

<float> ::= [ <sign> ] <integer> "." { <digit> }

<letter> ::="a" | "b" | "c" | "d" | "e" | "f" | "g" | "h" | "i" | "j" | "k" 
| "l" | "m" | "n" | "o" | "p" | "r" | "s" | "t" | "u" | "v" | "y" | "z" 
| "w" | "x" | | "A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J" 
| "K" | "L" | "M" | "N" | "O" | "P" | "R" | "S" | "T" | "U" | "V" | "Y" 
| "Z" | "W" | "X"

<word> ::= <letter>{<letter>}

<symbol> ::= "!" | """ | "#" | "$" | "%" | "&" | "'" | "(" | ")" 
| "*" | "+" | | "-" | "." | "/" | ":" | ";" | "<" | "=" | ">" | "?" | "@" 
| "[" | "" | "]" | "^" | "_" | "`" | "{" | "|" | "}" | "~" | 

<char> ::= "'"<any_character>"'"

<string> ::= '"'{<character>}'"'

<boolean> ::= "true" | "false"

<type> ::= "int" | "flt" | "boo" | "str" | "chr"

<conditionalOp> ::= "==" | "!=" | "<" | ">" | "<=" | ">="

<multiplicationOp> ::= "*" | "/"

<arithmaticOp> ::= "+" | "-"

<operator> ::= "*" | "/" | "+" | "-"

<literal> ::= <integer> | <string> | <float> | <boolean>

<identifier> ::= (<letter>|"_") ({<letter>} | {<digit>} | {_})

<expression> ::= <literal> {<operator><literal>}

<variable> ::= <type> <identifier>

<parameter> ::= <type> <identifier>

<declaration> ::= <variable> "=" <expression>

<assignment> ::= <identifier> "=" <expression>

<condition> ::= [!] (<literal> | <identifier>) <conditionalOp> (<literal> | <identifier>) 

<condition-sequance> ::= <condition> {("&" | "|") <condition>} 

<statement> ::= <declaration> | <assignment> | <if-statement> 
        | <while-statement> | <block> 

<block> ::= <statement>{<statement>}

<if-statement> ::= "if" "(" <condition-sequance> ")" "{" <block "}" 
			{ "elsif" "("<condition-sequance>")" "{" <block "}" }
			["else" "{" <block> "}"]

<while-statement> ::= "while" "(" <condition-sequance> ")" "{" <block> "}"

<comment> ::= "``" {<_anycharacter_>} | "```" {<_anycharacter_>} "```"

<functions> ::= "df" (<type> | "void") <identifier> "("{<parameter>}")" "{" <block> "}"
```
## Explanations about the language

- Takes a file with extension .dt
- Has if, else if, else, while, terminal values like integer, float, string, char, function definitions, commenting ability, declaring variables, comparing operators, & and | logic operators.

- You can run your program by running the makefile and giving it to myprog as input:

make
./diet < exampleprog1.dt
