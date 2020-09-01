class Instrument < ApplicationRecord
    has_many :talents
    has_many :instruments, through: :talents
end
