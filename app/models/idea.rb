class Idea < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  validates :name, presence: true
  validates_numericality_of :rating, :on => :create, :less_than => 10
end
