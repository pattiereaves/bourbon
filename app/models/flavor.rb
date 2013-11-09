class Flavor < ActiveRecord::Base
  has_many :bourbon_flavors
  has_many :bourbon_whiskeys, through: :bourbon_flavors
end
