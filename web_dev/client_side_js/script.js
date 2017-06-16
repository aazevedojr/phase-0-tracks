console.log("The script is running!");

function changePicture(event) {
  console.log("Shuffle!")
  drawing.src = "drawings/" + drawings[Math.floor((Math.random() * drawings.length))] + ".jpg";
};

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
];

drawing.addEventListener("click", changePicture);