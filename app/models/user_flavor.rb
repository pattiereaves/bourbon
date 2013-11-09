class UserFlavor < ActiveRecord::Base
  belongs_to :flavor
  belongs_to :user
end
