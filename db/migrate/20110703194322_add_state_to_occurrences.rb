class AddStateToOccurrences < ActiveRecord::Migration
  def self.up
    add_column :occurrences, :state, :string
  end

  def self.down
    remove_column :occurrences, :state
  end
end
