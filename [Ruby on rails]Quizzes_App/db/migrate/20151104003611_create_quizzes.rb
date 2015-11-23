class CreateQuiz < ActiveRecord::Migration
  def change
    create_table :quizzes, primary_key: 'quiz_id' do |t|
    	t.references 	:cate, index: true
    	t.string 		:quiz_slug
    	t.text 			:quiz_content
    	t.string 		:is_correct
    end
    add_foreign_key :quizzes, :category, column: :cate_id
  end

end
