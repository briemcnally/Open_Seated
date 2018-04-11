# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  email           :string           not null
#  img_url         :string
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  fname           :string
#  lname           :string
#

class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true
  validates :fname, :lname, presence: true
  validates :password_digest, presence: { message: 'Password can\'t be blank'}
  validates :session_token, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  attr_reader :password

  has_many :favorites,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Favorite

  has_many :favorite_restaurants,
    through: :favorites,
    source: :restaurant

  has_many :reservations,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Reservation

  has_many :reviews,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Reservation

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)
    nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    generate_session_token
    save!
    session_token
  end

  private

  def ensure_session_token
    generate_session_token unless self.session_token
  end

  def new_session_token
    SecureRandom.urlsafe_base64
  end

  def generate_session_token
    self.session_token = new_session_token
    while User.find_by(session_token: self.session_token)
      self.session_token = new_session_token
    end
    self.session_token
  end

end
