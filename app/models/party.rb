class Party < ApplicationRecord
    has_many :comments, dependent: :destroy

    validates :title, :description, :venue, :date, presence: true


end
