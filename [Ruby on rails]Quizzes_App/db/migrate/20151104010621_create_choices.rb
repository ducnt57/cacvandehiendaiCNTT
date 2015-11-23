class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices, primary_key: 'choice_id' do |t|
    	t.references 	:quizzes, index: true
    	t.string 		:choice_title
    	t.text			:choice_content
    end
    add_foreign_key :choices, :quizzes, column: :quiz_id
  end
end
