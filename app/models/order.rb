class Order < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :customer
  has_many :ordered_products
  has_many :products, through: :ordered_products
end
