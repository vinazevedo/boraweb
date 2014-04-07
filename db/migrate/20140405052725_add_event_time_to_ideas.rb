class AddEventTimeToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :event_time, :datetime
    add_index :ideas, :event_time
  end
end
