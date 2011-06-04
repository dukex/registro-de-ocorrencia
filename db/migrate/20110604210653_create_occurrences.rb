class CreateOccurrences < ActiveRecord::Migration
  def self.up
    create_table :occurrences do |t|
      t.string :name
      t.string :address
      t.string :neighborhood
      t.string :location
      t.string :ref_point
      t.string :phone
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :occurrences
  end
end
