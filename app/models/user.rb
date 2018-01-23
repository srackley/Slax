class User < ApplicationRecord
  def name
    email.split('@')[0]
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  has_many :channels, dependent: :destroy
  has_many :messages, dependent: :destroy
end
