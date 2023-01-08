class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :parcel_id

      t.timestamps
    end
  end
end
