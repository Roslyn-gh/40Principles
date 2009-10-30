class AddIdToDescriptions < ActiveRecord::Migration
  def self.up
    add_column :descriptions, :idShort, :integer
  end

  def self.down
    remove_column :descriptions, :idShort
  end
end
