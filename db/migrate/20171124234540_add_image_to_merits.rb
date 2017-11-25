class AddImageToMerits < ActiveRecord::Migration[5.1]
  def change
    add_column :merits, :image, :string
  end
end
