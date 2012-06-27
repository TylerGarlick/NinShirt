class ShirtSize < ActiveRecord::Base
  validates_presence_of :gender, :size, :shirt

  attr_accessible :gender, :shirt_id, :size

  belongs_to :shirt
end
