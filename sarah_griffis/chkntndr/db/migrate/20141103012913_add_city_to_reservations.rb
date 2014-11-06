class AddCityToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :city, :string
  end
end
