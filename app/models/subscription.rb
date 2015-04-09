class Subscription < ActiveRecord::Base
	validates :name, :email, presence: true
end
