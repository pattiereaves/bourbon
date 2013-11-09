class CreateBourbonFlavors < ActiveRecord::Migration
  def change
    create_table :bourbon_flavors do |t|
      t.integer :flavor_id
      t.integer :bourbon_whiskey_id

      t.timestamps
    end
  end
end
