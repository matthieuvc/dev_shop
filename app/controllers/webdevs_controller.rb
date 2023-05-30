class WebdevsController < ApplicationController
  def index
    @webdevs = Webdev.all
  end

  def new
    @webdev = Webdev.new
  end

  def create
    @webdev = Webdev.new(webdev_params)
    @webdev.save
  end

  private

  def webdev_params
    params.require(:webdev).permit(:service_type, :price, :experience_year, :availablity)
  end
end
