application = {
  name: "Augusto",
  address: "Neverland",
  email: "augusto.azevedo.jr@gmail.com",
  phone: "415 579 6509",
  fave_shade_of_blue: "Aqua",
  paisley_wallpaper: false,
  chevrons_wallpaper: true,
  photorealistic: false,
  abstract: true,
  ombre_is_fierce: false,
  ombre_is_old: true,
  ombre_is_medieval: false
}

puts "INTERIOR DESIGNER JOB APPLICATION -- draft"
p application

application[:name] << " Azevedo"
application[:address] << ", Narnia"
application[:ombre_is_old] = !application[:ombre_is_old]
application[:ombre_is_medieval] = !application[:ombre_is_medieval]

puts "INTERIOR DESIGNER JOB APPLICATION -- final"
p application