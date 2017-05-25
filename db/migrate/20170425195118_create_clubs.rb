class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :description
      t.string :frequency
      t.string :type
      t.string :location
      t.integer :owner

      t.timestamps
    end
  end
end
