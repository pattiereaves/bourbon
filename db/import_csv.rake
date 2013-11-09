# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Delete stuff
Distillery.delete_all
BourbonWhiskey.delete_all

require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_stuff => :environment do

    csv_file_path = 'db/bourbons.csv'

    CSV.foreach(csv_file_path) do |row|

      row.shift.each_with_index do |obj,i|
        
          row = BourbonWhiskey.create!({
            name: row[0],
            age: row[2],
            proof: row[3],
            appearance: row[4],
            aroma_description: row[5],
            taste_description: row[7],
            finish_description: row[9],
          })
          puts "BourbonWhiskey added!"
        
      end

      

    end
  end
end



# # Make stuff
# sweet = Flavor.create(name: "sweet")
# fruity = Flavor.create(name: "fruity")
# mild = Flavor.create(name: "mild")


# jim = Distillery.create(name: "Jim Beam")
#   jim.bourbon_whiskeys.create(name: "Jim Beam Bourbon", flavors: [mild])
#   jim.bourbon_whiskeys.create(name:

# woodford = Distillery.create(name: "Woodford Reserve")
#   woodford.bourbon_whiskeys.create(name: "Woodford Reserve Bourbon", flavors: [fruity])
#   woodford.bourbon_whiskeys.create(name: "Woodford Reserve Double Oaked Bourbon", flavors: [mild])


# buffalo = Distillery.create(name: "Buffalo Trace")
#   buffalo.bourbon_whiskeys.create(name: "Buffalo Trace Bourbon", flavors: [sweet])
#   buffalo.bourbon_whiskeys.create(name: "Buffalo Trace Experimental Collection Rice Mash Bourbon", flavors: [mild])
#   buffalo.bourbon_whiskeys.create(name: "Buffalo Trace Experimental Collection Oat Mash Bourbon", flavors: [fruity])

# makers = Distillery.create(name: "Maker's Mark")
#   makers.bourbon_whiskeys.create(name: "Maker's Mark", flavors: [fruity])
#   makers.bourbon_whiskeys.create(name: "Maker's 46", flavors: [mild])


# roses = Distillery.create(name: "Four Roses")
#   roses.bourbon_whiskeys.create(name: "Four Roses Single Barrel", flavors: [fruity])
#   roses.bourbon_whiskeys.create(name: "Four Roses Small Batch Bourbon", flavors: [fruity])
#   roses.bourbon_whiskeys.create(name: "Four Roses Bourbon Yellow Label", flavors: [sweet])


# turkey = Distillery.create(name: "Wild Turkey")
#   turkey.bourbon_whiskeys.create(name: "Wild Turkey 101 Proof Bourbon", flavors: [sweet])
#   turkey.bourbon_whiskeys.create(name: "Wild Turkey Russell's Reserve Bourbon", flavors: [sweet])
#   turkey.bourbon_whiskeys.create(name: "Wild Turkey Rare Breed Bourbon", flavors: [mild])
#   turkey.bourbon_whiskeys.create(name: "Wild Turkey Tradition 14 Year Old Bourbon", flavors: [fruity])


# heaven = Distillery.create(name: "Heaven Hill")
#   heaven.bourbon_whiskeys.create(name: "Heaven Hill Gold Label Bonded Bourbon", flavors: [mild])


# barton = Distillery.create(name: "Barton 1792")
#   barton.bourbon_whiskeys.create(name: "Very Old Barton 86 Proof", flavors: [sweet])

puts "Seeding finished"