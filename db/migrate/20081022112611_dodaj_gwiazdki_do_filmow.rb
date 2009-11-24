class DodajGwiazdkiDoFilmow < ActiveRecord::Migration

  def self.up
    add_column :filmy, :average_stars, :float
  end

  def self.down
    remove_column :filmy, :average_stars
  end

end
