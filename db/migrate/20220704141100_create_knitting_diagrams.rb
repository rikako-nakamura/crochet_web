class CreateKnittingDiagrams < ActiveRecord::Migration[6.1]
  def change
    create_table :knitting_diagrams do |t|
      t.string :square_outer, null: false
      t.string :square_center, null: false
      t.string :square_inner, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
