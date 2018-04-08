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
#  points        :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Reservation < ApplicationRecord
  validates :num_guests, :date, :taime, :points, presence: true

  belongs_to :restaurant,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Restaurant

    belongs_to :user,
      primary_key: :id,
      foreign_key: :user_id,
      class_name: :User
end
