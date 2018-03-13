class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks, inverse_of: :user
  has_many :lists, through: :tasks
  has_many :group_users, inverse_of: :user
  has_many :groups, through: :group_users
end
