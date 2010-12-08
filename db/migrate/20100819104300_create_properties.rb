class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.integer :area
      t.integer :no_of_bathrooms
      t.integer :no_of_bedrooms

      t.timestamps
    end
  end

  def self.down
    drop_table :properties
  end
end
