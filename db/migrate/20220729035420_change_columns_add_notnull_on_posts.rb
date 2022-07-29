class ChangeColumnsAddNotnullOnPosts < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :post_image, false
    change_column_null :posts, :finished_at, false
  end
end
