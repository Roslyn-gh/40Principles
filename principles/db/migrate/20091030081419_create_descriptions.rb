class CreateDescriptions < ActiveRecord::Migration
  def self.up
    create_table :descriptions do |t|
      t.text :descshort

      t.timestamps
    end
  end

  def self.down
    drop_table :descriptions
  end
end
