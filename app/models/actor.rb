class Actor < ApplicationRecord
	validates :name, :bio, :birth_date, :birth_place, :image_url, :alive, presence: true 
end
