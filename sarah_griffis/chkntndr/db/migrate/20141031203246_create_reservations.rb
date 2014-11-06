class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :fav_restaurant1
      t.string :fav_restaurant2
      t.string :fav_restaurant3
      t.string :cuisine
      t.string :prefer_drinks
      t.time :preferred_reservation_time
      t.date :perferred_date

      t.timestamps
    end
  end
end
