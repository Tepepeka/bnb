class AddCityIndexToDogs < ActiveRecord::Migration[7.0]
  def change
      add_reference :dogs, :city, foreign_key: true
  end
end
