class Post < ActiveRecord::Base
  attr_accessible :contents, :title

  has_many :comments

  before_save :format_title

  def format_title
    self.title = self.title.titleize
  end
end
