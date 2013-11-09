class RenameFlavorToAttribute < ActiveRecord::Migration
  def change
    rename_table :flavors, :attributes

    add_column :attributes, :attribute_type_id, :integer
  end
end
