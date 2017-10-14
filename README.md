[![Build Status](https://travis-ci.org/icy/fortune-vn.svg?branch=master)](https://travis-ci.org/icy/fortune-vn)

## Table of Contents

* [Description](#description)
* [Usage](#usage)
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

### With fortune

We compile a stable version of all quotes in the file `fortune-vn`.
You generate a binary form for this file as below

```
$ strfile -c "%" fortune
```

New file `fortune-vn.dat` will be created and you can use them as below

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

1. Take a look at our [simple notes](data/README.md)
1. Create a custom file under `data/`. For example, [data/ngoctrinh.txt](data/ngoctrinh.txt)
1. Add quotes there. Use `%` between quotes.
1. Feel free to add link to the quote. Use http://web.archive.org/ if possible.

Feel free to take a look at the sample [Makefile](Makefile).

## License

[CC BY-NC-ND 3.0](https://creativecommons.org/licenses/by-nc-nd/3.0/)
