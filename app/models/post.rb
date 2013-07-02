class Post < ActiveRecord::Base
  attr_accessible :content, :datestamp, :mediaurl, :name, :title

  validates :name, :presence => true
  validates :title, :presence => true,
  					:length => { :minimum => 3 }

  has_many :comments, dependent: :destroy
end
