class RenameAttributeIdOnHatesLikesRemoveUserFlavorsTable < ActiveRecord::Migration
  def change
    rename_column :likes, :attribute_id, :bourbon_attribute_id
    rename_column :hates, :attribute_id, :bourbon_attribute_id

    drop_table :user_flavors
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
