class Translation < ActiveRecord::Base
  belongs_to :list

  validates :hanzi, :english, presence: true
end
