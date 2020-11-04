class Driver < ApplicationRecord
  belongs_to :constructor
  has_many :race_results
end
