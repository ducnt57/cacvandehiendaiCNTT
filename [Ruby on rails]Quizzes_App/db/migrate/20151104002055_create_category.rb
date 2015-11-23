class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories , primary_key: 'cate_id' do |t|
    	t.string :name
    	t.string :slug
    	t.string :icon
    end
  end
end
