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
  CUISINES = %w(American Chinese French Italian Japanese Mediterranean Mexican Seafood Vietnamese Thai)

  has_many :reviews,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Review

  has_many :reservations,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Reservation

  has_many :favorites,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Favorite

  has_many :favorite_diners,
    through: :favorites,
    source: :user

  def average_rating
    reviews.average(:rating).round(1)
  end

  def average_food_rating
    reviews.average(:food).round(1)
  end

  def average_service_rating
    reviews.average(:service).round(1)
  end

  def average_ambience_rating
    reviews.average(:ambience).round(1)
  end

  def average_value_rating
    reviews.average(:value).round(1)
  end

  def self.query(search_term)
    if CUISINES.include?(search_term.capitalize)
       Restaurant.where(cuisine: search_term.capitalize)
    else
      Restaurant.where('name ILIKE :query OR city ILIKE :query', query: "%#{search_term.capitalize}")
    end
  end
end
