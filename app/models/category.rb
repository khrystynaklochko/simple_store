class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :products, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  def should_generate_new_friendly_id?
    name_changed?
  end
end
