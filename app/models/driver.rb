class Driver < ApplicationRecord
  belongs_to :constructor
  has_many :race_results

  def overall_points
    sum = 0
    self.race_results.each do |race|
      sum += race.race_points(race.position)
      if race.fastest_lap
        sum += 1
      end
    end
    sum
  end
end
