class Room < ApplicationRecord
	validates :room_name, :description, presence: true

	belongs_to :category
end
