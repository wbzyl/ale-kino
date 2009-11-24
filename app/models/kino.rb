class Kino < ActiveRecord::Base

  has_many :seansy, :dependent => :destroy
  has_many :filmy, :through => :seansy

  validates_presence_of :name

  named_scope :currently_playing, :include => :seansy,
    :conditions => "seansy.starts_on < current_date and seansy.ends_on > current_date"
  #named_scope :currently_playing, Film.currently_playing.proxy_options

end
