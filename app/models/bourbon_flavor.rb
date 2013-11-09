class BourbonFlavor < ActiveRecord::Base
  belongs_to :bourbon_whiskey
  belongs_to :flavor
end
