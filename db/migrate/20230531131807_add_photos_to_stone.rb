class AddPhotosToStone < ActiveRecord::Migration[7.0]
  def change
    add_column :stones, :image, :string
  end
end
