class Film < ActiveRecord::Base

  has_many :recenzje
  has_many :seansy
  has_many :kina, :through => :seansy

  named_scope :currently_playing, :include => :seansy,
    :conditions => "seansy.starts_on < current_date and seansy.ends_on > current_date"

  validates_presence_of :name
  validates_associated :seansy, :on => :update

  after_update :save_seansy

  def self.search(search)
    currently_playing.find(:all,
                           :conditions => ["name LIKE ?", "%#{search}%"],
                           :order => 'name')
  end

  def average_stars
    recenzje.average(:stars)
  end

  def new_seans_attributes=(seans_attributes)
    seans_attributes.each do |attributes|
      seansy.build(attributes)
    end
  end

  def existing_seans_attributes=(seans_attributes)
    seansy.reject(&:new_record?).each do |seans|
      attributes = seans_attributes[seans.id.to_s]
      if attributes
        seans.attributes = attributes
      else
        seansy.delete(seans)
      end
    end
  end

  private

  def save_seansy
    logger.info("#{Time.now} save_seansy")
    seansy.each do |seans|
      seans.save(false)
    end
  end

end
