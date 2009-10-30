class AddDescLongToDescriptions < ActiveRecord::Migration
  def self.up
    add_column :descriptions, :descLong, :text
  end

  def self.down
    remove_column :descriptions, :descLong
  end
end
