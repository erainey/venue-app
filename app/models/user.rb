class User < ActiveRecord::Base
  rolify
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  
  has_one :venue

  validates_presence_of :username
  validates_uniqueness_of :username, :email, :case_sensitive => false

  attr_accessible :role_ids
  # attr_accessible :title, :body

  def assign_default_role
    add_role("guest")
  end

  def admin?
    self.has_role?(:admin)
  end

  def owner?(venue)
    venue == self.venue
  end

end
