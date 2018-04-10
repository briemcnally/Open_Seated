# == Schema Information
#
# Table name: restaurants
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  street_address :string           not null
#  city           :string           not null
#  state          :string           not null
#  zip_code       :integer          not null
#  num_seats      :integer          not null
#  cuisine        :integer          not null
#  img_url        :string
#  phone_number   :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  description    :string
#  price          :integer
#  neighborhood   :string
#

class Restaurant < ApplicationRecord
  VALID_PRICE = %w(1 2 3 4)
  enum cuisine: [:American, :Chinese, :French, :Italian, :Japanese,
                :Mediterranean, :Mexican, :Seafood, :Vietnamese, :Thai]
  validates :price, presence: true, inclusion: { in: [1, 2, 3, 4] }
  validates :name, presence: true, uniqueness: true
  validates :street_address, :city, :state, :zip_code,
  :num_seats, :cuisine, :phone_number, presence: true
  validates :neighborhood, presence: true

  # has_many :reviews
  # has_many :favorites
  # has_many :favorite_users,
  #   through: :favorites,
  #   source: :user
  has_many :reviews,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Reservation

  has_many :reservations,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Reservation

  def average_rating
    reviews.average(:rating)
  end

  def average_food_rating
    reviews.average(:food)
  end

  def average_service_rating
    reviews.average(:service)
  end

  def average_ambience_rating
    reviews.average(:ambience)
  end

  def average_value_rating
    reviews.average(:value)
  end

  def self.query(search_term)
    Restaurant.where('name ILIKE :query OR city ILIKE :query',
    query: "%#{search_term}")
  end
end
