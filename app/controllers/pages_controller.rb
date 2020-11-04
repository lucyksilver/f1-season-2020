class PagesController < ApplicationController
  def home
    @drivers = Driver.all
  end
end
