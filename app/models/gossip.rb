class Gossip < ApplicationRecord
	
  attribute :title, :string
  attribute :content, :text
  attribute :user, :string
  
  belongs_to :user
  # has_many :gossip_tags
  # has_many :tags, through: :gossip_tags
  # has_many :comments
  # has_many :likes

end
