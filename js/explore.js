// REVERSING A STRING

// Declare a string.
// Iterate from the first character to the last, doing:
//  Move character at position 0 to position -1,
//  Move character at position 1 to position -2...
// Stop when new position = old position OR
// if the character has already been moved.
// Print the string.

var str = "DevBootcamp"
var rts = ""

for (var i = str.length - 1; i >= 0; i--) {
  rts += str[i]
}

console.log(rts)