class RemoveColumnsInUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :square_outer, :string
    remove_column :users, :square_center, :string
    remove_column :users, :square_inner, :string
  end
end
