ActiveAdmin.register Movie do

  permit_params do
    permitted = [:name, :genre, :description, :format]
    permitted
  end

end
