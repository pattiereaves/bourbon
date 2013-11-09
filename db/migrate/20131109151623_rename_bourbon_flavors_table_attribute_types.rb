class RenameBourbonFlavorsTableAttributeTypes < ActiveRecord::Migration
  def change
    rename_table :bourbon_flavors, :attribute_types

    remove_column :attribute_types, :flavor_id, :integer
    remove_column :attribute_types, :bourbon_whiskey_id, :integer

    add_column :attribute_types, :name, :string
  end
end
