class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  validates :message, presence: true
  validates_presence_of :product
end
