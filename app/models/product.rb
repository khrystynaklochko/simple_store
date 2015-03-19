class Product < ActiveRecord::Base
  belongs_to :category
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates_presence_of :category
end
