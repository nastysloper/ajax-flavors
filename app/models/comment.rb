class Comment < ActiveRecord::Base
  attr_accessible :contents, :post_id

  belongs_to :post
end
