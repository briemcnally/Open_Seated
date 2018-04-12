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

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
