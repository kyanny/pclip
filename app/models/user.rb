class User < ActiveRecord::Base
  attr_accessible :name, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :path => "#{Rails.root}/../images/:class/:attachment/:id_partition/:style/:filename"
end
