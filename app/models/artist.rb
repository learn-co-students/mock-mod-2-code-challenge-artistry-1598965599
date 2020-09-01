class Artist < ApplicationRecord
    has_many :talents
    has_many :instruments, through: :talents
    validates :name, presence: true
    validates :title, uniqueness: true
end
