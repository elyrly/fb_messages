class User < ActiveRecord::Base
  # attr_accessible :name, :email, :password_digest
  has_many :converstaion_users
  has_many :conversations, :through => :conversation_users
  has_many :messages
  has_many :owned_conversations, :class_name => "Conversation", :foreign_key => "owner_id"
end

