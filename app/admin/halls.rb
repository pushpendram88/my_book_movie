ActiveAdmin.register Hall do

  permit_params do
    permitted = [:name, :number_of_row, :number_of_column]
    permitted
  end

end
