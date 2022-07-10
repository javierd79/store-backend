class Product < ApplicationRecord

  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :size

  has_many :order_items
  has_many :orders, through: :order_items

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :image_url, presence: true
end
