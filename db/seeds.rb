AdminUser.find_or_create_by!(email: "admin@example.com") do |user|
  user.password = "password"
  user.password_confirmation = "password"
end

Player.create!(name: "Kodai NARAOKA", country: "JPN")
Player.create!(name: "Viktor AXELSEN", country: "DK")
Player.create!(name: "SHI Yu Qi", country: "CN")

Tournament.create!(name: "Japan Open", grade: "Super 750", start_date: Date.today - 10.days)
Tournament.create!(name: "England Open", grade: "Super 1000", start_date: Date.today - 40.days)

Result.create!(player: Player.find_by(name: "Kodai NARAOKA"), tournament: Tournament.find_by(name: "Japan Open"), round: "QF" , points: 5000)
Result.create!(player: Player.find_by(name: "Viktor AXELSEN"), tournament: Tournament.find_by(name: "Japan Open"), round: "SF" , points: 7000)
Result.create!(player: Player.find_by(name: "SHI Yu Qi"), tournament: Tournament.find_by(name: "Japan Open"), round: "F" , points: 9000)

Result.create!(player: Player.find_by(name: "Kodai NARAOKA"), tournament: Tournament.find_by(name: "England Open"), round: "R16" , points: 3000)
Result.create!(player: Player.find_by(name: "Viktor AXELSEN"), tournament: Tournament.find_by(name: "England Open"), round: "QF" , points: 5000)
Result.create!(player: Player.find_by(name: "SHI Yu Qi"), tournament: Tournament.find_by(name: "England Open"), round: "F" , points: 9000)
