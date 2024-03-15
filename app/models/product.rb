class Product < ApplicationRecord
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]
  validates :name, :description, :price, presence: true
  end
  belongs_to :category
  end



# class Product < ApplicationRecord
#   has_many_attached :images do |attachable|
#     attachable.variant :thumb, resize_to_limit: [50, 50]
#   end
#     belongs_to :category
#   end
  