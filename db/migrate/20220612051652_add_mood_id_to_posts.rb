class AddMoodIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :mood_id, :integer
  end
end
