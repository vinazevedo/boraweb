class Idea < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, styles: { 
		medium: "510x510>", 
		thumb: "210x210>" 
	}

	# Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
