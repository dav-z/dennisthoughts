class User < ActiveRecord::Base
  has_many :posts
end
class Post < ActiveRecord::Base
  belongs_to :user
  def self.recent( num = 10 )
    self.order( id: :desc ).limit( num )
  end
end
