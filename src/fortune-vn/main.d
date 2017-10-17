/*
  Purpose : Generate a random quote
  Author  : Ky-Anh Huynh
  License : MIT
*/

import std.stdio;

void main() {
  string fortuneVn = import("fortune-vn");

  import std.regex;
  import std.array;

  auto fortunes = fortuneVn.splitter(regex(r"^%$", "m")).array();
  // assert(fortunes.length > 1);

  import std.format;
  import std.random;
  import std.string;

  auto rnd = Random(unpredictableSeed);
  auto rno = uniform(0, fortunes.length, rnd);
  writefln("%s", fortunes[rno].strip());
}
