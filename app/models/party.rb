class Party < ApplicationRecord
    has_many :comments, dependent: :destroy
end
