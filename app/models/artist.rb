class Artist < ApplicationRecord
  has_many :sessions
  has_many :instruments, through: :sessions
end
