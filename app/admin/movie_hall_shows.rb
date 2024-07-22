ActiveAdmin.register MovieHallShow do

  permit_params do
    permitted = [:movie_id, :hall_id, :show_time]
    permitted
  end

end
