class Group < ApplicationRecord
  has_many :group_relationships
  has_many :memders, through: :group_relationships, source: :user
  belongs_to :user
  has_many :posts
  validates :title, presence: true

end
