merc =Constructor.create!(name: 'Mercedes')
red =Constructor.create!(name: 'Red Bull')
fer = Constructor.create!(name: 'Ferrari')
alpha = Constructor.create!(name: 'Alphatauri')
mcl = Constructor.create!(name: 'McLaren')
rp = Constructor.create!(name: 'Racing Point')
ren = Constructor.create!(name: 'Renault')
haas = Constructor.create!(name: 'Haas')
ar = Constructor.create!(name: 'Alfa Romeo')
wil = Constructor.create!(name: 'Williams')

hamilton = Driver.create!(name: 'Lewis Hamilton', constructor: merc)
bottas = Driver.create!(name: 'Valtteri Bottas', constructor: merc)
verst = Driver.create!(name: 'Max Verstappen', constructor: red)
leclerc = Driver.create!(name: 'Charles Leclerc', constructor: fer)
gasly = Driver.create!(name: 'Pierre Gasly', constructor: alpha)
sainz = Driver.create!(name: 'Carlos Sainz', constructor: mcl)
perez = Driver.create!(name: 'Sergio Perez', constructor: rp)
ocon = Driver.create!(name: 'Esteban Ocon', constructor: ren)
ric = Driver.create!(name: 'Daniel Ricciardo', constructor: ren)
vettel = Driver.create!(name: 'Sebastien Vettel', constructor: fer)
hulk = Driver.create!(name: 'Nico Hulkenberg', constructor: rp)
gros = Driver.create!(name: 'Romain Grosjean', constructor: haas)
giov = Driver.create!(name: 'Antonio Giovinazzi', constructor: ar)
kvy = Driver.create!(name: 'Daniil Kvyat', constructor: alpha)
albon = Driver.create!(name: 'Alexander Albon', constructor: red)
mag = Driver.create!(name: 'Kevin Magnussen', constructor: haas)
lat = Driver.create!(name: 'Nicholas Latifi', constructor: wil)
russ = Driver.create!(name: 'George Russell', constructor: wil)
russ = Driver.create!(name: 'Lando Noris', constructor: mcl)
russ = Driver.create!(name: 'Lance Stroll', constructor: rp)
russ = Driver.create!(name: 'Kimi Raikkonen', constructor: ar)

one = Race.create!(location: 'one')
two = Race.create!(location: 'two')
three = Race.create!(location: 'three')

RaceResult.create!(race: one, driver: hamilton, position: '1', fastest_lap: true)
RaceResult.create!(race: one, driver: bottas, position: '2')
RaceResult.create!(race: one, driver: verst, position: '3')
RaceResult.create!(race: one, driver: leclerc, position: '4')
RaceResult.create!(race: one, driver: gasly, position: '5')
RaceResult.create!(race: one, driver: sainz, position: '6')
RaceResult.create!(race: one, driver: perez, position: '7')
RaceResult.create!(race: one, driver: ocon, position: '8')
RaceResult.create!(race: one, driver: ric, position: '9')
RaceResult.create!(race: one, driver: vettel, position: '10')

RaceResult.create!(race: two, driver: hamilton, position: '1')
RaceResult.create!(race: two, driver: verst, position: '2', fastest_lap: true)
RaceResult.create!(race: two, driver: ric, position: '3')
RaceResult.create!(race: two, driver: perez, position: '4')
RaceResult.create!(race: two, driver: sainz, position: '5')
RaceResult.create!(race: two, driver: gasly, position: '6')
RaceResult.create!(race: two, driver: leclerc, position: '7')
RaceResult.create!(race: two, driver: hulk, position: '8')
RaceResult.create!(race: two, driver: gros, position: '9')
RaceResult.create!(race: two, driver: giov, position: '10')

RaceResult.create!(race: three, driver: bottas, position: '1', fastest_lap: true)
RaceResult.create!(race: three, driver: hamilton, position: '2')
RaceResult.create!(race: three, driver: verst, position: '3')
RaceResult.create!(race: three, driver: perez, position: '4')
RaceResult.create!(race: three, driver: ric, position: '5')
RaceResult.create!(race: three, driver: leclerc, position: '6')
RaceResult.create!(race: three, driver: ocon, position: '7')
RaceResult.create!(race: three, driver: kvy, position: '8')
RaceResult.create!(race: three, driver: gasly, position: '9')
RaceResult.create!(race: three, driver: albon, position: '10')













