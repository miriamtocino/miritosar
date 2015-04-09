class Company < ActiveRecord::Base
  default_scope { order('name ASC') }

  scope :small, -> { where('staff < 15') }
  scope :medium, -> { where('staff >= 15 || staff <= 50') }
  scope :large, -> { where('staff > 50') }
end
