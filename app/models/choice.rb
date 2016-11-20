class Choice < ApplicationRecord

  belongs_to :vote
  belongs_to :election

end
