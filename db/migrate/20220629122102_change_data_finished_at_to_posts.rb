class ChangeDataFinishedAtToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :finished_at, :text
  end
end
