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
  #   # position = 1
  #   Driver.all.inject do |memo, second_driver|
  #     # if memo.overall_points > second_driver.overall_points
  #       # position += 1
  #       # memo = second_driver
  #     # elsif memo.overall_points == second_driver.overall_points
  #       # position
  #       # memo = second_driver
  #      # end
  #   end
  #   # position
  # end
end
