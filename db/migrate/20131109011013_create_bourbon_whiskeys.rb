class CreateBourbonWhiskeys < ActiveRecord::Migration
  def change
    create_table :bourbon_whiskeys do |t|
      t.string :name
      t.integer :distillery_id

      t.timestamps
    end
  end
end
