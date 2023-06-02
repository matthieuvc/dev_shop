class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  skip_before_action :authenticate_user!, only: :dashboard

  def home
  end

  def dashboard
    @reservations = Reservation.all
  end
end
