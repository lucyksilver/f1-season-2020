class PagesController < ApplicationController
  def home
    @drivers = Driver.all.sort_by {|driver| [-driver.overall_points, driver.name] }
    @constructors = Constructor.all.sort_by {|constructor| [-constructor.constructor_points, constructor.name] }
  end


end
