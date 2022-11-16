class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: "%{value} is not a valid category" }
    has_many :reviews, dependent: :destroy
end
