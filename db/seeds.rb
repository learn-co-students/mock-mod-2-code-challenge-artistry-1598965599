Instrument.destroy_all
Artist.destroy_all
ArtistInstrument.destroy_all

guitar = Instrument.create(name: "Guitar", classification: "Strings")
violin = Instrument.create(name: "Violin", classification: "Strings")
flute = Instrument.create(name: "Flute", classification: "Woodwind")
xylophone = Instrument.create(name: "Xylophone", classification: "Percussion")

mj = Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
stevie = Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
elvis = Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
whitney = Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
bey = Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

ArtistInstrument.create(artist: mj, instrument: guitar)
ArtistInstrument.create(artist: mj, instrument: violin)
ArtistInstrument.create(artist: mj, instrument: xylophone)
ArtistInstrument.create(artist: stevie, instrument: xylophone)
ArtistInstrument.create(artist: stevie, instrument: flute)
ArtistInstrument.create(artist: elvis, instrument: guitar)
ArtistInstrument.create(artist: whitney, instrument: violin)
ArtistInstrument.create(artist: whitney, instrument: guitar)
ArtistInstrument.create(artist: bey, instrument: guitar)

puts "🪕🪕🪕🪕🪕🪕"