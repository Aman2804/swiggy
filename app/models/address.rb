class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  validates :flat, :location, :city, presence: true
  
end
