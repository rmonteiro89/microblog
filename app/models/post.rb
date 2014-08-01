class Post < ActiveRecord::Base
	validates :title, presence: true			#Valida a presen�a de title para salvar o post
	validates :message, presence: true			#Valida a presen�a de message para salvar o post
	
	def to_param
	  title.parameterize				#Parametro da url no formato slugify
	end
end
