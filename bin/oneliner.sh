#!/usr/bin/env bash

# Purpose : Script to get random quote from Github fortune-vn data
# Author  : Ky-Anh Huynh
# License : MIT
# Usage   :
#
#   $ curl -Lso- https://raw.githubusercontent.com/icy/fortune-vn/master/bin/oneliner.sh | bash
#   $ curl -Lso- https://raw.githubusercontent.com/icy/fortune-vn/master/bin/oneliner.sh | COWSAY="-W 80" bash
#

curl -Lso- https://raw.githubusercontent.com/icy/fortune-vn/master/fortune-vn \
| awk '{if($0 == "%") {printf("\n");} else { printf("%s<|>", $0); }}' \
| shuf -n 1 \
| sed -e 's#<|>$##g' -e "s#<|>#\\n#g" \
| sed -e 's#"#^#' \
| {
  if [[ -n "${COWSAY:-}" ]]; then
    cowsay ${COWSAY}
  else
    cat
  fi
}
