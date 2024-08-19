class Comment < ApplicationRecord
  validates :prototype, presence: true

  belongs_to :prototype
  belongs_to :user
end
