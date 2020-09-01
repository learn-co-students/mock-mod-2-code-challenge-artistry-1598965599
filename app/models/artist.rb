class Artist < ApplicationRecord
  has_many :albums
  has_many :instruments, through: :albums

  validates :name, presence: true
  validates :title, uniqueness: { scope: :title }
  # validates :title, uniqueness: true
end

# Artist.first.albums
# => [album_1, album_2, etc.]

# Artist.first.instruments
# => [instrument_1, instrument_2, etc.]