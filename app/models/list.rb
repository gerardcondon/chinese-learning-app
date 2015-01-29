class List < ActiveRecord::Base
  belongs_to :user
  has_many :translations

  accepts_nested_attributes_for :ingredients, allow_destroy: true

  validates :title, presence: true
end
