class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :message, presence: true
	
	def to_param
	  title.parameterize				#Parametro da url no formato slugify
	end
end
