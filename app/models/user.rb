class User < ActiveRecord::Base
  has_many :flavors
  has_many :flavors, through: :user_flavors
end