class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :attribute_id
      t.boolean :is_loved

      t.timestamps
    end
  end
end
