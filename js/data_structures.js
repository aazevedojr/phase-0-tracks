var horseColors = ["vantablack", "forest green", "true blue", "mellow yellow", "purple haze", "lava red"]
var horseNames = ["BoJack Horseman", "Secretariat", "Tiffany", "James Baxter"]

horseColors.push("TiO2 white")
horseNames.push("Potranca", "Silverlight")
horseColors.splice(4,1) //It turns out 'purple haze' is not a color at all!

//console.log(horseColors)
//console.log(horseNames)

var horseInfo = {}

for (var i = 0; i <= horseNames.length - 1; i++) {
  var name = horseNames[i];
  var color = horseColors[i];
  horseInfo[name] = color;
}

console.log(horseInfo)