class Vote < ApplicationRecord

  belongs_to :user
  belongs_to :election
  has_many   :choices

end
