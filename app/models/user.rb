class User < ApplicationRecord
  has_many :posts

  has_many :editings
  has_many :edited_posts, through: :editings, source: :post
end
