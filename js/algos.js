//  Define 'longest' function that takes an array of strings as parameter;
//  Declare 'longer' variable to hold the longest string length (start as 0);
//  FOR each element of the array, DO:
//  - assign its own length as a its key value,
//  - if string's length > longer; longer = string's length.
//  END loop;
//  RETURN the string whose key equals length;
//  END function definition.

function longest(strings) {
  var lengths = {};
  var longer = 0;
  for (var i = strings.length - 1; i >= 0; i--) {
    lengths[strings[i].length] = strings[i];
    if (strings[i].length > longer) {
      longer = strings[i].length
    }
  }
  return strings[longer]
};

var phrases = ["long phrase","longest phrase","longer phrase"];
console.log(longest(phrases));