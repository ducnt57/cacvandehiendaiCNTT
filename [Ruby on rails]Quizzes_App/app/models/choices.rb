class Choices < ActiveRecord::Base
	attr_accessible	:choice_id, :quiz_id, :choice_title, :choice_content
	#validates_presence_of :choice_title
end