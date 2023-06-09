class CreateStones < ActiveRecord::Migration[7.0]
  def change
    create_table :stones do |t|
      t.string :name
      t.string :description
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
