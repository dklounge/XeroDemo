class Idea < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :title, :body

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, uniqueness: true

  has_many :comments
end
