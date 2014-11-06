class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def index
  end



 # def show
 #   @restaurants = Reservation.find_by_foursquare
 # end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.save


    if @reservation.save
      redirect_to edit_reservation_path(@reservation.id)
      #find_restaurants_path
    else
      render :new
    end

  end

  def find_restaurants
    #@restaurants = Reservation.find_by_foursquare
    binding.pry
  end

  def edit
    @reservation = Reservation.find_by(id: params[:id])
    @restaurants = @reservation.find_by_foursquare
  end

private

  def reservation_params
    params.require(:reservation).permit(:city, :fav_restaurant1, :fav_restaurant2, :fav_restaurant3,
                                       :cuisine, :prefer_drinks, :preferred_reservation_time,
                                       :preferred_date, :user_id)
  end


end
