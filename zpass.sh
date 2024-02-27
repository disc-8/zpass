#!/usr/bin/bash

VERSION="2024.02.27"
V_STAGE="Alpha"
V_CODENAME="Daugavpils"
HELP="ДiSC-8 [32mzpass [0m$VERSION $V_STAGE «[32m$V_CODENAME[0m»
a reasonably secure password generator and manager
--------------------------------------------------
[1mRecommended usage:[0m
\t[32m$[0m zpass [0m[[32musername[0m] [[32mwebsite[0m]

[1mAlternative usage example:[0m
Feel free to change it around a bit, as the randomness will add extra security.
\t[32m$[0m zpass [0m[[32mwebsite[0m] [[32mpet's name[0m]
--------------------------------------------------
Copyright Артём Васильев, ДiSC-8 Group 2024. [1mAll rights reserved.[0m
"

passcalc(){
  # NOTE FOR CONTRIBUTORS:
  # DO **NOT** EDIT THIS CODE UNLESS IT'S REFACTORING
  # IF YOU CHANGE THE ALGORITHM IT WILL BREAK EVERYTHING
 echo "$1"|sha256hmac -K "$2"     |sha384hmac -K "$SECRET"|sha512sum|xxd -p -r|tr -cd '[:print:]'|tr -d ' \n';
 echo "$1"|sha512hmac -K "$SECRET"|sha256hmac -K "$2"     |sha512sum|xxd -p -r|tr -cd '[:print:]'|tr -d ' \n';
 echo "$1"|sha384hmac -K "$2"     |sha512hmac -K "$SECRET"|sha512sum|xxd -p -r|tr -cd '[:print:]'|tr -d ' \n';
 echo "$1"|sha384hmac -K "$SECRET"|sha224hmac -K "$2"     |sha512sum|xxd -p -r|tr -cd '[:print:]'|tr -d ' \n';
}
if [ -z "$2" ]; then
 printf "$HELP"
 exit
fi

 read -sp "[[32mzpass[0m:[32m$(date +%T)[0m] Master password:
[32m>[0m " SECRET_CHUNK
 SECRET="$(printf "$SECRET_CHUNK"|sha384sum|xxd -ps -r)"
 echo
printf "[[32mzpass[0m:[32m$(date +%T)[0m] Password for [1;32m$1[0m at [1;32m$2[0;1m:[0;32m\n"
passcalc "$1" "$2"
printf "\n[0m"
