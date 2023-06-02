class WebdevsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  skip_before_action :authenticate_user!, only: :index

  def index
    @webdevs = Webdev.all
    if params[:query].present?
      sql_subquery = <<~SQL
          webdevs.service_type ILIKE :query
        OR users.name ILIKE :query

      SQL
      @webdevs = @webdevs.joins(:user).where(sql_subquery, query: "%#{params[:query]}%")
    end
    @reservation = Reservation.new
  end

  def new
    @webdev = Webdev.new
  end

  def show
    @webdev = Webdev.find(params[:id])
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

  def edit
    @webdev = Webdev.find(params[:id])
  end

  def update
    @webdev = Webdev.find(params[:id])
    @webdev.update(webdev_params)
    redirect_to webdevs_path
  end

  private

  def webdev_params
    params.require(:webdev).permit(:service_type, :price, :experience_year, :availablity, :description, :photo)
  end
end
