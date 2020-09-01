#don't I need to write a pk sequence to destroy

ArtistInstrument.destroy_all
Artist.destroy_all
Instrument.destroy_all

ArtistInstrument.reset_pk_sequence
Artist.reset_pk_sequence
Instrument.reset_pk_sequence




Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
artist_four = Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

Instrument.create(name: "Guitar", classification: "Strings")
play_two = Instrument.create(name: "Violin", classification: "Strings")
Instrument.create(name: "Flute", classification: "Woodwind")
Instrument.create(name: "Xylophone", classification: "Percussion")


ArtistInstrument.create(artist: artist_four, instrument: play_two )

