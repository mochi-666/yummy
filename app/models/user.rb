class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.guest
    find_or_create_by!(email: 'guest@example.com',first_name: 'ゲスト', last_name: '', first_name_kana: '', last_name_kana: '', nickname: '') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end

  def active_for_authentication?#退会した人をログインできなくしてる。
    super && (is_active == true)
  end

  has_many :reviews, dependent: :destroy
  has_many :review_comments, dependent: :destroy

  attachment :image
end

