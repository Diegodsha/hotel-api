class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :description
      t.string :price_nigth
      t.string :services
      t.string :img_url

      t.timestamps
    end
  end
end
