class CreateFilmy < ActiveRecord::Migration
  def self.up
    create_table :filmy do |t|
      t.string :name
      t.integer :minutes

      t.timestamps
    end
  end

  def self.down
    drop_table :filmy
  end
end
