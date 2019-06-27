class CreateCheckLists < ActiveRecord::Migration[5.2]
  def change
    create_table :check_lists do |t|
      t.references :advert, foreign_key: true
      t.string :spending
      t.string :condicion
      t.string :service
      t.string :painted
      t.string :body_repair
      t.integer :price
      t.text :notes
      t.timestamps
    end
  end
end
