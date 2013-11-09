class CreateUserFlavors < ActiveRecord::Migration
  def change
    create_table :user_flavors do |t|
      t.integer :user_id
      t.integer :flavor_id

      t.timestamps
    end
  end
end
