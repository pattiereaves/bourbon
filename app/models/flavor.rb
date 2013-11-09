class Flavor < ActiveRecord::Base
  has_many :bourbons, through: :bourbon_flavors
end
