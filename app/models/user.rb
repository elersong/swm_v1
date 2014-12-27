class User < ActiveRecord::Base
  belongs_to :company # a user can (not required to) be associated with any company
  has_many :projects
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
