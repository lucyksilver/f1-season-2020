class RaceResult < ApplicationRecord
  belongs_to :race
  belongs_to :driver

  POINTS = {
    '1': 25,

  }
end
