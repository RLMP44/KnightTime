class Experience < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :bookings
  has_one_attached :photo

  validates :name, :description, :price, :address, :category, presence: true
  validates :description, length: { minimum: 10 }
  validates :price, numericality: true
  validates :category, inclusion: { in: ["Jousting", "Archery", "Samurai", "Vikings", "Knights", "Ninja"] }
end
