class Translation < ActiveRecord::Base
  belongs_to :list

  validates :hanzi, :english, presence: true

  has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
