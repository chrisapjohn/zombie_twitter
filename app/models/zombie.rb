class Zombie < ActiveRecord::Base
  after_save :decomp_change_notification, if: :decomp_changed?

  attr_accessible :graveyard, :name, :age, :rotting, :strength, :email

  has_many :tweets

  has_many :assignments

  has_many :roles, through: :assignments

  has_one :brain, dependent: :destroy
  
  before_save :make_rotting

  def make_rotting
  	if age > 20
  		self.rotting = true
  	end
  end

  private

  def decomp_change_notification
    ZombieMailer.decomp_change(self).deliver
  end
end
