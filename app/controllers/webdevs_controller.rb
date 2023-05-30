class WebdevsController < ApplicationController
  def index
    @webdevs = Webdev.all
  end

  def new
    @webdev = Webdev.new
  end

  def create
    @webdev = Webdev.new(webdev_params)
    @webdev.user = current_user
    if @webdev.save
      redirect_to webdevs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @webdev = Webdev.find(params[:id])
  end

  def edit
    @webdev = Webdev.find(params[:id])
  end

  def update
    @webdev = Webdev.find(params[:id])
    @webdev.update(webdev_params)
    redirect_to webdev_path(@webdev)
  end

  private

  def webdev_params
    params.require(:webdev).permit(:service_type, :price, :experience_year, :availability)
  end
end
