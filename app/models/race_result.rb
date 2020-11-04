class RaceResult < ApplicationRecord
  belongs_to :race
  belongs_to :driver

  POINTS = {
    '1' => 25,
    '2' => 18,
    '3' => 15,
    '4' => 12,
    '5' => 10,
    '6' => 8,
    '7' => 6,
    '8' => 4,
    '9' => 2,
    '10' => 1,
  }

  def race_points(position)
    POINTS[position]
  end

  def deduct_points(position, minus_points)
    POINTS[position] - minus_points
  end
end
