application = {
  title: "INTERIOR DESIGNER JOB APPLICATION - draft",
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

p application

application[:title] = "INTERIOR DESIGNER JOB APPLICATION - final"
application[:name] << " Azevedo"
application[:address] << ", Narnia"
application[:ombre_is_old] = !application[:ombre_is_old]
application[:ombre_is_medieval] = !application[:ombre_is_medieval]
application[:hiered] = true

p application

# What happens if you store a key in a variable,
# then access the hash using the variable?

variable = :title

p application[variable]

# What happens when you try the expression below?

p application[:name] + application [:address]