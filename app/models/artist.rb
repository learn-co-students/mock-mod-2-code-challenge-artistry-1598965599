class Artist < ApplicationRecord
    has_many :studios
    has_many :instruments, through: :studios


    validates :name, presence: true
    validates :title, uniqueness: {scope: :title}

end


# While it's possible for an artist to have the same name, an artist must have a name
# An artist must also have an unique title.