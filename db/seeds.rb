AdminUser.find_or_create_by!(email: "admin@example.com") do |user|
  user.password = "password"
  user.password_confirmation = "password"
end

Player.create!(name: "Kodai NARAOKA", country: "JPN")
Player.create!(name: "Viktor AXELSEN", country: "DEN")
Player.create!(name: "SHI Yu Qi", country: "CHN")
Player.create!(name: "Anthony SINISUKA GINTING", country: "INA")
Player.create!(name: "Jonatan CHRISTIE", country: "INA")
Player.create!(name: "Kunlavut VITIDSARN", country: "THA")
Player.create!(name: "HS Prannoy", country: "IND")
Player.create!(name: "Anders ANTONSEN", country: "DEN")

Tournament.create!(name: "Japan Open", grade: "Super 750", start_date: Date.today - 10.days)
Tournament.create!(name: "Indonesia Open", grade: "Super 1000", start_date: Date.today - 25.days)
Tournament.create!(name: "Malaysia Open", grade: "Super 1000", start_date: Date.today - 60.days)
Tournament.create!(name: "All England", grade: "Super 1000", start_date: Date.today - 110.days)
Tournament.create!(name: "India Open", grade: "Super 750", start_date: Date.today - 130.days)

# Japan Open (2024)
Result.create!(player: Player.find_by(name: "Kodai NARAOKA"), tournament: Tournament.find_by(name: "Japan Open"), round: "QF", points: 6050)
Result.create!(player: Player.find_by(name: "Viktor AXELSEN"), tournament: Tournament.find_by(name: "Japan Open"), round: "R16", points: 4320)
Result.create!(player: Player.find_by(name: "SHI Yu Qi"), tournament: Tournament.find_by(name: "Japan Open"), round: "Winner", points: 11000)

# Indonesia Open
Result.create!(player: Player.find_by(name: "Jonatan CHRISTIE"), tournament: Tournament.find_by(name: "Indonesia Open"), round: "SF", points: 9200)
Result.create!(player: Player.find_by(name: "Anthony SINISUKA GINTING"), tournament: Tournament.find_by(name: "Indonesia Open"), round: "R16", points: 6000)
Result.create!(player: Player.find_by(name: "Viktor AXELSEN"), tournament: Tournament.find_by(name: "Indonesia Open"), round: "F", points: 10200)

# Malaysia Open
Result.create!(player: Player.find_by(name: "SHI Yu Qi"), tournament: Tournament.find_by(name: "Malaysia Open"), round: "Winner", points: 12000)
Result.create!(player: Player.find_by(name: "Anders ANTONSEN"), tournament: Tournament.find_by(name: "Malaysia Open"), round: "SF", points: 8400)
Result.create!(player: Player.find_by(name: "Kodai NARAOKA"), tournament: Tournament.find_by(name: "Malaysia Open"), round: "R32", points: 3000)

# All England
Result.create!(player: Player.find_by(name: "Anthony SINISUKA GINTING"), tournament: Tournament.find_by(name: "All England"), round: "QF", points: 6600)
Result.create!(player: Player.find_by(name: "HS Prannoy"), tournament: Tournament.find_by(name: "All England"), round: "R16", points: 4800)
Result.create!(player: Player.find_by(name: "Viktor AXELSEN"), tournament: Tournament.find_by(name: "All England"), round: "Winner", points: 12000)

# India Open
Result.create!(player: Player.find_by(name: "Jonatan CHRISTIE"), tournament: Tournament.find_by(name: "India Open"), round: "QF", points: 6050)
Result.create!(player: Player.find_by(name: "Kunlavut VITIDSARN"), tournament: Tournament.find_by(name: "India Open"), round: "F", points: 9350)
Result.create!(player: Player.find_by(name: "HS Prannoy"), tournament: Tournament.find_by(name: "India Open"), round: "SF", points: 7700)
