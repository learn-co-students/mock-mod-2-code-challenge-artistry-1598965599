class Instrument < ApplicationRecord
    has_many :signups
    has_many :artists, through: :signups
end
