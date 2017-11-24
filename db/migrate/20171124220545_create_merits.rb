class CreateMerits < ActiveRecord::Migration[5.1]
  def change
    create_table :merits do |t|
      t.string :name
      t.integer :points
      t.string :achievement
    end
  end
end
