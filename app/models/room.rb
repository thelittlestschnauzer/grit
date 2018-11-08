class Room < ApplicationRecord
	validates :room_name, :description, presence: true
end
