class AddColumnsToBourbonWhiskey < ActiveRecord::Migration
  def change
    add_column :bourbon_whiskeys, :age, :integer
    add_column :bourbon_whiskeys, :proof, :integer
    add_column :bourbon_whiskeys, :appearance, :text
    add_column :bourbon_whiskeys, :aroma_description, :text
    add_column :bourbon_whiskeys, :taste_description, :text
    add_column :bourbon_whiskeys, :finish_description, :text
  end
end
