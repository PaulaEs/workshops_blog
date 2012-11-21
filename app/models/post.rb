class Post < ActiveRecord::Base
  has_many :comments
  attr_accessible :content, :title, :image
  has_attached_file :image, :styles => {:medium => '400x400>'}

end
