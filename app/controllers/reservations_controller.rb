class ReservationsController < ApplicationController
  def new
    @webdev = Webdev.find(params[:webdev_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    # associate webdev from params
    @webdev = Webdev.find(params[:webdev_id])
    @reservation.webdev = @webdev
    # calculate total price

    # Replace 'id' with the actual ID of the reservation you want to calculate the duration for
    start_time = @reservation.start_date
    end_time = @reservation.end_date

    @duration_in_hours = (@reservation[:end_date] - @reservation[:start_date]).to_i / 1.hour

    @reservation.price = @webdev.price * @duration_in_hours
    @reservation.status = 'pending'
    if @reservation.save
      redirect_to webdev_reservation_path(@webdev, @reservation), notice: 'Reservation created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @duration_in_hours = (@reservation[:end_date] - @reservation[:start_date]).to_i / 1.hour
  end

  def approve
    @reservation = Reservation.find_by_id(params[:id])
    @reservation.update(status: "approved")
     if @reservation.status == "approved"
       flash[:success] = "Booking successfully approved"
       redirect_to dashboard_path
     else
       flash[:error] = "Booking not approved"
       redirect_to dashboard_path
     end
    end

    def decline
      @reservation = Reservation.find_by_id(params[:id])
      @reservation.update(status: "rejected")
       if @reservation.status == "rejected"
         flash[:success] = "Booking hasn't been approved"
         redirect_to dashboard_path
       else
         flash[:error] = "Booking not approved"
         redirect_to dashboard_path
       end
      end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
