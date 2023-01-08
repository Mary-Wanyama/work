class CreateParcels < ActiveRecord::Migration[7.0]
  def change
    create_table :parcels do |t|
      t.string :name
      t.string :weight
      t.string :pickup_location
      t.string :delivery_location
      t.string :sender
      t.string :receiver
      t.datetime :pickup_time

      t.timestamps
    end
  end
end
