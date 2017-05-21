magic_kingdom = {
  name: "Magic Kingdom",
  unicorn_valley: {
    name: "Unicorn Valley",
    dwellers: ["Charlie", "Pinky", "Blu", "Liopleurodon"],
    info: {dangerous: true, evil: nil, magical_tier: 6}
  },
  fairy_lake: {
    name: "Fairy Lake",
    dwellers: ["Tooth", "Santa", "Godmother", "Queen"],
    info: {dangerous: false, evil: false, magical_tier: 8}
  },
  troll_cave: {
    name: "Troll Cave",
    dwellers: ["Internet", "Meme", "Bowser", "Bowser Jr."],
    info: {dangerous: true, evil: true, magical_tier: 2}
  },
  dragon_dungeon: {
    name: "Dragon Dungeon",
    dwellers: ["Luck", "Dragonite", "Drogon", "Rhaegal", "Viserion"],
    info: {dangerous: true, evil: false, magical_tier: 4}
  }
}

puts "Welcome to #{magic_kingdom[:name]}!"

puts"Beware of #{magic_kingdom[:unicorn_valley][:dwellers][1]} and #{magic_kingdom[:unicorn_valley][:dwellers][2]} when exploring the #{magic_kingdom[:unicorn_valley][:name]}!"

puts "#{magic_kingdom[:fairy_lake][:name]} might be safe, but the magical tier of that region is as high as #{magic_kingdom[:fairy_lake][:info][:magical_tier]}."

puts "#{magic_kingdom[:troll_cave][:name]} is where the trouble makers are kept.
As for today, there are #{magic_kingdom[:troll_cave][:dwellers].length} prisoners there...
If you misbehave, you might end up as prisoner number #{1 + magic_kingdom[:troll_cave][:dwellers].length}!"

puts "If you're looking for treasures, #{magic_kingdom[:dragon_dungeon][:name]} is where you wanna be!
#{magic_kingdom[:dragon_dungeon][:dwellers][0]} Dragon might help you on your quest, but you really should avoid making eye contact to #{magic_kingdom[:dragon_dungeon][:dwellers][2]}..."