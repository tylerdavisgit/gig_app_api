class AddTimeColumnToGigs < ActiveRecord::Migration[6.0]
  def change
    add_column :gigs, :time, :string
  end
end
