class Seans < ActiveRecord::Base

  belongs_to :kino
  belongs_to :film

  validate :must_end_after_start

  private

  def must_end_after_start
    if starts_on && ends_on && ends_on < starts_on
      errors.add_to_base "Ending date must be after starting date"
    end
  end

end
