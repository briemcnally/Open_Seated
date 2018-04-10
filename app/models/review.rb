# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  author_id     :integer          not null
#  restaurant_id :integer          not null
#  body          :string           not null
#  food          :integer          not null
#  service       :integer          not null
#  ambience      :integer          not null
#  value         :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  rating        :integer          not null
#

class Review < ApplicationRecord
  validates :author_id, :restaurant_id, :body, :food, :service,
            :ambience, :value, :rating, presence: true
  validates :rating, :food, :service, :ambience, :value, inclusion: { in: (1..5) }

  belongs_to :restaurant,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Restaurant

  belongs_to :user,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
end
