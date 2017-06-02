// HORSES

var horseColors = ["vantablack", "forest green", "true blue", "mellow yellow", "purple haze", "lava red"]
var horseNames = ["BoJack Horseman", "Secretariat", "Tiffany", "James Baxter"]

horseColors.push("TiO2 white")
horseNames.push("Potranca", "Silverlight")
horseColors.splice(4,1) //It turns out 'purple haze' is not a color at all!

//console.log(horseColors)
//console.log(horseNames)

var horseInfo = {}

for (var i = 0; i <= horseNames.length - 1; i++) {
  horseInfo[horseNames[i]] = horseColors[i]
}

console.log(horseInfo)


// CARS

function  Car(brand, selfDriving, color, price) {
  this.brand = brand;
  this.selfDriving = selfDriving;
  this.color = color;
  this.price = price;
  this.honk = function(times) {
    console.log('Beeb! '.repeat(times))
  };
  this.driveMeHome = function() {
    if (this.selfDriving) {
      console.log('You have arrived home safely.')
    } else {
      console.log('Better call an uber!')
    }
  }
}

var car = new Car('Tesla', true, 'vantablack', 1000000)

console.log(car.color + ' ' + car.brand + ':')
car.honk(3)
car.driveMeHome()

var beetle = new Car('Volkswagen', false, 'TiO2 white', 5000)

console.log(beetle.color + ' ' + beetle.brand + ':')
beetle.honk(2)
beetle.driveMeHome()