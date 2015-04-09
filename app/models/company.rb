class Company < ActiveRecord::Base
  validates :name, :founded_in, :website, presence: true
  validates :description, length: { minimum: 25 }
  validates :staff, numericality: { greater_than: 0 }
  validates :logo, allow_blank: true, format: {
    with:    /\w+.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }

  default_scope { order('name ASC') }
  scope :small, -> { where('staff < 15') }
  scope :medium, -> { where('staff >= 15 || staff <= 50') }
  scope :large, -> { where('staff > 50') }

  has_many :reviews, dependent: :destroy
end
