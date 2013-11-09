class RenameAttributeTables < ActiveRecord::Migration
  def change
    rename_table :bourbon_attributes, :bourbon_profiles
    rename_table :attributes, :bourbon_attributes
  end
end
