class Flavor < ActiveRecord::Base
  has_many :bourbon_flavors
  has_many :bourbon_whiskeys, through: :bourbon_flavors

  has_many :users
  has_many :users, through: :user_flavors
end
