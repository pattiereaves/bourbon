class CreateBourbonAttributes < ActiveRecord::Migration
  def change
    create_table :bourbon_attributes do |t|
      t.integer :bourbon_whiskey_id
      t.integer :attribute_id

      t.timestamps
    end
  end
end
