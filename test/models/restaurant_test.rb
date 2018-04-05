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
#

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
