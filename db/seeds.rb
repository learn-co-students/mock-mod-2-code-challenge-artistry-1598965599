ArtistInstrument.destroy_all
Artist.destroy_all
Instrument.destroy_all

mj = Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop") #3
sw = Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder") #2
ep = Artist.create(name: "Elvis Presley", age: rand(50), title: "the King") #1 
wh = Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
be = Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

guitar = Instrument.create(name: "Guitar", classification: "Strings") #3
violin = Instrument.create(name: "Violin", classification: "Strings") #2 
flute = Instrument.create(name: "Flute", classification: "Woodwind") #1 
xylo = Instrument.create(name: "Xylophone", classification: "Percussion")

ArtistInstrument.create(artist: mj, instrument: guitar)
ArtistInstrument.create(artist: sw, instrument: guitar)
ArtistInstrument.create(artist: ep, instrument: guitar)
ArtistInstrument.create(artist: mj, instrument: violin)
ArtistInstrument.create(artist: sw, instrument: violin)
ArtistInstrument.create(artist: mj, instrument: flute)