class Idea < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "510x510>", :thumb => "210x210>" },
										:storage => s3,
										:bucket => ENV['boraweb']
end
