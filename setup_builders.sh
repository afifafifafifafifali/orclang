sudo apt-get update
sudo apt-get install flex
sudo apt-get install bison
which flex  /*Sanity check to make sure flex is installed*/
which bison /*Sanity check to make sure bison is installed*/

/*running the compiler*/

set -e

cd src
yacc -d syntax2.y
lex semantics.l
cc lex.yy.c y.tab.c -o output
./output < sample