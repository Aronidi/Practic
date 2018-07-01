class Article < ApplicationRecord
    validates :title, presence: true, length: { maximum: 50 }
    validates :address, presence: true, length: { maximum: 75 }
    validates :price, presence: true,  numericality: { greater_than: 0 }
end
