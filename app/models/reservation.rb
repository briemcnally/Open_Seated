# == Schema Information
#
# Table name: reservations
#
#  id            :integer          not null, primary key
#  user_id       :integer          not null
#  restaurant_id :integer          not null
#  date          :datetime         not null
#  time          :datetime         not null
#  num_guests    :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  status        :string
#  phone_number  :string
#  occasion      :integer
#  request       :string
#

class Reservation < ApplicationRecord
  validates :num_guests, :date, :time, presence: true
  validate :reservation_date_not_in_past
  # validate :available_seats

  belongs_to :restaurant,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Restaurant

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  # def available_seats
  #   if same_day_reservations.nil? || (self.restaurant.num_seats - same_day_reservations) >= 0
  #     return true
  #   else
  #     errors[:base] << 'There are no more seats left at this restauarnt'
  #   end
  # end
  #
  # def same_day_reservations
  #   res = Reservation
  #     .where.not(id: self.user_id)
  #     .where(restaurant_id: self.restaurant_id)
  #     .where(date: self.date)
  #   arr = []
  #   res.each do |r|
  #     arr << r.num_seats
  #   end
  #   arr.reduce(:+)
  # end

  def reservation_date_not_in_past
    if date < Time.now
      errors.add(:date, " cannot be in the past!")
    end
  end
end
