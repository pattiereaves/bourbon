class CreateHates < ActiveRecord::Migration
  def change
    create_table :hates do |t|
      t.integer :user_id
      t.integer :attribute_id

      t.timestamps
    end
  end
end
