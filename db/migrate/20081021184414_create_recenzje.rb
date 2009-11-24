class CreateRecenzje < ActiveRecord::Migration
  def self.up
    create_table :recenzje do |t|
      t.integer :film_id
      t.string :author_name
      t.integer :stars
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :recenzje
  end
end
