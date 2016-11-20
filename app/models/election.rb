class Election < ApplicationRecord

  has_many :votes
  has_many :choices

end
