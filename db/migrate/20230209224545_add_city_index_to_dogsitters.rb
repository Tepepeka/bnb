class AddCityIndexToDogsitters < ActiveRecord::Migration[7.0]
  def change
    add_reference :dogsitters, :city, foreign_key: true
  end
end
