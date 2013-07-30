class Ticket < ActiveRecord::Base
	validates :name, :owner, :body, presence: true
end
