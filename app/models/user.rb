class User < ApplicationRecord

  has_many :votes
  has_many :elections, through: :votes

end