class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :square_outer, :string
    add_column :users, :square_center, :string
    add_column :users, :square_inner, :string
  end
end
