class CreateHotelReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :hotel_reviews do |t|
      t.references :hotel, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
