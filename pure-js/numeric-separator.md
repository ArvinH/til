# Numeric Separators: _

When we write a large number, we might write something like this:
let total = 12123421;
At this point, because the number is so long, the person reading the code often takes several seconds to count the length of the number. Instead of using numeric separator, we could write:

let total = 12_123_421;

With _, we can quickly read out the number: 12 million 123 thousand and 421. _ is used to separate the number, with no practical meaning. Such grammar candy can help us write large numbers that are easier to read.


https://stackoverflow.com/questions/58965960/javascript-numeric-separators
