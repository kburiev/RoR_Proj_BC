class Post < ApplicationRecord
	belongs_to :user
	
	#allows to translate:
	translates :biographie, :comment
end
