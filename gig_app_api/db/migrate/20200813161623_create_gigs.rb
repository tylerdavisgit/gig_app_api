class CreateGigs < ActiveRecord::Migration[6.0]
  def change
    create_table :gigs do |t|
      t.string :title
      t.string :client
      t.string :client_contact
      t.string :location
      t.date :date
      t.integer :price

      t.timestamps
    end
  end
end
