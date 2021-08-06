class CreateFavouriteHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :favourite_hotels do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hotel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
