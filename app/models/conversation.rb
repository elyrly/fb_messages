class Conversation < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :messages
  has_many :conversation_users
  has_many :users, :through => :conversation_users
  belongs_to :owner, :class_name => "User" #user is referring to the model
end
