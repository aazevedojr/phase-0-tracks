// PSEUDOCODE

//  Define 'longest' function that takes an array of strings as parameter;
//  Declare 'longer' variable to hold the longest string length (start as 0);
//  FOR each element of the array, DO:
//  - assign its own length as a its key value,
//  - IF string's length > longer; longer = string's length.
//  END loop;
//  RETURN the string whose key equals length;
//  END function definition.

//  Define 'match' function that takes two objects as parameters;
//    FOR each (i) KEY of the first object, DO:
//      FOR each (j) KEY of the second object, DO:
//        IF key[j] == key[i]
//          RETURN value[j] == value[i]
//        END conditional
//      END loop
//    END loop
//    RETURN false
//  END function definition

//  Define 'babble' function that takes a number as argument ('elements');
//    Define array 'gibberish';
//    Define array of letters of the alphabet ('alphabet');
//    FOR i = 0 to i = elements DO:
//      variable 'length' = random(1 to 10);
//      FOR j = 0 to j = length DO:
//        gibberish[i] << alphabet[random]
//      END loop
//     END loop
//    RETURN gibberish
//  END function definition


// BUSINESS LOGIC

function longest(strings) {
  var lengths = {}
  var longer = 0
  for (var i = strings.length - 1; i >= 0; i--) {
    lengths[strings[i].length] = strings[i]
    if (strings[i].length > longer) {
      longer = strings[i].length
    }
  }
  return lengths[longer]
}

function match(object1, object2) {
  var keys1 = Object.keys(object1)
  var keys2 = Object.keys(object2)
  for (var i = keys1.length - 1; i >= 0; i--) {
    for (var j = keys2.length - 1; j >= 0; j--) {
      if (keys2[j] == keys1[i] && object1[keys1[i]] == object2[keys2[j]]) {
        return true
      }
    }
  }
  return false
}

function babble(elements) {
  var gibberish = []
  var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  var length = 0
  for (var i = 0; i <= elements - 1; i++) {
    length = Math.floor(Math.random()*11)
    gibberish[i] = ''
    for (var j = length; j >= 0; j--) {
      gibberish[i] += (alphabet[Math.floor(Math.random()*26)])
    }
  }
  return gibberish
}


// TEST CODE

//var phrases = ["long phrase","longest phrase","longer phrase"]
//console.log(longest(phrases))
//
//var horseNames = ["BoJack Horseman", "Secretariat", "Tiffany", "James Baxter"]
//console.log(longest(horseNames))

//console.log(match({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
//console.log(match({name: "Steven", age: 54}, {name: "Jesus", age: 2017}))
//console.log(match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}))
//console.log(match({animal: "Dog", legs: 4}, {animal: "Tripod", legs: 3}))

//console.log(babble(3))

for (var i = 0; i < 10; i++) {
  var nonsense = babble(5)
  console.log('TEST ' + (i + 1))
  console.log(nonsense)
  console.log('The longest word is: ' + "'" + longest(nonsense) + "'")
}