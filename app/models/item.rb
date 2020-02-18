class Item < ApplicationRecord
  has_many :images
  belongs_to :user
  belongs_to :brand, optional: true
  belongs_to :category
end
