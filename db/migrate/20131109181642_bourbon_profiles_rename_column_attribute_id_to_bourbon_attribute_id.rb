class BourbonProfilesRenameColumnAttributeIdToBourbonAttributeId < ActiveRecord::Migration
  def change
    rename_column :bourbon_profiles, :attribute_id, :bourbon_attribute_id
  end
end
