#! /usr/bin/env bash

# Purpose : Compile all data/*.txt and generate .data file for `fortune`
# License : MIT
# Author  : @stephentt-me @icy
# See also: pr #2 and pr #7

D_ROOT="$(dirname "${BASH_SOURCE[0]:-.}")/../"
F_OUTPUT="${D_ROOT}/fortune-vn"

export PATH=$PATH:/usr/games/ # Well, it's Ubuntu...

_fortune() {
  cat "${D_ROOT}/data"/*.txt \
  | ruby -e 'puts STDIN.readlines.join.split("%").map(&:strip).delete_if(&:empty?).join("\n%\n")' \
  > "$F_OUTPUT"

  if command -v strfile >/dev/null; then
    strfile -c "%" "$F_OUTPUT" || return 1
    echo >&2 "Fortune data file is written to ${F_OUTPUT}.dat."
    echo >&2 ""
    echo >&2 "You can use them by \`fortune fortune-vn\`. Sample output:"
    echo >&2 ""
    fortune "$(basename "$F_OUTPUT")"
    echo >&2 ""
    echo >&2 "Have fun!"
  else
    echo >&2 ":: \`strfile\` command not found. Package \`fortune-mod\` not installed?"
    return 1
  fi
}

_fortune
