class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: 'guest2@example.com',first_name: 'ゲスト', last_name: ' ゲスト', first_name_kana: 'ゲスト ', last_name_kana: 'ゲスト', nickname: 'ゲスト') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end

  def active_for_authentication?#退会した人をログインできなくしてる。
    super && (is_active == true)
  end

  has_many :reviews, dependent: :destroy
  has_many :review_comments, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, presence: true
  validates :last_name_kana, presence: true
  validates :email, presence: true
  validates :nickname, presence: true

end

