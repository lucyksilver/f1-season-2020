class Driver < ApplicationRecord
  belongs_to :constructor
  has_many :race_results

  def overall_points
    sum = 0
    race_results.each do |race_result|
      sum += race_result.race_points
      if race_result.fastest_lap
        sum += 1
      end
    end
    sum
  end


  def williams?
    constructor.name == 'Williams'
  end


  # def overall_position
  # My aim was to use the reduce/inject method on all drivers to compare their overall scores
  # if the overall score was greater for the first driver, then the position would increment
  # the second driver would become the first driver in the reduce method
  # else if the overall score of the first was equal to the next one, then the position would stay the same
  # unfortunately I couldn't get this working, so I used iteration with index
  # end
end
