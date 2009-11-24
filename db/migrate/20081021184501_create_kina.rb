class CreateKina < ActiveRecord::Migration
  def self.up
    create_table :kina do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :kina
  end
end
