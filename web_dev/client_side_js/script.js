console.log("The script is running!")

//function changePicture(event) {
//  console.log("Clicked on picture!")
//
//}

var drawing = document.getElementById("logo");

var drawings = [
  "ariados",
  "clamperl",
  "ekans",
  "him",
  "ice_king",
  "idk",
  "lugia",
  "owl",
  "zygarde"
]

drawing.src = "drawings/" + drawings[Math.floor((Math.random() * drawings.length))] + ".jpg";