class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :price, presence: { message: "must include a price" }
  validates :price, numericality: { only_integer: true }
  validates :price, numericality: { greater_than: 0 }
end
