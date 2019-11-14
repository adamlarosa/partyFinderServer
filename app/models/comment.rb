class Comment < ApplicationRecord
  belongs_to :party

  validates :body, presence: true
  
end
