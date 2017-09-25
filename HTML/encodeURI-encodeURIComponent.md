## The difference between encodeURI and encodeURIComponent


encodeURI will leave the listed characters as it is assumed that the entire URI is being encoded:

encodeURI('http://example.com/foo bar/baz.html');
//produces "http://example.com/foo%20bar/baz.html"
encodeURIComponent will escape everything as it is assumed that the string is to be used as part of a query-string:

'http://example.com?foo=' + encodeURIComponent('http://example.com/fizz/buzz.html');
//produces "http://example.com?foo=http%3A%2F%2Fexample.com%2Ffizz%2Fbuzz.html"

source:
* https://www.w3schools.com/jsref/jsref_encodeuricomponent.asp
* https://stackoverflow.com/questions/13567894/javascript-encodeuricomponent-with-backslash

