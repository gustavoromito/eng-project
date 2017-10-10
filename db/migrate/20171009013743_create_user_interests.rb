class CreateUserInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :user_interests do |t|
      t.references :user
      t.references :event

      t.timestamps
    end
  end
end
