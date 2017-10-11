## Description

This project is to collect fun quotes from/by/to Vietnamese developers.
Let's make our tough life fun.

## Contributing

1. Create a custom file under `data/`. For example, `data/ngoctrinh.txt`
1. Add quotes there. Use `%` between quotes.
1. Feel free to add link to the quote. Use http://web.archive.org/ if possible.

## Usage

Pack all data and convert to `fortune` format automatic using
```bash
./bin/fortune.sh
```
and enjoy
```bash
fortune fortune-vn
```

## TODO

WIP. Stay tuned. Here is our TODO list.

- [ ] Compiling `data/*` to `fortune(6)` data format so you can see our cookies from
      your terminal, e.g, `fortune`
- [ ] Having an useful `cli` tool to get random quote from our data set.
- [ ] Having a simple `API` to generate quote :)

## License

[CC BY-NC-ND 3.0](https://creativecommons.org/licenses/by-nc-nd/3.0/)
