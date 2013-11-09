# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Delete stuff
Distillery.delete_all
BourbonWhiskey.delete_all
AttributeType.delete_all
BourbonAttribute.delete_all
BourbonProfile.delete_all


# Add attributes and types
AttributeTypeArray = ['taste','aroma','finish']
BourbonAttributeArray = ['wood','fruit','sweet','spice','grain']

AttributeTypeArray.each do |type|
  attribute_type = AttributeType.create(name: type)
  BourbonAttributeArray.each do |btype|
    attribute_type.bourbon_attributes.create(name: btype, attribute_type_id: attribute_type.id)
  end
end
puts "Attribute Type and BourbonAttributes added!"



require 'csv'

  csv_file_path = 'db/bourbons.csv'
  CSV.foreach(csv_file_path,{:headers=>:first_row}) do |row|

      distillery = Distillery.find_by_name(row[1])
      unless distillery
        distillery = Distillery.create({
          name: row[1]  
        })
        puts "Distillery " + row[1] + " added!"
      end

      bourbon_whiskey = distillery.bourbon_whiskeys.create({
        name: row[0],
        age: row[2],
        proof: row[3],
        appearance: row[4],
        aroma_description: row[5],
        taste_description: row[7],
        finish_description: row[9],
      })

      puts "BourbonWhiskey " +  row[0] + " added!"


      bourbon_aromas = row[6].split(',')
      bourbon_aromas.each do |val|
        val.strip!
        type_aroma = AttributeType.find_by_name("aroma");
        b_attributes = BourbonAttribute.where("name = ? AND attribute_type_id = ?", val, type_aroma.id).first
        bourbon_whiskey.bourbon_profiles.create({bourbon_attribute: b_attributes})
      end
      puts "Aroma profiles " +  row[6] + " added!"


      bourbon_tastes = row[8].split(',')
      bourbon_tastes.each do |val|
        val.strip!
        type_taste = AttributeType.find_by_name("taste");
        b_attributes = BourbonAttribute.where("name = ? AND attribute_type_id = ?", val, type_taste.id).first
        bourbon_whiskey.bourbon_profiles.create({bourbon_attribute_id: b_attributes})
      end
      puts "Taste profiles " +  row[8] + " added!"


      bourbon_finishes = row[10].split(',')
      bourbon_finishes.each do |val|
        val.strip!
        type_finish = AttributeType.find_by_name("finish");
        b_attributes = BourbonAttribute.where("name = ? AND attribute_type_id = ?", val, type_finish.id).first
        bourbon_whiskey.bourbon_profiles.create({bourbon_attribute_id: b_attributes})
      end

      puts "Finish profiles " +  row[10] + " added!"

  end


puts "Seeding finished"