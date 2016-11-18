class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      validates :artist, :venue, :city, :date, :price, :description, presence: true 

      t.string :artist
      t.string :venue
      t.string :city
      t.datetime :date
      t.float :price
      t.text :description


      t.timestamps
    end
  end
end
