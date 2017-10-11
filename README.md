## Description

This project is to collect fun quotes from/by/to Vietnamese developers.
Let's make our tough life fun.

## Contributing

1. Create a custom file under `data/`. For example, `data/ngoctrinh.txt`

Note: Make sure the file name extension is `.txt` and don't use `all.txt` (reserved name)

2. Add quotes there. Use `%` between quotes.

3. Feel free to add link to the quote. Use http://web.archive.org/ if possible.

## Usage

Pack all data and convert into `fortune` format automatic using
```bash
./build.sh
```
and enjoy
```bash
fortune data/all.txt
```

## TODO

WIP. Stay tuned. Here is our TODO list.

- [x] Compiling `data/*` to `fortune(6)` data format so you can see our cookies from
      your terminal, e.g, `fortune`
- [ ] Having an useful `cli` tool to get random quote from our data set.
- [ ] Having a simple `API` to generate quote :)

## License

[CC BY-NC-ND 3.0](https://creativecommons.org/licenses/by-nc-nd/3.0/)
