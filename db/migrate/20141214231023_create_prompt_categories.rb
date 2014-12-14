class CreatePromptCategories < ActiveRecord::Migration
  def change
    create_table :prompt_categories do |t|
    	t.belongs_to :prompt
    	t.belongs_to :category

    	t.timestamps
    end
  end
end
