class GuideAuthor < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :email, :twitter, :bio]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :author_image, :class_name => 'Image'
end
