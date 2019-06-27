class CreateAdverts < ActiveRecord::Migration[5.2]
  def change
    create_table :adverts do |t|
        t.references :category, foreign_key: true
        t.integer   :year
        t.string    :seller
        t.string    :phone
        t.string    :url
        t.integer   :price
        t.string    :vin
        t.string    :city
        t.text      :notes
        t.string    :complectation
        t.string    :owners
        t.timestamps
    end
  end
end
