class Idea < ActiveRecord::Base
  validates :idea, presence: true, uniqueness: true

end
