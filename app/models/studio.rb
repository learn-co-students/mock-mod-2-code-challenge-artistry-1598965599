class Studio < ApplicationRecord
  belongs_to :instrument
  belongs_to :artist
end
