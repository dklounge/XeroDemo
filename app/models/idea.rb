class Idea < ActiveRecord::Base
  attr_accessible :title, :body

  include ActiveModel::ForbiddenAttributesProtection
  validates :idea, presence: true, uniqueness: true

end
