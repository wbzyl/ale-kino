class CreateSeansy < ActiveRecord::Migration
  def self.up
    create_table :seansy do |t|
      t.integer :kino_id
      t.integer :film_id
      t.date :starts_on
      t.date :ends_on

      t.timestamps
    end
  end

  def self.down
    drop_table :seansy
  end
end
