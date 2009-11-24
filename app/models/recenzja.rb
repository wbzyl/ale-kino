class Recenzja < ActiveRecord::Base

  belongs_to :film

  named_scope :recent, lambda { |limit| {:order => "created_at DESC", :limit => limit} }
  named_scope :high_stars, :conditions => { :stars => [4, 5] }
  named_scope :low_stars, :conditions => { :stars => 1..3 }

  validates_presence_of :author_name
  validates_inclusion_of :stars, :in => 1..5, :allow_blank => true
  validates_presence_of :stars_or_review_content, :message => "must be filled in"

  def self.filter_stars(filter)
    case filter
    when 'low' then low_stars.all
    when 'high' then high_stars.all
    else all
    end
  end

  def stars_or_review_content
    stars || content
  end

end
