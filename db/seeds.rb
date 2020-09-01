Signup.destroy_all
Instrument.destroy_all
Artist.destroy_all
Signup.reset_pk_sequence
Instrument.reset_pk_sequence
Artist.reset_pk_sequence

artist_1 = Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
artist_2 = Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
artist_3 = Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
artist_4 = Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
artist_5 = Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

instrument_1 = Instrument.create(name: "Guitar", classification: "Strings")
instrument_2 = Instrument.create(name: "Flute", classification: "Woodwind")
instrument_3 = Instrument.create(name: "Xylophone", classification: "Percussion")
instrument_4 = Instrument.create(name: "Violin", classification: "Strings")

signup_1 = Signup.create(artist: artist_4, instrument: instrument_2)
signup_2 = Signup.create(artist: artist_2, instrument: instrument_3)
signup_3 = Signup.create(artist: artist_3, instrument: instrument_1)
signup_4 = Signup.create(artist: artist_1, instrument: instrument_3)
signup_5 = Signup.create(artist: artist_5, instrument: instrument_2)
signup_6 = Signup.create(artist: artist_5, instrument: instrument_4)
signup_7 = Signup.create(artist: artist_1, instrument: instrument_3)
signup_8 = Signup.create(artist: artist_5, instrument: instrument_2)
signup_9 = Signup.create(artist: artist_4, instrument: instrument_2)

puts "😎"