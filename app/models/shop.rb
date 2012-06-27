class Shop < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged


  attr_accessible :description, :is_active, :name, :slug, :user_id

  belongs_to :user
  has_many :shirts


  scope :all_active, lambda { where(is_active: true).order(:name) }

end