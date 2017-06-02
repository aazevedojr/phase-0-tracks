var horse_colors = ["vantablack", "forest green", "true blue", "mellow yellow", "purple haze", "lava red"]
var horse_names = ["BoJack Horseman", "Secretariat", "Tiffany", "Silverlight"]

horse_colors.push("TiO2 white")
horse_names.push("Potranca", "James Baxter")
horse_colors.splice(4,1) //It turns out 'purple haze' is not a color at all!

console.log(horse_colors)
console.log(horse_names)