ActiveAdmin.register Booking do


  permit_params do
    permitted = [:movie_hall_show_id, :seat, :user_id]
    permitted
  end

end
