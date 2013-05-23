class Tweet < ActiveRecord::Base
  attr_accessible :status, :zombie_id

  validates_presence_of :status, :zombie_id

  validates_length_of :status, :maximum => 140

  belongs_to :zombie
end
