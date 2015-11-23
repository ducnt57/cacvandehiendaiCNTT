class Quizzes < ActiveRecord::Base
	attr_accessible :quiz_id, :cate_id, :quiz_slug, :quiz_content, :is_correct
  	
end