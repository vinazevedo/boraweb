class AddSpecificIdeasToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :specific_ideas, :string
    add_index :ideas, :specific_ideas
  end
end
