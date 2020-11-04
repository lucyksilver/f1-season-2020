class Constructor < ApplicationRecord
  has_many :drivers

  def constructor_points
    sum = 0
    self.drivers.each do |driver|
      sum += driver.overall_points
    end
    sum
  end
end
