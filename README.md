[![Build Status](https://travis-ci.org/icy/fortune-vn.svg?branch=master)](https://travis-ci.org/icy/fortune-vn)

## Table of Contents

* [Description](#description)
* [Usage](#usage)
  * [One-liner](#one-liner)
  * [With fortune](#with-fortune)
  * [With cowsay](#with-cowsay)
  * [With Twitter](#with-twitter)
* [TODO](#todo)
* [Contributing](#contributing)
* [License](#license)

## Description

This project is to collect fun quotes from/by/to Vietnamese developers.
Let's make our tough life fun.

## Usage

### One-liner

Without installing the project file locally, you may need `curl`, `awk`
and `sed` tools to get a random quote:

```
$ curl -Lso- https://raw.githubusercontent.com/icy/fortune-vn/master/fortune-vn \
  | awk '{if($0 == "%") {printf("\n");} else { printf("%s<|>", $0); }}' \
  | shuf -n 1 \
  | sed -e 's#<|>$##g' -e "s#<|>#\\n#g"
```

This one-liner can be downloaded and executed too:

```
$ curl -Lso- https://raw.githubusercontent.com/icy/fortune-vn/master/bin/oneliner.sh \
  | bash
```

You can even provide `cowsay` options to this one-liner. For example to
specify column width:

```
$ curl -Lso- https://raw.githubusercontent.com/icy/fortune-vn/master/bin/oneliner.sh \
  | COWSAY="-W 80" bash
```

### With fortune

We compile a stable version of all quotes in the file `fortune-vn`.
You generate a binary form for this file as below

```
$ strfile -c "%" fortune
```

New file `fortune-vn.dat` will be created and you can use them:

```
$ fortune fortune-vn
```

### With cowsay

You can pipe output from `fortune` to `cowsay`:

```
$ fortune fortune-vn | cowsay
```

`cowsay` is not maintained anymore. On some distribution (e.g, `ArchLinux`)
the program may not handle `utf-8` strings correctly. If that's the case,
please install `coway` from this repository

  https://github.com/icyfork/rank-amateur-cowsay

## With Twitter

Follow https://twitter.com/fortune_vn. This channel is updated by a bot
developed and maintained by [@tentamen](https://github.com/tentamen/fortune-vn-twit).

## TODO

WIP. Stay tuned. Here is our TODO list.

- [x] Compiling `data/*` to `fortune(6)` data format so you can see our cookies from
      your terminal, e.g, `fortune`
- [ ] Having an useful `cli` tool to get random quote from our data set.
- [ ] Having a simple `API` to generate quote :)
- [ ] Collecting the first 1k quotes :)

## Contributing

**Important**: Never commit your changes for `fortune-vn`. This file should
be stable and maintained by release engineer.

1. Take a look at our [simple notes](data/README.md)
1. Create a custom file under `data/`. For example, [data/ngoctrinh.txt](data/ngoctrinh.txt)
1. Add quotes there. Use `%` between quotes.
1. Feel free to add link to the quote. Use http://web.archive.org/ if possible.

The maintainer's environment consists of `Ruby`, `fortune-mod` and `make`
programs. Type `make all` to compile all things and see a random quote.

Feel free to take a look at the sample [Makefile](Makefile).

## License

[CC BY-NC-ND 3.0](https://creativecommons.org/licenses/by-nc-nd/3.0/)
