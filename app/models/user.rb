class User < ActiveRecord::Base
  has_many :binders, dependent: :destroy

  before_save { email.downcase! }
  before_create :create_remember_token

  validates :name,
    presence: true,
    length: { maximum: 50 }
  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    email_format: { message: 'フォーマットが正しくありません'}
  validates :password,
    presence: true,
    length: { minimum: 6 }
  validates :password_confirmation,
    presence: true

  has_secure_password

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end
