class User < ActiveRecord::Base
  has_many :post
  has_and_belongs_to_many :groups
end
