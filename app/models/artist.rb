class Artist < ApplicationRecord
    has_many :signups
    has_many :instruments, through: :signups

    validates :name, presence: true
    validates :age, inclusion: 1..150
    validates :title, uniqueness: true

end
