class Artist < ApplicationRecord
  has_many :sessions
  has_many :instruments, through: :sessions

  validates :name, presence: true
  validates :title, uniqueness: { case_sensitive: false }
end
