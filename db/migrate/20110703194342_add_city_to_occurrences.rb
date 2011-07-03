class AddCityToOccurrences < ActiveRecord::Migration
  def self.up
    add_column :occurrences, :city, :string
  end

  def self.down
    remove_column :occurrences, :city
  end
end
